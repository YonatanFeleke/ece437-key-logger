
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
         R_ENABLE0 : out std_logic;  EMPTY0, FULL0, FULL1, EMPTY1 : in 
         std_logic);

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
   
   component OAI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal R_ENABLE0_port, state_2_port, state_1_port, state_0_port, 
      nextstate_2_port, nextstate_1_port, nextstate_0_port, n1, n2, n3, n4, n32
      , n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, 
      n47, n48, n49, n50, n51, n52, n53, n54 : std_logic;

begin
   R_ENABLE0 <= R_ENABLE0_port;
   
   state_reg_0_inst : DFFSR port map( D => nextstate_0_port, CLK => D_CLK, R =>
                           n4, S => n3, Q => state_0_port);
   state_reg_2_inst : DFFSR port map( D => nextstate_2_port, CLK => D_CLK, R =>
                           n3, S => n2, Q => state_2_port);
   state_reg_1_inst : DFFSR port map( D => nextstate_1_port, CLK => D_CLK, R =>
                           n1, S => n3, Q => state_1_port);
   n1 <= '1';
   n2 <= '1';
   n4 <= '1';
   U38 : OAI21X1 port map( A => n32, B => n33, C => n34, Y => nextstate_2_port)
                           ;
   U39 : NAND2X1 port map( A => FULL1, B => n35, Y => n34);
   U40 : OAI21X1 port map( A => state_0_port, B => n36, C => n37, Y => n35);
   U41 : AOI21X1 port map( A => EOP, B => n38, C => n39, Y => n32);
   U42 : INVX1 port map( A => n40, Y => n39);
   U43 : OAI21X1 port map( A => CRC_ERROR, B => n41, C => n36, Y => n38);
   U44 : NAND2X1 port map( A => n42, B => n43, Y => nextstate_1_port);
   U45 : MUX2X1 port map( B => n44, A => n45, S => n33, Y => n42);
   U46 : OAI21X1 port map( A => FULL1, B => n36, C => n40, Y => n45);
   U47 : OAI22X1 port map( A => EMPTY0, B => n46, C => EOP, D => n36, Y => n44)
                           ;
   U48 : INVX1 port map( A => R_ENABLE0_port, Y => n46);
   U49 : NAND3X1 port map( A => n40, B => n43, C => n47, Y => nextstate_0_port)
                           ;
   U50 : INVX1 port map( A => n48, Y => n47);
   U51 : OAI22X1 port map( A => n33, B => n36, C => n37, D => FULL1, Y => n48);
   U52 : NAND2X1 port map( A => state_2_port, B => n49, Y => n36);
   U53 : NAND3X1 port map( A => n50, B => n51, C => state_0_port, Y => n43);
   U54 : INVX1 port map( A => EOP, Y => n51);
   U55 : INVX1 port map( A => n41, Y => n50);
   U56 : NAND2X1 port map( A => n52, B => n53, Y => n41);
   U57 : NOR2X1 port map( A => state_2_port, B => R_ERROR, Y => n53);
   U58 : NOR2X1 port map( A => FULL0, B => n49, Y => n52);
   U59 : INVX1 port map( A => state_1_port, Y => n49);
   U60 : NAND2X1 port map( A => EMPTY0, B => R_ENABLE0_port, Y => n40);
   U61 : INVX1 port map( A => RST, Y => n3);
   U62 : INVX1 port map( A => n37, Y => W_ENABLE1);
   U63 : NAND3X1 port map( A => n33, B => n54, C => state_1_port, Y => n37);
   U64 : INVX1 port map( A => state_2_port, Y => n54);
   U65 : INVX1 port map( A => state_0_port, Y => n33);
   U66 : NOR2X1 port map( A => state_1_port, B => state_2_port, Y => 
                           R_ENABLE0_port);

end SYN_behavioral;
