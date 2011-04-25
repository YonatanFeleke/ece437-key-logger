
library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

package CONV_PACK_USB_SHIFT is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_USB_SHIFT;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_USB_SHIFT.all;

entity USB_SHIFT is

   port( D_CLK, RST, EOP, SHIFT_ENABLE, D_ORIG : in std_logic;  RCV_DATA : out 
         std_logic_vector (7 downto 0);  CRC_SHIFT, STUFF_ERROR : out std_logic
         );

end USB_SHIFT;

architecture SYN_behavioral of USB_SHIFT is

   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component LATCH
      port( CLK, D : in std_logic;  Q : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   component DFFPOSX1
      port( D, CLK : in std_logic;  Q : out std_logic);
   end component;
   
   signal RCV_DATA_7_port, RCV_DATA_6_port, RCV_DATA_5_port, RCV_DATA_4_port, 
      RCV_DATA_3_port, RCV_DATA_2_port, RCV_DATA_1_port, RCV_DATA_0_port, 
      state_1_port, state_0_port, ctr_2_port, ctr_1_port, ctr_0_port, 
      nextstate_1_port, nextstate_0_port, N43, N44, N45, N52, n39, n40, n41, 
      n42, n43_port, n44_port, n45_port, n46, n47, n48, n49, n50, n51, n52_port
      , n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, 
      n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81
      , n82, n83, n84, n85, n86, n87, n88, n89 : std_logic;

begin
   RCV_DATA <= ( RCV_DATA_7_port, RCV_DATA_6_port, RCV_DATA_5_port, 
      RCV_DATA_4_port, RCV_DATA_3_port, RCV_DATA_2_port, RCV_DATA_1_port, 
      RCV_DATA_0_port );
   
   nextstate_reg_0_inst : LATCH port map( CLK => N43, D => N44, Q => 
                           nextstate_0_port);
   state_reg_0_inst : DFFSR port map( D => nextstate_0_port, CLK => D_CLK, R =>
                           n52_port, S => n51, Q => state_0_port);
   nextstate_reg_1_inst : LATCH port map( CLK => N43, D => N45, Q => 
                           nextstate_1_port);
   state_reg_1_inst : DFFSR port map( D => nextstate_1_port, CLK => D_CLK, R =>
                           n50, S => n51, Q => state_1_port);
   current_reg_7_inst : DFFPOSX1 port map( D => n49, CLK => D_CLK, Q => 
                           RCV_DATA_7_port);
   current_reg_6_inst : DFFPOSX1 port map( D => n48, CLK => D_CLK, Q => 
                           RCV_DATA_6_port);
   current_reg_5_inst : DFFPOSX1 port map( D => n47, CLK => D_CLK, Q => 
                           RCV_DATA_5_port);
   current_reg_4_inst : DFFPOSX1 port map( D => n46, CLK => D_CLK, Q => 
                           RCV_DATA_4_port);
   current_reg_3_inst : DFFPOSX1 port map( D => n45_port, CLK => D_CLK, Q => 
                           RCV_DATA_3_port);
   current_reg_2_inst : DFFPOSX1 port map( D => n44_port, CLK => D_CLK, Q => 
                           RCV_DATA_2_port);
   current_reg_1_inst : DFFPOSX1 port map( D => n43_port, CLK => D_CLK, Q => 
                           RCV_DATA_1_port);
   current_reg_0_inst : DFFPOSX1 port map( D => n42, CLK => D_CLK, Q => 
                           RCV_DATA_0_port);
   ctr_reg_0_inst : DFFSR port map( D => n56, CLK => D_CLK, R => n51, S => n41,
                           Q => ctr_0_port);
   ctr_reg_1_inst : DFFSR port map( D => n55, CLK => D_CLK, R => n51, S => n40,
                           Q => ctr_1_port);
   ctr_reg_2_inst : DFFSR port map( D => n54, CLK => D_CLK, R => n51, S => n39,
                           Q => ctr_2_port);
   STUFF_ERROR_reg : LATCH port map( CLK => N52, D => n53, Q => STUFF_ERROR);
   n39 <= '1';
   n40 <= '1';
   n41 <= '1';
   n50 <= '1';
   n52_port <= '1';
   U64 : MUX2X1 port map( B => n57, A => n58, S => ctr_0_port, Y => n56);
   U65 : NAND2X1 port map( A => n59, B => n58, Y => n57);
   U66 : MUX2X1 port map( B => n60, A => n61, S => ctr_1_port, Y => n55);
   U67 : NAND3X1 port map( A => ctr_0_port, B => n58, C => n59, Y => n60);
   U68 : INVX1 port map( A => n62, Y => n59);
   U69 : MUX2X1 port map( B => n63, A => n64, S => ctr_2_port, Y => n54);
   U70 : INVX1 port map( A => n65, Y => n64);
   U71 : OAI21X1 port map( A => n62, B => ctr_1_port, C => n61, Y => n65);
   U72 : INVX1 port map( A => n66, Y => n61);
   U73 : OAI21X1 port map( A => ctr_0_port, B => n62, C => n58, Y => n66);
   U74 : NAND2X1 port map( A => n67, B => n68, Y => n58);
   U75 : NAND3X1 port map( A => SHIFT_ENABLE, B => ctr_1_port, C => n69, Y => 
                           n63);
   U76 : NOR2X1 port map( A => n70, B => n62, Y => n69);
   U77 : NAND2X1 port map( A => D_ORIG, B => n67, Y => n62);
   U78 : INVX1 port map( A => n71, Y => n53);
   U79 : MUX2X1 port map( B => n72, A => n73, S => n74, Y => n49);
   U80 : MUX2X1 port map( B => n73, A => n75, S => n74, Y => n48);
   U81 : INVX1 port map( A => RCV_DATA_7_port, Y => n73);
   U82 : MUX2X1 port map( B => n75, A => n76, S => n74, Y => n47);
   U83 : INVX1 port map( A => RCV_DATA_6_port, Y => n75);
   U84 : MUX2X1 port map( B => n76, A => n77, S => n74, Y => n46);
   U85 : INVX1 port map( A => RCV_DATA_4_port, Y => n77);
   U86 : INVX1 port map( A => RCV_DATA_5_port, Y => n76);
   U87 : INVX1 port map( A => n78, Y => n45_port);
   U88 : MUX2X1 port map( B => RCV_DATA_4_port, A => RCV_DATA_3_port, S => n74,
                           Y => n78);
   U89 : INVX1 port map( A => n79, Y => n44_port);
   U90 : MUX2X1 port map( B => RCV_DATA_3_port, A => RCV_DATA_2_port, S => n74,
                           Y => n79);
   U91 : INVX1 port map( A => n80, Y => n43_port);
   U92 : MUX2X1 port map( B => RCV_DATA_2_port, A => RCV_DATA_1_port, S => n74,
                           Y => n80);
   U93 : INVX1 port map( A => n81, Y => n42);
   U94 : MUX2X1 port map( B => RCV_DATA_1_port, A => RCV_DATA_0_port, S => n74,
                           Y => n81);
   U95 : NAND3X1 port map( A => n67, B => n51, C => SHIFT_ENABLE, Y => n74);
   U96 : INVX1 port map( A => RST, Y => n51);
   U97 : OAI21X1 port map( A => EOP, B => n71, C => n82, Y => N45);
   U98 : AOI21X1 port map( A => n83, B => state_0_port, C => n84, Y => n82);
   U99 : INVX1 port map( A => N43, Y => n84);
   U100 : NOR2X1 port map( A => state_1_port, B => n72, Y => n83);
   U101 : INVX1 port map( A => D_ORIG, Y => n72);
   U102 : NAND2X1 port map( A => state_1_port, B => n85, Y => n71);
   U103 : NOR2X1 port map( A => n86, B => n87, Y => N44);
   U104 : NAND2X1 port map( A => ctr_2_port, B => ctr_1_port, Y => n87);
   U105 : NAND2X1 port map( A => n67, B => n70, Y => n86);
   U106 : INVX1 port map( A => ctr_0_port, Y => n70);
   U107 : INVX1 port map( A => N52, Y => n67);
   U108 : NAND3X1 port map( A => n68, B => n88, C => state_0_port, Y => N43);
   U109 : INVX1 port map( A => SHIFT_ENABLE, Y => n68);
   U110 : AND2X1 port map( A => SHIFT_ENABLE, B => n89, Y => CRC_SHIFT);
   U111 : OAI21X1 port map( A => n88, B => n85, C => N52, Y => n89);
   U112 : NAND2X1 port map( A => n88, B => n85, Y => N52);
   U113 : INVX1 port map( A => state_0_port, Y => n85);
   U114 : INVX1 port map( A => state_1_port, Y => n88);

end SYN_behavioral;
