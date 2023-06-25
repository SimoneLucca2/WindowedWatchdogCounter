
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

   signal write_to : std_logic_vector(3 downto 0); -- can the register in that position be written to

begin

	PS_reg : reg_PP
		generic map(
			dimension => 4
		)
		port map(
			clk => clk,
			rst => rst,
			clk_enable => write_to(0),
			data => data(3 downto 0),
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


    write_to(0) <= WrReg when command = "00" else '0';
	 write_to(1) <= WrReg when command = "01" else '0';
	 write_to(2) <= WrReg when command = "10" else '0';
	 write_to(3) <= WrReg when command = "11" else '0';


end RTL;