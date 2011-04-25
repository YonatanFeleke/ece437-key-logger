-- $Id: $
-- File name:   B_StartChk.vhd
-- Created:     4/10/2011
-- Author:      Yonatan Feleke
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: this is the source of the enable signal when recieving a request.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
use ieee.std_logic_unsigned.all;

ENTITY B_Controller IS
		generic (	WAITSRAM : natural := 24; -- wait for 24 cycles before data is present
							WAITREG	:	natural := 5264;-- Transmit wait time. FIX THIS for LAG
--						WAITBAK	: natural := 4869; -- back transmit 57.6 kb/s or 4869 cycles/bit
--						WAITBAK/2	: natural := 2435 ); -- back transmit 57.6 kb/s or 4869 cycles/bit
--					 	WAITBAK/2	: natural := 24 ; 
						 	WAITBAK	: natural := 49 ); -- DEBUG! must be even!!!!!!!!!!!!
						 	
		port (	CLK 						:		in	std_logic;
						RST							:		in	std_logic;
						NEXT_EN					:		in	std_logic;
						ANT_LIN					:		in 	std_logic;
						EMPTY 					:		in 	std_logic;
						RESEND_EN				:		OUT std_logic;
						TRANS_EN				:		OUT std_logic);
END B_Controller;

architecture b_cont of B_Controller IS
		type	 state_type is	(idle,listen,bit1,	bit2,bit3,bit4, waitnxt, pulse);
		signal	state,nstate,resynstate		: 		state_type;
		signal ebit												:			std_logic;
		signal cnt4,ncnt4									:			integer range 0 to 5;
		signal cnt2,ncnt2									:			integer range 0 to 2; -- ADJUST TO INCREASE ENABLE strobe cyc length
		signal nbluewait,bluewait					: 		integer range 0 to WAITBAK +1;
		signal a, b												:			std_logic;-- EDGE detect variable

	begin
		contstates : process (RST,CLK) 
			begin
				if ( RST = '1') then
					state <= idle;
					cnt4 <= 0;
					cnt2 <= 0;
					a<= '1';					
					b<= '1';
					bluewait <= 0;
				elsif (rising_edge(clk)) then
					state <= nstate;
					cnt4	<= ncnt4;
					bluewait <= nbluewait;
					cnt2 <= ncnt2;
					a <= ANT_LIN;
					b <= a;
				--RESYNC ON EVERY EDGE; throws 1/3 tolerance
					if (((a xor b) = '1')) then 
						bluewait <= 0;
						state <= resynstate;
					end if;					
				end if;
			end process contstates;
--_______________________________________		
		nextstatelogic : process (CLK, state) 
			variable 	nnstate			: 		state_type;
			begin
				case state is
		--IDLE_______________________________________-	
						when idle =>
							nstate <= idle;
							resynstate <= idle;
							ncnt4 <= 0;
							nbluewait <= 0;
							ebit <= '0';
							ncnt2 <= 0;
							nnstate := idle;
							if (EMPTY = '0') then 
								nstate <= listen;
								resynstate <= idle;
							end if;
		--LISTEN______________________________________-	
 						when listen=> -- 4bits of 1 initiate enable
 							nstate <= listen;
-- 							resynstate <= listen;
 							nbluewait <= bluewait + 1;
 							if (cnt4 = 4) then
 									if (bluewait = WAITBAK) then
 										nstate <= bit1;--
 										nbluewait <= 0;
 										ncnt4 <= 0;
 									elsif (bluewait = 2*WAITBAK/3) then resynstate <= bit1;	 									
 									end if; -- wait for 4th one to finish form teh line
 							elsif (bluewait = WAITBAK/2) then-- mid data and cnt< 3 
 									if (cnt4 = 0) then
 											if (ANT_LIN = '0')	 then ncnt4 <= cnt4+1; end if; -- start with a zero to sync
 									elsif (ANT_LIN = '1') then ncnt4<= cnt4+1;
 									else ncnt4 <= 1; -- 00
 									end if;-- mid data
 							elsif (bluewait = WAITBAK) then
 									nbluewait<= 0;
 							elsif (bluewait = 2*WAITBAK/3) then resynstate <= listen;	 	
 							end if; -- bluewait
