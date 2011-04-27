
library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

package CONV_PACK_ENCRYPTION is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_ENCRYPTION;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ENCRYPTION.all;

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

use work.CONV_PACK_ENCRYPTION.all;

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

use work.CONV_PACK_ENCRYPTION.all;

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

use work.CONV_PACK_ENCRYPTION.all;

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

use work.CONV_PACK_ENCRYPTION.all;

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
      n193, n194, n195, n196, n197 : std_logic;

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
   U2 : INVX1 port map( A => n99, Y => n1);
   U3 : INVX2 port map( A => n1, Y => n2);
   U4 : INVX1 port map( A => n101, Y => n3);
   U5 : INVX2 port map( A => n3, Y => n4);
   U6 : INVX1 port map( A => n100, Y => n5);
   U7 : INVX2 port map( A => n5, Y => n6);
   U8 : BUFX2 port map( A => n98, Y => n7);
   U9 : NAND3X1 port map( A => n8, B => n9, C => n10, Y => rdata(7));
   U10 : NOR2X1 port map( A => n11, B => n12, Y => n10);
   U11 : OAI22X1 port map( A => n13, B => n14, C => n15, D => n16, Y => n12);
   U12 : OAI22X1 port map( A => n17, B => n18, C => n19, D => n20, Y => n11);
   U13 : AOI22X1 port map( A => fiforeg_5_7_port, B => n21, C => 
                           fiforeg_4_7_port, D => n22, Y => n9);
   U14 : AOI22X1 port map( A => fiforeg_7_7_port, B => n23, C => 
                           fiforeg_6_7_port, D => n24, Y => n8);
   U15 : NAND3X1 port map( A => n25, B => n26, C => n27, Y => rdata(6));
   U16 : NOR2X1 port map( A => n28, B => n29, Y => n27);
   U17 : OAI22X1 port map( A => n13, B => n30, C => n15, D => n31, Y => n29);
   U18 : OAI22X1 port map( A => n17, B => n32, C => n19, D => n33, Y => n28);
   U19 : AOI22X1 port map( A => fiforeg_5_6_port, B => n21, C => 
                           fiforeg_4_6_port, D => n22, Y => n26);
   U20 : AOI22X1 port map( A => fiforeg_7_6_port, B => n23, C => 
                           fiforeg_6_6_port, D => n24, Y => n25);
   U21 : NAND3X1 port map( A => n34, B => n35, C => n36, Y => rdata(5));
   U22 : NOR2X1 port map( A => n37, B => n38, Y => n36);
   U23 : OAI22X1 port map( A => n13, B => n39, C => n15, D => n40, Y => n38);
   U24 : OAI22X1 port map( A => n17, B => n41, C => n19, D => n42, Y => n37);
   U25 : AOI22X1 port map( A => fiforeg_5_5_port, B => n21, C => 
                           fiforeg_4_5_port, D => n22, Y => n35);
   U26 : AOI22X1 port map( A => fiforeg_7_5_port, B => n23, C => 
                           fiforeg_6_5_port, D => n24, Y => n34);
   U27 : NAND3X1 port map( A => n43, B => n44, C => n45, Y => rdata(4));
   U28 : NOR2X1 port map( A => n46, B => n47, Y => n45);
   U29 : OAI22X1 port map( A => n13, B => n48, C => n15, D => n49, Y => n47);
   U30 : OAI22X1 port map( A => n17, B => n50, C => n19, D => n51, Y => n46);
   U31 : AOI22X1 port map( A => fiforeg_5_4_port, B => n21, C => 
                           fiforeg_4_4_port, D => n22, Y => n44);
   U32 : AOI22X1 port map( A => fiforeg_7_4_port, B => n23, C => 
                           fiforeg_6_4_port, D => n24, Y => n43);
   U33 : NAND3X1 port map( A => n52, B => n53, C => n54, Y => rdata(3));
   U34 : NOR2X1 port map( A => n55, B => n56, Y => n54);
   U35 : OAI22X1 port map( A => n13, B => n57, C => n15, D => n58, Y => n56);
   U36 : OAI22X1 port map( A => n17, B => n59, C => n19, D => n60, Y => n55);
   U37 : AOI22X1 port map( A => fiforeg_5_3_port, B => n21, C => 
                           fiforeg_4_3_port, D => n22, Y => n53);
   U38 : AOI22X1 port map( A => fiforeg_7_3_port, B => n23, C => 
                           fiforeg_6_3_port, D => n24, Y => n52);
   U39 : NAND3X1 port map( A => n61, B => n62, C => n63, Y => rdata(2));
   U40 : NOR2X1 port map( A => n64, B => n65, Y => n63);
   U41 : OAI22X1 port map( A => n13, B => n66, C => n15, D => n67, Y => n65);
   U42 : OAI22X1 port map( A => n17, B => n68, C => n19, D => n69, Y => n64);
   U43 : AOI22X1 port map( A => fiforeg_5_2_port, B => n21, C => 
                           fiforeg_4_2_port, D => n22, Y => n62);
   U44 : AOI22X1 port map( A => fiforeg_7_2_port, B => n23, C => 
                           fiforeg_6_2_port, D => n24, Y => n61);
   U45 : NAND3X1 port map( A => n70, B => n71, C => n72, Y => rdata(1));
   U46 : NOR2X1 port map( A => n73, B => n74, Y => n72);
   U47 : OAI22X1 port map( A => n13, B => n75, C => n15, D => n76, Y => n74);
   U48 : OAI22X1 port map( A => n17, B => n77, C => n19, D => n78, Y => n73);
   U49 : AOI22X1 port map( A => fiforeg_5_1_port, B => n21, C => 
                           fiforeg_4_1_port, D => n22, Y => n71);
   U50 : AOI22X1 port map( A => fiforeg_7_1_port, B => n23, C => 
                           fiforeg_6_1_port, D => n24, Y => n70);
   U51 : NAND3X1 port map( A => n79, B => n80, C => n81, Y => rdata(0));
   U52 : NOR2X1 port map( A => n82, B => n83, Y => n81);
   U53 : OAI22X1 port map( A => n13, B => n84, C => n15, D => n85, Y => n83);
   U54 : NAND3X1 port map( A => n86, B => n87, C => n88, Y => n15);
   U55 : NAND3X1 port map( A => n86, B => n87, C => raddr(0), Y => n13);
   U56 : OAI22X1 port map( A => n17, B => n89, C => n19, D => n90, Y => n82);
   U57 : NAND3X1 port map( A => n88, B => n87, C => raddr(1), Y => n19);
   U58 : NAND3X1 port map( A => raddr(0), B => n87, C => raddr(1), Y => n17);
   U59 : INVX1 port map( A => raddr(2), Y => n87);
   U60 : AOI22X1 port map( A => fiforeg_5_0_port, B => n21, C => 
                           fiforeg_4_0_port, D => n22, Y => n80);
   U61 : INVX1 port map( A => n91, Y => n22);
   U62 : NAND3X1 port map( A => n88, B => n86, C => raddr(2), Y => n91);
   U63 : INVX1 port map( A => n92, Y => n21);
   U64 : NAND3X1 port map( A => raddr(0), B => n86, C => raddr(2), Y => n92);
   U65 : INVX1 port map( A => raddr(1), Y => n86);
   U66 : AOI22X1 port map( A => fiforeg_7_0_port, B => n23, C => 
                           fiforeg_6_0_port, D => n24, Y => n79);
   U67 : INVX1 port map( A => n93, Y => n24);
   U68 : NAND3X1 port map( A => raddr(2), B => n88, C => raddr(1), Y => n93);
   U69 : INVX1 port map( A => raddr(0), Y => n88);
   U70 : INVX1 port map( A => n94, Y => n23);
   U71 : NAND3X1 port map( A => raddr(2), B => raddr(0), C => raddr(1), Y => 
                           n94);
   U72 : MUX2X1 port map( B => n95, A => n96, S => n97, Y => n275);
   U73 : INVX1 port map( A => fiforeg_7_0_port, Y => n96);
   U74 : MUX2X1 port map( B => n95, A => n85, S => n7, Y => n274);
   U75 : MUX2X1 port map( B => n95, A => n84, S => n2, Y => n273);
   U76 : MUX2X1 port map( B => n95, A => n90, S => n6, Y => n272);
   U77 : MUX2X1 port map( B => n95, A => n89, S => n4, Y => n271);
   U78 : MUX2X1 port map( B => n95, A => n102, S => n103, Y => n270);
   U79 : INVX1 port map( A => fiforeg_4_0_port, Y => n102);
   U80 : MUX2X1 port map( B => n95, A => n104, S => n105, Y => n269);
   U81 : INVX1 port map( A => fiforeg_5_0_port, Y => n104);
   U82 : MUX2X1 port map( B => n95, A => n106, S => n107, Y => n268);
   U83 : INVX1 port map( A => fiforeg_6_0_port, Y => n106);
   U84 : MUX2X1 port map( B => n108, A => wdata(0), S => wenable, Y => n95);
   U85 : NAND3X1 port map( A => n109, B => n110, C => n111, Y => n108);
   U86 : NOR2X1 port map( A => n112, B => n113, Y => n111);
   U87 : OAI22X1 port map( A => n84, B => n2, C => n85, D => n7, Y => n113);
   U88 : INVX1 port map( A => fiforeg_0_0_port, Y => n85);
   U89 : INVX1 port map( A => fiforeg_1_0_port, Y => n84);
   U90 : OAI22X1 port map( A => n89, B => n4, C => n90, D => n6, Y => n112);
   U91 : INVX1 port map( A => fiforeg_2_0_port, Y => n90);
   U92 : INVX1 port map( A => fiforeg_3_0_port, Y => n89);
   U93 : AOI22X1 port map( A => n114, B => fiforeg_6_0_port, C => n115, D => 
                           fiforeg_4_0_port, Y => n110);
   U94 : AOI22X1 port map( A => n116, B => fiforeg_5_0_port, C => n117, D => 
                           fiforeg_7_0_port, Y => n109);
   U95 : MUX2X1 port map( B => n118, A => n76, S => n7, Y => n267);
   U96 : MUX2X1 port map( B => n118, A => n75, S => n2, Y => n266);
   U97 : MUX2X1 port map( B => n118, A => n78, S => n6, Y => n265);
   U98 : MUX2X1 port map( B => n118, A => n77, S => n4, Y => n264);
   U99 : MUX2X1 port map( B => n118, A => n119, S => n103, Y => n263);
   U100 : INVX1 port map( A => fiforeg_4_1_port, Y => n119);
   U101 : MUX2X1 port map( B => n118, A => n120, S => n105, Y => n262);
   U102 : INVX1 port map( A => fiforeg_5_1_port, Y => n120);
   U103 : MUX2X1 port map( B => n118, A => n121, S => n107, Y => n261);
   U104 : INVX1 port map( A => fiforeg_6_1_port, Y => n121);
   U105 : MUX2X1 port map( B => n118, A => n122, S => n97, Y => n260);
   U106 : INVX1 port map( A => fiforeg_7_1_port, Y => n122);
   U107 : MUX2X1 port map( B => n123, A => wdata(1), S => wenable, Y => n118);
   U108 : NAND3X1 port map( A => n124, B => n125, C => n126, Y => n123);
   U109 : NOR2X1 port map( A => n127, B => n128, Y => n126);
   U110 : OAI22X1 port map( A => n75, B => n2, C => n76, D => n7, Y => n128);
   U111 : INVX1 port map( A => fiforeg_0_1_port, Y => n76);
   U112 : INVX1 port map( A => fiforeg_1_1_port, Y => n75);
   U113 : OAI22X1 port map( A => n77, B => n4, C => n78, D => n6, Y => n127);
   U114 : INVX1 port map( A => fiforeg_2_1_port, Y => n78);
   U115 : INVX1 port map( A => fiforeg_3_1_port, Y => n77);
   U116 : AOI22X1 port map( A => n114, B => fiforeg_6_1_port, C => n115, D => 
                           fiforeg_4_1_port, Y => n125);
   U117 : AOI22X1 port map( A => n116, B => fiforeg_5_1_port, C => n117, D => 
                           fiforeg_7_1_port, Y => n124);
   U118 : MUX2X1 port map( B => n129, A => n67, S => n7, Y => n259);
   U119 : MUX2X1 port map( B => n129, A => n66, S => n2, Y => n258);
   U120 : MUX2X1 port map( B => n129, A => n69, S => n6, Y => n257);
   U121 : MUX2X1 port map( B => n129, A => n68, S => n4, Y => n256);
   U122 : MUX2X1 port map( B => n129, A => n130, S => n103, Y => n255);
   U123 : INVX1 port map( A => fiforeg_4_2_port, Y => n130);
   U124 : MUX2X1 port map( B => n129, A => n131, S => n105, Y => n254);
   U125 : INVX1 port map( A => fiforeg_5_2_port, Y => n131);
   U126 : MUX2X1 port map( B => n129, A => n132, S => n107, Y => n253);
   U127 : INVX1 port map( A => fiforeg_6_2_port, Y => n132);
   U128 : MUX2X1 port map( B => n129, A => n133, S => n97, Y => n252);
   U129 : INVX1 port map( A => fiforeg_7_2_port, Y => n133);
   U130 : MUX2X1 port map( B => n134, A => wdata(2), S => wenable, Y => n129);
   U131 : NAND3X1 port map( A => n135, B => n136, C => n137, Y => n134);
   U132 : NOR2X1 port map( A => n138, B => n139, Y => n137);
   U133 : OAI22X1 port map( A => n66, B => n2, C => n67, D => n7, Y => n139);
   U134 : INVX1 port map( A => fiforeg_0_2_port, Y => n67);
   U135 : INVX1 port map( A => fiforeg_1_2_port, Y => n66);
   U136 : OAI22X1 port map( A => n68, B => n4, C => n69, D => n6, Y => n138);
   U137 : INVX1 port map( A => fiforeg_2_2_port, Y => n69);
   U138 : INVX1 port map( A => fiforeg_3_2_port, Y => n68);
   U139 : AOI22X1 port map( A => n114, B => fiforeg_6_2_port, C => n115, D => 
                           fiforeg_4_2_port, Y => n136);
   U140 : AOI22X1 port map( A => n116, B => fiforeg_5_2_port, C => n117, D => 
                           fiforeg_7_2_port, Y => n135);
   U141 : MUX2X1 port map( B => n140, A => n58, S => n7, Y => n251);
   U142 : MUX2X1 port map( B => n140, A => n57, S => n2, Y => n250);
   U143 : MUX2X1 port map( B => n140, A => n60, S => n6, Y => n249);
   U144 : MUX2X1 port map( B => n140, A => n59, S => n4, Y => n248);
   U145 : MUX2X1 port map( B => n140, A => n141, S => n103, Y => n247);
   U146 : INVX1 port map( A => fiforeg_4_3_port, Y => n141);
   U147 : MUX2X1 port map( B => n140, A => n142, S => n105, Y => n246);
   U148 : INVX1 port map( A => fiforeg_5_3_port, Y => n142);
   U149 : MUX2X1 port map( B => n140, A => n143, S => n107, Y => n245);
   U150 : INVX1 port map( A => fiforeg_6_3_port, Y => n143);
   U151 : MUX2X1 port map( B => n140, A => n144, S => n97, Y => n244);
   U152 : INVX1 port map( A => fiforeg_7_3_port, Y => n144);
   U153 : MUX2X1 port map( B => n145, A => wdata(3), S => wenable, Y => n140);
   U154 : NAND3X1 port map( A => n146, B => n147, C => n148, Y => n145);
   U155 : NOR2X1 port map( A => n149, B => n150, Y => n148);
   U156 : OAI22X1 port map( A => n57, B => n2, C => n58, D => n7, Y => n150);
   U157 : INVX1 port map( A => fiforeg_0_3_port, Y => n58);
   U158 : INVX1 port map( A => fiforeg_1_3_port, Y => n57);
   U159 : OAI22X1 port map( A => n59, B => n4, C => n60, D => n6, Y => n149);
   U160 : INVX1 port map( A => fiforeg_2_3_port, Y => n60);
   U161 : INVX1 port map( A => fiforeg_3_3_port, Y => n59);
   U162 : AOI22X1 port map( A => n114, B => fiforeg_6_3_port, C => n115, D => 
                           fiforeg_4_3_port, Y => n147);
   U163 : AOI22X1 port map( A => n116, B => fiforeg_5_3_port, C => n117, D => 
                           fiforeg_7_3_port, Y => n146);
   U164 : MUX2X1 port map( B => n151, A => n49, S => n7, Y => n243);
   U165 : MUX2X1 port map( B => n151, A => n48, S => n2, Y => n242);
   U166 : MUX2X1 port map( B => n151, A => n51, S => n6, Y => n241);
   U167 : MUX2X1 port map( B => n151, A => n50, S => n4, Y => n240);
   U168 : MUX2X1 port map( B => n151, A => n152, S => n103, Y => n239);
   U169 : INVX1 port map( A => fiforeg_4_4_port, Y => n152);
   U170 : MUX2X1 port map( B => n151, A => n153, S => n105, Y => n238);
   U171 : INVX1 port map( A => fiforeg_5_4_port, Y => n153);
   U172 : MUX2X1 port map( B => n151, A => n154, S => n107, Y => n237);
   U173 : INVX1 port map( A => fiforeg_6_4_port, Y => n154);
   U174 : MUX2X1 port map( B => n151, A => n155, S => n97, Y => n236);
   U175 : INVX1 port map( A => fiforeg_7_4_port, Y => n155);
   U176 : MUX2X1 port map( B => n156, A => wdata(4), S => wenable, Y => n151);
   U177 : NAND3X1 port map( A => n157, B => n158, C => n159, Y => n156);
   U178 : NOR2X1 port map( A => n160, B => n161, Y => n159);
   U179 : OAI22X1 port map( A => n48, B => n2, C => n49, D => n7, Y => n161);
   U180 : INVX1 port map( A => fiforeg_0_4_port, Y => n49);
   U181 : INVX1 port map( A => fiforeg_1_4_port, Y => n48);
   U182 : OAI22X1 port map( A => n50, B => n4, C => n51, D => n6, Y => n160);
   U183 : INVX1 port map( A => fiforeg_2_4_port, Y => n51);
   U184 : INVX1 port map( A => fiforeg_3_4_port, Y => n50);
   U185 : AOI22X1 port map( A => n114, B => fiforeg_6_4_port, C => n115, D => 
                           fiforeg_4_4_port, Y => n158);
   U186 : AOI22X1 port map( A => n116, B => fiforeg_5_4_port, C => n117, D => 
                           fiforeg_7_4_port, Y => n157);
   U187 : MUX2X1 port map( B => n162, A => n40, S => n7, Y => n235);
   U188 : MUX2X1 port map( B => n162, A => n39, S => n2, Y => n234);
   U189 : MUX2X1 port map( B => n162, A => n42, S => n6, Y => n233);
   U190 : MUX2X1 port map( B => n162, A => n41, S => n4, Y => n232);
   U191 : MUX2X1 port map( B => n162, A => n163, S => n103, Y => n231);
   U192 : INVX1 port map( A => fiforeg_4_5_port, Y => n163);
   U193 : MUX2X1 port map( B => n162, A => n164, S => n105, Y => n230);
   U194 : INVX1 port map( A => fiforeg_5_5_port, Y => n164);
   U195 : MUX2X1 port map( B => n162, A => n165, S => n107, Y => n229);
   U196 : INVX1 port map( A => fiforeg_6_5_port, Y => n165);
   U197 : MUX2X1 port map( B => n162, A => n166, S => n97, Y => n228);
   U198 : INVX1 port map( A => fiforeg_7_5_port, Y => n166);
   U199 : MUX2X1 port map( B => n167, A => wdata(5), S => wenable, Y => n162);
   U200 : NAND3X1 port map( A => n168, B => n169, C => n170, Y => n167);
   U201 : NOR2X1 port map( A => n171, B => n172, Y => n170);
   U202 : OAI22X1 port map( A => n39, B => n2, C => n40, D => n7, Y => n172);
   U203 : INVX1 port map( A => fiforeg_0_5_port, Y => n40);
   U204 : INVX1 port map( A => fiforeg_1_5_port, Y => n39);
   U205 : OAI22X1 port map( A => n41, B => n4, C => n42, D => n6, Y => n171);
   U206 : INVX1 port map( A => fiforeg_2_5_port, Y => n42);
   U207 : INVX1 port map( A => fiforeg_3_5_port, Y => n41);
   U208 : AOI22X1 port map( A => n114, B => fiforeg_6_5_port, C => n115, D => 
                           fiforeg_4_5_port, Y => n169);
   U209 : AOI22X1 port map( A => n116, B => fiforeg_5_5_port, C => n117, D => 
                           fiforeg_7_5_port, Y => n168);
   U210 : MUX2X1 port map( B => n173, A => n31, S => n7, Y => n227);
   U211 : MUX2X1 port map( B => n173, A => n30, S => n2, Y => n226);
   U212 : MUX2X1 port map( B => n173, A => n33, S => n6, Y => n225);
   U213 : MUX2X1 port map( B => n173, A => n32, S => n4, Y => n224);
   U214 : MUX2X1 port map( B => n173, A => n174, S => n103, Y => n223);
   U215 : INVX1 port map( A => fiforeg_4_6_port, Y => n174);
   U216 : MUX2X1 port map( B => n173, A => n175, S => n105, Y => n222);
   U217 : INVX1 port map( A => fiforeg_5_6_port, Y => n175);
   U218 : MUX2X1 port map( B => n173, A => n176, S => n107, Y => n221);
   U219 : INVX1 port map( A => fiforeg_6_6_port, Y => n176);
   U220 : MUX2X1 port map( B => n173, A => n177, S => n97, Y => n220);
   U221 : INVX1 port map( A => fiforeg_7_6_port, Y => n177);
   U222 : MUX2X1 port map( B => n178, A => wdata(6), S => wenable, Y => n173);
   U223 : NAND3X1 port map( A => n179, B => n180, C => n181, Y => n178);
   U224 : NOR2X1 port map( A => n182, B => n183, Y => n181);
   U225 : OAI22X1 port map( A => n30, B => n2, C => n31, D => n7, Y => n183);
   U226 : INVX1 port map( A => fiforeg_0_6_port, Y => n31);
   U227 : INVX1 port map( A => fiforeg_1_6_port, Y => n30);
   U228 : OAI22X1 port map( A => n32, B => n4, C => n33, D => n6, Y => n182);
   U229 : INVX1 port map( A => fiforeg_2_6_port, Y => n33);
   U230 : INVX1 port map( A => fiforeg_3_6_port, Y => n32);
   U231 : AOI22X1 port map( A => n114, B => fiforeg_6_6_port, C => n115, D => 
                           fiforeg_4_6_port, Y => n180);
   U232 : AOI22X1 port map( A => n116, B => fiforeg_5_6_port, C => n117, D => 
                           fiforeg_7_6_port, Y => n179);
   U233 : MUX2X1 port map( B => n184, A => n16, S => n7, Y => n219);
   U234 : MUX2X1 port map( B => n184, A => n14, S => n2, Y => n218);
   U235 : MUX2X1 port map( B => n184, A => n20, S => n6, Y => n217);
   U236 : MUX2X1 port map( B => n184, A => n18, S => n4, Y => n216);
   U237 : MUX2X1 port map( B => n184, A => n185, S => n103, Y => n215);
   U238 : INVX1 port map( A => fiforeg_4_7_port, Y => n185);
   U239 : MUX2X1 port map( B => n184, A => n186, S => n105, Y => n214);
   U240 : INVX1 port map( A => fiforeg_5_7_port, Y => n186);
   U241 : MUX2X1 port map( B => n184, A => n187, S => n107, Y => n213);
   U242 : INVX1 port map( A => fiforeg_6_7_port, Y => n187);
   U243 : MUX2X1 port map( B => n184, A => n188, S => n97, Y => n212);
   U244 : INVX1 port map( A => fiforeg_7_7_port, Y => n188);
   U245 : MUX2X1 port map( B => n189, A => wdata(7), S => wenable, Y => n184);
   U246 : NAND3X1 port map( A => n190, B => n191, C => n192, Y => n189);
   U247 : NOR2X1 port map( A => n193, B => n194, Y => n192);
   U248 : OAI22X1 port map( A => n14, B => n2, C => n16, D => n7, Y => n194);
   U249 : NAND3X1 port map( A => n195, B => n196, C => n197, Y => n98);
   U250 : INVX1 port map( A => fiforeg_0_7_port, Y => n16);
   U251 : NAND3X1 port map( A => n195, B => n196, C => waddr(0), Y => n99);
   U252 : INVX1 port map( A => fiforeg_1_7_port, Y => n14);
   U253 : OAI22X1 port map( A => n18, B => n4, C => n20, D => n6, Y => n193);
   U254 : NAND3X1 port map( A => n197, B => n196, C => waddr(1), Y => n100);
   U255 : INVX1 port map( A => fiforeg_2_7_port, Y => n20);
   U256 : NAND3X1 port map( A => waddr(0), B => n196, C => waddr(1), Y => n101)
                           ;
   U257 : INVX1 port map( A => waddr(2), Y => n196);
   U258 : INVX1 port map( A => fiforeg_3_7_port, Y => n18);
   U259 : AOI22X1 port map( A => n114, B => fiforeg_6_7_port, C => n115, D => 
                           fiforeg_4_7_port, Y => n191);
   U260 : INVX1 port map( A => n103, Y => n115);
   U261 : NAND3X1 port map( A => n197, B => n195, C => waddr(2), Y => n103);
   U262 : INVX1 port map( A => n107, Y => n114);
   U263 : NAND3X1 port map( A => waddr(1), B => n197, C => waddr(2), Y => n107)
                           ;
   U264 : INVX1 port map( A => waddr(0), Y => n197);
   U265 : AOI22X1 port map( A => n116, B => fiforeg_5_7_port, C => n117, D => 
                           fiforeg_7_7_port, Y => n190);
   U266 : INVX1 port map( A => n97, Y => n117);
   U267 : NAND3X1 port map( A => waddr(1), B => waddr(0), C => waddr(2), Y => 
                           n97);
   U268 : INVX1 port map( A => n105, Y => n116);
   U269 : NAND3X1 port map( A => waddr(0), B => n195, C => waddr(2), Y => n105)
                           ;
   U270 : INVX1 port map( A => waddr(1), Y => n195);

end SYN_rtl;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ENCRYPTION.all;

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

use work.CONV_PACK_ENCRYPTION.all;

entity e_rndCount is

   port( CLK, RST, START : in std_logic;  IN_SELECT, FIESTELCLK : out std_logic
         ;  RND_CNT : out std_logic_vector (3 downto 0));

end e_rndCount;

architecture SYN_behav of e_rndCount is

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
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal RND_CNT_3_port, RND_CNT_2_port, RND_CNT_1_port, RND_CNT_0_port, n1, 
      n2, n3, n5, n16, n17, n18, n19, n4, n7, n9, n10, n11, n12, n13, n14, n15,
      n20, n21, n22, n23, n24, n25, n26 : std_logic;

begin
   RND_CNT <= ( RND_CNT_3_port, RND_CNT_2_port, RND_CNT_1_port, RND_CNT_0_port 
      );
   
   CUR_CNT_reg_0_inst : DFFSR port map( D => n19, CLK => CLK, R => n26, S => n5
                           , Q => RND_CNT_0_port);
   CUR_CNT_reg_1_inst : DFFSR port map( D => n18, CLK => CLK, R => n26, S => n3
                           , Q => RND_CNT_1_port);
   CUR_CNT_reg_2_inst : DFFSR port map( D => n17, CLK => CLK, R => n26, S => n2
                           , Q => RND_CNT_2_port);
   CUR_CNT_reg_3_inst : DFFSR port map( D => n16, CLK => CLK, R => n26, S => n1
                           , Q => RND_CNT_3_port);
   n1 <= '1';
   n2 <= '1';
   n3 <= '1';
   n5 <= '1';
   U6 : NOR2X1 port map( A => n24, B => START, Y => n4);
   U8 : INVX4 port map( A => n4, Y => IN_SELECT);
   U9 : NAND2X1 port map( A => CLK, B => n24, Y => n7);
   U10 : INVX4 port map( A => n7, Y => FIESTELCLK);
   U11 : NOR2X1 port map( A => RST, B => n9, Y => n26);
   U12 : INVX1 port map( A => START, Y => n9);
   U13 : XNOR2X1 port map( A => RND_CNT_0_port, B => n10, Y => n19);
   U14 : XNOR2X1 port map( A => n11, B => n12, Y => n18);
   U15 : XNOR2X1 port map( A => RND_CNT_2_port, B => n13, Y => n17);
   U16 : NAND2X1 port map( A => n12, B => RND_CNT_1_port, Y => n13);
   U17 : OAI21X1 port map( A => n14, B => n15, C => n20, Y => n16);
   U18 : INVX1 port map( A => RND_CNT_3_port, Y => n20);
   U19 : NAND2X1 port map( A => RND_CNT_2_port, B => RND_CNT_1_port, Y => n15);
   U20 : INVX1 port map( A => n12, Y => n14);
   U21 : NOR2X1 port map( A => n10, B => n21, Y => n12);
   U22 : OAI21X1 port map( A => n22, B => n23, C => START, Y => n10);
   U23 : NAND2X1 port map( A => RND_CNT_3_port, B => RND_CNT_2_port, Y => n23);
   U24 : NAND2X1 port map( A => RND_CNT_1_port, B => RND_CNT_0_port, Y => n22);
   U25 : NAND3X1 port map( A => n21, B => n11, C => n25, Y => n24);
   U26 : NOR2X1 port map( A => RND_CNT_3_port, B => RND_CNT_2_port, Y => n25);
   U27 : INVX1 port map( A => RND_CNT_1_port, Y => n11);
   U28 : INVX1 port map( A => RND_CNT_0_port, Y => n21);

end SYN_behav;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ENCRYPTION.all;

entity e_rkeyGen is

   port( RNDNUM : in std_logic_vector (3 downto 0);  START_RST, IN_SELECT, CLK 
         : in std_logic;  RKEY : out std_logic_vector (47 downto 0));

end e_rkeyGen;

architecture SYN_behav of e_rkeyGen is

   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal RKEY_47_port, RKEY_46_port, RKEY_45_port, RKEY_44_port, RKEY_43_port,
      RKEY_42_port, RKEY_41_port, RKEY_40_port, RKEY_39_port, RKEY_38_port, 
      RKEY_37_port, RKEY_36_port, RKEY_35_port, RKEY_34_port, RKEY_33_port, 
      RKEY_32_port, RKEY_31_port, RKEY_30_port, RKEY_29_port, RKEY_28_port, 
      RKEY_27_port, RKEY_26_port, RKEY_25_port, RKEY_24_port, RKEY_23_port, 
      RKEY_22_port, RKEY_21_port, RKEY_20_port, RKEY_19_port, RKEY_18_port, 
      RKEY_17_port, RKEY_16_port, RKEY_15_port, RKEY_14_port, RKEY_13_port, 
      RKEY_12_port, RKEY_11_port, RKEY_10_port, RKEY_9_port, RKEY_8_port, 
      RKEY_7_port, RKEY_6_port, RKEY_5_port, RKEY_4_port, RKEY_3_port, 
      RKEY_2_port, RKEY_1_port, RKEY_0_port, ENC_LEFT_23_port, ENC_LEFT_12, 
      ENC_LEFT_7, ENC_LEFT_4, ENC_RIGHT_22_port, ENC_RIGHT_19, ENC_RIGHT_15, 
      ENC_RIGHT_6, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
      n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29
      , n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, 
      n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56 : 
      std_logic;

