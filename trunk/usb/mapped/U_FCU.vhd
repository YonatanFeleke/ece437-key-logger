
library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

package CONV_PACK_U_FCU is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_U_FCU;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_U_FCU.all;

entity U_FCU is

   port( D_CLK, RST, EOP, CRC_ERROR, R_ERROR : in std_logic;  W_ENABLE1, 
         R_ENABLE0 : out std_logic;  EMPTY0, FULL0, FULL1 : in std_logic);

end U_FCU;

architecture SYN_behavioral of U_FCU is

   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFPOSX1
      port( D, CLK : in std_logic;  Q : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal R_ENABLE0_port, state_2_port, state_1_port, state_0_port, 
      nextstate_2_port, nextstate_1_port, nextstate_0_port, ctr_1_port, 
      ctr_0_port, n3, n4, n5, n14, n35, n36, W_ENABLE1_port, n38, n39, n40, n41
      , n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, 
      n56, n57, n58, n59, n60, n61, n62, n63, n64, n65 : std_logic;

begin
   W_ENABLE1 <= W_ENABLE1_port;
   R_ENABLE0 <= R_ENABLE0_port;
   
   state_reg_0_inst : DFFSR port map( D => nextstate_0_port, CLK => D_CLK, R =>
                           n5, S => n14, Q => state_0_port);
   state_reg_1_inst : DFFSR port map( D => nextstate_1_port, CLK => D_CLK, R =>
                           n4, S => n14, Q => state_1_port);
   state_reg_2_inst : DFFSR port map( D => nextstate_2_port, CLK => D_CLK, R =>
                           n14, S => n3, Q => state_2_port);
   ctr_reg_1_inst : DFFPOSX1 port map( D => n36, CLK => D_CLK, Q => ctr_1_port)
                           ;
   ctr_reg_0_inst : DFFPOSX1 port map( D => n35, CLK => D_CLK, Q => ctr_0_port)
                           ;
   n3 <= '1';
   n4 <= '1';
   n5 <= '1';
   U42 : NAND2X1 port map( A => n38, B => n39, Y => nextstate_2_port);
   U43 : AOI22X1 port map( A => n40, B => n41, C => n42, D => n43, Y => n39);
   U44 : NOR2X1 port map( A => CRC_ERROR, B => n44, Y => n41);
   U45 : NAND2X1 port map( A => n45, B => n46, Y => n44);
   U46 : NOR2X1 port map( A => n47, B => n48, Y => n40);
   U47 : AOI22X1 port map( A => EMPTY0, B => R_ENABLE0_port, C => 
                           W_ENABLE1_port, D => FULL1, Y => n38);
   U48 : OAI21X1 port map( A => n49, B => n43, C => n50, Y => nextstate_1_port)
                           ;
   U49 : AOI21X1 port map( A => n51, B => R_ENABLE0_port, C => n52, Y => n50);
   U50 : NOR2X1 port map( A => EMPTY0, B => n53, Y => n51);
   U51 : INVX1 port map( A => n54, Y => n43);
   U52 : MUX2X1 port map( B => FULL1, A => EOP, S => state_0_port, Y => n54);
   U53 : INVX1 port map( A => n42, Y => n49);
   U54 : NAND2X1 port map( A => n55, B => n56, Y => nextstate_0_port);
   U55 : AOI22X1 port map( A => n57, B => W_ENABLE1_port, C => R_ENABLE0_port, 
                           D => EMPTY0, Y => n56);
   U56 : INVX1 port map( A => FULL1, Y => n57);
   U57 : AOI21X1 port map( A => state_0_port, B => n42, C => n52, Y => n55);
   U58 : INVX1 port map( A => n58, Y => n52);
   U59 : NAND3X1 port map( A => n59, B => n45, C => n60, Y => n58);
   U60 : MUX2X1 port map( B => FULL0, A => n61, S => EOP, Y => n60);
   U61 : NOR2X1 port map( A => ctr_1_port, B => n48, Y => n61);
   U62 : INVX1 port map( A => R_ERROR, Y => n45);
   U63 : NOR2X1 port map( A => n62, B => state_1_port, Y => n42);
   U64 : AND2X1 port map( A => n63, B => ctr_1_port, Y => n36);
   U65 : MUX2X1 port map( B => n47, A => n48, S => n63, Y => n35);
   U66 : OAI21X1 port map( A => n47, B => n46, C => n14, Y => n63);
   U67 : INVX1 port map( A => ctr_1_port, Y => n46);
   U68 : INVX1 port map( A => ctr_0_port, Y => n48);
   U69 : NAND2X1 port map( A => EOP, B => n59, Y => n47);
   U70 : INVX1 port map( A => n64, Y => n59);
   U71 : NAND3X1 port map( A => state_0_port, B => n62, C => state_1_port, Y =>
                           n64);
   U72 : INVX1 port map( A => RST, Y => n14);
   U73 : INVX1 port map( A => n65, Y => W_ENABLE1_port);
   U74 : NAND3X1 port map( A => n53, B => n62, C => state_1_port, Y => n65);
   U75 : INVX1 port map( A => state_2_port, Y => n62);
   U76 : INVX1 port map( A => state_0_port, Y => n53);
   U77 : NOR2X1 port map( A => state_1_port, B => state_2_port, Y => 
                           R_ENABLE0_port);

end SYN_behavioral;
