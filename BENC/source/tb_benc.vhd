-- $Id: $
-- File name:   tb_USB_RCVR.vhd
-- Created:     4/24/2011
-- Author:      Brian Crone
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model
USE ieee.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;
LIBRARY ECE337_IP;
USE ECE337_IP.ALL;

entity tb_BENC is
generic (Period : Time := 3.4722 ns;
				 Period2 :	Time := 10.4167 ns);
end tb_BENC;

architecture TEST of tb_BENC is
	type data_array is array (15 downto 0) of std_logic_vector(47 downto 0);
	signal RKEY: data_array;
  function INT_TO_STD_LOGIC( X: INTEGER; NumBits: INTEGER )
     return STD_LOGIC_VECTOR is
    variable RES : STD_LOGIC_VECTOR(NumBits-1 downto 0);
    variable tmp : INTEGER;
  begin
    tmp := X;
    for i in 0 to NumBits-1 loop
      if (tmp mod 2)=1 then
        res(i) := '1';
      else
        res(i) := '0';
      end if;
      tmp := tmp/2;
    end loop;
    return res;
  end;
	function NRZIencode(DATA: std_logic_vector(7 downto 0); Prevbit: std_logic)
		return	STD_LOGIC_VECTOR is
		variable encoded: std_logic_vector(7 downto 0) := "00000000";
	begin
		if (DATA(0) = '1') then encoded(0) := Prevbit;
		else encoded(0) := not(Prevbit);
		end if;
		for I in 1 to 7 loop
			if(DATA(I) = '1') then encoded(I) := encoded(I-1);
			else encoded(I) := not(encoded(I-1));
			end if;
		end loop;
		return encoded(7 downto 0);
	end;

  component BENC
    PORT(
      CLK          : IN     std_logic;
      D_MINUS      : IN     std_logic;
      D_PLUS       : IN     std_logic;
      READ_EN1     : IN     std_logic;
      RST          : IN     std_logic;
      ADDR         : OUT    std_logic_vector (11 DOWNTO 0);
      DATAOUT      : OUT    std_logic_vector ( 7 DOWNTO 0);
      EMPTY_SRAM   : OUT    std_logic;
      SDATA        : INOUT    std_logic_vector (7 DOWNTO 0);
      r_enable_s   : OUT    std_logic;
      r_error      : OUT    std_logic;
      rcving       : OUT    std_logic;
      w_enable_out : OUT    std_logic
    );
  end component;
  
    component scalable_off_chip_sram is 
  generic (-- Memory Model parameters
            ADDR_SIZE_BITS  : natural  := 12;    -- Address bus size in bits/pins with addresses corresponding to 
                                                -- the starting word of the accesss
            WORD_SIZE_BYTES  : natural  := 1;      -- Word size of the memory in bytes
            DATA_SIZE_WORDS  : natural  := 1;      -- Data bus size in "words"
            READ_DELAY      : time    := 10 ns;  -- Delay/latency per read access (total time between start of supplying address and when the data read from memory appears on the r_data port)
                                                -- Keep the 10 ns delay for on-chip SRAM
            WRITE_DELAY      : time    := 10 ns    -- Delay/latency per write access (total time between start of supplying address and when the w_data value is written into memory)
                                                -- Keep the 10 ns delay for on-chip SRAM
          );

    PORT(
         mem_clr : in boolean;
         mem_init : in boolean;
         mem_dump : in boolean;
         verbose : in boolean;
         init_filename : in string(24 downto 1);
         dump_filename : in string(24 downto 1);
         start_address : in natural;
         last_address : in natural;
         r_enable : in std_logic;
         w_enable : in std_logic;
         addr : in std_logic_vector(11 downto 0);
         data : inout std_logic_vector(7 downto 0)
         
    );
  end component;

-- Insert signals Declarations here
  signal CLK : std_logic;
  signal D_MINUS : std_logic;
  signal D_PLUS : std_logic;
  signal RST : std_logic;
  signal RENABLE : std_logic;
  signal EMPTY1 : std_logic;
  signal FULL1 : std_logic;
  signal DATAOUT,SDATA : std_logic_vector (7 DOWNTO 0);
  signal ADDR : std_logic_vector(11 downto 0);
  signal r_error,r_enable_s,w_enable_out : std_logic;
  signal rcving : std_logic;
	signal testvector	:	std_logic_vector(7 downto 0);		
	signal CRC	:	std_logic_vector(15 downto 0);
	signal testdata	:	std_logic_vector(63 downto 0);

  signal mem_clr : boolean;
  signal mem_init : boolean;
  signal mem_dump : boolean;
  signal verbose : boolean;
  signal init_filename : string(24 downto 1);
  signal dump_filename : string(24 downto 1);
  signal start_address : natural;
  signal last_address : natural;
	signal  data,wdata,rdata       :  std_logic_vector(7 downto 0);
	
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

	procedure outputdata(
		constant data : in std_logic_vector(7 downto 0);
		constant DATA_RATE : in time;
		signal output : inout std_logic;
		signal minus : inout std_logic) is
		begin
		for i in 0 to DATA'length -1 loop
			output <= data(i);
			minus <= not(data(i));
			wait for DATA_RATE;
			--if ( i = 0) then edge<= '1';
			--elsif (data(i) = data(i-1)) then edge <= '0';
			--else edge <= '1';
			--end if;
			--wait for period;
			--edge <= '0';
			--wait for 6*period;
		end loop;
	END PROCEDURE outputdata;

	procedure outputpacket(
		constant data : in std_logic_vector(63 downto 0);
		constant CRC	: in std_logic_vector(15 downto 0);
		signal	DPLUS	:	inout std_logic;
		signal	DMINUS	:	inout	std_logic;
		signal	testvector1	:	inout	std_logic_vector(7 downto 0)) 
		is
		variable tmpbyte : std_logic_vector(7 downto 0);
		variable revData	:	std_logic_vector(63 downto 0);
		variable revCRC	:	std_logic_vector(15 downto 0); 
		begin
			for I in 0 to 63 loop
				revData(I) := data(63-I);
			end loop;
			for I in 0 to 15 loop
				revCRC(I) := CRC(15 - I);	
			end loop;
			tmpbyte := NRZIencode("10000000", '1');--SYNC Byte;
			testvector1 <= tmpbyte;
			wait for Period2;
			outputdata(tmpbyte, Period2*8, DPLUS, DMINUS);
			tmpbyte := NRZIencode("11000011",tmpbyte(7));
			testvector1 <= tmpbyte;
			outputdata(tmpbyte,Period2*8,DPLUS,DMINUS);
			for I in 1 to 8 loop
				tmpbyte := NRZIencode(revData((8*I - 1) downto (8*I-8)),tmpbyte(7));
				testvector1 <= tmpbyte;
				outputdata(tmpbyte, Period2*8, DPLUS, DMINUS);
			end loop;
			tmpbyte := NRZIencode(revCRC(7 downto 0), tmpbyte(7));
			testvector1 <= tmpbyte;
			outputdata(tmpbyte,Period2*8,DPLUS,DMINUS); 
			tmpbyte := NRZIencode(revCRC(15 downto 8), tmpbyte(7));
			testvector1 <= tmpbyte;
			outputdata(tmpbyte,Period2*8,DPLUS,DMINUS);
			DPLUS <= '0';
			DMINUS <= '0';


		END PROCEDURE outputpacket;
