-- $Id: $
-- File name:   e_encController.vhd
-- Created:     4/14/2011
-- Author:      Samuel Oshin
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: Encryption block Controllerrrrr!!!!!


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY e_encController is
	port(
		DATA				: 	IN			std_logic_vector(7 downto 0);
		FULL				: 	IN 			std_logic;
		EMPTY				:		IN			std_logic;
		CLK					:		IN			std_logic;
		RST					:		IN			std_logic;
		START				:		OUT			std_logic;
		R_ENABLE		:		OUT			std_logic;
		W_ENABLE		:		OUT			std_logic;
		ENC_LEFT		:		OUT			std_logic_vector(31 downto 0);
		ENC_RIGHT		:		OUT			std_logic_vector(31 downto 0));
end e_encController;


architecture behav of e_encController is
type state_type is (idle, Chunk1, Ch1Wait, Chunk2, Chunk3, Chunk4,Chunk5,Chunk6,Chunk7,Chunk8,waitRnd);  --Chunk 1 wait (R_Data doesnt change intime)
signal compileCT,nxtCompCT	: state_type;
signal rndCT, nxtrndCT			: std_logic_vector(4 downto 0);
--signal cData : std_logic_vector(7 downto 0);
signal cD_ENABLE: std_logic;
signal CompData2 	: std_logic_vector(63 downto 0);



begin

	Compreg:process(CLK,RST,rndCT, EMPTY,DATA)
	--variable cData1,cData2,cData3,cData4,cData5,cData6,cData7,cData8 : std_logic_vector(7 downto 0);
	begin
		
		if(RST = '1') then
			compileCT <= idle;
			--cData <= "00000000";
--			CompData<="0000000000000000000000000000000000000000000000000000000000000000";

									
		elsif(rising_edge(clk)) then
				compileCT <= nxtCompCT;
				--cData <= DATA;

			if (rndCT < "11001" and rndCT > "01111") then
				cD_ENABLE <= '1';
			else
				cD_ENABLE <= '0';
			end if;

--				CompData2 <= cData1&cData2&cData3&cData4&cData5&cData6&cData7&cData8;
				--CompData2<=CompData;
--				r_enable <= '1';
			--if(falling_edge(clk)) then
				--r_enable <= '1';
			--end if;
		end if;
		
		
	end process;
	
	nxtCompState: process(compileCT,FULL,rndCT)
	variable cData1,cData2,cData3,cData4,cData5,cData6,cData7,cData8 : std_logic_vector(7 downto 0);
	begin
	
	case compileCT is
	
	when idle =>
			if(FULL = '1') then
				nxtCompCT <= Chunk1;
				--CompData<= DATA&"00000000000000000000000000000000000000000000000000000000";
			else
				nxtCompCT <= idle;
			end if;
			
			--CompData2<="0000000000000000000000000000000000000000000000000000000000000000";
			
	when Chunk1 => 
				nxtCompCT <= Ch1Wait;
				--CompData<=CompData(63 downto 56)& DATA &"000000000000000000000000000000000000000000000000" ;
				--cData1 := DATA;
	when Ch1Wait => 
				nxtCompCT <= Chunk2;
	when Chunk2 => 
				nxtCompCT <= Chunk3;
				--CompData<=CompData(63 downto 48)& DATA &"0000000000000000000000000000000000000000" ;
				--cData2 := DATA;
	when Chunk3 => 
				nxtCompCT <= Chunk4;
				--CompData<=CompData(63 downto 40)& DATA &"00000000000000000000000000000000" ;
				--cData3 := DATA;
	when Chunk4 => 
				nxtCompCT <= Chunk5;
				--CompData<=CompData(63 downto 32)& DATA &"000000000000000000000000" ;
				--cData4 := DATA;
	when Chunk5 => 
				nxtCompCT <= Chunk6;
				--CompData<=CompData(63 downto 24)& DATA &"0000000000000000";
				--cData5 := DATA;
	when Chunk6 => 
				nxtCompCT <= Chunk7;
				--CompData<=CompData(63 downto 16)& DATA &"00000000" ;
				--cData6 := DATA;
	when Chunk7 => 
				nxtCompCT <= Chunk8;
				--CompData<=CompData(63 downto 8)& DATA ;
				--cData7 := DATA;
	when Chunk8 => 
				nxtCompCT <= waitRnd;
				--cData8 := DATA;
				
	when waitRnd =>
		--CompData2 <= cData1&cData2&cData3&cData4&cData5&cData6&cData7&cData8;
		if(rndCT = "11000") then
				nxtCompCT <= idle;
				--CompData2<="0000000000000000000000000000000000000000000000000000000000000000";
		else
				nxtCompCT <= waitRnd;
		end if;
	end case;
	
	end process nxtCompState;
	
	
	
	
	
	
	--with nxtCompCT select
	--CompData<= DATA&"00000000000000000000000000000000000000000000000000000000" when  Chunk1,
	--						 CompData(63 downto 56)& DATA &"000000000000000000000000000000000000000000000000" when Chunk2,
	--						 CompData(63 downto 48)& DATA &"0000000000000000000000000000000000000000" when Chunk3,
	--						 CompData(63 downto 40)& DATA &"00000000000000000000000000000000" when Chunk4,
	--						 CompData(63 downto 32)& DATA &"000000000000000000000000" when Chunk5,
	--						 CompData(63 downto 24)& DATA &"0000000000000000" when Chunk6,
	--						 CompData(63 downto 16)& DATA &"00000000" when Chunk7,
	--						 CompData(63 downto 8)& DATA when Chunk8,
	--						 CompData(63 downto 0) when waitRnd,
	--						 "0000000000000000000000000000000000000000000000000000000000000000" when idle;
	
	
