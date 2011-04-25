
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
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
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
   U11 : XOR2X1 port map( A => rptr_nxt_3_port, B => binary_nxt_2_port, Y => 
                           rptr_nxt_2_port);
   U12 : XNOR2X1 port map( A => n9, B => binary_r_3_port, Y => rptr_nxt_3_port)
                           ;
   U13 : NAND2X1 port map( A => binary_r_2_port, B => n10, Y => n9);
   U14 : XOR2X1 port map( A => binary_nxt_2_port, B => binary_nxt_1_port, Y => 
                           rptr_nxt_1_port);
   U15 : XOR2X1 port map( A => binary_nxt_1_port, B => binary_nxt_0_port, Y => 
                           rptr_nxt_0_port);
   U16 : XOR2X1 port map( A => n10, B => binary_r_2_port, Y => 
                           binary_nxt_2_port);
   U17 : INVX1 port map( A => n11, Y => n10);
   U18 : NAND3X1 port map( A => binary_r_1_port, B => binary_r_0_port, C => 
                           renable, Y => n11);
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
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
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
   U11 : XOR2X1 port map( A => wptr_nxt_3_port, B => binary_nxt_2_port, Y => 
                           wptr_nxt_2_port);
   U12 : XNOR2X1 port map( A => n9, B => binary_r_3_port, Y => wptr_nxt_3_port)
                           ;
   U13 : NAND2X1 port map( A => binary_r_2_port, B => n10, Y => n9);
   U14 : XOR2X1 port map( A => binary_nxt_2_port, B => binary_nxt_1_port, Y => 
                           wptr_nxt_1_port);
   U15 : XOR2X1 port map( A => binary_nxt_1_port, B => binary_nxt_0_port, Y => 
                           wptr_nxt_0_port);
   U16 : XOR2X1 port map( A => n10, B => binary_r_2_port, Y => 
                           binary_nxt_2_port);
   U17 : INVX1 port map( A => n11, Y => n10);
   U18 : NAND3X1 port map( A => binary_r_1_port, B => binary_r_0_port, C => 
                           wenable, Y => n11);
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
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component read_ptr
      port( rclk, rst_n, renable : in std_logic;  rptr, rptr_nxt : out 
            std_logic_vector (3 downto 0));
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal empty_flag_port, renable_p2, rptr_nxt_3_port, rptr_nxt_2_port, 
      rptr_nxt_1_port, rptr_nxt_0_port, rwptr_r2_3_port, rwptr_r2_2_port, 
      rwptr_r2_1_port, rwptr_r2_0_port, rwptr_r1_3_port, rwptr_r1_2_port, 
      rwptr_r1_1_port, rwptr_r1_0_port, gray_rptr_2_port, N3, n3_port, n4, n5, 
      n6, n7, n8, n9, n10, n11, n12, n13, n14, n1, n2, n15, n16, n17, n18, n19,
      n20 : std_logic;