-- signal <name> : <type>;

begin

CLKGEN: process
  variable CLK_tmp: std_logic := '0';
begin
  CLK_tmp := not CLK_tmp;
  CLK <= CLK_tmp;
  wait for Period/2;
end process;

  DUT: BENC port map(
                CLK => CLK,
                D_MINUS => D_MINUS,
                D_PLUS => D_PLUS,
                RST => RST,
                READ_EN1 => RENABLE,
                --EMPTY1 => EMPTY1,
                --FULL1 => FULL1,
                ADDR => ADDR,
                DATAOUT => DATAOUT,
                SDATA => SDATA,
                r_enable_s => r_enable_s,
                w_enable_out =>w_enable_out,
                
                r_error => r_error,
                rcving => rcving
                );
                
                	U_3: scalable_off_chip_sram 
  generic map (
                  -- Memory interface parameters
                  ADDR_SIZE_BITS  => 12,
                  WORD_SIZE_BYTES  => 1,
                  DATA_SIZE_WORDS  => 1,
                  READ_DELAY      => 10 ns,  -- CLK is 2 ns longer than access delay for conservative padding for flipflop setup times and propagation delays from the external SRAM chip to the internal flipflops
                  WRITE_DELAY      => 10 ns    -- CLK is 2 ns longer than access delay for conservative padding for Real SRAM hold times and propagation delays from the internal flipflops to the external SRAM chip
                )
	port map(
                mem_clr => mem_clr,
                mem_init => mem_init,
                mem_dump => mem_dump,
                verbose => verbose,
                init_filename => init_filename,
                dump_filename => dump_filename,
                start_address => start_address,
                last_address => last_address,
                r_enable => r_enable_s,
                w_enable => w_enable_out,
                addr => addr,
                data => data
                );
                
                
                
 IO_DATA: process (w_enable_out, r_enable_s, data, wdata)
  begin
    if (r_enable_s = '1') then
      -- Read mode -> the data pins should connect to the r_data bus & the other bus should float
      rdata  <= data;
      data        <= (others=>'Z');
    elsif(w_enable_out = '1') then
      -- Write mode -> the data pins should connect to the w_data bus & the other bus should float
      rdata  <= (others=>'Z');
      
      data  <= wdata;
    else
      -- Disconnect both busses
      rdata  <= (others=>'Z');
           
      data        <= (others=>'Z');
    end if;
  end process IO_DATA;                

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process
	variable TestByte : std_logic_vector(7 downto 0);
	variable SYNC	:	std_logic_vector(7 downto 0) := "10000000";
	variable DATA0	:	std_logic_vector(7 downto 0) := "11000011";
	variable DATA1	:	std_logic_vector(7 downto 0) := "01001011";
  begin

-- Insert TEST BENCH Code Here
		
		mem_clr <= FALSE;

    mem_init <= FALSE;

    mem_dump <= FALSE;

    verbose <= FALSE;

    init_filename <= "source/test_mem_init.txt";

    dump_filename <= "source/test_mem_dump.txt";

    start_address <= 0;

    last_address <= 4092;
		
		
		
		
		testdata <= "00000000" & "10000000" & "01000000" & "11000000" & "11000100" & "10100010" & "11100110" & "10010001";
		CRC <= "1101100010001000";
		
    D_MINUS <= '0';

    D_PLUS <= '1';

    RST <= '0';

    RENABLE <= '0';

    wait for Period2;
    RST <= '1';
    wait for Period2*8;
    RST <= '0';
		wait for Period2*8;
    RST <= '1';
    wait for Period2*8;
    RST <= '0';
		wait for Period2;
		outputpacket(testdata,CRC, D_PLUS, D_MINUS, testvector);
		--outputpacket(testdata,CRC, D_PLUS, D_MINUS, testvector);

		wait;
  end process;
end TEST;
