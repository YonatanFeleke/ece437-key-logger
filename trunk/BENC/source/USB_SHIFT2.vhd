-- $Id: $
-- File name:   USB_SHIFT.vhd
-- Created:     4/12/2011
-- Author:      Brian Crone
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: Shift register for USB receiver with bit stuffing implementation.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;


entity USB_SHIFT is
  port
  (
    D_CLK						: in	std_logic;
    RST						: in	std_logic;
    EOP 					: in std_logic;
    SHIFT_ENABLE			: in	std_logic;
    D_ORIG			: in std_logic;
    RCV_DATA			: out std_logic_vector(7 downto 0);
    CRC_SHIFT : out std_logic;
    STUFF_ERROR : out std_logic
  );
end USB_SHIFT;

architecture behavioral of USB_SHIFT is
  type state_type is(SHIFT, EIDLE, IDLE, CHECK);
  signal  state, nextstate : state_type;
  signal ctr  : integer range 0 to 7;
  signal current, next_val  : std_logic_vector(7 downto 0);
  begin
  Statereg  : process(D_CLK, RST)
  begin
    if(RST = '1') then state <= IDLE;
		ctr <= 0;
    elsif (rising_edge(D_CLK)) then 
			state <= nextstate;
			current <= next_val;
			if(ctr = 6) then ctr <= 0;
			end if;
			if(state = CHECK) then 
				if(SHIFT_ENABLE = '1')then
					if( D_ORIG = '1') then
			 			ctr <= ctr + 1;
					else ctr <= 0;
					end if;
				end if;

			--else ctr <= 0;
		end if;
			
    end if;
  end process statereg;
  
  Statelogic  : process(STATE, SHIFT_ENABLE, D_ORIG, D_CLK)
	--variable ctr	:	integer range 0 to 20;
  begin
    --if (RCVING = '0') then nextstate <= IDLE;
    --elsif (D_EDGE = '1') then nextstate <= SYNC;
    --else
    case state is
    when IDLE =>
			if (SHIFT_ENABLE <= '0') then nextstate <= IDLE;
			else nextstate <= CHECK;
			end if;
		when CHECK =>
			--if(ctr = 6 and D_ORIG = '0') then nextstate <= REMOVE;
			--elsif (ctr = 6 and D_ORIG = '1') then nextstate <= EIDLE;
			--else nextstate <= SHIFT;
			--end if;
			nextstate <= SHIFT;
    when SHIFT =>
			if(ctr = 6 and D_ORIG = '1') then nextstate <= EIDLE;
			else nextstate <= IDLE;
			end if;
    --when REMOVE =>
		--	nextstate <= IDLE;
    when EIDLE =>
      if( EOP = '1') then nextstate <= IDLE;
      else nextstate <= EIDLE;
      end if;
    end case;
  end process Statelogic;
  RCV_DATA <= current;
  OutputLogic : process(STATE, SHIFT_ENABLE)
  begin
    --RCV_DATA <= current;
    case STATE is
    when IDLE =>
			--next_val <= "00000000";
			--rrent <= "00000000";
      --RCV_DATA <= "00000000";
      STUFF_ERROR <= '0';
			CRC_SHIFT <= '0';
			--if(SHIFT_ENABLE = '1') then CRC_SHIFT <= '1';
			--else CRC_SHIFT <= '0';
			--end if;
      --CRC_SHIFT <= SHIFT_ENABLE;
		when CHECK =>
			STUFF_ERROR <= '0';
    when SHIFT =>
				if(ctr = 6 and D_ORIG = '0') then CRC_SHIFT <= '0';
				elsif(ctr < 6 ) then
        	next_val <= D_ORIG & current(7 downto 1);
					CRC_SHIFT <= '1';
				end if;
    --when REMOVE =>
    -- STUFF_ERROR <= '0';
    --  CRC_SHIFT <= '0';
    when EIDLE =>
      CRC_SHIFT <= '0';
      STUFF_ERROR <= '1';
    end case;
  end process OutputLogic;
end behavioral;
			
