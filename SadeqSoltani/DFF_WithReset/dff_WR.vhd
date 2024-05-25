library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dff_WR is
    Port ( d,rst,clk : in  STD_LOGIC;
           q : out  STD_LOGIC);
end dff_WR;

architecture Behavioral of dff_WR is

begin
	process(rst, clk)
	begin
			if(rst = '1') then
				q <= '0';
			elsif (clk'event and clk ='1') then
				q <= d;
			end if;
	 end process;		

end Behavioral;

