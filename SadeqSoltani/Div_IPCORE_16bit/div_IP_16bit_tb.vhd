
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY div_IP_16bit_tb IS
END div_IP_16bit_tb;
 
ARCHITECTURE behavior OF div_IP_16bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT div_16bit_top
    PORT(
         dividend : IN  std_logic_vector(15 downto 0);
         divisor : IN  std_logic_vector(15 downto 0);
         clk : IN  std_logic;
         quotient : OUT  std_logic_vector(15 downto 0);
         fractional : OUT  std_logic_vector(15 downto 0);
         rfd : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal dividend : std_logic_vector(15 downto 0) := (others => '0');
   signal divisor : std_logic_vector(15 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal quotient : std_logic_vector(15 downto 0);
   signal fractional : std_logic_vector(15 downto 0);
   signal rfd : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: div_16bit_top PORT MAP (
          dividend => dividend,
          divisor => divisor,
          clk => clk,
          quotient => quotient,
          fractional => fractional,
          rfd => rfd
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
		rfd 		<= '0';
		dividend <= x"00ff";
		divisor 	<= x"0023";
		
		wait for 100 ns;	
      wait until rfd = '1';
		rfd 		<= '0';

		wait for 100 ns;	
		dividend <= x"00ff";
		divisor 	<= x"000f";
		-- hold reset state for 100 ns.
      wait until rfd = '1';
		rfd 		<= '0';

		wait for 100 ns;	
		dividend <= x"003f";
		divisor 	<= x"0003";
		-- hold reset state for 100 ns.
      wait until rfd = '1';
      wait;
   end process;

END;
