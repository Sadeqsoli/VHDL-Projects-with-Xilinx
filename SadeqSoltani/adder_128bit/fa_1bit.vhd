library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fa_1bit is
    Port ( a,b,cin : in  STD_LOGIC;
           s,cout : out  STD_LOGIC);
end fa_1bit;

architecture Behavioral of fa_1bit is

begin
	s 		<= a xor b xor cin ;
	cout	<= (a and b) or (a and cin) or (b and cin);

end Behavioral;

