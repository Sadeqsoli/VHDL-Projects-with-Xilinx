LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY fa_16bit_tb IS
END fa_16bit_tb;
 
ARCHITECTURE behavior OF fa_16bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fa_16bit
    PORT(
         a : IN  std_logic_vector(15 downto 0);
         b : IN  std_logic_vector(15 downto 0);
         cin : IN  std_logic;
         s : OUT  std_logic_vector(15 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(15 downto 0) := (others => '0');
   signal b : std_logic_vector(15 downto 0) := (others => '0');
   signal cin : std_logic := '0';

 	--Outputs
   signal s : std_logic_vector(15 downto 0);
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fa_16bit PORT MAP (
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
      wait for 100 ns;	
		a <= (2 downto 0 => '0', 15 downto 12 => '0', others => '1');	
				
		b <= (2 downto 0 => '0', 15 downto 13 => '0', others => '1')	;
		cin <= '0';		
				
     wait for 100 ns;	
		a <= (5 downto 0 => '0', 15 downto 11 => '0', others => '1');	
				
		b <= (3 downto 0 => '0', 15 downto 12 => '0', others => '1');
		cin <= '0';	
				
     wait for 100 ns;	
		a <= (4 downto 0 => '0', 15 downto 12 => '0', 7 => '0', others => '1');	
				
		b <= (3 downto 0 => '0', 15 downto 6 => '0', others => '1'); 
		cin <= '0';	
				
     wait for 100 ns;	
		a <= (8 downto 0 => '0', 15 downto 13 => '0', others => '1');	
				
		b <= (10 downto 0 => '0', 15 downto 13 => '0', others => '1'); 
		cin <= '0';	
      wait;
   end process;

END;
