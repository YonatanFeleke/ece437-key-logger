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
    CLK						: in	std_logic;
    RST						: in	std_logic;
    EOP : in std_logic;
    SHIFT_ENABLE			: in	std_logic;
    D_ORIG			: in std_logic;
    RCV_DATA			: out std_logic_vector(7 downto 0);
    CRC_SHIFT : out std_logic;
    STUFF_ERROR : out std_logic
  );
end USB_SHIFT;

architecture behavioral of USB_SHIFT is
  type state_type is(SHIFT, REMOVE, EIDLE, IDLE);
  signal  state, nextstate : state_type;
  signal ctr  : integer range 0 to 7;
  signal current  : std_logic_vector(7 downto 0);
  begin
  Statereg  : process(clk, RST)
  begin
    if(RST = '1') then state <= IDLE;
    elsif (rising_edge(CLK)) then state <= nextstate;
    end if;
  end process statereg;
  
  Statelogic  : process(STATE, SHIFT_ENABLE)
  begin
    --if (RCVING = '0') then nextstate <= IDLE;
    --elsif (D_EDGE = '1') then nextstate <= SYNC;
    --else
    case state is
    when IDLE =>
      nextstate <= SHIFT;
    when SHIFT =>
      if(SHIFT_ENABLE = '1') then
        if(D_ORIG = '1') then ctr <= ctr + 1;
        else ctr <= 0;
        end if;
      end if;
      
      if(ctr < 6) then nextstate <= SHIFT;
      else  nextstate <= REMOVE;
      end if;
    when REMOVE =>
			ctr <= 0;
      if(D_ORIG = '1' and SHIFT_ENABLE = '1') then nextstate <= EIDLE;
      end if;
			if(D_ORIG = '0' and SHIFT_ENABLE = '1') then nextstate <= SHIFT;
			end if;
    when EIDLE =>
      if( EOP = '1') then nextstate <= SHIFT;
      else nextstate <= EIDLE;
      end if;
    end case;
  end process Statelogic;
  
  OutputLogic : process(STATE, SHIFT_ENABLE)
  begin
    RCV_DATA <= current;
    case STATE is
    when IDLE =>
			current <= "00000000";
      RCV_DATA <= "00000000";
      STUFF_ERROR <= '0';
			if(SHIFT_ENABLE = '1') then CRC_SHIFT <= '1';
			else CRC_SHIFT <= '0';
			end if;
      --CRC_SHIFT <= SHIFT_ENABLE;
    when SHIFT =>
			STUFF_ERROR <= '0';
      if(SHIFT_ENABLE = '1') then CRC_SHIFT <= '1';
			else CRC_SHIFT <= '0';
			end if;
			--CRC_SHIFT <= SHIFT_ENABLE;
      --current <= RCV_DATA;
      if(SHIFT_ENABLE = '1') then
        current <= D_ORIG & current(7 downto 1);
      end if;
    when REMOVE =>
      STUFF_ERROR <= '0';
      CRC_SHIFT <= '0';
    when EIDLE =>
      CRC_SHIFT <= '0';
      STUFF_ERROR <= '1';
    end case;
  end process OutputLogic;
end behavioral;
      