begin
   RKEY <= ( RKEY_47_port, RKEY_46_port, RKEY_45_port, RKEY_44_port, 
      RKEY_43_port, RKEY_42_port, RKEY_41_port, RKEY_40_port, RKEY_39_port, 
      RKEY_38_port, RKEY_37_port, RKEY_36_port, RKEY_35_port, RKEY_34_port, 
      RKEY_33_port, RKEY_32_port, RKEY_31_port, RKEY_30_port, RKEY_29_port, 
      RKEY_28_port, RKEY_27_port, RKEY_26_port, RKEY_25_port, RKEY_24_port, 
      RKEY_23_port, RKEY_22_port, RKEY_21_port, RKEY_20_port, RKEY_19_port, 
      RKEY_18_port, RKEY_17_port, RKEY_16_port, RKEY_15_port, RKEY_14_port, 
      RKEY_13_port, RKEY_12_port, RKEY_11_port, RKEY_10_port, RKEY_9_port, 
      RKEY_8_port, RKEY_7_port, RKEY_6_port, RKEY_5_port, RKEY_4_port, 
      RKEY_3_port, RKEY_2_port, RKEY_1_port, RKEY_0_port );
   
   ENC_RIGHT_reg_1_inst : DFFSR port map( D => RKEY_24_port, CLK => CLK, R => 
                           START_RST, S => n56, Q => RKEY_32_port);
   ENC_RIGHT_reg_3_inst : DFFSR port map( D => RKEY_32_port, CLK => CLK, R => 
                           START_RST, S => n55, Q => RKEY_38_port);
   ENC_RIGHT_reg_5_inst : DFFSR port map( D => RKEY_38_port, CLK => CLK, R => 
                           START_RST, S => n54, Q => RKEY_30_port);
   ENC_RIGHT_reg_7_inst : DFFSR port map( D => RKEY_30_port, CLK => CLK, R => 
                           n53, S => START_RST, Q => RKEY_36_port);
   ENC_RIGHT_reg_9_inst : DFFSR port map( D => RKEY_36_port, CLK => CLK, R => 
                           n52, S => START_RST, Q => RKEY_33_port);
   ENC_RIGHT_reg_11_inst : DFFSR port map( D => RKEY_33_port, CLK => CLK, R => 
                           START_RST, S => n51, Q => RKEY_47_port);
   ENC_RIGHT_reg_13_inst : DFFSR port map( D => RKEY_47_port, CLK => CLK, R => 
                           n50, S => START_RST, Q => RKEY_29_port);
   ENC_RIGHT_reg_15_inst : DFFSR port map( D => RKEY_29_port, CLK => CLK, R => 
                           n49, S => START_RST, Q => ENC_RIGHT_15);
   ENC_RIGHT_reg_17_inst : DFFSR port map( D => ENC_RIGHT_15, CLK => CLK, R => 
                           n48, S => START_RST, Q => RKEY_26_port);
   ENC_RIGHT_reg_19_inst : DFFSR port map( D => RKEY_26_port, CLK => CLK, R => 
                           n47, S => START_RST, Q => ENC_RIGHT_19);
   ENC_RIGHT_reg_21_inst : DFFSR port map( D => ENC_RIGHT_19, CLK => CLK, R => 
                           n46, S => START_RST, Q => RKEY_44_port);
   ENC_RIGHT_reg_23_inst : DFFSR port map( D => RKEY_44_port, CLK => CLK, R => 
                           n45, S => START_RST, Q => RKEY_31_port);
   ENC_RIGHT_reg_25_inst : DFFSR port map( D => RKEY_31_port, CLK => CLK, R => 
                           n44, S => START_RST, Q => RKEY_40_port);
   ENC_RIGHT_reg_27_inst : DFFSR port map( D => RKEY_40_port, CLK => CLK, R => 
                           n43, S => START_RST, Q => RKEY_24_port);
   ENC_RIGHT_reg_0_inst : DFFSR port map( D => RKEY_43_port, CLK => CLK, R => 
                           n42, S => START_RST, Q => RKEY_41_port);
   ENC_RIGHT_reg_2_inst : DFFSR port map( D => RKEY_41_port, CLK => CLK, R => 
                           START_RST, S => n41, Q => RKEY_42_port);
   ENC_RIGHT_reg_4_inst : DFFSR port map( D => RKEY_42_port, CLK => CLK, R => 
                           START_RST, S => n40, Q => RKEY_28_port);
   ENC_RIGHT_reg_6_inst : DFFSR port map( D => RKEY_28_port, CLK => CLK, R => 
                           START_RST, S => n39, Q => ENC_RIGHT_6);
   ENC_RIGHT_reg_8_inst : DFFSR port map( D => ENC_RIGHT_6, CLK => CLK, R => 
                           START_RST, S => n38, Q => RKEY_45_port);
   ENC_RIGHT_reg_10_inst : DFFSR port map( D => RKEY_45_port, CLK => CLK, R => 
                           START_RST, S => n37, Q => RKEY_25_port);
   ENC_RIGHT_reg_12_inst : DFFSR port map( D => RKEY_25_port, CLK => CLK, R => 
                           n36, S => START_RST, Q => RKEY_39_port);
   ENC_RIGHT_reg_14_inst : DFFSR port map( D => RKEY_39_port, CLK => CLK, R => 
                           n35, S => START_RST, Q => RKEY_46_port);
   ENC_RIGHT_reg_16_inst : DFFSR port map( D => RKEY_46_port, CLK => CLK, R => 
                           n34, S => START_RST, Q => RKEY_34_port);
   ENC_RIGHT_reg_18_inst : DFFSR port map( D => RKEY_34_port, CLK => CLK, R => 
                           n33, S => START_RST, Q => RKEY_37_port);
   ENC_RIGHT_reg_20_inst : DFFSR port map( D => RKEY_37_port, CLK => CLK, R => 
                           n32, S => START_RST, Q => RKEY_35_port);
   ENC_RIGHT_reg_22_inst : DFFSR port map( D => RKEY_35_port, CLK => CLK, R => 
                           n31, S => START_RST, Q => ENC_RIGHT_22_port);
   ENC_RIGHT_reg_24_inst : DFFSR port map( D => ENC_RIGHT_22_port, CLK => CLK, 
                           R => n30, S => START_RST, Q => RKEY_27_port);
   ENC_RIGHT_reg_26_inst : DFFSR port map( D => RKEY_27_port, CLK => CLK, R => 
                           START_RST, S => n29, Q => RKEY_43_port);
   ENC_LEFT_reg_1_inst : DFFSR port map( D => RKEY_17_port, CLK => CLK, R => 
                           START_RST, S => n28, Q => RKEY_0_port);
   ENC_LEFT_reg_3_inst : DFFSR port map( D => RKEY_0_port, CLK => CLK, R => n27
                           , S => START_RST, Q => RKEY_7_port);
   ENC_LEFT_reg_5_inst : DFFSR port map( D => RKEY_7_port, CLK => CLK, R => 
                           START_RST, S => n26, Q => RKEY_2_port);
   ENC_LEFT_reg_7_inst : DFFSR port map( D => RKEY_2_port, CLK => CLK, R => 
                           START_RST, S => n25, Q => ENC_LEFT_7);
   ENC_LEFT_reg_9_inst : DFFSR port map( D => ENC_LEFT_7, CLK => CLK, R => 
                           START_RST, S => n24, Q => RKEY_16_port);
   ENC_LEFT_reg_11_inst : DFFSR port map( D => RKEY_16_port, CLK => CLK, R => 
                           START_RST, S => n23, Q => RKEY_4_port);
   ENC_LEFT_reg_13_inst : DFFSR port map( D => RKEY_4_port, CLK => CLK, R => 
                           START_RST, S => n22, Q => RKEY_11_port);
   ENC_LEFT_reg_15_inst : DFFSR port map( D => RKEY_11_port, CLK => CLK, R => 
                           n21, S => START_RST, Q => RKEY_5_port);
   ENC_LEFT_reg_17_inst : DFFSR port map( D => RKEY_5_port, CLK => CLK, R => 
                           n20, S => START_RST, Q => RKEY_12_port);
   ENC_LEFT_reg_19_inst : DFFSR port map( D => RKEY_12_port, CLK => CLK, R => 
                           START_RST, S => n19, Q => RKEY_3_port);
   ENC_LEFT_reg_21_inst : DFFSR port map( D => RKEY_3_port, CLK => CLK, R => 
                           n18, S => START_RST, Q => RKEY_22_port);
   ENC_LEFT_reg_23_inst : DFFSR port map( D => RKEY_22_port, CLK => CLK, R => 
                           START_RST, S => n17, Q => ENC_LEFT_23_port);
   ENC_LEFT_reg_25_inst : DFFSR port map( D => ENC_LEFT_23_port, CLK => CLK, R 
                           => n16, S => START_RST, Q => RKEY_8_port);
   ENC_LEFT_reg_27_inst : DFFSR port map( D => RKEY_8_port, CLK => CLK, R => 
                           n15, S => START_RST, Q => RKEY_17_port);
   ENC_LEFT_reg_0_inst : DFFSR port map( D => RKEY_1_port, CLK => CLK, R => 
                           START_RST, S => n14, Q => RKEY_21_port);
   ENC_LEFT_reg_2_inst : DFFSR port map( D => RKEY_21_port, CLK => CLK, R => 
                           n13, S => START_RST, Q => RKEY_13_port);
   ENC_LEFT_reg_4_inst : DFFSR port map( D => RKEY_13_port, CLK => CLK, R => 
                           n12, S => START_RST, Q => ENC_LEFT_4);
   ENC_LEFT_reg_6_inst : DFFSR port map( D => ENC_LEFT_4, CLK => CLK, R => n11,
                           S => START_RST, Q => RKEY_20_port);
   ENC_LEFT_reg_8_inst : DFFSR port map( D => RKEY_20_port, CLK => CLK, R => 
                           START_RST, S => n10, Q => RKEY_9_port);
   ENC_LEFT_reg_10_inst : DFFSR port map( D => RKEY_9_port, CLK => CLK, R => n9
                           , S => START_RST, Q => RKEY_23_port);
   ENC_LEFT_reg_12_inst : DFFSR port map( D => RKEY_23_port, CLK => CLK, R => 
                           START_RST, S => n8, Q => ENC_LEFT_12);
   ENC_LEFT_reg_14_inst : DFFSR port map( D => ENC_LEFT_12, CLK => CLK, R => 
                           START_RST, S => n7, Q => RKEY_14_port);
   ENC_LEFT_reg_16_inst : DFFSR port map( D => RKEY_14_port, CLK => CLK, R => 
                           n6, S => START_RST, Q => RKEY_19_port);
   ENC_LEFT_reg_18_inst : DFFSR port map( D => RKEY_19_port, CLK => CLK, R => 
                           START_RST, S => n5, Q => RKEY_10_port);
   ENC_LEFT_reg_20_inst : DFFSR port map( D => RKEY_10_port, CLK => CLK, R => 
                           n4, S => START_RST, Q => RKEY_15_port);
   ENC_LEFT_reg_22_inst : DFFSR port map( D => RKEY_15_port, CLK => CLK, R => 
                           n3, S => START_RST, Q => RKEY_6_port);
   ENC_LEFT_reg_24_inst : DFFSR port map( D => RKEY_6_port, CLK => CLK, R => n2
                           , S => START_RST, Q => RKEY_18_port);
   ENC_LEFT_reg_26_inst : DFFSR port map( D => RKEY_18_port, CLK => CLK, R => 
                           n1, S => START_RST, Q => RKEY_1_port);
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
   n16 <= '1';
   n17 <= '1';
   n18 <= '1';
   n19 <= '1';
   n20 <= '1';
   n21 <= '1';
   n22 <= '1';
   n23 <= '1';
   n24 <= '1';
   n25 <= '1';
   n26 <= '1';
   n27 <= '1';
   n28 <= '1';
   n29 <= '1';
   n30 <= '1';
   n31 <= '1';
   n32 <= '1';
   n33 <= '1';
   n34 <= '1';
   n35 <= '1';
   n36 <= '1';
   n37 <= '1';
   n38 <= '1';
   n39 <= '1';
   n40 <= '1';
   n41 <= '1';
   n42 <= '1';
   n43 <= '1';
   n44 <= '1';
   n45 <= '1';
   n46 <= '1';
   n47 <= '1';
   n48 <= '1';
   n49 <= '1';
   n50 <= '1';
   n51 <= '1';
   n52 <= '1';
   n53 <= '1';
   n54 <= '1';
   n55 <= '1';
   n56 <= '1';

end SYN_behav;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ENCRYPTION.all;

entity e_fiestel is

   port( FIESTELCLK, START : in std_logic;  ENC_LEFT, ENC_RIGHT : in 
         std_logic_vector (31 downto 0);  RKEY : in std_logic_vector (47 downto
         0);  IN_SELECT : in std_logic;  OUTDATA : out std_logic_vector (63 
         downto 0));

end e_fiestel;

