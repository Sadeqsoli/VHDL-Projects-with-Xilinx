library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fa_8bit_sub1 is
    Port ( a,b : in  STD_LOGIC_VECTOR (7 downto 0);
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (7 downto 0);
           cout : out  STD_LOGIC);
end fa_8bit_sub1;

architecture Behavioral of fa_8bit_sub1 is
COMPONENT fa_1bit_sub2
	PORT(
		a : IN std_logic;
		b : IN std_logic;
		cin : IN std_logic;          
		s : OUT std_logic;
		cout : OUT std_logic
		);
	END COMPONENT;
	signal c_output: std_logic_vector (6 downto 0) := "0000000"; 
	
	
begin


	fa0: fa_1bit_sub2 PORT MAP(
		a => a(0),
		b => b(0),
		cin => cin,
		s => s(0),
		cout => c_output(0)
	);
	fa1: fa_1bit_sub2 PORT MAP(
		a => a(1),
		b => b(1),
		cin => c_output(0),
		s => s(1),
		cout => c_output(1)
	);
	fa2: fa_1bit_sub2 PORT MAP(
		a => a(2),
		b => b(2),
		cin => c_output(1),
		s => s(2),
		cout => c_output(2)
	);
	fa3: fa_1bit_sub2 PORT MAP(
		a => a(3),
		b => b(3),
		cin => c_output(2),
		s => s(3),
		cout => c_output(3)
	);
	fa4: fa_1bit_sub2 PORT MAP(
		a => a(4),
		b => b(4),
		cin => c_output(3),
		s => s(4),
		cout => c_output(4)
	);
	fa5: fa_1bit_sub2 PORT MAP(
		a => a(5),
		b => b(5),
		cin => c_output(4),
		s => s(5),
		cout => c_output(5)
	);
	fa6: fa_1bit_sub2 PORT MAP(
		a => a(6),
		b => b(6),
		cin => c_output(5),
		s => s(6),
		cout => c_output(6)
	);
	fa7: fa_1bit_sub2 PORT MAP(
		a => a(7),
		b => b(7),
		cin => c_output(6),
		s => s(7),
		cout => cout
	);

end Behavioral;

