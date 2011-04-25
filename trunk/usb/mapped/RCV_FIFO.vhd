
library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

package CONV_PACK_RCV_FIFO is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_RCV_FIFO;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_RCV_FIFO.all;

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

use work.CONV_PACK_RCV_FIFO.all;

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

use work.CONV_PACK_RCV_FIFO.all;

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
      n6, n7, n8, n9, n10, n11, n12, n13, n14, n1, n2, n15, n16, n17, n18, n19,
      n20 : std_logic;

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

use work.CONV_PACK_RCV_FIFO.all;

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
   
   component BUFX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   component write_ptr
      port( wclk, rst_n, wenable : in std_logic;  wptr, wptr_nxt : out 
            std_logic_vector (3 downto 0));
   end component;
   
   signal n22, full_flag_port, wptr_nxt_3_port, wptr_nxt_2_port, 
      wptr_nxt_1_port, wptr_nxt_0_port, wrptr_r2_3_port, wrptr_r2_2_port, 
      wrptr_r2_1_port, wrptr_r2_0_port, wrptr_r1_3_port, wrptr_r1_2_port, 
      wrptr_r1_1_port, wrptr_r1_0_port, gray_wptr_2_port, N5, n3, n4, n5_port, 
      n6, n7, n8, n9, n10, n11, n12, n13, n14, wenable_fifo_port, n2, n15, n16,
      n17, n18, n19, n20, n21 : std_logic;

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
   U15 : BUFX2 port map( A => n22, Y => wenable_fifo_port);
   U16 : NOR2X1 port map( A => full_flag_port, B => n2, Y => n22);
   U17 : INVX1 port map( A => wenable, Y => n2);
   U18 : NOR2X1 port map( A => n15, B => n16, Y => N5);
   U19 : NAND2X1 port map( A => n17, B => n18, Y => n16);
   U20 : XOR2X1 port map( A => n19, B => gray_wptr_2_port, Y => n18);
   U21 : XOR2X1 port map( A => wptr_nxt_3_port, B => wptr_nxt_2_port, Y => 
                           gray_wptr_2_port);
   U22 : XNOR2X1 port map( A => wrptr_r2_3_port, B => wrptr_r2_2_port, Y => n19
                           );
   U23 : XNOR2X1 port map( A => wrptr_r2_1_port, B => wptr_nxt_1_port, Y => n17
                           );
   U24 : NAND2X1 port map( A => n20, B => n21, Y => n15);
   U25 : XOR2X1 port map( A => wrptr_r2_3_port, B => wptr_nxt_3_port, Y => n21)
                           ;
   U26 : XNOR2X1 port map( A => wrptr_r2_0_port, B => wptr_nxt_0_port, Y => n20
                           );

