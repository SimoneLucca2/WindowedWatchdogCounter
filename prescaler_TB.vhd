LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Prescaler_TB IS
END Prescaler_TB;

ARCHITECTURE behavior OF Prescaler_TB IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT Prescaler
    PORT(
         clk : in std_logic;
         s : in std_logic_vector(3 downto 0);
         rst : in std_logic;
         clk_enable_out : out std_logic
        );
    END COMPONENT;


   --Inputs
   signal clk : std_logic;
   signal rst : std_logic;
   signal s : std_logic_vector(3 downto 0);

 	--Outputs
   signal clk_enable_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
   uut: Prescaler PORT MAP (
          clk => clk,
          s => s,
          rst => rst,          
          clk_enable_out => clk_enable_out
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
        wait for 100 ns;
        
        rst <= '0';
        s <= "0000"; --do not change the clock
        
        wait for clk_period*50;
        
        s <= "0001"; -- clock / 2
        
        wait for clk_period*50;
        
        s <= "0010"; -- clock / 4
        
        wait for clk_period*50;
        
        s <= "0011"; -- clock / 8
        
        wait for clk_period*100;
        
        s <= "0100"; -- clock / 16
        
        wait for clk_period*500;
        
        s <= "0101"; -- clock / 32
        
        wait for clk_period*1000;
        
        s <= "0110"; -- clock / 64
        
        wait for clk_period*2000;
        
        s <= "0111"; -- clock / 128
        
        wait for clk_period*4000;
        
        s <= "1000"; -- clock / 256
		  
		  wait for clk_period*8000;
        
        s <= "1001"; -- clock / 512
		  
		  wait for clk_period*16000;
        
        s <= "1010"; -- clock / 1024
        
        wait for clk_period*32000;
        
        s <= "1111"; -- should not reach but if it does ->  clock / 1024
        
        wait;
   end process;

END;