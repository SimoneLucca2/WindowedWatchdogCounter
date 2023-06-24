--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: output_reset_timesim.vhd
-- /___/   /\     Timestamp: Wed Jun 21 21:16:17 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf output_reset.pcf -rpw 100 -tpw 0 -ar Structure -tm output_reset -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim output_reset.ncd output_reset_timesim.vhd 
-- Device	: 6slx4tqg144-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: output_reset.ncd
-- Output file	: /home/simone/OneDrive/Windowed_Watchdog_Counter/netgen/par/output_reset_timesim.vhd
-- # of Entities	: 1
-- Design Name	: output_reset
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity output_reset is
  port (
    rst : in STD_LOGIC := 'X'; 
    clk : in STD_LOGIC := 'X'; 
    eq_min : in STD_LOGIC := 'X'; 
    eq_max : in STD_LOGIC := 'X'; 
    clr : in STD_LOGIC := 'X'; 
    start : in STD_LOGIC := 'X'; 
    reset : out STD_LOGIC 
  );
end output_reset;

architecture Structure of output_reset is
  signal clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal clr_IBUF_0 : STD_LOGIC; 
  signal start_IBUF_0 : STD_LOGIC; 
  signal d1_q_49 : STD_LOGIC; 
  signal eq_max_IBUF_0 : STD_LOGIC; 
  signal eq_min_IBUF_0 : STD_LOGIC; 
  signal rst_IBUF_0 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal d0_q_54 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_1 : STD_LOGIC; 
  signal clr_IBUF_4 : STD_LOGIC; 
  signal start_IBUF_7 : STD_LOGIC; 
  signal eq_max_IBUF_12 : STD_LOGIC; 
  signal eq_min_IBUF_15 : STD_LOGIC; 
  signal rst_IBUF_18 : STD_LOGIC; 
  signal NlwBufferSignal_reset_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_d0_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_d1_q_CLK : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal delta : STD_LOGIC_VECTOR ( 1 downto 0 ); 
begin
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      O => clk_BUFGP_IBUFG_1,
      I => clk
    );
  ProtoComp0_IMUX : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_1,
      O => clk_BUFGP_IBUFG_0
    );
  clr_IBUF : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 202 ps
    )
    port map (
      O => clr_IBUF_4,
      I => clr
    );
  ProtoComp0_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 202 ps
    )
    port map (
      I => clr_IBUF_4,
      O => clr_IBUF_0
    );
  start_IBUF : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 202 ps
    )
    port map (
      O => start_IBUF_7,
      I => start
    );
  ProtoComp0_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 202 ps
    )
    port map (
      I => start_IBUF_7,
      O => start_IBUF_0
    );
  reset_OBUF : X_OBUF
    generic map(
      LOC => "PAD121"
    )
    port map (
      I => NlwBufferSignal_reset_OBUF_I,
      O => reset
    );
  eq_max_IBUF : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 202 ps
    )
    port map (
      O => eq_max_IBUF_12,
      I => eq_max
    );
  ProtoComp0_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 202 ps
    )
    port map (
      I => eq_max_IBUF_12,
      O => eq_max_IBUF_0
    );
  eq_min_IBUF : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 202 ps
    )
    port map (
      O => eq_min_IBUF_15,
      I => eq_min
    );
  ProtoComp0_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 202 ps
    )
    port map (
      I => eq_min_IBUF_15,
      O => eq_min_IBUF_0
    );
  rst_IBUF : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 202 ps
    )
    port map (
      O => rst_IBUF_18,
      I => rst
    );
  ProtoComp0_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 202 ps
    )
    port map (
      I => rst_IBUF_18,
      O => rst_IBUF_0
    );
  clk_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => NlwBufferSignal_clk_BUFGP_BUFG_IN,
      O => clk_BUFGP
    );
  d0_q : X_FF
    generic map(
      LOC => "SLICE_X3Y0",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_d0_q_CLK,
      I => delta(0),
      O => d0_q_54,
      RST => rst_IBUF_0,
      SET => GND
    );
  delta_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y0",
      INIT => X"0A0AEEEE5F5FEEEE"
    )
    port map (
      ADR3 => '1',
      ADR1 => eq_min_IBUF_0,
      ADR5 => clr_IBUF_0,
      ADR4 => d0_q_54,
      ADR2 => start_IBUF_0,
      ADR0 => d1_q_49,
      O => delta(0)
    );
  d1_q : X_FF
    generic map(
      LOC => "SLICE_X3Y0",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_d1_q_CLK,
      I => delta(1),
      O => d1_q_49,
      RST => rst_IBUF_0,
      SET => GND
    );
  delta_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y0",
      INIT => X"5F5F5F5FAA00EE44"
    )
    port map (
      ADR3 => eq_max_IBUF_0,
      ADR1 => clr_IBUF_0,
      ADR4 => eq_min_IBUF_0,
      ADR5 => d1_q_49,
      ADR2 => start_IBUF_0,
      ADR0 => d0_q_54,
      O => delta(1)
    );
  NlwBufferBlock_reset_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => d1_q_49,
      O => NlwBufferSignal_reset_OBUF_I
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_0,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_d0_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_d0_q_CLK
    );
  NlwBufferBlock_d1_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_d1_q_CLK
    );
  NlwBlock_output_reset_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_output_reset_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