architecture SYN_behav of e_fiestel is

   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
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
   
   component OAI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component BUFX4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component LATCH
      port( CLK, D : in std_logic;  Q : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal CUR_ENC_LEFT_31_port, CUR_ENC_LEFT_30_port, CUR_ENC_LEFT_29_port, 
      CUR_ENC_LEFT_28_port, CUR_ENC_LEFT_27_port, CUR_ENC_LEFT_26_port, 
      CUR_ENC_LEFT_25_port, CUR_ENC_LEFT_24_port, CUR_ENC_LEFT_23_port, 
      CUR_ENC_LEFT_22_port, CUR_ENC_LEFT_21_port, CUR_ENC_LEFT_20_port, 
      CUR_ENC_LEFT_19_port, CUR_ENC_LEFT_18_port, CUR_ENC_LEFT_17_port, 
      CUR_ENC_LEFT_16_port, CUR_ENC_LEFT_15_port, CUR_ENC_LEFT_14_port, 
      CUR_ENC_LEFT_13_port, CUR_ENC_LEFT_12_port, CUR_ENC_LEFT_11_port, 
      CUR_ENC_LEFT_10_port, CUR_ENC_LEFT_9_port, CUR_ENC_LEFT_8_port, 
      CUR_ENC_LEFT_7_port, CUR_ENC_LEFT_6_port, CUR_ENC_LEFT_5_port, 
      CUR_ENC_LEFT_4_port, CUR_ENC_LEFT_3_port, CUR_ENC_LEFT_2_port, 
      CUR_ENC_LEFT_1_port, CUR_ENC_LEFT_0_port, CUR_ENC_RIGHT_31_port, 
      CUR_ENC_RIGHT_30_port, CUR_ENC_RIGHT_29_port, CUR_ENC_RIGHT_28_port, 
      CUR_ENC_RIGHT_27_port, CUR_ENC_RIGHT_26_port, CUR_ENC_RIGHT_25_port, 
      CUR_ENC_RIGHT_24_port, CUR_ENC_RIGHT_23_port, CUR_ENC_RIGHT_22_port, 
      CUR_ENC_RIGHT_21_port, CUR_ENC_RIGHT_20_port, CUR_ENC_RIGHT_19_port, 
      CUR_ENC_RIGHT_18_port, CUR_ENC_RIGHT_17_port, CUR_ENC_RIGHT_16_port, 
      CUR_ENC_RIGHT_15_port, CUR_ENC_RIGHT_14_port, CUR_ENC_RIGHT_13_port, 
      CUR_ENC_RIGHT_12_port, CUR_ENC_RIGHT_11_port, CUR_ENC_RIGHT_10_port, 
      CUR_ENC_RIGHT_9_port, CUR_ENC_RIGHT_8_port, CUR_ENC_RIGHT_7_port, 
      CUR_ENC_RIGHT_6_port, CUR_ENC_RIGHT_5_port, CUR_ENC_RIGHT_4_port, 
      CUR_ENC_RIGHT_3_port, CUR_ENC_RIGHT_2_port, CUR_ENC_RIGHT_1_port, 
      CUR_ENC_RIGHT_0_port, NXT_ENC_RIGHT1_31_port, NXT_ENC_RIGHT1_30_port, 
      NXT_ENC_RIGHT1_29_port, NXT_ENC_RIGHT1_28_port, NXT_ENC_RIGHT1_27_port, 
      NXT_ENC_RIGHT1_26_port, NXT_ENC_RIGHT1_25_port, NXT_ENC_RIGHT1_24_port, 
      NXT_ENC_RIGHT1_23_port, NXT_ENC_RIGHT1_22_port, NXT_ENC_RIGHT1_21_port, 
      NXT_ENC_RIGHT1_20_port, NXT_ENC_RIGHT1_19_port, NXT_ENC_RIGHT1_18_port, 
      NXT_ENC_RIGHT1_17_port, NXT_ENC_RIGHT1_16_port, NXT_ENC_RIGHT1_15_port, 
      NXT_ENC_RIGHT1_14_port, NXT_ENC_RIGHT1_13_port, NXT_ENC_RIGHT1_12_port, 
      NXT_ENC_RIGHT1_11_port, NXT_ENC_RIGHT1_10_port, NXT_ENC_RIGHT1_9_port, 
      NXT_ENC_RIGHT1_8_port, NXT_ENC_RIGHT1_7_port, NXT_ENC_RIGHT1_6_port, 
      NXT_ENC_RIGHT1_5_port, NXT_ENC_RIGHT1_4_port, NXT_ENC_RIGHT1_3_port, 
      NXT_ENC_RIGHT1_2_port, NXT_ENC_RIGHT1_1_port, NXT_ENC_RIGHT1_0_port, n1, 
      n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, 
      n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32
      , n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, 
      n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61
      , n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, 
      n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90
      , n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, 
      n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, 
      n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, 
      n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, 
      n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, 
      n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, 
      n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, 
      n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, 
      n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, 
      n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, 
      n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, 
      n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, 
      n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, 
      n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, 
      n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, 
      n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, 
      n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, 
      n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, 
      n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, 
      n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, 
      n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, 
      n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, 
      n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, 
      n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, 
      n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, 
      n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, 
      n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, 
      n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, 
      n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, 
      n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, 
      n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463, 
      n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474, n475, 
      n476, n477, n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, 
      n488, n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, 
      n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, 
      n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523, 
      n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, 
      n536, n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547, 
      n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558, n559, 
      n560, n561, n562, n563, n564, n565, n566, n567, n568, n569, n570, n571, 
      n572, n573, n574, n575, n576, n577, n578, n579, n580, n581, n582, n583, 
      n584, n585, n586, n587, n588, n589, n590, n591, n592, n593, n594, n595, 
      n596, n597, n598, n599, n600, n601, n602, n603, n604, n605, n606, n607, 
      n608, n609, n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, 
      n620, n621, n622, n623, n624, n625, n626, n627, n628, n629, n630, n631, 
      n632, n633, n634, n635, n636, n637, n638, n639, n640, n641, n642, n643, 
      n644, n645, n646, n647, n648, n649, n650, n651, n652, n653, n654, n655, 
      n656, n657, n658, n659, n660, n661, n662, n663, n664, n665, n666, n667, 
      n668, n669, n670, n671, n672, n673, n674, n675, n676, n677, n678, n679, 
      n680, n681, n682, n683, n684, n685, n686, n687, n688, n689, n690, n691, 
      n692, n693, n694, n695, n696, n697, n698, n699, n700, n701, n702, n703, 
      n704, n705, n706, n707, n708, n709, n710, n711, n712, n713, n714, n715, 
      n716, n717, n718, n719, n720, n721, n722, n723, n724, n725, n726, n727, 
      n728, n729, n730, n731, n732, n733, n734, n735, n736, n737, n738, n739, 
      n740, n741, n742, n743, n744, n745, n746, n747, n748, n749, n750, n751, 
      n752, n753, n754, n755, n756, n757, n758, n759, n760, n761, n762, n763, 
      n764, n765, n766, n767, n768, n769, n770, n771, n772, n773, n774, n775, 
      n776, n777, n778, n779, n780, n781, n782, n783, n784, n785, n786, n787, 
      n788, n789, n790, n791, n792, n793, n794, n795, n796, n797, n798, n799, 
      n800, n801, n802, n803, n804, n805, n806, n807, n808, n809, n810, n811, 
      n812, n813, n814, n815, n816, n817, n818, n819, n820, n821, n822, n823, 
      n824, n825, n826, n827, n828, n829, n830, n831, n832, n833, n834, n835, 
      n836, n837, n838, n839, n840, n841, n842, n843, n844, n845, n846, n847, 
      n848, n849, n850, n851, n852, n853, n854, n855, n856, n857, n858, n859, 
      n860, n861, n862, n863, n864, n865, n866, n867, n868, n869, n870, n871, 
      n872, n873, n874, n875, n876, n877, n878, n879, n880, n881, n882, n883, 
      n884, n885, n886, n887, n888, n889, n890, n891, n892, n893, n894, n895, 
      n896, n897, n898, n899, n900, n901, n902, n903, n904, n905, n906, n907, 
      n908, n909, n910, n911, n912, n913, n914, n915, n916, n917, n918, n919, 
      n920, n921, n922, n923, n924, n925, n926, n927, n928, n929, n930, n931, 
      n932, n933, n934, n935, n936, n937, n938, n939, n940, n941, n942, n943, 
      n944, n945, n946, n947, n948, n949, n950, n951, n952, n953, n954, n955, 
      n956, n957, n958, n959, n960, n961, n962, n963, n964, n965, n966, n967, 
      n968, n969, n970, n971, n972, n973, n974, n975, n976, n977, n978, n979, 
      n980, n981, n982, n983, n984, n985, n986, n987, n988, n989, n990, n991, 
      n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001, n1002, 
      n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012, 
      n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022, 
      n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032, 
      n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, 
      n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, 
      n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062, 
      n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072, 
      n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082, 
      n1083, n1084, n1085, n1086, n1087, n1088, n1089, n1090 : std_logic;

begin
   
   CUR_ENC_LEFT_reg_0_inst : DFFSR port map( D => CUR_ENC_RIGHT_0_port, CLK => 
                           FIESTELCLK, R => n1090, S => n1089, Q => 
                           CUR_ENC_LEFT_0_port);
   CUR_ENC_RIGHT_reg_0_inst : DFFSR port map( D => NXT_ENC_RIGHT1_0_port, CLK 
                           => FIESTELCLK, R => n1088, S => n1087, Q => 
                           CUR_ENC_RIGHT_0_port);
   CUR_ENC_RIGHT_reg_15_inst : DFFSR port map( D => NXT_ENC_RIGHT1_15_port, CLK
                           => FIESTELCLK, R => n1082, S => n1081, Q => 
                           CUR_ENC_RIGHT_15_port);
   CUR_ENC_LEFT_reg_15_inst : DFFSR port map( D => CUR_ENC_RIGHT_15_port, CLK 
                           => FIESTELCLK, R => n1080, S => n1079, Q => 
                           CUR_ENC_LEFT_15_port);
   CUR_ENC_RIGHT_reg_29_inst : DFFSR port map( D => NXT_ENC_RIGHT1_29_port, CLK
                           => FIESTELCLK, R => n966, S => n965, Q => 
                           CUR_ENC_RIGHT_29_port);
   CUR_ENC_LEFT_reg_29_inst : DFFSR port map( D => CUR_ENC_RIGHT_29_port, CLK 
                           => FIESTELCLK, R => n964, S => n963, Q => 
                           CUR_ENC_LEFT_29_port);
   CUR_ENC_RIGHT_reg_9_inst : DFFSR port map( D => NXT_ENC_RIGHT1_9_port, CLK 
                           => FIESTELCLK, R => n1078, S => n1077, Q => 
                           CUR_ENC_RIGHT_9_port);
   CUR_ENC_LEFT_reg_9_inst : DFFSR port map( D => CUR_ENC_RIGHT_9_port, CLK => 
                           FIESTELCLK, R => n1076, S => n1075, Q => 
                           CUR_ENC_LEFT_9_port);
   CUR_ENC_RIGHT_reg_28_inst : DFFSR port map( D => NXT_ENC_RIGHT1_28_port, CLK
                           => FIESTELCLK, R => n1042, S => n1041, Q => 
                           CUR_ENC_RIGHT_28_port);
   CUR_ENC_LEFT_reg_28_inst : DFFSR port map( D => CUR_ENC_RIGHT_28_port, CLK 
                           => FIESTELCLK, R => n1040, S => n1039, Q => 
                           CUR_ENC_LEFT_28_port);
   CUR_ENC_RIGHT_reg_23_inst : DFFSR port map( D => NXT_ENC_RIGHT1_23_port, CLK
                           => FIESTELCLK, R => n1086, S => n1085, Q => 
                           CUR_ENC_RIGHT_23_port);
   CUR_ENC_LEFT_reg_23_inst : DFFSR port map( D => CUR_ENC_RIGHT_23_port, CLK 
                           => FIESTELCLK, R => n1084, S => n1083, Q => 
                           CUR_ENC_LEFT_23_port);
   CUR_ENC_RIGHT_reg_2_inst : DFFSR port map( D => NXT_ENC_RIGHT1_2_port, CLK 
                           => FIESTELCLK, R => n1022, S => n1021, Q => 
                           CUR_ENC_RIGHT_2_port);
   CUR_ENC_LEFT_reg_2_inst : DFFSR port map( D => CUR_ENC_RIGHT_2_port, CLK => 
                           FIESTELCLK, R => n1020, S => n1019, Q => 
                           CUR_ENC_LEFT_2_port);
   CUR_ENC_RIGHT_reg_17_inst : DFFSR port map( D => NXT_ENC_RIGHT1_17_port, CLK
                           => FIESTELCLK, R => n1062, S => n1061, Q => 
                           CUR_ENC_RIGHT_17_port);
   CUR_ENC_LEFT_reg_17_inst : DFFSR port map( D => CUR_ENC_RIGHT_17_port, CLK 
                           => FIESTELCLK, R => n1060, S => n1059, Q => 
                           CUR_ENC_LEFT_17_port);
   CUR_ENC_RIGHT_reg_6_inst : DFFSR port map( D => NXT_ENC_RIGHT1_6_port, CLK 
                           => FIESTELCLK, R => n1002, S => n1001, Q => 
                           CUR_ENC_RIGHT_6_port);
   CUR_ENC_LEFT_reg_6_inst : DFFSR port map( D => CUR_ENC_RIGHT_6_port, CLK => 
                           FIESTELCLK, R => n1000, S => n999, Q => 
                           CUR_ENC_LEFT_6_port);
   CUR_ENC_RIGHT_reg_25_inst : DFFSR port map( D => NXT_ENC_RIGHT1_25_port, CLK
                           => FIESTELCLK, R => n982, S => n981, Q => 
                           CUR_ENC_RIGHT_25_port);
   CUR_ENC_LEFT_reg_25_inst : DFFSR port map( D => CUR_ENC_RIGHT_25_port, CLK 
                           => FIESTELCLK, R => n980, S => n979, Q => 
                           CUR_ENC_LEFT_25_port);
   CUR_ENC_RIGHT_reg_4_inst : DFFSR port map( D => NXT_ENC_RIGHT1_4_port, CLK 
                           => FIESTELCLK, R => n1010, S => n1009, Q => 
                           CUR_ENC_RIGHT_4_port);
   CUR_ENC_LEFT_reg_4_inst : DFFSR port map( D => CUR_ENC_RIGHT_4_port, CLK => 
                           FIESTELCLK, R => n1008, S => n1007, Q => 
                           CUR_ENC_LEFT_4_port);
   CUR_ENC_RIGHT_reg_11_inst : DFFSR port map( D => NXT_ENC_RIGHT1_11_port, CLK
                           => FIESTELCLK, R => n1058, S => n1057, Q => 
                           CUR_ENC_RIGHT_11_port);
   CUR_ENC_LEFT_reg_11_inst : DFFSR port map( D => CUR_ENC_RIGHT_11_port, CLK 
                           => FIESTELCLK, R => n1056, S => n1055, Q => 
                           CUR_ENC_LEFT_11_port);
   CUR_ENC_RIGHT_reg_18_inst : DFFSR port map( D => NXT_ENC_RIGHT1_18_port, CLK
                           => FIESTELCLK, R => n1050, S => n1049, Q => 
                           CUR_ENC_RIGHT_18_port);
   CUR_ENC_LEFT_reg_18_inst : DFFSR port map( D => CUR_ENC_RIGHT_18_port, CLK 
                           => FIESTELCLK, R => n1048, S => n1047, Q => 
                           CUR_ENC_LEFT_18_port);
   CUR_ENC_RIGHT_reg_31_inst : DFFSR port map( D => NXT_ENC_RIGHT1_31_port, CLK
                           => FIESTELCLK, R => n990, S => n989, Q => 
                           CUR_ENC_RIGHT_31_port);
   CUR_ENC_LEFT_reg_31_inst : DFFSR port map( D => CUR_ENC_RIGHT_31_port, CLK 
                           => FIESTELCLK, R => n988, S => n987, Q => 
                           CUR_ENC_LEFT_31_port);
   CUR_ENC_RIGHT_reg_1_inst : DFFSR port map( D => NXT_ENC_RIGHT1_1_port, CLK 
                           => FIESTELCLK, R => n1074, S => n1073, Q => 
                           CUR_ENC_RIGHT_1_port);
   CUR_ENC_LEFT_reg_1_inst : DFFSR port map( D => CUR_ENC_RIGHT_1_port, CLK => 
                           FIESTELCLK, R => n1072, S => n1071, Q => 
                           CUR_ENC_LEFT_1_port);
   CUR_ENC_RIGHT_reg_27_inst : DFFSR port map( D => NXT_ENC_RIGHT1_27_port, CLK
                           => FIESTELCLK, R => n1070, S => n1069, Q => 
                           CUR_ENC_RIGHT_27_port);
   CUR_ENC_LEFT_reg_27_inst : DFFSR port map( D => CUR_ENC_RIGHT_27_port, CLK 
                           => FIESTELCLK, R => n1068, S => n1067, Q => 
                           CUR_ENC_LEFT_27_port);
   CUR_ENC_RIGHT_reg_19_inst : DFFSR port map( D => NXT_ENC_RIGHT1_19_port, CLK
                           => FIESTELCLK, R => n1014, S => n1013, Q => 
                           CUR_ENC_RIGHT_19_port);
   CUR_ENC_LEFT_reg_19_inst : DFFSR port map( D => CUR_ENC_RIGHT_19_port, CLK 
                           => FIESTELCLK, R => n1012, S => n1011, Q => 
                           CUR_ENC_LEFT_19_port);
   CUR_ENC_RIGHT_reg_16_inst : DFFSR port map( D => NXT_ENC_RIGHT1_16_port, CLK
                           => FIESTELCLK, R => n1026, S => n1025, Q => 
                           CUR_ENC_RIGHT_16_port);
   CUR_ENC_LEFT_reg_16_inst : DFFSR port map( D => CUR_ENC_RIGHT_16_port, CLK 
                           => FIESTELCLK, R => n1024, S => n1023, Q => 
                           CUR_ENC_LEFT_16_port);
   CUR_ENC_RIGHT_reg_24_inst : DFFSR port map( D => NXT_ENC_RIGHT1_24_port, CLK
                           => FIESTELCLK, R => n1054, S => n1053, Q => 
                           CUR_ENC_RIGHT_24_port);
   CUR_ENC_LEFT_reg_24_inst : DFFSR port map( D => CUR_ENC_RIGHT_24_port, CLK 
                           => FIESTELCLK, R => n1052, S => n1051, Q => 
                           CUR_ENC_LEFT_24_port);
   CUR_ENC_RIGHT_reg_26_inst : DFFSR port map( D => NXT_ENC_RIGHT1_26_port, CLK
                           => FIESTELCLK, R => n1018, S => n1017, Q => 
                           CUR_ENC_RIGHT_26_port);
   CUR_ENC_LEFT_reg_26_inst : DFFSR port map( D => CUR_ENC_RIGHT_26_port, CLK 
                           => FIESTELCLK, R => n1016, S => n1015, Q => 
                           CUR_ENC_LEFT_26_port);
   CUR_ENC_RIGHT_reg_14_inst : DFFSR port map( D => NXT_ENC_RIGHT1_14_port, CLK
                           => FIESTELCLK, R => n974, S => n973, Q => 
                           CUR_ENC_RIGHT_14_port);
   CUR_ENC_LEFT_reg_14_inst : DFFSR port map( D => CUR_ENC_RIGHT_14_port, CLK 
                           => FIESTELCLK, R => n972, S => n971, Q => 
                           CUR_ENC_LEFT_14_port);
   CUR_ENC_RIGHT_reg_7_inst : DFFSR port map( D => NXT_ENC_RIGHT1_7_port, CLK 
                           => FIESTELCLK, R => n1046, S => n1045, Q => 
                           CUR_ENC_RIGHT_7_port);
   CUR_ENC_LEFT_reg_7_inst : DFFSR port map( D => CUR_ENC_RIGHT_7_port, CLK => 
                           FIESTELCLK, R => n1044, S => n1043, Q => 
                           CUR_ENC_LEFT_7_port);
   CUR_ENC_RIGHT_reg_21_inst : DFFSR port map( D => NXT_ENC_RIGHT1_21_port, CLK
                           => FIESTELCLK, R => n1034, S => n1033, Q => 
                           CUR_ENC_RIGHT_21_port);
   CUR_ENC_LEFT_reg_21_inst : DFFSR port map( D => CUR_ENC_RIGHT_21_port, CLK 
                           => FIESTELCLK, R => n1032, S => n1031, Q => 
                           CUR_ENC_LEFT_21_port);
   CUR_ENC_RIGHT_reg_8_inst : DFFSR port map( D => NXT_ENC_RIGHT1_8_port, CLK 
                           => FIESTELCLK, R => n1030, S => n1029, Q => 
                           CUR_ENC_RIGHT_8_port);
   CUR_ENC_LEFT_reg_8_inst : DFFSR port map( D => CUR_ENC_RIGHT_8_port, CLK => 
                           FIESTELCLK, R => n1028, S => n1027, Q => 
                           CUR_ENC_LEFT_8_port);
   CUR_ENC_RIGHT_reg_3_inst : DFFSR port map( D => NXT_ENC_RIGHT1_3_port, CLK 
                           => FIESTELCLK, R => n1038, S => n1037, Q => 
                           CUR_ENC_RIGHT_3_port);
   CUR_ENC_LEFT_reg_3_inst : DFFSR port map( D => CUR_ENC_RIGHT_3_port, CLK => 
                           FIESTELCLK, R => n1036, S => n1035, Q => 
                           CUR_ENC_LEFT_3_port);
   CUR_ENC_RIGHT_reg_5_inst : DFFSR port map( D => NXT_ENC_RIGHT1_5_port, CLK 
                           => FIESTELCLK, R => n1066, S => n1065, Q => 
                           CUR_ENC_RIGHT_5_port);
   CUR_ENC_LEFT_reg_5_inst : DFFSR port map( D => CUR_ENC_RIGHT_5_port, CLK => 
                           FIESTELCLK, R => n1064, S => n1063, Q => 
                           CUR_ENC_LEFT_5_port);
   CUR_ENC_RIGHT_reg_20_inst : DFFSR port map( D => NXT_ENC_RIGHT1_20_port, CLK
                           => FIESTELCLK, R => n1006, S => n1005, Q => 
                           CUR_ENC_RIGHT_20_port);
   CUR_ENC_LEFT_reg_20_inst : DFFSR port map( D => CUR_ENC_RIGHT_20_port, CLK 
                           => FIESTELCLK, R => n1004, S => n1003, Q => 
                           CUR_ENC_LEFT_20_port);
   CUR_ENC_RIGHT_reg_22_inst : DFFSR port map( D => NXT_ENC_RIGHT1_22_port, CLK
                           => FIESTELCLK, R => n994, S => n993, Q => 
                           CUR_ENC_RIGHT_22_port);
   CUR_ENC_LEFT_reg_22_inst : DFFSR port map( D => CUR_ENC_RIGHT_22_port, CLK 
                           => FIESTELCLK, R => n992, S => n991, Q => 
                           CUR_ENC_LEFT_22_port);
   CUR_ENC_RIGHT_reg_12_inst : DFFSR port map( D => NXT_ENC_RIGHT1_12_port, CLK
                           => FIESTELCLK, R => n998, S => n997, Q => 
                           CUR_ENC_RIGHT_12_port);
   CUR_ENC_LEFT_reg_12_inst : DFFSR port map( D => CUR_ENC_RIGHT_12_port, CLK 
                           => FIESTELCLK, R => n996, S => n995, Q => 
                           CUR_ENC_LEFT_12_port);
   CUR_ENC_RIGHT_reg_10_inst : DFFSR port map( D => NXT_ENC_RIGHT1_10_port, CLK
                           => FIESTELCLK, R => n986, S => n985, Q => 
                           CUR_ENC_RIGHT_10_port);
   CUR_ENC_LEFT_reg_10_inst : DFFSR port map( D => CUR_ENC_RIGHT_10_port, CLK 
                           => FIESTELCLK, R => n984, S => n983, Q => 
                           CUR_ENC_LEFT_10_port);
   CUR_ENC_RIGHT_reg_13_inst : DFFSR port map( D => NXT_ENC_RIGHT1_13_port, CLK
                           => FIESTELCLK, R => n970, S => n969, Q => 
                           CUR_ENC_RIGHT_13_port);
   CUR_ENC_LEFT_reg_13_inst : DFFSR port map( D => CUR_ENC_RIGHT_13_port, CLK 
                           => FIESTELCLK, R => n968, S => n967, Q => 
                           CUR_ENC_LEFT_13_port);
   CUR_ENC_RIGHT_reg_30_inst : DFFSR port map( D => NXT_ENC_RIGHT1_30_port, CLK
                           => FIESTELCLK, R => n978, S => n977, Q => 
                           CUR_ENC_RIGHT_30_port);
   CUR_ENC_LEFT_reg_30_inst : DFFSR port map( D => CUR_ENC_RIGHT_30_port, CLK 
                           => FIESTELCLK, R => n976, S => n975, Q => 
                           CUR_ENC_LEFT_30_port);
   OUTDATA_reg_63_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_31_port, Q => OUTDATA(63));
   OUTDATA_reg_62_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_30_port, Q => OUTDATA(62));
   OUTDATA_reg_61_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_29_port, Q => OUTDATA(61));
   OUTDATA_reg_60_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_28_port, Q => OUTDATA(60));
   OUTDATA_reg_59_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_27_port, Q => OUTDATA(59));
   OUTDATA_reg_58_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_26_port, Q => OUTDATA(58));
   OUTDATA_reg_57_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_25_port, Q => OUTDATA(57));
   OUTDATA_reg_56_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_24_port, Q => OUTDATA(56));
   OUTDATA_reg_55_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_23_port, Q => OUTDATA(55));
   OUTDATA_reg_54_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_22_port, Q => OUTDATA(54));
   OUTDATA_reg_53_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_21_port, Q => OUTDATA(53));
   OUTDATA_reg_52_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_20_port, Q => OUTDATA(52));
   OUTDATA_reg_51_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_19_port, Q => OUTDATA(51));
   OUTDATA_reg_50_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_18_port, Q => OUTDATA(50));
   OUTDATA_reg_49_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_17_port, Q => OUTDATA(49));
   OUTDATA_reg_48_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_16_port, Q => OUTDATA(48));
   OUTDATA_reg_47_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_15_port, Q => OUTDATA(47));
   OUTDATA_reg_46_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_14_port, Q => OUTDATA(46));
   OUTDATA_reg_45_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_13_port, Q => OUTDATA(45));
   OUTDATA_reg_44_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_12_port, Q => OUTDATA(44));
   OUTDATA_reg_43_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_11_port, Q => OUTDATA(43));
   OUTDATA_reg_42_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_10_port, Q => OUTDATA(42));
   OUTDATA_reg_41_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_9_port, Q => OUTDATA(41));
   OUTDATA_reg_40_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_8_port, Q => OUTDATA(40));
   OUTDATA_reg_39_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_7_port, Q => OUTDATA(39));
   OUTDATA_reg_38_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_6_port, Q => OUTDATA(38));
   OUTDATA_reg_37_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_5_port, Q => OUTDATA(37));
   OUTDATA_reg_36_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_4_port, Q => OUTDATA(36));
   OUTDATA_reg_35_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_3_port, Q => OUTDATA(35));
   OUTDATA_reg_34_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_2_port, Q => OUTDATA(34));
   OUTDATA_reg_33_inst : LATCH port map( CLK => START, D => 
                           CUR_ENC_RIGHT_1_port, Q => OUTDATA(33));
   OUTDATA_reg_32_inst : LATCH port map( CLK => n1, D => CUR_ENC_RIGHT_0_port, 
                           Q => OUTDATA(32));
   OUTDATA_reg_31_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_31_port, 
                           Q => OUTDATA(31));
   OUTDATA_reg_30_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_30_port, 
                           Q => OUTDATA(30));
   OUTDATA_reg_29_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_29_port, 
                           Q => OUTDATA(29));
   OUTDATA_reg_28_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_28_port, 
                           Q => OUTDATA(28));
   OUTDATA_reg_27_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_27_port, 
                           Q => OUTDATA(27));
   OUTDATA_reg_26_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_26_port, 
                           Q => OUTDATA(26));
   OUTDATA_reg_25_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_25_port, 
                           Q => OUTDATA(25));
   OUTDATA_reg_24_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_24_port, 
                           Q => OUTDATA(24));
   OUTDATA_reg_23_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_23_port, 
                           Q => OUTDATA(23));
   OUTDATA_reg_22_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_22_port, 
                           Q => OUTDATA(22));
   OUTDATA_reg_21_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_21_port, 
                           Q => OUTDATA(21));
   OUTDATA_reg_20_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_20_port, 
                           Q => OUTDATA(20));
   OUTDATA_reg_19_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_19_port, 
                           Q => OUTDATA(19));
   OUTDATA_reg_18_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_18_port, 
                           Q => OUTDATA(18));
   OUTDATA_reg_17_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_17_port, 
                           Q => OUTDATA(17));
   OUTDATA_reg_16_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_16_port, 
                           Q => OUTDATA(16));
   OUTDATA_reg_15_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_15_port, 
                           Q => OUTDATA(15));
   OUTDATA_reg_14_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_14_port, 
                           Q => OUTDATA(14));
   OUTDATA_reg_13_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_13_port, 
                           Q => OUTDATA(13));
   OUTDATA_reg_12_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_12_port, 
                           Q => OUTDATA(12));
   OUTDATA_reg_11_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_11_port, 
                           Q => OUTDATA(11));
   OUTDATA_reg_10_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_10_port, 
                           Q => OUTDATA(10));
   OUTDATA_reg_9_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_9_port, Q 
                           => OUTDATA(9));
   OUTDATA_reg_8_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_8_port, Q 
                           => OUTDATA(8));
   OUTDATA_reg_7_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_7_port, Q 
                           => OUTDATA(7));
   OUTDATA_reg_6_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_6_port, Q 
                           => OUTDATA(6));
   OUTDATA_reg_5_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_5_port, Q 
                           => OUTDATA(5));
   OUTDATA_reg_4_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_4_port, Q 
                           => OUTDATA(4));
   OUTDATA_reg_3_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_3_port, Q 
                           => OUTDATA(3));
   OUTDATA_reg_2_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_2_port, Q 
                           => OUTDATA(2));
   OUTDATA_reg_1_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_1_port, Q 
                           => OUTDATA(1));
   OUTDATA_reg_0_inst : LATCH port map( CLK => n1, D => CUR_ENC_LEFT_0_port, Q 
                           => OUTDATA(0));
   U3 : BUFX4 port map( A => START, Y => n1);
   U4 : INVX4 port map( A => IN_SELECT, Y => n2);
   U5 : NAND2X1 port map( A => ENC_LEFT(29), B => n2, Y => n963);
   U6 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(29), Y => n964);
   U7 : NAND2X1 port map( A => ENC_RIGHT(29), B => n2, Y => n965);
   U8 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(29), Y => n966);
   U9 : NAND2X1 port map( A => ENC_LEFT(13), B => n2, Y => n967);
   U10 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(13), Y => n968);
   U11 : NAND2X1 port map( A => ENC_RIGHT(13), B => n2, Y => n969);
   U12 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(13), Y => n970);
   U13 : NAND2X1 port map( A => ENC_LEFT(14), B => n2, Y => n971);
   U14 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(14), Y => n972);
   U15 : NAND2X1 port map( A => ENC_RIGHT(14), B => n2, Y => n973);
   U16 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(14), Y => n974);
   U17 : NAND2X1 port map( A => ENC_LEFT(30), B => n2, Y => n975);
   U18 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(30), Y => n976);
   U19 : NAND2X1 port map( A => ENC_RIGHT(30), B => n2, Y => n977);
   U20 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(30), Y => n978);
   U21 : NAND2X1 port map( A => ENC_LEFT(25), B => n2, Y => n979);
   U22 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(25), Y => n980);
   U23 : NAND2X1 port map( A => ENC_RIGHT(25), B => n2, Y => n981);
   U24 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(25), Y => n982);
   U25 : NAND2X1 port map( A => ENC_LEFT(10), B => n2, Y => n983);
   U26 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(10), Y => n984);
   U27 : NAND2X1 port map( A => ENC_RIGHT(10), B => n2, Y => n985);
   U28 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(10), Y => n986);
   U29 : NAND2X1 port map( A => ENC_LEFT(31), B => n2, Y => n987);
   U30 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(31), Y => n988);
   U31 : NAND2X1 port map( A => ENC_RIGHT(31), B => n2, Y => n989);
   U32 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(31), Y => n990);
   U33 : NAND2X1 port map( A => ENC_LEFT(22), B => n2, Y => n991);
   U34 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(22), Y => n992);
   U35 : NAND2X1 port map( A => ENC_RIGHT(22), B => n2, Y => n993);
   U36 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(22), Y => n994);
   U37 : NAND2X1 port map( A => ENC_LEFT(12), B => n2, Y => n995);
   U38 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(12), Y => n996);
   U39 : NAND2X1 port map( A => ENC_RIGHT(12), B => n2, Y => n997);
   U40 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(12), Y => n998);
   U41 : NAND2X1 port map( A => ENC_LEFT(6), B => n2, Y => n999);
   U42 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(6), Y => n1000);
   U43 : NAND2X1 port map( A => ENC_RIGHT(6), B => n2, Y => n1001);
   U44 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(6), Y => n1002);
   U45 : NAND2X1 port map( A => ENC_LEFT(20), B => n2, Y => n1003);
   U46 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(20), Y => n1004);
   U47 : NAND2X1 port map( A => ENC_RIGHT(20), B => n2, Y => n1005);
   U48 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(20), Y => n1006);
   U49 : NAND2X1 port map( A => ENC_LEFT(4), B => n2, Y => n1007);
   U50 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(4), Y => n1008);
   U51 : NAND2X1 port map( A => ENC_RIGHT(4), B => n2, Y => n1009);
   U52 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(4), Y => n1010);
   U53 : NAND2X1 port map( A => ENC_LEFT(19), B => n2, Y => n1011);
   U54 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(19), Y => n1012);
   U55 : NAND2X1 port map( A => ENC_RIGHT(19), B => n2, Y => n1013);
   U56 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(19), Y => n1014);
   U57 : NAND2X1 port map( A => ENC_LEFT(26), B => n2, Y => n1015);
   U58 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(26), Y => n1016);
   U59 : NAND2X1 port map( A => ENC_RIGHT(26), B => n2, Y => n1017);
   U60 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(26), Y => n1018);
   U61 : NAND2X1 port map( A => ENC_LEFT(2), B => n2, Y => n1019);
   U62 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(2), Y => n1020);
   U63 : NAND2X1 port map( A => ENC_RIGHT(2), B => n2, Y => n1021);
   U64 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(2), Y => n1022);
   U65 : NAND2X1 port map( A => ENC_LEFT(16), B => n2, Y => n1023);
   U66 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(16), Y => n1024);
   U67 : NAND2X1 port map( A => ENC_RIGHT(16), B => n2, Y => n1025);
   U68 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(16), Y => n1026);
   U69 : NAND2X1 port map( A => ENC_LEFT(8), B => n2, Y => n1027);
   U70 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(8), Y => n1028);
   U71 : NAND2X1 port map( A => ENC_RIGHT(8), B => n2, Y => n1029);
   U72 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(8), Y => n1030);
   U73 : NAND2X1 port map( A => ENC_LEFT(21), B => n2, Y => n1031);
   U74 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(21), Y => n1032);
   U75 : NAND2X1 port map( A => ENC_RIGHT(21), B => n2, Y => n1033);
   U76 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(21), Y => n1034);
   U77 : NAND2X1 port map( A => ENC_LEFT(3), B => n2, Y => n1035);
   U78 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(3), Y => n1036);
   U79 : NAND2X1 port map( A => ENC_RIGHT(3), B => n2, Y => n1037);
   U80 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(3), Y => n1038);
   U81 : NAND2X1 port map( A => ENC_LEFT(28), B => n2, Y => n1039);
   U82 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(28), Y => n1040);
   U83 : NAND2X1 port map( A => ENC_RIGHT(28), B => n2, Y => n1041);
   U84 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(28), Y => n1042);
   U85 : NAND2X1 port map( A => ENC_LEFT(7), B => n2, Y => n1043);
   U86 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(7), Y => n1044);
   U87 : NAND2X1 port map( A => ENC_RIGHT(7), B => n2, Y => n1045);
   U88 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(7), Y => n1046);
   U89 : NAND2X1 port map( A => ENC_LEFT(18), B => n2, Y => n1047);
   U90 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(18), Y => n1048);
   U91 : NAND2X1 port map( A => ENC_RIGHT(18), B => n2, Y => n1049);
   U92 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(18), Y => n1050);
   U93 : NAND2X1 port map( A => ENC_LEFT(24), B => n2, Y => n1051);
   U94 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(24), Y => n1052);
   U95 : NAND2X1 port map( A => ENC_RIGHT(24), B => n2, Y => n1053);
   U96 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(24), Y => n1054);
   U97 : NAND2X1 port map( A => ENC_LEFT(11), B => n2, Y => n1055);
   U98 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(11), Y => n1056);
   U99 : NAND2X1 port map( A => ENC_RIGHT(11), B => n2, Y => n1057);
   U100 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(11), Y => n1058);
   U101 : NAND2X1 port map( A => ENC_LEFT(17), B => n2, Y => n1059);
   U102 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(17), Y => n1060);
   U103 : NAND2X1 port map( A => ENC_RIGHT(17), B => n2, Y => n1061);
   U104 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(17), Y => n1062);
   U105 : NAND2X1 port map( A => ENC_LEFT(5), B => n2, Y => n1063);
   U106 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(5), Y => n1064);
   U107 : NAND2X1 port map( A => ENC_RIGHT(5), B => n2, Y => n1065);
   U108 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(5), Y => n1066);
   U109 : NAND2X1 port map( A => ENC_LEFT(27), B => n2, Y => n1067);
   U110 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(27), Y => n1068);
   U111 : NAND2X1 port map( A => ENC_RIGHT(27), B => n2, Y => n1069);
   U112 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(27), Y => n1070);
   U113 : NAND2X1 port map( A => ENC_LEFT(1), B => n2, Y => n1071);
   U114 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(1), Y => n1072);
   U115 : NAND2X1 port map( A => ENC_RIGHT(1), B => n2, Y => n1073);
   U116 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(1), Y => n1074);
   U117 : NAND2X1 port map( A => ENC_LEFT(9), B => n2, Y => n1075);
   U118 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(9), Y => n1076);
   U119 : NAND2X1 port map( A => ENC_RIGHT(9), B => n2, Y => n1077);
   U120 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(9), Y => n1078);
   U121 : NAND2X1 port map( A => ENC_LEFT(15), B => n2, Y => n1079);
   U122 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(15), Y => n1080);
   U123 : NAND2X1 port map( A => ENC_RIGHT(15), B => n2, Y => n1081);
   U124 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(15), Y => n1082);
   U125 : NAND2X1 port map( A => ENC_LEFT(23), B => n2, Y => n1083);
   U126 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(23), Y => n1084);
   U127 : NAND2X1 port map( A => ENC_RIGHT(23), B => n2, Y => n1085);
   U128 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(23), Y => n1086);
   U129 : NAND2X1 port map( A => ENC_RIGHT(0), B => n2, Y => n1087);
   U130 : OR2X1 port map( A => IN_SELECT, B => ENC_RIGHT(0), Y => n1088);
   U131 : NAND2X1 port map( A => ENC_LEFT(0), B => n2, Y => n1089);
   U132 : OR2X1 port map( A => IN_SELECT, B => ENC_LEFT(0), Y => n1090);
   U133 : XNOR2X1 port map( A => CUR_ENC_LEFT_9_port, B => n3, Y => 
                           NXT_ENC_RIGHT1_9_port);
   U134 : NOR2X1 port map( A => n4, B => n5, Y => n3);
   U135 : OAI21X1 port map( A => n6, B => n7, C => n8, Y => n5);
   U136 : NAND3X1 port map( A => n9, B => n10, C => n11, Y => n4);
   U137 : OAI21X1 port map( A => n12, B => n13, C => n14, Y => n11);
   U138 : OR2X1 port map( A => n15, B => n16, Y => n13);
   U139 : NAND2X1 port map( A => n17, B => n18, Y => n12);
   U140 : OAI21X1 port map( A => n19, B => n20, C => n21, Y => n10);
   U141 : NOR2X1 port map( A => n22, B => n23, Y => n19);
   U142 : OAI21X1 port map( A => n24, B => n25, C => n26, Y => n9);
   U143 : XOR2X1 port map( A => n27, B => CUR_ENC_LEFT_8_port, Y => 
                           NXT_ENC_RIGHT1_8_port);
   U144 : NAND3X1 port map( A => n28, B => n29, C => n30, Y => n27);
   U145 : AOI21X1 port map( A => n31, B => n32, C => n33, Y => n30);
   U146 : NAND3X1 port map( A => n34, B => n35, C => n36, Y => n32);
   U147 : INVX1 port map( A => n37, Y => n36);
   U148 : OAI21X1 port map( A => n38, B => n39, C => n40, Y => n37);
   U149 : OAI21X1 port map( A => n41, B => n42, C => n43, Y => n29);
   U150 : OAI21X1 port map( A => n44, B => n45, C => n46, Y => n42);
   U151 : INVX1 port map( A => n47, Y => n46);
   U152 : NAND2X1 port map( A => n48, B => n49, Y => n45);
   U153 : AOI22X1 port map( A => n50, B => n51, C => n52, D => n53, Y => n28);
   U154 : OAI21X1 port map( A => n54, B => n55, C => n56, Y => n53);
   U155 : AND2X1 port map( A => n57, B => n58, Y => n56);
   U156 : OR2X1 port map( A => n59, B => n60, Y => n55);
   U157 : NOR2X1 port map( A => n61, B => n62, Y => n50);
   U158 : XNOR2X1 port map( A => CUR_ENC_LEFT_7_port, B => n63, Y => 
                           NXT_ENC_RIGHT1_7_port);
   U159 : NOR2X1 port map( A => n64, B => n65, Y => n63);
   U160 : OAI21X1 port map( A => n66, B => n67, C => n68, Y => n65);
   U161 : INVX1 port map( A => n69, Y => n66);
   U162 : NAND3X1 port map( A => n70, B => n71, C => n72, Y => n64);
   U163 : OAI21X1 port map( A => n73, B => n74, C => n75, Y => n72);
   U164 : OAI21X1 port map( A => n76, B => n77, C => n78, Y => n74);
   U165 : OAI21X1 port map( A => n79, B => n80, C => n81, Y => n71);
   U166 : OR2X1 port map( A => n82, B => n83, Y => n70);
   U167 : XNOR2X1 port map( A => CUR_ENC_LEFT_6_port, B => n84, Y => 
                           NXT_ENC_RIGHT1_6_port);
   U168 : NOR2X1 port map( A => n85, B => n86, Y => n84);
   U169 : NAND3X1 port map( A => n87, B => n88, C => n89, Y => n86);
   U170 : INVX1 port map( A => n90, Y => n89);
   U171 : OAI22X1 port map( A => n91, B => n92, C => n93, D => n94, Y => n90);
   U172 : INVX1 port map( A => n95, Y => n92);
   U173 : INVX1 port map( A => n96, Y => n87);
   U174 : NAND3X1 port map( A => n97, B => n98, C => n99, Y => n85);
   U175 : AOI22X1 port map( A => n100, B => n101, C => n102, D => n103, Y => 
                           n99);
   U176 : OAI21X1 port map( A => n94, B => n104, C => n105, Y => n101);
   U177 : MUX2X1 port map( B => n106, A => n107, S => n108, Y => n105);
   U178 : NOR2X1 port map( A => n109, B => n110, Y => n107);
   U179 : NOR2X1 port map( A => n111, B => n112, Y => n106);
   U180 : OR2X1 port map( A => n113, B => n114, Y => n104);
   U181 : INVX1 port map( A => n115, Y => n98);
   U182 : AOI21X1 port map( A => n116, B => n117, C => n110, Y => n115);
   U183 : OAI21X1 port map( A => n118, B => n119, C => n120, Y => n97);
   U184 : NAND2X1 port map( A => n121, B => n122, Y => n119);
   U185 : XOR2X1 port map( A => n123, B => CUR_ENC_LEFT_5_port, Y => 
                           NXT_ENC_RIGHT1_5_port);
   U186 : NAND3X1 port map( A => n124, B => n125, C => n126, Y => n123);
   U187 : NOR2X1 port map( A => n127, B => n128, Y => n126);
   U188 : OAI21X1 port map( A => n129, B => n130, C => n131, Y => n128);
   U189 : OAI21X1 port map( A => n132, B => n133, C => n134, Y => n131);
   U190 : AOI21X1 port map( A => n135, B => n136, C => n137, Y => n129);
   U191 : OAI21X1 port map( A => n138, B => n139, C => n140, Y => n127);
   U192 : OAI21X1 port map( A => n141, B => n142, C => n143, Y => n140);
   U193 : OAI21X1 port map( A => n144, B => n145, C => n146, Y => n142);
   U194 : NAND2X1 port map( A => n147, B => n148, Y => n141);
   U195 : OR2X1 port map( A => n149, B => n150, Y => n139);
   U196 : AOI21X1 port map( A => n151, B => n152, C => n153, Y => n124);
   U197 : INVX1 port map( A => n154, Y => n152);
   U198 : XOR2X1 port map( A => n155, B => CUR_ENC_LEFT_4_port, Y => 
                           NXT_ENC_RIGHT1_4_port);
   U199 : NAND3X1 port map( A => n156, B => n157, C => n158, Y => n155);
   U200 : AOI21X1 port map( A => n159, B => n160, C => n161, Y => n158);
   U201 : OAI21X1 port map( A => n162, B => n163, C => n164, Y => n161);
   U202 : OAI21X1 port map( A => n165, B => n166, C => n167, Y => n164);
   U203 : OAI21X1 port map( A => n168, B => n169, C => n170, Y => n166);
   U204 : OAI21X1 port map( A => n171, B => n172, C => n173, Y => n165);
   U205 : AND2X1 port map( A => n174, B => n175, Y => n173);
   U206 : OAI21X1 port map( A => n176, B => n177, C => n178, Y => n157);
   U207 : OAI22X1 port map( A => n179, B => n169, C => n171, D => n168, Y => 
                           n177);
   U208 : NAND2X1 port map( A => n180, B => n181, Y => n176);
   U209 : AOI22X1 port map( A => n182, B => n183, C => n184, D => n185, Y => 
                           n156);
   U210 : NAND3X1 port map( A => n186, B => n187, C => n170, Y => n185);
   U211 : NAND3X1 port map( A => n188, B => n189, C => n190, Y => n183);
   U212 : XNOR2X1 port map( A => CUR_ENC_LEFT_3_port, B => n191, Y => 
                           NXT_ENC_RIGHT1_3_port);
   U213 : NOR2X1 port map( A => n192, B => n193, Y => n191);
   U214 : OAI21X1 port map( A => n194, B => n195, C => n196, Y => n193);
   U215 : OAI21X1 port map( A => n197, B => n198, C => n199, Y => n196);
   U216 : NAND3X1 port map( A => n200, B => n201, C => n202, Y => n198);
   U217 : NAND3X1 port map( A => n203, B => n204, C => n205, Y => n197);
   U218 : NAND3X1 port map( A => n206, B => n207, C => n208, Y => n192);
   U219 : OAI21X1 port map( A => n209, B => n210, C => n211, Y => n208);
   U220 : NAND2X1 port map( A => n212, B => n200, Y => n210);
   U221 : AOI22X1 port map( A => n213, B => n214, C => n215, D => n216, Y => 
                           n212);
   U222 : NAND3X1 port map( A => n201, B => n217, C => n218, Y => n209);
   U223 : OAI21X1 port map( A => n219, B => n220, C => n221, Y => n207);
   U224 : NOR2X1 port map( A => n222, B => n223, Y => n219);
   U225 : OAI21X1 port map( A => n224, B => n225, C => n226, Y => n206);
   U226 : XNOR2X1 port map( A => CUR_ENC_LEFT_31_port, B => n227, Y => 
                           NXT_ENC_RIGHT1_31_port);
   U227 : NOR2X1 port map( A => n228, B => n229, Y => n227);
   U228 : NAND2X1 port map( A => n88, B => n230, Y => n229);
   U229 : OAI21X1 port map( A => n231, B => n232, C => n120, Y => n230);
   U230 : OAI21X1 port map( A => n233, B => n234, C => n235, Y => n232);
   U231 : AOI21X1 port map( A => n236, B => n237, C => n238, Y => n88);
   U232 : OAI22X1 port map( A => n239, B => n110, C => n112, D => n240, Y => 
                           n238);
   U233 : NAND3X1 port map( A => n241, B => n242, C => n243, Y => n228);
   U234 : OAI21X1 port map( A => n244, B => n245, C => n246, Y => n243);
   U235 : OAI21X1 port map( A => n108, B => n247, C => n248, Y => n245);
   U236 : OAI21X1 port map( A => n249, B => n250, C => n237, Y => n242);
   U237 : NAND2X1 port map( A => n240, B => n251, Y => n250);
   U238 : INVX1 port map( A => n252, Y => n240);
   U239 : NAND2X1 port map( A => n121, B => n253, Y => n249);
   U240 : OAI21X1 port map( A => n254, B => n255, C => n102, Y => n241);
   U241 : INVX1 port map( A => n256, Y => n254);
   U242 : XNOR2X1 port map( A => CUR_ENC_LEFT_30_port, B => n257, Y => 
                           NXT_ENC_RIGHT1_30_port);
   U243 : NOR2X1 port map( A => n258, B => n259, Y => n257);
   U244 : OAI21X1 port map( A => n260, B => n180, C => n261, Y => n259);
   U245 : OAI21X1 port map( A => n262, B => n263, C => n182, Y => n261);
   U246 : OAI21X1 port map( A => n169, B => n172, C => n175, Y => n263);
   U247 : NAND3X1 port map( A => n264, B => n265, C => n266, Y => n258);
   U248 : OAI21X1 port map( A => n267, B => n268, C => n178, Y => n266);
   U249 : NAND2X1 port map( A => n190, B => n163, Y => n268);
   U250 : OAI21X1 port map( A => n269, B => n270, C => n167, Y => n265);
   U251 : OAI21X1 port map( A => n271, B => n272, C => n170, Y => n270);
   U252 : INVX1 port map( A => n273, Y => n170);
   U253 : OAI21X1 port map( A => n274, B => n169, C => n275, Y => n273);
   U254 : NAND2X1 port map( A => n180, B => n276, Y => n269);
   U255 : OAI21X1 port map( A => n277, B => n278, C => n184, Y => n264);
   U256 : NOR2X1 port map( A => n279, B => n168, Y => n277);
   U257 : XOR2X1 port map( A => n280, B => CUR_ENC_LEFT_2_port, Y => 
                           NXT_ENC_RIGHT1_2_port);
   U258 : NAND3X1 port map( A => n281, B => n282, C => n283, Y => n280);
   U259 : AOI21X1 port map( A => n31, B => n284, C => n285, Y => n283);
   U260 : OAI21X1 port map( A => n286, B => n287, C => n288, Y => n285);
   U261 : OAI21X1 port map( A => n289, B => n290, C => n291, Y => n288);
   U262 : NOR2X1 port map( A => n292, B => n293, Y => n286);
   U263 : OAI21X1 port map( A => n49, B => n294, C => n295, Y => n284);
   U264 : OAI21X1 port map( A => n296, B => n297, C => n298, Y => n282);
   U265 : OAI21X1 port map( A => n39, B => n44, C => n299, Y => n297);
   U266 : NAND3X1 port map( A => n300, B => n35, C => n301, Y => n296);
   U267 : AOI22X1 port map( A => n43, B => n302, C => n303, D => n304, Y => 
                           n281);
   U268 : NAND2X1 port map( A => n58, B => n305, Y => n302);
   U269 : OAI21X1 port map( A => n306, B => n307, C => n48, Y => n305);
   U270 : XNOR2X1 port map( A => CUR_ENC_LEFT_29_port, B => n308, Y => 
                           NXT_ENC_RIGHT1_29_port);
   U271 : NOR2X1 port map( A => n309, B => n310, Y => n308);
   U272 : OAI21X1 port map( A => n311, B => n312, C => n313, Y => n310);
   U273 : INVX1 port map( A => n314, Y => n313);
   U274 : AOI21X1 port map( A => n315, B => n316, C => n317, Y => n311);
   U275 : OAI21X1 port map( A => n318, B => n82, C => n319, Y => n309);
   U276 : AOI22X1 port map( A => n320, B => n321, C => n81, D => n322, Y => 
                           n319);
   U277 : OAI21X1 port map( A => n323, B => n324, C => n83, Y => n322);
   U278 : NOR2X1 port map( A => n325, B => n326, Y => n83);
   U279 : OAI21X1 port map( A => n327, B => n77, C => n328, Y => n326);
   U280 : OAI21X1 port map( A => n329, B => n330, C => n331, Y => n321);
   U281 : INVX1 port map( A => n73, Y => n331);
   U282 : NAND3X1 port map( A => n332, B => n333, C => n334, Y => n73);
   U283 : AND2X1 port map( A => n335, B => n336, Y => n334);
   U284 : INVX1 port map( A => n337, Y => n82);
   U285 : AOI21X1 port map( A => n338, B => n339, C => n340, Y => n318);
   U286 : XNOR2X1 port map( A => CUR_ENC_LEFT_28_port, B => n341, Y => 
                           NXT_ENC_RIGHT1_28_port);
   U287 : NOR2X1 port map( A => n342, B => n343, Y => n341);
   U288 : NAND3X1 port map( A => n344, B => n345, C => n346, Y => n343);
   U289 : OAI21X1 port map( A => n347, B => n348, C => n211, Y => n346);
   U290 : OR2X1 port map( A => n349, B => n350, Y => n348);
   U291 : NAND2X1 port map( A => n201, B => n205, Y => n347);
   U292 : INVX1 port map( A => n224, Y => n201);
   U293 : OAI21X1 port map( A => n351, B => n352, C => n226, Y => n345);
   U294 : INVX1 port map( A => n353, Y => n351);
   U295 : NAND2X1 port map( A => n354, B => n355, Y => n344);
   U296 : OAI21X1 port map( A => n356, B => n357, C => n358, Y => n355);
   U297 : OAI21X1 port map( A => n215, B => n359, C => n226, Y => n358);
   U298 : INVX1 port map( A => n221, Y => n357);
   U299 : NAND3X1 port map( A => n360, B => n361, C => n362, Y => n342);
   U300 : OAI21X1 port map( A => n363, B => n364, C => n199, Y => n362);
   U301 : NAND2X1 port map( A => n365, B => n366, Y => n364);
   U302 : NAND2X1 port map( A => n202, B => n353, Y => n363);
   U303 : OAI21X1 port map( A => n367, B => n368, C => n221, Y => n361);
   U304 : INVX1 port map( A => n366, Y => n368);
   U305 : INVX1 port map( A => n369, Y => n360);
   U306 : AOI21X1 port map( A => n370, B => n217, C => n195, Y => n369);
   U307 : XOR2X1 port map( A => n371, B => CUR_ENC_LEFT_27_port, Y => 
                           NXT_ENC_RIGHT1_27_port);
   U308 : NAND3X1 port map( A => n372, B => n373, C => n374, Y => n371);
   U309 : NOR2X1 port map( A => n375, B => n376, Y => n374);
   U310 : INVX1 port map( A => n377, Y => n376);
   U311 : AOI22X1 port map( A => n378, B => n137, C => n379, D => n380, Y => 
                           n377);
   U312 : OAI21X1 port map( A => n149, B => n381, C => n382, Y => n137);
   U313 : AND2X1 port map( A => n383, B => n384, Y => n382);
   U314 : OAI21X1 port map( A => n385, B => n145, C => n386, Y => n375);
   U315 : OAI21X1 port map( A => n387, B => n388, C => n134, Y => n386);
   U316 : NAND2X1 port map( A => n389, B => n148, Y => n388);
   U317 : INVX1 port map( A => n390, Y => n148);
   U318 : AOI21X1 port map( A => n151, B => n391, C => n392, Y => n385);
   U319 : OAI21X1 port map( A => n393, B => n394, C => n130, Y => n392);
   U320 : AOI22X1 port map( A => n143, B => n133, C => n395, D => n151, Y => 
                           n373);
   U321 : NAND3X1 port map( A => n384, B => n396, C => n397, Y => n133);
   U322 : AOI21X1 port map( A => n398, B => n399, C => n400, Y => n397);
   U323 : NOR2X1 port map( A => n153, B => n401, Y => n372);
   U324 : XNOR2X1 port map( A => CUR_ENC_LEFT_26_port, B => n402, Y => 
                           NXT_ENC_RIGHT1_26_port);
   U325 : NOR2X1 port map( A => n403, B => n404, Y => n402);
   U326 : NAND3X1 port map( A => n405, B => n406, C => n407, Y => n404);
   U327 : INVX1 port map( A => n33, Y => n407);
   U328 : NAND2X1 port map( A => n408, B => n409, Y => n33);
   U329 : AOI22X1 port map( A => n410, B => n289, C => n52, D => n411, Y => 
                           n409);
   U330 : OAI21X1 port map( A => n44, B => n49, C => n412, Y => n411);
   U331 : AND2X1 port map( A => n40, B => n295, Y => n412);
   U332 : INVX1 port map( A => n57, Y => n289);
   U333 : NAND3X1 port map( A => n54, B => n59, C => n60, Y => n57);
   U334 : AOI22X1 port map( A => n298, B => n304, C => n31, D => n413, Y => 
                           n408);
   U335 : OAI21X1 port map( A => n41, B => n293, C => n291, Y => n406);
   U336 : OR2X1 port map( A => n414, B => n415, Y => n293);
   U337 : OAI21X1 port map( A => n54, B => n416, C => n300, Y => n415);
   U338 : NAND3X1 port map( A => n417, B => n418, C => n419, Y => n300);
   U339 : OAI21X1 port map( A => n47, B => n420, C => n52, Y => n405);
   U340 : NAND2X1 port map( A => n421, B => n34, Y => n420);
   U341 : OR2X1 port map( A => n422, B => n418, Y => n34);
   U342 : NAND2X1 port map( A => n423, B => n299, Y => n47);
   U343 : OAI21X1 port map( A => n424, B => n62, C => n425, Y => n403);
   U344 : AOI22X1 port map( A => n426, B => n427, C => n428, D => n51, Y => 
                           n425);
   U345 : NOR2X1 port map( A => n38, B => n429, Y => n428);
   U346 : NOR2X1 port map( A => n430, B => n44, Y => n426);
   U347 : INVX1 port map( A => n298, Y => n62);
   U348 : AOI21X1 port map( A => n431, B => n417, C => n432, Y => n424);
   U349 : NOR2X1 port map( A => n433, B => n59, Y => n431);
   U350 : XNOR2X1 port map( A => CUR_ENC_LEFT_25_port, B => n434, Y => 
                           NXT_ENC_RIGHT1_25_port);
   U351 : NOR2X1 port map( A => n435, B => n436, Y => n434);
   U352 : NAND2X1 port map( A => n437, B => n438, Y => n436);
   U353 : AOI22X1 port map( A => n439, B => n440, C => n441, D => n442, Y => 
                           n437);
   U354 : NAND3X1 port map( A => n443, B => n444, C => n445, Y => n440);
   U355 : INVX1 port map( A => n446, Y => n445);
   U356 : NAND3X1 port map( A => n447, B => n448, C => n449, Y => n435);
   U357 : AOI22X1 port map( A => n450, B => n451, C => n452, D => n453, Y => 
                           n449);
   U358 : OAI21X1 port map( A => n454, B => n455, C => n456, Y => n453);
   U359 : INVX1 port map( A => n457, Y => n455);
   U360 : NOR2X1 port map( A => n458, B => n459, Y => n450);
   U361 : OAI21X1 port map( A => n460, B => n461, C => n462, Y => n448);
   U362 : OAI21X1 port map( A => n463, B => n464, C => n465, Y => n447);
   U363 : OAI21X1 port map( A => n466, B => n459, C => n443, Y => n464);
   U364 : XOR2X1 port map( A => n467, B => CUR_ENC_LEFT_24_port, Y => 
                           NXT_ENC_RIGHT1_24_port);
   U365 : NAND3X1 port map( A => n468, B => n469, C => n470, Y => n467);
   U366 : NOR2X1 port map( A => n314, B => n471, Y => n470);
   U367 : OAI21X1 port map( A => n472, B => n473, C => n474, Y => n471);
   U368 : OAI21X1 port map( A => n475, B => n69, C => n75, Y => n474);
   U369 : OAI21X1 port map( A => n316, B => n476, C => n477, Y => n69);
   U370 : AND2X1 port map( A => n333, B => n478, Y => n477);
   U371 : INVX1 port map( A => n479, Y => n475);
   U372 : AOI21X1 port map( A => n480, B => n76, C => n481, Y => n472);
   U373 : NAND2X1 port map( A => n335, B => n482, Y => n481);
   U374 : NOR2X1 port map( A => n315, B => n316, Y => n480);
   U375 : NAND2X1 port map( A => n483, B => n484, Y => n314);
   U376 : AOI22X1 port map( A => n75, B => n485, C => n81, D => n486, Y => n484
                           );
   U377 : OAI21X1 port map( A => n324, B => n77, C => n487, Y => n485);
   U378 : INVX1 port map( A => n325, Y => n487);
   U379 : AOI22X1 port map( A => n488, B => n320, C => n337, D => n489, Y => 
                           n483);
   U380 : NAND3X1 port map( A => n328, B => n478, C => n482, Y => n489);
   U381 : INVX1 port map( A => n490, Y => n478);
   U382 : INVX1 port map( A => n482, Y => n488);
   U383 : OAI21X1 port map( A => n491, B => n79, C => n337, Y => n469);
   U384 : NAND2X1 port map( A => n492, B => n479, Y => n79);
   U385 : AOI21X1 port map( A => n320, B => n493, C => n494, Y => n468);
   U386 : INVX1 port map( A => n495, Y => n494);
   U387 : OAI21X1 port map( A => n496, B => n476, C => n497, Y => n493);
   U388 : INVX1 port map( A => n498, Y => n476);
   U389 : XNOR2X1 port map( A => CUR_ENC_LEFT_23_port, B => n499, Y => 
                           NXT_ENC_RIGHT1_23_port);
   U390 : NOR2X1 port map( A => n500, B => n501, Y => n499);
   U391 : INVX1 port map( A => n502, Y => n501);
   U392 : AOI22X1 port map( A => n503, B => n504, C => n505, D => n21, Y => 
                           n502);
   U393 : NAND3X1 port map( A => n506, B => n507, C => n508, Y => n500);
   U394 : OAI21X1 port map( A => n509, B => n510, C => n26, Y => n508);
   U395 : NAND3X1 port map( A => n511, B => n512, C => n513, Y => n510);
   U396 : OAI21X1 port map( A => n514, B => n515, C => n516, Y => n513);
   U397 : NAND3X1 port map( A => n517, B => n518, C => n519, Y => n509);
   U398 : OAI22X1 port map( A => n520, B => n521, C => n21, D => n504, Y => 
                           n507);
   U399 : INVX1 port map( A => n522, Y => n521);
   U400 : OAI21X1 port map( A => n523, B => n524, C => n14, Y => n506);
   U401 : INVX1 port map( A => n6, Y => n524);
   U402 : NOR2X1 port map( A => n525, B => n526, Y => n6);
   U403 : OAI21X1 port map( A => n516, B => n17, C => n527, Y => n526);
   U404 : XOR2X1 port map( A => n528, B => CUR_ENC_LEFT_22_port, Y => 
                           NXT_ENC_RIGHT1_22_port);
   U405 : NAND3X1 port map( A => n529, B => n530, C => n531, Y => n528);
   U406 : AOI21X1 port map( A => n237, B => n532, C => n533, Y => n531);
   U407 : NAND2X1 port map( A => n534, B => n535, Y => n533);
   U408 : OAI21X1 port map( A => n536, B => n231, C => n95, Y => n535);
   U409 : NAND2X1 port map( A => n94, B => n110, Y => n95);
   U410 : INVX1 port map( A => n246, Y => n110);
   U411 : OAI21X1 port map( A => n537, B => n103, C => n246, Y => n534);
   U412 : NAND2X1 port map( A => n538, B => n251, Y => n103);
   U413 : OAI21X1 port map( A => n539, B => n540, C => n122, Y => n532);
   U414 : NAND2X1 port map( A => n100, B => n233, Y => n540);
   U415 : OAI21X1 port map( A => n541, B => n542, C => n120, Y => n530);
   U416 : OAI21X1 port map( A => n247, B => n233, C => n235, Y => n542);
   U417 : INVX1 port map( A => n543, Y => n235);
   U418 : NAND3X1 port map( A => n544, B => n122, C => n256, Y => n543);
   U419 : INVX1 port map( A => n109, Y => n247);
   U420 : NAND3X1 port map( A => n93, B => n116, C => n251, Y => n541);
   U421 : OAI21X1 port map( A => n545, B => n546, C => n102, Y => n529);
   U422 : OR2X1 port map( A => n236, B => n252, Y => n546);
   U423 : NAND2X1 port map( A => n547, B => n116, Y => n252);
   U424 : NAND2X1 port map( A => n114, B => n548, Y => n116);
   U425 : NAND3X1 port map( A => n117, B => n549, C => n538, Y => n236);
   U426 : NAND3X1 port map( A => n248, B => n544, C => n93, Y => n545);
   U427 : NAND2X1 port map( A => n550, B => n551, Y => n248);
   U428 : XNOR2X1 port map( A => CUR_ENC_LEFT_21_port, B => n552, Y => 
                           NXT_ENC_RIGHT1_21_port);
   U429 : NOR2X1 port map( A => n553, B => n554, Y => n552);
   U430 : OAI21X1 port map( A => n195, B => n555, C => n556, Y => n554);
   U431 : OAI21X1 port map( A => n557, B => n558, C => n199, Y => n556);
   U432 : NAND2X1 port map( A => n370, B => n204, Y => n558);
   U433 : INVX1 port map( A => n225, Y => n555);
   U434 : NAND3X1 port map( A => n559, B => n560, C => n561, Y => n225);
   U435 : AOI21X1 port map( A => n354, B => n215, C => n562, Y => n561);
   U436 : INVX1 port map( A => n205, Y => n562);
   U437 : OAI21X1 port map( A => n563, B => n564, C => n565, Y => n553);
   U438 : AOI22X1 port map( A => n211, B => n566, C => n221, D => n567, Y => 
                           n565);
   U439 : NAND3X1 port map( A => n217, B => n568, C => n569, Y => n567);
   U440 : INVX1 port map( A => n220, Y => n569);
   U441 : OAI21X1 port map( A => n570, B => n571, C => n203, Y => n220);
   U442 : NAND3X1 port map( A => n205, B => n203, C => n572, Y => n566);
   U443 : INVX1 port map( A => n557, Y => n572);
   U444 : NAND3X1 port map( A => n194, B => n353, C => n573, Y => n557);
   U445 : NOR2X1 port map( A => n224, B => n574, Y => n573);
   U446 : NOR2X1 port map( A => n223, B => n571, Y => n224);
   U447 : INVX1 port map( A => n226, Y => n564);
   U448 : AOI21X1 port map( A => n354, B => n356, C => n575, Y => n563);
   U449 : NAND2X1 port map( A => n370, B => n218, Y => n575);
   U450 : XOR2X1 port map( A => n576, B => CUR_ENC_LEFT_20_port, Y => 
                           NXT_ENC_RIGHT1_20_port);
   U451 : NAND3X1 port map( A => n577, B => n578, C => n579, Y => n576);
   U452 : NOR2X1 port map( A => n580, B => n581, Y => n579);
   U453 : OAI21X1 port map( A => n582, B => n458, C => n583, Y => n581);
   U454 : OAI21X1 port map( A => n584, B => n585, C => n452, Y => n583);
   U455 : OAI21X1 port map( A => n586, B => n587, C => n588, Y => n585);
   U456 : NAND2X1 port map( A => n589, B => n456, Y => n584);
   U457 : INVX1 port map( A => n590, Y => n582);
   U458 : OAI21X1 port map( A => n591, B => n592, C => n439, Y => n578);
   U459 : OAI21X1 port map( A => n459, B => n593, C => n594, Y => n592);
   U460 : INVX1 port map( A => n460, Y => n594);
   U461 : AOI22X1 port map( A => n465, B => n595, C => n462, D => n596, Y => 
                           n577);
   U462 : OAI21X1 port map( A => n597, B => n598, C => n599, Y => n596);
   U463 : INVX1 port map( A => n463, Y => n599);
   U464 : NAND3X1 port map( A => n600, B => n601, C => n602, Y => n463);
   U465 : AOI21X1 port map( A => n451, B => n603, C => n604, Y => n602);
   U466 : NAND2X1 port map( A => n605, B => n606, Y => n598);
   U467 : NAND3X1 port map( A => n607, B => n608, C => n609, Y => n595);
   U468 : NOR2X1 port map( A => n446, B => n591, Y => n609);
   U469 : OAI21X1 port map( A => n610, B => n593, C => n589, Y => n446);
   U470 : INVX1 port map( A => n603, Y => n610);
   U471 : AND2X1 port map( A => n611, B => n612, Y => n607);
   U472 : XNOR2X1 port map( A => CUR_ENC_LEFT_1_port, B => n613, Y => 
                           NXT_ENC_RIGHT1_1_port);
   U473 : NOR2X1 port map( A => n614, B => n615, Y => n613);
   U474 : OAI21X1 port map( A => n616, B => n7, C => n617, Y => n615);
   U475 : INVX1 port map( A => n504, Y => n7);
   U476 : OAI21X1 port map( A => n618, B => n619, C => n620, Y => n614);
   U477 : AOI21X1 port map( A => n21, B => n621, C => n622, Y => n620);
   U478 : INVX1 port map( A => n623, Y => n622);
   U479 : OAI21X1 port map( A => n624, B => n503, C => n14, Y => n623);
   U480 : NAND3X1 port map( A => n512, B => n625, C => n626, Y => n503);
   U481 : AOI21X1 port map( A => n627, B => n628, C => n25, Y => n626);
   U482 : NAND3X1 port map( A => n629, B => n630, C => n511, Y => n25);
   U483 : INVX1 port map( A => n631, Y => n630);
   U484 : NAND3X1 port map( A => n527, B => n17, C => n632, Y => n621);
   U485 : INVX1 port map( A => n525, Y => n632);
   U486 : NAND3X1 port map( A => n625, B => n629, C => n522, Y => n525);
   U487 : NAND3X1 port map( A => n633, B => n634, C => n635, Y => n629);
   U488 : INVX1 port map( A => n636, Y => n527);
   U489 : OAI21X1 port map( A => n637, B => n638, C => n639, Y => n636);
   U490 : AND2X1 port map( A => n18, B => n640, Y => n639);
   U491 : INVX1 port map( A => n26, Y => n619);
   U492 : INVX1 port map( A => n505, Y => n618);
   U493 : NAND3X1 port map( A => n641, B => n642, C => n643, Y => n505);
   U494 : AOI21X1 port map( A => n515, B => n628, C => n16, Y => n643);
   U495 : INVX1 port map( A => n519, Y => n16);
   U496 : INVX1 port map( A => n17, Y => n515);
   U497 : XOR2X1 port map( A => n644, B => CUR_ENC_LEFT_19_port, Y => 
                           NXT_ENC_RIGHT1_19_port);
   U498 : NAND3X1 port map( A => n645, B => n646, C => n647, Y => n644);
   U499 : AOI21X1 port map( A => n648, B => n649, C => n650, Y => n647);
   U500 : OAI21X1 port map( A => n188, B => n651, C => n652, Y => n650);
   U501 : OAI21X1 port map( A => n653, B => n654, C => n167, Y => n652);
   U502 : NAND2X1 port map( A => n655, B => n190, Y => n654);
   U503 : AOI21X1 port map( A => n656, B => n657, C => n658, Y => n190);
   U504 : NAND2X1 port map( A => n174, B => n175, Y => n658);
   U505 : OAI21X1 port map( A => n169, B => n172, C => n180, Y => n653);
   U506 : AOI22X1 port map( A => n659, B => n660, C => n657, D => n661, Y => 
                           n188);
   U507 : OAI21X1 port map( A => n662, B => n663, C => n182, Y => n646);
   U508 : OAI21X1 port map( A => n664, B => n172, C => n665, Y => n663);
   U509 : NAND2X1 port map( A => n180, B => n175, Y => n662);
   U510 : AOI22X1 port map( A => n666, B => n160, C => n667, D => n668, Y => 
                           n645);
   U511 : OAI22X1 port map( A => n669, B => n651, C => n670, D => n671, Y => 
                           n668);
   U512 : INVX1 port map( A => n184, Y => n651);
   U513 : INVX1 port map( A => n260, Y => n160);
   U514 : NOR2X1 port map( A => n184, B => n178, Y => n260);
   U515 : NAND2X1 port map( A => n672, B => n673, Y => n666);
   U516 : XOR2X1 port map( A => n674, B => CUR_ENC_LEFT_18_port, Y => 
                           NXT_ENC_RIGHT1_18_port);
   U517 : NAND2X1 port map( A => n675, B => n676, Y => n674);
   U518 : AOI21X1 port map( A => n75, B => n677, C => n678, Y => n676);
   U519 : OAI21X1 port map( A => n679, B => n67, C => n495, Y => n678);
   U520 : NAND3X1 port map( A => n680, B => n81, C => n681, Y => n495);
   U521 : INVX1 port map( A => n320, Y => n67);
   U522 : NOR2X1 port map( A => n682, B => n317, Y => n679);
   U523 : NAND2X1 port map( A => n683, B => n336, Y => n317);
   U524 : INVX1 port map( A => n328, Y => n682);
   U525 : NAND3X1 port map( A => n316, B => n327, C => n315, Y => n328);
   U526 : OAI21X1 port map( A => n684, B => n685, C => n497, Y => n677);
   U527 : INVX1 port map( A => n686, Y => n497);
   U528 : NAND3X1 port map( A => n336, B => n333, C => n492, Y => n686);
   U529 : AOI22X1 port map( A => n329, B => n681, C => n687, D => n680, Y => 
                           n492);
   U530 : NAND2X1 port map( A => n338, B => n329, Y => n333);
   U531 : NAND3X1 port map( A => n339, B => n315, C => n76, Y => n336);
   U532 : NAND2X1 port map( A => n327, B => n688, Y => n685);
   U533 : NOR2X1 port map( A => n689, B => n690, Y => n675);
   U534 : OAI21X1 port map( A => n691, B => n473, C => n692, Y => n690);
   U535 : OAI21X1 port map( A => n80, B => n693, C => n337, Y => n692);
   U536 : OAI21X1 port map( A => n684, B => n688, C => n482, Y => n693);
   U537 : INVX1 port map( A => n683, Y => n80);
   U538 : AOI22X1 port map( A => n684, B => n491, C => n680, D => n681, Y => 
                           n683);
   U539 : INVX1 port map( A => n694, Y => n491);
   U540 : NAND3X1 port map( A => n339, B => n323, C => n76, Y => n694);
   U541 : INVX1 port map( A => n340, Y => n691);
   U542 : OAI21X1 port map( A => n323, B => n695, C => n696, Y => n340);
   U543 : AND2X1 port map( A => n332, B => n78, Y => n696);
   U544 : INVX1 port map( A => n68, Y => n689);
   U545 : NOR2X1 port map( A => n697, B => n698, Y => n68);
   U546 : OAI21X1 port map( A => n699, B => n312, C => n700, Y => n698);
   U547 : OAI21X1 port map( A => n701, B => n702, C => n320, Y => n700);
   U548 : NOR2X1 port map( A => n703, B => n704, Y => n320);
   U549 : OAI22X1 port map( A => n688, B => n330, C => n77, D => n695, Y => 
                           n702);
   U550 : INVX1 port map( A => n338, Y => n695);
   U551 : NOR2X1 port map( A => n327, B => n684, Y => n338);
   U552 : INVX1 port map( A => n680, Y => n77);
   U553 : INVX1 port map( A => n681, Y => n330);
   U554 : NOR2X1 port map( A => n705, B => n76, Y => n681);
   U555 : NAND2X1 port map( A => n482, B => n332, Y => n701);
   U556 : NAND3X1 port map( A => n316, B => n323, C => n687, Y => n332);
   U557 : NAND3X1 port map( A => n705, B => n327, C => n680, Y => n482);
   U558 : NOR2X1 port map( A => n323, B => n339, Y => n680);
   U559 : INVX1 port map( A => n316, Y => n339);
   U560 : INVX1 port map( A => n75, Y => n312);
   U561 : NOR2X1 port map( A => n703, B => n706, Y => n75);
   U562 : OAI21X1 port map( A => n707, B => n473, C => n708, Y => n697);
   U563 : OAI21X1 port map( A => n490, B => n486, C => n337, Y => n708);
   U564 : NOR2X1 port map( A => n706, B => n709, Y => n337);
   U565 : NAND2X1 port map( A => n479, B => n78, Y => n486);
   U566 : NAND2X1 port map( A => n496, B => n498, Y => n78);
   U567 : NOR2X1 port map( A => n316, B => n705, Y => n496);
   U568 : NAND3X1 port map( A => n315, B => n316, C => n76, Y => n479);
   U569 : NOR2X1 port map( A => n324, B => n688, Y => n490);
   U570 : INVX1 port map( A => n329, Y => n688);
   U571 : INVX1 port map( A => n687, Y => n324);
   U572 : NOR2X1 port map( A => n327, B => n705, Y => n687);
   U573 : INVX1 port map( A => n81, Y => n473);
   U574 : NOR2X1 port map( A => n704, B => n709, Y => n81);
   U575 : INVX1 port map( A => n703, Y => n709);
   U576 : XOR2X1 port map( A => CUR_ENC_RIGHT_11_port, B => RKEY(29), Y => n703
                           );
   U577 : INVX1 port map( A => n706, Y => n704);
   U578 : XOR2X1 port map( A => CUR_ENC_RIGHT_16_port, B => RKEY(24), Y => n706
                           );
   U579 : AOI21X1 port map( A => n710, B => n315, C => n325, Y => n707);
   U580 : NAND2X1 port map( A => n699, B => n335, Y => n325);
   U581 : NAND3X1 port map( A => n705, B => n327, C => n329, Y => n335);
   U582 : NOR2X1 port map( A => n323, B => n316, Y => n329);
   U583 : INVX1 port map( A => n684, Y => n705);
   U584 : NAND3X1 port map( A => n316, B => n684, C => n498, Y => n699);
   U585 : NOR2X1 port map( A => n711, B => n76, Y => n498);
   U586 : NOR2X1 port map( A => n684, B => n711, Y => n315);
   U587 : INVX1 port map( A => n323, Y => n711);
   U588 : XOR2X1 port map( A => RKEY(26), B => CUR_ENC_RIGHT_14_port, Y => n323
                           );
   U589 : XOR2X1 port map( A => CUR_ENC_RIGHT_12_port, B => RKEY(28), Y => n684
                           );
   U590 : NOR2X1 port map( A => n76, B => n316, Y => n710);
   U591 : XOR2X1 port map( A => RKEY(27), B => CUR_ENC_RIGHT_13_port, Y => n316
                           );
   U592 : INVX1 port map( A => n327, Y => n76);
   U593 : XOR2X1 port map( A => CUR_ENC_RIGHT_15_port, B => RKEY(25), Y => n327
                           );
   U594 : XOR2X1 port map( A => n712, B => CUR_ENC_LEFT_17_port, Y => 
                           NXT_ENC_RIGHT1_17_port);
   U595 : NAND3X1 port map( A => n713, B => n714, C => n715, Y => n712);
   U596 : NOR2X1 port map( A => n716, B => n717, Y => n715);
   U597 : OAI21X1 port map( A => n150, B => n718, C => n719, Y => n717);
   U598 : OAI21X1 port map( A => n400, B => n720, C => n134, Y => n719);
   U599 : OAI21X1 port map( A => n149, B => n721, C => n722, Y => n720);
   U600 : INVX1 port map( A => n378, Y => n150);
   U601 : NAND2X1 port map( A => n723, B => n394, Y => n378);
   U602 : INVX1 port map( A => n134, Y => n394);
   U603 : NAND2X1 port map( A => n724, B => n725, Y => n716);
   U604 : OAI21X1 port map( A => n726, B => n727, C => n380, Y => n725);
   U605 : NAND2X1 port map( A => n154, B => n146, Y => n727);
   U606 : NOR2X1 port map( A => n728, B => n729, Y => n154);
   U607 : OAI21X1 port map( A => n145, B => n730, C => n731, Y => n729);
   U608 : NAND2X1 port map( A => n732, B => n733, Y => n726);
   U609 : OAI21X1 port map( A => n379, B => n734, C => n143, Y => n724);
   U610 : OAI21X1 port map( A => n145, B => n730, C => n732, Y => n734);
   U611 : INVX1 port map( A => n735, Y => n732);
   U612 : NAND2X1 port map( A => n731, B => n718, Y => n379);
   U613 : INVX1 port map( A => n736, Y => n718);
   U614 : INVX1 port map( A => n737, Y => n714);
   U615 : AOI21X1 port map( A => n151, B => n738, C => n153, Y => n713);
   U616 : OAI22X1 port map( A => n130, B => n147, C => n739, D => n740, Y => 
                           n153);
   U617 : INVX1 port map( A => n741, Y => n147);
   U618 : XOR2X1 port map( A => n742, B => CUR_ENC_LEFT_16_port, Y => 
                           NXT_ENC_RIGHT1_16_port);
   U619 : NAND3X1 port map( A => n743, B => n744, C => n745, Y => n742);
   U620 : AOI21X1 port map( A => n52, B => n746, C => n747, Y => n745);
   U621 : OAI21X1 port map( A => n748, B => n749, C => n750, Y => n747);
   U622 : OAI21X1 port map( A => n413, B => n307, C => n291, Y => n750);
   U623 : NAND2X1 port map( A => n429, B => n430, Y => n291);
   U624 : INVX1 port map( A => n410, Y => n430);
   U625 : INVX1 port map( A => n423, Y => n307);
   U626 : NAND3X1 port map( A => n417, B => n61, C => n751, Y => n423);
   U627 : INVX1 port map( A => n421, Y => n413);
   U628 : NAND3X1 port map( A => n417, B => n59, C => n433, Y => n421);
   U629 : NAND2X1 port map( A => n31, B => n54, Y => n749);
   U630 : NAND2X1 port map( A => n39, B => n38, Y => n748);
   U631 : OR2X1 port map( A => n432, B => n414, Y => n746);
   U632 : NAND2X1 port map( A => n58, B => n295, Y => n414);
   U633 : NAND3X1 port map( A => n417, B => n61, C => n433, Y => n295);
   U634 : OAI21X1 port map( A => n44, B => n422, C => n752, Y => n432);
   U635 : INVX1 port map( A => n292, Y => n752);
   U636 : OAI21X1 port map( A => n753, B => n754, C => n299, Y => n292);
   U637 : NAND3X1 port map( A => n755, B => n418, C => n427, Y => n299);
   U638 : NAND2X1 port map( A => n417, B => n418, Y => n754);
   U639 : INVX1 port map( A => n756, Y => n753);
   U640 : OAI21X1 port map( A => n757, B => n758, C => n298, Y => n744);
   U641 : NOR2X1 port map( A => n48, B => n759, Y => n298);
   U642 : OAI21X1 port map( A => n54, B => n416, C => n760, Y => n758);
   U643 : INVX1 port map( A => n304, Y => n760);
   U644 : OAI21X1 port map( A => n44, B => n49, C => n301, Y => n304);
   U645 : INVX1 port map( A => n433, Y => n44);
   U646 : NOR2X1 port map( A => n755, B => n418, Y => n433);
   U647 : INVX1 port map( A => n306, Y => n416);
   U648 : NOR2X1 port map( A => n422, B => n755, Y => n306);
   U649 : NAND2X1 port map( A => n39, B => n61, Y => n422);
   U650 : OAI21X1 port map( A => n756, B => n761, C => n35, Y => n757);
   U651 : NAND2X1 port map( A => n751, B => n59, Y => n35);
   U652 : NOR2X1 port map( A => n755, B => n61, Y => n756);
   U653 : AOI22X1 port map( A => n410, B => n762, C => n290, D => n303, Y => 
                           n743);
   U654 : NAND2X1 port map( A => n429, B => n287, Y => n303);
   U655 : INVX1 port map( A => n52, Y => n287);
   U656 : NOR2X1 port map( A => n763, B => n43, Y => n52);
   U657 : INVX1 port map( A => n31, Y => n429);
   U658 : NOR2X1 port map( A => n48, B => n43, Y => n31);
   U659 : INVX1 port map( A => n759, Y => n43);
   U660 : OAI21X1 port map( A => n38, B => n761, C => n764, Y => n290);
   U661 : AND2X1 port map( A => n765, B => n40, Y => n764);
   U662 : NAND3X1 port map( A => n60, B => n59, C => n418, Y => n40);
   U663 : INVX1 port map( A => n51, Y => n761);
   U664 : NOR2X1 port map( A => n39, B => n418, Y => n51);
   U665 : INVX1 port map( A => n419, Y => n38);
   U666 : NAND3X1 port map( A => n58, B => n301, C => n766, Y => n762);
   U667 : AOI21X1 port map( A => n418, B => n60, C => n41, Y => n766);
   U668 : OAI21X1 port map( A => n49, B => n294, C => n765, Y => n41);
   U669 : NAND3X1 port map( A => n418, B => n39, C => n419, Y => n765);
   U670 : INVX1 port map( A => n751, Y => n294);
   U671 : NOR2X1 port map( A => n54, B => n755, Y => n751);
   U672 : INVX1 port map( A => n427, Y => n49);
   U673 : NOR2X1 port map( A => n39, B => n767, Y => n60);
   U674 : INVX1 port map( A => n54, Y => n418);
   U675 : NAND3X1 port map( A => n54, B => n39, C => n419, Y => n301);
   U676 : NOR2X1 port map( A => n767, B => n59, Y => n419);
   U677 : NAND3X1 port map( A => n755, B => n54, C => n427, Y => n58);
   U678 : NOR2X1 port map( A => n417, B => n61, Y => n427);
   U679 : INVX1 port map( A => n59, Y => n61);
   U680 : XOR2X1 port map( A => CUR_ENC_RIGHT_20_port, B => RKEY(16), Y => n59)
                           ;
   U681 : INVX1 port map( A => n39, Y => n417);
   U682 : XOR2X1 port map( A => CUR_ENC_RIGHT_23_port, B => RKEY(13), Y => n39)
                           ;
   U683 : XOR2X1 port map( A => RKEY(14), B => CUR_ENC_RIGHT_22_port, Y => n54)
                           ;
   U684 : INVX1 port map( A => n767, Y => n755);
   U685 : XOR2X1 port map( A => RKEY(15), B => CUR_ENC_RIGHT_21_port, Y => n767
                           );
   U686 : NOR2X1 port map( A => n759, B => n763, Y => n410);
   U687 : INVX1 port map( A => n48, Y => n763);
   U688 : XOR2X1 port map( A => CUR_ENC_RIGHT_24_port, B => RKEY(12), Y => n48)
                           ;
   U689 : XOR2X1 port map( A => CUR_ENC_RIGHT_19_port, B => RKEY(17), Y => n759
                           );
   U690 : XNOR2X1 port map( A => CUR_ENC_LEFT_15_port, B => n768, Y => 
                           NXT_ENC_RIGHT1_15_port);
   U691 : NOR2X1 port map( A => n769, B => n770, Y => n768);
   U692 : OAI21X1 port map( A => n616, B => n771, C => n8, Y => n770);
   U693 : INVX1 port map( A => n772, Y => n8);
   U694 : NAND3X1 port map( A => n773, B => n774, C => n617, Y => n772);
   U695 : AOI22X1 port map( A => n624, B => n26, C => n520, D => n504, Y => 
                           n617);
   U696 : NOR2X1 port map( A => n518, B => n628, Y => n520);
   U697 : OAI21X1 port map( A => n628, B => n17, C => n18, Y => n624);
   U698 : NAND3X1 port map( A => n516, B => n637, C => n22, Y => n18);
   U699 : NAND3X1 port map( A => n775, B => n634, C => n637, Y => n17);
   U700 : NAND3X1 port map( A => n627, B => n628, C => n14, Y => n774);
   U701 : INVX1 port map( A => n518, Y => n627);
   U702 : NAND3X1 port map( A => n776, B => n634, C => n775, Y => n518);
   U703 : OAI21X1 port map( A => n777, B => n778, C => n21, Y => n773);
   U704 : INVX1 port map( A => n14, Y => n771);
   U705 : NOR2X1 port map( A => n779, B => n780, Y => n14);
   U706 : NOR2X1 port map( A => n781, B => n782, Y => n616);
   U707 : OAI21X1 port map( A => n637, B => n783, C => n641, Y => n782);
   U708 : NAND3X1 port map( A => n625, B => n517, C => n512, Y => n781);
   U709 : INVX1 port map( A => n777, Y => n625);
   U710 : NOR2X1 port map( A => n784, B => n516, Y => n777);
   U711 : NAND3X1 port map( A => n785, B => n786, C => n787, Y => n769);
   U712 : OAI21X1 port map( A => n20, B => n788, C => n26, Y => n787);
   U713 : NOR2X1 port map( A => n789, B => n780, Y => n26);
   U714 : INVX1 port map( A => n790, Y => n780);
   U715 : OAI21X1 port map( A => n791, B => n23, C => n642, Y => n788);
   U716 : INVX1 port map( A => n778, Y => n642);
   U717 : OAI21X1 port map( A => n637, B => n638, C => n517, Y => n778);
   U718 : NAND3X1 port map( A => n776, B => n628, C => n792, Y => n517);
   U719 : NOR2X1 port map( A => n791, B => n775, Y => n792);
   U720 : INVX1 port map( A => n634, Y => n791);
   U721 : NAND2X1 port map( A => n511, B => n522, Y => n20);
   U722 : NAND3X1 port map( A => n637, B => n628, C => n22, Y => n511);
   U723 : OAI21X1 port map( A => n631, B => n15, C => n21, Y => n786);
   U724 : NOR2X1 port map( A => n779, B => n790, Y => n21);
   U725 : OAI21X1 port map( A => n776, B => n793, C => n794, Y => n15);
   U726 : NOR2X1 port map( A => n795, B => n523, Y => n794);
   U727 : NAND2X1 port map( A => n516, B => n634, Y => n793);
   U728 : NOR2X1 port map( A => n23, B => n783, Y => n631);
   U729 : INVX1 port map( A => n796, Y => n783);
   U730 : INVX1 port map( A => n635, Y => n23);
   U731 : OAI21X1 port map( A => n797, B => n798, C => n504, Y => n785);
   U732 : NOR2X1 port map( A => n790, B => n789, Y => n504);
   U733 : INVX1 port map( A => n779, Y => n789);
   U734 : XOR2X1 port map( A => CUR_ENC_RIGHT_27_port, B => RKEY(5), Y => n779)
                           ;
   U735 : XOR2X1 port map( A => CUR_ENC_RIGHT_0_port, B => RKEY(0), Y => n790);
   U736 : NAND2X1 port map( A => n641, B => n799, Y => n798);
   U737 : INVX1 port map( A => n24, Y => n799);
   U738 : OAI21X1 port map( A => n633, B => n800, C => n519, Y => n24);
   U739 : NAND3X1 port map( A => n776, B => n628, C => n22, Y => n519);
   U740 : NAND2X1 port map( A => n628, B => n634, Y => n800);
   U741 : AOI21X1 port map( A => n516, B => n514, C => n795, Y => n641);
   U742 : INVX1 port map( A => n640, Y => n795);
   U743 : NAND2X1 port map( A => n635, B => n22, Y => n640);
   U744 : NOR2X1 port map( A => n634, B => n775, Y => n22);
   U745 : INVX1 port map( A => n633, Y => n775);
   U746 : NOR2X1 port map( A => n628, B => n637, Y => n635);
   U747 : INVX1 port map( A => n784, Y => n514);
   U748 : NAND3X1 port map( A => n633, B => n634, C => n637, Y => n784);
   U749 : NAND2X1 port map( A => n512, B => n522, Y => n797);
   U750 : NAND3X1 port map( A => n516, B => n637, C => n796, Y => n522);
   U751 : INVX1 port map( A => n776, Y => n637);
   U752 : INVX1 port map( A => n628, Y => n516);
   U753 : INVX1 port map( A => n523, Y => n512);
   U754 : NOR2X1 port map( A => n638, B => n776, Y => n523);
   U755 : XOR2X1 port map( A => RKEY(3), B => CUR_ENC_RIGHT_29_port, Y => n776)
                           ;
   U756 : NAND2X1 port map( A => n796, B => n628, Y => n638);
   U757 : XOR2X1 port map( A => CUR_ENC_RIGHT_31_port, B => RKEY(1), Y => n628)
                           ;
   U758 : NOR2X1 port map( A => n634, B => n633, Y => n796);
   U759 : XOR2X1 port map( A => RKEY(2), B => CUR_ENC_RIGHT_30_port, Y => n633)
                           ;
   U760 : XOR2X1 port map( A => CUR_ENC_RIGHT_28_port, B => RKEY(4), Y => n634)
                           ;
   U761 : XOR2X1 port map( A => n801, B => CUR_ENC_LEFT_14_port, Y => 
                           NXT_ENC_RIGHT1_14_port);
   U762 : NAND3X1 port map( A => n802, B => n803, C => n804, Y => n801);
   U763 : AOI21X1 port map( A => n178, B => n805, C => n806, Y => n804);
   U764 : OAI21X1 port map( A => n169, B => n807, C => n808, Y => n806);
   U765 : OAI21X1 port map( A => n648, B => n278, C => n182, Y => n808);
   U766 : NAND3X1 port map( A => n809, B => n673, C => n810, Y => n278);
   U767 : AND2X1 port map( A => n175, B => n275, Y => n810);
   U768 : NAND2X1 port map( A => n667, B => n811, Y => n175);
   U769 : AND2X1 port map( A => n276, B => n163, Y => n809);
   U770 : NAND2X1 port map( A => n660, B => n649, Y => n807);
   U771 : INVX1 port map( A => n162, Y => n649);
   U772 : NOR2X1 port map( A => n178, B => n182, Y => n162);
   U773 : NOR2X1 port map( A => n812, B => n813, Y => n182);
   U774 : NAND3X1 port map( A => n665, B => n814, C => n815, Y => n805);
   U775 : AND2X1 port map( A => n174, B => n181, Y => n815);
   U776 : INVX1 port map( A => n267, Y => n814);
   U777 : OAI21X1 port map( A => n168, B => n169, C => n816, Y => n267);
   U778 : AOI21X1 port map( A => n661, B => n657, C => n159, Y => n816);
   U779 : INVX1 port map( A => n673, Y => n159);
   U780 : INVX1 port map( A => n817, Y => n665);
   U781 : INVX1 port map( A => n671, Y => n178);
   U782 : NAND2X1 port map( A => n818, B => n812, Y => n671);
   U783 : OAI21X1 port map( A => n819, B => n262, C => n184, Y => n803);
   U784 : NOR2X1 port map( A => n818, B => n812, Y => n184);
   U785 : NAND2X1 port map( A => n672, B => n655, Y => n262);
   U786 : AOI21X1 port map( A => n660, B => n661, C => n817, Y => n655);
   U787 : NAND2X1 port map( A => n275, B => n189, Y => n817);
   U788 : NAND2X1 port map( A => n271, B => n820, Y => n189);
   U789 : NAND2X1 port map( A => n811, B => n820, Y => n275);
   U790 : AND2X1 port map( A => n186, B => n163, Y => n672);
   U791 : NAND2X1 port map( A => n657, B => n820, Y => n163);
   U792 : AND2X1 port map( A => n181, B => n276, Y => n186);
   U793 : NAND2X1 port map( A => n656, B => n271, Y => n276);
   U794 : NAND2X1 port map( A => n656, B => n811, Y => n181);
   U795 : NOR2X1 port map( A => n821, B => n169, Y => n819);
   U796 : OAI21X1 port map( A => n822, B => n823, C => n167, Y => n802);
   U797 : AND2X1 port map( A => n813, B => n812, Y => n167);
   U798 : XOR2X1 port map( A => CUR_ENC_RIGHT_28_port, B => RKEY(6), Y => n812)
                           ;
   U799 : INVX1 port map( A => n818, Y => n813);
   U800 : XOR2X1 port map( A => CUR_ENC_RIGHT_23_port, B => RKEY(11), Y => n818
                           );
   U801 : OAI21X1 port map( A => n659, B => n172, C => n187, Y => n823);
   U802 : INVX1 port map( A => n648, Y => n187);
   U803 : OAI21X1 port map( A => n168, B => n272, C => n174, Y => n648);
   U804 : NAND2X1 port map( A => n660, B => n820, Y => n174);
   U805 : NOR2X1 port map( A => n659, B => n171, Y => n820);
   U806 : INVX1 port map( A => n661, Y => n272);
   U807 : INVX1 port map( A => n271, Y => n168);
   U808 : NOR2X1 port map( A => n669, B => n179, Y => n271);
   U809 : INVX1 port map( A => n657, Y => n172);
   U810 : OAI21X1 port map( A => n274, B => n169, C => n824, Y => n822);
   U811 : AND2X1 port map( A => n673, B => n180, Y => n824);
   U812 : NAND2X1 port map( A => n656, B => n660, Y => n180);
   U813 : NOR2X1 port map( A => n664, B => n659, Y => n656);
   U814 : NAND2X1 port map( A => n661, B => n811, Y => n673);
   U815 : NOR2X1 port map( A => n670, B => n821, Y => n811);
   U816 : NOR2X1 port map( A => n279, B => n171, Y => n661);
   U817 : INVX1 port map( A => n664, Y => n171);
   U818 : INVX1 port map( A => n667, Y => n169);
   U819 : NOR2X1 port map( A => n664, B => n279, Y => n667);
   U820 : INVX1 port map( A => n659, Y => n279);
   U821 : XOR2X1 port map( A => CUR_ENC_RIGHT_24_port, B => RKEY(10), Y => n659
                           );
   U822 : XOR2X1 port map( A => RKEY(8), B => CUR_ENC_RIGHT_26_port, Y => n664)
                           ;
   U823 : NOR2X1 port map( A => n657, B => n660, Y => n274);
   U824 : NOR2X1 port map( A => n670, B => n669, Y => n660);
   U825 : NOR2X1 port map( A => n179, B => n821, Y => n657);
   U826 : INVX1 port map( A => n669, Y => n821);
   U827 : XOR2X1 port map( A => CUR_ENC_RIGHT_27_port, B => RKEY(7), Y => n669)
                           ;
   U828 : INVX1 port map( A => n670, Y => n179);
   U829 : XOR2X1 port map( A => RKEY(9), B => CUR_ENC_RIGHT_25_port, Y => n670)
                           ;
   U830 : XNOR2X1 port map( A => CUR_ENC_LEFT_13_port, B => n825, Y => 
                           NXT_ENC_RIGHT1_13_port);
   U831 : NOR2X1 port map( A => n826, B => n827, Y => n825);
   U832 : OAI21X1 port map( A => n195, B => n366, C => n828, Y => n827);
   U833 : OAI21X1 port map( A => n829, B => n830, C => n211, Y => n828);
   U834 : NOR2X1 port map( A => n831, B => n832, Y => n211);
   U835 : OAI21X1 port map( A => n833, B => n570, C => n194, Y => n830);
   U836 : INVX1 port map( A => n834, Y => n194);
   U837 : OAI21X1 port map( A => n835, B => n836, C => n837, Y => n834);
   U838 : AND2X1 port map( A => n217, B => n838, Y => n837);
   U839 : NAND2X1 port map( A => n839, B => n222, Y => n217);
   U840 : NAND3X1 port map( A => n559, B => n568, C => n353, Y => n829);
   U841 : NOR2X1 port map( A => n352, B => n840, Y => n366);
   U842 : INVX1 port map( A => n203, Y => n840);
   U843 : NAND2X1 port map( A => n213, B => n215, Y => n203);
   U844 : OAI21X1 port map( A => n835, B => n836, C => n559, Y => n352);
   U845 : NAND2X1 port map( A => n841, B => n222, Y => n559);
   U846 : INVX1 port map( A => n213, Y => n835);
   U847 : NOR2X1 port map( A => n226, B => n221, Y => n195);
   U848 : NAND3X1 port map( A => n842, B => n843, C => n844, Y => n826);
   U849 : OAI21X1 port map( A => n845, B => n846, C => n226, Y => n844);
   U850 : NOR2X1 port map( A => n832, B => n847, Y => n226);
   U851 : INVX1 port map( A => n848, Y => n832);
   U852 : OAI21X1 port map( A => n833, B => n223, C => n370, Y => n846);
   U853 : NAND2X1 port map( A => n849, B => n215, Y => n370);
   U854 : NAND2X1 port map( A => n205, B => n204, Y => n845);
   U855 : NAND2X1 port map( A => n849, B => n839, Y => n205);
   U856 : NAND2X1 port map( A => n221, B => n850, Y => n843);
   U857 : OAI21X1 port map( A => n841, B => n851, C => n365, Y => n850);
   U858 : INVX1 port map( A => n350, Y => n365);
   U859 : OAI21X1 port map( A => n570, B => n571, C => n204, Y => n350);
   U860 : NAND2X1 port map( A => n354, B => n839, Y => n204);
   U861 : INVX1 port map( A => n215, Y => n570);
   U862 : NOR2X1 port map( A => n356, B => n359, Y => n215);
   U863 : NOR2X1 port map( A => n831, B => n848, Y => n221);
   U864 : OAI21X1 port map( A => n349, B => n852, C => n199, Y => n842);
   U865 : NOR2X1 port map( A => n848, B => n847, Y => n199);
   U866 : INVX1 port map( A => n831, Y => n847);
   U867 : XOR2X1 port map( A => CUR_ENC_RIGHT_7_port, B => RKEY(35), Y => n831)
                           ;
   U868 : XOR2X1 port map( A => CUR_ENC_RIGHT_12_port, B => RKEY(30), Y => n848
                           );
   U869 : OAI21X1 port map( A => n359, B => n571, C => n202, Y => n852);
   U870 : NOR2X1 port map( A => n574, B => n367, Y => n202);
   U871 : INVX1 port map( A => n218, Y => n367);
   U872 : NAND2X1 port map( A => n849, B => n841, Y => n218);
   U873 : AND2X1 port map( A => n354, B => n853, Y => n574);
   U874 : INVX1 port map( A => n222, Y => n571);
   U875 : NOR2X1 port map( A => n216, B => n833, Y => n222);
   U876 : NAND3X1 port map( A => n353, B => n560, C => n200, Y => n349);
   U877 : AND2X1 port map( A => n838, B => n568, Y => n200);
   U878 : NAND2X1 port map( A => n354, B => n841, Y => n568);
   U879 : INVX1 port map( A => n836, Y => n841);
   U880 : NAND2X1 port map( A => n359, B => n356, Y => n836);
   U881 : NOR2X1 port map( A => n833, B => n854, Y => n354);
   U882 : NAND2X1 port map( A => n839, B => n213, Y => n838);
   U883 : NOR2X1 port map( A => n359, B => n214, Y => n839);
   U884 : NAND2X1 port map( A => n853, B => n213, Y => n560);
   U885 : NOR2X1 port map( A => n855, B => n854, Y => n213);
   U886 : NAND2X1 port map( A => n849, B => n853, Y => n353);
   U887 : INVX1 port map( A => n223, Y => n853);
   U888 : NAND2X1 port map( A => n359, B => n214, Y => n223);
   U889 : INVX1 port map( A => n356, Y => n214);
   U890 : XOR2X1 port map( A => CUR_ENC_RIGHT_8_port, B => RKEY(34), Y => n356)
                           ;
   U891 : XNOR2X1 port map( A => RKEY(32), B => CUR_ENC_RIGHT_10_port, Y => 
                           n359);
   U892 : INVX1 port map( A => n851, Y => n849);
   U893 : NAND2X1 port map( A => n833, B => n854, Y => n851);
   U894 : INVX1 port map( A => n216, Y => n854);
   U895 : XOR2X1 port map( A => RKEY(33), B => CUR_ENC_RIGHT_9_port, Y => n216)
                           ;
   U896 : INVX1 port map( A => n855, Y => n833);
   U897 : XOR2X1 port map( A => CUR_ENC_RIGHT_11_port, B => RKEY(31), Y => n855
                           );
   U898 : XOR2X1 port map( A => n856, B => CUR_ENC_LEFT_12_port, Y => 
                           NXT_ENC_RIGHT1_12_port);
   U899 : NAND3X1 port map( A => n857, B => n858, C => n859, Y => n856);
   U900 : AOI21X1 port map( A => n237, B => n860, C => n96, Y => n859);
   U901 : OAI21X1 port map( A => n861, B => n112, C => n862, Y => n96);
   U902 : AOI22X1 port map( A => n120, B => n863, C => n246, D => n537, Y => 
                           n862);
   U903 : INVX1 port map( A => n121, Y => n537);
   U904 : NAND2X1 port map( A => n251, B => n256, Y => n863);
   U905 : NAND3X1 port map( A => n100, B => n233, C => n109, Y => n256);
   U906 : NAND3X1 port map( A => n864, B => n113, C => n551, Y => n251);
   U907 : NAND3X1 port map( A => n538, B => n239, C => n865, Y => n860);
   U908 : AOI21X1 port map( A => n551, B => n234, C => n231, Y => n865);
   U909 : NAND3X1 port map( A => n549, B => n253, C => n91, Y => n231);
   U910 : NAND3X1 port map( A => n108, B => n100, C => n111, Y => n549);
   U911 : INVX1 port map( A => n94, Y => n237);
   U912 : NAND2X1 port map( A => n866, B => n867, Y => n94);
   U913 : OAI21X1 port map( A => n118, B => n868, C => n102, Y => n858);
   U914 : INVX1 port map( A => n112, Y => n102);
   U915 : NAND2X1 port map( A => n869, B => n867, Y => n112);
   U916 : OAI21X1 port map( A => n233, B => n870, C => n117, Y => n868);
   U917 : INVX1 port map( A => n871, Y => n870);
   U918 : NAND3X1 port map( A => n538, B => n91, C => n872, Y => n118);
   U919 : AND2X1 port map( A => n253, B => n547, Y => n872);
   U920 : NAND3X1 port map( A => n109, B => n100, C => n108, Y => n547);
   U921 : NOR2X1 port map( A => n539, B => n113, Y => n109);
   U922 : NAND2X1 port map( A => n550, B => n114, Y => n253);
   U923 : NAND3X1 port map( A => n873, B => n233, C => n548, Y => n538);
   U924 : AOI22X1 port map( A => n120, B => n874, C => n246, D => n875, Y => 
                           n857);
   U925 : INVX1 port map( A => n876, Y => n875);
   U926 : AOI21X1 port map( A => n233, B => n550, C => n255, Y => n876);
   U927 : NAND3X1 port map( A => n877, B => n93, C => n878, Y => n255);
   U928 : AND2X1 port map( A => n122, B => n239, Y => n878);
   U929 : NAND3X1 port map( A => n108, B => n873, C => n548, Y => n239);
   U930 : NAND2X1 port map( A => n871, B => n551, Y => n122);
   U931 : NAND3X1 port map( A => n864, B => n233, C => n111, Y => n93);
   U932 : INVX1 port map( A => n536, Y => n877);
   U933 : NAND2X1 port map( A => n861, B => n117, Y => n536);
   U934 : NAND2X1 port map( A => n548, B => n551, Y => n117);
   U935 : NOR2X1 port map( A => n233, B => n873, Y => n551);
   U936 : NOR2X1 port map( A => n113, B => n864, Y => n550);
   U937 : NOR2X1 port map( A => n867, B => n866, Y => n246);
   U938 : INVX1 port map( A => n869, Y => n866);
   U939 : OAI21X1 port map( A => n873, B => n234, C => n879, Y => n874);
   U940 : INVX1 port map( A => n244, Y => n879);
   U941 : NAND3X1 port map( A => n91, B => n544, C => n880, Y => n244);
   U942 : AND2X1 port map( A => n861, B => n121, Y => n880);
   U943 : NAND3X1 port map( A => n100, B => n233, C => n111, Y => n121);
   U944 : NAND3X1 port map( A => n108, B => n864, C => n111, Y => n861);
   U945 : NOR2X1 port map( A => n881, B => n539, Y => n111);
   U946 : NAND2X1 port map( A => n871, B => n114, Y => n544);
   U947 : NOR2X1 port map( A => n881, B => n864, Y => n871);
   U948 : NAND3X1 port map( A => n864, B => n113, C => n114, Y => n91);
   U949 : NOR2X1 port map( A => n108, B => n873, Y => n114);
   U950 : INVX1 port map( A => n233, Y => n108);
   U951 : XOR2X1 port map( A => RKEY(20), B => CUR_ENC_RIGHT_18_port, Y => n233
                           );
   U952 : INVX1 port map( A => n100, Y => n864);
   U953 : INVX1 port map( A => n548, Y => n234);
   U954 : NOR2X1 port map( A => n100, B => n113, Y => n548);
   U955 : INVX1 port map( A => n881, Y => n113);
   U956 : XOR2X1 port map( A => CUR_ENC_RIGHT_19_port, B => RKEY(19), Y => n881
                           );
   U957 : XOR2X1 port map( A => CUR_ENC_RIGHT_16_port, B => RKEY(22), Y => n100
                           );
   U958 : INVX1 port map( A => n539, Y => n873);
   U959 : XOR2X1 port map( A => RKEY(21), B => CUR_ENC_RIGHT_17_port, Y => n539
                           );
   U960 : NOR2X1 port map( A => n867, B => n869, Y => n120);
   U961 : XOR2X1 port map( A => CUR_ENC_RIGHT_20_port, B => RKEY(18), Y => n869
                           );
   U962 : XOR2X1 port map( A => CUR_ENC_RIGHT_15_port, B => RKEY(23), Y => n867
                           );
   U963 : XOR2X1 port map( A => n882, B => CUR_ENC_LEFT_11_port, Y => 
                           NXT_ENC_RIGHT1_11_port);
   U964 : NAND3X1 port map( A => n883, B => n884, C => n885, Y => n882);
   U965 : NOR2X1 port map( A => n737, B => n886, Y => n885);
   U966 : OAI21X1 port map( A => n887, B => n130, C => n125, Y => n886);
   U967 : INVX1 port map( A => n401, Y => n125);
   U968 : OAI21X1 port map( A => n733, B => n739, C => n888, Y => n401);
   U969 : AND2X1 port map( A => n889, B => n890, Y => n888);
   U970 : OAI21X1 port map( A => n735, B => n395, C => n380, Y => n890);
   U971 : NOR2X1 port map( A => n145, B => n138, Y => n735);
   U972 : OAI21X1 port map( A => n741, B => n736, C => n151, Y => n889);
   U973 : NOR2X1 port map( A => n891, B => n138, Y => n736);
   U974 : INVX1 port map( A => n144, Y => n138);
   U975 : INVX1 port map( A => n143, Y => n739);
   U976 : NAND2X1 port map( A => n892, B => n144, Y => n733);
   U977 : INVX1 port map( A => n380, Y => n130);
   U978 : NOR2X1 port map( A => n893, B => n894, Y => n380);
   U979 : INVX1 port map( A => n738, Y => n887);
   U980 : NAND3X1 port map( A => n895, B => n383, C => n896, Y => n738);
   U981 : AOI22X1 port map( A => n897, B => n398, C => n892, D => n898, Y => 
                           n896);
   U982 : NOR2X1 port map( A => n390, B => n132, Y => n895);
   U983 : INVX1 port map( A => n731, Y => n132);
   U984 : NOR2X1 port map( A => n721, B => n891, Y => n390);
   U985 : OAI21X1 port map( A => n723, B => n384, C => n899, Y => n737);
   U986 : AOI22X1 port map( A => n143, B => n900, C => n134, D => n728, Y => 
                           n899);
   U987 : NAND2X1 port map( A => n396, B => n383, Y => n728);
   U988 : INVX1 port map( A => n387, Y => n396);
   U989 : NOR2X1 port map( A => n381, B => n891, Y => n387);
   U990 : INVX1 port map( A => n135, Y => n381);
   U991 : OR2X1 port map( A => n400, B => n741, Y => n900);
   U992 : NOR2X1 port map( A => n901, B => n721, Y => n741);
   U993 : INVX1 port map( A => n897, Y => n721);
   U994 : NAND2X1 port map( A => n146, B => n389, Y => n400);
   U995 : INVX1 port map( A => n151, Y => n723);
   U996 : OAI21X1 port map( A => n902, B => n903, C => n134, Y => n884);
   U997 : NOR2X1 port map( A => n904, B => n893, Y => n134);
   U998 : OAI21X1 port map( A => n905, B => n901, C => n146, Y => n903);
   U999 : NAND2X1 port map( A => n906, B => n144, Y => n146);
   U1000 : NOR2X1 port map( A => n393, B => n391, Y => n144);
   U1001 : INVX1 port map( A => n892, Y => n901);
   U1002 : NAND2X1 port map( A => n384, B => n740, Y => n902);
   U1003 : INVX1 port map( A => n395, Y => n740);
   U1004 : NOR2X1 port map( A => n730, B => n891, Y => n395);
   U1005 : INVX1 port map( A => n905, Y => n730);
   U1006 : NAND2X1 port map( A => n906, B => n905, Y => n384);
   U1007 : AOI22X1 port map( A => n143, B => n907, C => n151, D => n908, Y => 
                           n883);
   U1008 : OAI21X1 port map( A => n905, B => n145, C => n909, Y => n908);
   U1009 : AND2X1 port map( A => n389, B => n731, Y => n909);
   U1010 : NAND2X1 port map( A => n135, B => n906, Y => n731);
   U1011 : NAND2X1 port map( A => n892, B => n905, Y => n389);
   U1012 : NOR2X1 port map( A => n910, B => n149, Y => n892);
   U1013 : INVX1 port map( A => n398, Y => n145);
   U1014 : NOR2X1 port map( A => n399, B => n898, Y => n905);
   U1015 : NOR2X1 port map( A => n904, B => n911, Y => n151);
   U1016 : OAI21X1 port map( A => n393, B => n891, C => n912, Y => n907);
   U1017 : AND2X1 port map( A => n722, B => n383, Y => n912);
   U1018 : NAND2X1 port map( A => n906, B => n897, Y => n383);
   U1019 : NOR2X1 port map( A => n391, B => n898, Y => n897);
   U1020 : INVX1 port map( A => n393, Y => n898);
   U1021 : AND2X1 port map( A => n149, B => n910, Y => n906);
   U1022 : INVX1 port map( A => n136, Y => n910);
   U1023 : NAND2X1 port map( A => n135, B => n398, Y => n722);
   U1024 : NOR2X1 port map( A => n136, B => n149, Y => n398);
   U1025 : NOR2X1 port map( A => n393, B => n399, Y => n135);
   U1026 : INVX1 port map( A => n391, Y => n399);
   U1027 : XOR2X1 port map( A => RKEY(45), B => CUR_ENC_RIGHT_1_port, Y => n391
                           );
   U1028 : NAND2X1 port map( A => n149, B => n136, Y => n891);
   U1029 : XOR2X1 port map( A => CUR_ENC_RIGHT_3_port, B => RKEY(43), Y => n136
                           );
   U1030 : XNOR2X1 port map( A => CUR_ENC_RIGHT_0_port, B => RKEY(46), Y => 
                           n149);
   U1031 : XOR2X1 port map( A => RKEY(44), B => CUR_ENC_RIGHT_2_port, Y => n393
                           );
   U1032 : NOR2X1 port map( A => n911, B => n894, Y => n143);
   U1033 : INVX1 port map( A => n904, Y => n894);
   U1034 : XOR2X1 port map( A => CUR_ENC_RIGHT_31_port, B => RKEY(47), Y => 
                           n904);
   U1035 : INVX1 port map( A => n893, Y => n911);
   U1036 : XOR2X1 port map( A => CUR_ENC_RIGHT_4_port, B => RKEY(42), Y => n893
                           );
   U1037 : XOR2X1 port map( A => n913, B => CUR_ENC_LEFT_10_port, Y => 
                           NXT_ENC_RIGHT1_10_port);
   U1038 : NAND3X1 port map( A => n914, B => n438, C => n915, Y => n913);
   U1039 : AOI21X1 port map( A => n462, B => n916, C => n917, Y => n915);
   U1040 : OAI21X1 port map( A => n918, B => n919, C => n920, Y => n917);
   U1041 : OAI21X1 port map( A => n921, B => n922, C => n465, Y => n920);
   U1042 : OAI21X1 port map( A => n603, B => n587, C => n608, Y => n922);
   U1043 : NAND2X1 port map( A => n923, B => n611, Y => n921);
   U1044 : AOI21X1 port map( A => n457, B => n924, C => n604, Y => n918);
   U1045 : INVX1 port map( A => n588, Y => n604);
   U1046 : NAND3X1 port map( A => n925, B => n926, C => n927, Y => n916);
   U1047 : AOI22X1 port map( A => n928, B => n605, C => n451, D => n603, Y => 
                           n927);
   U1048 : NOR2X1 port map( A => n929, B => n466, Y => n928);
   U1049 : AOI21X1 port map( A => n591, B => n462, C => n930, Y => n438);
   U1050 : NAND2X1 port map( A => n931, B => n932, Y => n930);
   U1051 : OAI21X1 port map( A => n933, B => n460, C => n452, Y => n932);
   U1052 : INVX1 port map( A => n589, Y => n933);
   U1053 : OAI21X1 port map( A => n441, B => n590, C => n439, Y => n931);
   U1054 : NAND2X1 port map( A => n612, B => n925, Y => n590);
   U1055 : INVX1 port map( A => n611, Y => n441);
   U1056 : NAND2X1 port map( A => n600, B => n444, Y => n591);
   U1057 : INVX1 port map( A => n934, Y => n914);
   U1058 : OAI22X1 port map( A => n935, B => n936, C => n443, D => n937, Y => 
                           n934);
   U1059 : XOR2X1 port map( A => n938, B => CUR_ENC_LEFT_0_port, Y => 
                           NXT_ENC_RIGHT1_0_port);
   U1060 : NAND2X1 port map( A => n939, B => n940, Y => n938);
   U1061 : AOI21X1 port map( A => n462, B => n941, C => n942, Y => n940);
   U1062 : OAI21X1 port map( A => n943, B => n587, C => n944, Y => n942);
   U1063 : OAI21X1 port map( A => n945, B => n946, C => n465, Y => n944);
   U1064 : NOR2X1 port map( A => n947, B => n937, Y => n465);
   U1065 : OAI21X1 port map( A => n948, B => n593, C => n936, Y => n946);
   U1066 : NOR2X1 port map( A => n461, B => n949, Y => n936);
   U1067 : INVX1 port map( A => n600, Y => n949);
   U1068 : OAI21X1 port map( A => n950, B => n459, C => n608, Y => n461);
   U1069 : AND2X1 port map( A => n456, B => n601, Y => n608);
   U1070 : NAND2X1 port map( A => n457, B => n951, Y => n601);
   U1071 : NOR2X1 port map( A => n950, B => n605, Y => n457);
   U1072 : NAND3X1 port map( A => n466, B => n605, C => n929, Y => n456);
   U1073 : INVX1 port map( A => n952, Y => n459);
   U1074 : NAND2X1 port map( A => n443, B => n925, Y => n945);
   U1075 : NAND3X1 port map( A => n606, B => n953, C => n929, Y => n925);
   U1076 : NAND3X1 port map( A => n605, B => n606, C => n929, Y => n443);
   U1077 : INVX1 port map( A => n451, Y => n587);
   U1078 : AOI22X1 port map( A => n462, B => n954, C => n452, D => n952, Y => 
                           n943);
   U1079 : INVX1 port map( A => n586, Y => n954);
   U1080 : NOR2X1 port map( A => n952, B => n603, Y => n586);
   U1081 : OAI21X1 port map( A => n953, B => n924, C => n955, Y => n941);
   U1082 : AND2X1 port map( A => n611, B => n444, Y => n955);
   U1083 : NAND3X1 port map( A => n948, B => n953, C => n451, Y => n444);
   U1084 : INVX1 port map( A => n951, Y => n924);
   U1085 : NOR2X1 port map( A => n580, B => n956, Y => n939);
   U1086 : OAI21X1 port map( A => n935, B => n611, C => n957, Y => n956);
   U1087 : OAI21X1 port map( A => n958, B => n959, C => n960, Y => n957);
   U1088 : INVX1 port map( A => n458, Y => n960);
   U1089 : NOR2X1 port map( A => n439, B => n452, Y => n458);
   U1090 : INVX1 port map( A => n919, Y => n452);
   U1091 : INVX1 port map( A => n935, Y => n439);
   U1092 : OAI21X1 port map( A => n605, B => n593, C => n588, Y => n959);
   U1093 : NAND3X1 port map( A => n605, B => n948, C => n451, Y => n588);
   U1094 : NOR2X1 port map( A => n606, B => n950, Y => n451);
   U1095 : NAND2X1 port map( A => n597, B => n606, Y => n593);
   U1096 : NAND3X1 port map( A => n600, B => n926, C => n612, Y => n958);
   U1097 : NAND3X1 port map( A => n950, B => n606, C => n952, Y => n612);
   U1098 : NAND3X1 port map( A => n466, B => n953, C => n929, Y => n600);
   U1099 : NOR2X1 port map( A => n597, B => n454, Y => n929);
   U1100 : NAND3X1 port map( A => n466, B => n950, C => n603, Y => n611);
   U1101 : INVX1 port map( A => n961, Y => n580);
   U1102 : AOI21X1 port map( A => n460, B => n462, C => n962, Y => n961);
   U1103 : OAI22X1 port map( A => n923, B => n919, C => n589, D => n935, Y => 
                           n962);
   U1104 : NAND2X1 port map( A => n937, B => n947, Y => n935);
   U1105 : INVX1 port map( A => n442, Y => n937);
   U1106 : NAND3X1 port map( A => n605, B => n597, C => n951, Y => n589);
   U1107 : NOR2X1 port map( A => n466, B => n454, Y => n951);
   U1108 : INVX1 port map( A => n948, Y => n454);
   U1109 : NAND2X1 port map( A => n947, B => n442, Y => n919);
   U1110 : NOR2X1 port map( A => n947, B => n442, Y => n462);
   U1111 : XOR2X1 port map( A => CUR_ENC_RIGHT_3_port, B => RKEY(41), Y => n442
                           );
   U1112 : XOR2X1 port map( A => CUR_ENC_RIGHT_8_port, B => RKEY(36), Y => n947
                           );
   U1113 : NAND2X1 port map( A => n923, B => n926, Y => n460);
   U1114 : NAND3X1 port map( A => n466, B => n950, C => n952, Y => n926);
   U1115 : NOR2X1 port map( A => n953, B => n948, Y => n952);
   U1116 : INVX1 port map( A => n606, Y => n466);
   U1117 : NAND3X1 port map( A => n950, B => n606, C => n603, Y => n923);
   U1118 : NOR2X1 port map( A => n948, B => n605, Y => n603);
   U1119 : INVX1 port map( A => n953, Y => n605);
   U1120 : XOR2X1 port map( A => CUR_ENC_RIGHT_7_port, B => RKEY(37), Y => n953
                           );
   U1121 : XOR2X1 port map( A => RKEY(38), B => CUR_ENC_RIGHT_6_port, Y => n948
                           );
   U1122 : XOR2X1 port map( A => RKEY(39), B => CUR_ENC_RIGHT_5_port, Y => n606
                           );
   U1123 : INVX1 port map( A => n597, Y => n950);
   U1124 : XOR2X1 port map( A => CUR_ENC_RIGHT_4_port, B => RKEY(40), Y => n597
                           );

