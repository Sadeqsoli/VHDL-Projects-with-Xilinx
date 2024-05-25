library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NotGate_WU is
    Port ( a : in  STD_LOGIC;
           c : out  STD_LOGIC);
end NotGate_WU;

architecture Behavioral of NotGate_WU is

begin
	process is 
	begin 
		wait until a = '1';
		c <= not a;
	end process;
end Behavioral;

