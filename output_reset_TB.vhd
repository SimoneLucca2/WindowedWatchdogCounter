
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY output_reset_TB IS
END output_reset_TB;
 
ARCHITECTURE behavior OF output_reset_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT output_reset
    PORT(
			rst : in std_logic;
         clk : IN  std_logic;
         eq_min : IN  std_logic;
         eq_max : IN  std_logic;
         clr : IN  std_logic;
         start : IN  std_logic;
         reset : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
	signal rst : std_logic := '0';
   signal clk : std_logic := '0';
   signal eq_min : std_logic := '0';
   signal eq_max : std_logic := '0';
   signal clr : std_logic := '0';
   signal start : std_logic := '0';

 	--Outputs
   signal reset : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: output_reset PORT MAP (
			 rst => rst,
          clk => clk,
          eq_min => eq_min,
          eq_max => eq_max,
          clr => clr,
          start => start,
          reset => reset
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
      wait for clk_period;	
		rst <= '0';
		
		start <= '1';
      wait for clk_period; --do nothing if the start is after the reset
		start <= '0';
		
		----------- standard clr -----------------
		
		wait for clk_period*5;
		
		eq_min <= '1';
		wait for clk_period; --min threshold reached
		eq_min <= '0';
		
		wait for clk_period*5;
			
		clr <= '1';
		wait for clk_period; --should not reset
		clr <= '0';
		
		----------- end standard clr -----------------
		
		
		----------- execution time exceeded ----------
		
		wait for clk_period*5;
		
		eq_min <= '1';
		wait for clk_period; --min threshold reached
		eq_min <= '0';
	
		wait for clk_period*5;
	
		eq_max <= '1';
		wait for clk_period; --max reached must reset
		eq_max <= '0';
		
		-------- end execution time exceeded ----------
		
		
		wait for clk_period*5;
	
		start <= '1';
		wait for clk_period; -- reset to 0
		start <= '0';
		
		
		-------- execution time too short -------------
	
		wait for clk_period*5;
		
		clr <= '1';
		wait for clk_period; -- must reset
		clr <= '0';
		
		-------- end execution time too short -------------
		
		wait;
		
      -- insert stimulus here 
   end process;

END;