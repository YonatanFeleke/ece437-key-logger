
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

   port( CLK, RST, EOP, SHIFT_ENABLE, D_ORIG : in std_logic;  RCV_DATA : out 
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
   
   component OAI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFPOSX1
      port( D, CLK : in std_logic;  Q : out std_logic);
   end component;
   
   component LATCH
      port( CLK, D : in std_logic;  Q : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal RCV_DATA_7_port, RCV_DATA_6_port, RCV_DATA_5_port, RCV_DATA_4_port, 
      RCV_DATA_3_port, RCV_DATA_2_port, RCV_DATA_1_port, RCV_DATA_0_port, 
      state_1_port, state_0_port, ctr_2_port, ctr_1_port, ctr_0_port, 
      nextstate_1_port, nextstate_0_port, next_val_7_port, next_val_6_port, 
      next_val_5_port, next_val_4_port, next_val_3_port, next_val_2_port, 
      next_val_1_port, next_val_0_port, N43, N44, N45, N52, N53, N54, N55, N56,
      N57, N58, N59, N61, n41, n42, n43_port, n44_port, n45_port, n46, n47, n48
      , n49, n50, n51, n52_port, n53_port, n54_port, n55_port, n56_port, 
      n57_port, n58_port, n59_port, n60, n61_port, n62, n63, n64, n65, n66, n67
      , n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, 
      n82, n83, n84, n85, n86, n87, n88, n89 : std_logic;

begin
   RCV_DATA <= ( RCV_DATA_7_port, RCV_DATA_6_port, RCV_DATA_5_port, 
      RCV_DATA_4_port, RCV_DATA_3_port, RCV_DATA_2_port, RCV_DATA_1_port, 
      RCV_DATA_0_port );
   
   nextstate_reg_0_inst : LATCH port map( CLK => N43, D => N44, Q => 
                           nextstate_0_port);
   state_reg_0_inst : DFFSR port map( D => nextstate_0_port, CLK => CLK, R => 
                           n53_port, S => n56_port, Q => state_0_port);
   nextstate_reg_1_inst : LATCH port map( CLK => N43, D => N45, Q => 
                           nextstate_1_port);
   state_reg_1_inst : DFFSR port map( D => nextstate_1_port, CLK => CLK, R => 
                           n52_port, S => n56_port, Q => state_1_port);
   ctr_reg_0_inst : DFFSR port map( D => n59_port, CLK => CLK, R => n56_port, S
                           => n51, Q => ctr_0_port);
   ctr_reg_1_inst : DFFSR port map( D => n58_port, CLK => CLK, R => n56_port, S
                           => n50, Q => ctr_1_port);
   ctr_reg_2_inst : DFFSR port map( D => n57_port, CLK => CLK, R => n56_port, S
                           => n49, Q => ctr_2_port);
   STUFF_ERROR_reg : LATCH port map( CLK => N61, D => n54_port, Q => 
                           STUFF_ERROR);
   next_val_reg_7_inst : LATCH port map( CLK => N52, D => n55_port, Q => 
                           next_val_7_port);
   current_reg_7_inst : DFFPOSX1 port map( D => n48, CLK => CLK, Q => 
                           RCV_DATA_7_port);
   next_val_reg_6_inst : LATCH port map( CLK => N52, D => N59, Q => 
                           next_val_6_port);
   current_reg_6_inst : DFFPOSX1 port map( D => n47, CLK => CLK, Q => 
                           RCV_DATA_6_port);
   next_val_reg_5_inst : LATCH port map( CLK => N52, D => N58, Q => 
                           next_val_5_port);
   current_reg_5_inst : DFFPOSX1 port map( D => n46, CLK => CLK, Q => 
                           RCV_DATA_5_port);
   next_val_reg_4_inst : LATCH port map( CLK => N52, D => N57, Q => 
                           next_val_4_port);
   current_reg_4_inst : DFFPOSX1 port map( D => n45_port, CLK => CLK, Q => 
                           RCV_DATA_4_port);
   next_val_reg_3_inst : LATCH port map( CLK => N52, D => N56, Q => 
                           next_val_3_port);
   current_reg_3_inst : DFFPOSX1 port map( D => n44_port, CLK => CLK, Q => 
                           RCV_DATA_3_port);
   next_val_reg_2_inst : LATCH port map( CLK => N52, D => N55, Q => 
                           next_val_2_port);
   current_reg_2_inst : DFFPOSX1 port map( D => n43_port, CLK => CLK, Q => 
                           RCV_DATA_2_port);
   next_val_reg_1_inst : LATCH port map( CLK => N52, D => N54, Q => 
                           next_val_1_port);
   current_reg_1_inst : DFFPOSX1 port map( D => n42, CLK => CLK, Q => 
                           RCV_DATA_1_port);
   next_val_reg_0_inst : LATCH port map( CLK => N52, D => N53, Q => 
                           next_val_0_port);
   current_reg_0_inst : DFFPOSX1 port map( D => n41, CLK => CLK, Q => 
                           RCV_DATA_0_port);
   n49 <= '1';
   n50 <= '1';
   n51 <= '1';
   n52_port <= '1';
   n53_port <= '1';
   U75 : MUX2X1 port map( B => n60, A => n61_port, S => ctr_0_port, Y => 
                           n59_port);
   U76 : NAND2X1 port map( A => n55_port, B => n61_port, Y => n60);
   U77 : MUX2X1 port map( B => n62, A => n63, S => ctr_1_port, Y => n58_port);
   U78 : NAND3X1 port map( A => ctr_0_port, B => n61_port, C => n55_port, Y => 
                           n62);
   U79 : MUX2X1 port map( B => n64, A => n65, S => ctr_2_port, Y => n57_port);
   U80 : INVX1 port map( A => n66, Y => n65);
   U81 : OAI21X1 port map( A => n67, B => ctr_1_port, C => n63, Y => n66);
   U82 : INVX1 port map( A => n68, Y => n63);
   U83 : OAI21X1 port map( A => ctr_0_port, B => n67, C => n61_port, Y => n68);
   U84 : NAND2X1 port map( A => n69, B => n70, Y => n61_port);
   U85 : NAND3X1 port map( A => SHIFT_ENABLE, B => ctr_1_port, C => n71, Y => 
                           n64);
   U86 : NOR2X1 port map( A => n72, B => n67, Y => n71);
   U87 : INVX1 port map( A => RST, Y => n56_port);
   U88 : INVX1 port map( A => n67, Y => n55_port);
   U89 : NAND2X1 port map( A => D_ORIG, B => n69, Y => n67);
   U90 : INVX1 port map( A => n73, Y => n54_port);
   U91 : INVX1 port map( A => n74, Y => n48);
   U92 : MUX2X1 port map( B => next_val_7_port, A => RCV_DATA_7_port, S => RST,
                           Y => n74);
   U93 : INVX1 port map( A => n75, Y => n47);
   U94 : MUX2X1 port map( B => next_val_6_port, A => RCV_DATA_6_port, S => RST,
                           Y => n75);
   U95 : INVX1 port map( A => n76, Y => n46);
   U96 : MUX2X1 port map( B => next_val_5_port, A => RCV_DATA_5_port, S => RST,
                           Y => n76);
   U97 : INVX1 port map( A => n77, Y => n45_port);
   U98 : MUX2X1 port map( B => next_val_4_port, A => RCV_DATA_4_port, S => RST,
                           Y => n77);
   U99 : INVX1 port map( A => n78, Y => n44_port);
   U100 : MUX2X1 port map( B => next_val_3_port, A => RCV_DATA_3_port, S => RST
                           , Y => n78);
   U101 : INVX1 port map( A => n79, Y => n43_port);
   U102 : MUX2X1 port map( B => next_val_2_port, A => RCV_DATA_2_port, S => RST
                           , Y => n79);
   U103 : INVX1 port map( A => n80, Y => n42);
   U104 : MUX2X1 port map( B => next_val_1_port, A => RCV_DATA_1_port, S => RST
                           , Y => n80);
   U105 : INVX1 port map( A => n81, Y => n41);
   U106 : MUX2X1 port map( B => next_val_0_port, A => RCV_DATA_0_port, S => RST
                           , Y => n81);
   U107 : AND2X1 port map( A => n69, B => RCV_DATA_7_port, Y => N59);
   U108 : AND2X1 port map( A => n69, B => RCV_DATA_6_port, Y => N58);
   U109 : AND2X1 port map( A => n69, B => RCV_DATA_5_port, Y => N57);
   U110 : AND2X1 port map( A => n69, B => RCV_DATA_4_port, Y => N56);
   U111 : AND2X1 port map( A => n69, B => RCV_DATA_3_port, Y => N55);
   U112 : AND2X1 port map( A => n69, B => RCV_DATA_2_port, Y => N54);
   U113 : AND2X1 port map( A => n69, B => RCV_DATA_1_port, Y => N53);
   U114 : OAI22X1 port map( A => n82, B => n83, C => N61, D => n70, Y => N52);
   U115 : OAI21X1 port map( A => EOP, B => n73, C => n84, Y => N45);
   U116 : AOI21X1 port map( A => n85, B => state_0_port, C => n86, Y => n84);
   U117 : INVX1 port map( A => N43, Y => n86);
   U118 : AND2X1 port map( A => n82, B => D_ORIG, Y => n85);
   U119 : NAND2X1 port map( A => state_1_port, B => n83, Y => n73);
   U120 : NOR2X1 port map( A => n87, B => n88, Y => N44);
   U121 : NAND2X1 port map( A => ctr_2_port, B => ctr_1_port, Y => n88);
   U122 : NAND2X1 port map( A => n69, B => n72, Y => n87);
   U123 : INVX1 port map( A => ctr_0_port, Y => n72);
   U124 : INVX1 port map( A => N61, Y => n69);
   U125 : NAND3X1 port map( A => n70, B => n82, C => state_0_port, Y => N43);
   U126 : INVX1 port map( A => SHIFT_ENABLE, Y => n70);
   U127 : AND2X1 port map( A => SHIFT_ENABLE, B => n89, Y => CRC_SHIFT);
   U128 : OAI21X1 port map( A => n82, B => n83, C => N61, Y => n89);
   U129 : NAND2X1 port map( A => n83, B => n82, Y => N61);
   U130 : INVX1 port map( A => state_0_port, Y => n83);
   U131 : INVX1 port map( A => state_1_port, Y => n82);

end SYN_behavioral;
