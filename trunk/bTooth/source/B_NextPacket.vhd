-- $Id: $
-- File name:   B_nextpacket.vhd
-- Created:     4/10/2011
-- Author:      Yonatan Feleke
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: Sends the resend or send another enable


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY B_NextPacket IS
		generic (WAITSRAM : natural := 24; -- wait for 24 cycles before data is present
						 WAITREG	:	natural := 5264;-- Transmit wait time. FIX THIS for LAG
--						 WAITBAK	: natural := 4869 ); -- back transmit 57.6 kb/s or 4869 cycles/bit
						 WAITBAK	: natural := 48 ); -- back transmit 57.6 kb/s or 4869 cycles/bit
		port (	CLK 						:		in	std_logic;
						RST							:		in	std_logic;
						REPLY_EN				:		in	std_logic;
						ERR							:		in std_logic;
						DATAOUT					:		OUT std_logic); -- serially transmit 11110101(resend) and 11111010(newsend)
END B_NextPacket;

architecture b_next of B_NextPacket is
		type	 state_type is	(idle,chkerr,transmit);
		signal	state,nstate	: state_type;
		signal	txbuff 				: std_logic_vector(7 downto 0);
		signal 	cnt8					: integer range 0 to 8;
		signal 	ncnt8					: integer range 0 to 8;
		signal  bluewait			: integer range 0 to WAITBAK+1;
		signal  nbluewait			: integer range 0 to WAITBAK +1;
begin
	updatestate : process (CLK, RST)
		begin
			 if ( RST = '1') then
					state <= idle;
					bluewait <= 0;
					cnt8 <= 0;
				elsif (rising_edge(clk)) then
					state <= nstate;
					bluewait <= nbluewait;				
					cnt8 <= ncnt8;
				end if;	
		end process updatestate;		
	statelogic_next: process (CLK,cnt8,bluewait,STATE)
		begin
			if (CLK = '1') then
     		case state is 
					when idle =>						
						txbuff <= "00000000";
						ncnt8 <= 0;
						nbluewait <= 0;
						DATAOUT <= '0';
						if ( REPLY_EN = '1') then
							nstate <= chkerr;
						else 
							nstate <= idle;	
						end if;
						
					when chkerr=>
						nstate <= transmit;
						if (ERR = '1') then
							txbuff <= "01011111";
						else
							txbuff <= "10101111";
						end if;					
					
					when transmit=>		
						nstate <= transmit;				
						if (cnt8 = 8) then 
							nstate <= idle;
							ncnt8 <= 0;
						else
--							nstate <= transmit;
							DATAOUT <= txbuff(cnt8);
							nbluewait <= bluewait + 1;
							if (bluewait = WAITBAK) then
								ncnt8 <= cnt8 + 1;
								nbluewait <= 0;
							end if; -- bluewait							
						end if; --cnt8
				end case;
			end if;
			end process statelogic_next;
end b_next;
