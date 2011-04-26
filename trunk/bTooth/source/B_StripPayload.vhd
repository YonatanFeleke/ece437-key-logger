-- $Id: $
-- File name:   B_StripPayload.vhd
-- Created:     4/10/2011
-- Author:      Yonatan Feleke
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: This removes the headers and tehn calculates the crc and then alerts the next packe block of teh state.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
LIBRARY ECE337_IP;
USE ECE337_IP.all;


ENTITY B_StripPayload IS
		generic (WAITBIT	:	natural := 658); -- Transmit wait time 658 per bit.
		port (	CLK 						:		in	std_logic;
						RST							:		in	std_logic;
						ANTINR					: 	in 	std_logic;
						READ_EN					:		in 	std_logic;	-- SRAM					
						EMPTY						: 	OUT std_logic;
						REPLY_EN				:		OUT	std_logic;
						ERR							:		OUT std_logic;
						DATAOUT					:		OUT std_logic_vector( 7 downto 0));
END B_StripPayload;

architecture b_strip of B_StripPayload is
	component Fifo 
		port(
          RCLK           	: 	IN std_logic;
					WCLK           	: 	IN std_logic;
					RST_N         	: 	IN std_logic;
          RENABLE		     	:		IN std_logic;
          WENABLE		    	:		IN std_logic;          
          WDATA						:		IN std_logic_vector(7 downto 0);
          RDATA						:		OUT std_logic_vector(7 downto 0);
          EMPTY						:		OUT std_logic;
          FULL						:		OUT std_logic); -- 
	end component;	
	type	 	state_type is	(idle,found01,found010,wait4zero,storefifo,calcnewcrc,oldcrc,seterr);
	signal	state,nstate								: 		state_type;
	signal cnt8,ncnt8										:		integer range 0 to 8;
	signal cnt16 ,ncnt16								:		integer range 0 to 16;
	signal cnt32, ncnt32								:		integer range 0 to 32;
	signal cnt658												:		integer range 0 to WAITBIT; 
	signal fstzero,	middata, currbit		: 	std_logic;
	signal errval												: 	std_logic;
	signal newcrc												:		std_logic_vector (16 downto 0); -- init 0000000011011001
	-- FIFO signals
	signal strobefifo, fifofull				: 	std_logic;
	signal fifobus											: 	std_logic_vector ( 7 downto 0);
	begin	
	
	
	--_______________________________________________________________________
	statelogic :process (CLK,RST)
--		variable	 prev												:			std_logic;-- EDGE detect variable
					-- Maybe add a synchronizer fo cnt658
							--if ((prev xor currbit) = '1' ) then cnt658 <= 0;	end if;
							--prev : = currbit;
		begin
				if ( RST = '1') then
					state <= idle;
					cnt8 <= 0;
					cnt16 <= 0;
					cnt32 <= 0;
					cnt658 <= 0;
					errval <= '0';
					fstzero <= '0';
					middata <= '0';
					currbit <= '0';
				elsif (rising_edge(clk)) then
					state <= state;
					cnt658 <= cnt658 + 1;					
					if ( cnt658 = WAITBIT/2 ) then middata <= '1';
					elsif (cnt658 = WAITBIT) then cnt658 <= 0; 					
					else middata <= '0';  
					end if; -- cnt 658
					if ( cnt658 = 0) then 
							state<= nstate; -- if implemented no need for nnstate and a fin state			
							cnt8 <= ncnt8;
							cnt16 <= ncnt16;
							cnt32 <= ncnt32;
					end if;-- cnt658 = 0 a clock divider
				end if;
		end process statelogic;
--_____________________________________________--		
	outputlogic : process (state)
	begin
			REPLY_EN <= '0';
			if ( RSt = '1') then 
					ERR <= '0';
			elsif (state = seterr) then 
						ERR <= errval;
					 	REPLY_EN <= '1';
			end if;
		end process outputlogic;
	
	nextstatelogic : process(CLK, RST, middata)
	begin
		case state is
		--IDLE_______________________________________-	
						when idle =>
								nstate <= found01;
								ncnt8 <= 0;
								ncnt16 <= 0;
								ncnt32 <= 0;
															
		--found01______________________________________-	
 						when found01 =>
 								nstate <= found010;		 							
		--found010_________________________________________-								
						when found010=> 
								nstate <= wait4zero;
															
		--wait4zero________________________________________	 									
						when wait4zero=>
								nstate <= calcnewcrc;

		--STOREFIFO________________________________________	 														
						when storefifo=>-- 7 bits work = command recieved to do either
								nstate <= oldcrc;
		--CALCNEWCRC_________________________________________	 									
						when calcnewcrc=>
								nstate <= storefifo;	
		--OLDCRC______________________________________	 														
					when oldcrc=>-- wait for NEXTEN to be asserted before sending the next val
								nstate <= seterr;
		--SETERR________________________________________	 														
					when seterr=>				
								nstate <= idle;
				end case;
	end process nextstatelogic;
--___________________________________________________________________________________________
		wrapper: Fifo port map(
  	      RCLK 		=> 	CLK,
          WCLK		=> 	CLK,  -- problem >> was wclk and rclk>>>>>>???????
					RST_N  	=> 	RST,
         	RENABLE => 	READ_EN,
         	WENABLE	=> 	strobefifo,  -- used!
         	WDATA		=> 	fifobus,			-- used
         	RDATA		=> 	DATAOUT,
         	EMPTY		=> 	EMPTY,
         	FULL		=> 	fifofull);  -- NOT A USED SIGNAL         				
end b_strip;
