
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY register_file_TB IS
END register_file_TB;
 
ARCHITECTURE behavior OF register_file_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT register_file
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         WrReg : IN  std_logic;
         data : IN  std_logic_vector(15 downto 0);
         command : IN  std_logic_vector(1 downto 0);
         PS_out : OUT  std_logic_vector(3 downto 0);
         MIN_out : OUT  std_logic_vector(15 downto 0);
         NMI_out : OUT  std_logic_vector(15 downto 0);
         MAX_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal WrReg : std_logic := '0';
   signal data : std_logic_vector(15 downto 0) := (others => '0');
   signal command : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal PS_out : std_logic_vector(3 downto 0);
   signal MIN_out : std_logic_vector(15 downto 0);
   signal NMI_out : std_logic_vector(15 downto 0);
   signal MAX_out : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: register_file PORT MAP (
          clk => clk,
          rst => rst,
          WrReg => WrReg,
          data => data,
          command => command,
          PS_out => PS_out,
          MIN_out => MIN_out,
          NMI_out => NMI_out,
          MAX_out => MAX_out
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
		WrReg <= '1';
		
		wait for clk_period*10;
		
		rst <= '0';
		command <= "11";
		data <= "1111000011110000";
		
		--data should be stored in the MAX_reg
		
		wait for clk_period*10;
		
		command <= "10";
		data <= "1111000011110111";
		
		--data should be stored in the NMI_reg
		
		wait for clk_period*10;
		
		command <= "01";
		data <= "0000100100110011";
		
		--data should be stored in the MIN_reg
		
		
		wait for clk_period*10;
		
		command <= "00";
		data <= "1001000010010011"; --1001 will be stored
		
		--data should be stored in the PS_reg
		
		wait for clk_period*10;
		
		WrReg <= '0'; --stops the writing in the registers
		command <= "00";
		data <= "1111100100001111";
		
		--the registers should contain the same data as before
		wait for 100 ns;
		

      wait;
   end process;

END;