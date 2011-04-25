
library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

package CONV_PACK_U_CLKDIV is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_U_CLKDIV;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_U_CLKDIV.all;

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
      N9, ctr0_1_port, ctr0_0_port, N13, N14, n1, n3, n7, n8_port, n9_port, n10
      , n_1000, n_1001 : std_logic;

begin
   RST_port <= RST;
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   ctr1_reg_0_inst : DFFSR port map( D => N8, CLK => CLK, R => n10, S => n3, Q 
                           => ctr1_0_port);
   ctr1_reg_1_inst : DFFSR port map( D => N9, CLK => CLK, R => n10, S => n1, Q 
                           => ctr1_1_port);
   n1 <= '1';
   n3 <= '1';
   ctr0_reg_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => RST_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N14,
               clocked_on => n9_port, Q => ctr0_1_port, QN => n_1000);
   ctr0_reg_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => RST_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N13,
               clocked_on => n9_port, Q => ctr0_0_port, QN => n_1001);
   U14 : INVX1 port map( A => CLK, Y => n9_port);
   U15 : INVX1 port map( A => RST_port, Y => n10);
   U16 : NOR2X1 port map( A => ctr1_1_port, B => n7, Y => N9);
   U17 : NOR2X1 port map( A => ctr1_1_port, B => ctr1_0_port, Y => N8);
   U18 : AOI22X1 port map( A => ctr0_1_port, B => n8_port, C => ctr1_1_port, D 
                           => n7, Y => D_CLK);
   U19 : INVX1 port map( A => ctr1_0_port, Y => n7);
   U20 : NOR2X1 port map( A => ctr0_1_port, B => n8_port, Y => N14);
   U21 : INVX1 port map( A => ctr0_0_port, Y => n8_port);
   U22 : NOR2X1 port map( A => ctr0_1_port, B => ctr0_0_port, Y => N13);

end SYN_clockdivider;

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
