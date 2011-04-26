-- $Id: $
-- File name:   tb_encryption.vhd
-- Created:     4/22/2011
-- Author:      Samuel Oshin
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_topLevel is
generic (Period : Time := 3.5 ns);
end tb_topLevel;

architecture TEST of tb_topLevel is

	type data_array is array (15 downto 0) of std_logic_vector(47 downto 0);
	signal RKEY: data_array;

function ENCODE( INPUT:std_logic_vector(71 downto 0))
	return STD_LOGIC_VECTOR is
		variable pData, cData: STD_LOGIC;
		variable OUTPUT: STD_LOGIC_VECTOR(71 downto 0);
	begin
		pData := '1';
		for i in 0 to 71 loop
			cData := INPUT(i);
			if(pData = not(cData)) then
				OUTPUT(i) := '0';
			else
				OUTPUT(i) := '1';
			end if;
			pData := cData;
		end loop;
		
		return OUTPUT;
	end;
		
				


function DECRYPT( RKEY: data_array; DATA: std_logic_vector(63 downto 0))
     return STD_LOGIC_VECTOR is
    	variable DData : STD_LOGIC_VECTOR(63 downto 0);
    	variable CData : STD_LOGIC_VECTOR(63 downto 0);
    	variable CUR_ENC_LEFT, CUR_ENC_RIGHT,NXT_ENC_RIGHT,NXT_ENC_RIGHT2,NXT_ENC_RIGHT1,NXT_ENC_LEFT : std_logic_vector(31 downto 0);
			variable NXT_EXP_RIGHT,NXT_EXP_RIGHT2	: std_logic_vector(47 downto 0);
			variable COLUMN,test3,test2: std_logic_vector(3 downto 0);
			variable ROW,test: std_logic_vector(1 downto 0);
  
  begin
    CData := DATA;
      CUR_ENC_LEFT := CData(63 downto 32);
      CUR_ENC_RIGHT := CData(31 downto 0);

    for i in 15 downto 0 loop
    
          
    NXT_ENC_LEFT := CUR_ENC_RIGHT;
		
		NXT_EXP_RIGHT2 := CUR_ENC_RIGHT(31) & CUR_ENC_RIGHT(0) & CUR_ENC_RIGHT(1) & CUR_ENC_RIGHT(2) & CUR_ENC_RIGHT(3) & CUR_ENC_RIGHT(4) & CUR_ENC_RIGHT(3) & CUR_ENC_RIGHT(4) & CUR_ENC_RIGHT(5) & CUR_ENC_RIGHT(6) & CUR_ENC_RIGHT(7) & CUR_ENC_RIGHT(8) & CUR_ENC_RIGHT(7) & CUR_ENC_RIGHT(8) & CUR_ENC_RIGHT(9) & CUR_ENC_RIGHT(10) & CUR_ENC_RIGHT(11) & CUR_ENC_RIGHT(12) & CUR_ENC_RIGHT(11) & CUR_ENC_RIGHT(12) & CUR_ENC_RIGHT(13) & CUR_ENC_RIGHT(14) & CUR_ENC_RIGHT(15) & CUR_ENC_RIGHT(16) & CUR_ENC_RIGHT(15) & CUR_ENC_RIGHT(16) & CUR_ENC_RIGHT(17) & CUR_ENC_RIGHT(18) & CUR_ENC_RIGHT(19) & CUR_ENC_RIGHT(20) & CUR_ENC_RIGHT(19) & CUR_ENC_RIGHT(20) & CUR_ENC_RIGHT(21) & CUR_ENC_RIGHT(22) & CUR_ENC_RIGHT(23) & CUR_ENC_RIGHT(24) & CUR_ENC_RIGHT(23) & CUR_ENC_RIGHT(24) & CUR_ENC_RIGHT(25) & CUR_ENC_RIGHT(26) & CUR_ENC_RIGHT(27) & CUR_ENC_RIGHT(28) & CUR_ENC_RIGHT(27) & CUR_ENC_RIGHT(28) & CUR_ENC_RIGHT(29) & CUR_ENC_RIGHT(30) & CUR_ENC_RIGHT(31) & CUR_ENC_RIGHT(0); -- ESTEP
		
		NXT_EXP_RIGHT:= NXT_EXP_RIGHT2 xor RKEY(i);  -- Key Mixing
		
		
		ROW := NXT_EXP_RIGHT(47) & NXT_EXP_RIGHT(42); -- Start of Sboxes
		COLUMN := NXT_EXP_RIGHT(46) & NXT_EXP_RIGHT(45)& NXT_EXP_RIGHT(44)& NXT_EXP_RIGHT(43);
		
		test :=ROW;
		
		case ROW is 
		
		when "00" =>
    case COLUMN is  -- Reverse the SBOX boundaries First one, from 31 downto 28
		when "0000" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(14, 4);
		when "0001" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(4, 4);
		when "0010" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(13, 4);
		when "0011" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(1, 4);
		when "0100" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(2, 4);
		when "0101" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(15, 4);
		when "0110" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(11, 4);
		when "0111" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(8, 4);
		when "1000" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(3, 4);
		when "1001" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(10, 4);
		when "1010" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(6, 4);
		when "1011" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(12, 4);
		when "1100" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(5, 4);
		when "1101" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(9, 4);
		when "1110" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(0, 4);
		when "1111" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(7, 4);
		when others =>
		    NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "01" =>
    case COLUMN is
		when "0000" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(0, 4);
		when "0001" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(15, 4);
		when "0010" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(7, 4);
		when "0011" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(4, 4);
		when "0100" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(14, 4);
		when "0101" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(2, 4);
		when "0110" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(13, 4);
		when "0111" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(1, 4);
		when "1000" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(10, 4);
		when "1001" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(6, 4);
		when "1010" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(12, 4);
		when "1011" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(11, 4);
		when "1100" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(9, 4);
		when "1101" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(5, 4);
		when "1110" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(3, 4);
		when "1111" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(8, 4);
		when others =>
		    NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "10" =>
    case COLUMN is
		when "0000" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(4, 4);
		when "0001" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(1, 4);
		when "0010" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(14, 4);
		when "0011" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(8, 4);
		when "0100" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(13, 4);
		when "0101" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(6, 4);
		when "0110" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(2, 4);
		when "0111" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(11, 4);
		when "1000" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(15, 4);
		when "1001" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(12, 4);
		when "1010" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(9, 4);
		when "1011" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(7, 4);
		when "1100" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(3, 4);
		when "1101" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(10, 4);
		when "1110" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(5, 4);
		when "1111" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(0, 4);
		when others =>
		    NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "11" =>
    case COLUMN is
		when "0000" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(15, 4);
		when "0001" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(12, 4);
		when "0010" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(8, 4);
		when "0011" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(2, 4);
		when "0100" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(4, 4);
		when "0101" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(9, 4);
		when "0110" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(1, 4);
		when "0111" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(7, 4);
		when "1000" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(5, 4);
		when "1001" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(11, 4);
		when "1010" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(3, 4);
		when "1011" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(14, 4);
		when "1100" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(10, 4);
		when "1101" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(0, 4);
		when "1110" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(6, 4);
		when "1111" =>
		    NXT_ENC_RIGHT(31 downto 28) := CONV_STD_LOGIC_VECTOR(13, 4);
		when others =>
		    NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		
		when others =>
			NXT_ENC_RIGHT := "00000000000000000000000000000000";

		end case;
		
		test3 := NXT_ENC_RIGHT(31 downto 28);
		test :=ROW;
		test2 := COLUMN;
		ROW := NXT_EXP_RIGHT(41) & NXT_EXP_RIGHT(36);
    COLUMN := NXT_EXP_RIGHT(40) & NXT_EXP_RIGHT(39)& NXT_EXP_RIGHT(38)& NXT_EXP_RIGHT(37);
    
    
    
 		
 		

    case ROW is
		when "00" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "0001" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "0010" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "0011" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "0100" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "0101" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "0110" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "0111" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "1000" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "1001" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "1010" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "1011" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "1100" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1101" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1110" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1111" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(10, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;


		when "01" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "0001" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0010" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0011" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0100" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "0101" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "0110" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "0111" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1000" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1001" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1010" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "1011" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "1100" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "1101" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "1110" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "1111" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(5, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;


		when "10" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "0001" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "0010" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0011" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "0100" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "0101" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0110" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0111" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "1000" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1001" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "1010" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1011" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "1100" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "1101" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1110" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "1111" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(15, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;

		when "11" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0001" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "0010" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "0011" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "0100" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "0101" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "0110" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0111" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "1000" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "1001" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "1010" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "1011" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1100" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1101" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1110" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1111" =>
						NXT_ENC_RIGHT(27 downto 24) := CONV_STD_LOGIC_VECTOR(9, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		
		when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;

    
    
    
    ROW := NXT_EXP_RIGHT(35) & NXT_EXP_RIGHT(30);
    COLUMN := NXT_EXP_RIGHT(34) & NXT_EXP_RIGHT(33)& NXT_EXP_RIGHT(32)& NXT_EXP_RIGHT(31);
    
    
		case ROW is
		when "00" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "0001" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "0010" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "0011" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "0100" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "0101" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "0110" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "0111" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1000" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "1001" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "1010" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1011" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "1100" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "1101" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "1110" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "1111" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(8, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;

		when "01" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0001" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0010" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "0011" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "0100" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "0101" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0110" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "0111" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "1000" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "1001" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "1010" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1011" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1100" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1101" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "1110" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "1111" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(1, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;

		when "10" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0001" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "0010" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0011" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "0100" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "0101" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "0110" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "0111" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1000" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "1001" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "1010" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "1011" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1100" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1101" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "1110" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1111" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(7, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;

		when "11" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "0001" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "0010" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0011" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "0100" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "0101" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "0110" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "0111" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "1000" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "1001" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "1010" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1011" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1100" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "1101" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1110" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "1111" =>
						NXT_ENC_RIGHT(23 downto 20) := CONV_STD_LOGIC_VECTOR(12, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		
		when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;

    ROW := NXT_EXP_RIGHT(29) & NXT_EXP_RIGHT(24);
    COLUMN := NXT_EXP_RIGHT(28) & NXT_EXP_RIGHT(27)& NXT_EXP_RIGHT(26)& NXT_EXP_RIGHT(25);
    
    case Row is
		when "00" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0001" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0010" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "0011" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "0100" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "0101" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "0110" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "0111" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "1000" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "1001" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "1010" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "1011" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1100" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "1101" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1110" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "1111" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(15, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "01" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0001" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "0010" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "0011" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "0100" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "0101" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "0110" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "0111" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1000" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "1001" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "1010" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "1011" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1100" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "1101" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "1110" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1111" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(9, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "10" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "0001" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "0010" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "0011" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "0100" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "0101" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "0110" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0111" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "1000" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "1001" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "1010" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1011" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1100" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1101" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "1110" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "1111" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(4, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "11" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "0001" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "0010" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "0011" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "0100" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "0101" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "0110" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0111" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "1000" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "1001" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "1010" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1011" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "1100" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1101" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "1110" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "1111" =>
						NXT_ENC_RIGHT(19 downto 16) := CONV_STD_LOGIC_VECTOR(14, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;


    ROW := NXT_EXP_RIGHT(23) & NXT_EXP_RIGHT(18);
    COLUMN := NXT_EXP_RIGHT(22) & NXT_EXP_RIGHT(21)& NXT_EXP_RIGHT(20)& NXT_EXP_RIGHT(19);
    
case Row is
		when "00" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "0001" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "0010" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0011" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "0100" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0101" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "0110" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "0111" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "1000" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "1001" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1010" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1011" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "1100" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "1101" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1110" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1111" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(9, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "01" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "0001" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "0010" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "0011" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "0100" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0101" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0110" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0111" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "1000" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1001" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1010" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "1011" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "1100" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1101" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "1110" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "1111" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(6, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "10" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0001" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "0010" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "0011" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "0100" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "0101" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0110" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0111" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "1000" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "1001" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "1010" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1011" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1100" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "1101" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1110" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1111" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(14, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "11" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "0001" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "0010" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "0011" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0100" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "0101" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "0110" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "0111" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "1000" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "1001" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "1010" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1011" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "1100" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "1101" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "1110" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1111" =>
						NXT_ENC_RIGHT(15 downto 12) := CONV_STD_LOGIC_VECTOR(3, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;


    
    ROW := NXT_EXP_RIGHT(17) & NXT_EXP_RIGHT(12);
    COLUMN := NXT_EXP_RIGHT(16) & NXT_EXP_RIGHT(15)& NXT_EXP_RIGHT(14)& NXT_EXP_RIGHT(13);
    
    case Row is
		when "00" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "0001" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "0010" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "0011" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "0100" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "0101" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "0110" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "0111" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "1000" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1001" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "1010" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1011" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "1100" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1101" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "1110" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1111" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(11, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "01" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "0001" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "0010" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0011" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "0100" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0101" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "0110" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "0111" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1000" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "1001" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "1010" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "1011" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1100" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1101" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "1110" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1111" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(8, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "10" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "0001" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "0010" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "0011" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "0100" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "0101" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "0110" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "0111" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1000" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "1001" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1010" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "1011" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "1100" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "1101" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "1110" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "1111" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(6, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "11" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0001" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "0010" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "0011" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "0100" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "0101" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "0110" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "0111" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "1000" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "1001" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1010" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "1011" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "1100" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "1101" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1110" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "1111" =>
						NXT_ENC_RIGHT(11 downto 8) := CONV_STD_LOGIC_VECTOR(13, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;


    ROW := NXT_EXP_RIGHT(11) & NXT_EXP_RIGHT(6);
    COLUMN := NXT_EXP_RIGHT(10) & NXT_EXP_RIGHT(9)& NXT_EXP_RIGHT(8)& NXT_EXP_RIGHT(7);
    
    case Row is
		when "00" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0001" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "0010" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "0011" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "0100" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "0101" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "0110" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "0111" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "1000" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1001" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1010" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "1011" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "1100" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1101" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "1110" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "1111" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(1, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "01" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0001" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "0010" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "0011" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0100" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0101" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "0110" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "0111" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "1000" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1001" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1010" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1011" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1100" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "1101" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "1110" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "1111" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(6, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "10" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "0001" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0010" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "0011" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0100" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "0101" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "0110" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0111" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1000" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "1001" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "1010" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "1011" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "1100" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1101" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1110" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "1111" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(2, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "11" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "0001" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "0010" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0011" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "0100" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "0101" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0110" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "0111" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "1000" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "1001" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1010" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1011" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "1100" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1101" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "1110" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1111" =>
						NXT_ENC_RIGHT(7 downto 4) := CONV_STD_LOGIC_VECTOR(12, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;

    ROW := NXT_EXP_RIGHT(5) & NXT_EXP_RIGHT(0);
    COLUMN := NXT_EXP_RIGHT(4) & NXT_EXP_RIGHT(3)& NXT_EXP_RIGHT(2)& NXT_EXP_RIGHT(1);
		
		
case Row is
		when "00" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0001" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "0010" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "0011" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0100" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "0101" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "0110" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "0111" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "1000" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "1001" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "1010" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1011" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1100" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1101" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1110" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1111" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(7, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "01" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "0001" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "0010" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "0011" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "0100" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "0101" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "0110" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0111" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "1000" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1001" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1010" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "1011" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "1100" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1101" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "1110" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "1111" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(2, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "10" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0001" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(11, 4);
				when "0010" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0011" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "0100" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "0101" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "0110" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "0111" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "1000" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1001" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "1010" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "1011" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "1100" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "1101" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1110" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1111" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(8, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when "11" =>
		case COLUMN is
				when "0000" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(2, 4);
				when "0001" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(1, 4);
				when "0010" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(14, 4);
				when "0011" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(7, 4);
				when "0100" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(4, 4);
				when "0101" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(10, 4);
				when "0110" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(8, 4);
				when "0111" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(13, 4);
				when "1000" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(15, 4);
				when "1001" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(12, 4);
				when "1010" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(9, 4);
				when "1011" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(0, 4);
				when "1100" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(3, 4);
				when "1101" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(5, 4);
				when "1110" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(6, 4);
				when "1111" =>
						NXT_ENC_RIGHT(3 downto 0) := CONV_STD_LOGIC_VECTOR(11, 4);
				when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;
		when others =>
						NXT_ENC_RIGHT := "00000000000000000000000000000000";
		end case;		
		
		
		NXT_ENC_RIGHT2:= NXT_ENC_RIGHT(15) & NXT_ENC_RIGHT(6) & NXT_ENC_RIGHT(19) & NXT_ENC_RIGHT(20) & NXT_ENC_RIGHT(28) & NXT_ENC_RIGHT(11) & NXT_ENC_RIGHT(27) & NXT_ENC_RIGHT(16) & NXT_ENC_RIGHT(0) & NXT_ENC_RIGHT(14) & NXT_ENC_RIGHT(22) & NXT_ENC_RIGHT(25) & NXT_ENC_RIGHT(4) & NXT_ENC_RIGHT(17) & NXT_ENC_RIGHT(30) & NXT_ENC_RIGHT(9) & NXT_ENC_RIGHT(1) & NXT_ENC_RIGHT(7) & NXT_ENC_RIGHT(23) & NXT_ENC_RIGHT(13) & NXT_ENC_RIGHT(31) & NXT_ENC_RIGHT(26) & NXT_ENC_RIGHT(2) & NXT_ENC_RIGHT(8) & NXT_ENC_RIGHT(18) & NXT_ENC_RIGHT(12) & NXT_ENC_RIGHT(29) & NXT_ENC_RIGHT(5) & NXT_ENC_RIGHT(21) & NXT_ENC_RIGHT(10) & NXT_ENC_RIGHT(3) & NXT_ENC_RIGHT(24); -- PSTEP
		
		NXT_ENC_RIGHT1 := NXT_ENC_RIGHT2 xor CUR_ENC_LEFT; -- XOR with LEFT to get new RIGHT
		
		CUR_ENC_LEFT := CUR_ENC_RIGHT;
		
		CUR_ENC_RIGHT := NXT_ENC_RIGHT1;
		


   end loop;
   	DData:= CUR_ENC_RIGHT & CUR_ENC_LEFT;
    return DData;
  end;

  --component encryption
  --  PORT(
  --       CLK : IN std_logic;
   --      DATA : IN std_logic_vector (7 DOWNTO 0);
    --     EMPTY : IN std_logic;
     --    FULL : IN std_logic;
      --   RENABLE : IN std_logic;
       --  RST : IN std_logic;
    --     EMPTY1 : OUT std_logic;
     --    FULL1 : OUT std_logic;
      --   RDATA : OUT std_logic_vector (7 DOWNTO 0);
       --  R_ENABLE : OUT std_logic
   -- );
  --end component;

-- Insert signals Declarations here
  signal CLK : std_logic;
  signal DATA : std_logic_vector (7 DOWNTO 0);
  signal EMPTY : std_logic;
  signal FULL : std_logic;
  signal RENABLE : std_logic;
  signal RST : std_logic;
  signal EMPTY1 : std_logic;
  signal FULL1 : std_logic;
  signal RDATA : std_logic_vector (7 DOWNTO 0);
  signal R_ENABLE : std_logic;
	signal DeData: std_logic_vector(63 downto 0);
	signal EnCoded: std_logic_vector(71 downto 0);
-- signal <name> : <type>;

begin

CLKGEN: process
  variable clk_tmp: std_logic := '0';
begin
  clk_tmp := not clk_tmp;
  clk <= clk_tmp;
  wait for Period/2;
end process;

  --DUT: encryption port map(
  --              CLK => CLK,
   --             DATA => DATA,
    --            EMPTY => EMPTY,
     --           FULL => FULL,
      --          RENABLE => RENABLE,
       --         RST => RST,
        --        EMPTY1 => EMPTY1,
         --       FULL1 => FULL1,
          --      RDATA => RDATA,
           --     R_ENABLE => R_ENABLE
            --    );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process
	
	variable cData1,cData2,cData3,cData4,cData5,cData6,cData7,cData8: std_logic_vector(7 downto 0);
	

	
	
  begin

				
		
		
		RKEY(0) <= "010100111011111010101101110111101011000111100010"; --1

		RKEY(1) <= "110111010010111110001101001101100001011001001111";--2
		
		RKEY(2) <= "100110110110110110111101111101001110001110001011";--3
		
		RKEY(3) <= "000111110110100111101001111010110010001011000110";--4
		
		RKEY(4) <= "001111110101100111011101101101000110010100010101";
		
		RKEY(5) <= "000011110101001111011111000110111110101110000010"; --6
		
		RKEY(6) <= "101111111101001101011001101110110100011001110101";
		
		RKEY(7) <= "111111100101001111110011100111001011111010010001";
		
		RKEY(8) <= "101001111101011111110010100000011100111011101110"; --9
		
		RKEY(9) <= "111001011111001001110111111111001101000001110100";
		
		RKEY(10) <= "111000001001111101110111000011010111111001001010"; --11
		
		RKEY(11) <= "111100001111011100100110111011011100010100111010";
		
		RKEY(12) <= "111100001110111011101110011110101011110001010010";
		
		RKEY(13) <= "110110011011110011100110001001001110111101101001";
		
		RKEY(14) <= "010100111011111010101101110111101011000111100010";

		RKEY(15) <= "110111010010111110001101001101100001011001001111";

		
-- Insert TEST BENCH Code Here   -- NEEEEEEEED 222222 RESETS FOR FIFO
		
		--RST <= '0';
		
		wait for 3*Period;
		
  --  RST <= '1';
		
		wait for 3*Period;
		
		--RST <= '0';
		
		wait for 3*Period;
		
    -- First data acquisitions, 
    -- Put Renable to 1 and get data in 1
    
    --R_ENABLE <= '1';

    wait for Period;
    
    
    


    
    
    
    
    
    
--    cData1 := DATA;
    cData1 := "01001010";
    
    wait for Period;
    
    --R_ENABLE <= '0';
		
		wait for Period;    

		-- Get Data 2

    --R_ENABLE <= '1';

    wait for Period;
    
    cData2 := "10010111";
    
    wait for Period;
    
    --R_ENABLE <= '0';
    
    wait for Period;

-- Get 3rd Data
    
    --R_ENABLE <= '1';

    wait for Period;
    
    cData3 := "00011001";
    
    wait for Period;
    
    --R_ENABLE <= '0';
		
		wait for Period;
    
    -- Get 4th Data
    
    --R_ENABLE <= '1';

    wait for Period;
    
    cData4 := "11100111";
    
    wait for Period;
    
    --R_ENABLE <= '0';
		
		wait for Period;

-- Get 5th Dat

    --R_ENABLE <= '1';

    wait for Period;
    
    cData5 := "10110110";
    
    wait for Period;
    
    --R_ENABLE <= '0';
		
		wait for Period;
		
-- Get 6th Data

    --R_ENABLE <= '1';

    wait for Period;
    
    cData6 := "01010011";
    
    wait for Period;
    
    --R_ENABLE <= '0';
		
		wait for Period;

-- Get 7th Data

    --R_ENABLE <= '1';

    wait for Period;
    
    cData7 := "01100000";
    
    wait for Period;
    
    --R_ENABLE <= '0';
		
		wait for Period;
		
-- Get 8th Data

    --R_ENABLE <= '1';

    wait for Period;
    
    cData8 := "11011001";
    
    wait for Period;
    
    --R_ENABLE <= '0';
		
		wait for Period;
				
		DeData <= DECRYPT(RKEY,cData1&cData2&cData3&cData4&cData5&cData6&cData7&cData8);
				
    wait for 50*Period;
    
    EnCoded <= ENCODE("101010101010101010101000000000000000101010101010010101111101010100101010");
    
    wait for 50*Period;

  end process;
end TEST;
