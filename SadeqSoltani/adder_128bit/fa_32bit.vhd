library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity fa_32bit is
    Port ( a,b : in  STD_LOGIC_VECTOR (31 downto 0);
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (31 downto 0);
           cout : out  STD_LOGIC);
end fa_32bit;

architecture Behavioral of fa_32bit is
	COMPONENT fa_16bit
	PORT(
		a : IN std_logic_vector(15 downto 0);
		b : IN std_logic_vector(15 downto 0);
		cin : IN std_logic;          
		s : OUT std_logic_vector(15 downto 0);
		cout : OUT std_logic
		);
	END COMPONENT;
	signal c_input : std_logic := '0';
	
begin
	fa_16bit_0: fa_16bit PORT MAP(
		a => a(15 downto 0),
		b => b(15 downto 0),
		cin => cin,
		s => s(15 downto 0),
		cout => c_input
	);
	fa_16bit_1: fa_16bit PORT MAP(
		a => a(31 downto 16),
		b => b(31 downto 16),
		cin => c_input,
		s => s(31 downto 16),
		cout => cout
	);

end Behavioral;

