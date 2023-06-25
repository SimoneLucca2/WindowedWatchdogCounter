
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity latch_d is
	port(
		clk : in std_logic;
		d : in std_logic;
		rst : in std_logic;
		q : out std_logic
	);
end latch_d;

architecture RTL of latch_d is
begin		

	process(clk)
	begin
		if clk'event and clk = '1'  then
			if rst = '1' then
				q <= '0';
			else
				q <= d;
			end if;
		end if;
	end process;

end RTL;