
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY time_comparator_TB IS
END time_comparator_TB;
 
ARCHITECTURE behavior OF time_comparator_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT time_comparator
    PORT(
        count     : in std_logic_vector(15 downto 0);
        MIN_count : in std_logic_vector(15 downto 0);
        NMI_count : in std_logic_vector(15 downto 0);
        MAX_count : in std_logic_vector(15 downto 0);
		  eq_min		: out std_logic;
        eq_nmi    : out std_logic;
		  eq_max		: out std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal count     : std_logic_vector(15 downto 0) := (others => '0');
   signal MIN_count : std_logic_vector(15 downto 0) := (others => '0');
   signal NMI_count : std_logic_vector(15 downto 0) := (others => '0');
   signal MAX_count : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal eq_min : std_logic;
   signal eq_nmi : std_logic;
   signal eq_max : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: time_comparator PORT MAP (
          count => count,
          MIN_count => MIN_count,
          NMI_count => NMI_count,
          MAX_count => MAX_count,
			 eq_min => eq_min,
			 eq_nmi => eq_nmi,
			 eq_max => eq_max
        );
		  

	count_proc : process
	begin
		wait for 10 ns;
		count <= std_logic_vector(unsigned(count) + 1);
		wait for 10 ns;
	end process;
		

   -- Stimulus process
   stim_proc: process
   begin		
		
		MIN_count <= "0000000000001000";
		NMI_count <= "0000000100001000";
		MAX_count <= "0000000110001000";

      wait;
   end process;

END;