end SYN_rtl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_RCV_FIFO.all;

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
      n193, n194 : std_logic;

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
   U2 : BUFX2 port map( A => n98, Y => n1);
   U3 : BUFX2 port map( A => n96, Y => n2);
   U4 : BUFX2 port map( A => n97, Y => n3);
   U5 : BUFX2 port map( A => n95, Y => n4);
   U6 : NAND3X1 port map( A => n5, B => n6, C => n7, Y => rdata(7));
   U7 : NOR2X1 port map( A => n8, B => n9, Y => n7);
   U8 : OAI22X1 port map( A => n10, B => n11, C => n12, D => n13, Y => n9);
   U9 : OAI22X1 port map( A => n14, B => n15, C => n16, D => n17, Y => n8);
   U10 : AOI22X1 port map( A => fiforeg_5_7_port, B => n18, C => 
                           fiforeg_4_7_port, D => n19, Y => n6);
   U11 : AOI22X1 port map( A => fiforeg_7_7_port, B => n20, C => 
                           fiforeg_6_7_port, D => n21, Y => n5);
   U12 : NAND3X1 port map( A => n22, B => n23, C => n24, Y => rdata(6));
   U13 : NOR2X1 port map( A => n25, B => n26, Y => n24);
   U14 : OAI22X1 port map( A => n10, B => n27, C => n12, D => n28, Y => n26);
   U15 : OAI22X1 port map( A => n14, B => n29, C => n16, D => n30, Y => n25);
   U16 : AOI22X1 port map( A => fiforeg_5_6_port, B => n18, C => 
                           fiforeg_4_6_port, D => n19, Y => n23);
   U17 : AOI22X1 port map( A => fiforeg_7_6_port, B => n20, C => 
                           fiforeg_6_6_port, D => n21, Y => n22);
   U18 : NAND3X1 port map( A => n31, B => n32, C => n33, Y => rdata(5));
   U19 : NOR2X1 port map( A => n34, B => n35, Y => n33);
   U20 : OAI22X1 port map( A => n10, B => n36, C => n12, D => n37, Y => n35);
   U21 : OAI22X1 port map( A => n14, B => n38, C => n16, D => n39, Y => n34);
   U22 : AOI22X1 port map( A => fiforeg_5_5_port, B => n18, C => 
                           fiforeg_4_5_port, D => n19, Y => n32);
   U23 : AOI22X1 port map( A => fiforeg_7_5_port, B => n20, C => 
                           fiforeg_6_5_port, D => n21, Y => n31);
   U24 : NAND3X1 port map( A => n40, B => n41, C => n42, Y => rdata(4));
   U25 : NOR2X1 port map( A => n43, B => n44, Y => n42);
   U26 : OAI22X1 port map( A => n10, B => n45, C => n12, D => n46, Y => n44);
   U27 : OAI22X1 port map( A => n14, B => n47, C => n16, D => n48, Y => n43);
   U28 : AOI22X1 port map( A => fiforeg_5_4_port, B => n18, C => 
                           fiforeg_4_4_port, D => n19, Y => n41);
   U29 : AOI22X1 port map( A => fiforeg_7_4_port, B => n20, C => 
                           fiforeg_6_4_port, D => n21, Y => n40);
   U30 : NAND3X1 port map( A => n49, B => n50, C => n51, Y => rdata(3));
   U31 : NOR2X1 port map( A => n52, B => n53, Y => n51);
   U32 : OAI22X1 port map( A => n10, B => n54, C => n12, D => n55, Y => n53);
   U33 : OAI22X1 port map( A => n14, B => n56, C => n16, D => n57, Y => n52);
   U34 : AOI22X1 port map( A => fiforeg_5_3_port, B => n18, C => 
                           fiforeg_4_3_port, D => n19, Y => n50);
   U35 : AOI22X1 port map( A => fiforeg_7_3_port, B => n20, C => 
                           fiforeg_6_3_port, D => n21, Y => n49);
   U36 : NAND3X1 port map( A => n58, B => n59, C => n60, Y => rdata(2));
   U37 : NOR2X1 port map( A => n61, B => n62, Y => n60);
   U38 : OAI22X1 port map( A => n10, B => n63, C => n12, D => n64, Y => n62);
   U39 : OAI22X1 port map( A => n14, B => n65, C => n16, D => n66, Y => n61);
   U40 : AOI22X1 port map( A => fiforeg_5_2_port, B => n18, C => 
                           fiforeg_4_2_port, D => n19, Y => n59);
   U41 : AOI22X1 port map( A => fiforeg_7_2_port, B => n20, C => 
                           fiforeg_6_2_port, D => n21, Y => n58);
   U42 : NAND3X1 port map( A => n67, B => n68, C => n69, Y => rdata(1));
   U43 : NOR2X1 port map( A => n70, B => n71, Y => n69);
   U44 : OAI22X1 port map( A => n10, B => n72, C => n12, D => n73, Y => n71);
   U45 : OAI22X1 port map( A => n14, B => n74, C => n16, D => n75, Y => n70);
   U46 : AOI22X1 port map( A => fiforeg_5_1_port, B => n18, C => 
                           fiforeg_4_1_port, D => n19, Y => n68);
   U47 : AOI22X1 port map( A => fiforeg_7_1_port, B => n20, C => 
                           fiforeg_6_1_port, D => n21, Y => n67);
   U48 : NAND3X1 port map( A => n76, B => n77, C => n78, Y => rdata(0));
   U49 : NOR2X1 port map( A => n79, B => n80, Y => n78);
   U50 : OAI22X1 port map( A => n10, B => n81, C => n12, D => n82, Y => n80);
   U51 : NAND3X1 port map( A => n83, B => n84, C => n85, Y => n12);
   U52 : NAND3X1 port map( A => n83, B => n84, C => raddr(0), Y => n10);
   U53 : OAI22X1 port map( A => n14, B => n86, C => n16, D => n87, Y => n79);
   U54 : NAND3X1 port map( A => n85, B => n84, C => raddr(1), Y => n16);
   U55 : NAND3X1 port map( A => raddr(0), B => n84, C => raddr(1), Y => n14);
   U56 : INVX1 port map( A => raddr(2), Y => n84);
   U57 : AOI22X1 port map( A => fiforeg_5_0_port, B => n18, C => 
                           fiforeg_4_0_port, D => n19, Y => n77);
   U58 : INVX1 port map( A => n88, Y => n19);
   U59 : NAND3X1 port map( A => n85, B => n83, C => raddr(2), Y => n88);
   U60 : INVX1 port map( A => n89, Y => n18);
   U61 : NAND3X1 port map( A => raddr(0), B => n83, C => raddr(2), Y => n89);
   U62 : INVX1 port map( A => raddr(1), Y => n83);
   U63 : AOI22X1 port map( A => fiforeg_7_0_port, B => n20, C => 
                           fiforeg_6_0_port, D => n21, Y => n76);
   U64 : INVX1 port map( A => n90, Y => n21);
   U65 : NAND3X1 port map( A => raddr(2), B => n85, C => raddr(1), Y => n90);
   U66 : INVX1 port map( A => raddr(0), Y => n85);
   U67 : INVX1 port map( A => n91, Y => n20);
   U68 : NAND3X1 port map( A => raddr(2), B => raddr(0), C => raddr(1), Y => 
                           n91);
   U69 : MUX2X1 port map( B => n92, A => n93, S => n94, Y => n275);
   U70 : INVX1 port map( A => fiforeg_7_0_port, Y => n93);
   U71 : MUX2X1 port map( B => n92, A => n82, S => n4, Y => n274);
   U72 : MUX2X1 port map( B => n92, A => n81, S => n2, Y => n273);
   U73 : MUX2X1 port map( B => n92, A => n87, S => n3, Y => n272);
   U74 : MUX2X1 port map( B => n92, A => n86, S => n1, Y => n271);
   U75 : MUX2X1 port map( B => n92, A => n99, S => n100, Y => n270);
   U76 : INVX1 port map( A => fiforeg_4_0_port, Y => n99);
   U77 : MUX2X1 port map( B => n92, A => n101, S => n102, Y => n269);
   U78 : INVX1 port map( A => fiforeg_5_0_port, Y => n101);
   U79 : MUX2X1 port map( B => n92, A => n103, S => n104, Y => n268);
   U80 : INVX1 port map( A => fiforeg_6_0_port, Y => n103);
   U81 : MUX2X1 port map( B => n105, A => wdata(0), S => wenable, Y => n92);
   U82 : NAND3X1 port map( A => n106, B => n107, C => n108, Y => n105);
   U83 : NOR2X1 port map( A => n109, B => n110, Y => n108);
   U84 : OAI22X1 port map( A => n81, B => n2, C => n82, D => n4, Y => n110);
   U85 : INVX1 port map( A => fiforeg_0_0_port, Y => n82);
   U86 : INVX1 port map( A => fiforeg_1_0_port, Y => n81);
   U87 : OAI22X1 port map( A => n86, B => n1, C => n87, D => n3, Y => n109);
   U88 : INVX1 port map( A => fiforeg_2_0_port, Y => n87);
   U89 : INVX1 port map( A => fiforeg_3_0_port, Y => n86);
   U90 : AOI22X1 port map( A => n111, B => fiforeg_6_0_port, C => n112, D => 
                           fiforeg_4_0_port, Y => n107);
   U91 : AOI22X1 port map( A => n113, B => fiforeg_5_0_port, C => n114, D => 
                           fiforeg_7_0_port, Y => n106);
   U92 : MUX2X1 port map( B => n115, A => n73, S => n4, Y => n267);
   U93 : MUX2X1 port map( B => n115, A => n72, S => n2, Y => n266);
   U94 : MUX2X1 port map( B => n115, A => n75, S => n3, Y => n265);
   U95 : MUX2X1 port map( B => n115, A => n74, S => n1, Y => n264);
   U96 : MUX2X1 port map( B => n115, A => n116, S => n100, Y => n263);
   U97 : INVX1 port map( A => fiforeg_4_1_port, Y => n116);
   U98 : MUX2X1 port map( B => n115, A => n117, S => n102, Y => n262);
   U99 : INVX1 port map( A => fiforeg_5_1_port, Y => n117);
   U100 : MUX2X1 port map( B => n115, A => n118, S => n104, Y => n261);
   U101 : INVX1 port map( A => fiforeg_6_1_port, Y => n118);
   U102 : MUX2X1 port map( B => n115, A => n119, S => n94, Y => n260);
   U103 : INVX1 port map( A => fiforeg_7_1_port, Y => n119);
   U104 : MUX2X1 port map( B => n120, A => wdata(1), S => wenable, Y => n115);
   U105 : NAND3X1 port map( A => n121, B => n122, C => n123, Y => n120);
   U106 : NOR2X1 port map( A => n124, B => n125, Y => n123);
   U107 : OAI22X1 port map( A => n72, B => n2, C => n73, D => n4, Y => n125);
   U108 : INVX1 port map( A => fiforeg_0_1_port, Y => n73);
   U109 : INVX1 port map( A => fiforeg_1_1_port, Y => n72);
   U110 : OAI22X1 port map( A => n74, B => n1, C => n75, D => n3, Y => n124);
   U111 : INVX1 port map( A => fiforeg_2_1_port, Y => n75);
   U112 : INVX1 port map( A => fiforeg_3_1_port, Y => n74);
   U113 : AOI22X1 port map( A => n111, B => fiforeg_6_1_port, C => n112, D => 
                           fiforeg_4_1_port, Y => n122);
   U114 : AOI22X1 port map( A => n113, B => fiforeg_5_1_port, C => n114, D => 
                           fiforeg_7_1_port, Y => n121);
   U115 : MUX2X1 port map( B => n126, A => n64, S => n4, Y => n259);
   U116 : MUX2X1 port map( B => n126, A => n63, S => n2, Y => n258);
   U117 : MUX2X1 port map( B => n126, A => n66, S => n3, Y => n257);
   U118 : MUX2X1 port map( B => n126, A => n65, S => n1, Y => n256);
   U119 : MUX2X1 port map( B => n126, A => n127, S => n100, Y => n255);
   U120 : INVX1 port map( A => fiforeg_4_2_port, Y => n127);
   U121 : MUX2X1 port map( B => n126, A => n128, S => n102, Y => n254);
   U122 : INVX1 port map( A => fiforeg_5_2_port, Y => n128);
   U123 : MUX2X1 port map( B => n126, A => n129, S => n104, Y => n253);
   U124 : INVX1 port map( A => fiforeg_6_2_port, Y => n129);
   U125 : MUX2X1 port map( B => n126, A => n130, S => n94, Y => n252);
   U126 : INVX1 port map( A => fiforeg_7_2_port, Y => n130);
   U127 : MUX2X1 port map( B => n131, A => wdata(2), S => wenable, Y => n126);
   U128 : NAND3X1 port map( A => n132, B => n133, C => n134, Y => n131);
   U129 : NOR2X1 port map( A => n135, B => n136, Y => n134);
   U130 : OAI22X1 port map( A => n63, B => n2, C => n64, D => n4, Y => n136);
   U131 : INVX1 port map( A => fiforeg_0_2_port, Y => n64);
   U132 : INVX1 port map( A => fiforeg_1_2_port, Y => n63);
   U133 : OAI22X1 port map( A => n65, B => n1, C => n66, D => n3, Y => n135);
   U134 : INVX1 port map( A => fiforeg_2_2_port, Y => n66);
   U135 : INVX1 port map( A => fiforeg_3_2_port, Y => n65);
   U136 : AOI22X1 port map( A => n111, B => fiforeg_6_2_port, C => n112, D => 
                           fiforeg_4_2_port, Y => n133);
   U137 : AOI22X1 port map( A => n113, B => fiforeg_5_2_port, C => n114, D => 
                           fiforeg_7_2_port, Y => n132);
   U138 : MUX2X1 port map( B => n137, A => n55, S => n4, Y => n251);
   U139 : MUX2X1 port map( B => n137, A => n54, S => n2, Y => n250);
   U140 : MUX2X1 port map( B => n137, A => n57, S => n3, Y => n249);
   U141 : MUX2X1 port map( B => n137, A => n56, S => n1, Y => n248);
   U142 : MUX2X1 port map( B => n137, A => n138, S => n100, Y => n247);
   U143 : INVX1 port map( A => fiforeg_4_3_port, Y => n138);
   U144 : MUX2X1 port map( B => n137, A => n139, S => n102, Y => n246);
   U145 : INVX1 port map( A => fiforeg_5_3_port, Y => n139);
   U146 : MUX2X1 port map( B => n137, A => n140, S => n104, Y => n245);
   U147 : INVX1 port map( A => fiforeg_6_3_port, Y => n140);
   U148 : MUX2X1 port map( B => n137, A => n141, S => n94, Y => n244);
   U149 : INVX1 port map( A => fiforeg_7_3_port, Y => n141);
   U150 : MUX2X1 port map( B => n142, A => wdata(3), S => wenable, Y => n137);
   U151 : NAND3X1 port map( A => n143, B => n144, C => n145, Y => n142);
   U152 : NOR2X1 port map( A => n146, B => n147, Y => n145);
   U153 : OAI22X1 port map( A => n54, B => n2, C => n55, D => n4, Y => n147);
   U154 : INVX1 port map( A => fiforeg_0_3_port, Y => n55);
   U155 : INVX1 port map( A => fiforeg_1_3_port, Y => n54);
   U156 : OAI22X1 port map( A => n56, B => n1, C => n57, D => n3, Y => n146);
   U157 : INVX1 port map( A => fiforeg_2_3_port, Y => n57);
   U158 : INVX1 port map( A => fiforeg_3_3_port, Y => n56);
   U159 : AOI22X1 port map( A => n111, B => fiforeg_6_3_port, C => n112, D => 
                           fiforeg_4_3_port, Y => n144);
   U160 : AOI22X1 port map( A => n113, B => fiforeg_5_3_port, C => n114, D => 
                           fiforeg_7_3_port, Y => n143);
   U161 : MUX2X1 port map( B => n148, A => n46, S => n4, Y => n243);
   U162 : MUX2X1 port map( B => n148, A => n45, S => n2, Y => n242);
   U163 : MUX2X1 port map( B => n148, A => n48, S => n3, Y => n241);
   U164 : MUX2X1 port map( B => n148, A => n47, S => n1, Y => n240);
   U165 : MUX2X1 port map( B => n148, A => n149, S => n100, Y => n239);
   U166 : INVX1 port map( A => fiforeg_4_4_port, Y => n149);
   U167 : MUX2X1 port map( B => n148, A => n150, S => n102, Y => n238);
   U168 : INVX1 port map( A => fiforeg_5_4_port, Y => n150);
   U169 : MUX2X1 port map( B => n148, A => n151, S => n104, Y => n237);
   U170 : INVX1 port map( A => fiforeg_6_4_port, Y => n151);
   U171 : MUX2X1 port map( B => n148, A => n152, S => n94, Y => n236);
   U172 : INVX1 port map( A => fiforeg_7_4_port, Y => n152);
   U173 : MUX2X1 port map( B => n153, A => wdata(4), S => wenable, Y => n148);
   U174 : NAND3X1 port map( A => n154, B => n155, C => n156, Y => n153);
   U175 : NOR2X1 port map( A => n157, B => n158, Y => n156);
   U176 : OAI22X1 port map( A => n45, B => n2, C => n46, D => n4, Y => n158);
   U177 : INVX1 port map( A => fiforeg_0_4_port, Y => n46);
   U178 : INVX1 port map( A => fiforeg_1_4_port, Y => n45);
   U179 : OAI22X1 port map( A => n47, B => n1, C => n48, D => n3, Y => n157);
   U180 : INVX1 port map( A => fiforeg_2_4_port, Y => n48);
   U181 : INVX1 port map( A => fiforeg_3_4_port, Y => n47);
   U182 : AOI22X1 port map( A => n111, B => fiforeg_6_4_port, C => n112, D => 
                           fiforeg_4_4_port, Y => n155);
   U183 : AOI22X1 port map( A => n113, B => fiforeg_5_4_port, C => n114, D => 
                           fiforeg_7_4_port, Y => n154);
   U184 : MUX2X1 port map( B => n159, A => n37, S => n4, Y => n235);
   U185 : MUX2X1 port map( B => n159, A => n36, S => n2, Y => n234);
   U186 : MUX2X1 port map( B => n159, A => n39, S => n3, Y => n233);
   U187 : MUX2X1 port map( B => n159, A => n38, S => n1, Y => n232);
   U188 : MUX2X1 port map( B => n159, A => n160, S => n100, Y => n231);
   U189 : INVX1 port map( A => fiforeg_4_5_port, Y => n160);
   U190 : MUX2X1 port map( B => n159, A => n161, S => n102, Y => n230);
   U191 : INVX1 port map( A => fiforeg_5_5_port, Y => n161);
   U192 : MUX2X1 port map( B => n159, A => n162, S => n104, Y => n229);
   U193 : INVX1 port map( A => fiforeg_6_5_port, Y => n162);
   U194 : MUX2X1 port map( B => n159, A => n163, S => n94, Y => n228);
   U195 : INVX1 port map( A => fiforeg_7_5_port, Y => n163);
   U196 : MUX2X1 port map( B => n164, A => wdata(5), S => wenable, Y => n159);
   U197 : NAND3X1 port map( A => n165, B => n166, C => n167, Y => n164);
   U198 : NOR2X1 port map( A => n168, B => n169, Y => n167);
   U199 : OAI22X1 port map( A => n36, B => n2, C => n37, D => n4, Y => n169);
   U200 : INVX1 port map( A => fiforeg_0_5_port, Y => n37);
   U201 : INVX1 port map( A => fiforeg_1_5_port, Y => n36);
   U202 : OAI22X1 port map( A => n38, B => n1, C => n39, D => n3, Y => n168);
   U203 : INVX1 port map( A => fiforeg_2_5_port, Y => n39);
   U204 : INVX1 port map( A => fiforeg_3_5_port, Y => n38);
   U205 : AOI22X1 port map( A => n111, B => fiforeg_6_5_port, C => n112, D => 
                           fiforeg_4_5_port, Y => n166);
   U206 : AOI22X1 port map( A => n113, B => fiforeg_5_5_port, C => n114, D => 
                           fiforeg_7_5_port, Y => n165);
   U207 : MUX2X1 port map( B => n170, A => n28, S => n4, Y => n227);
   U208 : MUX2X1 port map( B => n170, A => n27, S => n2, Y => n226);
   U209 : MUX2X1 port map( B => n170, A => n30, S => n3, Y => n225);
   U210 : MUX2X1 port map( B => n170, A => n29, S => n1, Y => n224);
   U211 : MUX2X1 port map( B => n170, A => n171, S => n100, Y => n223);
   U212 : INVX1 port map( A => fiforeg_4_6_port, Y => n171);
   U213 : MUX2X1 port map( B => n170, A => n172, S => n102, Y => n222);
   U214 : INVX1 port map( A => fiforeg_5_6_port, Y => n172);
   U215 : MUX2X1 port map( B => n170, A => n173, S => n104, Y => n221);
   U216 : INVX1 port map( A => fiforeg_6_6_port, Y => n173);
   U217 : MUX2X1 port map( B => n170, A => n174, S => n94, Y => n220);
   U218 : INVX1 port map( A => fiforeg_7_6_port, Y => n174);
   U219 : MUX2X1 port map( B => n175, A => wdata(6), S => wenable, Y => n170);
   U220 : NAND3X1 port map( A => n176, B => n177, C => n178, Y => n175);
   U221 : NOR2X1 port map( A => n179, B => n180, Y => n178);
   U222 : OAI22X1 port map( A => n27, B => n2, C => n28, D => n4, Y => n180);
   U223 : INVX1 port map( A => fiforeg_0_6_port, Y => n28);
   U224 : INVX1 port map( A => fiforeg_1_6_port, Y => n27);
   U225 : OAI22X1 port map( A => n29, B => n1, C => n30, D => n3, Y => n179);
   U226 : INVX1 port map( A => fiforeg_2_6_port, Y => n30);
   U227 : INVX1 port map( A => fiforeg_3_6_port, Y => n29);
   U228 : AOI22X1 port map( A => n111, B => fiforeg_6_6_port, C => n112, D => 
                           fiforeg_4_6_port, Y => n177);
   U229 : AOI22X1 port map( A => n113, B => fiforeg_5_6_port, C => n114, D => 
                           fiforeg_7_6_port, Y => n176);
   U230 : MUX2X1 port map( B => n181, A => n13, S => n4, Y => n219);
   U231 : MUX2X1 port map( B => n181, A => n11, S => n2, Y => n218);
   U232 : MUX2X1 port map( B => n181, A => n17, S => n3, Y => n217);
   U233 : MUX2X1 port map( B => n181, A => n15, S => n1, Y => n216);
   U234 : MUX2X1 port map( B => n181, A => n182, S => n100, Y => n215);
   U235 : INVX1 port map( A => fiforeg_4_7_port, Y => n182);
   U236 : MUX2X1 port map( B => n181, A => n183, S => n102, Y => n214);
   U237 : INVX1 port map( A => fiforeg_5_7_port, Y => n183);
   U238 : MUX2X1 port map( B => n181, A => n184, S => n104, Y => n213);
   U239 : INVX1 port map( A => fiforeg_6_7_port, Y => n184);
   U240 : MUX2X1 port map( B => n181, A => n185, S => n94, Y => n212);
   U241 : INVX1 port map( A => fiforeg_7_7_port, Y => n185);
   U242 : MUX2X1 port map( B => n186, A => wdata(7), S => wenable, Y => n181);
   U243 : NAND3X1 port map( A => n187, B => n188, C => n189, Y => n186);
   U244 : NOR2X1 port map( A => n190, B => n191, Y => n189);
   U245 : OAI22X1 port map( A => n11, B => n2, C => n13, D => n4, Y => n191);
   U246 : NAND3X1 port map( A => n192, B => n193, C => n194, Y => n95);
   U247 : INVX1 port map( A => fiforeg_0_7_port, Y => n13);
   U248 : NAND3X1 port map( A => n192, B => n193, C => waddr(0), Y => n96);
   U249 : INVX1 port map( A => fiforeg_1_7_port, Y => n11);
   U250 : OAI22X1 port map( A => n15, B => n1, C => n17, D => n3, Y => n190);
   U251 : NAND3X1 port map( A => n194, B => n193, C => waddr(1), Y => n97);
   U252 : INVX1 port map( A => fiforeg_2_7_port, Y => n17);
   U253 : NAND3X1 port map( A => waddr(0), B => n193, C => waddr(1), Y => n98);
   U254 : INVX1 port map( A => waddr(2), Y => n193);
   U255 : INVX1 port map( A => fiforeg_3_7_port, Y => n15);
   U256 : AOI22X1 port map( A => n111, B => fiforeg_6_7_port, C => n112, D => 
                           fiforeg_4_7_port, Y => n188);
   U257 : INVX1 port map( A => n100, Y => n112);
   U258 : NAND3X1 port map( A => n194, B => n192, C => waddr(2), Y => n100);
   U259 : INVX1 port map( A => n104, Y => n111);
   U260 : NAND3X1 port map( A => waddr(1), B => n194, C => waddr(2), Y => n104)
                           ;
   U261 : INVX1 port map( A => waddr(0), Y => n194);
   U262 : AOI22X1 port map( A => n113, B => fiforeg_5_7_port, C => n114, D => 
                           fiforeg_7_7_port, Y => n187);
   U263 : INVX1 port map( A => n94, Y => n114);
   U264 : NAND3X1 port map( A => waddr(1), B => waddr(0), C => waddr(2), Y => 
                           n94);
   U265 : INVX1 port map( A => n102, Y => n113);
   U266 : NAND3X1 port map( A => waddr(0), B => n192, C => waddr(2), Y => n102)
                           ;
   U267 : INVX1 port map( A => waddr(1), Y => n192);

end SYN_rtl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_RCV_FIFO.all;

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

use work.CONV_PACK_RCV_FIFO.all;

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
