
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity reg_PP is
	generic(
		dimension : integer := 1
	);
  	port (
	  clk   : in  std_logic;
	  rst : in  std_logic;
	  clk_enable  : in  std_logic;
	  data  : in  std_logic_vector(dimension-1 downto 0);
	  q     : out std_logic_vector(dimension-1 downto 0)
	);
end reg_PP;

architecture RTL of reg_PP is
	signal register_data : std_logic_vector(dimension-1 downto 0);

	begin
		process(clk)
		begin
			if rst = '1' then
				register_data <= (others => '0');
			elsif clk'event and clk = '1' and clk_enable = '1' then
				register_data <= data;
			end if;
		end process;
	
		q <= register_data;
	
end RTL;
