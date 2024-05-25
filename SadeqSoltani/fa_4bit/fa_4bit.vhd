library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fa_4bit is
    Port ( a,b : in  STD_LOGIC_VECTOR (3 downto 0);
           c_input : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (3 downto 0);
           c_output : out  STD_LOGIC);
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
	signal cout_fa0 : std_logic := '0';
	signal cout_fa1 : std_logic := '0';
	signal cout_fa2 : std_logic := '0';

begin
	fa0: fa_1bit PORT MAP(
		a => a(0),
		b => b(0),
		cin => c_input,
		s => s(0),
		cout => cout_fa0
	);
	fa1: fa_1bit PORT MAP(
		a => a(1),
		b => b(1),
		cin => cout_fa0,
		s => s(1),
		cout => cout_fa1
	);
	fa2: fa_1bit PORT MAP(
		a => a(2),
		b => b(2),
		cin => cout_fa1,
		s => s(2),
		cout => cout_fa2
	);
	fa3: fa_1bit PORT MAP(
		a => a(3),
		b => b(3),
		cin => cout_fa2,
		s => s(3),
		cout => c_output
	);
end Behavioral;