begin
   empty_flag <= empty_flag_port;
   
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
   RPU1 : read_ptr port map( rclk => rclk, rst_n => rst_n, renable => 
                           renable_p2, rptr(3) => rptr(3), rptr(2) => rptr(2), 
                           rptr(1) => rptr(1), rptr(0) => rptr(0), rptr_nxt(3) 
                           => rptr_nxt_3_port, rptr_nxt(2) => rptr_nxt_2_port, 
                           rptr_nxt(1) => rptr_nxt_1_port, rptr_nxt(0) => 
                           rptr_nxt_0_port);
   U15 : NOR2X1 port map( A => empty_flag_port, B => n1, Y => renable_p2);
   U16 : INVX1 port map( A => renable, Y => n1);
   U17 : NOR2X1 port map( A => n2, B => n15, Y => N3);
   U18 : NAND2X1 port map( A => n16, B => n17, Y => n15);
   U19 : XOR2X1 port map( A => n18, B => gray_rptr_2_port, Y => n17);
   U20 : XOR2X1 port map( A => rptr_nxt_3_port, B => rptr_nxt_2_port, Y => 
                           gray_rptr_2_port);
   U21 : XNOR2X1 port map( A => rwptr_r2_3_port, B => rwptr_r2_2_port, Y => n18
                           );
   U22 : XNOR2X1 port map( A => rwptr_r2_1_port, B => rptr_nxt_1_port, Y => n16
                           );
   U23 : NAND2X1 port map( A => n19, B => n20, Y => n2);
   U24 : XNOR2X1 port map( A => rwptr_r2_0_port, B => rptr_nxt_0_port, Y => n20
                           );
   U25 : XNOR2X1 port map( A => rptr_nxt_3_port, B => rwptr_r2_3_port, Y => n19
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
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component write_ptr
      port( wclk, rst_n, wenable : in std_logic;  wptr, wptr_nxt : out 
            std_logic_vector (3 downto 0));
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal full_flag_port, wptr_nxt_3_port, wptr_nxt_2_port, wptr_nxt_1_port, 
      wptr_nxt_0_port, wrptr_r2_3_port, wrptr_r2_2_port, wrptr_r2_1_port, 
      wrptr_r2_0_port, wrptr_r1_3_port, wrptr_r1_2_port, wrptr_r1_1_port, 
      wrptr_r1_0_port, gray_wptr_2_port, N5, n3, n4, n5_port, n6, n7, n8, n9, 
      n10, n11, n12, n13, n14, n1, wenable_fifo_port, n15, n16, n17, n18, n19, 
      n20, n21, n22 : std_logic;

begin
   wenable_fifo <= wenable_fifo_port;
   full_flag <= full_flag_port;
   
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
   WPU1 : write_ptr port map( wclk => wclk, rst_n => rst_n, wenable => 
                           wenable_fifo_port, wptr(3) => wptr(3), wptr(2) => 
                           wptr(2), wptr(1) => wptr(1), wptr(0) => wptr(0), 
                           wptr_nxt(3) => wptr_nxt_3_port, wptr_nxt(2) => 
                           wptr_nxt_2_port, wptr_nxt(1) => wptr_nxt_1_port, 
                           wptr_nxt(0) => wptr_nxt_0_port);
   U15 : OR2X2 port map( A => full_flag_port, B => n15, Y => n1);
   U16 : INVX1 port map( A => n1, Y => wenable_fifo_port);
   U17 : INVX1 port map( A => wenable, Y => n15);
   U18 : NOR2X1 port map( A => n16, B => n17, Y => N5);
   U19 : NAND2X1 port map( A => n18, B => n19, Y => n17);
   U20 : XOR2X1 port map( A => n20, B => gray_wptr_2_port, Y => n19);
   U21 : XOR2X1 port map( A => wptr_nxt_3_port, B => wptr_nxt_2_port, Y => 
                           gray_wptr_2_port);
   U22 : XNOR2X1 port map( A => wrptr_r2_3_port, B => wrptr_r2_2_port, Y => n20
                           );
   U23 : XNOR2X1 port map( A => wrptr_r2_1_port, B => wptr_nxt_1_port, Y => n18
                           );
   U24 : NAND2X1 port map( A => n21, B => n22, Y => n16);
   U25 : XOR2X1 port map( A => wrptr_r2_3_port, B => wptr_nxt_3_port, Y => n22)
                           ;
   U26 : XNOR2X1 port map( A => wrptr_r2_0_port, B => wptr_nxt_0_port, Y => n21
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

   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component BUFX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
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
      fiforeg_7_0_port, n212, n213, n214, n215, n216, n217, n218, n219, n220, 
      n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, 
      n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, 
      n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, 
      n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, 
      n269, n270, n271, n272, n273, n274, n275, n1, n2, n3, n4, n5, n6, n7, n8,
      n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
      n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38
      , n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, 
      n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67
      , n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, 
      n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96
      , n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, 
      n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, 
      n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, 
      n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, 
      n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, 
      n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, 
      n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, 
      n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, 
      n193, n194, n195, n196, n197, n198, n199, n200, n201, n202 : std_logic;

begin
   
   fiforeg_reg_7_7_inst : DFFPOSX1 port map( D => n212, CLK => n8, Q => 
                           fiforeg_7_7_port);
   fiforeg_reg_6_7_inst : DFFPOSX1 port map( D => n213, CLK => n8, Q => 
                           fiforeg_6_7_port);
   fiforeg_reg_5_7_inst : DFFPOSX1 port map( D => n214, CLK => n8, Q => 
                           fiforeg_5_7_port);
   fiforeg_reg_4_7_inst : DFFPOSX1 port map( D => n215, CLK => n8, Q => 
                           fiforeg_4_7_port);
   fiforeg_reg_3_7_inst : DFFPOSX1 port map( D => n216, CLK => n8, Q => 
                           fiforeg_3_7_port);
   fiforeg_reg_2_7_inst : DFFPOSX1 port map( D => n217, CLK => n8, Q => 
                           fiforeg_2_7_port);
   fiforeg_reg_1_7_inst : DFFPOSX1 port map( D => n218, CLK => n8, Q => 
                           fiforeg_1_7_port);
   fiforeg_reg_0_7_inst : DFFPOSX1 port map( D => n219, CLK => n8, Q => 
                           fiforeg_0_7_port);
   fiforeg_reg_7_6_inst : DFFPOSX1 port map( D => n220, CLK => n9, Q => 
                           fiforeg_7_6_port);
   fiforeg_reg_6_6_inst : DFFPOSX1 port map( D => n221, CLK => n9, Q => 
                           fiforeg_6_6_port);
   fiforeg_reg_5_6_inst : DFFPOSX1 port map( D => n222, CLK => n9, Q => 
                           fiforeg_5_6_port);
   fiforeg_reg_4_6_inst : DFFPOSX1 port map( D => n223, CLK => n8, Q => 
                           fiforeg_4_6_port);
   fiforeg_reg_3_6_inst : DFFPOSX1 port map( D => n224, CLK => n8, Q => 
                           fiforeg_3_6_port);
   fiforeg_reg_2_6_inst : DFFPOSX1 port map( D => n225, CLK => n8, Q => 
                           fiforeg_2_6_port);
   fiforeg_reg_1_6_inst : DFFPOSX1 port map( D => n226, CLK => n8, Q => 
                           fiforeg_1_6_port);
   fiforeg_reg_0_6_inst : DFFPOSX1 port map( D => n227, CLK => n8, Q => 
                           fiforeg_0_6_port);
   fiforeg_reg_7_5_inst : DFFPOSX1 port map( D => n228, CLK => n9, Q => 
                           fiforeg_7_5_port);
   fiforeg_reg_6_5_inst : DFFPOSX1 port map( D => n229, CLK => n9, Q => 
                           fiforeg_6_5_port);
   fiforeg_reg_5_5_inst : DFFPOSX1 port map( D => n230, CLK => n9, Q => 
                           fiforeg_5_5_port);
   fiforeg_reg_4_5_inst : DFFPOSX1 port map( D => n231, CLK => n9, Q => 
                           fiforeg_4_5_port);
   fiforeg_reg_3_5_inst : DFFPOSX1 port map( D => n232, CLK => n9, Q => 
                           fiforeg_3_5_port);
   fiforeg_reg_2_5_inst : DFFPOSX1 port map( D => n233, CLK => n9, Q => 
                           fiforeg_2_5_port);
   fiforeg_reg_1_5_inst : DFFPOSX1 port map( D => n234, CLK => n9, Q => 
                           fiforeg_1_5_port);
   fiforeg_reg_0_5_inst : DFFPOSX1 port map( D => n235, CLK => n9, Q => 
                           fiforeg_0_5_port);
   fiforeg_reg_7_4_inst : DFFPOSX1 port map( D => n236, CLK => n10, Q => 
                           fiforeg_7_4_port);
   fiforeg_reg_6_4_inst : DFFPOSX1 port map( D => n237, CLK => n10, Q => 
                           fiforeg_6_4_port);
   fiforeg_reg_5_4_inst : DFFPOSX1 port map( D => n238, CLK => n10, Q => 
                           fiforeg_5_4_port);
   fiforeg_reg_4_4_inst : DFFPOSX1 port map( D => n239, CLK => n10, Q => 
                           fiforeg_4_4_port);
   fiforeg_reg_3_4_inst : DFFPOSX1 port map( D => n240, CLK => n10, Q => 
                           fiforeg_3_4_port);
   fiforeg_reg_2_4_inst : DFFPOSX1 port map( D => n241, CLK => n10, Q => 
                           fiforeg_2_4_port);
   fiforeg_reg_1_4_inst : DFFPOSX1 port map( D => n242, CLK => n9, Q => 
                           fiforeg_1_4_port);
   fiforeg_reg_0_4_inst : DFFPOSX1 port map( D => n243, CLK => n9, Q => 
                           fiforeg_0_4_port);
   fiforeg_reg_7_3_inst : DFFPOSX1 port map( D => n244, CLK => n11, Q => 
                           fiforeg_7_3_port);
   fiforeg_reg_6_3_inst : DFFPOSX1 port map( D => n245, CLK => n10, Q => 
                           fiforeg_6_3_port);
   fiforeg_reg_5_3_inst : DFFPOSX1 port map( D => n246, CLK => n10, Q => 
                           fiforeg_5_3_port);
   fiforeg_reg_4_3_inst : DFFPOSX1 port map( D => n247, CLK => n10, Q => 
                           fiforeg_4_3_port);
   fiforeg_reg_3_3_inst : DFFPOSX1 port map( D => n248, CLK => n10, Q => 
                           fiforeg_3_3_port);
   fiforeg_reg_2_3_inst : DFFPOSX1 port map( D => n249, CLK => n10, Q => 
                           fiforeg_2_3_port);
   fiforeg_reg_1_3_inst : DFFPOSX1 port map( D => n250, CLK => n10, Q => 
                           fiforeg_1_3_port);
   fiforeg_reg_0_3_inst : DFFPOSX1 port map( D => n251, CLK => n10, Q => 
                           fiforeg_0_3_port);
   fiforeg_reg_7_2_inst : DFFPOSX1 port map( D => n252, CLK => n11, Q => 
                           fiforeg_7_2_port);
   fiforeg_reg_6_2_inst : DFFPOSX1 port map( D => n253, CLK => n11, Q => 
                           fiforeg_6_2_port);
   fiforeg_reg_5_2_inst : DFFPOSX1 port map( D => n254, CLK => n11, Q => 
                           fiforeg_5_2_port);
   fiforeg_reg_4_2_inst : DFFPOSX1 port map( D => n255, CLK => n11, Q => 
                           fiforeg_4_2_port);
   fiforeg_reg_3_2_inst : DFFPOSX1 port map( D => n256, CLK => n11, Q => 
                           fiforeg_3_2_port);
   fiforeg_reg_2_2_inst : DFFPOSX1 port map( D => n257, CLK => n11, Q => 
                           fiforeg_2_2_port);
   fiforeg_reg_1_2_inst : DFFPOSX1 port map( D => n258, CLK => n11, Q => 
                           fiforeg_1_2_port);
   fiforeg_reg_0_2_inst : DFFPOSX1 port map( D => n259, CLK => n11, Q => 
                           fiforeg_0_2_port);
   fiforeg_reg_7_1_inst : DFFPOSX1 port map( D => n260, CLK => n12, Q => 
                           fiforeg_7_1_port);
   fiforeg_reg_6_1_inst : DFFPOSX1 port map( D => n261, CLK => n12, Q => 
                           fiforeg_6_1_port);
   fiforeg_reg_5_1_inst : DFFPOSX1 port map( D => n262, CLK => n12, Q => 
                           fiforeg_5_1_port);
   fiforeg_reg_4_1_inst : DFFPOSX1 port map( D => n263, CLK => n12, Q => 
                           fiforeg_4_1_port);
   fiforeg_reg_3_1_inst : DFFPOSX1 port map( D => n264, CLK => n11, Q => 
                           fiforeg_3_1_port);
   fiforeg_reg_2_1_inst : DFFPOSX1 port map( D => n265, CLK => n11, Q => 
                           fiforeg_2_1_port);
   fiforeg_reg_1_1_inst : DFFPOSX1 port map( D => n266, CLK => n11, Q => 
                           fiforeg_1_1_port);
   fiforeg_reg_0_1_inst : DFFPOSX1 port map( D => n267, CLK => n11, Q => 
                           fiforeg_0_1_port);
   fiforeg_reg_7_0_inst : DFFPOSX1 port map( D => n275, CLK => n12, Q => 
                           fiforeg_7_0_port);
   fiforeg_reg_6_0_inst : DFFPOSX1 port map( D => n268, CLK => n12, Q => 
                           fiforeg_6_0_port);
   fiforeg_reg_5_0_inst : DFFPOSX1 port map( D => n269, CLK => n12, Q => 
                           fiforeg_5_0_port);
   fiforeg_reg_4_0_inst : DFFPOSX1 port map( D => n270, CLK => n12, Q => 
                           fiforeg_4_0_port);
   fiforeg_reg_3_0_inst : DFFPOSX1 port map( D => n271, CLK => n12, Q => 
                           fiforeg_3_0_port);
   fiforeg_reg_2_0_inst : DFFPOSX1 port map( D => n272, CLK => n12, Q => 
                           fiforeg_2_0_port);
   fiforeg_reg_1_0_inst : DFFPOSX1 port map( D => n273, CLK => n12, Q => 
                           fiforeg_1_0_port);
   fiforeg_reg_0_0_inst : DFFPOSX1 port map( D => n274, CLK => n12, Q => 
                           fiforeg_0_0_port);
   U2 : INVX1 port map( A => n104, Y => n1);
   U3 : INVX2 port map( A => n1, Y => n2);
   U4 : INVX1 port map( A => n106, Y => n3);
   U5 : INVX2 port map( A => n3, Y => n4);
   U6 : INVX1 port map( A => n105, Y => n5);
   U7 : INVX2 port map( A => n5, Y => n6);
   U8 : BUFX2 port map( A => n103, Y => n7);
   U9 : BUFX2 port map( A => wclk, Y => n11);
   U10 : BUFX2 port map( A => wclk, Y => n10);
   U11 : BUFX2 port map( A => wclk, Y => n9);
   U12 : BUFX2 port map( A => wclk, Y => n8);
   U13 : BUFX2 port map( A => wclk, Y => n12);
   U14 : NAND3X1 port map( A => n13, B => n14, C => n15, Y => rdata(7));
   U15 : NOR2X1 port map( A => n16, B => n17, Y => n15);
   U16 : OAI22X1 port map( A => n18, B => n19, C => n20, D => n21, Y => n17);
   U17 : OAI22X1 port map( A => n22, B => n23, C => n24, D => n25, Y => n16);
   U18 : AOI22X1 port map( A => fiforeg_5_7_port, B => n26, C => 
                           fiforeg_4_7_port, D => n27, Y => n14);
   U19 : AOI22X1 port map( A => fiforeg_7_7_port, B => n28, C => 
                           fiforeg_6_7_port, D => n29, Y => n13);
   U20 : NAND3X1 port map( A => n30, B => n31, C => n32, Y => rdata(6));
   U21 : NOR2X1 port map( A => n33, B => n34, Y => n32);
   U22 : OAI22X1 port map( A => n18, B => n35, C => n20, D => n36, Y => n34);
   U23 : OAI22X1 port map( A => n22, B => n37, C => n24, D => n38, Y => n33);
   U24 : AOI22X1 port map( A => fiforeg_5_6_port, B => n26, C => 
                           fiforeg_4_6_port, D => n27, Y => n31);
   U25 : AOI22X1 port map( A => fiforeg_7_6_port, B => n28, C => 
                           fiforeg_6_6_port, D => n29, Y => n30);
   U26 : NAND3X1 port map( A => n39, B => n40, C => n41, Y => rdata(5));
   U27 : NOR2X1 port map( A => n42, B => n43, Y => n41);
   U28 : OAI22X1 port map( A => n18, B => n44, C => n20, D => n45, Y => n43);
   U29 : OAI22X1 port map( A => n22, B => n46, C => n24, D => n47, Y => n42);
   U30 : AOI22X1 port map( A => fiforeg_5_5_port, B => n26, C => 
                           fiforeg_4_5_port, D => n27, Y => n40);
   U31 : AOI22X1 port map( A => fiforeg_7_5_port, B => n28, C => 
                           fiforeg_6_5_port, D => n29, Y => n39);
   U32 : NAND3X1 port map( A => n48, B => n49, C => n50, Y => rdata(4));
   U33 : NOR2X1 port map( A => n51, B => n52, Y => n50);
   U34 : OAI22X1 port map( A => n18, B => n53, C => n20, D => n54, Y => n52);
   U35 : OAI22X1 port map( A => n22, B => n55, C => n24, D => n56, Y => n51);
   U36 : AOI22X1 port map( A => fiforeg_5_4_port, B => n26, C => 
                           fiforeg_4_4_port, D => n27, Y => n49);
   U37 : AOI22X1 port map( A => fiforeg_7_4_port, B => n28, C => 
                           fiforeg_6_4_port, D => n29, Y => n48);
   U38 : NAND3X1 port map( A => n57, B => n58, C => n59, Y => rdata(3));
   U39 : NOR2X1 port map( A => n60, B => n61, Y => n59);
   U40 : OAI22X1 port map( A => n18, B => n62, C => n20, D => n63, Y => n61);
   U41 : OAI22X1 port map( A => n22, B => n64, C => n24, D => n65, Y => n60);
   U42 : AOI22X1 port map( A => fiforeg_5_3_port, B => n26, C => 
                           fiforeg_4_3_port, D => n27, Y => n58);
   U43 : AOI22X1 port map( A => fiforeg_7_3_port, B => n28, C => 
                           fiforeg_6_3_port, D => n29, Y => n57);
   U44 : NAND3X1 port map( A => n66, B => n67, C => n68, Y => rdata(2));
   U45 : NOR2X1 port map( A => n69, B => n70, Y => n68);
   U46 : OAI22X1 port map( A => n18, B => n71, C => n20, D => n72, Y => n70);
   U47 : OAI22X1 port map( A => n22, B => n73, C => n24, D => n74, Y => n69);
   U48 : AOI22X1 port map( A => fiforeg_5_2_port, B => n26, C => 
                           fiforeg_4_2_port, D => n27, Y => n67);
   U49 : AOI22X1 port map( A => fiforeg_7_2_port, B => n28, C => 
                           fiforeg_6_2_port, D => n29, Y => n66);
   U50 : NAND3X1 port map( A => n75, B => n76, C => n77, Y => rdata(1));
   U51 : NOR2X1 port map( A => n78, B => n79, Y => n77);
   U52 : OAI22X1 port map( A => n18, B => n80, C => n20, D => n81, Y => n79);
   U53 : OAI22X1 port map( A => n22, B => n82, C => n24, D => n83, Y => n78);
   U54 : AOI22X1 port map( A => fiforeg_5_1_port, B => n26, C => 
                           fiforeg_4_1_port, D => n27, Y => n76);
   U55 : AOI22X1 port map( A => fiforeg_7_1_port, B => n28, C => 
                           fiforeg_6_1_port, D => n29, Y => n75);
   U56 : NAND3X1 port map( A => n84, B => n85, C => n86, Y => rdata(0));
   U57 : NOR2X1 port map( A => n87, B => n88, Y => n86);
   U58 : OAI22X1 port map( A => n18, B => n89, C => n20, D => n90, Y => n88);
   U59 : NAND3X1 port map( A => n91, B => n92, C => n93, Y => n20);
   U60 : NAND3X1 port map( A => n91, B => n92, C => raddr(0), Y => n18);
   U61 : OAI22X1 port map( A => n22, B => n94, C => n24, D => n95, Y => n87);
   U62 : NAND3X1 port map( A => n93, B => n92, C => raddr(1), Y => n24);
   U63 : NAND3X1 port map( A => raddr(0), B => n92, C => raddr(1), Y => n22);
   U64 : INVX1 port map( A => raddr(2), Y => n92);
   U65 : AOI22X1 port map( A => fiforeg_5_0_port, B => n26, C => 
                           fiforeg_4_0_port, D => n27, Y => n85);
   U66 : INVX1 port map( A => n96, Y => n27);
   U67 : NAND3X1 port map( A => n93, B => n91, C => raddr(2), Y => n96);
   U68 : INVX1 port map( A => n97, Y => n26);
   U69 : NAND3X1 port map( A => raddr(0), B => n91, C => raddr(2), Y => n97);
   U70 : INVX1 port map( A => raddr(1), Y => n91);
   U71 : AOI22X1 port map( A => fiforeg_7_0_port, B => n28, C => 
                           fiforeg_6_0_port, D => n29, Y => n84);
   U72 : INVX1 port map( A => n98, Y => n29);
   U73 : NAND3X1 port map( A => raddr(2), B => n93, C => raddr(1), Y => n98);
   U74 : INVX1 port map( A => raddr(0), Y => n93);
   U75 : INVX1 port map( A => n99, Y => n28);
   U76 : NAND3X1 port map( A => raddr(2), B => raddr(0), C => raddr(1), Y => 
                           n99);
   U77 : MUX2X1 port map( B => n100, A => n101, S => n102, Y => n275);
   U78 : INVX1 port map( A => fiforeg_7_0_port, Y => n101);
   U79 : MUX2X1 port map( B => n100, A => n90, S => n7, Y => n274);
   U80 : MUX2X1 port map( B => n100, A => n89, S => n2, Y => n273);
   U81 : MUX2X1 port map( B => n100, A => n95, S => n6, Y => n272);
   U82 : MUX2X1 port map( B => n100, A => n94, S => n4, Y => n271);
   U83 : MUX2X1 port map( B => n100, A => n107, S => n108, Y => n270);
   U84 : INVX1 port map( A => fiforeg_4_0_port, Y => n107);
   U85 : MUX2X1 port map( B => n100, A => n109, S => n110, Y => n269);
   U86 : INVX1 port map( A => fiforeg_5_0_port, Y => n109);
   U87 : MUX2X1 port map( B => n100, A => n111, S => n112, Y => n268);
   U88 : INVX1 port map( A => fiforeg_6_0_port, Y => n111);
   U89 : MUX2X1 port map( B => n113, A => wdata(0), S => wenable, Y => n100);
   U90 : NAND3X1 port map( A => n114, B => n115, C => n116, Y => n113);
   U91 : NOR2X1 port map( A => n117, B => n118, Y => n116);
   U92 : OAI22X1 port map( A => n89, B => n2, C => n90, D => n7, Y => n118);
   U93 : INVX1 port map( A => fiforeg_0_0_port, Y => n90);
   U94 : INVX1 port map( A => fiforeg_1_0_port, Y => n89);
   U95 : OAI22X1 port map( A => n94, B => n4, C => n95, D => n6, Y => n117);
   U96 : INVX1 port map( A => fiforeg_2_0_port, Y => n95);
   U97 : INVX1 port map( A => fiforeg_3_0_port, Y => n94);
   U98 : AOI22X1 port map( A => n119, B => fiforeg_6_0_port, C => n120, D => 
                           fiforeg_4_0_port, Y => n115);
   U99 : AOI22X1 port map( A => n121, B => fiforeg_5_0_port, C => n122, D => 
                           fiforeg_7_0_port, Y => n114);
   U100 : MUX2X1 port map( B => n123, A => n81, S => n7, Y => n267);
   U101 : MUX2X1 port map( B => n123, A => n80, S => n2, Y => n266);
   U102 : MUX2X1 port map( B => n123, A => n83, S => n6, Y => n265);
   U103 : MUX2X1 port map( B => n123, A => n82, S => n4, Y => n264);
   U104 : MUX2X1 port map( B => n123, A => n124, S => n108, Y => n263);
   U105 : INVX1 port map( A => fiforeg_4_1_port, Y => n124);
   U106 : MUX2X1 port map( B => n123, A => n125, S => n110, Y => n262);
   U107 : INVX1 port map( A => fiforeg_5_1_port, Y => n125);
   U108 : MUX2X1 port map( B => n123, A => n126, S => n112, Y => n261);
   U109 : INVX1 port map( A => fiforeg_6_1_port, Y => n126);
   U110 : MUX2X1 port map( B => n123, A => n127, S => n102, Y => n260);
   U111 : INVX1 port map( A => fiforeg_7_1_port, Y => n127);
   U112 : MUX2X1 port map( B => n128, A => wdata(1), S => wenable, Y => n123);
   U113 : NAND3X1 port map( A => n129, B => n130, C => n131, Y => n128);
   U114 : NOR2X1 port map( A => n132, B => n133, Y => n131);
   U115 : OAI22X1 port map( A => n80, B => n2, C => n81, D => n7, Y => n133);
   U116 : INVX1 port map( A => fiforeg_0_1_port, Y => n81);
   U117 : INVX1 port map( A => fiforeg_1_1_port, Y => n80);
   U118 : OAI22X1 port map( A => n82, B => n4, C => n83, D => n6, Y => n132);
   U119 : INVX1 port map( A => fiforeg_2_1_port, Y => n83);
   U120 : INVX1 port map( A => fiforeg_3_1_port, Y => n82);
   U121 : AOI22X1 port map( A => n119, B => fiforeg_6_1_port, C => n120, D => 
                           fiforeg_4_1_port, Y => n130);
   U122 : AOI22X1 port map( A => n121, B => fiforeg_5_1_port, C => n122, D => 
                           fiforeg_7_1_port, Y => n129);
   U123 : MUX2X1 port map( B => n134, A => n72, S => n7, Y => n259);
   U124 : MUX2X1 port map( B => n134, A => n71, S => n2, Y => n258);
   U125 : MUX2X1 port map( B => n134, A => n74, S => n6, Y => n257);
   U126 : MUX2X1 port map( B => n134, A => n73, S => n4, Y => n256);
   U127 : MUX2X1 port map( B => n134, A => n135, S => n108, Y => n255);
   U128 : INVX1 port map( A => fiforeg_4_2_port, Y => n135);
   U129 : MUX2X1 port map( B => n134, A => n136, S => n110, Y => n254);
   U130 : INVX1 port map( A => fiforeg_5_2_port, Y => n136);
   U131 : MUX2X1 port map( B => n134, A => n137, S => n112, Y => n253);
   U132 : INVX1 port map( A => fiforeg_6_2_port, Y => n137);
   U133 : MUX2X1 port map( B => n134, A => n138, S => n102, Y => n252);
   U134 : INVX1 port map( A => fiforeg_7_2_port, Y => n138);
   U135 : MUX2X1 port map( B => n139, A => wdata(2), S => wenable, Y => n134);
   U136 : NAND3X1 port map( A => n140, B => n141, C => n142, Y => n139);
   U137 : NOR2X1 port map( A => n143, B => n144, Y => n142);
   U138 : OAI22X1 port map( A => n71, B => n2, C => n72, D => n7, Y => n144);
   U139 : INVX1 port map( A => fiforeg_0_2_port, Y => n72);
   U140 : INVX1 port map( A => fiforeg_1_2_port, Y => n71);
   U141 : OAI22X1 port map( A => n73, B => n4, C => n74, D => n6, Y => n143);
   U142 : INVX1 port map( A => fiforeg_2_2_port, Y => n74);
   U143 : INVX1 port map( A => fiforeg_3_2_port, Y => n73);
   U144 : AOI22X1 port map( A => n119, B => fiforeg_6_2_port, C => n120, D => 
                           fiforeg_4_2_port, Y => n141);
   U145 : AOI22X1 port map( A => n121, B => fiforeg_5_2_port, C => n122, D => 
                           fiforeg_7_2_port, Y => n140);
   U146 : MUX2X1 port map( B => n145, A => n63, S => n7, Y => n251);
   U147 : MUX2X1 port map( B => n145, A => n62, S => n2, Y => n250);
   U148 : MUX2X1 port map( B => n145, A => n65, S => n6, Y => n249);
   U149 : MUX2X1 port map( B => n145, A => n64, S => n4, Y => n248);
   U150 : MUX2X1 port map( B => n145, A => n146, S => n108, Y => n247);
   U151 : INVX1 port map( A => fiforeg_4_3_port, Y => n146);
   U152 : MUX2X1 port map( B => n145, A => n147, S => n110, Y => n246);
   U153 : INVX1 port map( A => fiforeg_5_3_port, Y => n147);
   U154 : MUX2X1 port map( B => n145, A => n148, S => n112, Y => n245);
   U155 : INVX1 port map( A => fiforeg_6_3_port, Y => n148);
   U156 : MUX2X1 port map( B => n145, A => n149, S => n102, Y => n244);
   U157 : INVX1 port map( A => fiforeg_7_3_port, Y => n149);
   U158 : MUX2X1 port map( B => n150, A => wdata(3), S => wenable, Y => n145);
   U159 : NAND3X1 port map( A => n151, B => n152, C => n153, Y => n150);
   U160 : NOR2X1 port map( A => n154, B => n155, Y => n153);
   U161 : OAI22X1 port map( A => n62, B => n2, C => n63, D => n7, Y => n155);
   U162 : INVX1 port map( A => fiforeg_0_3_port, Y => n63);
   U163 : INVX1 port map( A => fiforeg_1_3_port, Y => n62);
   U164 : OAI22X1 port map( A => n64, B => n4, C => n65, D => n6, Y => n154);
   U165 : INVX1 port map( A => fiforeg_2_3_port, Y => n65);
   U166 : INVX1 port map( A => fiforeg_3_3_port, Y => n64);
   U167 : AOI22X1 port map( A => n119, B => fiforeg_6_3_port, C => n120, D => 
                           fiforeg_4_3_port, Y => n152);
   U168 : AOI22X1 port map( A => n121, B => fiforeg_5_3_port, C => n122, D => 
                           fiforeg_7_3_port, Y => n151);
   U169 : MUX2X1 port map( B => n156, A => n54, S => n7, Y => n243);
   U170 : MUX2X1 port map( B => n156, A => n53, S => n2, Y => n242);
   U171 : MUX2X1 port map( B => n156, A => n56, S => n6, Y => n241);
   U172 : MUX2X1 port map( B => n156, A => n55, S => n4, Y => n240);
   U173 : MUX2X1 port map( B => n156, A => n157, S => n108, Y => n239);
   U174 : INVX1 port map( A => fiforeg_4_4_port, Y => n157);
   U175 : MUX2X1 port map( B => n156, A => n158, S => n110, Y => n238);
   U176 : INVX1 port map( A => fiforeg_5_4_port, Y => n158);
   U177 : MUX2X1 port map( B => n156, A => n159, S => n112, Y => n237);
   U178 : INVX1 port map( A => fiforeg_6_4_port, Y => n159);
   U179 : MUX2X1 port map( B => n156, A => n160, S => n102, Y => n236);
   U180 : INVX1 port map( A => fiforeg_7_4_port, Y => n160);
   U181 : MUX2X1 port map( B => n161, A => wdata(4), S => wenable, Y => n156);
   U182 : NAND3X1 port map( A => n162, B => n163, C => n164, Y => n161);
   U183 : NOR2X1 port map( A => n165, B => n166, Y => n164);
   U184 : OAI22X1 port map( A => n53, B => n2, C => n54, D => n7, Y => n166);
   U185 : INVX1 port map( A => fiforeg_0_4_port, Y => n54);
   U186 : INVX1 port map( A => fiforeg_1_4_port, Y => n53);
   U187 : OAI22X1 port map( A => n55, B => n4, C => n56, D => n6, Y => n165);
   U188 : INVX1 port map( A => fiforeg_2_4_port, Y => n56);
   U189 : INVX1 port map( A => fiforeg_3_4_port, Y => n55);
   U190 : AOI22X1 port map( A => n119, B => fiforeg_6_4_port, C => n120, D => 
                           fiforeg_4_4_port, Y => n163);
   U191 : AOI22X1 port map( A => n121, B => fiforeg_5_4_port, C => n122, D => 
                           fiforeg_7_4_port, Y => n162);
   U192 : MUX2X1 port map( B => n167, A => n45, S => n7, Y => n235);
   U193 : MUX2X1 port map( B => n167, A => n44, S => n2, Y => n234);
   U194 : MUX2X1 port map( B => n167, A => n47, S => n6, Y => n233);
   U195 : MUX2X1 port map( B => n167, A => n46, S => n4, Y => n232);
   U196 : MUX2X1 port map( B => n167, A => n168, S => n108, Y => n231);
   U197 : INVX1 port map( A => fiforeg_4_5_port, Y => n168);
   U198 : MUX2X1 port map( B => n167, A => n169, S => n110, Y => n230);
   U199 : INVX1 port map( A => fiforeg_5_5_port, Y => n169);
   U200 : MUX2X1 port map( B => n167, A => n170, S => n112, Y => n229);
   U201 : INVX1 port map( A => fiforeg_6_5_port, Y => n170);
   U202 : MUX2X1 port map( B => n167, A => n171, S => n102, Y => n228);
   U203 : INVX1 port map( A => fiforeg_7_5_port, Y => n171);
   U204 : MUX2X1 port map( B => n172, A => wdata(5), S => wenable, Y => n167);
   U205 : NAND3X1 port map( A => n173, B => n174, C => n175, Y => n172);
   U206 : NOR2X1 port map( A => n176, B => n177, Y => n175);
   U207 : OAI22X1 port map( A => n44, B => n2, C => n45, D => n7, Y => n177);
   U208 : INVX1 port map( A => fiforeg_0_5_port, Y => n45);
   U209 : INVX1 port map( A => fiforeg_1_5_port, Y => n44);
   U210 : OAI22X1 port map( A => n46, B => n4, C => n47, D => n6, Y => n176);
   U211 : INVX1 port map( A => fiforeg_2_5_port, Y => n47);
   U212 : INVX1 port map( A => fiforeg_3_5_port, Y => n46);
   U213 : AOI22X1 port map( A => n119, B => fiforeg_6_5_port, C => n120, D => 
                           fiforeg_4_5_port, Y => n174);
   U214 : AOI22X1 port map( A => n121, B => fiforeg_5_5_port, C => n122, D => 
                           fiforeg_7_5_port, Y => n173);
   U215 : MUX2X1 port map( B => n178, A => n36, S => n7, Y => n227);
   U216 : MUX2X1 port map( B => n178, A => n35, S => n2, Y => n226);
   U217 : MUX2X1 port map( B => n178, A => n38, S => n6, Y => n225);
   U218 : MUX2X1 port map( B => n178, A => n37, S => n4, Y => n224);
   U219 : MUX2X1 port map( B => n178, A => n179, S => n108, Y => n223);
   U220 : INVX1 port map( A => fiforeg_4_6_port, Y => n179);
   U221 : MUX2X1 port map( B => n178, A => n180, S => n110, Y => n222);
   U222 : INVX1 port map( A => fiforeg_5_6_port, Y => n180);
   U223 : MUX2X1 port map( B => n178, A => n181, S => n112, Y => n221);
   U224 : INVX1 port map( A => fiforeg_6_6_port, Y => n181);
   U225 : MUX2X1 port map( B => n178, A => n182, S => n102, Y => n220);
   U226 : INVX1 port map( A => fiforeg_7_6_port, Y => n182);
   U227 : MUX2X1 port map( B => n183, A => wdata(6), S => wenable, Y => n178);
   U228 : NAND3X1 port map( A => n184, B => n185, C => n186, Y => n183);
   U229 : NOR2X1 port map( A => n187, B => n188, Y => n186);
   U230 : OAI22X1 port map( A => n35, B => n2, C => n36, D => n7, Y => n188);
   U231 : INVX1 port map( A => fiforeg_0_6_port, Y => n36);
   U232 : INVX1 port map( A => fiforeg_1_6_port, Y => n35);
   U233 : OAI22X1 port map( A => n37, B => n4, C => n38, D => n6, Y => n187);
   U234 : INVX1 port map( A => fiforeg_2_6_port, Y => n38);
   U235 : INVX1 port map( A => fiforeg_3_6_port, Y => n37);
   U236 : AOI22X1 port map( A => n119, B => fiforeg_6_6_port, C => n120, D => 
                           fiforeg_4_6_port, Y => n185);
   U237 : AOI22X1 port map( A => n121, B => fiforeg_5_6_port, C => n122, D => 
                           fiforeg_7_6_port, Y => n184);
   U238 : MUX2X1 port map( B => n189, A => n21, S => n7, Y => n219);
   U239 : MUX2X1 port map( B => n189, A => n19, S => n2, Y => n218);
   U240 : MUX2X1 port map( B => n189, A => n25, S => n6, Y => n217);
   U241 : MUX2X1 port map( B => n189, A => n23, S => n4, Y => n216);
   U242 : MUX2X1 port map( B => n189, A => n190, S => n108, Y => n215);
   U243 : INVX1 port map( A => fiforeg_4_7_port, Y => n190);
   U244 : MUX2X1 port map( B => n189, A => n191, S => n110, Y => n214);
   U245 : INVX1 port map( A => fiforeg_5_7_port, Y => n191);
   U246 : MUX2X1 port map( B => n189, A => n192, S => n112, Y => n213);
   U247 : INVX1 port map( A => fiforeg_6_7_port, Y => n192);
   U248 : MUX2X1 port map( B => n189, A => n193, S => n102, Y => n212);
   U249 : INVX1 port map( A => fiforeg_7_7_port, Y => n193);
   U250 : MUX2X1 port map( B => n194, A => wdata(7), S => wenable, Y => n189);
   U251 : NAND3X1 port map( A => n195, B => n196, C => n197, Y => n194);
   U252 : NOR2X1 port map( A => n198, B => n199, Y => n197);
   U253 : OAI22X1 port map( A => n19, B => n2, C => n21, D => n7, Y => n199);
   U254 : NAND3X1 port map( A => n200, B => n201, C => n202, Y => n103);
   U255 : INVX1 port map( A => fiforeg_0_7_port, Y => n21);
   U256 : NAND3X1 port map( A => n200, B => n201, C => waddr(0), Y => n104);
   U257 : INVX1 port map( A => fiforeg_1_7_port, Y => n19);
   U258 : OAI22X1 port map( A => n23, B => n4, C => n25, D => n6, Y => n198);
   U259 : NAND3X1 port map( A => n202, B => n201, C => waddr(1), Y => n105);
   U260 : INVX1 port map( A => fiforeg_2_7_port, Y => n25);
   U261 : NAND3X1 port map( A => waddr(0), B => n201, C => waddr(1), Y => n106)
                           ;
   U262 : INVX1 port map( A => waddr(2), Y => n201);
   U263 : INVX1 port map( A => fiforeg_3_7_port, Y => n23);
   U264 : AOI22X1 port map( A => n119, B => fiforeg_6_7_port, C => n120, D => 
                           fiforeg_4_7_port, Y => n196);
   U265 : INVX1 port map( A => n108, Y => n120);
   U266 : NAND3X1 port map( A => n202, B => n200, C => waddr(2), Y => n108);
   U267 : INVX1 port map( A => n112, Y => n119);
   U268 : NAND3X1 port map( A => waddr(1), B => n202, C => waddr(2), Y => n112)
                           ;
   U269 : INVX1 port map( A => waddr(0), Y => n202);
   U270 : AOI22X1 port map( A => n121, B => fiforeg_5_7_port, C => n122, D => 
                           fiforeg_7_7_port, Y => n195);
   U271 : INVX1 port map( A => n102, Y => n122);
   U272 : NAND3X1 port map( A => waddr(1), B => waddr(0), C => waddr(2), Y => 
                           n102);
   U273 : INVX1 port map( A => n110, Y => n121);
   U274 : NAND3X1 port map( A => waddr(0), B => n200, C => waddr(2), Y => n110)
                           ;
   U275 : INVX1 port map( A => waddr(1), Y => n200);

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

entity U_TIMER is

   port( D_CLK, RST_N, D_EDGE, RCVING : in std_logic;  SHIFT_ENABLE : out 
         std_logic);

end U_TIMER;

architecture SYN_behavioral of U_TIMER is

   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component BUFX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal state_2_port, state_1_port, state_0_port, nextstate_2_port, 
      nextstate_1_port, nextstate_0_port, ctr2_3_port, ctr2_2_port, ctr2_1_port
      , ctr2_0_port, ctr8_3_port, ctr8_2_port, ctr8_1_port, ctr8_0_port, n1, n2
      , n3, n4, n5, n6, n7, n8, n9, n10, n12, n35, n62, n63, n64, n65, n66, n67
      , n68, n69, n11, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, 
      n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n36, n37, n38, n39
      , n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, 
      n54 : std_logic;

begin
   
   state_reg_2_inst : DFFSR port map( D => nextstate_2_port, CLK => D_CLK, R =>
                           n54, S => n12, Q => state_2_port);
   ctr8_reg_0_inst : DFFSR port map( D => n69, CLK => D_CLK, R => n11, S => n10
                           , Q => ctr8_0_port);
   ctr8_reg_3_inst : DFFSR port map( D => n68, CLK => D_CLK, R => n11, S => n9,
                           Q => ctr8_3_port);
   state_reg_1_inst : DFFSR port map( D => nextstate_1_port, CLK => D_CLK, R =>
                           n54, S => n8, Q => state_1_port);
   state_reg_0_inst : DFFSR port map( D => nextstate_0_port, CLK => D_CLK, R =>
                           n54, S => n7, Q => state_0_port);
   ctr2_reg_0_inst : DFFSR port map( D => n66, CLK => D_CLK, R => n11, S => n6,
                           Q => ctr2_0_port);
   ctr8_reg_1_inst : DFFSR port map( D => n63, CLK => D_CLK, R => n11, S => n5,
                           Q => ctr8_1_port);
   ctr8_reg_2_inst : DFFSR port map( D => n62, CLK => D_CLK, R => n11, S => n4,
                           Q => ctr8_2_port);
   ctr2_reg_1_inst : DFFSR port map( D => n65, CLK => D_CLK, R => n3, S => n11,
                           Q => ctr2_1_port);
   ctr2_reg_2_inst : DFFSR port map( D => n64, CLK => D_CLK, R => n11, S => n2,
                           Q => ctr2_2_port);
   ctr2_reg_3_inst : DFFSR port map( D => n67, CLK => D_CLK, R => n11, S => n1,
                           Q => ctr2_3_port);
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
   U13 : BUFX2 port map( A => n35, Y => n11);
   U15 : NOR2X1 port map( A => n13, B => n14, Y => nextstate_2_port);
   U16 : OAI21X1 port map( A => n15, B => n16, C => n11, Y => nextstate_1_port)
                           ;
   U17 : MUX2X1 port map( B => n17, A => n18, S => state_0_port, Y => n16);
   U18 : OR2X1 port map( A => n19, B => ctr8_0_port, Y => n18);
   U19 : NOR2X1 port map( A => n15, B => n20, Y => nextstate_0_port);
   U20 : INVX1 port map( A => n21, Y => n20);
   U21 : OAI21X1 port map( A => n17, B => n22, C => n23, Y => n21);
   U22 : NAND3X1 port map( A => ctr2_1_port, B => n24, C => n25, Y => n17);
   U23 : NOR2X1 port map( A => ctr2_3_port, B => ctr2_2_port, Y => n25);
   U24 : NAND3X1 port map( A => n13, B => n26, C => RCVING, Y => n15);
   U25 : INVX1 port map( A => RST_N, Y => n54);
   U26 : MUX2X1 port map( B => ctr8_0_port, A => n27, S => n28, Y => n69);
   U27 : NAND2X1 port map( A => ctr8_0_port, B => n11, Y => n27);
   U28 : OAI21X1 port map( A => n19, B => n29, C => n30, Y => n68);
   U29 : OAI21X1 port map( A => n31, B => n32, C => ctr8_3_port, Y => n30);
   U30 : NOR2X1 port map( A => ctr8_2_port, B => n28, Y => n31);
   U31 : NAND3X1 port map( A => ctr8_1_port, B => n33, C => ctr8_2_port, Y => 
                           n19);
   U32 : INVX1 port map( A => ctr8_3_port, Y => n33);
   U33 : MUX2X1 port map( B => n34, A => n36, S => ctr2_3_port, Y => n67);
   U34 : INVX1 port map( A => n37, Y => n36);
   U35 : OAI21X1 port map( A => n38, B => ctr2_2_port, C => n39, Y => n37);
   U36 : NAND2X1 port map( A => ctr2_2_port, B => n40, Y => n34);
   U37 : INVX1 port map( A => n41, Y => n40);
   U38 : MUX2X1 port map( B => n42, A => ctr2_0_port, S => n43, Y => n66);
   U39 : NAND2X1 port map( A => ctr2_0_port, B => n11, Y => n42);
   U40 : NAND2X1 port map( A => n44, B => n11, Y => n65);
   U41 : XNOR2X1 port map( A => ctr2_1_port, B => n45, Y => n44);
   U42 : NOR2X1 port map( A => n38, B => n24, Y => n45);
   U43 : INVX1 port map( A => ctr2_0_port, Y => n24);
   U44 : MUX2X1 port map( B => n41, A => n39, S => ctr2_2_port, Y => n64);
   U45 : MUX2X1 port map( B => n11, A => n46, S => n43, Y => n39);
   U46 : NAND2X1 port map( A => ctr2_0_port, B => ctr2_1_port, Y => n46);
   U47 : NAND3X1 port map( A => n43, B => ctr2_1_port, C => ctr2_0_port, Y => 
                           n41);
   U48 : INVX1 port map( A => n38, Y => n43);
   U49 : MUX2X1 port map( B => n29, A => n47, S => ctr8_1_port, Y => n63);
   U50 : INVX1 port map( A => n48, Y => n29);
   U51 : MUX2X1 port map( B => n49, A => n50, S => ctr8_2_port, Y => n62);
   U52 : INVX1 port map( A => n32, Y => n50);
   U53 : OAI21X1 port map( A => ctr8_1_port, B => n28, C => n47, Y => n32);
   U54 : MUX2X1 port map( B => n51, A => n11, S => n28, Y => n47);
   U55 : NAND2X1 port map( A => n48, B => ctr8_1_port, Y => n49);
   U56 : NOR2X1 port map( A => n51, B => n28, Y => n48);
   U57 : NAND3X1 port map( A => n38, B => n26, C => state_1_port, Y => n28);
   U58 : NAND3X1 port map( A => n23, B => n26, C => state_1_port, Y => n38);
   U59 : INVX1 port map( A => ctr8_0_port, Y => n51);
   U60 : NAND3X1 port map( A => n13, B => n22, C => n52, Y => n35);
   U61 : AOI21X1 port map( A => state_2_port, B => state_0_port, C => n14, Y =>
                           n52);
   U62 : INVX1 port map( A => RCVING, Y => n14);
   U63 : INVX1 port map( A => D_EDGE, Y => n13);
   U64 : NOR2X1 port map( A => n23, B => n53, Y => SHIFT_ENABLE);
   U65 : NAND2X1 port map( A => n22, B => n26, Y => n53);
   U66 : INVX1 port map( A => state_2_port, Y => n26);
   U67 : INVX1 port map( A => state_1_port, Y => n22);
   U68 : INVX1 port map( A => state_0_port, Y => n23);

end SYN_behavioral;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_USB_RCVR.all;

entity U_RCU is

   port( D_CLK, rst_n, d_edge, eop, CRC_ERROR, STUFF_ERROR, shift_enable : in 
         std_logic;  rcv_data : in std_logic_vector (7 downto 0);  rcving, 
         w_enable, r_error, CRC_EN : out std_logic);

end U_RCU;

architecture SYN_behavioral of U_RCU is

   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
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
   
   signal state_3_port, state_2_port, state_1_port, state_0_port, 
      nextstate_3_port, nextstate_2_port, nextstate_1_port, nextstate_0_port, 
      shift_ctr_3_port, shift_ctr_2_port, shift_ctr_1_port, shift_ctr_0_port, 
      N147, N148, N149, N150, N151, N153, n3, n4, n5, n6, n7, n9, n10, n12, n99
      , n100, n101, n102, n1, n2, n8, n11, n13, n14, n15, n16, n17, n18, n19, 
      n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34
      , n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, 
      n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63
      , n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, 
      n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92
      , n93, n94, n95, n96, n97, n98, n103 : std_logic;

begin
   
   state_reg_0_inst : DFFSR port map( D => nextstate_0_port, CLK => D_CLK, R =>
                           n103, S => n12, Q => state_0_port);
   state_reg_1_inst : DFFSR port map( D => nextstate_1_port, CLK => D_CLK, R =>
                           n103, S => n10, Q => state_1_port);
   shift_ctr_reg_0_inst : DFFSR port map( D => n101, CLK => D_CLK, R => n98, S 
                           => n9, Q => shift_ctr_0_port);
   shift_ctr_reg_1_inst : DFFSR port map( D => n100, CLK => D_CLK, R => n98, S 
                           => n7, Q => shift_ctr_1_port);
   shift_ctr_reg_2_inst : DFFSR port map( D => n99, CLK => D_CLK, R => n98, S 
                           => n6, Q => shift_ctr_2_port);
   shift_ctr_reg_3_inst : DFFSR port map( D => n102, CLK => D_CLK, R => n98, S 
                           => n5, Q => shift_ctr_3_port);
   state_reg_3_inst : DFFSR port map( D => nextstate_3_port, CLK => D_CLK, R =>
                           n103, S => n4, Q => state_3_port);
   state_reg_2_inst : DFFSR port map( D => nextstate_2_port, CLK => D_CLK, R =>
                           n103, S => n3, Q => state_2_port);
   CRC_EN_reg : LATCH port map( CLK => n97, D => N153, Q => CRC_EN);
   rcving_reg : LATCH port map( CLK => N147, D => N148, Q => rcving);
   w_enable_reg : LATCH port map( CLK => N149, D => n96, Q => w_enable);
   r_error_reg : LATCH port map( CLK => N150, D => N151, Q => r_error);
   n3 <= '1';
   n4 <= '1';
   n5 <= '1';
   n6 <= '1';
   n7 <= '1';
   n9 <= '1';
   n10 <= '1';
   n12 <= '1';
   U8 : OR2X1 port map( A => n1, B => n2, Y => nextstate_3_port);
   U11 : OAI21X1 port map( A => n8, B => n11, C => n13, Y => n2);
   U13 : MUX2X1 port map( B => n14, A => n15, S => d_edge, Y => n13);
   U14 : NOR2X1 port map( A => n16, B => n17, Y => n14);
   U15 : OAI21X1 port map( A => n18, B => n19, C => n20, Y => n1);
   U16 : OAI21X1 port map( A => n21, B => n8, C => n22, Y => n20);
   U17 : INVX1 port map( A => n23, Y => n22);
   U18 : NAND3X1 port map( A => n24, B => n25, C => n26, Y => nextstate_2_port)
                           ;
   U19 : AOI21X1 port map( A => eop, B => n27, C => n28, Y => n26);
   U20 : OAI21X1 port map( A => n29, B => n30, C => n31, Y => n28);
   U21 : NAND2X1 port map( A => state_3_port, B => n32, Y => n30);
   U22 : OAI21X1 port map( A => n33, B => n21, C => n34, Y => n27);
   U23 : AOI22X1 port map( A => n21, B => n35, C => n36, D => n19, Y => n24);
   U24 : INVX1 port map( A => n37, Y => n19);
   U25 : NAND2X1 port map( A => n38, B => n39, Y => nextstate_1_port);
   U26 : AOI21X1 port map( A => n40, B => n8, C => n41, Y => n39);
   U27 : OAI21X1 port map( A => n42, B => n43, C => n11, Y => n41);
   U28 : OAI21X1 port map( A => n44, B => n45, C => state_3_port, Y => n43);
   U29 : NOR2X1 port map( A => CRC_ERROR, B => n46, Y => n44);
   U30 : OAI21X1 port map( A => n21, B => n34, C => n31, Y => n40);
   U31 : INVX1 port map( A => n47, Y => n21);
   U32 : AOI21X1 port map( A => n48, B => n49, C => n50, Y => n38);
   U33 : OAI22X1 port map( A => n37, B => n18, C => n33, D => n47, Y => n50);
   U34 : INVX1 port map( A => n51, Y => n33);
   U35 : INVX1 port map( A => n36, Y => n18);
   U36 : INVX1 port map( A => d_edge, Y => n49);
   U37 : NAND3X1 port map( A => n52, B => n25, C => n53, Y => nextstate_0_port)
                           ;
   U38 : NOR2X1 port map( A => n54, B => n55, Y => n53);
   U39 : OAI21X1 port map( A => n56, B => n8, C => n57, Y => n55);
   U40 : OAI21X1 port map( A => n35, B => n51, C => n47, Y => n57);
   U41 : NAND3X1 port map( A => shift_ctr_3_port, B => n58, C => n59, Y => n47)
                           ;
   U42 : NOR2X1 port map( A => shift_ctr_2_port, B => shift_ctr_1_port, Y => 
                           n59);
   U43 : INVX1 port map( A => eop, Y => n8);
   U44 : NOR2X1 port map( A => n36, B => n60, Y => n56);
   U45 : OAI21X1 port map( A => n32, B => n61, C => n11, Y => n54);
   U46 : OR2X1 port map( A => n29, B => n16, Y => n61);
   U47 : NAND3X1 port map( A => n62, B => rcv_data(0), C => n63, Y => n32);
   U48 : NOR2X1 port map( A => n64, B => n65, Y => n63);
   U49 : NOR2X1 port map( A => n66, B => n67, Y => n62);
   U50 : INVX1 port map( A => n68, Y => n67);
   U51 : XOR2X1 port map( A => n69, B => rcv_data(7), Y => n66);
   U52 : INVX1 port map( A => n70, Y => n25);
   U53 : OAI21X1 port map( A => d_edge, B => n71, C => n72, Y => n70);
   U54 : AOI22X1 port map( A => n73, B => d_edge, C => n37, D => n36, Y => n52)
                           ;
   U55 : NOR2X1 port map( A => n29, B => state_3_port, Y => n36);
   U56 : NOR2X1 port map( A => n74, B => n75, Y => n37);
   U57 : NAND3X1 port map( A => n68, B => n76, C => rcv_data(7), Y => n75);
   U58 : INVX1 port map( A => rcv_data(0), Y => n76);
   U59 : NOR2X1 port map( A => rcv_data(2), B => n77, Y => n68);
   U60 : OR2X1 port map( A => rcv_data(5), B => rcv_data(4), Y => n77);
   U61 : NAND3X1 port map( A => n69, B => n65, C => n64, Y => n74);
   U62 : INVX1 port map( A => rcv_data(1), Y => n64);
   U63 : INVX1 port map( A => rcv_data(6), Y => n65);
   U64 : INVX1 port map( A => rcv_data(3), Y => n69);
   U65 : INVX1 port map( A => n11, Y => n96);
   U66 : INVX1 port map( A => n78, Y => n97);
   U67 : XOR2X1 port map( A => n79, B => n80, Y => n99);
   U68 : XOR2X1 port map( A => shift_ctr_3_port, B => n81, Y => n102);
   U69 : NOR2X1 port map( A => n79, B => n80, Y => n81);
   U70 : NAND2X1 port map( A => shift_ctr_1_port, B => n82, Y => n80);
   U71 : INVX1 port map( A => shift_ctr_2_port, Y => n79);
   U72 : XOR2X1 port map( A => n58, B => n83, Y => n101);
   U73 : XOR2X1 port map( A => shift_ctr_1_port, B => n82, Y => n100);
   U74 : NOR2X1 port map( A => n58, B => n83, Y => n82);
   U75 : NAND3X1 port map( A => n98, B => n103, C => shift_enable, Y => n83);
   U76 : INVX1 port map( A => rst_n, Y => n103);
   U77 : OAI21X1 port map( A => state_1_port, B => n46, C => n84, Y => n98);
   U78 : INVX1 port map( A => n85, Y => n46);
   U79 : INVX1 port map( A => shift_ctr_0_port, Y => n58);
   U80 : OAI21X1 port map( A => n16, B => n17, C => n86, Y => N151);
   U81 : NOR2X1 port map( A => n15, B => n60, Y => n86);
   U82 : OR2X1 port map( A => n51, B => N149, Y => N150);
   U83 : NAND2X1 port map( A => n87, B => n72, Y => N149);
   U84 : NAND3X1 port map( A => state_3_port, B => n85, C => state_1_port, Y =>
                           n72);
   U85 : INVX1 port map( A => n88, Y => n87);
   U86 : NAND3X1 port map( A => n29, B => n89, C => n90, Y => N148);
   U87 : NOR2X1 port map( A => n60, B => n51, Y => n90);
   U88 : INVX1 port map( A => n31, Y => n60);
   U89 : INVX1 port map( A => N153, Y => n89);
   U90 : NAND2X1 port map( A => n29, B => n78, Y => N147);
   U91 : NOR2X1 port map( A => n88, B => n51, Y => n78);
   U92 : OAI21X1 port map( A => state_1_port, B => n84, C => n23, Y => n51);
   U93 : NAND3X1 port map( A => n85, B => n42, C => state_3_port, Y => n23);
   U94 : NAND3X1 port map( A => n71, B => n31, C => n91, Y => n88);
   U95 : NOR2X1 port map( A => N153, B => n73, Y => n91);
   U96 : INVX1 port map( A => n17, Y => n73);
   U97 : NAND2X1 port map( A => n45, B => n42, Y => n17);
   U98 : NAND2X1 port map( A => n34, B => n11, Y => N153);
   U99 : NAND3X1 port map( A => n92, B => n42, C => n93, Y => n11);
   U100 : INVX1 port map( A => n35, Y => n34);
   U101 : NOR2X1 port map( A => n84, B => n42, Y => n35);
   U102 : NAND2X1 port map( A => n85, B => n16, Y => n84);
   U103 : NOR2X1 port map( A => n92, B => state_2_port, Y => n85);
   U104 : NAND3X1 port map( A => state_1_port, B => n92, C => n93, Y => n31);
   U105 : INVX1 port map( A => state_0_port, Y => n92);
   U106 : NOR2X1 port map( A => n15, B => n48, Y => n71);
   U107 : INVX1 port map( A => n94, Y => n48);
   U108 : NAND3X1 port map( A => state_1_port, B => state_0_port, C => n93, Y 
                           => n94);
   U109 : INVX1 port map( A => n95, Y => n15);
   U110 : NAND3X1 port map( A => state_0_port, B => n42, C => n93, Y => n95);
   U111 : AND2X1 port map( A => state_2_port, B => n16, Y => n93);
   U112 : INVX1 port map( A => state_3_port, Y => n16);
   U113 : INVX1 port map( A => state_1_port, Y => n42);
   U114 : NAND2X1 port map( A => state_1_port, B => n45, Y => n29);
   U115 : NOR2X1 port map( A => state_0_port, B => state_2_port, Y => n45);

end SYN_behavioral;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_USB_RCVR.all;

entity U_EOP_DETECT is

   port( D_PLUS, D_MINUS : in std_logic;  EOP : out std_logic);

end U_EOP_DETECT;

architecture SYN_dataflow of U_EOP_DETECT is

   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;

begin
   
   U1 : NOR2X1 port map( A => D_PLUS, B => D_MINUS, Y => EOP);

end SYN_dataflow;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_USB_RCVR.all;

entity U_EDGE_DETECT is

   port( D_CLK, rst_n, d_plus : in std_logic;  d_edge : out std_logic);

end U_EDGE_DETECT;

architecture SYN_behavioral of U_EDGE_DETECT is

   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal current, previous, N0, n1, n2, n4, n3 : std_logic;

begin
   
   current_reg : DFFSR port map( D => d_plus, CLK => D_CLK, R => n4, S => n3, Q
                           => current);
   previous_reg : DFFSR port map( D => current, CLK => D_CLK, R => n2, S => n3,
                           Q => previous);
   d_edge_reg : DFFSR port map( D => N0, CLK => D_CLK, R => n3, S => n1, Q => 
                           d_edge);
   n1 <= '1';
   n2 <= '1';
   n4 <= '1';
   U5 : INVX1 port map( A => rst_n, Y => n3);
   U7 : XOR2X1 port map( A => previous, B => current, Y => N0);

end SYN_behavioral;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_USB_RCVR.all;

entity U_DECODE is

   port( D_CLK, rst_n, d_plus, shift_enable, eop : in std_logic;  d_orig : out 
         std_logic);

end U_DECODE;

architecture SYN_behavioral of U_DECODE is

   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component LATCH
      port( CLK, D : in std_logic;  Q : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal state_1_port, state_0_port, nextstate_1_port, nextstate_0_port, 
      prevbit, currentbit, N32, N34, N35, n1, n3, n2, n4, n5, n6, n7, n8, n9, 
      n10, n11 : std_logic;

begin
   
   state_reg_0_inst : DFFSR port map( D => nextstate_0_port, CLK => D_CLK, R =>
                           n3, S => n11, Q => state_0_port);
   state_reg_1_inst : DFFSR port map( D => nextstate_1_port, CLK => D_CLK, R =>
                           n11, S => n1, Q => state_1_port);
   prevbit_reg : LATCH port map( CLK => N34, D => N35, Q => prevbit);
   currentbit_reg : LATCH port map( CLK => n10, D => d_plus, Q => currentbit);
   d_orig_reg : LATCH port map( CLK => n10, D => N32, Q => d_orig);
   n1 <= '1';
   n3 <= '1';
   U4 : NOR2X1 port map( A => n2, B => n4, Y => nextstate_1_port);
   U6 : NAND2X1 port map( A => shift_enable, B => n5, Y => n4);
   U7 : NAND2X1 port map( A => n6, B => n10, Y => n2);
   U8 : NOR2X1 port map( A => state_1_port, B => n5, Y => nextstate_0_port);
   U9 : INVX1 port map( A => eop, Y => n5);
   U10 : INVX1 port map( A => rst_n, Y => n11);
   U11 : MUX2X1 port map( B => state_1_port, A => n7, S => n6, Y => N35);
   U12 : NAND2X1 port map( A => d_plus, B => state_1_port, Y => n7);
   U13 : MUX2X1 port map( B => state_1_port, A => n8, S => n6, Y => N34);
   U14 : OR2X1 port map( A => n10, B => shift_enable, Y => n8);
   U15 : INVX1 port map( A => state_1_port, Y => n10);
   U16 : AOI21X1 port map( A => n9, B => n6, C => state_1_port, Y => N32);
   U17 : INVX1 port map( A => state_0_port, Y => n6);
   U18 : XOR2X1 port map( A => prevbit, B => currentbit, Y => n9);

end SYN_behavioral;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_USB_RCVR.all;

entity U_CRC is

   port( D_CLK, RST_N, CRC_SHIFT, D_ORIG, CRC_EN : in std_logic;  CRC_ERROR : 
         out std_logic);

end U_CRC;

architecture SYN_simple_shift_reg of U_CRC is

   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal present_val_15_port, present_val_14_port, present_val_13_port, 
      present_val_12_port, present_val_11_port, present_val_10_port, 
      present_val_9_port, present_val_8_port, present_val_7_port, 
      present_val_6_port, present_val_5_port, present_val_4_port, 
      present_val_3_port, present_val_2_port, present_val_1_port, 
      present_val_0_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, 
      n13, n14, n15, n17, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75
      , n76, n77, n78, n79, n80, n16, n18, n19, n20, n21, n22, n23, n24, n25, 
      n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40
      , n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, 
      n55, n56, n57, n58, n59, n60 : std_logic;

begin
   
   present_val_reg_0_inst : DFFSR port map( D => n80, CLK => D_CLK, R => n17, S
                           => n60, Q => present_val_0_port);
   present_val_reg_1_inst : DFFSR port map( D => n79, CLK => D_CLK, R => n15, S
                           => n60, Q => present_val_1_port);
   present_val_reg_2_inst : DFFSR port map( D => n78, CLK => D_CLK, R => n14, S
                           => n60, Q => present_val_2_port);
   present_val_reg_3_inst : DFFSR port map( D => n77, CLK => D_CLK, R => n13, S
                           => n60, Q => present_val_3_port);
   present_val_reg_4_inst : DFFSR port map( D => n76, CLK => D_CLK, R => n12, S
                           => n60, Q => present_val_4_port);
   present_val_reg_5_inst : DFFSR port map( D => n75, CLK => D_CLK, R => n11, S
                           => n60, Q => present_val_5_port);
   present_val_reg_6_inst : DFFSR port map( D => n74, CLK => D_CLK, R => n10, S
                           => n60, Q => present_val_6_port);
   present_val_reg_7_inst : DFFSR port map( D => n73, CLK => D_CLK, R => n9, S 
                           => n60, Q => present_val_7_port);
   present_val_reg_8_inst : DFFSR port map( D => n72, CLK => D_CLK, R => n8, S 
                           => n60, Q => present_val_8_port);
   present_val_reg_9_inst : DFFSR port map( D => n71, CLK => D_CLK, R => n7, S 
                           => n60, Q => present_val_9_port);
   present_val_reg_10_inst : DFFSR port map( D => n70, CLK => D_CLK, R => n6, S
                           => n60, Q => present_val_10_port);
   present_val_reg_11_inst : DFFSR port map( D => n69, CLK => D_CLK, R => n5, S
                           => n60, Q => present_val_11_port);
   present_val_reg_12_inst : DFFSR port map( D => n68, CLK => D_CLK, R => n4, S
                           => n60, Q => present_val_12_port);
   present_val_reg_13_inst : DFFSR port map( D => n67, CLK => D_CLK, R => n3, S
                           => n60, Q => present_val_13_port);
   present_val_reg_14_inst : DFFSR port map( D => n66, CLK => D_CLK, R => n2, S
                           => n60, Q => present_val_14_port);
   present_val_reg_15_inst : DFFSR port map( D => n65, CLK => D_CLK, R => n1, S
                           => n60, Q => present_val_15_port);
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
   n11 <= '1';
   n12 <= '1';
   n13 <= '1';
   n14 <= '1';
   n15 <= '1';
   n17 <= '1';
   U18 : INVX2 port map( A => RST_N, Y => n60);
   U20 : NAND2X1 port map( A => CRC_EN, B => n16, Y => n80);
   U21 : INVX1 port map( A => n18, Y => n16);
   U22 : OAI21X1 port map( A => CRC_SHIFT, B => n19, C => n20, Y => n18);
   U23 : NAND2X1 port map( A => n21, B => CRC_EN, Y => n79);
   U24 : MUX2X1 port map( B => present_val_1_port, A => present_val_0_port, S 
                           => CRC_SHIFT, Y => n21);
   U25 : OR2X1 port map( A => n22, B => n23, Y => n78);
   U26 : OAI21X1 port map( A => present_val_1_port, B => n20, C => CRC_EN, Y =>
                           n23);
   U27 : MUX2X1 port map( B => n24, A => n25, S => CRC_SHIFT, Y => n22);
   U28 : NAND2X1 port map( A => present_val_1_port, B => n26, Y => n25);
   U29 : INVX1 port map( A => present_val_2_port, Y => n24);
   U30 : NAND2X1 port map( A => n27, B => CRC_EN, Y => n77);
   U31 : MUX2X1 port map( B => present_val_3_port, A => present_val_2_port, S 
                           => CRC_SHIFT, Y => n27);
   U32 : NAND2X1 port map( A => n28, B => CRC_EN, Y => n76);
   U33 : MUX2X1 port map( B => present_val_4_port, A => present_val_3_port, S 
                           => CRC_SHIFT, Y => n28);
   U34 : NAND2X1 port map( A => n29, B => CRC_EN, Y => n75);
   U35 : MUX2X1 port map( B => present_val_5_port, A => present_val_4_port, S 
                           => CRC_SHIFT, Y => n29);
   U36 : NAND2X1 port map( A => n30, B => CRC_EN, Y => n74);
   U37 : MUX2X1 port map( B => present_val_6_port, A => present_val_5_port, S 
                           => CRC_SHIFT, Y => n30);
   U38 : NAND2X1 port map( A => n31, B => CRC_EN, Y => n73);
   U39 : MUX2X1 port map( B => present_val_7_port, A => present_val_6_port, S 
                           => CRC_SHIFT, Y => n31);
   U40 : NAND2X1 port map( A => n32, B => CRC_EN, Y => n72);
   U41 : MUX2X1 port map( B => present_val_8_port, A => present_val_7_port, S 
                           => CRC_SHIFT, Y => n32);
   U42 : NAND2X1 port map( A => n33, B => CRC_EN, Y => n71);
   U43 : MUX2X1 port map( B => present_val_9_port, A => present_val_8_port, S 
                           => CRC_SHIFT, Y => n33);
   U44 : NAND2X1 port map( A => n34, B => CRC_EN, Y => n70);
   U45 : MUX2X1 port map( B => present_val_10_port, A => present_val_9_port, S 
                           => CRC_SHIFT, Y => n34);
   U46 : NAND2X1 port map( A => n35, B => CRC_EN, Y => n69);
   U47 : MUX2X1 port map( B => present_val_11_port, A => present_val_10_port, S
                           => CRC_SHIFT, Y => n35);
   U48 : NAND2X1 port map( A => n36, B => CRC_EN, Y => n68);
   U49 : MUX2X1 port map( B => present_val_12_port, A => present_val_11_port, S
                           => CRC_SHIFT, Y => n36);
   U50 : NAND2X1 port map( A => n37, B => CRC_EN, Y => n67);
   U51 : MUX2X1 port map( B => present_val_13_port, A => present_val_12_port, S
                           => CRC_SHIFT, Y => n37);
   U52 : NAND2X1 port map( A => n38, B => CRC_EN, Y => n66);
   U53 : MUX2X1 port map( B => present_val_14_port, A => present_val_13_port, S
                           => CRC_SHIFT, Y => n38);
   U54 : OR2X1 port map( A => n39, B => n40, Y => n65);
   U55 : OAI21X1 port map( A => present_val_14_port, B => n20, C => CRC_EN, Y 
                           => n40);
   U56 : NAND2X1 port map( A => CRC_SHIFT, B => n41, Y => n20);
   U57 : MUX2X1 port map( B => n42, A => n43, S => CRC_SHIFT, Y => n39);
   U58 : NAND2X1 port map( A => present_val_14_port, B => n26, Y => n43);
   U59 : INVX1 port map( A => n41, Y => n26);
   U60 : XOR2X1 port map( A => present_val_15_port, B => D_ORIG, Y => n41);
   U61 : NAND2X1 port map( A => n44, B => n45, Y => CRC_ERROR);
   U62 : NOR2X1 port map( A => n46, B => n47, Y => n45);
   U63 : NAND3X1 port map( A => n48, B => n49, C => n50, Y => n47);
   U64 : NOR2X1 port map( A => present_val_1_port, B => present_val_14_port, Y 
                           => n50);
   U65 : INVX1 port map( A => present_val_5_port, Y => n49);
   U66 : INVX1 port map( A => present_val_4_port, Y => n48);
   U67 : NAND3X1 port map( A => n51, B => n52, C => n53, Y => n46);
   U68 : NOR2X1 port map( A => present_val_9_port, B => present_val_8_port, Y 
                           => n53);
   U69 : INVX1 port map( A => present_val_7_port, Y => n52);
   U70 : INVX1 port map( A => present_val_6_port, Y => n51);
   U71 : NOR2X1 port map( A => n54, B => n55, Y => n44);
   U72 : NAND3X1 port map( A => present_val_3_port, B => present_val_2_port, C 
                           => n56, Y => n55);
   U73 : NOR2X1 port map( A => n42, B => n19, Y => n56);
   U74 : INVX1 port map( A => present_val_0_port, Y => n19);
   U75 : INVX1 port map( A => present_val_15_port, Y => n42);
   U76 : NAND3X1 port map( A => n57, B => n58, C => n59, Y => n54);
   U77 : NOR2X1 port map( A => present_val_13_port, B => present_val_12_port, Y
                           => n59);
   U78 : INVX1 port map( A => present_val_11_port, Y => n58);
   U79 : INVX1 port map( A => present_val_10_port, Y => n57);

end SYN_simple_shift_reg;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_USB_RCVR.all;

entity U_CLKDIV is

   port( CLK, RST : in std_logic;  D_CLK : out std_logic);

end U_CLKDIV;

architecture SYN_clockdivider of U_CLKDIV is

   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
      generic ( ac_as_q, ac_as_qn, sc_ss_q : integer );
      port(
         clear, preset, enable, data_in, synch_clear, synch_preset, 
            synch_toggle, synch_enable, next_state, clocked_on : in std_logic;
         Q, QN : buffer std_logic
      );
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, RST_port, ctr1_1_port, ctr1_0_port, N8,
      N9, ctr0_1_port, ctr0_0_port, N13, N14, n1, n3, n2, n4, n5, n6, n_1000, 
      n_1001 : std_logic;

begin
   RST_port <= RST;
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   ctr1_reg_0_inst : DFFSR port map( D => N8, CLK => CLK, R => n6, S => n3, Q 
                           => ctr1_0_port);
   ctr1_reg_1_inst : DFFSR port map( D => N9, CLK => CLK, R => n6, S => n1, Q 
                           => ctr1_1_port);
   n1 <= '1';
   n3 <= '1';
   ctr0_reg_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => RST_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N14,
               clocked_on => n5, Q => ctr0_1_port, QN => n_1000);
   ctr0_reg_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => RST_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N13,
               clocked_on => n5, Q => ctr0_0_port, QN => n_1001);
   U4 : INVX1 port map( A => CLK, Y => n5);
   U6 : INVX1 port map( A => RST_port, Y => n6);
   U7 : NOR2X1 port map( A => ctr1_1_port, B => n2, Y => N9);
   U8 : NOR2X1 port map( A => ctr1_1_port, B => ctr1_0_port, Y => N8);
   U9 : AOI22X1 port map( A => ctr0_1_port, B => n4, C => ctr1_1_port, D => n2,
                           Y => D_CLK);
   U10 : INVX1 port map( A => ctr1_0_port, Y => n2);
   U11 : NOR2X1 port map( A => ctr0_1_port, B => n4, Y => N14);
   U12 : INVX1 port map( A => ctr0_0_port, Y => n4);
   U13 : NOR2X1 port map( A => ctr0_1_port, B => ctr0_0_port, Y => N13);

end SYN_clockdivider;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_USB_RCVR.all;

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
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X1
      port( A, B : in std_logic;  Y : out std_logic);
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
   
   component AND2X2
      port( A, B : in std_logic;  Y : out std_logic);
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
      n42, n43_port, n44_port, n45_port, n46, n47, n50, n52_port, n54, n55, n56
      , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, 
      n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31
      , n32, n33, n34, n35, n36 : std_logic;

begin
   RCV_DATA <= ( RCV_DATA_7_port, RCV_DATA_6_port, RCV_DATA_5_port, 
      RCV_DATA_4_port, RCV_DATA_3_port, RCV_DATA_2_port, RCV_DATA_1_port, 
      RCV_DATA_0_port );
   
   nextstate_reg_0_inst : LATCH port map( CLK => N43, D => N44, Q => 
                           nextstate_0_port);
   state_reg_0_inst : DFFSR port map( D => nextstate_0_port, CLK => D_CLK, R =>
                           n52_port, S => n36, Q => state_0_port);
   nextstate_reg_1_inst : LATCH port map( CLK => N43, D => N45, Q => 
                           nextstate_1_port);
   state_reg_1_inst : DFFSR port map( D => nextstate_1_port, CLK => D_CLK, R =>
                           n50, S => n36, Q => state_1_port);
   current_reg_7_inst : DFFPOSX1 port map( D => n33, CLK => D_CLK, Q => 
                           RCV_DATA_7_port);
   current_reg_6_inst : DFFPOSX1 port map( D => n34, CLK => D_CLK, Q => 
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
   ctr_reg_0_inst : DFFSR port map( D => n56, CLK => D_CLK, R => n36, S => n41,
                           Q => ctr_0_port);
   ctr_reg_1_inst : DFFSR port map( D => n55, CLK => D_CLK, R => n36, S => n40,
                           Q => ctr_1_port);
   ctr_reg_2_inst : DFFSR port map( D => n54, CLK => D_CLK, R => n36, S => n39,
                           Q => ctr_2_port);
   STUFF_ERROR_reg : LATCH port map( CLK => N52, D => n35, Q => STUFF_ERROR);
   n39 <= '1';
   n40 <= '1';
   n41 <= '1';
   n50 <= '1';
   n52_port <= '1';
   U3 : AND2X2 port map( A => SHIFT_ENABLE, B => n32, Y => CRC_SHIFT);
   U4 : MUX2X1 port map( B => n1, A => n2, S => n3, Y => n33);
   U5 : MUX2X1 port map( B => n2, A => n4, S => n3, Y => n34);
   U6 : INVX1 port map( A => RCV_DATA_7_port, Y => n2);
   U7 : INVX1 port map( A => n5, Y => n35);
   U8 : MUX2X1 port map( B => n6, A => n7, S => ctr_0_port, Y => n56);
   U9 : NAND2X1 port map( A => n8, B => n7, Y => n6);
   U10 : MUX2X1 port map( B => n9, A => n10, S => ctr_1_port, Y => n55);
   U11 : INVX1 port map( A => n11, Y => n10);
   U12 : NAND3X1 port map( A => ctr_0_port, B => n7, C => n8, Y => n9);
   U13 : MUX2X1 port map( B => n12, A => n13, S => ctr_2_port, Y => n54);
   U14 : AOI21X1 port map( A => n8, B => n14, C => n11, Y => n13);
   U15 : OAI21X1 port map( A => ctr_0_port, B => n15, C => n7, Y => n11);
   U16 : NAND2X1 port map( A => n16, B => n17, Y => n7);
   U17 : INVX1 port map( A => n15, Y => n8);
   U18 : NAND3X1 port map( A => ctr_0_port, B => SHIFT_ENABLE, C => n18, Y => 
                           n12);
   U19 : NOR2X1 port map( A => n15, B => n14, Y => n18);
   U20 : INVX1 port map( A => ctr_1_port, Y => n14);
   U21 : NAND2X1 port map( A => D_ORIG, B => n16, Y => n15);
   U22 : MUX2X1 port map( B => n4, A => n19, S => n3, Y => n47);
   U23 : INVX1 port map( A => RCV_DATA_6_port, Y => n4);
   U24 : MUX2X1 port map( B => n19, A => n20, S => n3, Y => n46);
   U25 : INVX1 port map( A => RCV_DATA_4_port, Y => n20);
   U26 : INVX1 port map( A => RCV_DATA_5_port, Y => n19);
   U27 : INVX1 port map( A => n21, Y => n45_port);
   U28 : MUX2X1 port map( B => RCV_DATA_4_port, A => RCV_DATA_3_port, S => n3, 
                           Y => n21);
   U29 : INVX1 port map( A => n22, Y => n44_port);
   U30 : MUX2X1 port map( B => RCV_DATA_3_port, A => RCV_DATA_2_port, S => n3, 
                           Y => n22);
   U31 : INVX1 port map( A => n23, Y => n43_port);
   U32 : MUX2X1 port map( B => RCV_DATA_2_port, A => RCV_DATA_1_port, S => n3, 
                           Y => n23);
   U33 : INVX1 port map( A => n24, Y => n42);
   U34 : MUX2X1 port map( B => RCV_DATA_1_port, A => RCV_DATA_0_port, S => n3, 
                           Y => n24);
   U35 : NAND3X1 port map( A => n16, B => n36, C => SHIFT_ENABLE, Y => n3);
   U36 : INVX1 port map( A => RST, Y => n36);
   U37 : INVX1 port map( A => N52, Y => n16);
   U38 : OAI21X1 port map( A => EOP, B => n5, C => n25, Y => N45);
   U39 : AOI21X1 port map( A => n26, B => state_0_port, C => n27, Y => n25);
   U40 : INVX1 port map( A => N43, Y => n27);
   U41 : NOR2X1 port map( A => state_1_port, B => n1, Y => n26);
   U42 : INVX1 port map( A => D_ORIG, Y => n1);
   U43 : NAND2X1 port map( A => state_1_port, B => n28, Y => n5);
   U44 : NOR2X1 port map( A => n29, B => n30, Y => N44);
   U45 : NAND2X1 port map( A => ctr_2_port, B => ctr_1_port, Y => n30);
   U46 : OR2X1 port map( A => N52, B => ctr_0_port, Y => n29);
   U47 : NAND3X1 port map( A => n17, B => n31, C => state_0_port, Y => N43);
   U48 : INVX1 port map( A => SHIFT_ENABLE, Y => n17);
   U49 : OAI21X1 port map( A => n31, B => n28, C => N52, Y => n32);
   U50 : NAND2X1 port map( A => n31, B => n28, Y => N52);
   U51 : INVX1 port map( A => state_0_port, Y => n28);
   U52 : INVX1 port map( A => state_1_port, Y => n31);

end SYN_behavioral;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_USB_RCVR.all;

entity RCV_FIFO is

   port( CLK, D_CLK, RST_N, R_ENABLE, W_ENABLE : in std_logic;  WDATA : in 
         std_logic_vector (7 downto 0);  R_DATA : out std_logic_vector (7 
         downto 0);  EMPTY, FULL : out std_logic);

end RCV_FIFO;

architecture SYN_wrapper of RCV_FIFO is

   component fifo
      port( rclk, wclk, rst_n, renable, wenable : in std_logic;  wdata : in 
            std_logic_vector (7 downto 0);  rdata : out std_logic_vector (7 
            downto 0);  empty, full : out std_logic);
   end component;

begin
   
   MAPPING : fifo port map( rclk => CLK, wclk => D_CLK, rst_n => RST_N, renable
                           => R_ENABLE, wenable => W_ENABLE, wdata(7) => 
                           WDATA(7), wdata(6) => WDATA(6), wdata(5) => WDATA(5)
                           , wdata(4) => WDATA(4), wdata(3) => WDATA(3), 
                           wdata(2) => WDATA(2), wdata(1) => WDATA(1), wdata(0)
                           => WDATA(0), rdata(7) => R_DATA(7), rdata(6) => 
                           R_DATA(6), rdata(5) => R_DATA(5), rdata(4) => 
                           R_DATA(4), rdata(3) => R_DATA(3), rdata(2) => 
                           R_DATA(2), rdata(1) => R_DATA(1), rdata(0) => 
                           R_DATA(0), empty => EMPTY, full => FULL);

end SYN_wrapper;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_USB_RCVR.all;

entity USB_RCVR is

   port( CLK, D_MINUS, D_PLUS, RST, R_ENABLE : in std_logic;  EMPTY, FULL : out
         std_logic;  R_DATA : out std_logic_vector (7 downto 0);  r_error, 
         rcving : out std_logic);

end USB_RCVR;

architecture SYN_struct of USB_RCVR is

   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component U_TIMER
      port( D_CLK, RST_N, D_EDGE, RCVING : in std_logic;  SHIFT_ENABLE : out 
            std_logic);
   end component;
   
   component U_RCU
      port( D_CLK, rst_n, d_edge, eop, CRC_ERROR, STUFF_ERROR, shift_enable : 
            in std_logic;  rcv_data : in std_logic_vector (7 downto 0);  rcving
            , w_enable, r_error, CRC_EN : out std_logic);
   end component;
   
   component U_EOP_DETECT
      port( D_PLUS, D_MINUS : in std_logic;  EOP : out std_logic);
   end component;
   
   component U_EDGE_DETECT
      port( D_CLK, rst_n, d_plus : in std_logic;  d_edge : out std_logic);
   end component;
   
   component U_DECODE
      port( D_CLK, rst_n, d_plus, shift_enable, eop : in std_logic;  d_orig : 
            out std_logic);
   end component;
   
   component U_CRC
      port( D_CLK, RST_N, CRC_SHIFT, D_ORIG, CRC_EN : in std_logic;  CRC_ERROR 
            : out std_logic);
   end component;
   
   component U_CLKDIV
      port( CLK, RST : in std_logic;  D_CLK : out std_logic);
   end component;
   
   component USB_SHIFT
      port( D_CLK, RST, EOP, SHIFT_ENABLE, D_ORIG : in std_logic;  RCV_DATA : 
            out std_logic_vector (7 downto 0);  CRC_SHIFT, STUFF_ERROR : out 
            std_logic);
   end component;
   
   component RCV_FIFO
      port( CLK, D_CLK, RST_N, R_ENABLE, W_ENABLE : in std_logic;  WDATA : in 
            std_logic_vector (7 downto 0);  R_DATA : out std_logic_vector (7 
            downto 0);  EMPTY, FULL : out std_logic);
   end component;
   
   signal rcving_port, D_CLK, RCV_DATA_7_port, RCV_DATA_6_port, RCV_DATA_5_port
      , RCV_DATA_4_port, RCV_DATA_3_port, RCV_DATA_2_port, RCV_DATA_1_port, 
      RCV_DATA_0_port, w_enable, d_orig, EOP, SHIFT_ENABLE, CRC_SHIFT, 
      STUFF_ERROR, CRC_EN, CRC_ERROR, d_edge, n2, n3, n4 : std_logic;

begin
   rcving <= rcving_port;
   
   U_5 : RCV_FIFO port map( CLK => CLK, D_CLK => n2, RST_N => n4, R_ENABLE => 
                           R_ENABLE, W_ENABLE => w_enable, WDATA(7) => 
                           RCV_DATA_7_port, WDATA(6) => RCV_DATA_6_port, 
                           WDATA(5) => RCV_DATA_5_port, WDATA(4) => 
                           RCV_DATA_4_port, WDATA(3) => RCV_DATA_3_port, 
                           WDATA(2) => RCV_DATA_2_port, WDATA(1) => 
                           RCV_DATA_1_port, WDATA(0) => RCV_DATA_0_port, 
                           R_DATA(7) => R_DATA(7), R_DATA(6) => R_DATA(6), 
                           R_DATA(5) => R_DATA(5), R_DATA(4) => R_DATA(4), 
                           R_DATA(3) => R_DATA(3), R_DATA(2) => R_DATA(2), 
                           R_DATA(1) => R_DATA(1), R_DATA(0) => R_DATA(0), 
                           EMPTY => EMPTY, FULL => FULL);
   U_7 : USB_SHIFT port map( D_CLK => n2, RST => RST, EOP => EOP, SHIFT_ENABLE 
                           => SHIFT_ENABLE, D_ORIG => d_orig, RCV_DATA(7) => 
                           RCV_DATA_7_port, RCV_DATA(6) => RCV_DATA_6_port, 
                           RCV_DATA(5) => RCV_DATA_5_port, RCV_DATA(4) => 
                           RCV_DATA_4_port, RCV_DATA(3) => RCV_DATA_3_port, 
                           RCV_DATA(2) => RCV_DATA_2_port, RCV_DATA(1) => 
                           RCV_DATA_1_port, RCV_DATA(0) => RCV_DATA_0_port, 
                           CRC_SHIFT => CRC_SHIFT, STUFF_ERROR => STUFF_ERROR);
   U_8 : U_CLKDIV port map( CLK => CLK, RST => RST, D_CLK => D_CLK);
   U_0 : U_CRC port map( D_CLK => n2, RST_N => RST, CRC_SHIFT => CRC_SHIFT, 
                           D_ORIG => d_orig, CRC_EN => CRC_EN, CRC_ERROR => 
                           CRC_ERROR);
   U_1 : U_DECODE port map( D_CLK => n2, rst_n => RST, d_plus => D_PLUS, 
                           shift_enable => SHIFT_ENABLE, eop => EOP, d_orig => 
                           d_orig);
   U_2 : U_EDGE_DETECT port map( D_CLK => n2, rst_n => RST, d_plus => D_PLUS, 
                           d_edge => d_edge);
   U_3 : U_EOP_DETECT port map( D_PLUS => D_PLUS, D_MINUS => D_MINUS, EOP => 
                           EOP);
   U_4 : U_RCU port map( D_CLK => n2, rst_n => RST, d_edge => d_edge, eop => 
                           EOP, CRC_ERROR => CRC_ERROR, STUFF_ERROR => 
                           STUFF_ERROR, shift_enable => CRC_SHIFT, rcv_data(7) 
                           => RCV_DATA_7_port, rcv_data(6) => RCV_DATA_6_port, 
                           rcv_data(5) => RCV_DATA_5_port, rcv_data(4) => 
                           RCV_DATA_4_port, rcv_data(3) => RCV_DATA_3_port, 
                           rcv_data(2) => RCV_DATA_2_port, rcv_data(1) => 
                           RCV_DATA_1_port, rcv_data(0) => RCV_DATA_0_port, 
                           rcving => rcving_port, w_enable => w_enable, r_error
                           => r_error, CRC_EN => CRC_EN);
   U_6 : U_TIMER port map( D_CLK => n2, RST_N => RST, D_EDGE => d_edge, RCVING 
                           => rcving_port, SHIFT_ENABLE => SHIFT_ENABLE);
   U2 : INVX4 port map( A => RST, Y => n4);
   U3 : INVX4 port map( A => n3, Y => n2);
   U4 : INVX2 port map( A => D_CLK, Y => n3);

end SYN_struct;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

entity SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT is
   generic ( ac_as_q, ac_as_qn, sc_ss_q : integer );
   port(
      clear, preset, enable, data_in, synch_clear, synch_preset, synch_toggle, 
         synch_enable, next_state, clocked_on : in std_logic;
      Q, QN : buffer std_logic
   );
end SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT;

architecture RTL of SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT is
begin

   process ( preset, clear, enable, data_in, clocked_on )
   begin
   
            -- Check the value of inputs (asynchronous first)
            if ( ( ( preset /= '1' ) and ( preset /= '0' ) ) or ( ( clear /= 
                     '1' ) and ( clear /= '0' ) )  ) then
               Q <= 'X';
            elsif ( clear = '1' and preset = '1' ) then
               case ac_as_q is
                  when 2 =>
                     Q <= '1';
                  when 1 =>
                     Q <= '0';
                  when others =>
                     Q <= 'X';
               end case;
               case ac_as_qn is
                  when 2 =>
                     QN <= '1';
                  when 1 =>
                     QN <= '0';
                  when others =>
                     QN <= 'X';
               end case;
            elsif ( clear = '1' ) then
               Q <= '0';
            elsif ( preset = '1' ) then
               Q <= '1';
            elsif ( ( enable /= '1' ) and ( enable /= '0' ) ) then
               Q <= 'X';
            elsif ( enable = '1' ) then
               Q <= data_in;
            elsif ( ( clocked_on /= '1' ) and ( clocked_on /= '0' ) ) then
               Q <= 'X';
            elsif ( clocked_on'event and clocked_on = '1' ) then
         if ( ( ( synch_preset /= '1' ) and ( synch_preset /= '0' ) ) or ( ( 
                  synch_clear /= '1' ) and ( synch_clear /= '0' ) )  ) then
            Q <= 'X';
         elsif ( synch_clear = '1' and synch_preset = '1' ) then
            case sc_ss_q is
               when 2 =>
                  Q <= '1';
               when 1 =>
                  Q <= '0';
               when others =>
                  Q <= 'X';
            end case;
         elsif ( synch_clear = '1' ) then
            Q <= '0';
         elsif ( synch_preset = '1' ) then
            Q <= '1';
         elsif ( ( ( synch_toggle /= '1' ) and ( synch_toggle /= '0' ) ) or ( (
                  synch_enable /= '1' ) and ( synch_enable /= '0' ) )  ) then
            Q <= 'X';
         elsif ( synch_enable = '1' and synch_toggle = '1' ) then
            Q <= 'X';
         elsif ( synch_toggle = '1' ) then
            Q <= QN;
         elsif ( synch_enable = '1' ) then
            Q <= next_state;
         end if;
      end if;
   
   end process;

end RTL;
