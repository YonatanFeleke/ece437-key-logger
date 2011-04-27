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
type state_type is (idle, Chunk1,Chunk2,Chunk3,Chunk4,Chunk5,Chunk6,Chunk7,Chunk8,write);
signal state,nextstate : state_type;
--signal tDATA : std_logic_vector(7 downto 0);

begin

	DeCompReg: process(CLK,D_ENABLE)
	begin
		if(D_ENABLE = '0') then
			state <= idle;
		elsif(rising_edge(CLK)) then
			state <= nextstate;
			--DATA <= tDATA;
		end if;
		
	end process DeCompReg;
	
	
	nextLogic: process(state,D_ENABLE)
	begin
		
		--if(D_ENABLE = '0') then
			nextstate <= idle;
		--else
		--	nextstate <= state;
		--end if;
		

		case state is
		when idle =>
			if(D_ENABLE = '1') then
				nextstate <= Chunk1;
			else
				nextstate <= idle;
			end if;
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
			nextstate <= write;
		when write =>
			nextstate <= idle;
		end case;
		
		
		
	end process nextLogic;
	
	
	
	--outLogic: process(state)
	--begin
	
		--case state is 
		
		--when Chunk1 =>
		--		DATA <= OUTDATA(63 downto 56);
		--when Chunk2 =>
	--			DATA <= OUTDATA(55 downto 48);
--		when Chunk3 =>
--				DATA <= OUTDATA(47 downto 40);
--		when Chunk4 =>
--				DATA <= OUTDATA(39 downto 32);
--		when Chunk5 =>
--				DATA <= OUTDATA(31 downto 24);
--		when Chunk6 =>
--				DATA <= OUTDATA(23 downto 16);
--		when Chunk7 =>
--				DATA <= OUTDATA(15 downto 8);
--		when Chunk8 =>
--				DATA <= OUTDATA(7 downto 0);
--		when idle =>
--				DATA <= "00000000";
--		end case;
--	end process outLogic;


	with state select
	DATA<= OUTDATA(63 downto 56) when  Chunk1,
				 OUTDATA(55 downto 48) when Chunk2,
				 OUTDATA(47 downto 40) when Chunk3,
				 OUTDATA(39 downto 32) when Chunk4,
				 OUTDATA(31 downto 24) when Chunk5,
				 OUTDATA(23 downto 16) when Chunk6,
				 OUTDATA(15 downto 8) when Chunk7,
				 OUTDATA(7 downto 0) when Chunk8,
				 OUTDATA(7 downto 0) when write,
				 "00000000" when others;				
	
	W_ENABLE <= '0' when state = idle else '1';
	
end behav;
