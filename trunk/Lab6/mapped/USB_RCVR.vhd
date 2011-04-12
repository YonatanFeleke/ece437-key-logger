
library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

package CONV_PACK_USB_RCVR is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_USB_RCVR;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_USB_RCVR.all;

entity read_ptr is

   port( rclk, rst_n, renable : in std_logic;  rptr, rptr_nxt : out 
         std_logic_vector (3 downto 0));

end read_ptr;

architecture SYN_rtl of read_ptr is

   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal rptr_nxt_3_port, rptr_nxt_2_port, rptr_nxt_1_port, rptr_nxt_0_port, 
      binary_nxt_2_port, binary_nxt_1_port, binary_nxt_0_port, binary_r_3_port,
      binary_r_2_port, binary_r_1_port, binary_r_0_port, n1, n2, n3, n4, n5, n6
      , n7, n8, n9, n10, n11, n12 : std_logic;

begin
   rptr_nxt <= ( rptr_nxt_3_port, rptr_nxt_2_port, rptr_nxt_1_port, 
      rptr_nxt_0_port );
   
   binary_r_reg_0_inst : DFFSR port map( D => binary_nxt_0_port, CLK => rclk, R
                           => rst_n, S => n8, Q => binary_r_0_port);
   binary_r_reg_1_inst : DFFSR port map( D => binary_nxt_1_port, CLK => rclk, R
                           => rst_n, S => n7, Q => binary_r_1_port);
   binary_r_reg_2_inst : DFFSR port map( D => binary_nxt_2_port, CLK => rclk, R
                           => rst_n, S => n6, Q => binary_r_2_port);
   binary_r_reg_3_inst : DFFSR port map( D => rptr_nxt_3_port, CLK => rclk, R 
                           => rst_n, S => n5, Q => binary_r_3_port);
   gray_r_reg_3_inst : DFFSR port map( D => rptr_nxt_3_port, CLK => rclk, R => 
                           rst_n, S => n4, Q => rptr(3));
   gray_r_reg_2_inst : DFFSR port map( D => rptr_nxt_2_port, CLK => rclk, R => 
                           rst_n, S => n3, Q => rptr(2));
   gray_r_reg_1_inst : DFFSR port map( D => rptr_nxt_1_port, CLK => rclk, R => 
                           rst_n, S => n2, Q => rptr(1));
   gray_r_reg_0_inst : DFFSR port map( D => rptr_nxt_0_port, CLK => rclk, R => 
                           rst_n, S => n1, Q => rptr(0));
   n1 <= '1';
   n2 <= '1';
   n3 <= '1';
   n4 <= '1';
   n5 <= '1';
   n6 <= '1';
   n7 <= '1';
   n8 <= '1';
   U11 : INVX2 port map( A => binary_r_1_port, Y => n9);
   U12 : XOR2X1 port map( A => rptr_nxt_3_port, B => binary_nxt_2_port, Y => 
                           rptr_nxt_2_port);
   U13 : XNOR2X1 port map( A => n10, B => binary_r_3_port, Y => rptr_nxt_3_port
                           );
   U14 : NAND2X1 port map( A => binary_r_2_port, B => n11, Y => n10);
   U15 : XOR2X1 port map( A => binary_nxt_2_port, B => binary_nxt_1_port, Y => 
                           rptr_nxt_1_port);
   U16 : XOR2X1 port map( A => binary_nxt_1_port, B => binary_nxt_0_port, Y => 
                           rptr_nxt_0_port);
   U17 : XOR2X1 port map( A => binary_r_2_port, B => n11, Y => 
                           binary_nxt_2_port);
   U18 : NOR2X1 port map( A => n9, B => n12, Y => n11);
   U19 : XNOR2X1 port map( A => n12, B => binary_r_1_port, Y => 
                           binary_nxt_1_port);
   U20 : NAND2X1 port map( A => renable, B => binary_r_0_port, Y => n12);
   U21 : XOR2X1 port map( A => binary_r_0_port, B => renable, Y => 
                           binary_nxt_0_port);

end SYN_rtl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_USB_RCVR.all;

entity write_ptr is

   port( wclk, rst_n, wenable : in std_logic;  wptr, wptr_nxt : out 
         std_logic_vector (3 downto 0));

end write_ptr;

architecture SYN_rtl of write_ptr is

   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal wptr_nxt_3_port, wptr_nxt_2_port, wptr_nxt_1_port, wptr_nxt_0_port, 
      binary_nxt_2_port, binary_nxt_1_port, binary_nxt_0_port, binary_r_3_port,
      binary_r_2_port, binary_r_1_port, binary_r_0_port, n1, n2, n3, n4, n5, n6
      , n7, n8, n9, n10, n11, n12 : std_logic;

begin
   wptr_nxt <= ( wptr_nxt_3_port, wptr_nxt_2_port, wptr_nxt_1_port, 
      wptr_nxt_0_port );
   
   binary_r_reg_0_inst : DFFSR port map( D => binary_nxt_0_port, CLK => wclk, R
                           => rst_n, S => n8, Q => binary_r_0_port);
   binary_r_reg_1_inst : DFFSR port map( D => binary_nxt_1_port, CLK => wclk, R
                           => rst_n, S => n7, Q => binary_r_1_port);
   binary_r_reg_2_inst : DFFSR port map( D => binary_nxt_2_port, CLK => wclk, R
                           => rst_n, S => n6, Q => binary_r_2_port);
   binary_r_reg_3_inst : DFFSR port map( D => wptr_nxt_3_port, CLK => wclk, R 
                           => rst_n, S => n5, Q => binary_r_3_port);
   gray_r_reg_3_inst : DFFSR port map( D => wptr_nxt_3_port, CLK => wclk, R => 
                           rst_n, S => n4, Q => wptr(3));
   gray_r_reg_2_inst : DFFSR port map( D => wptr_nxt_2_port, CLK => wclk, R => 
                           rst_n, S => n3, Q => wptr(2));
   gray_r_reg_1_inst : DFFSR port map( D => wptr_nxt_1_port, CLK => wclk, R => 
                           rst_n, S => n2, Q => wptr(1));
   gray_r_reg_0_inst : DFFSR port map( D => wptr_nxt_0_port, CLK => wclk, R => 
                           rst_n, S => n1, Q => wptr(0));
   n1 <= '1';
   n2 <= '1';
   n3 <= '1';
   n4 <= '1';
   n5 <= '1';
   n6 <= '1';
   n7 <= '1';
   n8 <= '1';
   U11 : INVX2 port map( A => binary_r_1_port, Y => n9);
   U12 : XOR2X1 port map( A => wptr_nxt_3_port, B => binary_nxt_2_port, Y => 
                           wptr_nxt_2_port);
   U13 : XNOR2X1 port map( A => n10, B => binary_r_3_port, Y => wptr_nxt_3_port
                           );
   U14 : NAND2X1 port map( A => binary_r_2_port, B => n11, Y => n10);
   U15 : XOR2X1 port map( A => binary_nxt_2_port, B => binary_nxt_1_port, Y => 
                           wptr_nxt_1_port);
   U16 : XOR2X1 port map( A => binary_nxt_1_port, B => binary_nxt_0_port, Y => 
                           wptr_nxt_0_port);
   U17 : XOR2X1 port map( A => binary_r_2_port, B => n11, Y => 
                           binary_nxt_2_port);
   U18 : NOR2X1 port map( A => n9, B => n12, Y => n11);
   U19 : XNOR2X1 port map( A => n12, B => binary_r_1_port, Y => 
                           binary_nxt_1_port);
   U20 : NAND2X1 port map( A => wenable, B => binary_r_0_port, Y => n12);
   U21 : XOR2X1 port map( A => binary_r_0_port, B => wenable, Y => 
                           binary_nxt_0_port);

end SYN_rtl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_USB_RCVR.all;

entity read_fifo_ctrl is

   port( rclk, rst_n, renable : in std_logic;  wptr : in std_logic_vector (3 
         downto 0);  rptr : out std_logic_vector (3 downto 0);  raddr : out 
         std_logic_vector (2 downto 0);  empty_flag : out std_logic);

end read_fifo_ctrl;

architecture SYN_rtl of read_fifo_ctrl is

   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   component read_ptr
      port( rclk, rst_n, renable : in std_logic;  rptr, rptr_nxt : out 
            std_logic_vector (3 downto 0));
   end component;
   
   signal empty_flag_port, renable_p2, rptr_nxt_3_port, rptr_nxt_2_port, 
      rptr_nxt_1_port, rptr_nxt_0_port, rwptr_r2_3_port, rwptr_r2_2_port, 
      rwptr_r2_1_port, rwptr_r2_0_port, rwptr_r1_3_port, rwptr_r1_2_port, 
      rwptr_r1_1_port, rwptr_r1_0_port, gray_rptr_2_port, N3, n3_port, n4, n5, 
      n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, 
      n21, n22 : std_logic;

begin
   empty_flag <= empty_flag_port;
   
   RPU1 : read_ptr port map( rclk => rclk, rst_n => rst_n, renable => 
                           renable_p2, rptr(3) => rptr(3), rptr(2) => rptr(2), 
                           rptr(1) => rptr(1), rptr(0) => rptr(0), rptr_nxt(3) 
                           => rptr_nxt_3_port, rptr_nxt(2) => rptr_nxt_2_port, 
                           rptr_nxt(1) => rptr_nxt_1_port, rptr_nxt(0) => 
                           rptr_nxt_0_port);
   rwptr_r1_reg_3_inst : DFFSR port map( D => wptr(3), CLK => rclk, R => rst_n,
                           S => n14, Q => rwptr_r1_3_port);
   rwptr_r1_reg_2_inst : DFFSR port map( D => wptr(2), CLK => rclk, R => rst_n,
                           S => n13, Q => rwptr_r1_2_port);
   rwptr_r1_reg_1_inst : DFFSR port map( D => wptr(1), CLK => rclk, R => rst_n,
                           S => n12, Q => rwptr_r1_1_port);
   rwptr_r1_reg_0_inst : DFFSR port map( D => wptr(0), CLK => rclk, R => rst_n,
                           S => n11, Q => rwptr_r1_0_port);
   rwptr_r2_reg_3_inst : DFFSR port map( D => rwptr_r1_3_port, CLK => rclk, R 
                           => rst_n, S => n10, Q => rwptr_r2_3_port);
   rwptr_r2_reg_2_inst : DFFSR port map( D => rwptr_r1_2_port, CLK => rclk, R 
                           => rst_n, S => n9, Q => rwptr_r2_2_port);
   rwptr_r2_reg_1_inst : DFFSR port map( D => rwptr_r1_1_port, CLK => rclk, R 
                           => rst_n, S => n8, Q => rwptr_r2_1_port);
   rwptr_r2_reg_0_inst : DFFSR port map( D => rwptr_r1_0_port, CLK => rclk, R 
                           => rst_n, S => n7, Q => rwptr_r2_0_port);
   empty_flag_r_reg : DFFSR port map( D => N3, CLK => rclk, R => n6, S => rst_n
                           , Q => empty_flag_port);
   raddr_reg_2_inst : DFFSR port map( D => gray_rptr_2_port, CLK => rclk, R => 
                           rst_n, S => n5, Q => raddr(2));
   raddr_reg_1_inst : DFFSR port map( D => rptr_nxt_1_port, CLK => rclk, R => 
                           rst_n, S => n4, Q => raddr(1));
   raddr_reg_0_inst : DFFSR port map( D => rptr_nxt_0_port, CLK => rclk, R => 
                           rst_n, S => n3_port, Q => raddr(0));
   n3_port <= '1';
   n4 <= '1';
   n5 <= '1';
   n6 <= '1';
   n7 <= '1';
   n8 <= '1';
   n9 <= '1';
   n10 <= '1';
   n11 <= '1';
   n12 <= '1';
   n13 <= '1';
   n14 <= '1';
   U15 : INVX2 port map( A => renable, Y => n15);
   U16 : NOR2X1 port map( A => empty_flag_port, B => n15, Y => renable_p2);
   U17 : NOR2X1 port map( A => n16, B => n17, Y => N3);
   U18 : NAND2X1 port map( A => n18, B => n19, Y => n17);
   U19 : XNOR2X1 port map( A => rwptr_r2_1_port, B => rptr_nxt_1_port, Y => n19
                           );
   U20 : XOR2X1 port map( A => n20, B => gray_rptr_2_port, Y => n18);
   U21 : XOR2X1 port map( A => rptr_nxt_3_port, B => rptr_nxt_2_port, Y => 
                           gray_rptr_2_port);
   U22 : XNOR2X1 port map( A => rwptr_r2_3_port, B => rwptr_r2_2_port, Y => n20
                           );
   U23 : NAND2X1 port map( A => n21, B => n22, Y => n16);
   U24 : XNOR2X1 port map( A => rptr_nxt_3_port, B => rwptr_r2_3_port, Y => n22
                           );
   U25 : XNOR2X1 port map( A => rwptr_r2_0_port, B => rptr_nxt_0_port, Y => n21
                           );

