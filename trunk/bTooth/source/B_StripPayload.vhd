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
	type	 	state_type is	(idle,found01,found010,wait4zero,calnewcrc,storefifo,oldcrc,seterr);
	signal	state,nstate,resynstate			: 		state_type;
	signal cnt8													:		integer range 0 to 8;
	signal cnt16												:		integer range 0 to 16;
	signal cnt32												:		integer range 0 to 32;
	signal cnt658												:		integer range 0 to WAITBIT; 
	signal fstzero,	middata, currbit		: 	std_logic;
	signal errval		: 	std_logic;
	-- FIFO signals
	signal storbe_fifo, sramfull				: 	std_logic;
	signal fifobus											: 	std _logic_vector ( 7 downto 0);
	begin	
	statelogic :process (CLK,RST)
--		variable	 prev												:			std_logic;-- EDGE detect variable
		begin
				if ( RST = '1') then
					state <= idle;
					cnt8 <= 0;
					cnt16 <= 0;
					cnt658 <= 0;
				elsif (rising_edge(clk)) then
					state <= state;
					cnt658 <= cnt658 + 1;					
					if ( cnt658 = WAITBIT/2 ) then middata <= '1';
					elsif (cnt658 = WAITBIT) then cnt658 <= 0; 					
					else middata <= '0';  
					-- Maybe add a synchronizer fo cnt658
							--if ((prev xor currbit) = '1' ) then cnt658 <= 0;	end if;
							--prev : = currbit;
					end if; -- cnt 658
					if ( cnt658 = 0) then 
							state<= nstate; -- if implemented no need for nnstate and a fin state			
							cnt8 <= ncnt8;
							cnt16 <= ncnt16;
					end if;-- cnt658 = 0 a clock divider
				end if;
		end process statelogic;
	outputlogic : process (state)
		if (state = seterr) then
				
			


--___________________________________________________________________________________________
		wrapper: Fifo port map(
  	      RCLK 		=> 	CLK,
          WCLK		=> 	CLK,  -- problem >> was wclk and rclk>>>>>>???????
					RST_N  	=> 	RST,
         	RENABLE => 	READ_EN,
         	WENABLE	=> 	strobe_sram,  -- used!
         	WDATA		=> 	fifobus,			-- used
         	RDATA		=> 	DATAOUT,
         	EMPTY		=> 	EMPTY,
         	FULL		=> 	sramfull);  -- NOT A USED SIGNAL         				
end b_strip;


idle,found01,found010,wait4zero,calnewcrc,storefifo,oldcrc,seterr);
