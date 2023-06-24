
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter_clrToOne is
    port (
        clk : in std_logic;
        rst : in std_logic;
		  ce : in std_logic; -- clock enable
		  clr : in std_logic;
        count : out std_logic_vector(10 downto 0)
    );
end counter_clrToOne;

architecture RTL of counter_clrToOne is

    component latch_d is
        port(
            clk : in std_logic;
            rst : in std_logic;
            d   : in std_logic;
            q   : out std_logic
        );
    end component;

   signal n : std_logic_vector(10 downto 0); -- d vector (next clock output)
	signal c : std_logic_vector(10 downto 0); -- output vector
	signal a : std_logic_vector(10 downto 0); -- it contains the "and" of all the q up to the corresponding index
	signal clock_enable : std_logic;

begin
  
	d0 : latch_d
		 port map (
			  clk => clk,
			  rst => rst,
			  d   => n(0),
			  q   => c(0)
		 );
	n(0) <= clr or (c(0) xor a(0));
	a(0) <= ce; -- if the clock enable is 0 the counter pauses

	gen1 : for i in 10 downto 1 generate

		latch : latch_d
			 port map (
				  clk => clk,
				  rst => rst,
				  d   => n(i),
				  q   => c(i)
			 );
		n(i) <= (not clr) and ( c(i) xor a(i) );
		a(i) <= a(i-1) and c(i-1);
			  
    end generate;
	 
	count <= c;

end RTL;