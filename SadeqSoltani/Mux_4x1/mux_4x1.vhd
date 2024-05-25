
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4x1 is
    Port ( input : in  STD_LOGIC_VECTOR (3 downto 0);
           selector : in  STD_LOGIC_VECTOR (1 downto 0);
           output : out  STD_LOGIC);
end mux_4x1;

architecture Behavioral of mux_4x1 is

begin
		output <= input(0) when selector = "00" else
				    input(1) when selector = "01" else
				    input(2) when selector = "10" else
				    input(3) when selector = "11" else
					 'Z';

end Behavioral;

