LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY NotGate_tb IS
END NotGate_tb;
 
ARCHITECTURE behavior OF NotGate_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT NotGste
    PORT(
         a : IN  std_logic;
         c : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';

 	--Outputs
   signal c : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: NotGste PORT MAP (
          a => a,
          c => c
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      a <= '1';
		wait for 100 ns;	

      a <= '0';
		wait for 100 ns;	

      a <= '1';
		wait for 100 ns;	

      a <= '0';

      

      wait;
   end process;

END;
