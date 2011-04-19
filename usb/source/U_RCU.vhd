-- $Id: $
-- File name:   rcu.vhd
-- Created:     2/22/2011
-- Author:      Brian Crone
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: Source code for the Receiver Control Unit for the USB receiver


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

Entity U_RCU is
  PORT( clk		: in std_logic;
				rst_n	:	in	std_logic;
				d_edge	:	in	std_logic;
				eop	:	in	std_logic;
				shift_enable	:	in	std_logic;
				rcv_data	:	in	std_logic_vector(7 downto 0);
				rcving	:	out	std_logic;
				w_enable	:	out	std_logic;
				r_error	:	out std_logic);
	end U_RCU;

architecture behavioral of U_RCU is
	type state_type is(IDLE,RCVDATA,SYNCCHK,RCVDATA1,WRITE,EIDLE,SERROR,IDLEEDGE,ERROREDGE,RCVPID,PIDCHK);
	signal state,nextstate	:	state_type;
	signal shift_ctr	:	integer range 0 to 8;
	begin
		reg	:	process(clk,rst_n)
		begin	
			if(Rst_n = '0') then state <= IDLE;
			elsif(rising_edge(clk)) then state <= nextstate;
				if((shift_enable = '1') and ((state = RCVDATA) or (state = RCVDATA1) or (state = RCVPID))) then shift_ctr <= shift_ctr + 1;
				end if;
			end if;
			if(not(state = RCVDATA or state = RCVDATA1 or state = RCVPID)) then shift_ctr <= 0;
			end if;
		end process reg;
		
		statelogic	:	process(d_edge,eop,rcv_data,shift_enable, state)
		--variable shift_ctr	:	integer range 0 to 8;
		begin	
			case state is
			when IDLE =>
			  --shift_ctr <= 0;
				if(d_edge = '1') then nextstate <= RCVDATA;
				else	nextstate <= IDLE;
				end if;
			when RCVDATA =>
				--if(EOP = '1') then nextstate <= EIDLE;
				if(shift_ctr = 8) then nextstate <= SYNCCHK;
				elsif (eop = '1') then nextstate <= EIDLE;
				else
					nextstate <= RCVDATA;
					--if(shift_enable = '1') then shift_ctr := shift_ctr + 1;
					--end if;
				end if;
			when SYNCCHK =>
			  --shift_ctr <= 0;
				--if(EOP <= '1') then nextstate <= EIDLE;
				--if(EOP <= '1') then nextstate <= IDLE;
				if(rcv_data = "10000000") then nextstate <= RCVPID;
				elsif(eop = '1') then nextstate <= IDLEEDGE;
				else	nextstate <= SERROR;
				end if;
			when RCVPID =>
			  if(shift_ctr = 8) then nextstate <= PIDCHK;
			  elsif (eop = '1') then nextstate <= EIDLE;
			  else nextstate <= RCVPID;
				end if;
			when PIDCHK =>
				if(rcv_data(7 downto 4) = not(rcv_data(3 downto 0))) then
					if(rcv_data(3 downto 0) = "0011" or rcv_data(3 downto 0) = "1011") then
						nextstate <= RCVDATA1;
					else
						nextstate <=SERROR;
					end if;
				else nextstate <= SERROR;
				end if;
			when RCVDATA1 =>
			  if(shift_ctr = 8) then nextstate <= WRITE;
			  elsif (eop = '1') then nextstate <= EIDLE;
			  else nextstate <= RCVDATA1;
			    --if (shift_enable = '1') then shift_ctr := shift_ctr + 1;
			    --end if;
			  end if;
			when WRITE =>
			  --shift_ctr <= 0;
			  if (eop = '0') then nextstate <= RCVDATA1;
			  else nextstate <= IDLEEDGE;
			  end if;
			when EIDLE =>
			  if (d_edge = '1') then nextstate <= ERROREDGE;
			  else nextstate <= EIDLE;
			  end if;
			when SERROR =>
			  if (eop = '0') then nextstate <= SERROR;
			  else nextstate <= EIDLE;
			  end if;
			when IDLEEDGE =>
				if(d_edge = '1') then nextstate <= IDLE;
				else	nextstate <= IDLEEDGE;
				end if;
			when ERROREDGE =>
				if(d_edge = '1') then nextstate <= RCVDATA;
				else nextstate <= ERROREDGE;
				end if;
			end case;
  end process statelogic;
  outlogic :  process(state)
  begin
    case state is
    when IDLE =>
      rcving <= '0';
      W_enable <= '0';
      r_error <= '0';
    when RCVDATA =>
      rcving <= '1';
      r_error <= '0';
    when SYNCCHK =>
      rcving <= '1';
		when RCVPID =>
			rcving <= '1';
			r_error <= '0';
		when PIDCHK =>
			rcving <= '1';
    when RCVDATA1 =>
      rcving <= '1';
      w_enable <= '0';
			r_error <= '0';
    when WRITE =>
      w_enable <= '1';
			r_error <= '0';
    when EIDLE =>
      rcving <= '0';
      w_enable <= '0';
      r_error <= '1';
    when SERROR =>
      rcving <= '1';
      w_enable <= '0';
      r_error <= '1';
		when ERROREDGE =>
			rcving <= '0';
			w_enable <= '0';
			r_error <= '1';
		when IDLEEDGE =>
			rcving <= '0';
			w_enable <= '0';
			r_error <= '0';
    end case;
  end process outlogic;
end behavioral;
