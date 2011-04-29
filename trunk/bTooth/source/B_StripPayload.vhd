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
		generic (
      WAITSRAM 	: natural := 10;  -- wait for 10 cycles before data is present
      WAITBIT		:	natural := 658; -- Transmit wait time 658 per bit.
      WAITREG  	: natural := 5264);	
		port (	CLK 						:		in	std_logic;
						RST							:		in	std_logic;
						ANT_INR					: 	in 	std_logic;
						R_ENABLE					:		in 	std_logic;	-- SRAM					
						EMPTY_SRAM						: 	OUT std_logic;
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
	--__________________________________________________________________________________________
	type	 	state_type is (idle,found01,found010,wait4zero,skip136,calcnewcrc,chkcrc,seterr);
	signal state,nstate									: 		state_type;
	signal cnt4													:		integer range 0 to 4;
	signal cnt8													:		integer range 0 to 8;
	signal cnt16												:		integer range 0 to 16;
	signal cnt256												:		integer range 0 to 256;
	signal cnt136												:		integer range 0 to 136;
	signal cnt658												:		integer range 0 to 659;
	
--	signal ncnt4										:		integer range 0 to 4;
--	signal ncnt8										:		integer range 0 to 8;
--	signal ncnt16										:		integer range 0 to 16;
--	signal ncnt256									:		integer range 0 to 257;
--	signal ncnt136									:		integer range 0 to 137;

	signal fstzero,	middata, Data_in		: 	std_logic;
	signal nextready						: 	std_logic;
	signal newcrc, oldcrc								:		std_logic_vector (15 downto 0); -- init 0000000011011001
	-- FIFO signals
	signal write_en, fifofull						: 	std_logic;
	signal wdataport										: 	std_logic_vector ( 7 downto 0);
	signal writebuff										:		std_logic_vector( 7 downto 0);
	begin	
	
			--_________________________________________________________________
				wrapper: Fifo port map(
  	      RCLK 		=> 	CLK,
          WCLK		=> 	CLK,  -- problem >> was wclk and rclk>>>>>>???????
					RST_N  	=> 	RST,
         	RENABLE => 	R_ENABLE,
         	WENABLE	=> 	write_en,  -- used!
         	WDATA		=> 	wdataport,			-- used
         	RDATA		=> 	DATAOUT,
         	EMPTY		=> 	EMPTY_SRAM,
         	FULL		=> 	fifofull);  -- NOT A USED SIGNAL     
			--_________________________________________________________________
--_______________________________________________________________________			
	statelogic :process (CLK,RST)
		variable 	prev			: std_logic;
		begin
			if ( RST = '1') then
					state <= idle;
--					cnt8 <= 0;
--					cnt16 <= 0;
--					cnt136 <= 0;
--					cnt256 <= 0;
					cnt658 <= 0;
					fstzero <= '0';
					middata <= '0';
					prev := ANT_INR;
--					DATAOUT <= "00000000";
			elsif (rising_edge(clk)) then
					state <= state;
					cnt658 <= cnt658 + 1;
					middata <= '0';					
					if ( cnt658 = WAITBIT/2 ) then middata <= '1';
					elsif (cnt658 = WAITBIT-1/2) then cnt658 <= 0; 					
					elsif (not (prev = ANT_INR)) then cnt658 <= 0; 	
					else middata <= '0';  
					end if; -- cnt 658
					if ( cnt658 = 0) then 
							state<= nstate; -- if implemented no need for nnstate and a fin state			
--							cnt8 <= ncnt8;
--							cnt16 <= ncnt16;
--							cnt136 <= ncnt136;
--							cnt256 <= ncnt256;
					end if;-- cnt658 = 0 a clock divider
					prev := ANT_INR;
			end if;
		end process statelogic;
--_____________________________________________--		
	outputlogic : process (state, R_ENABLE) -- If error checking done <= err out and if idle ask for send

	begin
			REPLY_EN <= '0';
			ERR <= '0';
			if ( RSt = '1') then 
					ERR <= '0';
					REPLY_EN <= '0';					
			elsif (state = seterr) then 
					if (oldcrc = newcrc) then ERR <= '0';
					else 	ERR <= '1'; end if;
					REPLY_EN <= '1';			
			elsif ( state = idle) then REPLY_EN <= '1';
			end if;
		end process outputlogic;

	
	nextstatelogic : process(CLK, RST, middata)
			variable edgelogic	: std_logic := '0';
	begin
		if ( middata = '1') then
			Data_in <= ANT_INR;
			case state is
		--IDLE_______________________________________-	
						when idle =>
--						ncnt8 <= 0;
--						ncnt16 <= 0;
--						ncnt256 <= 0;
--						ncnt136 <= 0;
							--modified counters
								cnt8 <= 0;
								cnt16 <= 0;
								cnt256 <= 0;
								cnt136 <= 0;		
						
							--Signal initializations
--								nstate <= idle;
								Data_in <= '0';
--								errval <= '0';
								writebuff <= "00000000";								
								newcrc <= "0000000011011001";
								oldcrc <= "0000000011011001";
								write_en <= '0'; --wen
								wdataport <= "00000000"; -- wdata		
								nextready <= '0';
								if ( ANT_INR = '0') then 
									nextready <= '1';
								elsif (nextready = '1') then -- data = 1 and next =1
										nstate <= found01;
								--else	-- ant=1 and nextready = 0 --> nextready <= 0 also by def
								end if;
		--found01______________________________________-	
 						when found01 =>
 								--nstate <= found01;
								if ( ANT_INR = '0') then 					
	 								nstate <= found010;
	 							else 
	 								nstate <= idle;
	 								nextready <= '0';						
								end if;
		--found010_________________________________________-								
						when found010=> 
						 		--nstate <= found010;
								if ( ANT_INR = '1') then 					
	 								nstate <= wait4zero;
	 							else
	 								nstate <= idle;
	 								nextready <= '1';
								end if;								
		--wait4zero________________________________________	 									
						when wait4zero=>
--								ncnt4 <= cnt4;
--								nstate <= wait4zero;
							if ( edgelogic = '0' and middata = '1') then 
								if ( cnt4 = 3) then
										 nstate <= skip136;
--										ncnt4 <= 0;
--											cnt4 <= 0;-- moved to next state
								elsif ( ANT_INR = '0') then -- count the zeroes
--										ncnt4 <= cnt4 + 1;
											cnt4 <= cnt4 + 1;		-- might increment in doubles ~~~~>>>??								
								elsif (cnt4 =0) then 
										nstate <= idle;
										nextready <= '0';
								else			  -- cnt <2 and ant = 1 
--										ncnt4 <= 0;
										cnt4 <= 0;
										nstate <= found01;
								end if;
							end if;
							edgelogic := middata;
		--SKIP136_________________________________________	 									
						when skip136=>
				    report "Start Sequence Recognized skipping remaining header" severity NOTE; 	
						if ( edgelogic = '0' and middata = '1') then 
								cnt4 <= 0;
								cnt136 <= cnt136 + 1;
--							ncnt136 <= cnt136 + 1;								
--								nstate <= skip136;
--								if (cnt136 = 135) then
								if (cnt136 = 133) then  -- resync purposes the uat loses one byte
										nstate <= calcnewcrc;
										cnt136 <= 0;
								end if;		
						end if;
					edgelogic := middata;					

		--CALCNEWCRC_________________________________________	 									
						when calcnewcrc=>
				if ( edgelogic = '0' and middata = '1') then 			
--								nstate <= calcnewcrc;
								writebuff <= ANT_INR & writebuff( 7 downto 1);
								cnt256 <= cnt256 + 1;
								cnt8 <= cnt8 + 1;								
								newcrc	<= newcrc(14 downto 12) & (newcrc(15) xor ANT_INR xor newcrc(11)) & newcrc(10 downto 5) & (newcrc(15) xor ANT_INR  xor newcrc(4)) & newcrc(3 downto 0) & (newcrc(15) xor ANT_INR);									         									   								
								if ( cnt8 = 7 ) then --STORE INTO FIFO
										cnt8 <= 0;
										wdataport <= writebuff;
										write_en <= '1';						
--								else 	write_en <= '0';-- covered in the else statement below case
								end if;
								if ( cnt256 = 255) then 
										nstate <= chkcrc; -- ALL HAVE BEEN STORED
										cnt256 <= 0;
								end if;
				end if;
				edgelogic := middata;									
									
		--chkcrc______________________________________	 													
					when chkcrc=>
			if ( edgelogic = '0' and middata = '1') then 					
								oldcrc <= ANT_INR & oldcrc(15 downto 1); --shift in the value
								cnt16 <= cnt16 + 1;								
--								nstate <= chkcrc;
								if ( cnt16 = 15 ) then
										nstate <= seterr;
										cnt16 <= 0;
								end if;
				end if;
				edgelogic := middata;										
		--SETERR________________________________________	 														
					when seterr=>
						    report "Done with the data setting error and requesting next" severity NOTE; 					
								nstate <= idle;
				end case;
				
--NOTMID________________________________________	 			
			elsif (state = idle) then			
--						ncnt8 <= 0;
--						ncnt16 <= 0;
--						ncnt256 <= 0;
--						ncnt136 <= 0;
					--modified counters
						cnt8 <= 0;
						cnt16 <= 0;
						cnt256 <= 0;
						cnt136 <= 0;
					--Signal initializations
--						nstate <= state;
						Data_in <= '0';
--						errval <= '0';
						writebuff <= "00000000";		
						newcrc <= "0000000011011001";
						oldcrc <= "0000000011011001";
						write_en <= '0'; --wen is it only one clk cycle
						wdataport <= "00000000"; -- wdata		
			elsif ( state= calcnewcrc) then
						write_en <= '0';								
						edgelogic := '0';		
			else
						edgelogic := '0';
			end if;
	end process nextstatelogic;
    				
end b_strip;
