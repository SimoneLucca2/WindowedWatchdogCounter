
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
		compare: for i in 0 to 15 generate
			u(i) <= not(num1(i) xor num2(i));
		end generate;
		
		equal <= u(0)
        and u(1)
        and u(2)
        and u(3)
        and u(4)
        and u(5)
        and u(6)
        and u(7)
        and u(8)
        and u(9)
        and u(10)
        and u(11)
        and u(12)
        and u(13)
        and u(14)
        and u(15);

end RTL;