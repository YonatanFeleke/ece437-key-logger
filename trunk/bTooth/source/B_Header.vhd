-- $Id: $
-- File name:   B_Header.vhd
-- Created:     4/10/2011
-- Author:      Yonatan Feleke
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: Outputs the header on the bus to sram 54 bit-> 1/3 fec ENCODED
-- 18 BIT header. 1/3 FEC -> b0b0b0b1b1b1b2b2b2... for the 18 bits
-- UAP = 00000000 : 00001010 : 11011001
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY B_Header IS
		port(		CLK 						:		in	std_logic;
						RST							:		in	std_logic;
						HEADER_EN				:		in	std_logic;
						HEADER					:		OUT	std_logic_vector(53 downto 0);
						HSTORE_EN				:		OUT	std_logic);
END B_Header;


architecture b_header of B_Header is
  signal AM_ADDR: std_logic_vector( 2 downto 0 );--001To identify each slave separately,each slave is assigned a temporary 3-bit address
  signal PTYPE: std_logic_vector( 3 downto 0); -- TYPE The 4-bit TYPE code specifies which packet type is used ACL, SOC
  signal FLOW : std_logic;-- Buffer full=> FLOW=0 else if buffer Empty FLOW=1
  signal ARQN: std_logic;--1-bit acknowledge indication ARQN= 1 succesful recieve
  signal SEQN: std_logic;--1-bit sequence number each new transmitted packet that contains data with CRC,the SEQN bit is inverted
	signal A,B,H_EDGE, H_REDGE: std_logic; -- this is the edge detect for the the HEADER_EN to flip the SEQN
  signal	HEADER_1: std_logic_vector(53 downto 0);
begin
		getHECprocess : process (CLK,RST)
		variable HEC: std_logic_vector(7 downto 0);		--8-bit header error checksum with polynomial 0 1 2 5 7 8
    variable D: std_logic_vector(9 downto 0);
    variable C: std_logic_vector(7 downto 0); -- holder for the initialization via the top 10 bits of the UAP
			begin
				AM_ADDR <= "001"; -- SLAVE 1
			  PTYPE <= "1111"; -- ACL DH5 PACKET 
				FLOW	<= '1';
				ARQN	<= '1';
			  D := SEQN&ARQN&FLOW&PTYPE&AM_ADDR; -- 10 bit header for HEC
			  C :=  "11011001" ; --The 8 bit HEC holder is initialized to the UAP (0->8)
-- HEC = 8bit check sum initialized with the UAP on reset
    HEC(0) := d(8) xor d(6) xor d(4) xor d(2) xor d(1) xor d(0) xor c(0) xor c(2) xor c(4) xor c(6);
    HEC(1) := d(9) xor d(8) xor d(7) xor d(6) xor d(5) xor d(4) xor d(3) xor d(0) xor c(1) xor c(2) xor c(3) xor c(4) xor c(5) xor c(6) xor c(7);
    HEC(2) := d(9) xor d(7) xor d(5) xor d(2) xor d(0) xor c(0) xor c(3) xor c(5) xor c(7);
    HEC(3) := d(8) xor d(6) xor d(3) xor d(1) xor c(1) xor c(4) xor c(6);
    HEC(4) := d(9) xor d(7) xor d(4) xor d(2) xor c(0) xor c(2) xor c(5) xor c(7);
    HEC(5) := d(6) xor d(5) xor d(4) xor d(3) xor d(2) xor d(1) xor d(0) xor c(0) xor c(1) xor c(2) xor c(3) xor c(4);
    HEC(6) := d(7) xor d(6) xor d(5) xor d(4) xor d(3) xor d(2) xor d(1) xor c(0) xor c(1) xor c(2) xor c(3) xor c(4) xor c(5);
    HEC(7) := d(7) xor d(5) xor d(3) xor d(1) xor d(0) xor c(1) xor c(3) xor c(5);
    HEADER_1 <=HEC(7)&HEC(7)&HEC(7)&HEC(6)&HEC(6)&HEC(6)&HEC(5)&HEC(5)&HEC(5)&HEC(4)&HEC(4)&HEC(4)&HEC(3)&HEC(3)&HEC(3)&HEC(2)&HEC(2)&HEC(2)&HEC(1)&HEC(1)&HEC(1)&HEC(0)&HEC(0)&HEC(0)&SEQN&SEQN&SEQN&ARQN&ARQN&ARQN&FLOW&FLOW&FLOW&PTYPE(3)&PTYPE(3)&PTYPE(3)&PTYPE(2)&PTYPE(2)&PTYPE(2)&PTYPE(1)&PTYPE(1)&PTYPE(1)&PTYPE(0)&PTYPE(0)&PTYPE(0)&AM_ADDR(2)&AM_ADDR(2)&AM_ADDR(2)&AM_ADDR(1)&AM_ADDR(1)&AM_ADDR(1)&AM_ADDR(0)&AM_ADDR(0)&AM_ADDR(0);
		end process getHECprocess;
							
outputheader : process (CLK,RST,HEADER_EN,H_REDGE)	
    begin 
      if ( RST = '1') then-- on reset what is the stop
					HEADER <= "000000000000000000000000000000000000000000000000000000";
					HSTORE_EN <= '0';					
      elsif ( rising_edge(clk)) then        
    			 if (HEADER_EN = '1') then
    			 	 if (H_REDGE = '1' ) then 
    			    	  HEADER <= HEADER_1;
    			    	  HSTORE_EN <='1';
       		 		end if;
    		    
  				else -- value indicating not valid via premable => check on sram accept that all are complements
          HEADER <= "000000000000000000000000000000000000000000000000000000"; 
  				  HSTORE_EN <= '0';
	      end if;
      end if;    
    end process outputheader;
    
    EDGElogic: Process(clk, RST,HEADER_EN)
		begin
			
			if (RST = '1') then
				A <= '0';
				B<= '0';
				H_EDGE <= '0';
				SEQN <= '0';
				H_REDGE <= '0';
			elsif(rising_edge(clk))then
				A<= HEADER_EN;
				B<= A;
				if ( A = '0') then -- FALLING EDGE
					H_EDGE <= A xor B;
				  if( (A xor B)  = '1') then 
				  	SEQN <= not SEQN;
				  end if;
				else H_REDGE <= A XOR B;
				end if;
			end if;
			
		end process EDGElogic;

end b_header;

		
