
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY decoder2x4_tb IS
END decoder2x4_tb;
 
ARCHITECTURE behavior OF decoder2x4_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Decoder2x4_code
    PORT(
         input : IN  std_logic_vector(1 downto 0);
         output : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Decoder2x4_code PORT MAP (
          input => input,
          output => output
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
	
		input <= "00";
		
      wait for 100 ns;	
		input <= "01";
		
      wait for 100 ns;	
		input <= "10";
		
      wait for 100 ns;	
		input <= "11";


      wait;
   end process;

END;
