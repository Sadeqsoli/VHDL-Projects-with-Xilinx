library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder2x4_code is
    Port ( input : in  STD_LOGIC_VECTOR (1 downto 0);
           output : out  STD_LOGIC_VECTOR (3 downto 0));
end Decoder2x4_code;

architecture Behavioral of Decoder2x4_code is

begin
		output <= "0001" when input = "00" else 
					 "0010" when input = "01" else 
					 "0100" when input = "10" else 
					 "1000" when input = "11" else 
					 "0000" ; 
end Behavioral;

