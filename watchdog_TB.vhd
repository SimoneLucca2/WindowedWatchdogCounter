
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
		data <= "0000000000001100"; --set the nmi value to 12
		
		wait for clk_period;
		
		command <= "01";
		data <= "0000000000000111"; --set the min value to 7
		
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

		---------- test clr sent in the ideal range  ------------------

		wait for clk_period * 9;

		clr <= '1';
		wait for clk_period;
		clr <= '0';
		
		---------- end test clr sent in the ideal range  ------------------


		--#####################################################
		--############ New Set Up Values  #####################
		--#####################################################

		rst <= '1';
		wait for clk_period;
		rst <= '0';

		-------------- Setup phase ---------------------
		
		wait for clk_period;
	
		command <= "11";
		data <= "0000000000000110"; --set the max value to 6
		
		wait for clk_period;
		
		command <= "10";
		data <= "0000000000000100"; --set the nmi value to 4
		
		wait for clk_period;
		
		command <= "01";
		data <= "0000000000000010"; --set the min value to 2
		
		wait for clk_period;
		
		command <= "00";
		data <= "0000000000000111";--the prescaler divides by 128
		
		-------------- end setup phase ---------------------

		start <= '1';
		wait for clk_period; --start the count
		start <= '0';

		---------- test reset after threshold --------------
		
		--nmi will activate
		--rst will activate
		wait for clk_period * (128 * 6 + 5); -- the reset must stay active for 5 clk_periods 
		
		----------- end test reset after threshold ---------

		start <= '1';
		wait for clk_period; --start the count
		start <= '0';

		----- test clr after nmi but before the max threshold -------

		wait for clk_period * 128 * 5; -- nmi must activate

		clr <= '1';
		wait for clk_period; -- reset must stay '0'
		clr <= '0';

		----- end test clr after nmi but before the max threshold -------


		---------- test clr sent in the ideal range  ------------------

		wait for clk_period * 128 * 3;

		clr <= '1';
		wait for clk_period;
		clr <= '0';
		
		---------- end test clr sent in the ideal range  ------------------



		---------- test reset after clr sent before low threshold --------------
		
		wait for clk_period * 30;
		
		clr <= '1';
		wait for clk_period; -- reset will activate
		clr <= '0';
		
		wait for clk_period * 5; -- the reset must stay active for 5*clk_periods
		
		---------- end test reset after clr sent before low threshold --------------
		

		--#####################################################
		--############ New Set Up Values  #####################
		--#####################################################


		rst <= '1';
		wait for clk_period;
		rst <= '0';

		-------------- Setup phase ---------------------
		
		wait for clk_period;
	
		command <= "11";
		data <= "0000000000001111"; --set the max value to 15
		
		wait for clk_period;
		
		command <= "10";
		data <= "0000000000001100"; --set the nmi value to 12
		
		wait for clk_period;
		
		command <= "01";
		data <= "0000000000001000"; --set the min value to 8
		
		wait for clk_period;
		
		command <= "00";
		data <= "0000000000000001"; --the prescaler divides by 2
		
		-------------- end setup phase ---------------------

		start <= '1';
		wait for clk_period; --start the count
		start <= '0';

		-------- test change register value when not possible  ---------------------

		data <= "0000000000001111" 
		command <= "00"; -- try to change the prescaler value

		-------- end test change register value when not possible  ---------------------


		---------- test reset after threshold --------------
		
		--if the prescaling value changed (prev test) then the reset cannot be activate 
		wait for clk_period * (2 * 15 + 5); -- the reset must stay active for 5 clk_periods 
		
		----------- end test reset after threshold ---------

		--#####################################################
		--############ New Set Up Values  #####################
		--#####################################################

		--test if the formulas in the documentation are correct
		-- given: fck = 50 Mhz, Tmax = 1s
		-- find the ideal prescaling number and the max threshold to be set
		-- the results are => prescaling value = 10, max threshold = 1011111010111100
		
		-------------- Setup phase ---------------------
		
		rst <= '1';
		wait for clk_period;
		rst <= '0';
	
		command <= "11";
		data <= "1011111010111100"; --set the max value to 48828 (value to get 1s)
		
		wait for clk_period;
		
		command <= "10";
		data <= "1011111010111100"; --set the nmi value equal to the reset (don't care) 
		
		wait for clk_period;
		
		command <= "01";
		data <= "0000000000000000"; --set the min value to 0 (don't care)
		
		wait for clk_period;
		
		command <= "00";
		data <= "00000000000001010"; --the prescaler divides by 2
		
		-------------- end setup phase ---------------------

		start <= '1';
		wait for clk_period; --start the count
		start <= '0';

		---------- test reset after threshold --------------
		
		--nmi will activate
		--rst will activate
		wait for 1s + 5 * clk_period; -- the reset must stay active for 5 clk_periods 
		
		----------- end test reset after threshold ---------

		start <= '1';

      wait;
   end process;

END;
