
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vector_equals is
	port(
		num1 : in std_logic_vector(15 downto 0);
		num2 : in std_logic_vector(15 downto 0);
		equal : out std_logic
	);
end vector_equals;

architecture RTL of vector_equals is
	signal u : std_logic_vector(15 downto 0);
	
	begin
		equal <= '1' when num1 = num2 else '0';

end RTL;