end SYN_rtl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_USB_RCVR.all;

entity write_fifo_ctrl is

   port( wclk, rst_n, wenable : in std_logic;  rptr : in std_logic_vector (3 
         downto 0);  wenable_fifo : out std_logic;  wptr : out std_logic_vector
         (3 downto 0);  waddr : out std_logic_vector (2 downto 0);  full_flag :
         out std_logic);

end write_fifo_ctrl;

architecture SYN_rtl of write_fifo_ctrl is

   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   component write_ptr
      port( wclk, rst_n, wenable : in std_logic;  wptr, wptr_nxt : out 
            std_logic_vector (3 downto 0));
   end component;
   
   signal wenable_fifo_port, full_flag_port, wptr_nxt_3_port, wptr_nxt_2_port, 
      wptr_nxt_1_port, wptr_nxt_0_port, wrptr_r2_3_port, wrptr_r2_2_port, 
      wrptr_r2_1_port, wrptr_r2_0_port, wrptr_r1_3_port, wrptr_r1_2_port, 
      wrptr_r1_1_port, wrptr_r1_0_port, gray_wptr_2_port, N5, n3, n4, n5_port, 
      n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, 
      n21, n22 : std_logic;

begin
   wenable_fifo <= wenable_fifo_port;
   full_flag <= full_flag_port;
   
   WPU1 : write_ptr port map( wclk => wclk, rst_n => rst_n, wenable => 
                           wenable_fifo_port, wptr(3) => wptr(3), wptr(2) => 
                           wptr(2), wptr(1) => wptr(1), wptr(0) => wptr(0), 
                           wptr_nxt(3) => wptr_nxt_3_port, wptr_nxt(2) => 
                           wptr_nxt_2_port, wptr_nxt(1) => wptr_nxt_1_port, 
                           wptr_nxt(0) => wptr_nxt_0_port);
   wrptr_r1_reg_3_inst : DFFSR port map( D => rptr(3), CLK => wclk, R => rst_n,
                           S => n14, Q => wrptr_r1_3_port);
   wrptr_r1_reg_2_inst : DFFSR port map( D => rptr(2), CLK => wclk, R => rst_n,
                           S => n13, Q => wrptr_r1_2_port);
   wrptr_r1_reg_1_inst : DFFSR port map( D => rptr(1), CLK => wclk, R => rst_n,
                           S => n12, Q => wrptr_r1_1_port);
   wrptr_r1_reg_0_inst : DFFSR port map( D => rptr(0), CLK => wclk, R => rst_n,
                           S => n11, Q => wrptr_r1_0_port);
   wrptr_r2_reg_3_inst : DFFSR port map( D => wrptr_r1_3_port, CLK => wclk, R 
                           => rst_n, S => n10, Q => wrptr_r2_3_port);
   wrptr_r2_reg_2_inst : DFFSR port map( D => wrptr_r1_2_port, CLK => wclk, R 
                           => rst_n, S => n9, Q => wrptr_r2_2_port);
   wrptr_r2_reg_1_inst : DFFSR port map( D => wrptr_r1_1_port, CLK => wclk, R 
                           => rst_n, S => n8, Q => wrptr_r2_1_port);
   wrptr_r2_reg_0_inst : DFFSR port map( D => wrptr_r1_0_port, CLK => wclk, R 
                           => rst_n, S => n7, Q => wrptr_r2_0_port);
   full_flag_r_reg : DFFSR port map( D => N5, CLK => wclk, R => rst_n, S => n6,
                           Q => full_flag_port);
   waddr_reg_2_inst : DFFSR port map( D => gray_wptr_2_port, CLK => wclk, R => 
                           rst_n, S => n5_port, Q => waddr(2));
   waddr_reg_1_inst : DFFSR port map( D => wptr_nxt_1_port, CLK => wclk, R => 
                           rst_n, S => n4, Q => waddr(1));
   waddr_reg_0_inst : DFFSR port map( D => wptr_nxt_0_port, CLK => wclk, R => 
                           rst_n, S => n3, Q => waddr(0));
   n3 <= '1';
   n4 <= '1';
   n5_port <= '1';
   n6 <= '1';
   n7 <= '1';
   n8 <= '1';
   n9 <= '1';
   n10 <= '1';
   n11 <= '1';
   n12 <= '1';
   n13 <= '1';
   n14 <= '1';
   U15 : INVX2 port map( A => wenable, Y => n15);
   U16 : NOR2X1 port map( A => full_flag_port, B => n15, Y => wenable_fifo_port
                           );
   U17 : NOR2X1 port map( A => n16, B => n17, Y => N5);
   U18 : NAND2X1 port map( A => n18, B => n19, Y => n17);
   U19 : XNOR2X1 port map( A => wrptr_r2_1_port, B => wptr_nxt_1_port, Y => n19
                           );
   U20 : XOR2X1 port map( A => n20, B => gray_wptr_2_port, Y => n18);
   U21 : XOR2X1 port map( A => wptr_nxt_3_port, B => wptr_nxt_2_port, Y => 
                           gray_wptr_2_port);
   U22 : XNOR2X1 port map( A => wrptr_r2_3_port, B => wrptr_r2_2_port, Y => n20
                           );
   U23 : NAND2X1 port map( A => n21, B => n22, Y => n16);
   U24 : XOR2X1 port map( A => wrptr_r2_3_port, B => wptr_nxt_3_port, Y => n22)
                           ;
   U25 : XNOR2X1 port map( A => wrptr_r2_0_port, B => wptr_nxt_0_port, Y => n21
                           );

end SYN_rtl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_USB_RCVR.all;

entity fiforam is

   port( wclk, wenable : in std_logic;  waddr, raddr : in std_logic_vector (2 
         downto 0);  wdata : in std_logic_vector (7 downto 0);  rdata : out 
         std_logic_vector (7 downto 0));

end fiforam;

architecture SYN_rtl of fiforam is

   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFPOSX1
      port( D, CLK : in std_logic;  Q : out std_logic);
   end component;
   
   signal fiforeg_0_7_port, fiforeg_0_6_port, fiforeg_0_5_port, 
      fiforeg_0_4_port, fiforeg_0_3_port, fiforeg_0_2_port, fiforeg_0_1_port, 
      fiforeg_0_0_port, fiforeg_1_7_port, fiforeg_1_6_port, fiforeg_1_5_port, 
      fiforeg_1_4_port, fiforeg_1_3_port, fiforeg_1_2_port, fiforeg_1_1_port, 
      fiforeg_1_0_port, fiforeg_2_7_port, fiforeg_2_6_port, fiforeg_2_5_port, 
      fiforeg_2_4_port, fiforeg_2_3_port, fiforeg_2_2_port, fiforeg_2_1_port, 
      fiforeg_2_0_port, fiforeg_3_7_port, fiforeg_3_6_port, fiforeg_3_5_port, 
      fiforeg_3_4_port, fiforeg_3_3_port, fiforeg_3_2_port, fiforeg_3_1_port, 
      fiforeg_3_0_port, fiforeg_4_7_port, fiforeg_4_6_port, fiforeg_4_5_port, 
      fiforeg_4_4_port, fiforeg_4_3_port, fiforeg_4_2_port, fiforeg_4_1_port, 
      fiforeg_4_0_port, fiforeg_5_7_port, fiforeg_5_6_port, fiforeg_5_5_port, 
      fiforeg_5_4_port, fiforeg_5_3_port, fiforeg_5_2_port, fiforeg_5_1_port, 
      fiforeg_5_0_port, fiforeg_6_7_port, fiforeg_6_6_port, fiforeg_6_5_port, 
      fiforeg_6_4_port, fiforeg_6_3_port, fiforeg_6_2_port, fiforeg_6_1_port, 
      fiforeg_6_0_port, fiforeg_7_7_port, fiforeg_7_6_port, fiforeg_7_5_port, 
      fiforeg_7_4_port, fiforeg_7_3_port, fiforeg_7_2_port, fiforeg_7_1_port, 
      fiforeg_7_0_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
      n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28
      , n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, 
      n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57
      , n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, 
      n72, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87
      , n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
      n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, 
      n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, 
      n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, 
      n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, 
      n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, 
      n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, 
      n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, 
      n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, 
      n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, 
      n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, 
      n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, 
      n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, 
      n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, 
      n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, 
      n270, n271, n272, n273, n274, n275, n73 : std_logic;

