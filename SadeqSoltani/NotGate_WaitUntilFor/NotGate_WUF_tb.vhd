LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY NotGate_WUF_tb IS
END NotGate_WUF_tb;
 
ARCHITECTURE behavior OF NotGate_WUF_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT NotGate_WUF
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
   uut: NotGate_WUF PORT MAP (
          a => a,
          c => c
        );



   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		
		a <= '1';
		wait for 60 ns;	
      -- insert stimulus here 

      wait;
   end process;

END;
