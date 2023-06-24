
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY watchdog_TB IS
END watchdog_TB;
 
ARCHITECTURE behavior OF watchdog_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT WatchDog
    PORT(
         clk : IN  std_logic;
         clr : IN  std_logic;
         rst : IN  std_logic;
         command : IN  std_logic_vector(1 downto 0);
         start : IN  std_logic;
         data : IN  std_logic_vector(15 downto 0);
         reset : OUT  std_logic;
         nmi : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal clr : std_logic := '0';
   signal rst : std_logic := '0';
   signal command : std_logic_vector(1 downto 0) := (others => '0');
   signal start : std_logic := '0';
   signal data : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal reset : std_logic;
   signal nmi : std_logic;
	

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: WatchDog PORT MAP (
          clk => clk,
          clr => clr,
          rst => rst,
          command => command,
          start => start,
          data => data,
          reset => reset,
          nmi => nmi
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
		
		start <= '0';
		clr   <= '0';
		
		-------------- Setup phase ---------------------
		
		wait for clk_period;
	
		command <= "11";
		data <= "0000000000010100"; --set the max value to 20
		
		wait for clk_period;
		
		command <= "10";
		data <= "0000000000001100"; --set the nmi value
		
		wait for clk_period;
		
		command <= "01";
		data <= "0000000000000111"; --set the min value
		
		wait for clk_period;
		
		command <= "00";
		data <= "0000000000000000";--the prescaler divides by 1
		
		wait for clk_period;
		
		-------------- end setup phase ---------------------

		start <= '1';
		wait for clk_period; --start the count
		start <= '0';

		---------- test reset after threshold --------------

      wait for clk_period;
		
		--nmi will activate
		--rst will activate
		wait for clk_period * 25; -- the reset must stay active for (25 - threshold) = 5 clk_periods 
		
		----------- end test reset after threshold ---------
		
		start <= '1';
		wait for clk_period; -- the cpu sends the start signal to turn off the reset signal and continue
		start <= '0';
		
		---------- test reset after clr sent before low threshold --------------
		
		wait for clk_period * 3;
		
		clr <= '1';
		wait for clk_period; -- reset will activate
		clr <= '0';
		
		wait for clk_period * 5; -- the reset must stay active for 5*clk_periods
		
		---------- end test reset after clr sent before low threshold --------------
		
		start <= '1';
		wait for clk_period;
		start <= '0';

		

      wait;
   end process;

END;
