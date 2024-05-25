library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity fa_4bit is
    Port ( a,b : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end fa_4bit;

architecture Behavioral of fa_4bit is

	COMPONENT fa_1bit
	PORT(
		a : IN std_logic;
		b : IN std_logic;
		cin : IN std_logic;          
		s : OUT std_logic;
		cout : OUT std_logic
		);
	END COMPONENT;

	signal c_input : std_logic_vector (2 downto 0) := "000";

begin
	fa_1bit_0: fa_1bit PORT MAP(
		a => a(0),
		b => b(0),
		cin => cin,
		s => s(0),
		cout => c_input(0)
	);
	fa_1bit_1: fa_1bit PORT MAP(
		a => a(1),
		b => b(1),
		cin => c_input(0),
		s => s(1),
		cout => c_input(1)
	);
	fa_1bit_2: fa_1bit PORT MAP(
		a => a(2),
		b => b(2),
		cin => c_input(1),
		s => s(2),
		cout => c_input(2)
	);
	fa_1bit_3: fa_1bit PORT MAP(
		a => a(3),
		b => b(3),
		cin =>  c_input(2),
		s => s(3),
		cout => cout
	);

end Behavioral;

