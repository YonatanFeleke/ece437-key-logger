-- $Id: $
-- File name:  e_fiestel.vhd
-- Created:   4/17/2011
-- Author:   Samuel Oshin
-- Lab Section: 337-02
-- Version:   1.0 Initial Design Entry
-- Description: Its the big mofo, Fiestel Function! LET IT ROCK!!!!!!


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_arith.ALL;

ENTITY e_fiestel is
	port(
		FIESTELCLK	:		IN			std_logic;
		START				:		IN 			std_logic;
		ENC_LEFT		:		IN			std_logic_vector(31 downto 0);
		ENC_RIGHT		:		IN			std_logic_vector(31 downto 0);
		RKEY				:		IN			std_logic_vector(47 downto 0);
		IN_SELECT		: 	IN			std_logic;
		OUTDATA 		:		OUT			std_logic_vector(63 downto 0));
end e_fiestel;

architecture behav of e_fiestel is 

signal CUR_ENC_LEFT, CUR_ENC_RIGHT, NXT_ENC_LEFT, NXT_ENC_RIGHT1	: std_logic_vector(31 downto 0);

begin

	freg: process(FIESTELCLK,START)
	begin
		
		if(START = '0') then
			CUR_ENC_LEFT <= ENC_LEFT;
			CUR_ENC_RIGHT <= ENC_RIGHT;
		elsif(rising_edge(FIESTELCLK)) then
			CUR_ENC_LEFT <= NXT_ENC_RIGHT1;
			CUR_ENC_RIGHT <= NXT_ENC_LEFT;
		end if;
	end process freg;
	
	func: process(RKEY,FIESTELCLK,START)
	variable NXT_ENC_RIGHT,NXT_ENC_RIGHT2	: std_logic_vector(31 downto 0);
	variable NXT_EXP_RIGHT,NXT_EXP_RIGHT2	: std_logic_vector(47 downto 0);
	variable COLUMN,test3,test2: std_logic_vector(3 downto 0);
	variable ROW,test: std_logic_vector(1 downto 0);
	

	begin
		
		--if(START = '0') then
			--NXT_ENC_LEFT := ENC_LEFT;
			--NXT_ENC_RIGHT := ENC_RIGHT;
				
		--else
		NXT_ENC_LEFT <= CUR_ENC_LEFT;
		
		NXT_EXP_RIGHT2 := CUR_ENC_RIGHT(31) & CUR_ENC_RIGHT(0) & CUR_ENC_RIGHT(1) & CUR_ENC_RIGHT(2) & CUR_ENC_RIGHT(3) & CUR_ENC_RIGHT(4) & CUR_ENC_RIGHT(3) & CUR_ENC_RIGHT(4) & CUR_ENC_RIGHT(5) & CUR_ENC_RIGHT(6) & CUR_ENC_RIGHT(7) & CUR_ENC_RIGHT(8) & CUR_ENC_RIGHT(7) & CUR_ENC_RIGHT(8) & CUR_ENC_RIGHT(9) & CUR_ENC_RIGHT(10) & CUR_ENC_RIGHT(11) & CUR_ENC_RIGHT(12) & CUR_ENC_RIGHT(11) & CUR_ENC_RIGHT(12) & CUR_ENC_RIGHT(13) & CUR_ENC_RIGHT(14) & CUR_ENC_RIGHT(15) & CUR_ENC_RIGHT(16) & CUR_ENC_RIGHT(15) & CUR_ENC_RIGHT(16) & CUR_ENC_RIGHT(17) & CUR_ENC_RIGHT(18) & CUR_ENC_RIGHT(19) & CUR_ENC_RIGHT(20) & CUR_ENC_RIGHT(19) & CUR_ENC_RIGHT(20) & CUR_ENC_RIGHT(21) & CUR_ENC_RIGHT(22) & CUR_ENC_RIGHT(23) & CUR_ENC_RIGHT(24) & CUR_ENC_RIGHT(23) & CUR_ENC_RIGHT(24) & CUR_ENC_RIGHT(25) & CUR_ENC_RIGHT(26) & CUR_ENC_RIGHT(27) & CUR_ENC_RIGHT(28) & CUR_ENC_RIGHT(27) & CUR_ENC_RIGHT(28) & CUR_ENC_RIGHT(29) & CUR_ENC_RIGHT(30) & CUR_ENC_RIGHT(31) & CUR_ENC_RIGHT(0); -- ESTEP
		
		NXT_EXP_RIGHT:= NXT_EXP_RIGHT2 xor RKEY;  -- Key Mixing
		
		
		ROW := NXT_EXP_RIGHT(0) & NXT_EXP_RIGHT(5); -- Start of Sboxes
		COLUMN := NXT_EXP_RIGHT(1) & NXT_EXP_RIGHT(2)& NXT_EXP_RIGHT(3)& NXT_EXP_RIGHT(4);
		
		test :=ROW;
		
		case ROW is 
		
		when "00" =>
    case COLUMN is  -- Reverse the SBOX boundaries First one, from 31 downto 28
		when "0000" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(14, 4);
		when "0001" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(4, 4);
		when "0010" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(13, 4);
		when "0011" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(1, 4);
		when "0100" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(2, 4);
		when "0101" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(15, 4);
		when "0110" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(11, 4);
		when "0111" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(8, 4);
		when "1000" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(3, 4);
		when "1001" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(10, 4);
		when "1010" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(6, 4);
		when "1011" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(12, 4);
		when "1100" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(5, 4);
		when "1101" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(9, 4);
		when "1110" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(0, 4);
		when "1111" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(7, 4);
		when others =>
		    NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "01" =>
    case COLUMN is
		when "0000" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(0, 4);
		when "0001" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(15, 4);
		when "0010" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(7, 4);
		when "0011" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(4, 4);
		when "0100" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(14, 4);
		when "0101" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(2, 4);
		when "0110" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(13, 4);
		when "0111" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(1, 4);
		when "1000" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(10, 4);
		when "1001" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(6, 4);
		when "1010" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(12, 4);
		when "1011" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(11, 4);
		when "1100" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(9, 4);
		when "1101" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(5, 4);
		when "1110" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(3, 4);
		when "1111" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(8, 4);
		when others =>
		    NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "10" =>
    case COLUMN is
		when "0000" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(4, 4);
		when "0001" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(1, 4);
		when "0010" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(14, 4);
		when "0011" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(8, 4);
		when "0100" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(13, 4);
		when "0101" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(6, 4);
		when "0110" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(2, 4);
		when "0111" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(11, 4);
		when "1000" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(15, 4);
		when "1001" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(12, 4);
		when "1010" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(9, 4);
		when "1011" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(7, 4);
		when "1100" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(3, 4);
		when "1101" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(10, 4);
		when "1110" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(5, 4);
		when "1111" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(0, 4);
		when others =>
		    NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "11" =>
    case COLUMN is
		when "0000" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(15, 4);
		when "0001" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(12, 4);
		when "0010" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(8, 4);
		when "0011" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(2, 4);
		when "0100" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(4, 4);
		when "0101" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(9, 4);
		when "0110" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(1, 4);
		when "0111" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(7, 4);
		when "1000" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(5, 4);
		when "1001" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(11, 4);
		when "1010" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(3, 4);
		when "1011" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(14, 4);
		when "1100" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(10, 4);
		when "1101" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(0, 4);
		when "1110" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(6, 4);
		when "1111" =>
		    NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(13, 4);
		when others =>
		    NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		
		when others =>
			NXT_ENC_RIGHT := "00000000000000000000000000000000";

		end case;
		
		test3 := NXT_ENC_RIGHT(3 downto 0);
		test :=ROW;
		test2 := COLUMN;
		ROW := NXT_EXP_RIGHT(6) & NXT_EXP_RIGHT(11);
    COLUMN := NXT_EXP_RIGHT(7) & NXT_EXP_RIGHT(8)& NXT_EXP_RIGHT(9)& NXT_EXP_RIGHT(10);
    
    
    
 		
 		

    case ROW is
		when "00" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "0001" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "0010" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "0011" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "0100" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "0101" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "0110" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "0111" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "1000" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "1001" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "1010" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "1011" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "1100" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1101" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1110" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1111" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(10, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;


		when "01" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "0001" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0010" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0011" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0100" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "0101" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "0110" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "0111" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1000" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1001" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1010" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "1011" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "1100" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "1101" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "1110" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "1111" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(5, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;


		when "10" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "0001" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "0010" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0011" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "0100" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "0101" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0110" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0111" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "1000" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1001" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "1010" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1011" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "1100" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "1101" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1110" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "1111" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(15, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;

		when "11" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0001" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "0010" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "0011" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "0100" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "0101" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "0110" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0111" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "1000" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "1001" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "1010" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "1011" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1100" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1101" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1110" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1111" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(9, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		
		when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;

    
    
    
    ROW := NXT_EXP_RIGHT(12) & NXT_EXP_RIGHT(17);
    COLUMN := NXT_EXP_RIGHT(13) & NXT_EXP_RIGHT(14)& NXT_EXP_RIGHT(15)& NXT_EXP_RIGHT(16);
    
    
		case ROW is
		when "00" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "0001" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "0010" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "0011" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "0100" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "0101" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "0110" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "0111" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1000" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "1001" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "1010" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1011" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "1100" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "1101" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "1110" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "1111" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(8, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;

		when "01" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0001" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0010" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "0011" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "0100" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "0101" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0110" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "0111" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "1000" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "1001" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "1010" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1011" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1100" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1101" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "1110" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "1111" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(1, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;

		when "10" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0001" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "0010" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0011" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "0100" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "0101" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "0110" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "0111" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1000" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "1001" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "1010" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "1011" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1100" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1101" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "1110" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1111" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(7, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;

		when "11" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "0001" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "0010" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0011" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "0100" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "0101" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "0110" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "0111" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "1000" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "1001" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "1010" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1011" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1100" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "1101" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1110" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "1111" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(12, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		
		when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;

    ROW := NXT_EXP_RIGHT(18) & NXT_EXP_RIGHT(23);
    COLUMN := NXT_EXP_RIGHT(19) & NXT_EXP_RIGHT(20)& NXT_EXP_RIGHT(21)& NXT_EXP_RIGHT(22);
    
    case Row is
		when "00" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0001" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0010" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "0011" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "0100" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "0101" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "0110" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "0111" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "1000" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "1001" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "1010" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "1011" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1100" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "1101" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1110" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "1111" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(15, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "01" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0001" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "0010" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "0011" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "0100" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "0101" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "0110" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "0111" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1000" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "1001" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "1010" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "1011" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1100" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "1101" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "1110" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1111" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(9, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "10" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "0001" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "0010" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "0011" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "0100" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "0101" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "0110" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0111" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "1000" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "1001" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "1010" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1011" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1100" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1101" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "1110" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "1111" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(4, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "11" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "0001" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "0010" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "0011" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "0100" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "0101" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "0110" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0111" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "1000" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "1001" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "1010" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1011" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "1100" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1101" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "1110" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "1111" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(14, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;


    ROW := NXT_EXP_RIGHT(24) & NXT_EXP_RIGHT(29);
    COLUMN := NXT_EXP_RIGHT(25) & NXT_EXP_RIGHT(26)& NXT_EXP_RIGHT(27)& NXT_EXP_RIGHT(28);
    
case Row is
		when "00" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "0001" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "0010" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0011" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "0100" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0101" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "0110" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "0111" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "1000" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "1001" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1010" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1011" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "1100" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "1101" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1110" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1111" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(9, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "01" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "0001" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "0010" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "0011" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "0100" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0101" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0110" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0111" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "1000" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1001" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1010" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "1011" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "1100" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1101" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "1110" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "1111" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(6, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "10" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0001" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "0010" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "0011" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "0100" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "0101" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0110" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0111" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "1000" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "1001" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "1010" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1011" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1100" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "1101" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1110" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1111" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(14, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "11" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "0001" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "0010" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "0011" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0100" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "0101" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "0110" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "0111" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "1000" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "1001" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "1010" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1011" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "1100" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "1101" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "1110" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1111" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(3, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;


    
    ROW := NXT_EXP_RIGHT(30) & NXT_EXP_RIGHT(35);
    COLUMN := NXT_EXP_RIGHT(31) & NXT_EXP_RIGHT(32)& NXT_EXP_RIGHT(33)& NXT_EXP_RIGHT(34);
    
    case Row is
		when "00" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "0001" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "0010" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "0011" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "0100" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "0101" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "0110" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "0111" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "1000" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1001" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "1010" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1011" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "1100" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1101" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "1110" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1111" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(11, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "01" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "0001" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "0010" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0011" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "0100" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0101" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "0110" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "0111" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1000" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "1001" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "1010" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "1011" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1100" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1101" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "1110" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1111" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(8, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "10" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "0001" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "0010" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "0011" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "0100" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "0101" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "0110" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "0111" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1000" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "1001" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1010" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "1011" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "1100" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "1101" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "1110" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "1111" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(6, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "11" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0001" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "0010" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "0011" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "0100" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "0101" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "0110" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "0111" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "1000" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "1001" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1010" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "1011" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "1100" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "1101" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1110" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "1111" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(13, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;


    ROW := NXT_EXP_RIGHT(36) & NXT_EXP_RIGHT(41);
    COLUMN := NXT_EXP_RIGHT(37) & NXT_EXP_RIGHT(38)& NXT_EXP_RIGHT(39)& NXT_EXP_RIGHT(40);
    
    case Row is
		when "00" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0001" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "0010" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "0011" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "0100" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "0101" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "0110" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "0111" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "1000" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1001" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1010" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "1011" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "1100" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1101" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "1110" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "1111" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(1, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "01" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0001" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "0010" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "0011" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0100" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0101" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "0110" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "0111" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "1000" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1001" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1010" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1011" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1100" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "1101" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "1110" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "1111" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(6, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "10" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "0001" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0010" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "0011" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0100" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "0101" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "0110" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0111" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1000" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "1001" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "1010" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "1011" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "1100" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1101" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1110" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "1111" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(2, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "11" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "0001" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "0010" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0011" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "0100" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "0101" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0110" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "0111" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "1000" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "1001" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1010" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1011" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "1100" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1101" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "1110" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1111" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(12, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;

    ROW := NXT_EXP_RIGHT(42) & NXT_EXP_RIGHT(47);
    COLUMN := NXT_EXP_RIGHT(43) & NXT_EXP_RIGHT(44)& NXT_EXP_RIGHT(45)& NXT_EXP_RIGHT(46);
		
		
case Row is
		when "00" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0001" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "0010" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "0011" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0100" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "0101" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "0110" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "0111" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "1000" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "1001" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "1010" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1011" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1100" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1101" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1110" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1111" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(7, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "01" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "0001" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "0010" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0011" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "0100" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "0101" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "0110" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0111" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "1000" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1001" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1010" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "1011" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "1100" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1101" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1110" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "1111" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(2, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "10" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0001" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "0010" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0011" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "0100" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "0101" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "0110" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "0111" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "1000" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1001" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "1010" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "1011" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "1100" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "1101" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1110" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1111" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(8, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "11" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "0001" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "0010" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "0011" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0100" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0101" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "0110" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "0111" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "1000" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "1001" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1010" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "1011" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1100" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1101" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1110" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "1111" =>
						NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(11, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;		
		
		
		NXT_ENC_RIGHT2:= NXT_ENC_RIGHT(15) & NXT_ENC_RIGHT(6) & NXT_ENC_RIGHT(19) & NXT_ENC_RIGHT(20) & NXT_ENC_RIGHT(28) & NXT_ENC_RIGHT(11) & NXT_ENC_RIGHT(27) & NXT_ENC_RIGHT(16) & NXT_ENC_RIGHT(0) & NXT_ENC_RIGHT(14) & NXT_ENC_RIGHT(22) & NXT_ENC_RIGHT(25) & NXT_ENC_RIGHT(4) & NXT_ENC_RIGHT(17) & NXT_ENC_RIGHT(30) & NXT_ENC_RIGHT(9) & NXT_ENC_RIGHT(1) & NXT_ENC_RIGHT(7) & NXT_ENC_RIGHT(23) & NXT_ENC_RIGHT(13) & NXT_ENC_RIGHT(31) & NXT_ENC_RIGHT(26) & NXT_ENC_RIGHT(2) & NXT_ENC_RIGHT(8) & NXT_ENC_RIGHT(18) & NXT_ENC_RIGHT(12) & NXT_ENC_RIGHT(29) & NXT_ENC_RIGHT(5) & NXT_ENC_RIGHT(21) & NXT_ENC_RIGHT(10) & NXT_ENC_RIGHT(3) & NXT_ENC_RIGHT(24); -- PSTEP
		
		NXT_ENC_RIGHT1 <= NXT_ENC_RIGHT2 xor CUR_ENC_LEFT; -- XOR with LEFT to get new RIGHT
		
		--end if;
		
	end process;
				
				
		
		OUTDATA <= NXT_ENC_LEFT & NXT_ENC_RIGHT1;
		
		



end behav;