end SYN_behav;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ENCRYPTION.all;

entity e_encController is

   port( DATA : in std_logic_vector (7 downto 0);  FULL, EMPTY, CLK, RST : in 
         std_logic;  START, R_ENABLE, W_ENABLE : out std_logic;  ENC_LEFT, 
         ENC_RIGHT : out std_logic_vector (31 downto 0));

end e_encController;

architecture SYN_behav of e_encController is

   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
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
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX8
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFPOSX1
      port( D, CLK : in std_logic;  Q : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal W_ENABLE_port, ENC_LEFT_31_port, ENC_LEFT_30_port, ENC_LEFT_29_port, 
      ENC_LEFT_28_port, ENC_LEFT_27_port, ENC_LEFT_26_port, ENC_LEFT_25_port, 
      ENC_LEFT_24_port, ENC_LEFT_23_port, ENC_LEFT_22_port, ENC_LEFT_21_port, 
      ENC_LEFT_20_port, ENC_LEFT_19_port, ENC_LEFT_18_port, ENC_LEFT_17_port, 
      ENC_LEFT_16_port, ENC_LEFT_15_port, ENC_LEFT_14_port, ENC_LEFT_13_port, 
      ENC_LEFT_12_port, ENC_LEFT_11_port, ENC_LEFT_10_port, ENC_LEFT_9_port, 
      ENC_LEFT_8_port, ENC_LEFT_7_port, ENC_LEFT_6_port, ENC_LEFT_5_port, 
      ENC_LEFT_4_port, ENC_LEFT_3_port, ENC_LEFT_2_port, ENC_LEFT_1_port, 
      ENC_LEFT_0_port, ENC_RIGHT_31_port, ENC_RIGHT_30_port, ENC_RIGHT_29_port,
      ENC_RIGHT_28_port, ENC_RIGHT_27_port, ENC_RIGHT_26_port, 
      ENC_RIGHT_25_port, ENC_RIGHT_24_port, ENC_RIGHT_23_port, 
      ENC_RIGHT_22_port, ENC_RIGHT_21_port, ENC_RIGHT_20_port, 
      ENC_RIGHT_19_port, ENC_RIGHT_18_port, ENC_RIGHT_17_port, 
      ENC_RIGHT_16_port, ENC_RIGHT_15_port, ENC_RIGHT_14_port, 
      ENC_RIGHT_13_port, ENC_RIGHT_12_port, ENC_RIGHT_11_port, 
      ENC_RIGHT_10_port, ENC_RIGHT_9_port, ENC_RIGHT_8_port, ENC_RIGHT_7_port, 
      ENC_RIGHT_6_port, ENC_RIGHT_5_port, ENC_RIGHT_4_port, ENC_RIGHT_3_port, 
      ENC_RIGHT_2_port, ENC_RIGHT_1_port, ENC_RIGHT_0_port, compileCT_3_port, 
      compileCT_2_port, compileCT_1_port, compileCT_0_port, nxtCompCT_3_port, 
      nxtCompCT_2_port, rndCT_3_port, rndCT_2_port, rndCT_1_port, rndCT_0_port,
      N23, cData1_7_port, cData1_6_port, cData1_5_port, cData1_4_port, 
      cData1_3_port, cData1_2_port, cData1_1_port, cData1_0_port, cData2_7_port
      , cData2_6_port, cData2_5_port, cData2_4_port, cData2_3_port, 
      cData2_2_port, cData2_1_port, cData2_0_port, cData3_7_port, cData3_6_port
      , cData3_5_port, cData3_4_port, cData3_3_port, cData3_2_port, 
      cData3_1_port, cData3_0_port, cData4_7_port, cData4_6_port, cData4_5_port
      , cData4_4_port, cData4_3_port, cData4_2_port, cData4_1_port, 
      cData4_0_port, cData5_7_port, cData5_6_port, cData5_5_port, cData5_4_port
      , cData5_3_port, cData5_2_port, cData5_1_port, cData5_0_port, 
      cData6_7_port, cData6_6_port, cData6_5_port, cData6_4_port, cData6_3_port
      , cData6_2_port, cData6_1_port, cData6_0_port, cData7_7_port, 
      cData7_6_port, cData7_5_port, cData7_4_port, cData7_3_port, cData7_2_port
      , cData7_1_port, cData7_0_port, cData8_7_port, cData8_6_port, 
      cData8_5_port, cData8_4_port, cData8_3_port, cData8_2_port, cData8_1_port
      , cData8_0_port, N273, n215, n216, n217, n218, n219, n220, n221, n222, 
      n223, n224, n225, n226, n227, n228, n229, n230, n233, n234, n235, n236, 
      n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, 
      n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, 
      n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, 
      n273_port, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, 
      n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, 
      n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, 
      n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, 
      n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, 
      n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, 
      n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, 
      n356, n357, n358, n359, n360, n1, n2, n3, n4, n5, n7, n8, n9, n10, n11, 
      n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23_port, n24, n25
      , n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, 
      n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54
      , n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, 
      n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83
      , n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, 
      n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, 
      n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, 
      n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, 
      n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, 
      n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, 
      n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, 
      n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, 
      n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, 
      n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, 
      n206, n207, n208, n209, n210, n211, n212, n213, n214 : std_logic;

begin
   W_ENABLE <= W_ENABLE_port;
   ENC_LEFT <= ( ENC_LEFT_31_port, ENC_LEFT_30_port, ENC_LEFT_29_port, 
      ENC_LEFT_28_port, ENC_LEFT_27_port, ENC_LEFT_26_port, ENC_LEFT_25_port, 
      ENC_LEFT_24_port, ENC_LEFT_23_port, ENC_LEFT_22_port, ENC_LEFT_21_port, 
      ENC_LEFT_20_port, ENC_LEFT_19_port, ENC_LEFT_18_port, ENC_LEFT_17_port, 
      ENC_LEFT_16_port, ENC_LEFT_15_port, ENC_LEFT_14_port, ENC_LEFT_13_port, 
      ENC_LEFT_12_port, ENC_LEFT_11_port, ENC_LEFT_10_port, ENC_LEFT_9_port, 
      ENC_LEFT_8_port, ENC_LEFT_7_port, ENC_LEFT_6_port, ENC_LEFT_5_port, 
      ENC_LEFT_4_port, ENC_LEFT_3_port, ENC_LEFT_2_port, ENC_LEFT_1_port, 
      ENC_LEFT_0_port );
   ENC_RIGHT <= ( ENC_RIGHT_31_port, ENC_RIGHT_30_port, ENC_RIGHT_29_port, 
      ENC_RIGHT_28_port, ENC_RIGHT_27_port, ENC_RIGHT_26_port, 
      ENC_RIGHT_25_port, ENC_RIGHT_24_port, ENC_RIGHT_23_port, 
      ENC_RIGHT_22_port, ENC_RIGHT_21_port, ENC_RIGHT_20_port, 
      ENC_RIGHT_19_port, ENC_RIGHT_18_port, ENC_RIGHT_17_port, 
      ENC_RIGHT_16_port, ENC_RIGHT_15_port, ENC_RIGHT_14_port, 
      ENC_RIGHT_13_port, ENC_RIGHT_12_port, ENC_RIGHT_11_port, 
      ENC_RIGHT_10_port, ENC_RIGHT_9_port, ENC_RIGHT_8_port, ENC_RIGHT_7_port, 
      ENC_RIGHT_6_port, ENC_RIGHT_5_port, ENC_RIGHT_4_port, ENC_RIGHT_3_port, 
      ENC_RIGHT_2_port, ENC_RIGHT_1_port, ENC_RIGHT_0_port );
   
   rndCT_reg_0_inst : DFFSR port map( D => n229, CLK => CLK, R => n214, S => 
                           n228, Q => rndCT_0_port);
   rndCT_reg_1_inst : DFFSR port map( D => n227, CLK => CLK, R => n214, S => 
                           n226, Q => rndCT_1_port);
   compileCT_reg_3_inst : DFFSR port map( D => nxtCompCT_3_port, CLK => CLK, R 
                           => n214, S => n225, Q => compileCT_3_port);
   compileCT_reg_1_inst : DFFSR port map( D => n230, CLK => CLK, R => n214, S 
                           => n224, Q => compileCT_1_port);
   compileCT_reg_2_inst : DFFSR port map( D => nxtCompCT_2_port, CLK => CLK, R 
                           => n214, S => n223, Q => compileCT_2_port);
   compileCT_reg_0_inst : DFFSR port map( D => n213, CLK => CLK, R => n214, S 
                           => n222, Q => compileCT_0_port);
   rndCT_reg_2_inst : DFFSR port map( D => n221, CLK => CLK, R => n214, S => 
                           n220, Q => rndCT_2_port);
   rndCT_reg_3_inst : DFFSR port map( D => n219, CLK => CLK, R => n214, S => 
                           n218, Q => rndCT_3_port);
   rndCT_reg_4_inst : DFFSR port map( D => n217, CLK => CLK, R => n214, S => 
                           n216, Q => N23);
   cD_ENABLE_reg : DFFPOSX1 port map( D => n215, CLK => CLK, Q => W_ENABLE_port
                           );
   cData2_reg_7_inst : DFFPOSX1 port map( D => n353, CLK => CLK, Q => 
                           cData2_7_port);
   cData2_reg_6_inst : DFFPOSX1 port map( D => n354, CLK => CLK, Q => 
                           cData2_6_port);
   cData2_reg_5_inst : DFFPOSX1 port map( D => n355, CLK => CLK, Q => 
                           cData2_5_port);
   cData2_reg_4_inst : DFFPOSX1 port map( D => n356, CLK => CLK, Q => 
                           cData2_4_port);
   cData2_reg_3_inst : DFFPOSX1 port map( D => n357, CLK => CLK, Q => 
                           cData2_3_port);
   cData2_reg_2_inst : DFFPOSX1 port map( D => n358, CLK => CLK, Q => 
                           cData2_2_port);
   cData2_reg_1_inst : DFFPOSX1 port map( D => n359, CLK => CLK, Q => 
                           cData2_1_port);
   cData2_reg_0_inst : DFFPOSX1 port map( D => n360, CLK => CLK, Q => 
                           cData2_0_port);
   cData8_reg_7_inst : DFFPOSX1 port map( D => n297, CLK => CLK, Q => 
                           cData8_7_port);
   cData8_reg_6_inst : DFFPOSX1 port map( D => n298, CLK => CLK, Q => 
                           cData8_6_port);
   cData8_reg_5_inst : DFFPOSX1 port map( D => n299, CLK => CLK, Q => 
                           cData8_5_port);
   cData8_reg_4_inst : DFFPOSX1 port map( D => n300, CLK => CLK, Q => 
                           cData8_4_port);
   cData8_reg_3_inst : DFFPOSX1 port map( D => n301, CLK => CLK, Q => 
                           cData8_3_port);
   cData8_reg_2_inst : DFFPOSX1 port map( D => n302, CLK => CLK, Q => 
                           cData8_2_port);
   cData8_reg_1_inst : DFFPOSX1 port map( D => n303, CLK => CLK, Q => 
                           cData8_1_port);
   cData8_reg_0_inst : DFFPOSX1 port map( D => n304, CLK => CLK, Q => 
                           cData8_0_port);
   cData7_reg_7_inst : DFFPOSX1 port map( D => n305, CLK => CLK, Q => 
                           cData7_7_port);
   cData7_reg_6_inst : DFFPOSX1 port map( D => n306, CLK => CLK, Q => 
                           cData7_6_port);
   cData7_reg_5_inst : DFFPOSX1 port map( D => n307, CLK => CLK, Q => 
                           cData7_5_port);
   cData7_reg_4_inst : DFFPOSX1 port map( D => n308, CLK => CLK, Q => 
                           cData7_4_port);
   cData7_reg_3_inst : DFFPOSX1 port map( D => n309, CLK => CLK, Q => 
                           cData7_3_port);
   cData7_reg_2_inst : DFFPOSX1 port map( D => n310, CLK => CLK, Q => 
                           cData7_2_port);
   cData7_reg_1_inst : DFFPOSX1 port map( D => n311, CLK => CLK, Q => 
                           cData7_1_port);
   cData7_reg_0_inst : DFFPOSX1 port map( D => n312, CLK => CLK, Q => 
                           cData7_0_port);
   cData6_reg_7_inst : DFFPOSX1 port map( D => n313, CLK => CLK, Q => 
                           cData6_7_port);
   cData6_reg_6_inst : DFFPOSX1 port map( D => n314, CLK => CLK, Q => 
                           cData6_6_port);
   cData6_reg_5_inst : DFFPOSX1 port map( D => n315, CLK => CLK, Q => 
                           cData6_5_port);
   cData6_reg_4_inst : DFFPOSX1 port map( D => n316, CLK => CLK, Q => 
                           cData6_4_port);
   cData6_reg_3_inst : DFFPOSX1 port map( D => n317, CLK => CLK, Q => 
                           cData6_3_port);
   cData6_reg_2_inst : DFFPOSX1 port map( D => n318, CLK => CLK, Q => 
                           cData6_2_port);
   cData6_reg_1_inst : DFFPOSX1 port map( D => n319, CLK => CLK, Q => 
                           cData6_1_port);
   cData6_reg_0_inst : DFFPOSX1 port map( D => n320, CLK => CLK, Q => 
                           cData6_0_port);
   cData5_reg_7_inst : DFFPOSX1 port map( D => n321, CLK => CLK, Q => 
                           cData5_7_port);
   cData5_reg_6_inst : DFFPOSX1 port map( D => n322, CLK => CLK, Q => 
                           cData5_6_port);
   cData5_reg_5_inst : DFFPOSX1 port map( D => n323, CLK => CLK, Q => 
                           cData5_5_port);
   cData5_reg_4_inst : DFFPOSX1 port map( D => n324, CLK => CLK, Q => 
                           cData5_4_port);
   cData5_reg_3_inst : DFFPOSX1 port map( D => n325, CLK => CLK, Q => 
                           cData5_3_port);
   cData5_reg_2_inst : DFFPOSX1 port map( D => n326, CLK => CLK, Q => 
                           cData5_2_port);
   cData5_reg_1_inst : DFFPOSX1 port map( D => n327, CLK => CLK, Q => 
                           cData5_1_port);
   cData5_reg_0_inst : DFFPOSX1 port map( D => n328, CLK => CLK, Q => 
                           cData5_0_port);
   cData4_reg_7_inst : DFFPOSX1 port map( D => n329, CLK => CLK, Q => 
                           cData4_7_port);
   cData4_reg_6_inst : DFFPOSX1 port map( D => n330, CLK => CLK, Q => 
                           cData4_6_port);
   cData4_reg_5_inst : DFFPOSX1 port map( D => n331, CLK => CLK, Q => 
                           cData4_5_port);
   cData4_reg_4_inst : DFFPOSX1 port map( D => n332, CLK => CLK, Q => 
                           cData4_4_port);
   cData4_reg_3_inst : DFFPOSX1 port map( D => n333, CLK => CLK, Q => 
                           cData4_3_port);
   cData4_reg_2_inst : DFFPOSX1 port map( D => n334, CLK => CLK, Q => 
                           cData4_2_port);
   cData4_reg_1_inst : DFFPOSX1 port map( D => n335, CLK => CLK, Q => 
                           cData4_1_port);
   cData4_reg_0_inst : DFFPOSX1 port map( D => n336, CLK => CLK, Q => 
                           cData4_0_port);
   cData3_reg_7_inst : DFFPOSX1 port map( D => n337, CLK => CLK, Q => 
                           cData3_7_port);
   cData3_reg_6_inst : DFFPOSX1 port map( D => n338, CLK => CLK, Q => 
                           cData3_6_port);
   cData3_reg_5_inst : DFFPOSX1 port map( D => n339, CLK => CLK, Q => 
                           cData3_5_port);
   cData3_reg_4_inst : DFFPOSX1 port map( D => n340, CLK => CLK, Q => 
                           cData3_4_port);
   cData3_reg_3_inst : DFFPOSX1 port map( D => n341, CLK => CLK, Q => 
                           cData3_3_port);
   cData3_reg_2_inst : DFFPOSX1 port map( D => n342, CLK => CLK, Q => 
                           cData3_2_port);
   cData3_reg_1_inst : DFFPOSX1 port map( D => n343, CLK => CLK, Q => 
                           cData3_1_port);
   cData3_reg_0_inst : DFFPOSX1 port map( D => n344, CLK => CLK, Q => 
                           cData3_0_port);
   cData1_reg_7_inst : DFFPOSX1 port map( D => n345, CLK => CLK, Q => 
                           cData1_7_port);
   cData1_reg_6_inst : DFFPOSX1 port map( D => n346, CLK => CLK, Q => 
                           cData1_6_port);
   cData1_reg_5_inst : DFFPOSX1 port map( D => n347, CLK => CLK, Q => 
                           cData1_5_port);
   cData1_reg_4_inst : DFFPOSX1 port map( D => n348, CLK => CLK, Q => 
                           cData1_4_port);
   cData1_reg_3_inst : DFFPOSX1 port map( D => n349, CLK => CLK, Q => 
                           cData1_3_port);
   cData1_reg_2_inst : DFFPOSX1 port map( D => n350, CLK => CLK, Q => 
                           cData1_2_port);
   cData1_reg_1_inst : DFFPOSX1 port map( D => n351, CLK => CLK, Q => 
                           cData1_1_port);
   cData1_reg_0_inst : DFFPOSX1 port map( D => n352, CLK => CLK, Q => 
                           cData1_0_port);
   CompData2_reg_63_inst : DFFPOSX1 port map( D => n233, CLK => CLK, Q => 
                           ENC_LEFT_31_port);
   CompData2_reg_62_inst : DFFPOSX1 port map( D => n234, CLK => CLK, Q => 
                           ENC_LEFT_30_port);
   CompData2_reg_61_inst : DFFPOSX1 port map( D => n235, CLK => CLK, Q => 
                           ENC_LEFT_29_port);
   CompData2_reg_60_inst : DFFPOSX1 port map( D => n236, CLK => CLK, Q => 
                           ENC_LEFT_28_port);
   CompData2_reg_59_inst : DFFPOSX1 port map( D => n237, CLK => CLK, Q => 
                           ENC_LEFT_27_port);
   CompData2_reg_58_inst : DFFPOSX1 port map( D => n238, CLK => CLK, Q => 
                           ENC_LEFT_26_port);
   CompData2_reg_57_inst : DFFPOSX1 port map( D => n239, CLK => CLK, Q => 
                           ENC_LEFT_25_port);
   CompData2_reg_56_inst : DFFPOSX1 port map( D => n240, CLK => CLK, Q => 
                           ENC_LEFT_24_port);
   CompData2_reg_55_inst : DFFPOSX1 port map( D => n241, CLK => CLK, Q => 
                           ENC_LEFT_23_port);
   CompData2_reg_54_inst : DFFPOSX1 port map( D => n242, CLK => CLK, Q => 
                           ENC_LEFT_22_port);
   CompData2_reg_53_inst : DFFPOSX1 port map( D => n243, CLK => CLK, Q => 
                           ENC_LEFT_21_port);
   CompData2_reg_52_inst : DFFPOSX1 port map( D => n244, CLK => CLK, Q => 
                           ENC_LEFT_20_port);
   CompData2_reg_51_inst : DFFPOSX1 port map( D => n245, CLK => CLK, Q => 
                           ENC_LEFT_19_port);
   CompData2_reg_50_inst : DFFPOSX1 port map( D => n246, CLK => CLK, Q => 
                           ENC_LEFT_18_port);
   CompData2_reg_49_inst : DFFPOSX1 port map( D => n247, CLK => CLK, Q => 
                           ENC_LEFT_17_port);
   CompData2_reg_48_inst : DFFPOSX1 port map( D => n248, CLK => CLK, Q => 
                           ENC_LEFT_16_port);
   CompData2_reg_47_inst : DFFPOSX1 port map( D => n249, CLK => CLK, Q => 
                           ENC_LEFT_15_port);
   CompData2_reg_46_inst : DFFPOSX1 port map( D => n250, CLK => CLK, Q => 
                           ENC_LEFT_14_port);
   CompData2_reg_45_inst : DFFPOSX1 port map( D => n251, CLK => CLK, Q => 
                           ENC_LEFT_13_port);
   CompData2_reg_44_inst : DFFPOSX1 port map( D => n252, CLK => CLK, Q => 
                           ENC_LEFT_12_port);
   CompData2_reg_43_inst : DFFPOSX1 port map( D => n253, CLK => CLK, Q => 
                           ENC_LEFT_11_port);
   CompData2_reg_42_inst : DFFPOSX1 port map( D => n254, CLK => CLK, Q => 
                           ENC_LEFT_10_port);
   CompData2_reg_41_inst : DFFPOSX1 port map( D => n255, CLK => CLK, Q => 
                           ENC_LEFT_9_port);
   CompData2_reg_40_inst : DFFPOSX1 port map( D => n256, CLK => CLK, Q => 
                           ENC_LEFT_8_port);
   CompData2_reg_39_inst : DFFPOSX1 port map( D => n257, CLK => CLK, Q => 
                           ENC_LEFT_7_port);
   CompData2_reg_38_inst : DFFPOSX1 port map( D => n258, CLK => CLK, Q => 
                           ENC_LEFT_6_port);
   CompData2_reg_37_inst : DFFPOSX1 port map( D => n259, CLK => CLK, Q => 
                           ENC_LEFT_5_port);
   CompData2_reg_36_inst : DFFPOSX1 port map( D => n260, CLK => CLK, Q => 
                           ENC_LEFT_4_port);
   CompData2_reg_35_inst : DFFPOSX1 port map( D => n261, CLK => CLK, Q => 
                           ENC_LEFT_3_port);
   CompData2_reg_34_inst : DFFPOSX1 port map( D => n262, CLK => CLK, Q => 
                           ENC_LEFT_2_port);
   CompData2_reg_33_inst : DFFPOSX1 port map( D => n263, CLK => CLK, Q => 
                           ENC_LEFT_1_port);
   CompData2_reg_32_inst : DFFPOSX1 port map( D => n264, CLK => CLK, Q => 
                           ENC_LEFT_0_port);
   CompData2_reg_31_inst : DFFPOSX1 port map( D => n265, CLK => CLK, Q => 
                           ENC_RIGHT_31_port);
   CompData2_reg_30_inst : DFFPOSX1 port map( D => n266, CLK => CLK, Q => 
                           ENC_RIGHT_30_port);
   CompData2_reg_29_inst : DFFPOSX1 port map( D => n267, CLK => CLK, Q => 
                           ENC_RIGHT_29_port);
   CompData2_reg_28_inst : DFFPOSX1 port map( D => n268, CLK => CLK, Q => 
                           ENC_RIGHT_28_port);
   CompData2_reg_27_inst : DFFPOSX1 port map( D => n269, CLK => CLK, Q => 
                           ENC_RIGHT_27_port);
   CompData2_reg_26_inst : DFFPOSX1 port map( D => n270, CLK => CLK, Q => 
                           ENC_RIGHT_26_port);
   CompData2_reg_25_inst : DFFPOSX1 port map( D => n271, CLK => CLK, Q => 
                           ENC_RIGHT_25_port);
   CompData2_reg_24_inst : DFFPOSX1 port map( D => n272, CLK => CLK, Q => 
                           ENC_RIGHT_24_port);
   CompData2_reg_23_inst : DFFPOSX1 port map( D => n273_port, CLK => CLK, Q => 
                           ENC_RIGHT_23_port);
   CompData2_reg_22_inst : DFFPOSX1 port map( D => n274, CLK => CLK, Q => 
                           ENC_RIGHT_22_port);
   CompData2_reg_21_inst : DFFPOSX1 port map( D => n275, CLK => CLK, Q => 
                           ENC_RIGHT_21_port);
   CompData2_reg_20_inst : DFFPOSX1 port map( D => n276, CLK => CLK, Q => 
                           ENC_RIGHT_20_port);
   CompData2_reg_19_inst : DFFPOSX1 port map( D => n277, CLK => CLK, Q => 
                           ENC_RIGHT_19_port);
   CompData2_reg_18_inst : DFFPOSX1 port map( D => n278, CLK => CLK, Q => 
                           ENC_RIGHT_18_port);
   CompData2_reg_17_inst : DFFPOSX1 port map( D => n279, CLK => CLK, Q => 
                           ENC_RIGHT_17_port);
   CompData2_reg_16_inst : DFFPOSX1 port map( D => n280, CLK => CLK, Q => 
                           ENC_RIGHT_16_port);
   CompData2_reg_15_inst : DFFPOSX1 port map( D => n281, CLK => CLK, Q => 
                           ENC_RIGHT_15_port);
   CompData2_reg_14_inst : DFFPOSX1 port map( D => n282, CLK => CLK, Q => 
                           ENC_RIGHT_14_port);
   CompData2_reg_13_inst : DFFPOSX1 port map( D => n283, CLK => CLK, Q => 
                           ENC_RIGHT_13_port);
   CompData2_reg_12_inst : DFFPOSX1 port map( D => n284, CLK => CLK, Q => 
                           ENC_RIGHT_12_port);
   CompData2_reg_11_inst : DFFPOSX1 port map( D => n285, CLK => CLK, Q => 
                           ENC_RIGHT_11_port);
   CompData2_reg_10_inst : DFFPOSX1 port map( D => n286, CLK => CLK, Q => 
                           ENC_RIGHT_10_port);
   CompData2_reg_9_inst : DFFPOSX1 port map( D => n287, CLK => CLK, Q => 
                           ENC_RIGHT_9_port);
   CompData2_reg_8_inst : DFFPOSX1 port map( D => n288, CLK => CLK, Q => 
                           ENC_RIGHT_8_port);
   CompData2_reg_7_inst : DFFPOSX1 port map( D => n289, CLK => CLK, Q => 
                           ENC_RIGHT_7_port);
   CompData2_reg_6_inst : DFFPOSX1 port map( D => n290, CLK => CLK, Q => 
                           ENC_RIGHT_6_port);
   CompData2_reg_5_inst : DFFPOSX1 port map( D => n291, CLK => CLK, Q => 
                           ENC_RIGHT_5_port);
   CompData2_reg_4_inst : DFFPOSX1 port map( D => n292, CLK => CLK, Q => 
                           ENC_RIGHT_4_port);
   CompData2_reg_3_inst : DFFPOSX1 port map( D => n293, CLK => CLK, Q => 
                           ENC_RIGHT_3_port);
   CompData2_reg_2_inst : DFFPOSX1 port map( D => n294, CLK => CLK, Q => 
                           ENC_RIGHT_2_port);
   CompData2_reg_1_inst : DFFPOSX1 port map( D => n295, CLK => CLK, Q => 
                           ENC_RIGHT_1_port);
   CompData2_reg_0_inst : DFFPOSX1 port map( D => n296, CLK => CLK, Q => 
                           ENC_RIGHT_0_port);
   n216 <= '1';
   n218 <= '1';
   n220 <= '1';
   n222 <= '1';
   n223 <= '1';
   n224 <= '1';
   n225 <= '1';
   n226 <= '1';
   n228 <= '1';
   U3 : NAND2X1 port map( A => n4, B => n39, Y => n1);
   U4 : AND2X2 port map( A => nxtCompCT_3_port, B => n230, Y => n2);
   U5 : INVX4 port map( A => n1, Y => n3);
   U6 : INVX8 port map( A => n2, Y => n4);
   U7 : INVX2 port map( A => RST, Y => n214);
   U8 : INVX2 port map( A => N273, Y => n5);
   U9 : INVX8 port map( A => n5, Y => START);
   U10 : OAI22X1 port map( A => n7, B => n8, C => n9, D => n10, Y => n360);
   U11 : OAI22X1 port map( A => n7, B => n11, C => n9, D => n12, Y => n359);
   U12 : OAI22X1 port map( A => n7, B => n13, C => n9, D => n14, Y => n358);
   U13 : OAI22X1 port map( A => n7, B => n15, C => n9, D => n16, Y => n357);
   U14 : OAI22X1 port map( A => n7, B => n17, C => n9, D => n18, Y => n356);
   U15 : OAI22X1 port map( A => n7, B => n19, C => n9, D => n20, Y => n355);
   U16 : OAI22X1 port map( A => n7, B => n21, C => n9, D => n22, Y => n354);
   U17 : OAI22X1 port map( A => n7, B => n23_port, C => n9, D => n24, Y => n353
                           );
   U18 : OAI21X1 port map( A => nxtCompCT_3_port, B => n25, C => n7, Y => n9);
   U19 : NAND2X1 port map( A => n26, B => n27, Y => n25);
   U20 : NAND3X1 port map( A => n26, B => n230, C => n28, Y => n7);
   U21 : OAI22X1 port map( A => n8, B => n29, C => n30, D => n31, Y => n352);
   U22 : OAI22X1 port map( A => n11, B => n29, C => n30, D => n32, Y => n351);
   U23 : OAI22X1 port map( A => n13, B => n29, C => n30, D => n33, Y => n350);
   U24 : OAI22X1 port map( A => n15, B => n29, C => n30, D => n34, Y => n349);
   U25 : OAI22X1 port map( A => n17, B => n29, C => n30, D => n35, Y => n348);
   U26 : OAI22X1 port map( A => n19, B => n29, C => n30, D => n36, Y => n347);
   U27 : OAI22X1 port map( A => n21, B => n29, C => n30, D => n37, Y => n346);
   U28 : OAI22X1 port map( A => n23_port, B => n29, C => n30, D => n38, Y => 
                           n345);
   U29 : NAND2X1 port map( A => n39, B => n29, Y => n30);
   U30 : NAND2X1 port map( A => n40, B => n28, Y => n29);
   U31 : OAI22X1 port map( A => n8, B => n41, C => n42, D => n43, Y => n344);
   U32 : OAI22X1 port map( A => n11, B => n41, C => n42, D => n44, Y => n343);
   U33 : OAI22X1 port map( A => n13, B => n41, C => n42, D => n45, Y => n342);
   U34 : OAI22X1 port map( A => n15, B => n41, C => n42, D => n46, Y => n341);
   U35 : OAI22X1 port map( A => n17, B => n41, C => n42, D => n47, Y => n340);
   U36 : OAI22X1 port map( A => n19, B => n41, C => n42, D => n48, Y => n339);
   U37 : OAI22X1 port map( A => n21, B => n41, C => n42, D => n49, Y => n338);
   U38 : OAI22X1 port map( A => n23_port, B => n41, C => n42, D => n50, Y => 
                           n337);
   U39 : NAND2X1 port map( A => n39, B => n41, Y => n42);
   U40 : NAND3X1 port map( A => n51, B => n27, C => nxtCompCT_2_port, Y => n41)
                           ;
   U41 : OAI22X1 port map( A => n8, B => n52, C => n53, D => n54, Y => n336);
   U42 : OAI22X1 port map( A => n11, B => n52, C => n53, D => n55, Y => n335);
   U43 : OAI22X1 port map( A => n13, B => n52, C => n53, D => n56, Y => n334);
   U44 : OAI22X1 port map( A => n15, B => n52, C => n53, D => n57, Y => n333);
   U45 : OAI22X1 port map( A => n17, B => n52, C => n53, D => n58, Y => n332);
   U46 : OAI22X1 port map( A => n19, B => n52, C => n53, D => n59, Y => n331);
   U47 : OAI22X1 port map( A => n21, B => n52, C => n53, D => n60, Y => n330);
   U48 : OAI22X1 port map( A => n23_port, B => n52, C => n53, D => n61, Y => 
                           n329);
   U49 : NAND2X1 port map( A => n39, B => n52, Y => n53);
   U50 : NAND3X1 port map( A => n51, B => nxtCompCT_2_port, C => n28, Y => n52)
                           ;
   U51 : OAI22X1 port map( A => n8, B => n62, C => n63, D => n64, Y => n328);
   U52 : OAI22X1 port map( A => n11, B => n62, C => n63, D => n65, Y => n327);
   U53 : OAI22X1 port map( A => n13, B => n62, C => n63, D => n66, Y => n326);
   U54 : OAI22X1 port map( A => n15, B => n62, C => n63, D => n67, Y => n325);
   U55 : OAI22X1 port map( A => n17, B => n62, C => n63, D => n68, Y => n324);
   U56 : OAI22X1 port map( A => n19, B => n62, C => n63, D => n69, Y => n323);
   U57 : OAI22X1 port map( A => n21, B => n62, C => n63, D => n70, Y => n322);
   U58 : OAI22X1 port map( A => n23_port, B => n62, C => n63, D => n71, Y => 
                           n321);
   U59 : NAND2X1 port map( A => n39, B => n62, Y => n63);
   U60 : NAND3X1 port map( A => nxtCompCT_2_port, B => n27, C => n230, Y => n62
                           );
   U61 : OAI22X1 port map( A => n8, B => n72, C => n73, D => n74, Y => n320);
   U62 : OAI22X1 port map( A => n11, B => n72, C => n73, D => n75, Y => n319);
   U63 : OAI22X1 port map( A => n13, B => n72, C => n73, D => n76, Y => n318);
   U64 : OAI22X1 port map( A => n15, B => n72, C => n73, D => n77, Y => n317);
   U65 : OAI22X1 port map( A => n17, B => n72, C => n73, D => n78, Y => n316);
   U66 : OAI22X1 port map( A => n19, B => n72, C => n73, D => n79, Y => n315);
   U67 : OAI22X1 port map( A => n21, B => n72, C => n73, D => n80, Y => n314);
   U68 : OAI22X1 port map( A => n23_port, B => n72, C => n73, D => n81, Y => 
                           n313);
   U69 : NAND2X1 port map( A => n39, B => n72, Y => n73);
   U70 : NAND3X1 port map( A => n230, B => nxtCompCT_2_port, C => n28, Y => n72
                           );
   U71 : NOR2X1 port map( A => n27, B => nxtCompCT_3_port, Y => n28);
   U72 : OAI22X1 port map( A => n8, B => n82, C => n83, D => n84, Y => n312);
   U73 : OAI22X1 port map( A => n11, B => n82, C => n83, D => n85, Y => n311);
   U74 : OAI22X1 port map( A => n13, B => n82, C => n83, D => n86, Y => n310);
   U75 : OAI22X1 port map( A => n15, B => n82, C => n83, D => n87, Y => n309);
   U76 : OAI22X1 port map( A => n17, B => n82, C => n83, D => n88, Y => n308);
   U77 : OAI22X1 port map( A => n19, B => n82, C => n83, D => n89, Y => n307);
   U78 : OAI22X1 port map( A => n21, B => n82, C => n83, D => n90, Y => n306);
   U79 : OAI22X1 port map( A => n23_port, B => n82, C => n83, D => n91, Y => 
                           n305);
   U80 : NAND2X1 port map( A => n39, B => n82, Y => n83);
   U81 : NAND3X1 port map( A => n40, B => n27, C => nxtCompCT_3_port, Y => n82)
                           ;
   U82 : OAI22X1 port map( A => n8, B => n92, C => n93, D => n94, Y => n304);
   U83 : INVX1 port map( A => DATA(0), Y => n8);
   U84 : OAI22X1 port map( A => n11, B => n92, C => n93, D => n95, Y => n303);
   U85 : INVX1 port map( A => DATA(1), Y => n11);
   U86 : OAI22X1 port map( A => n13, B => n92, C => n93, D => n96, Y => n302);
   U87 : INVX1 port map( A => DATA(2), Y => n13);
   U88 : OAI22X1 port map( A => n15, B => n92, C => n93, D => n97, Y => n301);
   U89 : INVX1 port map( A => DATA(3), Y => n15);
   U90 : OAI22X1 port map( A => n17, B => n92, C => n93, D => n98, Y => n300);
   U91 : INVX1 port map( A => DATA(4), Y => n17);
   U92 : OAI22X1 port map( A => n19, B => n92, C => n93, D => n99, Y => n299);
   U93 : INVX1 port map( A => DATA(5), Y => n19);
   U94 : OAI22X1 port map( A => n21, B => n92, C => n93, D => n100, Y => n298);
   U95 : INVX1 port map( A => DATA(6), Y => n21);
   U96 : OAI22X1 port map( A => n23_port, B => n92, C => n93, D => n101, Y => 
                           n297);
   U97 : NAND2X1 port map( A => n39, B => n92, Y => n93);
   U98 : NAND2X1 port map( A => nxtCompCT_3_port, B => n213, Y => n92);
   U99 : INVX1 port map( A => n27, Y => n213);
   U100 : INVX1 port map( A => DATA(7), Y => n23_port);
   U101 : OAI21X1 port map( A => n94, B => n4, C => n102, Y => n296);
   U102 : NAND2X1 port map( A => ENC_RIGHT_0_port, B => n3, Y => n102);
   U103 : INVX1 port map( A => cData8_0_port, Y => n94);
   U104 : OAI21X1 port map( A => n95, B => n4, C => n103, Y => n295);
   U105 : NAND2X1 port map( A => ENC_RIGHT_1_port, B => n3, Y => n103);
   U106 : INVX1 port map( A => cData8_1_port, Y => n95);
   U107 : OAI21X1 port map( A => n96, B => n4, C => n104, Y => n294);
   U108 : NAND2X1 port map( A => ENC_RIGHT_2_port, B => n3, Y => n104);
   U109 : INVX1 port map( A => cData8_2_port, Y => n96);
   U110 : OAI21X1 port map( A => n97, B => n4, C => n105, Y => n293);
   U111 : NAND2X1 port map( A => ENC_RIGHT_3_port, B => n3, Y => n105);
   U112 : INVX1 port map( A => cData8_3_port, Y => n97);
   U113 : OAI21X1 port map( A => n98, B => n4, C => n106, Y => n292);
   U114 : NAND2X1 port map( A => ENC_RIGHT_4_port, B => n3, Y => n106);
   U115 : INVX1 port map( A => cData8_4_port, Y => n98);
   U116 : OAI21X1 port map( A => n99, B => n4, C => n107, Y => n291);
   U117 : NAND2X1 port map( A => ENC_RIGHT_5_port, B => n3, Y => n107);
   U118 : INVX1 port map( A => cData8_5_port, Y => n99);
   U119 : OAI21X1 port map( A => n100, B => n4, C => n108, Y => n290);
   U120 : NAND2X1 port map( A => ENC_RIGHT_6_port, B => n3, Y => n108);
   U121 : INVX1 port map( A => cData8_6_port, Y => n100);
   U122 : OAI21X1 port map( A => n101, B => n4, C => n109, Y => n289);
   U123 : NAND2X1 port map( A => ENC_RIGHT_7_port, B => n3, Y => n109);
   U124 : INVX1 port map( A => cData8_7_port, Y => n101);
   U125 : OAI21X1 port map( A => n84, B => n4, C => n110, Y => n288);
   U126 : NAND2X1 port map( A => ENC_RIGHT_8_port, B => n3, Y => n110);
   U127 : INVX1 port map( A => cData7_0_port, Y => n84);
   U128 : OAI21X1 port map( A => n85, B => n4, C => n111, Y => n287);
   U129 : NAND2X1 port map( A => ENC_RIGHT_9_port, B => n3, Y => n111);
   U130 : INVX1 port map( A => cData7_1_port, Y => n85);
   U131 : OAI21X1 port map( A => n86, B => n4, C => n112, Y => n286);
   U132 : NAND2X1 port map( A => ENC_RIGHT_10_port, B => n3, Y => n112);
   U133 : INVX1 port map( A => cData7_2_port, Y => n86);
   U134 : OAI21X1 port map( A => n87, B => n4, C => n113, Y => n285);
   U135 : NAND2X1 port map( A => ENC_RIGHT_11_port, B => n3, Y => n113);
   U136 : INVX1 port map( A => cData7_3_port, Y => n87);
   U137 : OAI21X1 port map( A => n88, B => n4, C => n114, Y => n284);
   U138 : NAND2X1 port map( A => ENC_RIGHT_12_port, B => n3, Y => n114);
   U139 : INVX1 port map( A => cData7_4_port, Y => n88);
   U140 : OAI21X1 port map( A => n89, B => n4, C => n115, Y => n283);
   U141 : NAND2X1 port map( A => ENC_RIGHT_13_port, B => n3, Y => n115);
   U142 : INVX1 port map( A => cData7_5_port, Y => n89);
   U143 : OAI21X1 port map( A => n90, B => n4, C => n116, Y => n282);
   U144 : NAND2X1 port map( A => ENC_RIGHT_14_port, B => n3, Y => n116);
   U145 : INVX1 port map( A => cData7_6_port, Y => n90);
   U146 : OAI21X1 port map( A => n91, B => n4, C => n117, Y => n281);
   U147 : NAND2X1 port map( A => ENC_RIGHT_15_port, B => n3, Y => n117);
   U148 : INVX1 port map( A => cData7_7_port, Y => n91);
   U149 : OAI21X1 port map( A => n74, B => n4, C => n118, Y => n280);
   U150 : NAND2X1 port map( A => ENC_RIGHT_16_port, B => n3, Y => n118);
   U151 : INVX1 port map( A => cData6_0_port, Y => n74);
   U152 : OAI21X1 port map( A => n75, B => n4, C => n119, Y => n279);
   U153 : NAND2X1 port map( A => ENC_RIGHT_17_port, B => n3, Y => n119);
   U154 : INVX1 port map( A => cData6_1_port, Y => n75);
   U155 : OAI21X1 port map( A => n76, B => n4, C => n120, Y => n278);
   U156 : NAND2X1 port map( A => ENC_RIGHT_18_port, B => n3, Y => n120);
   U157 : INVX1 port map( A => cData6_2_port, Y => n76);
   U158 : OAI21X1 port map( A => n77, B => n4, C => n121, Y => n277);
   U159 : NAND2X1 port map( A => ENC_RIGHT_19_port, B => n3, Y => n121);
   U160 : INVX1 port map( A => cData6_3_port, Y => n77);
   U161 : OAI21X1 port map( A => n78, B => n4, C => n122, Y => n276);
   U162 : NAND2X1 port map( A => ENC_RIGHT_20_port, B => n3, Y => n122);
   U163 : INVX1 port map( A => cData6_4_port, Y => n78);
   U164 : OAI21X1 port map( A => n79, B => n4, C => n123, Y => n275);
   U165 : NAND2X1 port map( A => ENC_RIGHT_21_port, B => n3, Y => n123);
   U166 : INVX1 port map( A => cData6_5_port, Y => n79);
   U167 : OAI21X1 port map( A => n80, B => n4, C => n124, Y => n274);
   U168 : NAND2X1 port map( A => ENC_RIGHT_22_port, B => n3, Y => n124);
   U169 : INVX1 port map( A => cData6_6_port, Y => n80);
   U170 : OAI21X1 port map( A => n81, B => n4, C => n125, Y => n273_port);
   U171 : NAND2X1 port map( A => ENC_RIGHT_23_port, B => n3, Y => n125);
   U172 : INVX1 port map( A => cData6_7_port, Y => n81);
   U173 : OAI21X1 port map( A => n64, B => n4, C => n126, Y => n272);
   U174 : NAND2X1 port map( A => ENC_RIGHT_24_port, B => n3, Y => n126);
   U175 : INVX1 port map( A => cData5_0_port, Y => n64);
   U176 : OAI21X1 port map( A => n65, B => n4, C => n127, Y => n271);
   U177 : NAND2X1 port map( A => ENC_RIGHT_25_port, B => n3, Y => n127);
   U178 : INVX1 port map( A => cData5_1_port, Y => n65);
   U179 : OAI21X1 port map( A => n66, B => n4, C => n128, Y => n270);
   U180 : NAND2X1 port map( A => ENC_RIGHT_26_port, B => n3, Y => n128);
   U181 : INVX1 port map( A => cData5_2_port, Y => n66);
   U182 : OAI21X1 port map( A => n67, B => n4, C => n129, Y => n269);
   U183 : NAND2X1 port map( A => ENC_RIGHT_27_port, B => n3, Y => n129);
   U184 : INVX1 port map( A => cData5_3_port, Y => n67);
   U185 : OAI21X1 port map( A => n68, B => n4, C => n130, Y => n268);
   U186 : NAND2X1 port map( A => ENC_RIGHT_28_port, B => n3, Y => n130);
   U187 : INVX1 port map( A => cData5_4_port, Y => n68);
   U188 : OAI21X1 port map( A => n69, B => n4, C => n131, Y => n267);
   U189 : NAND2X1 port map( A => ENC_RIGHT_29_port, B => n3, Y => n131);
   U190 : INVX1 port map( A => cData5_5_port, Y => n69);
   U191 : OAI21X1 port map( A => n70, B => n4, C => n132, Y => n266);
   U192 : NAND2X1 port map( A => ENC_RIGHT_30_port, B => n3, Y => n132);
   U193 : INVX1 port map( A => cData5_6_port, Y => n70);
   U194 : OAI21X1 port map( A => n71, B => n4, C => n133, Y => n265);
   U195 : NAND2X1 port map( A => ENC_RIGHT_31_port, B => n3, Y => n133);
   U196 : INVX1 port map( A => cData5_7_port, Y => n71);
   U197 : OAI21X1 port map( A => n54, B => n4, C => n134, Y => n264);
   U198 : NAND2X1 port map( A => ENC_LEFT_0_port, B => n3, Y => n134);
   U199 : INVX1 port map( A => cData4_0_port, Y => n54);
   U200 : OAI21X1 port map( A => n55, B => n4, C => n135, Y => n263);
   U201 : NAND2X1 port map( A => ENC_LEFT_1_port, B => n3, Y => n135);
   U202 : INVX1 port map( A => cData4_1_port, Y => n55);
   U203 : OAI21X1 port map( A => n56, B => n4, C => n136, Y => n262);
   U204 : NAND2X1 port map( A => ENC_LEFT_2_port, B => n3, Y => n136);
   U205 : INVX1 port map( A => cData4_2_port, Y => n56);
   U206 : OAI21X1 port map( A => n57, B => n4, C => n137, Y => n261);
   U207 : NAND2X1 port map( A => ENC_LEFT_3_port, B => n3, Y => n137);
   U208 : INVX1 port map( A => cData4_3_port, Y => n57);
   U209 : OAI21X1 port map( A => n58, B => n4, C => n138, Y => n260);
   U210 : NAND2X1 port map( A => ENC_LEFT_4_port, B => n3, Y => n138);
   U211 : INVX1 port map( A => cData4_4_port, Y => n58);
   U212 : OAI21X1 port map( A => n59, B => n4, C => n139, Y => n259);
   U213 : NAND2X1 port map( A => ENC_LEFT_5_port, B => n3, Y => n139);
   U214 : INVX1 port map( A => cData4_5_port, Y => n59);
   U215 : OAI21X1 port map( A => n60, B => n4, C => n140, Y => n258);
   U216 : NAND2X1 port map( A => ENC_LEFT_6_port, B => n3, Y => n140);
   U217 : INVX1 port map( A => cData4_6_port, Y => n60);
   U218 : OAI21X1 port map( A => n61, B => n4, C => n141, Y => n257);
   U219 : NAND2X1 port map( A => ENC_LEFT_7_port, B => n3, Y => n141);
   U220 : INVX1 port map( A => cData4_7_port, Y => n61);
   U221 : OAI21X1 port map( A => n43, B => n4, C => n142, Y => n256);
   U222 : NAND2X1 port map( A => ENC_LEFT_8_port, B => n3, Y => n142);
   U223 : INVX1 port map( A => cData3_0_port, Y => n43);
   U224 : OAI21X1 port map( A => n44, B => n4, C => n143, Y => n255);
   U225 : NAND2X1 port map( A => ENC_LEFT_9_port, B => n3, Y => n143);
   U226 : INVX1 port map( A => cData3_1_port, Y => n44);
   U227 : OAI21X1 port map( A => n45, B => n4, C => n144, Y => n254);
   U228 : NAND2X1 port map( A => ENC_LEFT_10_port, B => n3, Y => n144);
   U229 : INVX1 port map( A => cData3_2_port, Y => n45);
   U230 : OAI21X1 port map( A => n46, B => n4, C => n145, Y => n253);
   U231 : NAND2X1 port map( A => ENC_LEFT_11_port, B => n3, Y => n145);
   U232 : INVX1 port map( A => cData3_3_port, Y => n46);
   U233 : OAI21X1 port map( A => n47, B => n4, C => n146, Y => n252);
   U234 : NAND2X1 port map( A => ENC_LEFT_12_port, B => n3, Y => n146);
   U235 : INVX1 port map( A => cData3_4_port, Y => n47);
   U236 : OAI21X1 port map( A => n48, B => n4, C => n147, Y => n251);
   U237 : NAND2X1 port map( A => ENC_LEFT_13_port, B => n3, Y => n147);
   U238 : INVX1 port map( A => cData3_5_port, Y => n48);
   U239 : OAI21X1 port map( A => n49, B => n4, C => n148, Y => n250);
   U240 : NAND2X1 port map( A => ENC_LEFT_14_port, B => n3, Y => n148);
   U241 : INVX1 port map( A => cData3_6_port, Y => n49);
   U242 : OAI21X1 port map( A => n50, B => n4, C => n149, Y => n249);
   U243 : NAND2X1 port map( A => ENC_LEFT_15_port, B => n3, Y => n149);
   U244 : INVX1 port map( A => cData3_7_port, Y => n50);
   U245 : OAI21X1 port map( A => n10, B => n4, C => n150, Y => n248);
   U246 : NAND2X1 port map( A => ENC_LEFT_16_port, B => n3, Y => n150);
   U247 : INVX1 port map( A => cData2_0_port, Y => n10);
   U248 : OAI21X1 port map( A => n12, B => n4, C => n151, Y => n247);
   U249 : NAND2X1 port map( A => ENC_LEFT_17_port, B => n3, Y => n151);
   U250 : INVX1 port map( A => cData2_1_port, Y => n12);
   U251 : OAI21X1 port map( A => n14, B => n4, C => n152, Y => n246);
   U252 : NAND2X1 port map( A => ENC_LEFT_18_port, B => n3, Y => n152);
   U253 : INVX1 port map( A => cData2_2_port, Y => n14);
   U254 : OAI21X1 port map( A => n16, B => n4, C => n153, Y => n245);
   U255 : NAND2X1 port map( A => ENC_LEFT_19_port, B => n3, Y => n153);
   U256 : INVX1 port map( A => cData2_3_port, Y => n16);
   U257 : OAI21X1 port map( A => n18, B => n4, C => n154, Y => n244);
   U258 : NAND2X1 port map( A => ENC_LEFT_20_port, B => n3, Y => n154);
   U259 : INVX1 port map( A => cData2_4_port, Y => n18);
   U260 : OAI21X1 port map( A => n20, B => n4, C => n155, Y => n243);
   U261 : NAND2X1 port map( A => ENC_LEFT_21_port, B => n3, Y => n155);
   U262 : INVX1 port map( A => cData2_5_port, Y => n20);
   U263 : OAI21X1 port map( A => n22, B => n4, C => n156, Y => n242);
   U264 : NAND2X1 port map( A => ENC_LEFT_22_port, B => n3, Y => n156);
   U265 : INVX1 port map( A => cData2_6_port, Y => n22);
   U266 : OAI21X1 port map( A => n24, B => n4, C => n157, Y => n241);
   U267 : NAND2X1 port map( A => ENC_LEFT_23_port, B => n3, Y => n157);
   U268 : INVX1 port map( A => cData2_7_port, Y => n24);
   U269 : OAI21X1 port map( A => n31, B => n4, C => n158, Y => n240);
   U270 : NAND2X1 port map( A => ENC_LEFT_24_port, B => n3, Y => n158);
   U271 : INVX1 port map( A => cData1_0_port, Y => n31);
   U272 : OAI21X1 port map( A => n32, B => n4, C => n159, Y => n239);
   U273 : NAND2X1 port map( A => ENC_LEFT_25_port, B => n3, Y => n159);
   U274 : INVX1 port map( A => cData1_1_port, Y => n32);
   U275 : OAI21X1 port map( A => n33, B => n4, C => n160, Y => n238);
   U276 : NAND2X1 port map( A => ENC_LEFT_26_port, B => n3, Y => n160);
   U277 : INVX1 port map( A => cData1_2_port, Y => n33);
   U278 : OAI21X1 port map( A => n34, B => n4, C => n161, Y => n237);
   U279 : NAND2X1 port map( A => ENC_LEFT_27_port, B => n3, Y => n161);
   U280 : INVX1 port map( A => cData1_3_port, Y => n34);
   U281 : OAI21X1 port map( A => n35, B => n4, C => n162, Y => n236);
   U282 : NAND2X1 port map( A => ENC_LEFT_28_port, B => n3, Y => n162);
   U283 : INVX1 port map( A => cData1_4_port, Y => n35);
   U284 : OAI21X1 port map( A => n36, B => n4, C => n163, Y => n235);
   U285 : NAND2X1 port map( A => ENC_LEFT_29_port, B => n3, Y => n163);
   U286 : INVX1 port map( A => cData1_5_port, Y => n36);
   U287 : OAI21X1 port map( A => n37, B => n4, C => n164, Y => n234);
   U288 : NAND2X1 port map( A => ENC_LEFT_30_port, B => n3, Y => n164);
   U289 : INVX1 port map( A => cData1_6_port, Y => n37);
   U290 : OAI21X1 port map( A => n38, B => n4, C => n165, Y => n233);
   U291 : NAND2X1 port map( A => ENC_LEFT_31_port, B => n3, Y => n165);
   U292 : NAND3X1 port map( A => n166, B => n27, C => n40, Y => n39);
   U293 : NOR2X1 port map( A => n230, B => nxtCompCT_2_port, Y => n40);
   U294 : INVX1 port map( A => n26, Y => nxtCompCT_2_port);
   U295 : MUX2X1 port map( B => n167, A => n168, S => n169, Y => n26);
   U296 : NOR2X1 port map( A => n170, B => n171, Y => n168);
   U297 : OAI22X1 port map( A => compileCT_3_port, B => compileCT_1_port, C => 
                           compileCT_0_port, D => n170, Y => n167);
   U298 : NAND3X1 port map( A => n172, B => n171, C => n173, Y => n27);
   U299 : NAND2X1 port map( A => n174, B => n170, Y => n173);
   U300 : OAI21X1 port map( A => FULL, B => n175, C => n176, Y => n174);
   U301 : OR2X1 port map( A => compileCT_2_port, B => compileCT_3_port, Y => 
                           n175);
   U302 : INVX1 port map( A => nxtCompCT_3_port, Y => n166);
   U303 : MUX2X1 port map( B => n177, A => n178, S => n169, Y => 
                           nxtCompCT_3_port);
   U304 : OAI21X1 port map( A => n179, B => n176, C => compileCT_3_port, Y => 
                           n178);
   U305 : AND2X1 port map( A => n180, B => n171, Y => n179);
   U306 : NAND2X1 port map( A => compileCT_0_port, B => n181, Y => n177);
   U307 : INVX1 port map( A => cData1_7_port, Y => n38);
   U308 : INVX1 port map( A => n51, Y => n230);
   U309 : MUX2X1 port map( B => n182, A => n183, S => n171, Y => n51);
   U310 : OAI21X1 port map( A => n176, B => n184, C => n170, Y => n183);
   U311 : INVX1 port map( A => n181, Y => n170);
   U312 : NAND2X1 port map( A => n180, B => n169, Y => n184);
   U313 : NAND3X1 port map( A => N23, B => n185, C => n186, Y => n180);
   U314 : NOR2X1 port map( A => rndCT_0_port, B => n187, Y => n186);
   U315 : AND2X1 port map( A => n176, B => n172, Y => n182);
   U316 : NAND2X1 port map( A => compileCT_3_port, B => compileCT_2_port, Y => 
                           n172);
   U317 : MUX2X1 port map( B => n188, A => n189, S => n190, Y => n229);
   U318 : MUX2X1 port map( B => n191, A => n192, S => rndCT_1_port, Y => n227);
   U319 : NAND2X1 port map( A => n193, B => rndCT_0_port, Y => n191);
   U320 : MUX2X1 port map( B => n194, A => n195, S => rndCT_2_port, Y => n221);
   U321 : AND2X1 port map( A => rndCT_1_port, B => n192, Y => n195);
   U322 : NOR2X1 port map( A => n196, B => n190, Y => n192);
   U323 : NAND3X1 port map( A => rndCT_1_port, B => rndCT_0_port, C => n193, Y 
                           => n194);
   U324 : MUX2X1 port map( B => n197, A => n198, S => n187, Y => n219);
   U325 : NAND2X1 port map( A => n199, B => n193, Y => n198);
   U326 : INVX1 port map( A => n200, Y => n197);
   U327 : MUX2X1 port map( B => n201, A => n202, S => N23, Y => n217);
   U328 : NOR2X1 port map( A => n187, B => n200, Y => n202);
   U329 : OAI21X1 port map( A => n199, B => n189, C => n188, Y => n200);
   U330 : NAND3X1 port map( A => n193, B => rndCT_3_port, C => n199, Y => n201)
                           ;
   U331 : INVX1 port map( A => n203, Y => n199);
   U332 : NAND3X1 port map( A => rndCT_1_port, B => rndCT_0_port, C => 
                           rndCT_2_port, Y => n203);
   U333 : INVX1 port map( A => n189, Y => n193);
   U334 : OAI21X1 port map( A => n204, B => n205, C => n188, Y => n189);
   U335 : INVX1 port map( A => n196, Y => n188);
   U336 : NAND2X1 port map( A => N23, B => n185, Y => n205);
   U337 : NAND2X1 port map( A => rndCT_3_port, B => rndCT_0_port, Y => n204);
   U338 : MUX2X1 port map( B => n206, A => n207, S => n214, Y => n215);
   U339 : NAND2X1 port map( A => N23, B => n208, Y => n207);
   U340 : OAI21X1 port map( A => rndCT_0_port, B => n209, C => rndCT_3_port, Y 
                           => n208);
   U341 : INVX1 port map( A => n185, Y => n209);
   U342 : INVX1 port map( A => W_ENABLE_port, Y => n206);
   U343 : NAND3X1 port map( A => n171, B => n169, C => n210, Y => R_ENABLE);
   U344 : AOI21X1 port map( A => compileCT_3_port, B => n176, C => n181, Y => 
                           n210);
   U345 : NOR2X1 port map( A => n176, B => compileCT_3_port, Y => n181);
   U346 : INVX1 port map( A => compileCT_1_port, Y => n176);
   U347 : INVX1 port map( A => compileCT_2_port, Y => n169);
   U348 : INVX1 port map( A => compileCT_0_port, Y => n171);
   U349 : AOI21X1 port map( A => N23, B => n211, C => n196, Y => N273);
   U350 : NAND3X1 port map( A => compileCT_3_port, B => compileCT_1_port, C => 
                           n212, Y => n196);
   U351 : NOR2X1 port map( A => compileCT_2_port, B => compileCT_0_port, Y => 
                           n212);
   U352 : NAND3X1 port map( A => n190, B => n187, C => n185, Y => n211);
   U353 : NOR2X1 port map( A => rndCT_1_port, B => rndCT_2_port, Y => n185);
   U354 : INVX1 port map( A => rndCT_3_port, Y => n187);
   U364 : INVX1 port map( A => rndCT_0_port, Y => n190);

end SYN_behav;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ENCRYPTION.all;

entity e_DeCompile is

   port( OUTDATA : in std_logic_vector (63 downto 0);  D_ENABLE, CLK : in 
         std_logic;  DATA : out std_logic_vector (7 downto 0);  W_ENABLE : out 
         std_logic);

end e_DeCompile;

architecture SYN_behav of e_DeCompile is

   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X1
      port( A, B : in std_logic;  Y : out std_logic);
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
   
   signal state_3_port, state_2_port, state_1_port, state_0_port, 
      nextstate_3_port, nextstate_2_port, nextstate_1_port, nextstate_0_port, 
      n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, 
      n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31
      , n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, 
      n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60
      , n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, 
      n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86 : std_logic;

begin
   
   state_reg_0_inst : DFFSR port map( D => nextstate_0_port, CLK => CLK, R => 
                           D_ENABLE, S => n4, Q => state_0_port);
   state_reg_3_inst : DFFSR port map( D => nextstate_3_port, CLK => CLK, R => 
                           D_ENABLE, S => n3, Q => state_3_port);
   state_reg_1_inst : DFFSR port map( D => nextstate_1_port, CLK => CLK, R => 
                           D_ENABLE, S => n2, Q => state_1_port);
   state_reg_2_inst : DFFSR port map( D => nextstate_2_port, CLK => CLK, R => 
                           D_ENABLE, S => n1, Q => state_2_port);
   n1 <= '1';
   n2 <= '1';
   n3 <= '1';
   n4 <= '1';
   U4 : AND2X2 port map( A => n80, B => n72, Y => n5);
   U8 : INVX2 port map( A => n72, Y => n6);
   U9 : INVX1 port map( A => state_1_port, Y => n72);
   U10 : INVX2 port map( A => n80, Y => n7);
   U11 : MUX2X1 port map( B => n9, A => n10, S => state_1_port, Y => n8);
   U12 : MUX2X1 port map( B => n12, A => n13, S => state_1_port, Y => n11);
   U13 : MUX2X1 port map( B => n14, A => n15, S => state_3_port, Y => DATA(0));
   U14 : MUX2X1 port map( B => n17, A => n18, S => state_1_port, Y => n16);
   U15 : MUX2X1 port map( B => n20, A => n21, S => state_1_port, Y => n19);
   U16 : MUX2X1 port map( B => n22, A => n23, S => state_3_port, Y => DATA(1));
   U17 : MUX2X1 port map( B => n25, A => n26, S => state_1_port, Y => n24);
   U18 : MUX2X1 port map( B => n28, A => n29, S => state_1_port, Y => n27);
   U19 : MUX2X1 port map( B => n30, A => n31, S => state_3_port, Y => DATA(2));
   U20 : MUX2X1 port map( B => n33, A => n34, S => state_1_port, Y => n32);
   U21 : MUX2X1 port map( B => n36, A => n37, S => state_1_port, Y => n35);
   U22 : MUX2X1 port map( B => n38, A => n39, S => state_3_port, Y => DATA(3));
   U23 : MUX2X1 port map( B => n41, A => n42, S => state_1_port, Y => n40);
   U24 : MUX2X1 port map( B => n44, A => n45, S => n6, Y => n43);
   U25 : MUX2X1 port map( B => n46, A => n47, S => state_3_port, Y => DATA(4));
   U26 : MUX2X1 port map( B => n49, A => n50, S => n6, Y => n48);
   U27 : MUX2X1 port map( B => n52, A => n53, S => n6, Y => n51);
   U28 : MUX2X1 port map( B => n54, A => n55, S => state_3_port, Y => DATA(5));
   U29 : MUX2X1 port map( B => n57, A => n58, S => n6, Y => n56);
   U30 : MUX2X1 port map( B => n60, A => n61, S => n6, Y => n59);
   U31 : MUX2X1 port map( B => n62, A => n63, S => state_3_port, Y => DATA(6));
   U32 : MUX2X1 port map( B => n65, A => n66, S => n6, Y => n64);
   U33 : MUX2X1 port map( B => n68, A => n69, S => n6, Y => n67);
   U34 : MUX2X1 port map( B => n70, A => n71, S => state_3_port, Y => DATA(7));
   U35 : MUX2X1 port map( B => OUTDATA(40), A => OUTDATA(8), S => state_2_port,
                           Y => n10);
   U36 : MUX2X1 port map( B => OUTDATA(56), A => OUTDATA(24), S => state_2_port
                           , Y => n9);
   U37 : MUX2X1 port map( B => OUTDATA(48), A => OUTDATA(16), S => state_2_port
                           , Y => n13);
   U38 : NAND2X1 port map( A => n7, B => OUTDATA(32), Y => n12);
   U39 : MUX2X1 port map( B => n11, A => n8, S => state_0_port, Y => n14);
   U40 : NAND2X1 port map( A => OUTDATA(0), B => n5, Y => n15);
   U41 : MUX2X1 port map( B => OUTDATA(41), A => OUTDATA(9), S => state_2_port,
                           Y => n18);
   U42 : MUX2X1 port map( B => OUTDATA(57), A => OUTDATA(25), S => state_2_port
                           , Y => n17);
   U43 : MUX2X1 port map( B => OUTDATA(49), A => OUTDATA(17), S => state_2_port
                           , Y => n21);
   U44 : NAND2X1 port map( A => OUTDATA(33), B => n7, Y => n20);
   U45 : MUX2X1 port map( B => n19, A => n16, S => state_0_port, Y => n22);
   U46 : NAND2X1 port map( A => OUTDATA(1), B => n5, Y => n23);
   U47 : MUX2X1 port map( B => OUTDATA(42), A => OUTDATA(10), S => state_2_port
                           , Y => n26);
   U48 : MUX2X1 port map( B => OUTDATA(58), A => OUTDATA(26), S => state_2_port
                           , Y => n25);
   U49 : MUX2X1 port map( B => OUTDATA(50), A => OUTDATA(18), S => state_2_port
                           , Y => n29);
   U50 : NAND2X1 port map( A => OUTDATA(34), B => n7, Y => n28);
   U51 : MUX2X1 port map( B => n27, A => n24, S => state_0_port, Y => n30);
   U52 : NAND2X1 port map( A => OUTDATA(2), B => n5, Y => n31);
   U53 : MUX2X1 port map( B => OUTDATA(43), A => OUTDATA(11), S => n7, Y => n34
                           );
   U54 : MUX2X1 port map( B => OUTDATA(59), A => OUTDATA(27), S => n7, Y => n33
                           );
   U55 : MUX2X1 port map( B => OUTDATA(51), A => OUTDATA(19), S => n7, Y => n37
                           );
   U56 : NAND2X1 port map( A => OUTDATA(35), B => n7, Y => n36);
   U57 : MUX2X1 port map( B => n35, A => n32, S => state_0_port, Y => n38);
   U58 : NAND2X1 port map( A => OUTDATA(3), B => n5, Y => n39);
   U59 : MUX2X1 port map( B => OUTDATA(44), A => OUTDATA(12), S => n7, Y => n42
                           );
   U60 : MUX2X1 port map( B => OUTDATA(60), A => OUTDATA(28), S => n7, Y => n41
                           );
   U61 : MUX2X1 port map( B => OUTDATA(52), A => OUTDATA(20), S => n7, Y => n45
                           );
   U62 : NAND2X1 port map( A => OUTDATA(36), B => n7, Y => n44);
   U63 : MUX2X1 port map( B => n43, A => n40, S => state_0_port, Y => n46);
   U64 : NAND2X1 port map( A => OUTDATA(4), B => n5, Y => n47);
   U65 : MUX2X1 port map( B => OUTDATA(45), A => OUTDATA(13), S => n7, Y => n50
                           );
   U66 : MUX2X1 port map( B => OUTDATA(61), A => OUTDATA(29), S => n7, Y => n49
                           );
   U67 : MUX2X1 port map( B => OUTDATA(53), A => OUTDATA(21), S => n7, Y => n53
                           );
   U68 : NAND2X1 port map( A => OUTDATA(37), B => n7, Y => n52);
   U69 : MUX2X1 port map( B => n51, A => n48, S => state_0_port, Y => n54);
   U70 : NAND2X1 port map( A => OUTDATA(5), B => n5, Y => n55);
   U71 : MUX2X1 port map( B => OUTDATA(46), A => OUTDATA(14), S => n7, Y => n58
                           );
   U72 : MUX2X1 port map( B => OUTDATA(62), A => OUTDATA(30), S => n7, Y => n57
                           );
   U73 : MUX2X1 port map( B => OUTDATA(54), A => OUTDATA(22), S => n7, Y => n61
                           );
   U74 : NAND2X1 port map( A => OUTDATA(38), B => n7, Y => n60);
   U75 : MUX2X1 port map( B => n59, A => n56, S => state_0_port, Y => n62);
   U76 : NAND2X1 port map( A => OUTDATA(6), B => n5, Y => n63);
   U77 : MUX2X1 port map( B => OUTDATA(47), A => OUTDATA(15), S => n7, Y => n66
                           );
   U78 : MUX2X1 port map( B => OUTDATA(63), A => OUTDATA(31), S => n7, Y => n65
                           );
   U79 : MUX2X1 port map( B => OUTDATA(55), A => OUTDATA(23), S => n7, Y => n69
                           );
   U80 : NAND2X1 port map( A => OUTDATA(39), B => n7, Y => n68);
   U81 : MUX2X1 port map( B => n67, A => n64, S => state_0_port, Y => n70);
   U82 : NAND2X1 port map( A => OUTDATA(7), B => n5, Y => n71);
   U83 : MUX2X1 port map( B => n73, A => n74, S => n75, Y => nextstate_3_port);
   U84 : OR2X1 port map( A => n76, B => n77, Y => n74);
   U85 : NAND2X1 port map( A => n77, B => n76, Y => n73);
   U86 : NOR2X1 port map( A => state_3_port, B => n78, Y => nextstate_2_port);
   U87 : XNOR2X1 port map( A => n79, B => n80, Y => n78);
   U88 : NOR2X1 port map( A => state_3_port, B => n81, Y => nextstate_1_port);
   U89 : NOR2X1 port map( A => state_0_port, B => n82, Y => nextstate_0_port);
   U90 : MUX2X1 port map( B => n83, A => n84, S => n75, Y => n82);
   U91 : NAND3X1 port map( A => n72, B => n80, C => n85, Y => n84);
   U92 : INVX1 port map( A => D_ENABLE, Y => n85);
   U93 : NOR2X1 port map( A => n7, B => n6, Y => n83);
   U94 : NAND3X1 port map( A => n76, B => n75, C => n77, Y => W_ENABLE);
   U95 : INVX1 port map( A => n86, Y => n77);
   U96 : OAI21X1 port map( A => n81, B => n80, C => n79, Y => n86);
   U97 : INVX1 port map( A => state_3_port, Y => n75);
   U98 : XNOR2X1 port map( A => n81, B => n80, Y => n76);
   U99 : INVX1 port map( A => state_2_port, Y => n80);
   U100 : OAI21X1 port map( A => n6, B => state_0_port, C => n79, Y => n81);
   U101 : NAND2X1 port map( A => n6, B => state_0_port, Y => n79);

end SYN_behav;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ENCRYPTION.all;

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

use work.CONV_PACK_ENCRYPTION.all;

entity ENCRYPTION is

   port( CLK : in std_logic;  DATA : in std_logic_vector (7 downto 0);  EMPTY, 
         FULL, RENABLE, RST : in std_logic;  EMPTY1, FULL1 : out std_logic;  
         RDATA : out std_logic_vector (7 downto 0);  R_ENABLE : out std_logic);

end ENCRYPTION;

architecture SYN_struct of ENCRYPTION is

   component INVX4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component e_rndCount
      port( CLK, RST, START : in std_logic;  IN_SELECT, FIESTELCLK : out 
            std_logic;  RND_CNT : out std_logic_vector (3 downto 0));
   end component;
   
   component e_rkeyGen
      port( RNDNUM : in std_logic_vector (3 downto 0);  START_RST, IN_SELECT, 
            CLK : in std_logic;  RKEY : out std_logic_vector (47 downto 0));
   end component;
   
   component e_fiestel
      port( FIESTELCLK, START : in std_logic;  ENC_LEFT, ENC_RIGHT : in 
            std_logic_vector (31 downto 0);  RKEY : in std_logic_vector (47 
            downto 0);  IN_SELECT : in std_logic;  OUTDATA : out 
            std_logic_vector (63 downto 0));
   end component;
   
   component e_encController
      port( DATA : in std_logic_vector (7 downto 0);  FULL, EMPTY, CLK, RST : 
            in std_logic;  START, R_ENABLE, W_ENABLE : out std_logic;  ENC_LEFT
            , ENC_RIGHT : out std_logic_vector (31 downto 0));
   end component;
   
   component e_DeCompile
      port( OUTDATA : in std_logic_vector (63 downto 0);  D_ENABLE, CLK : in 
            std_logic;  DATA : out std_logic_vector (7 downto 0);  W_ENABLE : 
            out std_logic);
   end component;
   
   component RCV_FIFO
      port( CLK, D_CLK, RST_N, R_ENABLE, W_ENABLE : in std_logic;  WDATA : in 
            std_logic_vector (7 downto 0);  R_DATA : out std_logic_vector (7 
            downto 0);  EMPTY, FULL : out std_logic);
   end component;
   
   signal DATA1_7_port, DATA1_6_port, DATA1_5_port, DATA1_4_port, DATA1_3_port,
      DATA1_2_port, DATA1_1_port, DATA1_0_port, W_ENABLE1, W_ENABLE, 
      OUTDATA_63_port, OUTDATA_62_port, OUTDATA_61_port, OUTDATA_60_port, 
      OUTDATA_59_port, OUTDATA_58_port, OUTDATA_57_port, OUTDATA_56_port, 
      OUTDATA_55_port, OUTDATA_54_port, OUTDATA_53_port, OUTDATA_52_port, 
      OUTDATA_51_port, OUTDATA_50_port, OUTDATA_49_port, OUTDATA_48_port, 
      OUTDATA_47_port, OUTDATA_46_port, OUTDATA_45_port, OUTDATA_44_port, 
      OUTDATA_43_port, OUTDATA_42_port, OUTDATA_41_port, OUTDATA_40_port, 
      OUTDATA_39_port, OUTDATA_38_port, OUTDATA_37_port, OUTDATA_36_port, 
      OUTDATA_35_port, OUTDATA_34_port, OUTDATA_33_port, OUTDATA_32_port, 
      OUTDATA_31_port, OUTDATA_30_port, OUTDATA_29_port, OUTDATA_28_port, 
      OUTDATA_27_port, OUTDATA_26_port, OUTDATA_25_port, OUTDATA_24_port, 
      OUTDATA_23_port, OUTDATA_22_port, OUTDATA_21_port, OUTDATA_20_port, 
      OUTDATA_19_port, OUTDATA_18_port, OUTDATA_17_port, OUTDATA_16_port, 
      OUTDATA_15_port, OUTDATA_14_port, OUTDATA_13_port, OUTDATA_12_port, 
      OUTDATA_11_port, OUTDATA_10_port, OUTDATA_9_port, OUTDATA_8_port, 
      OUTDATA_7_port, OUTDATA_6_port, OUTDATA_5_port, OUTDATA_4_port, 
      OUTDATA_3_port, OUTDATA_2_port, OUTDATA_1_port, OUTDATA_0_port, 
      ENC_LEFT_31_port, ENC_LEFT_30_port, ENC_LEFT_29_port, ENC_LEFT_28_port, 
      ENC_LEFT_27_port, ENC_LEFT_26_port, ENC_LEFT_25_port, ENC_LEFT_24_port, 
      ENC_LEFT_23_port, ENC_LEFT_22_port, ENC_LEFT_21_port, ENC_LEFT_20_port, 
      ENC_LEFT_19_port, ENC_LEFT_18_port, ENC_LEFT_17_port, ENC_LEFT_16_port, 
      ENC_LEFT_15_port, ENC_LEFT_14_port, ENC_LEFT_13_port, ENC_LEFT_12_port, 
      ENC_LEFT_11_port, ENC_LEFT_10_port, ENC_LEFT_9_port, ENC_LEFT_8_port, 
      ENC_LEFT_7_port, ENC_LEFT_6_port, ENC_LEFT_5_port, ENC_LEFT_4_port, 
      ENC_LEFT_3_port, ENC_LEFT_2_port, ENC_LEFT_1_port, ENC_LEFT_0_port, 
      ENC_RIGHT_31_port, ENC_RIGHT_30_port, ENC_RIGHT_29_port, 
      ENC_RIGHT_28_port, ENC_RIGHT_27_port, ENC_RIGHT_26_port, 
      ENC_RIGHT_25_port, ENC_RIGHT_24_port, ENC_RIGHT_23_port, 
      ENC_RIGHT_22_port, ENC_RIGHT_21_port, ENC_RIGHT_20_port, 
      ENC_RIGHT_19_port, ENC_RIGHT_18_port, ENC_RIGHT_17_port, 
      ENC_RIGHT_16_port, ENC_RIGHT_15_port, ENC_RIGHT_14_port, 
      ENC_RIGHT_13_port, ENC_RIGHT_12_port, ENC_RIGHT_11_port, 
      ENC_RIGHT_10_port, ENC_RIGHT_9_port, ENC_RIGHT_8_port, ENC_RIGHT_7_port, 
      ENC_RIGHT_6_port, ENC_RIGHT_5_port, ENC_RIGHT_4_port, ENC_RIGHT_3_port, 
      ENC_RIGHT_2_port, ENC_RIGHT_1_port, ENC_RIGHT_0_port, START, FIESTELCLK, 
      IN_SELECT, RKEY_47_port, RKEY_46_port, RKEY_45_port, RKEY_44_port, 
      RKEY_43_port, RKEY_42_port, RKEY_41_port, RKEY_40_port, RKEY_39_port, 
      RKEY_38_port, RKEY_37_port, RKEY_36_port, RKEY_35_port, RKEY_34_port, 
      RKEY_33_port, RKEY_32_port, RKEY_31_port, RKEY_30_port, RKEY_29_port, 
      RKEY_28_port, RKEY_27_port, RKEY_26_port, RKEY_25_port, RKEY_24_port, 
      RKEY_23_port, RKEY_22_port, RKEY_21_port, RKEY_20_port, RKEY_19_port, 
      RKEY_18_port, RKEY_17_port, RKEY_16_port, RKEY_15_port, RKEY_14_port, 
      RKEY_13_port, RKEY_12_port, RKEY_11_port, RKEY_10_port, RKEY_9_port, 
      RKEY_8_port, RKEY_7_port, RKEY_6_port, RKEY_5_port, RKEY_4_port, 
      RKEY_3_port, RKEY_2_port, RKEY_1_port, RKEY_0_port, RND_CNT_3_port, 
      RND_CNT_2_port, RND_CNT_1_port, RND_CNT_0_port, n2 : std_logic;

begin
   
   U_5 : RCV_FIFO port map( CLK => CLK, D_CLK => CLK, RST_N => n2, R_ENABLE => 
                           RENABLE, W_ENABLE => W_ENABLE1, WDATA(7) => 
                           DATA1_7_port, WDATA(6) => DATA1_6_port, WDATA(5) => 
                           DATA1_5_port, WDATA(4) => DATA1_4_port, WDATA(3) => 
                           DATA1_3_port, WDATA(2) => DATA1_2_port, WDATA(1) => 
                           DATA1_1_port, WDATA(0) => DATA1_0_port, R_DATA(7) =>
                           RDATA(7), R_DATA(6) => RDATA(6), R_DATA(5) => 
                           RDATA(5), R_DATA(4) => RDATA(4), R_DATA(3) => 
                           RDATA(3), R_DATA(2) => RDATA(2), R_DATA(1) => 
                           RDATA(1), R_DATA(0) => RDATA(0), EMPTY => EMPTY1, 
                           FULL => FULL1);
   U_0 : e_DeCompile port map( OUTDATA(63) => OUTDATA_63_port, OUTDATA(62) => 
                           OUTDATA_62_port, OUTDATA(61) => OUTDATA_61_port, 
                           OUTDATA(60) => OUTDATA_60_port, OUTDATA(59) => 
                           OUTDATA_59_port, OUTDATA(58) => OUTDATA_58_port, 
                           OUTDATA(57) => OUTDATA_57_port, OUTDATA(56) => 
                           OUTDATA_56_port, OUTDATA(55) => OUTDATA_55_port, 
                           OUTDATA(54) => OUTDATA_54_port, OUTDATA(53) => 
                           OUTDATA_53_port, OUTDATA(52) => OUTDATA_52_port, 
                           OUTDATA(51) => OUTDATA_51_port, OUTDATA(50) => 
                           OUTDATA_50_port, OUTDATA(49) => OUTDATA_49_port, 
                           OUTDATA(48) => OUTDATA_48_port, OUTDATA(47) => 
                           OUTDATA_47_port, OUTDATA(46) => OUTDATA_46_port, 
                           OUTDATA(45) => OUTDATA_45_port, OUTDATA(44) => 
                           OUTDATA_44_port, OUTDATA(43) => OUTDATA_43_port, 
                           OUTDATA(42) => OUTDATA_42_port, OUTDATA(41) => 
                           OUTDATA_41_port, OUTDATA(40) => OUTDATA_40_port, 
                           OUTDATA(39) => OUTDATA_39_port, OUTDATA(38) => 
                           OUTDATA_38_port, OUTDATA(37) => OUTDATA_37_port, 
                           OUTDATA(36) => OUTDATA_36_port, OUTDATA(35) => 
                           OUTDATA_35_port, OUTDATA(34) => OUTDATA_34_port, 
                           OUTDATA(33) => OUTDATA_33_port, OUTDATA(32) => 
                           OUTDATA_32_port, OUTDATA(31) => OUTDATA_31_port, 
                           OUTDATA(30) => OUTDATA_30_port, OUTDATA(29) => 
                           OUTDATA_29_port, OUTDATA(28) => OUTDATA_28_port, 
                           OUTDATA(27) => OUTDATA_27_port, OUTDATA(26) => 
                           OUTDATA_26_port, OUTDATA(25) => OUTDATA_25_port, 
                           OUTDATA(24) => OUTDATA_24_port, OUTDATA(23) => 
                           OUTDATA_23_port, OUTDATA(22) => OUTDATA_22_port, 
                           OUTDATA(21) => OUTDATA_21_port, OUTDATA(20) => 
                           OUTDATA_20_port, OUTDATA(19) => OUTDATA_19_port, 
                           OUTDATA(18) => OUTDATA_18_port, OUTDATA(17) => 
                           OUTDATA_17_port, OUTDATA(16) => OUTDATA_16_port, 
                           OUTDATA(15) => OUTDATA_15_port, OUTDATA(14) => 
                           OUTDATA_14_port, OUTDATA(13) => OUTDATA_13_port, 
                           OUTDATA(12) => OUTDATA_12_port, OUTDATA(11) => 
                           OUTDATA_11_port, OUTDATA(10) => OUTDATA_10_port, 
                           OUTDATA(9) => OUTDATA_9_port, OUTDATA(8) => 
                           OUTDATA_8_port, OUTDATA(7) => OUTDATA_7_port, 
                           OUTDATA(6) => OUTDATA_6_port, OUTDATA(5) => 
                           OUTDATA_5_port, OUTDATA(4) => OUTDATA_4_port, 
                           OUTDATA(3) => OUTDATA_3_port, OUTDATA(2) => 
                           OUTDATA_2_port, OUTDATA(1) => OUTDATA_1_port, 
                           OUTDATA(0) => OUTDATA_0_port, D_ENABLE => W_ENABLE, 
                           CLK => CLK, DATA(7) => DATA1_7_port, DATA(6) => 
                           DATA1_6_port, DATA(5) => DATA1_5_port, DATA(4) => 
                           DATA1_4_port, DATA(3) => DATA1_3_port, DATA(2) => 
                           DATA1_2_port, DATA(1) => DATA1_1_port, DATA(0) => 
                           DATA1_0_port, W_ENABLE => W_ENABLE1);
   U_1 : e_encController port map( DATA(7) => DATA(7), DATA(6) => DATA(6), 
                           DATA(5) => DATA(5), DATA(4) => DATA(4), DATA(3) => 
                           DATA(3), DATA(2) => DATA(2), DATA(1) => DATA(1), 
                           DATA(0) => DATA(0), FULL => FULL, EMPTY => EMPTY, 
                           CLK => CLK, RST => RST, START => START, R_ENABLE => 
                           R_ENABLE, W_ENABLE => W_ENABLE, ENC_LEFT(31) => 
                           ENC_LEFT_31_port, ENC_LEFT(30) => ENC_LEFT_30_port, 
                           ENC_LEFT(29) => ENC_LEFT_29_port, ENC_LEFT(28) => 
                           ENC_LEFT_28_port, ENC_LEFT(27) => ENC_LEFT_27_port, 
                           ENC_LEFT(26) => ENC_LEFT_26_port, ENC_LEFT(25) => 
                           ENC_LEFT_25_port, ENC_LEFT(24) => ENC_LEFT_24_port, 
                           ENC_LEFT(23) => ENC_LEFT_23_port, ENC_LEFT(22) => 
                           ENC_LEFT_22_port, ENC_LEFT(21) => ENC_LEFT_21_port, 
                           ENC_LEFT(20) => ENC_LEFT_20_port, ENC_LEFT(19) => 
                           ENC_LEFT_19_port, ENC_LEFT(18) => ENC_LEFT_18_port, 
                           ENC_LEFT(17) => ENC_LEFT_17_port, ENC_LEFT(16) => 
                           ENC_LEFT_16_port, ENC_LEFT(15) => ENC_LEFT_15_port, 
                           ENC_LEFT(14) => ENC_LEFT_14_port, ENC_LEFT(13) => 
                           ENC_LEFT_13_port, ENC_LEFT(12) => ENC_LEFT_12_port, 
                           ENC_LEFT(11) => ENC_LEFT_11_port, ENC_LEFT(10) => 
                           ENC_LEFT_10_port, ENC_LEFT(9) => ENC_LEFT_9_port, 
                           ENC_LEFT(8) => ENC_LEFT_8_port, ENC_LEFT(7) => 
                           ENC_LEFT_7_port, ENC_LEFT(6) => ENC_LEFT_6_port, 
                           ENC_LEFT(5) => ENC_LEFT_5_port, ENC_LEFT(4) => 
                           ENC_LEFT_4_port, ENC_LEFT(3) => ENC_LEFT_3_port, 
                           ENC_LEFT(2) => ENC_LEFT_2_port, ENC_LEFT(1) => 
                           ENC_LEFT_1_port, ENC_LEFT(0) => ENC_LEFT_0_port, 
                           ENC_RIGHT(31) => ENC_RIGHT_31_port, ENC_RIGHT(30) =>
                           ENC_RIGHT_30_port, ENC_RIGHT(29) => 
                           ENC_RIGHT_29_port, ENC_RIGHT(28) => 
                           ENC_RIGHT_28_port, ENC_RIGHT(27) => 
                           ENC_RIGHT_27_port, ENC_RIGHT(26) => 
                           ENC_RIGHT_26_port, ENC_RIGHT(25) => 
                           ENC_RIGHT_25_port, ENC_RIGHT(24) => 
                           ENC_RIGHT_24_port, ENC_RIGHT(23) => 
                           ENC_RIGHT_23_port, ENC_RIGHT(22) => 
                           ENC_RIGHT_22_port, ENC_RIGHT(21) => 
                           ENC_RIGHT_21_port, ENC_RIGHT(20) => 
                           ENC_RIGHT_20_port, ENC_RIGHT(19) => 
                           ENC_RIGHT_19_port, ENC_RIGHT(18) => 
                           ENC_RIGHT_18_port, ENC_RIGHT(17) => 
                           ENC_RIGHT_17_port, ENC_RIGHT(16) => 
                           ENC_RIGHT_16_port, ENC_RIGHT(15) => 
                           ENC_RIGHT_15_port, ENC_RIGHT(14) => 
                           ENC_RIGHT_14_port, ENC_RIGHT(13) => 
                           ENC_RIGHT_13_port, ENC_RIGHT(12) => 
                           ENC_RIGHT_12_port, ENC_RIGHT(11) => 
                           ENC_RIGHT_11_port, ENC_RIGHT(10) => 
                           ENC_RIGHT_10_port, ENC_RIGHT(9) => ENC_RIGHT_9_port,
                           ENC_RIGHT(8) => ENC_RIGHT_8_port, ENC_RIGHT(7) => 
                           ENC_RIGHT_7_port, ENC_RIGHT(6) => ENC_RIGHT_6_port, 
                           ENC_RIGHT(5) => ENC_RIGHT_5_port, ENC_RIGHT(4) => 
                           ENC_RIGHT_4_port, ENC_RIGHT(3) => ENC_RIGHT_3_port, 
                           ENC_RIGHT(2) => ENC_RIGHT_2_port, ENC_RIGHT(1) => 
                           ENC_RIGHT_1_port, ENC_RIGHT(0) => ENC_RIGHT_0_port);
   U_2 : e_fiestel port map( FIESTELCLK => FIESTELCLK, START => START, 
                           ENC_LEFT(31) => ENC_LEFT_31_port, ENC_LEFT(30) => 
                           ENC_LEFT_30_port, ENC_LEFT(29) => ENC_LEFT_29_port, 
                           ENC_LEFT(28) => ENC_LEFT_28_port, ENC_LEFT(27) => 
                           ENC_LEFT_27_port, ENC_LEFT(26) => ENC_LEFT_26_port, 
                           ENC_LEFT(25) => ENC_LEFT_25_port, ENC_LEFT(24) => 
                           ENC_LEFT_24_port, ENC_LEFT(23) => ENC_LEFT_23_port, 
                           ENC_LEFT(22) => ENC_LEFT_22_port, ENC_LEFT(21) => 
                           ENC_LEFT_21_port, ENC_LEFT(20) => ENC_LEFT_20_port, 
                           ENC_LEFT(19) => ENC_LEFT_19_port, ENC_LEFT(18) => 
                           ENC_LEFT_18_port, ENC_LEFT(17) => ENC_LEFT_17_port, 
                           ENC_LEFT(16) => ENC_LEFT_16_port, ENC_LEFT(15) => 
                           ENC_LEFT_15_port, ENC_LEFT(14) => ENC_LEFT_14_port, 
                           ENC_LEFT(13) => ENC_LEFT_13_port, ENC_LEFT(12) => 
                           ENC_LEFT_12_port, ENC_LEFT(11) => ENC_LEFT_11_port, 
                           ENC_LEFT(10) => ENC_LEFT_10_port, ENC_LEFT(9) => 
                           ENC_LEFT_9_port, ENC_LEFT(8) => ENC_LEFT_8_port, 
                           ENC_LEFT(7) => ENC_LEFT_7_port, ENC_LEFT(6) => 
                           ENC_LEFT_6_port, ENC_LEFT(5) => ENC_LEFT_5_port, 
                           ENC_LEFT(4) => ENC_LEFT_4_port, ENC_LEFT(3) => 
                           ENC_LEFT_3_port, ENC_LEFT(2) => ENC_LEFT_2_port, 
                           ENC_LEFT(1) => ENC_LEFT_1_port, ENC_LEFT(0) => 
                           ENC_LEFT_0_port, ENC_RIGHT(31) => ENC_RIGHT_31_port,
                           ENC_RIGHT(30) => ENC_RIGHT_30_port, ENC_RIGHT(29) =>
                           ENC_RIGHT_29_port, ENC_RIGHT(28) => 
                           ENC_RIGHT_28_port, ENC_RIGHT(27) => 
                           ENC_RIGHT_27_port, ENC_RIGHT(26) => 
                           ENC_RIGHT_26_port, ENC_RIGHT(25) => 
                           ENC_RIGHT_25_port, ENC_RIGHT(24) => 
                           ENC_RIGHT_24_port, ENC_RIGHT(23) => 
                           ENC_RIGHT_23_port, ENC_RIGHT(22) => 
                           ENC_RIGHT_22_port, ENC_RIGHT(21) => 
                           ENC_RIGHT_21_port, ENC_RIGHT(20) => 
                           ENC_RIGHT_20_port, ENC_RIGHT(19) => 
                           ENC_RIGHT_19_port, ENC_RIGHT(18) => 
                           ENC_RIGHT_18_port, ENC_RIGHT(17) => 
                           ENC_RIGHT_17_port, ENC_RIGHT(16) => 
                           ENC_RIGHT_16_port, ENC_RIGHT(15) => 
                           ENC_RIGHT_15_port, ENC_RIGHT(14) => 
                           ENC_RIGHT_14_port, ENC_RIGHT(13) => 
                           ENC_RIGHT_13_port, ENC_RIGHT(12) => 
                           ENC_RIGHT_12_port, ENC_RIGHT(11) => 
                           ENC_RIGHT_11_port, ENC_RIGHT(10) => 
                           ENC_RIGHT_10_port, ENC_RIGHT(9) => ENC_RIGHT_9_port,
                           ENC_RIGHT(8) => ENC_RIGHT_8_port, ENC_RIGHT(7) => 
                           ENC_RIGHT_7_port, ENC_RIGHT(6) => ENC_RIGHT_6_port, 
                           ENC_RIGHT(5) => ENC_RIGHT_5_port, ENC_RIGHT(4) => 
                           ENC_RIGHT_4_port, ENC_RIGHT(3) => ENC_RIGHT_3_port, 
                           ENC_RIGHT(2) => ENC_RIGHT_2_port, ENC_RIGHT(1) => 
                           ENC_RIGHT_1_port, ENC_RIGHT(0) => ENC_RIGHT_0_port, 
                           RKEY(47) => RKEY_47_port, RKEY(46) => RKEY_46_port, 
                           RKEY(45) => RKEY_45_port, RKEY(44) => RKEY_44_port, 
                           RKEY(43) => RKEY_43_port, RKEY(42) => RKEY_42_port, 
                           RKEY(41) => RKEY_41_port, RKEY(40) => RKEY_40_port, 
                           RKEY(39) => RKEY_39_port, RKEY(38) => RKEY_38_port, 
                           RKEY(37) => RKEY_37_port, RKEY(36) => RKEY_36_port, 
                           RKEY(35) => RKEY_35_port, RKEY(34) => RKEY_34_port, 
                           RKEY(33) => RKEY_33_port, RKEY(32) => RKEY_32_port, 
                           RKEY(31) => RKEY_31_port, RKEY(30) => RKEY_30_port, 
                           RKEY(29) => RKEY_29_port, RKEY(28) => RKEY_28_port, 
                           RKEY(27) => RKEY_27_port, RKEY(26) => RKEY_26_port, 
                           RKEY(25) => RKEY_25_port, RKEY(24) => RKEY_24_port, 
                           RKEY(23) => RKEY_23_port, RKEY(22) => RKEY_22_port, 
                           RKEY(21) => RKEY_21_port, RKEY(20) => RKEY_20_port, 
                           RKEY(19) => RKEY_19_port, RKEY(18) => RKEY_18_port, 
                           RKEY(17) => RKEY_17_port, RKEY(16) => RKEY_16_port, 
                           RKEY(15) => RKEY_15_port, RKEY(14) => RKEY_14_port, 
                           RKEY(13) => RKEY_13_port, RKEY(12) => RKEY_12_port, 
                           RKEY(11) => RKEY_11_port, RKEY(10) => RKEY_10_port, 
                           RKEY(9) => RKEY_9_port, RKEY(8) => RKEY_8_port, 
                           RKEY(7) => RKEY_7_port, RKEY(6) => RKEY_6_port, 
                           RKEY(5) => RKEY_5_port, RKEY(4) => RKEY_4_port, 
                           RKEY(3) => RKEY_3_port, RKEY(2) => RKEY_2_port, 
                           RKEY(1) => RKEY_1_port, RKEY(0) => RKEY_0_port, 
                           IN_SELECT => IN_SELECT, OUTDATA(63) => 
                           OUTDATA_63_port, OUTDATA(62) => OUTDATA_62_port, 
                           OUTDATA(61) => OUTDATA_61_port, OUTDATA(60) => 
                           OUTDATA_60_port, OUTDATA(59) => OUTDATA_59_port, 
                           OUTDATA(58) => OUTDATA_58_port, OUTDATA(57) => 
                           OUTDATA_57_port, OUTDATA(56) => OUTDATA_56_port, 
                           OUTDATA(55) => OUTDATA_55_port, OUTDATA(54) => 
                           OUTDATA_54_port, OUTDATA(53) => OUTDATA_53_port, 
                           OUTDATA(52) => OUTDATA_52_port, OUTDATA(51) => 
                           OUTDATA_51_port, OUTDATA(50) => OUTDATA_50_port, 
                           OUTDATA(49) => OUTDATA_49_port, OUTDATA(48) => 
                           OUTDATA_48_port, OUTDATA(47) => OUTDATA_47_port, 
                           OUTDATA(46) => OUTDATA_46_port, OUTDATA(45) => 
                           OUTDATA_45_port, OUTDATA(44) => OUTDATA_44_port, 
                           OUTDATA(43) => OUTDATA_43_port, OUTDATA(42) => 
                           OUTDATA_42_port, OUTDATA(41) => OUTDATA_41_port, 
                           OUTDATA(40) => OUTDATA_40_port, OUTDATA(39) => 
                           OUTDATA_39_port, OUTDATA(38) => OUTDATA_38_port, 
                           OUTDATA(37) => OUTDATA_37_port, OUTDATA(36) => 
                           OUTDATA_36_port, OUTDATA(35) => OUTDATA_35_port, 
                           OUTDATA(34) => OUTDATA_34_port, OUTDATA(33) => 
                           OUTDATA_33_port, OUTDATA(32) => OUTDATA_32_port, 
                           OUTDATA(31) => OUTDATA_31_port, OUTDATA(30) => 
                           OUTDATA_30_port, OUTDATA(29) => OUTDATA_29_port, 
                           OUTDATA(28) => OUTDATA_28_port, OUTDATA(27) => 
                           OUTDATA_27_port, OUTDATA(26) => OUTDATA_26_port, 
                           OUTDATA(25) => OUTDATA_25_port, OUTDATA(24) => 
                           OUTDATA_24_port, OUTDATA(23) => OUTDATA_23_port, 
                           OUTDATA(22) => OUTDATA_22_port, OUTDATA(21) => 
                           OUTDATA_21_port, OUTDATA(20) => OUTDATA_20_port, 
                           OUTDATA(19) => OUTDATA_19_port, OUTDATA(18) => 
                           OUTDATA_18_port, OUTDATA(17) => OUTDATA_17_port, 
                           OUTDATA(16) => OUTDATA_16_port, OUTDATA(15) => 
                           OUTDATA_15_port, OUTDATA(14) => OUTDATA_14_port, 
                           OUTDATA(13) => OUTDATA_13_port, OUTDATA(12) => 
                           OUTDATA_12_port, OUTDATA(11) => OUTDATA_11_port, 
                           OUTDATA(10) => OUTDATA_10_port, OUTDATA(9) => 
                           OUTDATA_9_port, OUTDATA(8) => OUTDATA_8_port, 
                           OUTDATA(7) => OUTDATA_7_port, OUTDATA(6) => 
                           OUTDATA_6_port, OUTDATA(5) => OUTDATA_5_port, 
                           OUTDATA(4) => OUTDATA_4_port, OUTDATA(3) => 
                           OUTDATA_3_port, OUTDATA(2) => OUTDATA_2_port, 
                           OUTDATA(1) => OUTDATA_1_port, OUTDATA(0) => 
                           OUTDATA_0_port);
   U_3 : e_rkeyGen port map( RNDNUM(3) => RND_CNT_3_port, RNDNUM(2) => 
                           RND_CNT_2_port, RNDNUM(1) => RND_CNT_1_port, 
                           RNDNUM(0) => RND_CNT_0_port, START_RST => START, 
                           IN_SELECT => IN_SELECT, CLK => CLK, RKEY(47) => 
                           RKEY_47_port, RKEY(46) => RKEY_46_port, RKEY(45) => 
                           RKEY_45_port, RKEY(44) => RKEY_44_port, RKEY(43) => 
                           RKEY_43_port, RKEY(42) => RKEY_42_port, RKEY(41) => 
                           RKEY_41_port, RKEY(40) => RKEY_40_port, RKEY(39) => 
                           RKEY_39_port, RKEY(38) => RKEY_38_port, RKEY(37) => 
                           RKEY_37_port, RKEY(36) => RKEY_36_port, RKEY(35) => 
                           RKEY_35_port, RKEY(34) => RKEY_34_port, RKEY(33) => 
                           RKEY_33_port, RKEY(32) => RKEY_32_port, RKEY(31) => 
                           RKEY_31_port, RKEY(30) => RKEY_30_port, RKEY(29) => 
                           RKEY_29_port, RKEY(28) => RKEY_28_port, RKEY(27) => 
                           RKEY_27_port, RKEY(26) => RKEY_26_port, RKEY(25) => 
                           RKEY_25_port, RKEY(24) => RKEY_24_port, RKEY(23) => 
                           RKEY_23_port, RKEY(22) => RKEY_22_port, RKEY(21) => 
                           RKEY_21_port, RKEY(20) => RKEY_20_port, RKEY(19) => 
                           RKEY_19_port, RKEY(18) => RKEY_18_port, RKEY(17) => 
                           RKEY_17_port, RKEY(16) => RKEY_16_port, RKEY(15) => 
                           RKEY_15_port, RKEY(14) => RKEY_14_port, RKEY(13) => 
                           RKEY_13_port, RKEY(12) => RKEY_12_port, RKEY(11) => 
                           RKEY_11_port, RKEY(10) => RKEY_10_port, RKEY(9) => 
                           RKEY_9_port, RKEY(8) => RKEY_8_port, RKEY(7) => 
                           RKEY_7_port, RKEY(6) => RKEY_6_port, RKEY(5) => 
                           RKEY_5_port, RKEY(4) => RKEY_4_port, RKEY(3) => 
                           RKEY_3_port, RKEY(2) => RKEY_2_port, RKEY(1) => 
                           RKEY_1_port, RKEY(0) => RKEY_0_port);
   U_4 : e_rndCount port map( CLK => CLK, RST => RST, START => START, IN_SELECT
                           => IN_SELECT, FIESTELCLK => FIESTELCLK, RND_CNT(3) 
                           => RND_CNT_3_port, RND_CNT(2) => RND_CNT_2_port, 
                           RND_CNT(1) => RND_CNT_1_port, RND_CNT(0) => 
                           RND_CNT_0_port);
   U2 : INVX4 port map( A => RST, Y => n2);

end SYN_struct;
