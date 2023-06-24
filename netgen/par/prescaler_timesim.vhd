--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: prescaler_timesim.vhd
-- /___/   /\     Timestamp: Wed Jun 21 21:08:43 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf prescaler.pcf -rpw 100 -tpw 0 -ar Structure -tm prescaler -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim prescaler.ncd prescaler_timesim.vhd 
-- Device	: 6slx4tqg144-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: prescaler.ncd
-- Output file	: /home/simone/OneDrive/Windowed_Watchdog_Counter/netgen/par/prescaler_timesim.vhd
-- # of Entities	: 1
-- Design Name	: prescaler
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

entity prescaler is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    clk_enable_out : out STD_LOGIC; 
    s : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end prescaler;

architecture Structure of prescaler is
  signal clk_BUFGP : STD_LOGIC; 
  signal counter_inst_gen1_7_latch_q_212 : STD_LOGIC; 
  signal counter_inst_gen1_6_latch_q_213 : STD_LOGIC; 
  signal counter_inst_gen1_8_latch_q_215 : STD_LOGIC; 
  signal clk_enable_out_OBUF_216 : STD_LOGIC; 
  signal rst_IBUF_0 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal s_3_IBUF_0 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal Mmux_clk_enable_out_5_f7_222 : STD_LOGIC; 
  signal counter_inst_gen1_1_latch_q_223 : STD_LOGIC; 
  signal counter_inst_d0_q_224 : STD_LOGIC; 
  signal s_0_IBUF_0 : STD_LOGIC; 
  signal s_1_IBUF_0 : STD_LOGIC; 
  signal s_2_IBUF_0 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal counter_inst_gen1_5_latch_q_229 : STD_LOGIC; 
  signal counter_inst_gen1_4_latch_q_230 : STD_LOGIC; 
  signal counter_inst_gen1_2_latch_q_231 : STD_LOGIC; 
  signal counter_inst_gen1_3_latch_q_232 : STD_LOGIC; 
  signal counter_inst_gen1_10_latch_q_233 : STD_LOGIC; 
  signal N10_0 : STD_LOGIC; 
  signal counter_inst_gen1_9_latch_q_235 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal s_0_IBUF_1 : STD_LOGIC; 
  signal s_1_IBUF_4 : STD_LOGIC; 
  signal s_2_IBUF_7 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_10 : STD_LOGIC; 
  signal s_3_IBUF_13 : STD_LOGIC; 
  signal rst_IBUF_18 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal Mmux_clk_enable_out_7_99 : STD_LOGIC; 
  signal Mmux_clk_enable_out_5_f7_pack_11 : STD_LOGIC; 
  signal counter_inst_gen1_1_latch_q_pack_10 : STD_LOGIC; 
  signal Mmux_clk_enable_out_6_75 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N9_pack_13 : STD_LOGIC; 
  signal N4_pack_13 : STD_LOGIC; 
  signal NlwBufferSignal_clk_enable_out_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_gen1_4_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_gen1_2_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_d0_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_gen1_1_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_gen1_6_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_gen1_5_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_gen1_7_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_gen1_3_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_gen1_10_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_gen1_8_latch_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_inst_gen1_9_latch_q_CLK : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal counter_inst_a : STD_LOGIC_VECTOR ( 6 downto 6 ); 
  signal counter_inst_n : STD_LOGIC_VECTOR ( 10 downto 0 ); 