--	process(compileCT, DATA, RST,CLK)
	together:process(nxtCompCT,CLK,DATA)
	variable cData1,cData2,cData3,cData4,cData5,cData6,cData7,cData8 : std_logic_vector(7 downto 0);
	begin
	
	--if (RST = '1') then
	--	CompData<="0000000000000000000000000000000000000000000000000000000000000000";
	--	cData1 := "00000000";
	--	cData2 := "00000000";
	--	cData3 := "00000000";
	--	cData4 := "00000000";
	--	cData5 := "00000000";
	--	cData6 := "00000000";
	--	cData7 := "00000000";
	--	cData8 := "00000000";
	--end if;
		
	--if(compileCT = "111") then
		--ctComp <= '0';
		--ctRnd <= '1';
	--elsif(rndCT = "1111") then
	--	ctComp <= '1';
	--	ctRnd <= '0';
	--end if;
--
--
	if(rising_edge(clk)) then
	case nxtCompCT is 
	
	when Chunk1 =>
		cData1 := DATA;
	when Chunk2 =>
		cData2 := DATA;
	when Chunk3 =>
		cData3 := DATA;
	when Chunk4 =>
		cData4 := DATA;
	when Chunk5 =>
		cData5 := DATA;
	when Chunk6 =>
		cData6 := DATA;
	when Chunk7 =>
		cData7 := DATA;
	when Chunk8 =>
		cData8 := DATA;
	when idle =>
	  cData1 := "00000000";
		cData2 := "00000000";
		cData3 := "00000000";
		cData4 := "00000000";
		cData5 := "00000000";
		cData6 := "00000000";
		cData7 := "00000000";
		cData8 := "00000000";
		CompData2<="0000000000000000000000000000000000000000000000000000000000000000";
	when Ch1Wait =>
		cData2 := "00000000"; -- Just to do something in this state
	when waitRnd =>
		CompData2 <= cData1&cData2&cData3&cData4&cData5&cData6&cData7&cData8;
	end case;
	--if(rising_edge(clk)) then
	--	CompData2 <= cData1&cData2&cData3&cData4&cData5&cData6&cData7&cData8;
		--CompData2 <= CompData;
	end if;
	end process together;
	

							 
							 
	
	
	rndReg:process(clk,RST,compileCT,nxtrndCT)
	begin
	
		if (RST ='1') then
			rndCT <= "00000";
		elsif((compileCT = waitRnd) and rising_edge(clk) ) then
			rndCT <= nxtrndCT;

			
		end if;
		
	end process;
	
	nxtrndCT <= "00000" when rndCT = "11001" else rndCT + "00001" ;
	
	START <= '1' when compileCT = waitRnd and rndCT < "10001" else '0';
	
	W_ENABLE <= cD_ENABLE;
	R_ENABLE <= '0' when compileCT = idle or compileCT = waitRnd else '1';
	
	ENC_LEFT <= CompData2(63 downto 32);
	ENC_RIGHT <= CompData2(31 downto 0);
	
	
	
	
	
			
			
end behav;
