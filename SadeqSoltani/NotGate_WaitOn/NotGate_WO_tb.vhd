LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY NotGate_WO_tb IS
END NotGate_WO_tb;
 
ARCHITECTURE behavior OF NotGate_WO_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT NotGate_WO
    PORT(
         a : IN  std_logic;
         o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';

 	--Outputs
   signal o : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: NotGate_WO PORT MAP (
          a => a,
          o => o
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100 ns;	
		a <= '0';
		
      wait for 100 ns;	
				a <= '1';

      wait for 100 ns;	
				a <= '0';

      wait for 100 ns;	
				a <= '1';

      -- insert stimulus here 

      wait;
   end process;

END;
