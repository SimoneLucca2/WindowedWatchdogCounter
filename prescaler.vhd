
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity prescaler is
    Port ( 
			  clk : in std_logic;
           s : in std_logic_vector(3 downto 0); -- selector of mux
			  rst : in std_logic;
			  clk_enable_out : out std_logic
			  );
end prescaler;

architecture RTL of Prescaler is

	component counter_clrToOne
		port(
			clk   : in std_logic;
			clr   : in std_logic;
			ce : in std_logic;
			rst   : in std_logic;
			count : out std_logic_vector(10 downto 0)
		);
	end component;
	
	signal count : std_logic_vector(10 downto 0);
	signal clk_enable_s : std_logic; -- 1 when the prescaler reaches 2^s
	
	begin
	
		counter_inst: counter_clrToOne
			port map(
				clk   => clk,
				clr   => clk_enable_s, -- reset the counter to "0...01" when 2^s is reached
				ce    => '1', -- the prescaler never stops counting
				rst   => rst,
				count => count
				);
	
		with s select
			clk_enable_s <= 
              count(0) when "0000",
              count(1) when "0001",
              count(2) when "0010",
              count(3) when "0011",
              count(4) when "0100",
              count(5) when "0101",
              count(6) when "0110",
              count(7) when "0111",
              count(8) when "1000",
              count(9) when "1001",
              count(10) when others; -- if s > 10 => s = 10
	
	
	 clk_enable_out <= clk_enable_s;
	
end RTL;