begin
   
   fiforeg_reg_7_7_inst : DFFPOSX1 port map( D => n212, CLK => wclk, Q => 
                           fiforeg_7_7_port);
   fiforeg_reg_6_7_inst : DFFPOSX1 port map( D => n213, CLK => wclk, Q => 
                           fiforeg_6_7_port);
   fiforeg_reg_5_7_inst : DFFPOSX1 port map( D => n214, CLK => wclk, Q => 
                           fiforeg_5_7_port);
   fiforeg_reg_4_7_inst : DFFPOSX1 port map( D => n215, CLK => wclk, Q => 
                           fiforeg_4_7_port);
   fiforeg_reg_3_7_inst : DFFPOSX1 port map( D => n216, CLK => wclk, Q => 
                           fiforeg_3_7_port);
   fiforeg_reg_2_7_inst : DFFPOSX1 port map( D => n217, CLK => wclk, Q => 
                           fiforeg_2_7_port);
   fiforeg_reg_1_7_inst : DFFPOSX1 port map( D => n218, CLK => wclk, Q => 
                           fiforeg_1_7_port);
   fiforeg_reg_0_7_inst : DFFPOSX1 port map( D => n219, CLK => wclk, Q => 
                           fiforeg_0_7_port);
   fiforeg_reg_7_6_inst : DFFPOSX1 port map( D => n220, CLK => wclk, Q => 
                           fiforeg_7_6_port);
   fiforeg_reg_6_6_inst : DFFPOSX1 port map( D => n221, CLK => wclk, Q => 
                           fiforeg_6_6_port);
   fiforeg_reg_5_6_inst : DFFPOSX1 port map( D => n222, CLK => wclk, Q => 
                           fiforeg_5_6_port);
   fiforeg_reg_4_6_inst : DFFPOSX1 port map( D => n223, CLK => wclk, Q => 
                           fiforeg_4_6_port);
   fiforeg_reg_3_6_inst : DFFPOSX1 port map( D => n224, CLK => wclk, Q => 
                           fiforeg_3_6_port);
   fiforeg_reg_2_6_inst : DFFPOSX1 port map( D => n225, CLK => wclk, Q => 
                           fiforeg_2_6_port);
   fiforeg_reg_1_6_inst : DFFPOSX1 port map( D => n226, CLK => wclk, Q => 
                           fiforeg_1_6_port);
   fiforeg_reg_0_6_inst : DFFPOSX1 port map( D => n227, CLK => wclk, Q => 
                           fiforeg_0_6_port);
   fiforeg_reg_7_5_inst : DFFPOSX1 port map( D => n228, CLK => wclk, Q => 
                           fiforeg_7_5_port);
   fiforeg_reg_6_5_inst : DFFPOSX1 port map( D => n229, CLK => wclk, Q => 
                           fiforeg_6_5_port);
   fiforeg_reg_5_5_inst : DFFPOSX1 port map( D => n230, CLK => wclk, Q => 
                           fiforeg_5_5_port);
   fiforeg_reg_4_5_inst : DFFPOSX1 port map( D => n231, CLK => wclk, Q => 
                           fiforeg_4_5_port);
   fiforeg_reg_3_5_inst : DFFPOSX1 port map( D => n232, CLK => wclk, Q => 
                           fiforeg_3_5_port);
   fiforeg_reg_2_5_inst : DFFPOSX1 port map( D => n233, CLK => wclk, Q => 
                           fiforeg_2_5_port);
   fiforeg_reg_1_5_inst : DFFPOSX1 port map( D => n234, CLK => wclk, Q => 
                           fiforeg_1_5_port);
   fiforeg_reg_0_5_inst : DFFPOSX1 port map( D => n235, CLK => wclk, Q => 
                           fiforeg_0_5_port);
   fiforeg_reg_7_4_inst : DFFPOSX1 port map( D => n236, CLK => wclk, Q => 
                           fiforeg_7_4_port);
   fiforeg_reg_6_4_inst : DFFPOSX1 port map( D => n237, CLK => wclk, Q => 
                           fiforeg_6_4_port);
   fiforeg_reg_5_4_inst : DFFPOSX1 port map( D => n238, CLK => wclk, Q => 
                           fiforeg_5_4_port);
   fiforeg_reg_4_4_inst : DFFPOSX1 port map( D => n239, CLK => wclk, Q => 
                           fiforeg_4_4_port);
   fiforeg_reg_3_4_inst : DFFPOSX1 port map( D => n240, CLK => wclk, Q => 
                           fiforeg_3_4_port);
   fiforeg_reg_2_4_inst : DFFPOSX1 port map( D => n241, CLK => wclk, Q => 
                           fiforeg_2_4_port);
   fiforeg_reg_1_4_inst : DFFPOSX1 port map( D => n242, CLK => wclk, Q => 
                           fiforeg_1_4_port);
   fiforeg_reg_0_4_inst : DFFPOSX1 port map( D => n243, CLK => wclk, Q => 
                           fiforeg_0_4_port);
   fiforeg_reg_7_3_inst : DFFPOSX1 port map( D => n244, CLK => wclk, Q => 
                           fiforeg_7_3_port);
   fiforeg_reg_6_3_inst : DFFPOSX1 port map( D => n245, CLK => wclk, Q => 
                           fiforeg_6_3_port);
   fiforeg_reg_5_3_inst : DFFPOSX1 port map( D => n246, CLK => wclk, Q => 
                           fiforeg_5_3_port);
   fiforeg_reg_4_3_inst : DFFPOSX1 port map( D => n247, CLK => wclk, Q => 
                           fiforeg_4_3_port);
   fiforeg_reg_3_3_inst : DFFPOSX1 port map( D => n248, CLK => wclk, Q => 
                           fiforeg_3_3_port);
   fiforeg_reg_2_3_inst : DFFPOSX1 port map( D => n249, CLK => wclk, Q => 
                           fiforeg_2_3_port);
   fiforeg_reg_1_3_inst : DFFPOSX1 port map( D => n250, CLK => wclk, Q => 
                           fiforeg_1_3_port);
   fiforeg_reg_0_3_inst : DFFPOSX1 port map( D => n251, CLK => wclk, Q => 
                           fiforeg_0_3_port);
   fiforeg_reg_7_2_inst : DFFPOSX1 port map( D => n252, CLK => wclk, Q => 
                           fiforeg_7_2_port);
   fiforeg_reg_6_2_inst : DFFPOSX1 port map( D => n253, CLK => wclk, Q => 
                           fiforeg_6_2_port);
   fiforeg_reg_5_2_inst : DFFPOSX1 port map( D => n254, CLK => wclk, Q => 
                           fiforeg_5_2_port);
   fiforeg_reg_4_2_inst : DFFPOSX1 port map( D => n255, CLK => wclk, Q => 
                           fiforeg_4_2_port);
   fiforeg_reg_3_2_inst : DFFPOSX1 port map( D => n256, CLK => wclk, Q => 
                           fiforeg_3_2_port);
   fiforeg_reg_2_2_inst : DFFPOSX1 port map( D => n257, CLK => wclk, Q => 
                           fiforeg_2_2_port);
   fiforeg_reg_1_2_inst : DFFPOSX1 port map( D => n258, CLK => wclk, Q => 
                           fiforeg_1_2_port);
   fiforeg_reg_0_2_inst : DFFPOSX1 port map( D => n259, CLK => wclk, Q => 
                           fiforeg_0_2_port);
   fiforeg_reg_7_1_inst : DFFPOSX1 port map( D => n260, CLK => wclk, Q => 
                           fiforeg_7_1_port);
   fiforeg_reg_6_1_inst : DFFPOSX1 port map( D => n261, CLK => wclk, Q => 
                           fiforeg_6_1_port);
   fiforeg_reg_5_1_inst : DFFPOSX1 port map( D => n262, CLK => wclk, Q => 
                           fiforeg_5_1_port);
   fiforeg_reg_4_1_inst : DFFPOSX1 port map( D => n263, CLK => wclk, Q => 
                           fiforeg_4_1_port);
   fiforeg_reg_3_1_inst : DFFPOSX1 port map( D => n264, CLK => wclk, Q => 
                           fiforeg_3_1_port);
   fiforeg_reg_2_1_inst : DFFPOSX1 port map( D => n265, CLK => wclk, Q => 
                           fiforeg_2_1_port);
   fiforeg_reg_1_1_inst : DFFPOSX1 port map( D => n266, CLK => wclk, Q => 
                           fiforeg_1_1_port);
   fiforeg_reg_0_1_inst : DFFPOSX1 port map( D => n267, CLK => wclk, Q => 
                           fiforeg_0_1_port);
   fiforeg_reg_7_0_inst : DFFPOSX1 port map( D => n275, CLK => wclk, Q => 
                           fiforeg_7_0_port);
   fiforeg_reg_6_0_inst : DFFPOSX1 port map( D => n268, CLK => wclk, Q => 
                           fiforeg_6_0_port);
   fiforeg_reg_5_0_inst : DFFPOSX1 port map( D => n269, CLK => wclk, Q => 
                           fiforeg_5_0_port);
   fiforeg_reg_4_0_inst : DFFPOSX1 port map( D => n270, CLK => wclk, Q => 
                           fiforeg_4_0_port);
   fiforeg_reg_3_0_inst : DFFPOSX1 port map( D => n271, CLK => wclk, Q => 
                           fiforeg_3_0_port);
   fiforeg_reg_2_0_inst : DFFPOSX1 port map( D => n272, CLK => wclk, Q => 
                           fiforeg_2_0_port);
   fiforeg_reg_1_0_inst : DFFPOSX1 port map( D => n273, CLK => wclk, Q => 
                           fiforeg_1_0_port);
   fiforeg_reg_0_0_inst : DFFPOSX1 port map( D => n274, CLK => wclk, Q => 
                           fiforeg_0_0_port);
   U2 : INVX2 port map( A => n149, Y => n1);
   U3 : INVX2 port map( A => fiforeg_0_7_port, Y => n2);
   U4 : INVX2 port map( A => n157, Y => n3);
   U5 : INVX2 port map( A => fiforeg_0_6_port, Y => n4);
   U6 : INVX2 port map( A => n165, Y => n5);
   U7 : INVX2 port map( A => fiforeg_0_5_port, Y => n6);
   U8 : INVX2 port map( A => n173, Y => n7);
   U9 : INVX2 port map( A => fiforeg_0_4_port, Y => n8);
   U10 : INVX2 port map( A => n181, Y => n9);
   U11 : INVX2 port map( A => fiforeg_0_3_port, Y => n10);
   U12 : INVX2 port map( A => n189, Y => n11);
   U13 : INVX2 port map( A => fiforeg_0_2_port, Y => n12);
   U14 : INVX2 port map( A => n197, Y => n13);
   U15 : INVX2 port map( A => fiforeg_0_1_port, Y => n14);
   U16 : INVX2 port map( A => fiforeg_0_0_port, Y => n15);
   U17 : INVX2 port map( A => n205, Y => n16);
   U18 : INVX2 port map( A => fiforeg_1_7_port, Y => n17);
   U19 : INVX2 port map( A => fiforeg_1_6_port, Y => n18);
   U20 : INVX2 port map( A => fiforeg_1_5_port, Y => n19);
   U21 : INVX2 port map( A => fiforeg_1_4_port, Y => n20);
   U22 : INVX2 port map( A => fiforeg_1_3_port, Y => n21);
   U23 : INVX2 port map( A => fiforeg_1_2_port, Y => n22);
   U24 : INVX2 port map( A => fiforeg_1_1_port, Y => n23);
   U25 : INVX2 port map( A => fiforeg_1_0_port, Y => n24);
   U26 : INVX2 port map( A => fiforeg_2_7_port, Y => n25);
   U27 : INVX2 port map( A => fiforeg_2_6_port, Y => n26);
   U28 : INVX2 port map( A => fiforeg_2_5_port, Y => n27);
   U29 : INVX2 port map( A => fiforeg_2_4_port, Y => n28);
   U30 : INVX2 port map( A => fiforeg_2_3_port, Y => n29);
   U31 : INVX2 port map( A => fiforeg_2_2_port, Y => n30);
   U32 : INVX2 port map( A => fiforeg_2_1_port, Y => n31);
   U33 : INVX2 port map( A => fiforeg_2_0_port, Y => n32);
   U34 : INVX2 port map( A => fiforeg_3_7_port, Y => n33);
   U35 : INVX2 port map( A => fiforeg_3_6_port, Y => n34);
   U36 : INVX2 port map( A => fiforeg_3_5_port, Y => n35);
   U37 : INVX2 port map( A => fiforeg_3_4_port, Y => n36);
   U38 : INVX2 port map( A => fiforeg_3_3_port, Y => n37);
   U39 : INVX2 port map( A => fiforeg_3_2_port, Y => n38);
   U40 : INVX2 port map( A => fiforeg_3_1_port, Y => n39);
   U41 : INVX2 port map( A => fiforeg_3_0_port, Y => n40);
   U42 : INVX2 port map( A => fiforeg_4_7_port, Y => n41);
   U43 : INVX2 port map( A => fiforeg_4_6_port, Y => n42);
   U44 : INVX2 port map( A => fiforeg_4_5_port, Y => n43);
   U45 : INVX2 port map( A => fiforeg_4_4_port, Y => n44);
   U46 : INVX2 port map( A => fiforeg_4_3_port, Y => n45);
   U47 : INVX2 port map( A => fiforeg_4_2_port, Y => n46);
   U48 : INVX2 port map( A => fiforeg_4_1_port, Y => n47);
   U49 : INVX2 port map( A => fiforeg_4_0_port, Y => n48);
   U50 : INVX2 port map( A => fiforeg_5_7_port, Y => n49);
   U51 : INVX2 port map( A => fiforeg_5_6_port, Y => n50);
   U52 : INVX2 port map( A => fiforeg_5_5_port, Y => n51);
   U53 : INVX2 port map( A => fiforeg_5_4_port, Y => n52);
   U54 : INVX2 port map( A => fiforeg_5_3_port, Y => n53);
   U55 : INVX2 port map( A => fiforeg_5_2_port, Y => n54);
   U56 : INVX2 port map( A => fiforeg_5_1_port, Y => n55);
   U57 : INVX2 port map( A => fiforeg_5_0_port, Y => n56);
   U58 : INVX2 port map( A => fiforeg_6_7_port, Y => n57);
   U59 : INVX2 port map( A => fiforeg_6_6_port, Y => n58);
   U60 : INVX2 port map( A => fiforeg_6_5_port, Y => n59);
   U61 : INVX2 port map( A => fiforeg_6_4_port, Y => n60);
   U62 : INVX2 port map( A => fiforeg_6_3_port, Y => n61);
   U63 : INVX2 port map( A => fiforeg_6_2_port, Y => n62);
   U64 : INVX2 port map( A => fiforeg_6_1_port, Y => n63);
   U65 : INVX2 port map( A => fiforeg_6_0_port, Y => n64);
   U66 : INVX2 port map( A => fiforeg_7_7_port, Y => n65);
   U67 : INVX2 port map( A => fiforeg_7_6_port, Y => n66);
   U68 : INVX2 port map( A => fiforeg_7_5_port, Y => n67);
   U69 : INVX2 port map( A => fiforeg_7_4_port, Y => n68);
   U70 : INVX2 port map( A => fiforeg_7_3_port, Y => n69);
   U71 : INVX2 port map( A => fiforeg_7_2_port, Y => n70);
   U72 : INVX2 port map( A => fiforeg_7_1_port, Y => n71);
   U73 : INVX2 port map( A => fiforeg_7_0_port, Y => n72);
   U79 : INVX2 port map( A => waddr(2), Y => n78);
   U84 : INVX2 port map( A => waddr(1), Y => n83);
   U85 : INVX2 port map( A => waddr(0), Y => n84);
   U86 : INVX2 port map( A => n139, Y => n85);
   U87 : INVX2 port map( A => n138, Y => n86);
   U88 : INVX2 port map( A => n137, Y => n87);
   U89 : INVX2 port map( A => n136, Y => n88);
   U90 : INVX2 port map( A => raddr(2), Y => n89);
   U91 : INVX2 port map( A => raddr(1), Y => n90);
   U92 : INVX2 port map( A => raddr(0), Y => n91);
   U93 : NAND3X1 port map( A => n92, B => n93, C => n94, Y => rdata(7));
   U94 : NOR2X1 port map( A => n95, B => n96, Y => n94);
   U95 : OAI22X1 port map( A => n97, B => n41, C => n98, D => n49, Y => n96);
   U96 : OAI22X1 port map( A => n99, B => n57, C => n100, D => n65, Y => n95);
   U97 : AOI22X1 port map( A => fiforeg_3_7_port, B => n87, C => 
                           fiforeg_2_7_port, D => n88, Y => n93);
   U98 : AOI22X1 port map( A => fiforeg_1_7_port, B => n85, C => 
                           fiforeg_0_7_port, D => n86, Y => n92);
   U99 : NAND3X1 port map( A => n101, B => n102, C => n103, Y => rdata(6));
   U100 : NOR2X1 port map( A => n104, B => n105, Y => n103);
   U101 : OAI22X1 port map( A => n97, B => n42, C => n98, D => n50, Y => n105);
   U102 : OAI22X1 port map( A => n99, B => n58, C => n100, D => n66, Y => n104)
                           ;
   U103 : AOI22X1 port map( A => fiforeg_3_6_port, B => n87, C => 
                           fiforeg_2_6_port, D => n88, Y => n102);
   U104 : AOI22X1 port map( A => fiforeg_1_6_port, B => n85, C => 
                           fiforeg_0_6_port, D => n86, Y => n101);
   U105 : NAND3X1 port map( A => n106, B => n107, C => n108, Y => rdata(5));
   U106 : NOR2X1 port map( A => n109, B => n110, Y => n108);
   U107 : OAI22X1 port map( A => n97, B => n43, C => n98, D => n51, Y => n110);
   U108 : OAI22X1 port map( A => n99, B => n59, C => n100, D => n67, Y => n109)
                           ;
   U109 : AOI22X1 port map( A => fiforeg_3_5_port, B => n87, C => 
                           fiforeg_2_5_port, D => n88, Y => n107);
   U110 : AOI22X1 port map( A => fiforeg_1_5_port, B => n85, C => 
                           fiforeg_0_5_port, D => n86, Y => n106);
   U111 : NAND3X1 port map( A => n111, B => n112, C => n113, Y => rdata(4));
   U112 : NOR2X1 port map( A => n114, B => n115, Y => n113);
   U113 : OAI22X1 port map( A => n97, B => n44, C => n98, D => n52, Y => n115);
   U114 : OAI22X1 port map( A => n99, B => n60, C => n100, D => n68, Y => n114)
                           ;
   U115 : AOI22X1 port map( A => fiforeg_3_4_port, B => n87, C => 
                           fiforeg_2_4_port, D => n88, Y => n112);
   U116 : AOI22X1 port map( A => fiforeg_1_4_port, B => n85, C => 
                           fiforeg_0_4_port, D => n86, Y => n111);
   U117 : NAND3X1 port map( A => n116, B => n117, C => n118, Y => rdata(3));
   U118 : NOR2X1 port map( A => n119, B => n120, Y => n118);
   U119 : OAI22X1 port map( A => n97, B => n45, C => n98, D => n53, Y => n120);
   U120 : OAI22X1 port map( A => n99, B => n61, C => n100, D => n69, Y => n119)
                           ;
   U121 : AOI22X1 port map( A => fiforeg_3_3_port, B => n87, C => 
                           fiforeg_2_3_port, D => n88, Y => n117);
   U122 : AOI22X1 port map( A => fiforeg_1_3_port, B => n85, C => 
                           fiforeg_0_3_port, D => n86, Y => n116);
   U123 : NAND3X1 port map( A => n121, B => n122, C => n123, Y => rdata(2));
   U124 : NOR2X1 port map( A => n124, B => n125, Y => n123);
   U125 : OAI22X1 port map( A => n97, B => n46, C => n98, D => n54, Y => n125);
   U126 : OAI22X1 port map( A => n99, B => n62, C => n100, D => n70, Y => n124)
                           ;
   U127 : AOI22X1 port map( A => fiforeg_3_2_port, B => n87, C => 
                           fiforeg_2_2_port, D => n88, Y => n122);
   U128 : AOI22X1 port map( A => fiforeg_1_2_port, B => n85, C => 
                           fiforeg_0_2_port, D => n86, Y => n121);
   U129 : NAND3X1 port map( A => n126, B => n127, C => n128, Y => rdata(1));
   U130 : NOR2X1 port map( A => n129, B => n130, Y => n128);
   U131 : OAI22X1 port map( A => n97, B => n47, C => n98, D => n55, Y => n130);
   U132 : OAI22X1 port map( A => n99, B => n63, C => n100, D => n71, Y => n129)
                           ;
   U133 : AOI22X1 port map( A => fiforeg_3_1_port, B => n87, C => 
                           fiforeg_2_1_port, D => n88, Y => n127);
   U134 : AOI22X1 port map( A => fiforeg_1_1_port, B => n85, C => 
                           fiforeg_0_1_port, D => n86, Y => n126);
   U135 : NAND3X1 port map( A => n131, B => n132, C => n133, Y => rdata(0));
   U136 : NOR2X1 port map( A => n134, B => n135, Y => n133);
   U137 : OAI22X1 port map( A => n97, B => n48, C => n98, D => n56, Y => n135);
   U138 : NAND3X1 port map( A => raddr(0), B => n90, C => raddr(2), Y => n98);
   U139 : NAND3X1 port map( A => n91, B => n90, C => raddr(2), Y => n97);
   U140 : OAI22X1 port map( A => n99, B => n64, C => n100, D => n72, Y => n134)
                           ;
   U141 : NAND3X1 port map( A => raddr(1), B => raddr(0), C => raddr(2), Y => 
                           n100);
   U142 : NAND3X1 port map( A => raddr(1), B => n91, C => raddr(2), Y => n99);
   U143 : AOI22X1 port map( A => fiforeg_3_0_port, B => n87, C => 
                           fiforeg_2_0_port, D => n88, Y => n132);
   U144 : NAND3X1 port map( A => n91, B => n89, C => raddr(1), Y => n136);
   U145 : NAND3X1 port map( A => raddr(0), B => n89, C => raddr(1), Y => n137);
   U146 : AOI22X1 port map( A => fiforeg_1_0_port, B => n85, C => 
                           fiforeg_0_0_port, D => n86, Y => n131);
   U147 : NAND3X1 port map( A => n90, B => n89, C => n91, Y => n138);
   U148 : NAND3X1 port map( A => n90, B => n89, C => raddr(0), Y => n139);
   U149 : OAI22X1 port map( A => n82, B => n65, C => n140, D => n141, Y => n212
                           );
   U150 : OAI22X1 port map( A => n79, B => n57, C => n140, D => n142, Y => n213
                           );
   U151 : OAI22X1 port map( A => n81, B => n49, C => n140, D => n143, Y => n214
                           );
   U152 : OAI22X1 port map( A => n80, B => n41, C => n140, D => n144, Y => n215
                           );
   U153 : OAI22X1 port map( A => n76, B => n33, C => n140, D => n145, Y => n216
                           );
   U154 : OAI22X1 port map( A => n77, B => n25, C => n140, D => n146, Y => n217
                           );
   U155 : OAI22X1 port map( A => n74, B => n17, C => n140, D => n147, Y => n218
                           );
   U156 : OAI22X1 port map( A => n75, B => n2, C => n140, D => n148, Y => n219)
                           ;
   U157 : AOI21X1 port map( A => wdata(7), B => wenable, C => n1, Y => n140);
   U158 : OAI21X1 port map( A => n150, B => n151, C => n73, Y => n149);
   U159 : NAND2X1 port map( A => n152, B => n153, Y => n151);
   U160 : AOI22X1 port map( A => n76, B => fiforeg_3_7_port, C => n77, D => 
                           fiforeg_2_7_port, Y => n153);
   U161 : AOI22X1 port map( A => n74, B => fiforeg_1_7_port, C => n75, D => 
                           fiforeg_0_7_port, Y => n152);
   U162 : NAND2X1 port map( A => n154, B => n155, Y => n150);
   U163 : AOI22X1 port map( A => n82, B => fiforeg_7_7_port, C => n79, D => 
                           fiforeg_6_7_port, Y => n155);
   U164 : AOI22X1 port map( A => n81, B => fiforeg_5_7_port, C => n80, D => 
                           fiforeg_4_7_port, Y => n154);
   U165 : OAI22X1 port map( A => n82, B => n66, C => n156, D => n141, Y => n220
                           );
   U166 : OAI22X1 port map( A => n79, B => n58, C => n156, D => n142, Y => n221
                           );
   U167 : OAI22X1 port map( A => n81, B => n50, C => n156, D => n143, Y => n222
                           );
   U168 : OAI22X1 port map( A => n80, B => n42, C => n156, D => n144, Y => n223
                           );
   U169 : OAI22X1 port map( A => n76, B => n34, C => n156, D => n145, Y => n224
                           );
   U170 : OAI22X1 port map( A => n77, B => n26, C => n156, D => n146, Y => n225
                           );
   U171 : OAI22X1 port map( A => n74, B => n18, C => n156, D => n147, Y => n226
                           );
   U172 : OAI22X1 port map( A => n75, B => n4, C => n156, D => n148, Y => n227)
                           ;
   U173 : AOI21X1 port map( A => wenable, B => wdata(6), C => n3, Y => n156);
   U174 : OAI21X1 port map( A => n158, B => n159, C => n73, Y => n157);
   U175 : NAND2X1 port map( A => n160, B => n161, Y => n159);
   U176 : AOI22X1 port map( A => n76, B => fiforeg_3_6_port, C => n77, D => 
                           fiforeg_2_6_port, Y => n161);
   U177 : AOI22X1 port map( A => n74, B => fiforeg_1_6_port, C => n75, D => 
                           fiforeg_0_6_port, Y => n160);
   U178 : NAND2X1 port map( A => n162, B => n163, Y => n158);
   U179 : AOI22X1 port map( A => n82, B => fiforeg_7_6_port, C => n79, D => 
                           fiforeg_6_6_port, Y => n163);
   U180 : AOI22X1 port map( A => n81, B => fiforeg_5_6_port, C => n80, D => 
                           fiforeg_4_6_port, Y => n162);
   U181 : OAI22X1 port map( A => n82, B => n67, C => n164, D => n141, Y => n228
                           );
   U182 : OAI22X1 port map( A => n79, B => n59, C => n164, D => n142, Y => n229
                           );
   U183 : OAI22X1 port map( A => n81, B => n51, C => n164, D => n143, Y => n230
                           );
   U184 : OAI22X1 port map( A => n80, B => n43, C => n164, D => n144, Y => n231
                           );
   U185 : OAI22X1 port map( A => n76, B => n35, C => n164, D => n145, Y => n232
                           );
   U186 : OAI22X1 port map( A => n77, B => n27, C => n164, D => n146, Y => n233
                           );
   U187 : OAI22X1 port map( A => n74, B => n19, C => n164, D => n147, Y => n234
                           );
   U188 : OAI22X1 port map( A => n75, B => n6, C => n164, D => n148, Y => n235)
                           ;
   U189 : AOI21X1 port map( A => wenable, B => wdata(5), C => n5, Y => n164);
   U190 : OAI21X1 port map( A => n166, B => n167, C => n73, Y => n165);
   U191 : NAND2X1 port map( A => n168, B => n169, Y => n167);
   U192 : AOI22X1 port map( A => n76, B => fiforeg_3_5_port, C => n77, D => 
                           fiforeg_2_5_port, Y => n169);
   U193 : AOI22X1 port map( A => n74, B => fiforeg_1_5_port, C => n75, D => 
                           fiforeg_0_5_port, Y => n168);
   U194 : NAND2X1 port map( A => n170, B => n171, Y => n166);
   U195 : AOI22X1 port map( A => n82, B => fiforeg_7_5_port, C => n79, D => 
                           fiforeg_6_5_port, Y => n171);
   U196 : AOI22X1 port map( A => n81, B => fiforeg_5_5_port, C => n80, D => 
                           fiforeg_4_5_port, Y => n170);
   U197 : OAI22X1 port map( A => n82, B => n68, C => n172, D => n141, Y => n236
                           );
   U198 : OAI22X1 port map( A => n79, B => n60, C => n172, D => n142, Y => n237
                           );
   U199 : OAI22X1 port map( A => n81, B => n52, C => n172, D => n143, Y => n238
                           );
   U200 : OAI22X1 port map( A => n80, B => n44, C => n172, D => n144, Y => n239
                           );
   U201 : OAI22X1 port map( A => n76, B => n36, C => n172, D => n145, Y => n240
                           );
   U202 : OAI22X1 port map( A => n77, B => n28, C => n172, D => n146, Y => n241
                           );
   U203 : OAI22X1 port map( A => n74, B => n20, C => n172, D => n147, Y => n242
                           );
   U204 : OAI22X1 port map( A => n75, B => n8, C => n172, D => n148, Y => n243)
                           ;
   U205 : AOI21X1 port map( A => wenable, B => wdata(4), C => n7, Y => n172);
   U206 : OAI21X1 port map( A => n174, B => n175, C => n73, Y => n173);
   U207 : NAND2X1 port map( A => n176, B => n177, Y => n175);
   U208 : AOI22X1 port map( A => n76, B => fiforeg_3_4_port, C => n77, D => 
                           fiforeg_2_4_port, Y => n177);
   U209 : AOI22X1 port map( A => n74, B => fiforeg_1_4_port, C => n75, D => 
                           fiforeg_0_4_port, Y => n176);
   U210 : NAND2X1 port map( A => n178, B => n179, Y => n174);
   U211 : AOI22X1 port map( A => n82, B => fiforeg_7_4_port, C => n79, D => 
                           fiforeg_6_4_port, Y => n179);
   U212 : AOI22X1 port map( A => n81, B => fiforeg_5_4_port, C => n80, D => 
                           fiforeg_4_4_port, Y => n178);
   U213 : OAI22X1 port map( A => n82, B => n69, C => n180, D => n141, Y => n244
                           );
   U214 : OAI22X1 port map( A => n79, B => n61, C => n180, D => n142, Y => n245
                           );
   U215 : OAI22X1 port map( A => n81, B => n53, C => n180, D => n143, Y => n246
                           );
   U216 : OAI22X1 port map( A => n80, B => n45, C => n180, D => n144, Y => n247
                           );
   U217 : OAI22X1 port map( A => n76, B => n37, C => n180, D => n145, Y => n248
                           );
   U218 : OAI22X1 port map( A => n77, B => n29, C => n180, D => n146, Y => n249
                           );
   U219 : OAI22X1 port map( A => n74, B => n21, C => n180, D => n147, Y => n250
                           );
   U220 : OAI22X1 port map( A => n75, B => n10, C => n180, D => n148, Y => n251
                           );
   U221 : AOI21X1 port map( A => wenable, B => wdata(3), C => n9, Y => n180);
   U222 : OAI21X1 port map( A => n182, B => n183, C => n73, Y => n181);
   U223 : NAND2X1 port map( A => n184, B => n185, Y => n183);
   U224 : AOI22X1 port map( A => n76, B => fiforeg_3_3_port, C => n77, D => 
                           fiforeg_2_3_port, Y => n185);
   U225 : AOI22X1 port map( A => n74, B => fiforeg_1_3_port, C => n75, D => 
                           fiforeg_0_3_port, Y => n184);
   U226 : NAND2X1 port map( A => n186, B => n187, Y => n182);
   U227 : AOI22X1 port map( A => n82, B => fiforeg_7_3_port, C => n79, D => 
                           fiforeg_6_3_port, Y => n187);
   U228 : AOI22X1 port map( A => n81, B => fiforeg_5_3_port, C => n80, D => 
                           fiforeg_4_3_port, Y => n186);
   U229 : OAI22X1 port map( A => n82, B => n70, C => n188, D => n141, Y => n252
                           );
   U230 : OAI22X1 port map( A => n79, B => n62, C => n188, D => n142, Y => n253
                           );
   U231 : OAI22X1 port map( A => n81, B => n54, C => n188, D => n143, Y => n254
                           );
   U232 : OAI22X1 port map( A => n80, B => n46, C => n188, D => n144, Y => n255
                           );
   U233 : OAI22X1 port map( A => n76, B => n38, C => n188, D => n145, Y => n256
                           );
   U234 : OAI22X1 port map( A => n77, B => n30, C => n188, D => n146, Y => n257
                           );
   U235 : OAI22X1 port map( A => n74, B => n22, C => n188, D => n147, Y => n258
                           );
   U236 : OAI22X1 port map( A => n75, B => n12, C => n188, D => n148, Y => n259
                           );
   U237 : AOI21X1 port map( A => wenable, B => wdata(2), C => n11, Y => n188);
   U238 : OAI21X1 port map( A => n190, B => n191, C => n73, Y => n189);
   U239 : NAND2X1 port map( A => n192, B => n193, Y => n191);
   U240 : AOI22X1 port map( A => n76, B => fiforeg_3_2_port, C => n77, D => 
                           fiforeg_2_2_port, Y => n193);
   U241 : AOI22X1 port map( A => n74, B => fiforeg_1_2_port, C => n75, D => 
                           fiforeg_0_2_port, Y => n192);
   U242 : NAND2X1 port map( A => n194, B => n195, Y => n190);
   U243 : AOI22X1 port map( A => n82, B => fiforeg_7_2_port, C => n79, D => 
                           fiforeg_6_2_port, Y => n195);
   U244 : AOI22X1 port map( A => n81, B => fiforeg_5_2_port, C => n80, D => 
                           fiforeg_4_2_port, Y => n194);
   U245 : OAI22X1 port map( A => n82, B => n71, C => n196, D => n141, Y => n260
                           );
   U246 : OAI22X1 port map( A => n79, B => n63, C => n196, D => n142, Y => n261
                           );
   U247 : OAI22X1 port map( A => n81, B => n55, C => n196, D => n143, Y => n262
                           );
   U248 : OAI22X1 port map( A => n80, B => n47, C => n196, D => n144, Y => n263
                           );
   U249 : OAI22X1 port map( A => n76, B => n39, C => n196, D => n145, Y => n264
                           );
   U250 : OAI22X1 port map( A => n77, B => n31, C => n196, D => n146, Y => n265
                           );
   U251 : OAI22X1 port map( A => n74, B => n23, C => n196, D => n147, Y => n266
                           );
   U252 : OAI22X1 port map( A => n75, B => n14, C => n196, D => n148, Y => n267
                           );
   U253 : AOI21X1 port map( A => wenable, B => wdata(1), C => n13, Y => n196);
   U254 : OAI21X1 port map( A => n198, B => n199, C => n73, Y => n197);
   U255 : NAND2X1 port map( A => n200, B => n201, Y => n199);
   U256 : AOI22X1 port map( A => n76, B => fiforeg_3_1_port, C => n77, D => 
                           fiforeg_2_1_port, Y => n201);
   U257 : AOI22X1 port map( A => n74, B => fiforeg_1_1_port, C => n75, D => 
                           fiforeg_0_1_port, Y => n200);
   U258 : NAND2X1 port map( A => n202, B => n203, Y => n198);
   U259 : AOI22X1 port map( A => n82, B => fiforeg_7_1_port, C => n79, D => 
                           fiforeg_6_1_port, Y => n203);
   U260 : AOI22X1 port map( A => n81, B => fiforeg_5_1_port, C => n80, D => 
                           fiforeg_4_1_port, Y => n202);
   U261 : OAI22X1 port map( A => n79, B => n64, C => n204, D => n142, Y => n268
                           );
   U262 : OAI22X1 port map( A => n81, B => n56, C => n204, D => n143, Y => n269
                           );
   U263 : OAI22X1 port map( A => n80, B => n48, C => n204, D => n144, Y => n270
                           );
   U264 : OAI22X1 port map( A => n76, B => n40, C => n204, D => n145, Y => n271
                           );
   U265 : OAI22X1 port map( A => n77, B => n32, C => n204, D => n146, Y => n272
                           );
   U266 : OAI22X1 port map( A => n74, B => n24, C => n204, D => n147, Y => n273
                           );
   U267 : OAI22X1 port map( A => n75, B => n15, C => n204, D => n148, Y => n274
                           );
   U268 : OAI22X1 port map( A => n82, B => n72, C => n204, D => n141, Y => n275
                           );
   U269 : AOI21X1 port map( A => wenable, B => wdata(0), C => n16, Y => n204);
   U270 : OAI21X1 port map( A => n206, B => n207, C => n73, Y => n205);
   U271 : NAND2X1 port map( A => n208, B => n209, Y => n207);
   U272 : AOI22X1 port map( A => n76, B => fiforeg_3_0_port, C => n77, D => 
                           fiforeg_2_0_port, Y => n209);
   U273 : NAND3X1 port map( A => n84, B => n78, C => waddr(1), Y => n146);
   U274 : NAND3X1 port map( A => waddr(0), B => n78, C => waddr(1), Y => n145);
   U275 : AOI22X1 port map( A => n74, B => fiforeg_1_0_port, C => n75, D => 
                           fiforeg_0_0_port, Y => n208);
   U276 : NAND3X1 port map( A => n83, B => n78, C => n84, Y => n148);
   U277 : NAND3X1 port map( A => n83, B => n78, C => waddr(0), Y => n147);
   U278 : NAND2X1 port map( A => n210, B => n211, Y => n206);
   U279 : AOI22X1 port map( A => n82, B => fiforeg_7_0_port, C => n79, D => 
                           fiforeg_6_0_port, Y => n211);
   U280 : NAND3X1 port map( A => waddr(1), B => n84, C => waddr(2), Y => n142);
   U281 : AOI22X1 port map( A => n81, B => fiforeg_5_0_port, C => n80, D => 
                           fiforeg_4_0_port, Y => n210);
   U282 : NAND3X1 port map( A => n84, B => n83, C => waddr(2), Y => n144);
   U283 : NAND3X1 port map( A => waddr(0), B => n83, C => waddr(2), Y => n143);
   U284 : NAND3X1 port map( A => waddr(1), B => waddr(0), C => waddr(2), Y => 
                           n141);
   U74 : INVX2 port map( A => n148, Y => n75);
   U75 : INVX2 port map( A => wenable, Y => n73);
   U76 : INVX2 port map( A => n142, Y => n79);
   U77 : INVX2 port map( A => n146, Y => n77);
   U78 : INVX2 port map( A => n144, Y => n80);
   U80 : INVX2 port map( A => n145, Y => n76);
   U81 : INVX2 port map( A => n143, Y => n81);
   U82 : INVX2 port map( A => n147, Y => n74);
   U83 : INVX2 port map( A => n141, Y => n82);

