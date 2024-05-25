LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY dff_wr_tb IS
END dff_wr_tb;
 
ARCHITECTURE behavior OF dff_wr_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dff_WR
    PORT(
         d : IN  std_logic;
         rst : IN  std_logic;
         clk : IN  std_logic;
         q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic := '0';
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal q : std_logic;

   -- Clock period definitions
   constant clk_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dff_WR PORT MAP (
          d => d,
          rst => rst,
          clk => clk,
          q => q
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		d 	 <= '1';
		rst <= '0';
		wait for 100 ns;	
		
		d 	 <= '0';
		rst <= '0';
		wait for 100 ns;
		d 	 <= '1';
		rst <= '1';
		wait for 100 ns;	
		d 	 <= '0';
		rst <= '0';
		wait for 100 ns;			
		d 	 <= '1';
		wait for 100 ns;	
      -- insert stimulus here 

      wait;
   end process;

END;