begin
  s_0_IBUF : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 202 ps
    )
    port map (
      O => s_0_IBUF_1,
      I => s(0)
    );
  ProtoComp2_IMUX : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 202 ps
    )
    port map (
      I => s_0_IBUF_1,
      O => s_0_IBUF_0
    );
  s_1_IBUF : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 202 ps
    )
    port map (
      O => s_1_IBUF_4,
      I => s(1)
    );
  ProtoComp2_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 202 ps
    )
    port map (
      I => s_1_IBUF_4,
      O => s_1_IBUF_0
    );
  s_2_IBUF : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 202 ps
    )
    port map (
      O => s_2_IBUF_7,
      I => s(2)
    );
  ProtoComp2_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 202 ps
    )
    port map (
      I => s_2_IBUF_7,
      O => s_2_IBUF_0
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      O => clk_BUFGP_IBUFG_10,
      I => clk
    );
  ProtoComp2_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_10,
      O => clk_BUFGP_IBUFG_0
    );
  s_3_IBUF : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 202 ps
    )
    port map (
      O => s_3_IBUF_13,
      I => s(3)
    );
  ProtoComp2_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 202 ps
    )
    port map (
      I => s_3_IBUF_13,
      O => s_3_IBUF_0
    );
  clk_enable_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD122"
    )
    port map (
      I => NlwBufferSignal_clk_enable_out_OBUF_I,
      O => clk_enable_out
    );
  rst_IBUF : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 202 ps
    )
    port map (
      O => rst_IBUF_18,
      I => rst
    );
  ProtoComp2_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD121",
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
  counter_inst_gen1_4_latch_q : X_FF
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_inst_gen1_4_latch_q_CLK,
      I => counter_inst_n(4),
      O => counter_inst_gen1_4_latch_q_230,
      RST => rst_IBUF_0,
      SET => GND
    );
  counter_inst_n_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => X"00006AAA0000AAAA"
    )
    port map (
      ADR2 => counter_inst_gen1_3_latch_q_232,
      ADR1 => counter_inst_gen1_2_latch_q_231,
      ADR3 => counter_inst_gen1_1_latch_q_223,
      ADR0 => counter_inst_gen1_4_latch_q_230,
      ADR5 => counter_inst_d0_q_224,
      ADR4 => clk_enable_out_OBUF_216,
      O => counter_inst_n(4)
    );
  counter_inst_gen1_2_latch_q : X_FF
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_inst_gen1_2_latch_q_CLK,
      I => counter_inst_n(2),
      O => counter_inst_gen1_2_latch_q_231,
      RST => rst_IBUF_0,
      SET => GND
    );
  counter_inst_n_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y4",
      INIT => X"02080808134C4C4C"
    )
    port map (
      ADR0 => s_3_IBUF_0,
      ADR3 => counter_inst_gen1_1_latch_q_223,
      ADR4 => counter_inst_d0_q_224,
      ADR1 => counter_inst_gen1_2_latch_q_231,
      ADR2 => N22,
      ADR5 => Mmux_clk_enable_out_5_f7_222,
      O => counter_inst_n(2)
    );
  counter_inst_d0_q_counter_inst_d0_q_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N10,
      O => N10_0
    );
  s_3_SW3 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y5"
    )
    port map (
      IA => N28,
      IB => N29,
      O => N10,
      SEL => counter_inst_gen1_3_latch_q_232
    );
  s_3_SW3_F : X_LUT6
    generic map(
      LOC => "SLICE_X2Y5",
      INIT => X"FB33FFFFFFFFFFFF"
    )
    port map (
      ADR3 => counter_inst_gen1_10_latch_q_233,
      ADR2 => s_1_IBUF_0,
      ADR0 => s_2_IBUF_0,
      ADR5 => counter_inst_gen1_2_latch_q_231,
      ADR4 => counter_inst_gen1_1_latch_q_223,
      ADR1 => counter_inst_d0_q_224,
      O => N28
    );
  s_3_SW3_G : X_LUT6
    generic map(
      LOC => "SLICE_X2Y5",
      INIT => X"FEEEEEEEF0000000"
    )
    port map (
      ADR5 => counter_inst_gen1_10_latch_q_233,
      ADR0 => s_1_IBUF_0,
      ADR1 => s_2_IBUF_0,
      ADR4 => counter_inst_gen1_2_latch_q_231,
      ADR3 => counter_inst_gen1_1_latch_q_223,
      ADR2 => counter_inst_d0_q_224,
      O => N29
    );
  s_3_SW10 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y5",
      INIT => X"FCFCFCFCFCFCFCFC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => s_2_IBUF_0,
      ADR1 => s_1_IBUF_0,
      O => N20
    );
  counter_inst_d0_q : X_FF
    generic map(
      LOC => "SLICE_X2Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_inst_d0_q_CLK,
      I => counter_inst_n(0),
      O => counter_inst_d0_q_224,
      RST => rst_IBUF_0,
      SET => GND
    );
  counter_inst_n_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y5",
      INIT => X"BF3FFF7F8F0FCF4F"
    )
    port map (
      ADR1 => s_3_IBUF_0,
      ADR4 => N2,
      ADR0 => N20,
      ADR2 => counter_inst_d0_q_224,
      ADR3 => counter_inst_gen1_10_latch_q_233,
      ADR5 => Mmux_clk_enable_out_5_f7_222,
      O => counter_inst_n(0)
    );
  counter_inst_gen1_6_latch_q_counter_inst_gen1_6_latch_q_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Mmux_clk_enable_out_5_f7_pack_11,
      O => Mmux_clk_enable_out_5_f7_222
    );
  counter_inst_gen1_6_latch_q_counter_inst_gen1_6_latch_q_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => counter_inst_gen1_1_latch_q_pack_10,
      O => counter_inst_gen1_1_latch_q_223
    );
  Mmux_clk_enable_out_5_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y3"
    )
    port map (
      IA => Mmux_clk_enable_out_7_99,
      IB => Mmux_clk_enable_out_6_75,
      O => Mmux_clk_enable_out_5_f7_pack_11,
      SEL => s_2_IBUF_0
    );
  Mmux_clk_enable_out_7 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => X"FD5DF858AD0DA808"
    )
    port map (
      ADR2 => s_1_IBUF_0,
      ADR0 => s_0_IBUF_0,
      ADR5 => counter_inst_gen1_2_latch_q_231,
      ADR3 => counter_inst_gen1_3_latch_q_232,
      ADR1 => counter_inst_gen1_1_latch_q_223,
      ADR4 => counter_inst_d0_q_224,
      O => Mmux_clk_enable_out_7_99
    );
  Mmux_clk_enable_out_6 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => X"FDB97531ECA86420"
    )
    port map (
      ADR1 => s_0_IBUF_0,
      ADR0 => s_1_IBUF_0,
      ADR3 => counter_inst_gen1_5_latch_q_229,
      ADR5 => counter_inst_gen1_4_latch_q_230,
      ADR4 => counter_inst_gen1_7_latch_q_212,
      ADR2 => counter_inst_gen1_6_latch_q_213,
      O => Mmux_clk_enable_out_6_75
    );
  counter_inst_n_5_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => X"5F5F5F5F5F5F5F5F"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR0 => counter_inst_gen1_1_latch_q_223,
      ADR2 => counter_inst_d0_q_224,
      ADR5 => '1',
      O => N6
    );
  counter_inst_n_1_1 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => X"0048125A"
    )
    port map (
      ADR1 => s_3_IBUF_0,
      ADR3 => N22,
      ADR4 => Mmux_clk_enable_out_5_f7_222,
      ADR0 => counter_inst_gen1_1_latch_q_223,
      ADR2 => counter_inst_d0_q_224,
      O => counter_inst_n(1)
    );
  counter_inst_gen1_1_latch_q : X_FF
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_inst_gen1_1_latch_q_CLK,
      I => counter_inst_n(1),
      O => counter_inst_gen1_1_latch_q_pack_10,
      RST => rst_IBUF_0,
      SET => GND
    );
  counter_inst_gen1_6_latch_q : X_FF
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_inst_gen1_6_latch_q_CLK,
      I => counter_inst_n(6),
      O => counter_inst_gen1_6_latch_q_213,
      RST => rst_IBUF_0,
      SET => GND
    );
  counter_inst_n_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y3",
      INIT => X"00000CC003300FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => s_3_IBUF_0,
      ADR2 => counter_inst_a(6),
      ADR3 => counter_inst_gen1_6_latch_q_213,
      ADR4 => N22,
      ADR5 => Mmux_clk_enable_out_5_f7_222,
      O => counter_inst_n(6)
    );
  counter_inst_a_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y4",
      INIT => X"8000000000000000"
    )
    port map (
      ADR1 => counter_inst_gen1_5_latch_q_229,
      ADR2 => counter_inst_gen1_4_latch_q_230,
      ADR4 => counter_inst_gen1_3_latch_q_232,
      ADR3 => counter_inst_gen1_2_latch_q_231,
      ADR5 => counter_inst_d0_q_224,
      ADR0 => counter_inst_gen1_1_latch_q_223,
      O => counter_inst_a(6)
    );
  counter_inst_gen1_5_latch_q : X_FF
    generic map(
      LOC => "SLICE_X4Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_inst_gen1_5_latch_q_CLK,
      I => counter_inst_n(5),
      O => counter_inst_gen1_5_latch_q_229,
      RST => rst_IBUF_0,
      SET => GND
    );
  counter_inst_n_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X4Y4",
      INIT => X"0B0F04000F0F0000"
    )
    port map (
      ADR1 => counter_inst_gen1_4_latch_q_230,
      ADR5 => counter_inst_gen1_3_latch_q_232,
      ADR3 => counter_inst_gen1_2_latch_q_231,
      ADR4 => counter_inst_gen1_5_latch_q_229,
      ADR0 => N6,
      ADR2 => clk_enable_out_OBUF_216,
      O => counter_inst_n(5)
    );
  counter_inst_gen1_7_latch_q : X_FF
    generic map(
      LOC => "SLICE_X4Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_inst_gen1_7_latch_q_CLK,
      I => counter_inst_n(7),
      O => counter_inst_gen1_7_latch_q_212,
      RST => rst_IBUF_0,
      SET => GND
    );
  counter_inst_n_7_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y4",
      INIT => X"004C0080135F20A0"
    )
    port map (
      ADR1 => s_3_IBUF_0,
      ADR2 => counter_inst_gen1_6_latch_q_213,
      ADR0 => counter_inst_a(6),
      ADR4 => counter_inst_gen1_7_latch_q_212,
      ADR3 => N22,
      ADR5 => Mmux_clk_enable_out_5_f7_222,
      O => counter_inst_n(7)
    );
  s_3_SW11 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y4",
      INIT => X"F0F0F0F0F0EEF022"
    )
    port map (
      ADR2 => counter_inst_gen1_10_latch_q_233,
      ADR5 => s_1_IBUF_0,
      ADR3 => s_2_IBUF_0,
      ADR4 => counter_inst_gen1_9_latch_q_235,
      ADR1 => s_0_IBUF_0,
      ADR0 => counter_inst_gen1_8_latch_q_215,
      O => N22
    );
  counter_inst_gen1_3_latch_q_counter_inst_gen1_3_latch_q_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N9_pack_13,
      O => N9
    );
  s_3_SW2 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y5"
    )
    port map (
      IA => N26,
      IB => N27,
      O => N9_pack_13,
      SEL => counter_inst_gen1_3_latch_q_232
    );
  s_3_SW2_F : X_LUT6
    generic map(
      LOC => "SLICE_X4Y5",
      INIT => X"F1FFFFFFFFFFFFFF"
    )
    port map (
      ADR5 => counter_inst_gen1_2_latch_q_231,
      ADR4 => counter_inst_gen1_1_latch_q_223,
      ADR2 => counter_inst_gen1_10_latch_q_233,
      ADR0 => s_1_IBUF_0,
      ADR1 => s_2_IBUF_0,
      ADR3 => counter_inst_d0_q_224,
      O => N26
    );
  s_3_SW2_G : X_LUT6
    generic map(
      LOC => "SLICE_X4Y5",
      INIT => X"FFF1F1F1F1F1F1F1"
    )
    port map (
      ADR2 => counter_inst_gen1_10_latch_q_233,
      ADR1 => s_2_IBUF_0,
      ADR0 => s_1_IBUF_0,
      ADR3 => counter_inst_d0_q_224,
      ADR5 => counter_inst_gen1_2_latch_q_231,
      ADR4 => counter_inst_gen1_1_latch_q_223,
      O => N27
    );
  s_3_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y5",
      INIT => X"C3C3333333333333"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => counter_inst_gen1_3_latch_q_232,
      ADR5 => counter_inst_gen1_2_latch_q_231,
      ADR2 => counter_inst_gen1_1_latch_q_223,
      ADR4 => counter_inst_d0_q_224,
      O => N8
    );
  counter_inst_gen1_3_latch_q : X_FF
    generic map(
      LOC => "SLICE_X4Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_inst_gen1_3_latch_q_CLK,
      I => counter_inst_n(3),
      O => counter_inst_gen1_3_latch_q_232,
      RST => rst_IBUF_0,
      SET => GND
    );
  counter_inst_n_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y5",
      INIT => X"0005AAAF22272227"
    )
    port map (
      ADR0 => s_3_IBUF_0,
      ADR5 => N2,
      ADR4 => N10_0,
      ADR1 => N9,
      ADR3 => Mmux_clk_enable_out_5_f7_222,
      ADR2 => N8,
      O => counter_inst_n(3)
    );
  s_3_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => X"0000FF0000FFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => s_0_IBUF_0,
      ADR4 => counter_inst_gen1_9_latch_q_235,
      ADR5 => counter_inst_gen1_8_latch_q_215,
      O => N2
    );
  counter_inst_gen1_10_latch_q_counter_inst_gen1_10_latch_q_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N4_pack_13,
      O => N4
    );
  counter_inst_gen1_10_latch_q : X_FF
    generic map(
      LOC => "SLICE_X5Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_inst_gen1_10_latch_q_CLK,
      I => counter_inst_n(10),
      O => counter_inst_gen1_10_latch_q_233,
      RST => rst_IBUF_0,
      SET => GND
    );
  counter_inst_n_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X5Y4",
      INIT => X"0D0F0F0F02000000"
    )
    port map (
      ADR3 => counter_inst_gen1_9_latch_q_235,
      ADR0 => counter_inst_gen1_8_latch_q_215,
      ADR1 => N4,
      ADR5 => counter_inst_gen1_10_latch_q_233,
      ADR4 => counter_inst_a(6),
      ADR2 => clk_enable_out_OBUF_216,
      O => counter_inst_n(10)
    );
  counter_inst_gen1_8_latch_q : X_FF
    generic map(
      LOC => "SLICE_X5Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_inst_gen1_8_latch_q_CLK,
      I => counter_inst_n(8),
      O => counter_inst_gen1_8_latch_q_215,
      RST => rst_IBUF_0,
      SET => GND
    );
  counter_inst_n_8_1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y4",
      INIT => X"1333200013332000"
    )
    port map (
      ADR3 => counter_inst_gen1_7_latch_q_212,
      ADR2 => counter_inst_gen1_6_latch_q_213,
      ADR0 => counter_inst_a(6),
      ADR4 => counter_inst_gen1_8_latch_q_215,
      ADR1 => clk_enable_out_OBUF_216,
      ADR5 => '1',
      O => counter_inst_n(8)
    );
  counter_inst_n_10_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y4",
      INIT => X"0FFF0FFF"
    )
    port map (
      ADR3 => counter_inst_gen1_7_latch_q_212,
      ADR2 => counter_inst_gen1_6_latch_q_213,
      ADR1 => '1',
      ADR0 => '1',
      ADR4 => '1',
      O => N4_pack_13
    );
  counter_inst_gen1_9_latch_q : X_FF
    generic map(
      LOC => "SLICE_X5Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_inst_gen1_9_latch_q_CLK,
      I => counter_inst_n(9),
      O => counter_inst_gen1_9_latch_q_235,
      RST => rst_IBUF_0,
      SET => GND
    );
  counter_inst_n_9_1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y4",
      INIT => X"000000007FFF8000"
    )
    port map (
      ADR0 => counter_inst_gen1_8_latch_q_215,
      ADR2 => counter_inst_gen1_7_latch_q_212,
      ADR1 => counter_inst_gen1_6_latch_q_213,
      ADR4 => counter_inst_gen1_9_latch_q_235,
      ADR3 => counter_inst_a(6),
      ADR5 => clk_enable_out_OBUF_216,
      O => counter_inst_n(9)
    );
  s_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X5Y4",
      INIT => X"BBB3BBBF8880888C"
    )
    port map (
      ADR1 => s_3_IBUF_0,
      ADR0 => counter_inst_gen1_10_latch_q_233,
      ADR3 => s_2_IBUF_0,
      ADR2 => s_1_IBUF_0,
      ADR4 => N2,
      ADR5 => Mmux_clk_enable_out_5_f7_222,
      O => clk_enable_out_OBUF_216
    );
  NlwBufferBlock_clk_enable_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_enable_out_OBUF_216,
      O => NlwBufferSignal_clk_enable_out_OBUF_I
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_0,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_counter_inst_gen1_4_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_counter_inst_gen1_4_latch_q_CLK
    );
  NlwBufferBlock_counter_inst_gen1_2_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_counter_inst_gen1_2_latch_q_CLK
    );
  NlwBufferBlock_counter_inst_d0_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_counter_inst_d0_q_CLK
    );
  NlwBufferBlock_counter_inst_gen1_1_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_counter_inst_gen1_1_latch_q_CLK
    );
  NlwBufferBlock_counter_inst_gen1_6_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_counter_inst_gen1_6_latch_q_CLK
    );
  NlwBufferBlock_counter_inst_gen1_5_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_counter_inst_gen1_5_latch_q_CLK
    );
  NlwBufferBlock_counter_inst_gen1_7_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_counter_inst_gen1_7_latch_q_CLK
    );
  NlwBufferBlock_counter_inst_gen1_3_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_counter_inst_gen1_3_latch_q_CLK
    );
  NlwBufferBlock_counter_inst_gen1_10_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_counter_inst_gen1_10_latch_q_CLK
    );
  NlwBufferBlock_counter_inst_gen1_8_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_counter_inst_gen1_8_latch_q_CLK
    );
  NlwBufferBlock_counter_inst_gen1_9_latch_q_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_counter_inst_gen1_9_latch_q_CLK
    );
  NlwBlock_prescaler_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_prescaler_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

