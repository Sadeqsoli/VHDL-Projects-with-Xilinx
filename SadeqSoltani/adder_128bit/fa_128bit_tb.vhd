LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

ENTITY fa_128bit_tb IS
END fa_128bit_tb;
 
ARCHITECTURE behavior OF fa_128bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fa_128bit
    PORT(
         a : IN  std_logic_vector(127 downto 0);
         b : IN  std_logic_vector(127 downto 0);
         cin : IN  std_logic;
         s : OUT  std_logic_vector(127 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(127 downto 0) := (others => '0');
   signal b : std_logic_vector(127 downto 0) := (others => '0');
   signal cin : std_logic := '0';

 	--Outputs
   signal s : std_logic_vector(127 downto 0);
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fa_128bit PORT MAP (
          a => a,
          b => b,
          cin => cin,
          s => s,
          cout => cout
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
		
		a <= (17 downto 3 => '1', 120 => '1', 53=> '1', 85 downto 80 => '1', others => '0');
		b <= (22 downto 7 => '1', 106 => '1', 97=> '1', 40 downto 32 => '1', others => '0');
		
		cin <= '0';
      wait for 300 ns;	
		
		a <= (17 downto 3 => '1', 56 downto 55 => '1',others => '0');
		b <= (22 downto 7 => '1', 40 downto 39 => '1', others => '0');
		
		cin <= '0';	
      wait for 300 ns;	
		
		a <= (17 downto 3 => '1', others => '0');
		b <= (22 downto 7 => '1', others => '0');
		
		cin <= '0';
		wait for 100 ns;	

      wait;
   end process;

END;
