
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity output_reset is
    port(
        rst  : in std_logic;
        clk    : in std_logic;
        eq_min : in std_logic;
        eq_max : in std_logic;
        clr    : in std_logic;
        start  : in std_logic;
        reset  : out std_logic
        );
end output_reset;

architecture RTL of output_reset is

    component latch_d
    port(
		clk : in std_logic;
		d : in std_logic;
		rst : in std_logic;
		q : out std_logic
	);
	end component;

    signal out_q : std_logic_vector(1 downto 0); -- temporary signal (rst)
    signal delta : std_logic_vector(1 downto 0); -- temporary signal (next state function)

begin

    d0 : latch_d
    port map(
        clk => clk,
        d => delta(0),
        rst => rst,
        q => out_q(0)
    );

    d1 : latch_d
    port map(
        clk => clk,
        d => delta(1),
        rst => rst,
        q => out_q(1)
    );

    delta(0) <=  (out_q(1)  or  ((not clr)  and (eq_min))  or  ( (not clr) and  (out_q(0)))  or  ( (not out_q(0)) and clr and eq_min)) and 
						(not (out_q(1) and out_q(0) and start ) ); -- look at documentation

    delta(1) <= ( ( ((not out_q(0)) and (not out_q(1)) and clr and (not eq_min) )  or  (out_q(1)) ) and (not (out_q(1) and  out_q(0) and start)) ) 
            or ((not out_q(1)) and out_q(0) and eq_max) ; -- look at documentation
	
	 reset <= out_q(1);

end RTL;