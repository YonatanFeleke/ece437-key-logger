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
type state_type is (idle, Chunk1, Chunk2, Chunk3, Chunk4,Chunk5,Chunk6,Chunk7,Chunk8,waitRnd);
signal compileCT,nxtCompCT	: state_type;
signal rndCT, nxtrndCT			: std_logic_vector(4 downto 0);
signal CompData,CompData2 	: std_logic_vector(63 downto 0);
signal ctRnd,ctComp   : std_logic;


begin

	Compreg:process(CLK,RST,rndCT,ctComp, EMPTY)
	begin
		
		if(RST = '1') then
			compileCT <= idle;
									
		elsif((rndCT = "00000" or rndCT = "01111")) then
			if(rising_edge(clk)) then
				compileCT <= nxtCompCT;
				CompData2<=CompData;
--				r_enable <= '1';
			end if;
			--if(falling_edge(clk)) then
				--r_enable <= '1';
			--end if;
		end if;
		
	end process;
	
	nxtCompState: process(compileCT,FULL,rndCT)
	begin
	
	case compileCT is
	
	when idle =>
			if(FULL = '1') then
				nxtCompCT <= Chunk1;
			else
				nxtCompCT <= idle;
			end if;
	when Chunk1 => 
				nxtCompCT <= Chunk2;
	when Chunk2 => 
				nxtCompCT <= Chunk3;
	when Chunk3 => 
				nxtCompCT <= Chunk4;
	when Chunk4 => 
				nxtCompCT <= Chunk5;
	when Chunk5 => 
				nxtCompCT <= Chunk6;
	when Chunk6 => 
				nxtCompCT <= Chunk7;
	when Chunk7 => 
				nxtCompCT <= Chunk8;
	when Chunk8 => 
				nxtCompCT <= waitRnd;
	when waitRnd =>
		if(rndCT = "01111") then
				nxtCompCT <= idle;
		else
				nxtCompCT <= waitRnd;
		end if;
	end case;
	
	end process nxtCompState;
	
	with compileCT select
	CompData<= DATA&"00000000000000000000000000000000000000000000000000000000" when  Chunk1,
							 CompData(63 downto 56)& DATA &CompData(47 downto 0) when Chunk2,
							 CompData(63 downto 48)&DATA&CompData(39 downto 0) when Chunk3,
							 CompData(63 downto 40)&DATA&CompData(31 downto 0) when Chunk4,
							 CompData(63 downto 32)&DATA&CompData(23 downto 0) when Chunk5,
							 CompData(63 downto 24)&DATA&CompData(15 downto 0) when Chunk6,
							 CompData(63 downto 16)&DATA&CompData(7 downto 0) when Chunk7,
							 CompData(63 downto 8)&DATA when Chunk8,
							 CompData when waitRnd,
							 "0000000000000000000000000000000000000000000000000000000000000000" when idle;
	
	
	--process(compileCT, DATA, RST,CLK)
	--process(CompData,CLK)
	--variable cData1,cData2,cData3,cData4,cData5,cData6,cData7,cData8 : std_logic_vector(7 downto 0);
	--begin
	
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


	--case compileCT is 
	
	--when "0000" =>
	--	cData1 := DATA;
	--when "0001" =>
	--	cData2 := DATA;
	--when "0010" =>
	--	cData3 := DATA;
	--when "0011" =>
	--	cData4 := DATA;
	--when "0100" =>
	--	cData5 := DATA;
	--when "0101" =>
	--	cData6 := DATA;
	--when "0110" =>
	--	cData7 := DATA;
	--when "0111" =>
	--	cData8 := DATA;
	--when others =>
		--cData8 := DATA;
																
	--end case;
	--if(rising_edge(clk)) then
	--	CompData <= cData1&cData2&cData3&cData4&cData5&cData6&cData7&cData8;
	--	CompData2 <= CompData;
	--end if;
	--end process;
	

							 
							 
	
	
	rndReg:process(clk,RST,compileCT,ctRnd,nxtrndCT)
	begin
	
		if (RST ='1') then
			rndCT <= "00000";
		elsif((compileCT = waitRnd) and rising_edge(clk) ) then
			rndCT <= nxtrndCT;
		end if;
		
	end process;
	
	nxtrndCT <= "00000" when rndCT = "01111" else rndCT + "00001" ;
	
	START <= '0' when rndCT ="0000" else '1';
	
	W_ENABLE <= '1' when rndCT = "01111" else '0';
	R_ENABLE <= '0' when compileCT = idle or compileCT = Chunk1 or compileCT = waitRnd else '1';
	
	ENC_LEFT <= CompData2(63 downto 32);
	ENC_RIGHT <= CompData2(31 downto 0);
	
	
			
			
end behav;
