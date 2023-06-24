
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY counter_TB IS
END counter_TB;
 
ARCHITECTURE behavior OF counter_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counter
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         ce : IN  std_logic;
         clr : IN  std_logic;
         count : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal ce : std_logic := '0';
   signal clr : std_logic := '0';

 	--Outputs
   signal count : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 30 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counter 
	PORT MAP (
          clk => clk,
          rst => rst,
          ce => ce,
          clr => clr,
          count => count
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
	
      rst <= '1';
		ce <= '1';
		clr <= '0';
      wait for clk_period;
		rst <= '0';
		
		wait for clk_period*10;

		clr <= '1'; -- count must go back to 1
		wait for clk_period;
		clr <= '0';
		
		wait for clk_period*20;
		
		ce <= '0';
		wait for clk_period*50;
		ce <= '1';

      wait;
   end process;

END;
