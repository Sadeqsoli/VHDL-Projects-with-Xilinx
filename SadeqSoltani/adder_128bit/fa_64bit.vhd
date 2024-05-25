library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity fa_64bit is
    Port ( a,b : in  STD_LOGIC_VECTOR (63 downto 0);
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (63 downto 0);
           cout : out  STD_LOGIC);
end fa_64bit;

architecture Behavioral of fa_64bit is
	signal c_input : std_logic := '0';
	COMPONENT fa_32bit
	PORT(
		a : IN std_logic_vector(31 downto 0);
		b : IN std_logic_vector(31 downto 0);
		cin : IN std_logic;          
		s : OUT std_logic_vector(31 downto 0);
		cout : OUT std_logic
		);
	END COMPONENT;

begin
	fa_32bit_0: fa_32bit PORT MAP(
		a => a(31 downto 0),
		b => b(31 downto 0),
		cin => cin,
		s => s(31 downto 0),
		cout => c_input
	);
	fa_32bit_1: fa_32bit PORT MAP(
		a => a(63 downto 32),
		b => b(63 downto 32),
		cin => c_input,
		s => s(63 downto 32),
		cout => cout
	);
end Behavioral;