end SYN_rtl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_USB_RCVR.all;

entity fifo is

   port( rclk, wclk, rst_n, renable, wenable : in std_logic;  wdata : in 
         std_logic_vector (7 downto 0);  rdata : out std_logic_vector (7 downto
         0);  empty, full : out std_logic);

end fifo;

architecture SYN_RTL of fifo is

   component read_fifo_ctrl
      port( rclk, rst_n, renable : in std_logic;  wptr : in std_logic_vector (3
            downto 0);  rptr : out std_logic_vector (3 downto 0);  raddr : out 
            std_logic_vector (2 downto 0);  empty_flag : out std_logic);
   end component;
   
   component write_fifo_ctrl
      port( wclk, rst_n, wenable : in std_logic;  rptr : in std_logic_vector (3
            downto 0);  wenable_fifo : out std_logic;  wptr : out 
            std_logic_vector (3 downto 0);  waddr : out std_logic_vector (2 
            downto 0);  full_flag : out std_logic);
   end component;
   
   component fiforam
      port( wclk, wenable : in std_logic;  waddr, raddr : in std_logic_vector 
            (2 downto 0);  wdata : in std_logic_vector (7 downto 0);  rdata : 
            out std_logic_vector (7 downto 0));
   end component;
   
   signal wenable_fifo, waddr_2_port, waddr_1_port, waddr_0_port, raddr_2_port,
      raddr_1_port, raddr_0_port, rptr_3_port, rptr_2_port, rptr_1_port, 
      rptr_0_port, wptr_3_port, wptr_2_port, wptr_1_port, wptr_0_port : 
      std_logic;

