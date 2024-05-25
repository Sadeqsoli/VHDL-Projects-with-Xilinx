
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Compare_tb IS
END Compare_tb;
 
ARCHITECTURE behavior OF Compare_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Compare
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Y0 : OUT  std_logic;
         Y1 : OUT  std_logic;
         Y2 : OUT  std_logic;
         Y3 : OUT  std_logic;
         Y4 : OUT  std_logic;
         Y5 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Y0 : std_logic;
   signal Y1 : std_logic;
   signal Y2 : std_logic;
   signal Y3 : std_logic;
   signal Y4 : std_logic;
   signal Y5 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Compare PORT MAP (
          A => A,
          B => B,
          Y0 => Y0,
          Y1 => Y1,
          Y2 => Y2,
          Y3 => Y3,
          Y4 => Y4,
          Y5 => Y5
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
	
      -- hold reset state for 100 ns.
      wait for 100 ns;
		A <= "1111";
		B <= "1000";
		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		A <= "0000";
		B <= "1001";
		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		A <= "1100";
		B <= "0001";
		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
			
		A <= "0001";
		B <= "0001";
      wait;
   end process;

END;
