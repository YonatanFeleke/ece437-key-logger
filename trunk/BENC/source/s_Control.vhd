-- $Id: $
-- File name:   s_CONTROL
-- Created:     4/25/2011
-- Author:      Samuel Oshin
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: SRAM CONTROLLER


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

Entity s_Control is
  port(clk  : in std_logic;
      rst  : in std_logic;
      full  : in std_logic;
      resend : in std_logic;
      r_enable_in : in std_logic;
      IDATA			: in std_logic_vector(7 downto 0);
      empty 		: out std_logic;
      r_enable_out  : out std_logic;
      r_enable_s : out std_logic;
      ADDR       : out std_logic_vector(11 downto 0);
      ODATA			 : out std_logic_vector(7 downto 0);
      SDATA			 : inout std_logic_vector(7 downto 0);
      w_enable_out  : out std_logic);
    end s_Control;
    
    
architecture behav of s_Control is 
type state_type is (idle, fdata,fstrobe,pdata);
signal state,nxtstate : state_type;
signal RADDR,PRADDR,WADDR,nRADDR,nPRADDR,nWADDR: std_logic_vector(11 downto 0);
signal cnt8,ncnt8: std_logic_vector(2 downto 0);
signal icnt8,incnt8: std_logic_vector(2 downto 0);
signal sWrite : std_logic;


begin 

	
	statereg: process(clk,state,rst)
	begin
			if(rst = '1') then
				state <= idle;
				cnt8 <= "000";
				icnt8 <= "000";
				RADDR <= (others=>'0');
				PRADDR<= (others=>'0');
				WADDR<= (others=>'0');
		
			elsif(rising_edge(clk)) then
				state <= nxtstate;
				cnt8<= ncnt8;
				icnt8 <= incnt8;
				RADDR <= nRADDR;
				PRADDR <= nPRADDR;
				WADDR <= nWADDR;
			end if;
			
	end process statereg;
	
	
	nextlogic: process(state, full,icnt8,cnt8,r_enable_in,resend,rst)
	begin

	incnt8 <= "000";
	ncnt8 <= "000";
	nxtstate <= state;
	if(rst = '1') then
		sWrite <= '0';
		nWADDR <= "000000000000"; 
		nRADDR <= "000000000000"; 
		nPRADDR <= "000000000000"; 
	else

	if(RADDR = "000000000000" or sWrite = '0') then
			nRADDR <= WADDR;
			nPRADDR <= WADDR;
	end if;
	
	if(resend = '1') then
		if((PRADDR - RADDR) = "111111111111") then
			nPRADDR <= WADDR;
			nRADDR <= WADDR;
		else
			nRADDR <= nPRADDR;
		end if;
	end if;
		 
	
	
	
		case state is
		
			when idle => 
				
				if (full = '1') then
					nxtstate <= fdata;
				elsif(r_enable_in = '1') then
					
					nxtstate <= pdata;
				else
					nxtstate <= state;
				end if;
				
			when fdata =>
				if(cnt8 = "111" and icnt8 = "111") then
					nxtstate <= idle;
				elsif(icnt8 = "111") then
					nxtstate <= fstrobe;
					ncnt8 <= cnt8 + 1;
				else
					nxtstate <= state;
					incnt8 <= icnt8 + 1;
					ncnt8 <= cnt8;
				end if;
				
			when fstrobe =>
				--if(icnt8 = "111") then
					nxtstate <= fdata;
					nWADDR <= WADDR + 1;
					ncnt8 <= cnt8;
				--else
					--incnt8 <= icnt8 + 1;
				--end if;
				
			when pdata => 
				sWrite <= '1';
				if(icnt8 = "111") then
					nRADDR <= RADDR - 1;
					nxtstate <= idle;
				else
					incnt8 <= icnt8 + 1;
					nxtstate <= state;
				end if;
				
			end case;
	end if;
			
	end process nextlogic;
	
	
	outlogic: process(state,IDATA,WADDR,SDATA)
	begin
				r_enable_out <= '0';
				r_enable_s <= '0';
				w_enable_out <= '0';
				ADDR <= (others=>'Z');
		
		case state is
		
			when idle => 
				
				r_enable_out <= '0';
				r_enable_s <= '0';
				w_enable_out <= '0';
				ADDR <= (others=>'Z');
				
			when fdata => 
				
				ADDR <=  WADDR;
				r_enable_out<= '0';
				r_enable_s <= '0';
				w_enable_out <= '1';
				SDATA <= IDATA;
				ODATA <= (others=>'Z');
				
			when fstrobe =>
				
				r_enable_out <= '1';
				r_enable_s <= '0';
				w_enable_out <= '1';
				ADDR <= (others=>'Z');
				
			when pdata =>
				
				ADDR <= RADDR;
				r_enable_out <= '0';
				r_enable_s <= '1';
				w_enable_out <= '0';
				SDATA <= (others=>'Z');
				ODATA <= SDATA;
				
		end case;
		
	end process outlogic;
	
	Empty <= '1' when WADDR = "000000000000" else '0';
	
	
end behav;
			
			
				
				
				
				
			
				
				
				
					
					
				

									
