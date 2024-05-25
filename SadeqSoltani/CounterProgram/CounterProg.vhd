library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity CounterProg is
    Port ( clk,up_down : in  STD_LOGIC;
           counter_out : out  std_logic_vector(3 downto 0));
end CounterProg;

architecture Behavioral of CounterProg is
	signal count_int : unsigned(3 downto 0) := (others => '0');
begin
		counter_out <= std_logic_vector(count_int);
		process(clk)
		begin 
			if(rising_edge(clk)) then 
				if(up_down = '0') then
					count_int <= count_int +1;
				else
					count_int <= count_int -1;
				end if;
			end if;
		end process;
end Behavioral;

