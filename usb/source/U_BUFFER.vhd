library ieee;
use ieee.std_logic_1164.all;

entity U_BUFFER is
	port
	(
		D_CLK						: in	std_logic;
		RST						:	in std_logic;
		W_ENABLE			:	in std_logic;	
		EOP						: in std_logic;
		W_ENABLE_OUT	:	out	std_logic;
		RCV_DATA			:	in	std_logic_vector(7 downto 0);
		W_DATA				:	out	std_logic_vector(7 downto 0)
	);
end U_BUFFER;


architecture buffer16 of U_BUFFER is
	signal Byte0, Byte1, next0, next1	:	std_logic_vector(7 downto 0);
	signal ctr : integer range 0 to 2;  
begin
    
   
  divide: process (D_CLK,RST)
	--variable ctr	: integer range 0 to 5;
  begin  -- process
		
		if(RST = '1') then
			Byte0 <= "00000000";
			Byte1 <= "00000000";
			next0 <= "00000000";
			next1 <= "00000000";
      ctr <= 0;
			--prescnt <= 0;
		elsif (rising_edge(d_clk)) then

      if(W_ENABLE = '1') then
					Byte0 <= RCV_DATA;
					Byte1 <= Byte0;
					--W_DATA <= Byte1;
				if(ctr < 2) then ctr <= ctr + 1;
				else W_DATA <= Byte1;
				end if;
			end if;
			if(W_ENABLE = '1' and ctr = 2) then W_ENABLE_OUT <= '1';
			else	W_ENABLE_OUT <= '0';
			end if;
			if(EOP = '1') then ctr <= 0;
			end if;
		end if;

	end process;
		--W_ENABLE_OUT <= '1' when(W_ENABLE = '1' and ctr = 2) else '0';

end buffer16;
