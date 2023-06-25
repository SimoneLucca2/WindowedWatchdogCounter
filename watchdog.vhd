
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity WatchDog is
	Port (  
			clk : in std_logic;
			clr : in std_logic;
			rst : in std_logic;
			command : in std_logic_vector(1 downto 0);
			start: in std_logic;
			data : in std_logic_vector(15 downto 0);
			reset: out std_logic;
			nmi  : out std_logic
			  );
end WatchDog;

architecture RTL of WatchDog is
	
	component register_file
		port(
        clk     : in std_logic;
        rst   : in std_logic;
        WrReg   : in std_logic;                     
        data    : in std_logic_vector(15 downto 0); -- data to be written in a register
        command : in std_logic_vector(1 downto 0);  -- the selector of the register

        PS_out  : out std_logic_vector(3 downto 0);  -- prescaler selector register
        MIN_out : out std_logic_vector(15 downto 0); -- lower bound
        NMI_out : out std_logic_vector(15 downto 0); -- count before non maskable interrupt
        MAX_out : out std_logic_vector(15 downto 0)  -- count before cpu reset
        );
	end component;
	
	component Prescaler
		port ( 
			  clk : in std_logic;
           s : in std_logic_vector(3 downto 0); -- selector
			  rst : in std_logic;
			  clk_enable_out : out std_logic
			  );
	end component;
	
	component counter is
    generic (
        dimension : integer := 16
    );
    port (
        clk : in std_logic;
		  clr : in std_logic;
        rst : in std_logic;
		  ce : in std_logic;
        count : out std_logic_vector(dimension-1 downto 0)
    );
	end component;
	
	component time_comparator
		port(
        count     : in std_logic_vector(15 downto 0);
        MIN_count : in std_logic_vector(15 downto 0);
        NMI_count : in std_logic_vector(15 downto 0);
        MAX_count : in std_logic_vector(15 downto 0);
		  eq_min		: out std_logic;
        eq_nmi    : out std_logic;
		  eq_max		: out std_logic
        );
	end component;
	
	component output_reset is
        port(
		  rst  : in std_logic;
        clk    : in std_logic;
		  start  : in std_logic;
        eq_min : in std_logic;
        eq_max : in std_logic;
        clr    : in std_logic;
        reset    : out std_logic
        );
    end component;
	
	signal PSreg_to_ps : std_logic_vector(3 downto 0);
	signal MINreg_to_cmp : std_logic_vector(15 downto 0);
	signal NMIreg_to_cmp : std_logic_vector(15 downto 0);
	signal MAXreg_to_cmp : std_logic_vector(15 downto 0);
	signal eq : std_logic_vector(1 downto 0); --buffer for eq_min (0) and eq_max (1)
	
	signal count_refresh : std_logic; -- buffer for clr
	signal continue_count : std_logic;
	signal started : std_logic;
	signal notStarted : std_logic;
	signal count_trigger : std_logic; -- the signal that enables the count in the main_counter
	signal time_count : std_logic_vector(15 downto 0);
	
	signal nmi_output : std_logic; -- used as buffer for the nmi signal
	signal reset_output : std_logic; -- used as buffer for the reset signal

begin

	reg_file : register_file
		port map(

			clk     => clk,
			rst     => rst,
			WrReg   => notStarted,
			data    => data,
			command => command,

			PS_out  => PSreg_to_ps,
			MIN_out => MINreg_to_cmp,
			NMI_out => NMIreg_to_cmp,
			MAX_out => MAXreg_to_cmp
		);
		
	prsclr : prescaler
		port map(
			clk	=> clk,
			s 	   => PSreg_to_ps,
			rst	=> rst,
			clk_enable_out => count_trigger
		);
		
		
	main_counter : counter 
		generic map(
			dimension => 16
		)
		port map(
			clk   => clk,
			clr   => count_refresh,
			rst   => rst,
			ce => count_trigger,
			count => time_count
		);
		
	cmp : time_comparator -- generates inpulses when a threshold is reached
		port map(
			count     => time_count,
			MIN_count => MINreg_to_cmp,
			NMI_count => NMIreg_to_cmp,
			MAX_count => MAXreg_to_cmp,
			eq_min    => eq(0),
			eq_nmi 	 => nmi_output,
			eq_max 	 => eq(1)
		);

	out_rst: output_reset -- generates an keeps the reset signal high until the start signal is set high agn
		 port map (
			  reset  => reset_output,
			  clk    => clk,
			  eq_min => eq(0),
			  eq_max => eq(1),
			  start  => start,
			  clr    => clr,
			  rst    => rst
		 );
		 
		 
	process(clk) -- set the "started" signal
	begin
		if clk'event and clk = '1' then
			if rst = '1' then
				started <= '0';
			elsif start = '1' then
				started <= '1';
			end if;
		end if;
	end process;
	
	count_refresh <= notstarted or clr or start; -- cases in which the counter must clr
	nmi <= nmi_output and started and (not reset_output); -- the nmi goes to 0 if the reset is 1
	reset <= reset_output and started;
	
	notstarted <= not started;		
		
end RTL;