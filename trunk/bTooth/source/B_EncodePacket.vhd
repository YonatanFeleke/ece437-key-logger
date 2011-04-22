-- $Id: $
-- File name:   B_EncodePacket.vhd
-- Created:     4/10/2011
-- Author:      Yonatan Feleke
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: This adds the prefix and crc
-- Payload:  284 bits from evan => 256 bits + headers(12) + crc(16)
-- pAYLOAD : MSB  CRC(16) DATA(256) Length(9) FLOW(1) L_CH(2) LSB
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY B_EncodePacket IS
		port (	CLK 						:		in	std_logic;
						RST							:		in	std_logic;
						-- ENCODE _ EN is asserted until the next encode en but should be self fixing
						ENCODE_EN				:		in	std_logic; -- rcu signal to start the encoding( must be enabled for 896 ns => 256 clock cycles	
						DATA						:		in std_logic_vector(255 downto 0); -- data recieved from the sram
						PAYLOAD					:		OUT	std_logic_vector(283 downto 0); -- 13 bit header+16bit crc
						ESTORE_EN				:		OUT	std_logic);
END B_EncodePacket;

architecture b_edata of B_EncodePacket IS
		signal length 			: 		std_logic_vector(8 downto 0);-- length is constant 256
		signal LCH					: 		std_logic_vector(1 downto 0);-- hardcoded to be 11 always set flow =1 
		signal flowBIT			: 		std_logic; -- resend reply not imlemented 
		signal lfsr					: 		std_logic_vector( 15 downto 0);		

begin
		init : process (CLK,RST)
			begin		
				if (RST = '1') then
					length <= "100000000"; -- Need to append 4 bits to make this header 16
					LCH <= "11";
					flowBIT <= '1';
				end if;
			end process init;

		calcCRC: process (CLK,RST)
			variable crc									: std_logic_vector(15 downto 0);
			variable count								:			integer range 0 to 255;
			variable data_in							: 		std_logic;
			variable xor12,xor5,xor0			:			std_logic;
			begin
      if ( RST = '1') then-- on reset what is the stop
				lfsr <= "0000000011011001"; --innit with 8 bit 00000000&UAP[7 downto 0];
				crc := "0000000011011001";
				count := 0;
PAYLOAD<="00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
				ESTORE_EN <= '0';
      elsif ( rising_edge(clk)) then    
    			 if (ENCODE_EN = '1') then
    			 	if (count = 255) then
    			 		count := 0;
    			 		crc := lfsr; -- Latch variable
    			 		PAYLOAD <= crc&DATA&length&flowBIT&LCH;
    			 		ESTORE_EN <= '1';
    			 		lfsr <= "0000000011011001"; --innit with 8 bit 00000000&UAP[7 downto 0];
    			 	else
    			 		ESTORE_EN <= '0'; -- need more time to store payload
    			 		data_in := DATA(count);
    			 		count := count +1;
    			 		xor0 	:= lfsr(15) xor data_in;
							xor12 := xor0 xor lfsr(11);						    
							xor5  := xor0 xor lfsr(4);
    			 		lfsr	<= lfsr(14 downto 12) & xor12 & lfsr(10 downto 5) & xor5 & lfsr(3 downto 0) & xor0;
-- Added faster CRC clalculator
--    			 		lfsr(0)  <= data_in xor lfsr(15);
--    			 		lfsr(1)  <= lfsr(0);
--    			 		lfsr(2)  <= lfsr(1);
--    			 		lfsr(3)  <= lfsr(2);
--    			 		lfsr(4)  <= lfsr(3);
--    			 		lfsr(5)  <= lfsr(4) xor data_in xor lfsr(15);
--    			 		lfsr(6)  <= lfsr(5);
--   			 			lfsr(7)  <= lfsr(6);
--    			 		lfsr(8)  <= lfsr(7);
--							lfsr(9)  <= lfsr(8);
--							lfsr(10) <= lfsr(9);
--							lfsr(11) <= lfsr(10);
--							lfsr(12) <= lfsr(11) xor data_in xor lfsr(15);
--							lfsr(13) <= lfsr(12);
--							lfsr(14) <= lfsr(13);
--							lfsr(15) <= lfsr(14);
        end if;
      end if; -- encode != 1
    end if; -- not rising clk edge
   end process calcCRC;
end b_edata;
