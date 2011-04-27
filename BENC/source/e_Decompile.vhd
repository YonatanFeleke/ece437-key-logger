-- $Id: $
-- File name:   e_DeCompile.vhd
-- Created:     4/10/2011
-- Author:      Samuel Oshin
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: Decompile 64 bit Encrypted Data


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
USE IEEE.NUMERIC_BIT.ALL;

ENTITY e_DeCompile is
	port(
		OUTDATA			: 	IN			std_logic_vector(63 downto 0);
		D_ENABLE		:		IN			std_logic;
		CLK					:		IN			std_logic;
		DATA				:		OUT			std_logic_vector(7 downto 0);
		W_ENABLE		:		OUT			std_logic);
end e_DeCompile;

architecture behav of e_DeCompile is
--signal compileCT,nxtCompCT	: std_logic_vector(2 downto 0);
type state_type is (idle, Chunk1,Chunk2,Chunk3,Chunk4,Chunk5,Chunk6,Chunk7,Chunk8);
signal state,nextstate : state_type;

begin

	DeCompReg: process(CLK)
	begin
		
		if(rising_edge(clk)) then
			state <= nextstate;
		end if;
		
	end process DeCompReg;
	
	
	nextLogic: process(state,D_ENABLE)
	begin
	
		nextstate <= state;
		
		if(D_ENABLE = '1') then
			case state is
			when idle =>
				nextstate <= Chunk1;
			when Chunk1 =>
				nextstate <= Chunk2;
			when Chunk2 => 
				nextstate <= Chunk3;
			when Chunk3 => 
				nextstate <= Chunk4;
			when Chunk4 => 
				nextstate <= Chunk5;
			when Chunk5 => 
				nextstate <= Chunk6;
			when Chunk6 => 
				nextstate <= Chunk7;
			when Chunk7 => 
				nextstate <= Chunk8;
			when Chunk8 => 
				nextstate <= idle;
			end case;
		end if;
		
		
	end process nextLogic;
	
	outLogic: process(state)
	begin
	
		case state is 
		
		when Chunk1 =>
				DATA <= OUTDATA(63 downto 56);
		when Chunk2 =>
				DATA <= OUTDATA(55 downto 48);
		when Chunk3 =>
				DATA <= OUTDATA(47 downto 40);
		when Chunk4 =>
				DATA <= OUTDATA(39 downto 32);
		when Chunk5 =>
				DATA <= OUTDATA(31 downto 24);
		when Chunk6 =>
				DATA <= OUTDATA(23 downto 16);
		when Chunk7 =>
				DATA <= OUTDATA(15 downto 8);
		when Chunk8 =>
				DATA <= OUTDATA(7 downto 0);
		when idle =>
				DATA <= "00000000";
		end case;
	end process outLogic;
			
	
	W_ENABLE <= '0' when state = idle or state = Chunk1 else clk;
	
end behav;