begin
   
   UFIFORAM : fiforam port map( wclk => wclk, wenable => wenable_fifo, waddr(2)
                           => waddr_2_port, waddr(1) => waddr_1_port, waddr(0) 
                           => waddr_0_port, raddr(2) => raddr_2_port, raddr(1) 
                           => raddr_1_port, raddr(0) => raddr_0_port, wdata(7) 
                           => wdata(7), wdata(6) => wdata(6), wdata(5) => 
                           wdata(5), wdata(4) => wdata(4), wdata(3) => wdata(3)
                           , wdata(2) => wdata(2), wdata(1) => wdata(1), 
                           wdata(0) => wdata(0), rdata(7) => rdata(7), rdata(6)
                           => rdata(6), rdata(5) => rdata(5), rdata(4) => 
                           rdata(4), rdata(3) => rdata(3), rdata(2) => rdata(2)
                           , rdata(1) => rdata(1), rdata(0) => rdata(0));
   UWFC : write_fifo_ctrl port map( wclk => wclk, rst_n => rst_n, wenable => 
                           wenable, rptr(3) => rptr_3_port, rptr(2) => 
                           rptr_2_port, rptr(1) => rptr_1_port, rptr(0) => 
                           rptr_0_port, wenable_fifo => wenable_fifo, wptr(3) 
                           => wptr_3_port, wptr(2) => wptr_2_port, wptr(1) => 
                           wptr_1_port, wptr(0) => wptr_0_port, waddr(2) => 
                           waddr_2_port, waddr(1) => waddr_1_port, waddr(0) => 
                           waddr_0_port, full_flag => full);
   URFC : read_fifo_ctrl port map( rclk => rclk, rst_n => rst_n, renable => 
                           renable, wptr(3) => wptr_3_port, wptr(2) => 
                           wptr_2_port, wptr(1) => wptr_1_port, wptr(0) => 
                           wptr_0_port, rptr(3) => rptr_3_port, rptr(2) => 
                           rptr_2_port, rptr(1) => rptr_1_port, rptr(0) => 
                           rptr_0_port, raddr(2) => raddr_2_port, raddr(1) => 
                           raddr_1_port, raddr(0) => raddr_0_port, empty_flag 
                           => empty);