-- 							end if; -- cnt4 
		--BIT1_________________________________________-								
						when bit1=> --4 bits verified looking for 01010 or 10101 patter
							nbluewait <= bluewait + 1;
							nstate <= bit1;
--							resynstate <= bit1;
 							if (bluewait = WAITBAK/2) then-- mid data
 								ebit <= ANT_LIN;
 							elsif (bluewait = WAITBAK) then
 								nbluewait<= 0;
 								nstate <= bit2;
							elsif (bluewait = 2*WAITBAK/3) then resynstate <= bit2;
							end if; -- bluewait. AUTO NEXT to BIT2 after WAITBAK
		--BIT2_________________________________________	 									
						when bit2=>-- 5 bits work
							nstate <= bit2;
--							resynstate <= bit2;
							nbluewait <= bluewait +1;
--							nnstate := bit2;
 							if (bluewait = WAITBAK/2) then
 								if (ANT_LIN = ebit) then 
 										if (ebit = '1') then -- 0111_11
 											nnstate := bit2;
 											ncnt4 <= 0;
 										else 								 -- 0111_00
 											ncnt4 <= 1;
 											nnstate := listen;
 										end if;
 								else -- 0111_10 or 0111_01
 									nnstate := bit3;
 								end if; --ANT_LIN = ebit
 							elsif (bluewait = WAITBAK) then
 								nbluewait<= 0;
 								nstate <= nnstate;								
							elsif (bluewait = 2*WAITBAK/3) then resynstate <= nnstate;			 		
 							end if; -- bluewait			 							 							
		--BIT3_________________________________________	 									
					when bit3=>-- 6 bits work
							nstate <= bit3;
							nbluewait <= bluewait +1;
--							nnstate := bit3;
 							if (bluewait = WAITBAK/2) then
 									if (ANT_LIN = ebit) then 				-- 0111_101 or 0111_010										
 											nnstate := bit4;
 									else --0111_100 or 0111_011 DATA!=ebit
											nnstate := listen;
 											if (ebit = '1') then 				-- 0111_100
 													ncnt4 <= 1;
 											else			 									-- 0111_011
 												ncnt4 <= 0;
 											end if; -- ebit 
 									end if; --ANT_LIN != ebit 								
 							elsif (bluewait = WAITBAK) then
 									nbluewait<= 0;
 									nstate <= nnstate;
 							elsif (bluewait = 2*WAITBAK/3) then resynstate <= nnstate;	
 							end if; -- bluewait			 	
		--BIT4_________________________________________	 														
					when bit4=>-- 7 bits work = command recieved to do either
							nstate <= bit4;
							nbluewait <= bluewait +1;
--							nnstate := bit4;
 							if (bluewait = WAITBAK/2) then
 								if (ANT_LIN = ebit) then-- 1111_1011 or 1111_0100 	
										nnstate := listen;			
 										if (ebit = '1') then 		ncnt4 <= 0;				-- 1111_1011 											
 										else 										ncnt4 <= 1;				-- 1111_0100
 										end if;
 								else -- 1111_1010 or 1111_0101
 									nnstate := waitnxt; -- command recieved
 								end if; --ANT_LIN = ebit
 							elsif (bluewait = WAITBAK) then
 								nbluewait<= 0;
 								nstate <= nnstate;
 							elsif (bluewait = 2*WAITBAK/3) then resynstate <= nnstate;										
 							end if; -- bluewait			 
		--WAITNXT______________________________________	 														
					when waitnxt=>-- wait for NEXTEN to be asserted before sending the next val
							nstate <= waitnxt;
							if ( NEXT_EN = '1') then nstate <= pulse;
							end if;
							resynstate <= nstate;
		--PULSE________________________________________	 														
					when pulse=>				
							ncnt2 <= cnt2 + 1;
							nstate <= pulse;
							if ( cnt2 = 1) then nstate <= idle;
							end if;
							resynstate <= nstate;
				end case;
			end process nextstatelogic;
--_______________________________________
		outlogic : process (RST,CLK, state) 			
			begin
				RESEND_EN <= '0';
				TRANS_EN	<= '0';
        if (state = pulse) then
          	TRANS_EN	<= '1';	
						RESEND_EN	<= ebit; --1111_ 1=ebit_010 => resend if 11110101 => not resend
				end if;
			end process outlogic;
--________________________________________________			
end b_cont;
