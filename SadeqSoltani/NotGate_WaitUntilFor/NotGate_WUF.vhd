library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NotGate_WUF is
    Port ( a : in  STD_LOGIC;
           c : out  STD_LOGIC);
end NotGate_WUF;

architecture Behavioral of NotGate_WUF is
begin
	process
		begin
		wait until a = '1' for 50 ns;
		c <= not a;

	end process;	
end Behavioral;

