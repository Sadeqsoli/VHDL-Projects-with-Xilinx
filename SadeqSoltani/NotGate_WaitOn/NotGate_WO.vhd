library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NotGate_WO is
    Port ( a : in  STD_LOGIC;
           o : out  STD_LOGIC);
end NotGate_WO;

architecture Behavioral of NotGate_WO is
begin
	n :process
	 begin
			o <= not a;
			wait on a;

	 end process n;	

end Behavioral;

