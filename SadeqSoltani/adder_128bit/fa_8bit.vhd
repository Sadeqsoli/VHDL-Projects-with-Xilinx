library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity fa_8bit is
    Port ( a,b : in  STD_LOGIC_VECTOR (7 downto 0);
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (7 downto 0);
           cout : out  STD_LOGIC);
end fa_8bit;

architecture Behavioral of fa_8bit is
	COMPONENT fa_4bit
	PORT(
		a : IN std_logic_vector(3 downto 0);
		b : IN std_logic_vector(3 downto 0);
		cin : IN std_logic;          
		s : OUT std_logic_vector(3 downto 0);
		cout : OUT std_logic
		);
	END COMPONENT;
	signal c_input : std_logic := '0';
	
begin
	fa_4bit_0: fa_4bit PORT MAP(
		a => a(3 downto 0),
		b => b(3 downto 0),
		cin => cin ,
		s => s(3 downto 0),
		cout =>c_input 
	);
	
	fa_4bit_1: fa_4bit PORT MAP(
		a => a(7 downto 4),
		b => b(7 downto 4),
		cin => c_input ,
		s => s(7 downto 4),
		cout => cout 
	);

end Behavioral;

