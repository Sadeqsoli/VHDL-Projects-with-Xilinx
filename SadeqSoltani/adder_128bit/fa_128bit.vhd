library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity fa_128bit is
    Port ( a,b : in  STD_LOGIC_VECTOR (127 downto 0);
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (127 downto 0);
           cout : out  STD_LOGIC);
end fa_128bit;

architecture Behavioral of fa_128bit is
	COMPONENT fa_64bit
	PORT(
		a : IN std_logic_vector(63 downto 0);
		b : IN std_logic_vector(63 downto 0);
		cin : IN std_logic;          
		s : OUT std_logic_vector(63 downto 0);
		cout : OUT std_logic
		);
	END COMPONENT;
	signal c_input : std_logic:= '0';
	
begin

	fa_64bit_0: fa_64bit PORT MAP(
		a => a(63 downto 0),
		b => b(63 downto 0),
		cin => cin,
		s => s(63 downto 0),
		cout => c_input
	);

	fa_64bit_1: fa_64bit PORT MAP(
		a => a(127 downto 64),
		b => b(127 downto 64),
		cin => c_input,
		s => s(127 downto 64),
		cout => cout
	);

end Behavioral;

