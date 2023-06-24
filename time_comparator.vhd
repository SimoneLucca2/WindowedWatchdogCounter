
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity time_comparator is
    port(
        count     : in std_logic_vector(15 downto 0);
        MIN_count : in std_logic_vector(15 downto 0);
        NMI_count : in std_logic_vector(15 downto 0);
        MAX_count : in std_logic_vector(15 downto 0);
		  eq_min		: out std_logic;
        eq_nmi    : out std_logic;
		  eq_max		: out std_logic
        );
end time_comparator;

architecture RTL of time_comparator is

    component vector_equals is
        port(
            num1 : in std_logic_vector(15 downto 0);
            num2 : in std_logic_vector(15 downto 0);
            equal : out std_logic
            );
    end component;
	

begin

    MIN_comparator : vector_equals
        port map(
            num1 => count,
            num2 => MIN_count,
            equal => eq_min
        );

    NMI_comparator : vector_equals
        port map(
            num1 => count,
            num2 => NMI_count,
            equal => eq_nmi
        );

    MAX_comparator : vector_equals
        port map(
            num1 => count,
            num2 => MAX_count,
            equal => eq_max
        );

end RTL;