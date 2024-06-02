library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity div_16bit_top is
    Port ( dividend, divisor : in  STD_LOGIC_VECTOR (15 downto 0);
           clk : in  STD_LOGIC;
           quotient,fractional : out  STD_LOGIC_VECTOR (15 downto 0);
           rfd : out  STD_LOGIC);
end div_16bit_top;

architecture Behavioral of div_16bit_top is
component div_16bit
	port (
	clk: in std_logic;
	rfd: out std_logic;
	dividend: in std_logic_vector(15 downto 0);
	divisor: in std_logic_vector(15 downto 0);
	quotient: out std_logic_vector(15 downto 0);
	fractional: out std_logic_vector(15 downto 0));
end component;
begin
		myDivider : div_16bit
		port map (
			clk => clk,
			rfd => rfd,
			dividend => dividend,
			divisor => divisor,
			quotient => quotient,
			fractional => fractional);

end Behavioral;