end SYN_RTL;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_USB_RCVR.all;

entity timer is

   port( CLK, RST_N, D_EDGE, RCVING : in std_logic;  SHIFT_ENABLE : out 
         std_logic);

end timer;

architecture SYN_behav of timer is

   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal state_1_port, state_0_port, cnt4_2_port, cnt4_1_port, cnt4_0_port, 
      strobeh, N33, N34, N35, n1, n2, n3, n4, n5, n6, n8, n9, n10, n11, n12, 
      n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27
      , n28, n29, n30, n31, n32 : std_logic;

begin
   
   cnt4_reg_0_inst : DFFSR port map( D => N33, CLK => CLK, R => RST_N, S => n6,
                           Q => cnt4_0_port);
   strobeh_reg : DFFSR port map( D => n32, CLK => CLK, R => RST_N, S => n5, Q 
                           => strobeh);
   state_reg_0_inst : DFFSR port map( D => n30, CLK => CLK, R => RST_N, S => n4
                           , Q => state_0_port);
   state_reg_1_inst : DFFSR port map( D => n31, CLK => CLK, R => RST_N, S => n3
                           , Q => state_1_port);
   cnt4_reg_1_inst : DFFSR port map( D => N34, CLK => CLK, R => RST_N, S => n2,
                           Q => cnt4_1_port);
   cnt4_reg_2_inst : DFFSR port map( D => N35, CLK => CLK, R => RST_N, S => n1,
                           Q => cnt4_2_port);
   n1 <= '1';
   n2 <= '1';
   n3 <= '1';
   n4 <= '1';
   n5 <= '1';
   n6 <= '1';
   U9 : INVX2 port map( A => n17, Y => SHIFT_ENABLE);
   U10 : INVX2 port map( A => n26, Y => n8);
   U11 : INVX2 port map( A => state_0_port, Y => n9);
   U12 : INVX2 port map( A => cnt4_2_port, Y => n10);
   U13 : INVX2 port map( A => cnt4_1_port, Y => n11);
   U14 : INVX2 port map( A => cnt4_0_port, Y => n12);
   U15 : INVX2 port map( A => D_EDGE, Y => n13);
   U16 : INVX2 port map( A => RCVING, Y => n14);
   U17 : AOI21X1 port map( A => state_1_port, B => n15, C => n14, Y => n30);
   U18 : OAI21X1 port map( A => strobeh, B => D_EDGE, C => n9, Y => n15);
   U19 : OAI21X1 port map( A => n14, B => n16, C => n17, Y => n31);
   U20 : OAI21X1 port map( A => n13, B => n18, C => n19, Y => n32);
   U21 : NAND3X1 port map( A => n8, B => n11, C => n20, Y => n19);
   U22 : NOR2X1 port map( A => n12, B => n10, Y => n20);
   U23 : OAI21X1 port map( A => n21, B => n22, C => strobeh, Y => n18);
   U24 : NAND2X1 port map( A => n8, B => n12, Y => n22);
   U25 : NAND2X1 port map( A => n11, B => n10, Y => n21);
   U26 : NAND2X1 port map( A => state_0_port, B => state_1_port, Y => n17);
   U27 : NOR2X1 port map( A => n23, B => n16, Y => N35);
   U28 : AOI22X1 port map( A => n24, B => cnt4_1_port, C => cnt4_2_port, D => 
                           n12, Y => n23);
   U29 : NOR2X1 port map( A => cnt4_2_port, B => n12, Y => n24);
   U30 : NOR2X1 port map( A => n25, B => n16, Y => N34);
   U31 : NAND2X1 port map( A => n8, B => n13, Y => n16);
   U32 : AOI22X1 port map( A => n27, B => cnt4_0_port, C => cnt4_1_port, D => 
                           n12, Y => n25);
   U33 : NOR2X1 port map( A => cnt4_2_port, B => cnt4_1_port, Y => n27);
   U34 : NOR2X1 port map( A => n26, B => n28, Y => N33);
   U35 : NAND2X1 port map( A => n29, B => n12, Y => n28);
   U36 : OAI21X1 port map( A => cnt4_2_port, B => cnt4_1_port, C => D_EDGE, Y 
                           => n29);
   U37 : XOR2X1 port map( A => n9, B => state_1_port, Y => n26);

end SYN_behav;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_USB_RCVR.all;

entity shift_reg is

   port( CLK, RST_N, SHIFT_ENABLE, D_ORIG : in std_logic;  RCV_DATA : out 
         std_logic_vector (7 downto 0));

end shift_reg;

architecture SYN_behav of shift_reg is

   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal RCV_DATA_7_port, RCV_DATA_6_port, RCV_DATA_5_port, RCV_DATA_4_port, 
      RCV_DATA_3_port, RCV_DATA_2_port, RCV_DATA_1_port, RCV_DATA_0_port, n1, 
      n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, 
      n18, n19, n20, n21, n22, n23, n24, n25, n26 : std_logic;

