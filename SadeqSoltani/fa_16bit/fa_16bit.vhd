library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fa_16bit is
    Port ( a,b : in  STD_LOGIC_VECTOR (15 downto 0);
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (15 downto 0);
           cout : out  STD_LOGIC);
end fa_16bit;

architecture Behavioral of fa_16bit is
COMPONENT fa_8bit_sub1
	PORT(
		a : IN std_logic_vector(7 downto 0);
		b : IN std_logic_vector(7 downto 0);
		cin : IN std_logic;          
		s : OUT std_logic_vector(7 downto 0);
		cout : OUT std_logic
		);
	END COMPONENT;
signal c_output: std_logic := '0';
	
begin
	fa_8bit_0: fa_8bit_sub1 PORT MAP(
		a => a(7 downto 0),
		b => b(7 downto 0),
		cin => cin,
		s => s(7 downto 0),
		cout => c_output
	);
	fa_8bit_1: fa_8bit_sub1 PORT MAP(
		a => a(15 downto 8),
		b => b(15 downto 8),
		cin =>c_output ,
		s => s(15 downto 8),
		cout => cout
	);

end Behavioral;

