library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NotGste is
    Port ( a : in  STD_LOGIC;
           c : out  STD_LOGIC);
end NotGste;

architecture Behavioral of NotGste is

begin
	process(a)
	 begin
			c <= not a;
	 end process;		
	

end Behavioral;

