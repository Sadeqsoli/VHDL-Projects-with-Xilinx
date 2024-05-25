LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY NotGate_WU_tb IS
END NotGate_WU_tb;
 
ARCHITECTURE behavior OF NotGate_WU_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT NotGate_WU
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
   uut: NotGate_WU PORT MAP (
          a => a,
          c => c
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		a <= '0';
		  wait for 100 ns;	
		
		a <= '1';
		  wait for 100 ns;	
		
		a <= '0';
      -- insert stimulus here 

      wait;
   end process;

END;