begin
   RCV_DATA <= ( RCV_DATA_7_port, RCV_DATA_6_port, RCV_DATA_5_port, 
      RCV_DATA_4_port, RCV_DATA_3_port, RCV_DATA_2_port, RCV_DATA_1_port, 
      RCV_DATA_0_port );
   
   tData_reg_7_inst : DFFSR port map( D => n26, CLK => CLK, R => RST_N, S => 
                           n25, Q => RCV_DATA_7_port);
   tData_reg_6_inst : DFFSR port map( D => n24, CLK => CLK, R => RST_N, S => 
                           n23, Q => RCV_DATA_6_port);
   tData_reg_5_inst : DFFSR port map( D => n22, CLK => CLK, R => RST_N, S => 
                           n21, Q => RCV_DATA_5_port);
   tData_reg_4_inst : DFFSR port map( D => n20, CLK => CLK, R => RST_N, S => 
                           n19, Q => RCV_DATA_4_port);
   tData_reg_3_inst : DFFSR port map( D => n18, CLK => CLK, R => RST_N, S => 
                           n17, Q => RCV_DATA_3_port);
   tData_reg_2_inst : DFFSR port map( D => n16, CLK => CLK, R => RST_N, S => 
                           n15, Q => RCV_DATA_2_port);
   tData_reg_1_inst : DFFSR port map( D => n14, CLK => CLK, R => RST_N, S => 
                           n13, Q => RCV_DATA_1_port);
   tData_reg_0_inst : DFFSR port map( D => n12, CLK => CLK, R => RST_N, S => 
                           n11, Q => RCV_DATA_0_port);
   U2 : OAI21X1 port map( A => n1, B => n2, C => n3, Y => n12);
   U3 : NAND2X1 port map( A => RCV_DATA_0_port, B => n2, Y => n3);
   U4 : OAI22X1 port map( A => n2, B => n4, C => SHIFT_ENABLE, D => n1, Y => 
                           n14);
   U5 : INVX1 port map( A => RCV_DATA_1_port, Y => n1);
   U6 : OAI22X1 port map( A => n2, B => n5, C => SHIFT_ENABLE, D => n4, Y => 
                           n16);
   U7 : INVX1 port map( A => RCV_DATA_2_port, Y => n4);
   U8 : OAI22X1 port map( A => n2, B => n6, C => SHIFT_ENABLE, D => n5, Y => 
                           n18);
   U9 : INVX1 port map( A => RCV_DATA_3_port, Y => n5);
   U10 : OAI22X1 port map( A => n2, B => n7, C => SHIFT_ENABLE, D => n6, Y => 
                           n20);
   U11 : INVX1 port map( A => RCV_DATA_4_port, Y => n6);
   U12 : OAI22X1 port map( A => n2, B => n8, C => SHIFT_ENABLE, D => n7, Y => 
                           n22);
   U13 : INVX1 port map( A => RCV_DATA_5_port, Y => n7);
   U14 : OAI22X1 port map( A => n2, B => n9, C => SHIFT_ENABLE, D => n8, Y => 
                           n24);
   U15 : INVX1 port map( A => RCV_DATA_6_port, Y => n8);
   U16 : INVX1 port map( A => SHIFT_ENABLE, Y => n2);
   U17 : OAI21X1 port map( A => SHIFT_ENABLE, B => n9, C => n10, Y => n26);
   U18 : NAND2X1 port map( A => D_ORIG, B => SHIFT_ENABLE, Y => n10);
   U19 : INVX1 port map( A => RCV_DATA_7_port, Y => n9);
   n11 <= '1';
   n13 <= '1';
   n15 <= '1';
   n17 <= '1';
   n19 <= '1';
   n21 <= '1';
   n23 <= '1';
   n25 <= '1';

end SYN_behav;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_USB_RCVR.all;

entity rcu is

   port( CLK, RST_N, D_EDGE, EOP, SHIFT_ENABLE : in std_logic;  RCV_DATA : in 
         std_logic_vector (7 downto 0);  RCVING, W_ENABLE, R_ERROR : out 
         std_logic);

end rcu;

architecture SYN_behav of rcu is

   component BUFX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal state_3_port, state_2_port, state_1_port, state_0_port, cnt_3_port, 
      cnt_2_port, cnt_1_port, cnt_0_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, 
      n10, n11, n12, n13, n14, n15, n17, n18, n19, n20, n21, n22, n23, n24, n25
      , n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, 
      n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54
      , n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, 
      n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83
      , n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, 
      n98, n16 : std_logic;

begin
   
   cnt_reg_0_inst : DFFSR port map( D => n98, CLK => CLK, R => RST_N, S => n8, 
                           Q => cnt_0_port);
   cnt_reg_3_inst : DFFSR port map( D => n97, CLK => CLK, R => RST_N, S => n7, 
                           Q => cnt_3_port);
   state_reg_0_inst : DFFSR port map( D => n95, CLK => CLK, R => RST_N, S => n6
                           , Q => state_0_port);
   state_reg_3_inst : DFFSR port map( D => n96, CLK => CLK, R => RST_N, S => n5
                           , Q => state_3_port);
   state_reg_2_inst : DFFSR port map( D => n10, CLK => CLK, R => RST_N, S => n4
                           , Q => state_2_port);
   state_reg_1_inst : DFFSR port map( D => n94, CLK => CLK, R => RST_N, S => n3
                           , Q => state_1_port);
   cnt_reg_1_inst : DFFSR port map( D => n13, CLK => CLK, R => RST_N, S => n2, 
                           Q => cnt_1_port);
   cnt_reg_2_inst : DFFSR port map( D => n93, CLK => CLK, R => RST_N, S => n1, 
                           Q => cnt_2_port);
   n1 <= '1';
   n2 <= '1';
   n3 <= '1';
   n4 <= '1';
   n5 <= '1';
   n6 <= '1';
   n7 <= '1';
   n8 <= '1';
   U11 : AND2X2 port map( A => n39, B => n40, Y => n38);
   U12 : AND2X2 port map( A => n57, B => n58, Y => n56);
   U13 : AND2X2 port map( A => n79, B => n80, Y => n78);
   U14 : AND2X2 port map( A => n40, B => n48, Y => n62);
   U15 : AND2X2 port map( A => n67, B => n42, Y => n64);
   U16 : INVX2 port map( A => n46, Y => n9);
   U17 : INVX2 port map( A => n43, Y => n10);
   U18 : INVX2 port map( A => n63, Y => n11);
   U19 : INVX2 port map( A => n87, Y => n12);
   U20 : INVX2 port map( A => n33, Y => n13);
   U21 : INVX2 port map( A => n86, Y => n14);
   U22 : INVX2 port map( A => n73, Y => n15);
   U23 : INVX2 port map( A => n41, Y => W_ENABLE);
   U24 : INVX2 port map( A => n44, Y => n17);
   U25 : INVX2 port map( A => n52, Y => n18);
   U26 : INVX2 port map( A => state_2_port, Y => n19);
   U27 : INVX2 port map( A => n74, Y => n20);
   U28 : INVX2 port map( A => state_1_port, Y => n21);
   U29 : INVX2 port map( A => n16, Y => n22);
   U30 : INVX2 port map( A => cnt_3_port, Y => n23);
   U31 : INVX2 port map( A => cnt_2_port, Y => n24);
   U32 : INVX2 port map( A => cnt_1_port, Y => n25);
   U33 : INVX2 port map( A => cnt_0_port, Y => n26);
   U34 : INVX2 port map( A => D_EDGE, Y => n27);
   U35 : INVX2 port map( A => EOP, Y => n28);
   U36 : INVX2 port map( A => RCV_DATA(7), Y => n29);
   U37 : OAI21X1 port map( A => n30, B => n24, C => n31, Y => n93);
   U38 : NAND3X1 port map( A => n32, B => n24, C => cnt_1_port, Y => n31);
   U39 : AOI22X1 port map( A => n34, B => cnt_1_port, C => n25, D => n32, Y => 
                           n33);
   U40 : OAI21X1 port map( A => n11, B => n21, C => n35, Y => n94);
   U41 : OAI21X1 port map( A => n36, B => n37, C => n11, Y => n35);
   U42 : OAI21X1 port map( A => EOP, B => n38, C => n18, Y => n37);
   U43 : NAND2X1 port map( A => n41, B => n42, Y => n36);
   U44 : OAI21X1 port map( A => n44, B => n45, C => n28, Y => n43);
   U45 : OAI21X1 port map( A => n46, B => n47, C => n48, Y => n45);
   U46 : OAI21X1 port map( A => n11, B => n22, C => n49, Y => n95);
   U47 : OAI21X1 port map( A => n50, B => n51, C => n11, Y => n49);
   U48 : OAI21X1 port map( A => n28, B => n41, C => n18, Y => n51);
   U49 : OAI21X1 port map( A => n53, B => n28, C => n54, Y => n52);
   U50 : OAI21X1 port map( A => EOP, B => n55, C => n56, Y => n50);
   U51 : AOI22X1 port map( A => n59, B => n60, C => n9, D => n47, Y => n55);
   U52 : NOR2X1 port map( A => cnt_0_port, B => n61, Y => n60);
   U53 : NAND2X1 port map( A => n25, B => n24, Y => n61);
   U54 : NOR2X1 port map( A => n62, B => n23, Y => n59);
   U55 : NAND3X1 port map( A => n64, B => n65, C => n66, Y => n96);
   U56 : AOI22X1 port map( A => n9, B => n47, C => state_3_port, D => n63, Y =>
                           n66);
   U57 : OAI21X1 port map( A => EOP, B => n67, C => n68, Y => n63);
   U58 : OAI21X1 port map( A => n69, B => n70, C => n27, Y => n68);
   U59 : NAND2X1 port map( A => n58, B => n42, Y => n70);
   U60 : NAND2X1 port map( A => n71, B => n72, Y => n58);
   U61 : OAI21X1 port map( A => n73, B => n74, C => n57, Y => n69);
   U62 : NAND2X1 port map( A => n75, B => n15, Y => n57);
   U63 : NAND3X1 port map( A => n76, B => n77, C => n78, Y => n47);
   U64 : NOR2X1 port map( A => RCV_DATA(6), B => RCV_DATA(5), Y => n80);
   U65 : NOR2X1 port map( A => RCV_DATA(4), B => RCV_DATA(3), Y => n79);
   U66 : NOR2X1 port map( A => RCV_DATA(2), B => RCV_DATA(1), Y => n77);
   U67 : NOR2X1 port map( A => RCV_DATA(0), B => n29, Y => n76);
   U68 : OAI21X1 port map( A => n81, B => n82, C => EOP, Y => n65);
   U69 : NAND2X1 port map( A => n62, B => n17, Y => n82);
   U70 : NAND3X1 port map( A => n54, B => n41, C => n53, Y => n44);
   U71 : NAND2X1 port map( A => n83, B => n20, Y => n53);
   U72 : NAND2X1 port map( A => n83, B => n75, Y => n54);
   U73 : NAND2X1 port map( A => n83, B => n72, Y => n48);
   U74 : NAND2X1 port map( A => n71, B => n75, Y => n40);
   U75 : NOR2X1 port map( A => n21, B => n16, Y => n75);
   U76 : NAND2X1 port map( A => n46, B => n39, Y => n81);
   U77 : NAND3X1 port map( A => n16, B => n21, C => n71, Y => n39);
   U78 : NAND2X1 port map( A => n71, B => n20, Y => n46);
   U79 : NOR2X1 port map( A => state_2_port, B => state_3_port, Y => n71);
   U80 : NAND2X1 port map( A => n72, B => n15, Y => n42);
   U81 : NOR2X1 port map( A => n16, B => state_1_port, Y => n72);
   U82 : NAND3X1 port map( A => n15, B => n21, C => n16, Y => n67);
   U83 : OAI21X1 port map( A => n12, B => n23, C => n84, Y => n97);
   U84 : NAND3X1 port map( A => n32, B => n23, C => n85, Y => n84);
   U85 : NOR2X1 port map( A => n25, B => n24, Y => n85);
   U86 : NOR2X1 port map( A => n26, B => n86, Y => n32);
   U87 : OAI21X1 port map( A => n86, B => cnt_2_port, C => n30, Y => n87);
   U88 : AOI21X1 port map( A => n25, B => n14, C => n34, Y => n30);
   U89 : OAI21X1 port map( A => cnt_0_port, B => n86, C => n88, Y => n34);
   U90 : OAI22X1 port map( A => n26, B => n88, C => cnt_0_port, D => n86, Y => 
                           n98);
   U91 : NAND3X1 port map( A => n89, B => n86, C => n90, Y => n88);
   U92 : NAND3X1 port map( A => SHIFT_ENABLE, B => n89, C => n90, Y => n86);
   U93 : NOR2X1 port map( A => state_3_port, B => n16, Y => n90);
   U94 : XOR2X1 port map( A => state_2_port, B => state_1_port, Y => n89);
   U95 : NAND3X1 port map( A => n16, B => n21, C => n83, Y => n41);
   U96 : NOR2X1 port map( A => n20, B => n73, Y => R_ERROR);
   U97 : NAND2X1 port map( A => state_3_port, B => n19, Y => n73);
   U98 : NAND2X1 port map( A => n16, B => state_1_port, Y => n74);
   U99 : OAI21X1 port map( A => state_3_port, B => n21, C => n91, Y => RCVING);
   U100 : AOI21X1 port map( A => n92, B => n16, C => n83, Y => n91);
   U101 : NOR2X1 port map( A => n19, B => state_3_port, Y => n83);
   U102 : NOR2X1 port map( A => state_2_port, B => state_1_port, Y => n92);
   U103 : BUFX2 port map( A => state_0_port, Y => n16);

