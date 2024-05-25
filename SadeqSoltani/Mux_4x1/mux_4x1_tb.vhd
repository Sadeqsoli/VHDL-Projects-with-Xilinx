LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY mux_4x1_tb IS
END mux_4x1_tb;
 
ARCHITECTURE behavior OF mux_4x1_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_4x1
    PORT(
         input : IN  std_logic_vector(3 downto 0);
         selector : IN  std_logic_vector(1 downto 0);
         output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(3 downto 0) := (others => '0');
   signal selector : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_4x1 PORT MAP (
          input => input,
          selector => selector,
          output => output
        );


   -- Stimulus process
   stim_proc: process
   begin		
	
		input  <= "0001";
		selector <= "00";
      wait for 100 ns;	
		
		input  <= "0010";
		selector <= "01";
      wait for 100 ns;
		
		input  <= "0100";
		selector <= "10";
      wait for 100 ns;	
		
		input  <= "1000";
		selector <= "11";
      wait for 100 ns;	

      wait;
   end process;

END;
