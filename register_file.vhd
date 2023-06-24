
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity register_file is
    port(
        clk     : in std_logic;
        rst     : in std_logic;
        WrReg   : in std_logic;                     -- '1' to enable the writing to a register
        data    : in std_logic_vector(15 downto 0); -- data to be written in a register
        command : in std_logic_vector(1 downto 0);  -- the selector of the register

        PS_out  : out std_logic_vector(3 downto 0);  -- prescaler selector register
        MIN_out : out std_logic_vector(15 downto 0); -- lower bound
        NMI_out : out std_logic_vector(15 downto 0); -- count before non maskable interrupt
        MAX_out : out std_logic_vector(15 downto 0)  -- count before cpu reset
        );
end register_file;

architecture RTL of register_file is
	component reg_pp
	  generic(
		dimension : integer
	  );
	  port (
		clk   : in  std_logic;
		rst : in  std_logic;
		clk_enable  : in  std_logic;
		data  : in  std_logic_vector(dimension-1 downto 0);
		q     : out std_logic_vector(dimension-1 downto 0)
		);
	end component;

	 
	signal selector : std_logic_vector(3 downto 0); -- one hot vector that selects the register to write to
   signal write_to : std_logic_vector(3 downto 0); -- selector vector if WrReg = '1', "0000" otherwise
	signal resized_data : std_logic_vector(3 downto 0);

begin

	--the data vector is 16 bits, that is incompatible with the PS_reg that requires only 4 bits
	resize: for i in 0 to 3 generate
		resized_data(i) <= data(i);
		end generate;

	PS_reg : reg_PP
		generic map(
			dimension => 4
		)
		port map(
			clk => clk,
			rst => rst,
			clk_enable => write_to(0),
			data => resized_data,
			q => PS_out
		);

	MIN_reg : reg_PP
		generic map(
			dimension => 16
		)
		port map(
			clk => clk,
			rst => rst,
			clk_enable => write_to(1),
			data => data,
			q => MIN_out
		);
		
	NMI_reg : reg_PP
		generic map(
			dimension => 16
		)
		port map(
			clk => clk,
			rst => rst,
			clk_enable => write_to(2),
			data => data,
			q => NMI_out
		);
		
	MAX_reg : reg_PP
		generic map(
			dimension => 16
		)
		port map(
			clk => clk,
			rst => rst,
			clk_enable => write_to(3),
			data => data,
			q => MAX_out
		);


    with command select
        selector(0) <=
           '1' when "00",
           '0' when others;
    with command select
        selector(1) <=
           '1' when "01",
           '0' when others;
    with command select
        selector(2) <=
           '1' when "10",
           '0' when others;
    with command select
        selector(3) <=
           '1' when "11",
           '0' when others;

	-- the register must be written to only if the WrReg is '1'
    wr: for i in 0 to 3 generate
        write_to(i) <= (selector(i) and WrReg);
        end generate;

end RTL;