end SYN_behav;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_USB_RCVR.all;

entity eop_detect is

   port( D_PLUS, D_MINUS : in std_logic;  EOP : out std_logic);

end eop_detect;

architecture SYN_dflow of eop_detect is

   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;

begin
   
   U1 : NOR2X1 port map( A => D_PLUS, B => D_MINUS, Y => EOP);

end SYN_dflow;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_USB_RCVR.all;

entity edge_detect is

   port( CLK, RST_N, D_PLUS : in std_logic;  D_EDGE : out std_logic);

end edge_detect;

architecture SYN_behav of edge_detect is

   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal A, B, N0, n1, n2, n3 : std_logic;

begin
   
   A_reg : DFFSR port map( D => D_PLUS, CLK => CLK, R => n3, S => RST_N, Q => A
                           );
   B_reg : DFFSR port map( D => A, CLK => CLK, R => n2, S => RST_N, Q => B);
   D_EDGE_reg : DFFSR port map( D => N0, CLK => CLK, R => RST_N, S => n1, Q => 
                           D_EDGE);
   n1 <= '1';
   n2 <= '1';
   n3 <= '1';
   U6 : XOR2X1 port map( A => B, B => A, Y => N0);

end SYN_behav;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_USB_RCVR.all;

entity decode is

   port( CLK, RST_N, D_PLUS, SHIFT_ENABLE, EOP : in std_logic;  D_ORIG : out 
         std_logic);

end decode;

architecture SYN_behav of decode is

   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal A, B, n1, n2, n3, n4, n5, n6, n7, n8 : std_logic;

begin
   
   A_reg : DFFSR port map( D => n7, CLK => CLK, R => n3, S => RST_N, Q => A);
   B_reg : DFFSR port map( D => D_PLUS, CLK => CLK, R => n2, S => RST_N, Q => B
                           );
   D_ORIG_reg : DFFSR port map( D => n8, CLK => CLK, R => n1, S => RST_N, Q => 
                           D_ORIG);
   n1 <= '1';
   n2 <= '1';
   n3 <= '1';
   U6 : INVX2 port map( A => D_PLUS, Y => n4);
   U7 : INVX2 port map( A => SHIFT_ENABLE, Y => n5);
   U8 : OAI21X1 port map( A => n4, B => n5, C => n6, Y => n7);
   U9 : AOI21X1 port map( A => A, B => n5, C => EOP, Y => n6);
   U10 : XNOR2X1 port map( A => A, B => B, Y => n8);

end SYN_behav;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_USB_RCVR.all;

entity RCV_FIFO is

   port( CLK, RST_N, R_ENABLE, W_ENABLE : in std_logic;  WDATA : in 
         std_logic_vector (7 downto 0);  R_DATA : out std_logic_vector (7 
         downto 0);  EMPTY, FULL : out std_logic);

end RCV_FIFO;

architecture SYN_porting of RCV_FIFO is

   component fifo
      port( rclk, wclk, rst_n, renable, wenable : in std_logic;  wdata : in 
            std_logic_vector (7 downto 0);  rdata : out std_logic_vector (7 
            downto 0);  empty, full : out std_logic);
   end component;

begin
   
   FIFOMAP : fifo port map( rclk => CLK, wclk => CLK, rst_n => RST_N, renable 
                           => R_ENABLE, wenable => W_ENABLE, wdata(7) => 
                           WDATA(7), wdata(6) => WDATA(6), wdata(5) => WDATA(5)
                           , wdata(4) => WDATA(4), wdata(3) => WDATA(3), 
                           wdata(2) => WDATA(2), wdata(1) => WDATA(1), wdata(0)
                           => WDATA(0), rdata(7) => R_DATA(7), rdata(6) => 
                           R_DATA(6), rdata(5) => R_DATA(5), rdata(4) => 
                           R_DATA(4), rdata(3) => R_DATA(3), rdata(2) => 
                           R_DATA(2), rdata(1) => R_DATA(1), rdata(0) => 
                           R_DATA(0), empty => EMPTY, full => FULL);

end SYN_porting;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_USB_RCVR.all;

entity USB_RCVR is

   port( CLK, D_MINUS, D_PLUS, RST_N, R_ENABLE : in std_logic;  EMPTY, FULL, 
         RCVING : out std_logic;  R_DATA : out std_logic_vector (7 downto 0);  
         R_ERROR : out std_logic);

end USB_RCVR;

architecture SYN_struct of USB_RCVR is

   component timer
      port( CLK, RST_N, D_EDGE, RCVING : in std_logic;  SHIFT_ENABLE : out 
            std_logic);
   end component;
   
   component shift_reg
      port( CLK, RST_N, SHIFT_ENABLE, D_ORIG : in std_logic;  RCV_DATA : out 
            std_logic_vector (7 downto 0));
   end component;
   
   component rcu
      port( CLK, RST_N, D_EDGE, EOP, SHIFT_ENABLE : in std_logic;  RCV_DATA : 
            in std_logic_vector (7 downto 0);  RCVING, W_ENABLE, R_ERROR : out 
            std_logic);
   end component;
   
   component eop_detect
      port( D_PLUS, D_MINUS : in std_logic;  EOP : out std_logic);
   end component;
   
   component edge_detect
      port( CLK, RST_N, D_PLUS : in std_logic;  D_EDGE : out std_logic);
   end component;
   
   component decode
      port( CLK, RST_N, D_PLUS, SHIFT_ENABLE, EOP : in std_logic;  D_ORIG : out
            std_logic);
   end component;
   
   component RCV_FIFO
      port( CLK, RST_N, R_ENABLE, W_ENABLE : in std_logic;  WDATA : in 
            std_logic_vector (7 downto 0);  R_DATA : out std_logic_vector (7 
            downto 0);  EMPTY, FULL : out std_logic);
   end component;
   
   signal RCVING_port, RCV_DATA_7_port, RCV_DATA_6_port, RCV_DATA_5_port, 
      RCV_DATA_4_port, RCV_DATA_3_port, RCV_DATA_2_port, RCV_DATA_1_port, 
      RCV_DATA_0_port, W_ENABLE, EOP, SHIFT_ENABLE, D_ORIG, D_EDGE : std_logic;

begin
   RCVING <= RCVING_port;
   
   U_3 : RCV_FIFO port map( CLK => CLK, RST_N => RST_N, R_ENABLE => R_ENABLE, 
                           W_ENABLE => W_ENABLE, WDATA(7) => RCV_DATA_7_port, 
                           WDATA(6) => RCV_DATA_6_port, WDATA(5) => 
                           RCV_DATA_5_port, WDATA(4) => RCV_DATA_4_port, 
                           WDATA(3) => RCV_DATA_3_port, WDATA(2) => 
                           RCV_DATA_2_port, WDATA(1) => RCV_DATA_1_port, 
                           WDATA(0) => RCV_DATA_0_port, R_DATA(7) => R_DATA(7),
                           R_DATA(6) => R_DATA(6), R_DATA(5) => R_DATA(5), 
                           R_DATA(4) => R_DATA(4), R_DATA(3) => R_DATA(3), 
                           R_DATA(2) => R_DATA(2), R_DATA(1) => R_DATA(1), 
                           R_DATA(0) => R_DATA(0), EMPTY => EMPTY, FULL => FULL
                           );
   U_6 : decode port map( CLK => CLK, RST_N => RST_N, D_PLUS => D_PLUS, 
                           SHIFT_ENABLE => SHIFT_ENABLE, EOP => EOP, D_ORIG => 
                           D_ORIG);
   U_5 : edge_detect port map( CLK => CLK, RST_N => RST_N, D_PLUS => D_PLUS, 
                           D_EDGE => D_EDGE);
   U_4 : eop_detect port map( D_PLUS => D_PLUS, D_MINUS => D_MINUS, EOP => EOP)
                           ;
   U_2 : rcu port map( CLK => CLK, RST_N => RST_N, D_EDGE => D_EDGE, EOP => EOP
                           , SHIFT_ENABLE => SHIFT_ENABLE, RCV_DATA(7) => 
                           RCV_DATA_7_port, RCV_DATA(6) => RCV_DATA_6_port, 
                           RCV_DATA(5) => RCV_DATA_5_port, RCV_DATA(4) => 
                           RCV_DATA_4_port, RCV_DATA(3) => RCV_DATA_3_port, 
                           RCV_DATA(2) => RCV_DATA_2_port, RCV_DATA(1) => 
                           RCV_DATA_1_port, RCV_DATA(0) => RCV_DATA_0_port, 
                           RCVING => RCVING_port, W_ENABLE => W_ENABLE, R_ERROR
                           => R_ERROR);
   U_1 : shift_reg port map( CLK => CLK, RST_N => RST_N, SHIFT_ENABLE => 
                           SHIFT_ENABLE, D_ORIG => D_ORIG, RCV_DATA(7) => 
                           RCV_DATA_7_port, RCV_DATA(6) => RCV_DATA_6_port, 
                           RCV_DATA(5) => RCV_DATA_5_port, RCV_DATA(4) => 
                           RCV_DATA_4_port, RCV_DATA(3) => RCV_DATA_3_port, 
                           RCV_DATA(2) => RCV_DATA_2_port, RCV_DATA(1) => 
                           RCV_DATA_1_port, RCV_DATA(0) => RCV_DATA_0_port);
   U_0 : timer port map( CLK => CLK, RST_N => RST_N, D_EDGE => D_EDGE, RCVING 
                           => RCVING_port, SHIFT_ENABLE => SHIFT_ENABLE);

end SYN_struct;
