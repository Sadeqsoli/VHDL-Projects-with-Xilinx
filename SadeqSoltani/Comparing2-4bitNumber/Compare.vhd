library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Compare is

	port(A: in std_logic_vector(3 downto 0);
		B: in std_logic_vector (3 downto 0);
		Y0: out std_logic;
		Y1: out std_logic;
		Y2: out std_logic;
		Y3: out std_logic;
		Y4: out std_logic;
		Y5: out std_logic);
end Compare;

architecture Behavioral of Compare is

begin
		Y0 <= '1' when a = b else'0';
		Y1 <= '1' when a /= b else'0';
		Y2 <= '1' when a < b else'0';
		Y3 <= '1' when a <= b else'0';
		Y4 <= '1' when a > b else'0';
		Y5 <= '1' when a >= b else'0';
end Behavioral;

