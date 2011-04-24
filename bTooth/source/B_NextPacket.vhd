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
		signal	txbuff 				: std_logic_vector(7 downto 0);
		signal 	cnt8					: integer range 0 to 8;
		signal  bluewait			: integer range 0 to WAITBAK+1;
		signal  run,a,b,stop  :	std_logic;
begin	
	updatestate : process (CLK, RST)
		begin
      if ( RST = '1') then
			  	bluewait <= 0;
	   			cnt8 <= 0;
	  			DATAOUT <= '0';
	  			txbuff <= "00000000";	  
	  			stop	<= '0';	
  		elsif (rising_edge(clk)) then								  
  			if (run = '1') then
			  			DATAOUT <= txbuff(cnt8);
	  			  	if bluewait = 0 then -- check if err for 1 clk after en
	  			  		bluewait <= bluewait +1;
	  			    	if (ERR = '1') then	
	  			    		txbuff <= "01011111";
	  						else
	  							txbuff <= "10101111";
	  						end if;	  						
  		      	elsif (bluewait = WAITBAK) then						  	
						  	cnt8 <= cnt8 + 1;
					  		bluewait <= 0;
				  	  	DATAOUT<= txbuff(cnt8);
				  	  	if (cnt8 = 7) then 
				  	  		stop <= '1';
				  	  		cnt8 <= 0;
				  	  	end if;				  	  		
				  		else 
					    		bluewait<= bluewait + 1;
				    	end if;  -- blue wait
				elsif ( REPLY_EN = '1') then		stop <= '0';				   		
        end if;  -- run =1 
     end if;  -- rst rising edge ..
	end process updatestate;
--_____________________________________________

  RUN_EDGElogic: Process(clk,REPLY_EN, RST)
		begin		
			if (RST = '1') then
				run <= '0';
				B<= '0';
				A <= '0';
--	 		elsif (rising_edge(clk)) then	
			elsif stop = '1' then	run <= '0';
			else
				A<= REPLY_EN;
				B<= A;
				if ( A = '1') then -- Rising Edge
				  if( (A xor B)  = '1') then 
				  	run <= '1';
				  end if; -- Change in value
				end if; -- rising edge new=1 old =0
			end if;-- not edge synchronized!!!!!!!!!	
		end process RUN_EDGElogic;		
end b_next;
