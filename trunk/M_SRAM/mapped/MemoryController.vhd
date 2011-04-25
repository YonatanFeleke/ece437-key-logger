
library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

package CONV_PACK_MemoryController is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_MemoryController;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MemoryController.all;

entity MemoryController is

   port( clk, rst, full, read_enable_in : in std_logic;  r_enable, w_enable, 
         r_enable_out, num_writes : out std_logic);

end MemoryController;

architecture SYN_statemachine of MemoryController is

   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
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
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal state_2_port, state_1_port, state_0_port, counter_2_port, 
      counter_1_port, counter_0_port, counter32_4_port, counter32_3_port, 
      counter32_2_port, counter32_1_port, counter32_0_port, nextState_2_port, 
      nextState_1_port, nextState_0_port, newcounter_2_port, newcounter_1_port,
      newcounter_0_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n12, n51, n52
      , n53, n54, n55, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, 
      n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82
      , n83, n84, n85, n86, n87, n88, n89, n90, n91, w_enable_port : std_logic;

begin
   w_enable <= w_enable_port;
   r_enable_out <= w_enable_port;
   
   counter_reg_0_inst : DFFSR port map( D => newcounter_0_port, CLK => clk, R 
                           => n91, S => n12, Q => counter_0_port);
   counter_reg_2_inst : DFFSR port map( D => newcounter_2_port, CLK => clk, R 
                           => n91, S => n10, Q => counter_2_port);
   state_reg_1_inst : DFFSR port map( D => nextState_1_port, CLK => clk, R => 
                           n91, S => n9, Q => state_1_port);
   state_reg_0_inst : DFFSR port map( D => nextState_0_port, CLK => clk, R => 
                           n91, S => n8, Q => state_0_port);
   state_reg_2_inst : DFFSR port map( D => nextState_2_port, CLK => clk, R => 
                           n91, S => n7, Q => state_2_port);
   counter32_reg_0_inst : DFFSR port map( D => n55, CLK => clk, R => n91, S => 
                           n6, Q => counter32_0_port);
   counter32_reg_4_inst : DFFSR port map( D => n51, CLK => clk, R => n91, S => 
                           n5, Q => counter32_4_port);
   counter32_reg_1_inst : DFFSR port map( D => n54, CLK => clk, R => n91, S => 
                           n4, Q => counter32_1_port);
   counter32_reg_2_inst : DFFSR port map( D => n53, CLK => clk, R => n91, S => 
                           n3, Q => counter32_2_port);
   counter32_reg_3_inst : DFFSR port map( D => n52, CLK => clk, R => n91, S => 
                           n2, Q => counter32_3_port);
   counter_reg_1_inst : DFFSR port map( D => newcounter_1_port, CLK => clk, R 
                           => n91, S => n1, Q => counter_1_port);
   n1 <= '1';
   n2 <= '1';
   n3 <= '1';
   n4 <= '1';
   n5 <= '1';
   n6 <= '1';
   n7 <= '1';
   n8 <= '1';
   n9 <= '1';
   n10 <= '1';
   n12 <= '1';
   U66 : INVX2 port map( A => rst, Y => n91);
   U67 : NOR2X1 port map( A => state_0_port, B => n57, Y => r_enable);
   U68 : NOR2X1 port map( A => n58, B => n59, Y => num_writes);
   U69 : NOR2X1 port map( A => read_enable_in, B => n60, Y => nextState_2_port)
                           ;
   U70 : OAI22X1 port map( A => n60, B => n61, C => n58, D => n62, Y => 
                           nextState_1_port);
   U71 : INVX1 port map( A => read_enable_in, Y => n61);
   U72 : INVX1 port map( A => n63, Y => n60);
   U73 : OAI21X1 port map( A => full, B => n64, C => n57, Y => n63);
   U74 : OAI21X1 port map( A => n65, B => n66, C => n58, Y => nextState_0_port)
                           ;
   U75 : NAND2X1 port map( A => n67, B => n68, Y => n66);
   U76 : INVX1 port map( A => full, Y => n65);
   U77 : NOR2X1 port map( A => n69, B => n70, Y => newcounter_2_port);
   U78 : AOI21X1 port map( A => counter_0_port, B => counter_1_port, C => 
                           counter_2_port, Y => n70);
   U79 : MUX2X1 port map( B => n71, A => n72, S => counter_1_port, Y => 
                           newcounter_1_port);
   U80 : INVX1 port map( A => newcounter_0_port, Y => n72);
   U81 : NAND2X1 port map( A => n73, B => counter_0_port, Y => n71);
   U82 : INVX1 port map( A => n69, Y => n73);
   U83 : NOR2X1 port map( A => n69, B => counter_0_port, Y => newcounter_0_port
                           );
   U84 : NAND2X1 port map( A => w_enable_port, B => n62, Y => n69);
   U85 : NAND3X1 port map( A => counter_1_port, B => counter_0_port, C => 
                           counter_2_port, Y => n62);
   U86 : MUX2X1 port map( B => n74, A => n75, S => counter32_0_port, Y => n55);
   U87 : MUX2X1 port map( B => n76, A => n77, S => counter32_1_port, Y => n54);
   U88 : NAND2X1 port map( A => n78, B => counter32_0_port, Y => n76);
   U89 : MUX2X1 port map( B => n79, A => n80, S => counter32_2_port, Y => n53);
   U90 : INVX1 port map( A => n81, Y => n80);
   U91 : OAI21X1 port map( A => n74, B => counter32_1_port, C => n77, Y => n81)
                           ;
   U92 : INVX1 port map( A => n82, Y => n77);
   U93 : OAI21X1 port map( A => counter32_0_port, B => n74, C => n75, Y => n82)
                           ;
   U94 : NAND3X1 port map( A => counter32_1_port, B => counter32_0_port, C => 
                           n78, Y => n79);
   U95 : MUX2X1 port map( B => n83, A => n84, S => counter32_3_port, Y => n52);
   U96 : INVX1 port map( A => n85, Y => n84);
   U97 : NAND2X1 port map( A => n78, B => n86, Y => n83);
   U98 : OAI21X1 port map( A => n74, B => n87, C => n88, Y => n51);
   U99 : OAI21X1 port map( A => n78, B => n85, C => counter32_4_port, Y => n88)
                           ;
   U100 : OAI21X1 port map( A => n86, B => n74, C => n75, Y => n85);
   U101 : AND2X1 port map( A => n64, B => n57, Y => n75);
   U102 : NAND2X1 port map( A => state_1_port, B => n89, Y => n57);
   U103 : NAND3X1 port map( A => n67, B => n68, C => state_2_port, Y => n64);
   U104 : INVX1 port map( A => state_0_port, Y => n67);
   U105 : INVX1 port map( A => n74, Y => n78);
   U106 : NAND2X1 port map( A => counter32_3_port, B => n86, Y => n87);
   U107 : NAND2X1 port map( A => w_enable_port, B => n59, Y => n74);
   U108 : NAND3X1 port map( A => counter32_3_port, B => n86, C => 
                           counter32_4_port, Y => n59);
   U109 : INVX1 port map( A => n90, Y => n86);
   U110 : NAND3X1 port map( A => counter32_1_port, B => counter32_0_port, C => 
                           counter32_2_port, Y => n90);
   U111 : INVX1 port map( A => n58, Y => w_enable_port);
   U112 : NAND3X1 port map( A => n68, B => n89, C => state_0_port, Y => n58);
   U113 : INVX1 port map( A => state_2_port, Y => n89);
   U114 : INVX1 port map( A => state_1_port, Y => n68);

end SYN_statemachine;
