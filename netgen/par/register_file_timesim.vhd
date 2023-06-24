--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: register_file_timesim.vhd
-- /___/   /\     Timestamp: Wed Jun 21 21:19:18 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf register_file.pcf -rpw 100 -tpw 0 -ar Structure -tm register_file -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim register_file.ncd register_file_timesim.vhd 
-- Device	: 6slx4tqg144-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: register_file.ncd
-- Output file	: /home/simone/OneDrive/Windowed_Watchdog_Counter/netgen/par/register_file_timesim.vhd
-- # of Entities	: 1
-- Design Name	: register_file
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

entity register_file is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    WrReg : in STD_LOGIC := 'X'; 
    data : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    command : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    PS_out : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    MIN_out : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    NMI_out : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    MAX_out : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end register_file;

architecture Structure of register_file is
  signal clk_BUFGP : STD_LOGIC; 
  signal rst_IBUF_0 : STD_LOGIC; 
  signal data_1_IBUF_0 : STD_LOGIC; 
  signal data_2_IBUF_0 : STD_LOGIC; 
  signal data_3_IBUF_0 : STD_LOGIC; 
  signal write_to_3_0 : STD_LOGIC; 
  signal data_0_IBUF_0 : STD_LOGIC; 
  signal data_4_IBUF_0 : STD_LOGIC; 
  signal data_5_IBUF_0 : STD_LOGIC; 
  signal data_6_IBUF_0 : STD_LOGIC; 
  signal data_7_IBUF_0 : STD_LOGIC; 
  signal write_to_1_0 : STD_LOGIC; 
  signal data_8_IBUF_0 : STD_LOGIC; 
  signal data_9_IBUF_0 : STD_LOGIC; 
  signal data_10_IBUF_0 : STD_LOGIC; 
  signal data_11_IBUF_0 : STD_LOGIC; 
  signal data_12_IBUF_0 : STD_LOGIC; 
  signal data_13_IBUF_0 : STD_LOGIC; 
  signal data_14_IBUF_0 : STD_LOGIC; 
  signal data_15_IBUF_0 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal WrReg_IBUF_0 : STD_LOGIC; 
  signal command_1_IBUF_0 : STD_LOGIC; 
  signal command_0_IBUF_0 : STD_LOGIC; 
  signal data_0_IBUF_direct : STD_LOGIC; 
  signal data_1_IBUF_direct : STD_LOGIC; 
  signal data_2_IBUF_direct : STD_LOGIC; 
  signal data_3_IBUF_direct : STD_LOGIC; 
  signal data_4_IBUF_direct : STD_LOGIC; 
  signal data_5_IBUF_direct : STD_LOGIC; 
  signal data_6_IBUF_direct : STD_LOGIC; 
  signal data_7_IBUF_direct : STD_LOGIC; 
  signal data_8_IBUF_direct : STD_LOGIC; 
  signal data_9_IBUF_direct : STD_LOGIC; 
  signal data_10_IBUF_direct : STD_LOGIC; 
  signal data_11_IBUF_direct : STD_LOGIC; 
  signal data_12_IBUF_direct : STD_LOGIC; 
  signal data_13_IBUF_direct : STD_LOGIC; 
  signal data_14_IBUF_direct : STD_LOGIC; 
  signal data_15_IBUF_direct : STD_LOGIC; 
  signal ProtoComp1_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal ProtoComp1_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal data_1_IBUF_ProtoComp1_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal data_1_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal data_2_IBUF_ProtoComp1_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal data_2_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal data_3_IBUF_ProtoComp1_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal data_3_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal data_4_IBUF_ProtoComp1_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal data_4_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal data_5_IBUF_ProtoComp1_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal data_5_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal data_6_IBUF_ProtoComp1_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal data_6_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal data_7_IBUF_ProtoComp1_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal data_7_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal data_8_IBUF_ProtoComp1_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal data_8_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal data_9_IBUF_ProtoComp1_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal data_9_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal data_10_IBUF_ProtoComp1_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal data_10_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal data_11_IBUF_ProtoComp1_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal data_11_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal data_12_IBUF_ProtoComp1_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal data_12_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal data_13_IBUF_ProtoComp1_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal data_13_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal data_14_IBUF_ProtoComp1_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal data_14_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal data_15_IBUF_ProtoComp1_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal data_15_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal WrReg_IBUF_317 : STD_LOGIC; 
  signal data_0_IBUF_320 : STD_LOGIC; 
  signal data_1_IBUF_325 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_328 : STD_LOGIC; 
  signal data_2_IBUF_333 : STD_LOGIC; 
  signal data_3_IBUF_338 : STD_LOGIC; 
  signal data_4_IBUF_343 : STD_LOGIC; 
  signal data_5_IBUF_348 : STD_LOGIC; 
  signal data_6_IBUF_353 : STD_LOGIC; 
  signal data_7_IBUF_358 : STD_LOGIC; 
  signal data_8_IBUF_365 : STD_LOGIC; 
  signal data_9_IBUF_372 : STD_LOGIC; 
  signal command_0_IBUF_393 : STD_LOGIC; 
  signal command_1_IBUF_396 : STD_LOGIC; 
  signal data_10_IBUF_399 : STD_LOGIC; 
  signal data_11_IBUF_402 : STD_LOGIC; 
  signal data_12_IBUF_407 : STD_LOGIC; 
  signal data_13_IBUF_412 : STD_LOGIC; 
  signal data_14_IBUF_419 : STD_LOGIC; 
  signal data_15_IBUF_428 : STD_LOGIC; 
  signal rst_IBUF_469 : STD_LOGIC; 
  signal NlwBufferSignal_PS_reg_register_data_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PS_reg_register_data_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_PS_reg_register_data_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PS_reg_register_data_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_PS_reg_register_data_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PS_reg_register_data_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_MAX_reg_register_data_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_MAX_reg_register_data_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ProtoComp1_D2OFFBYP_SRC_1_INA : STD_LOGIC; 
  signal NlwBufferSignal_ProtoComp1_D2OBYP_SRC_1_INA : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_MAX_reg_register_data_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_MAX_reg_register_data_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_MAX_reg_register_data_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_MAX_reg_register_data_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ProtoComp1_D2OFFBYP_SRC_5_INA : STD_LOGIC; 
  signal NlwBufferSignal_ProtoComp1_D2OBYP_SRC_5_INA : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_MAX_reg_register_data_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_MAX_reg_register_data_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_MAX_reg_register_data_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_MAX_reg_register_data_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ProtoComp1_D2OFFBYP_SRC_9_INA : STD_LOGIC; 
  signal NlwBufferSignal_ProtoComp1_D2OBYP_SRC_9_INA : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_MAX_reg_register_data_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MAX_reg_register_data_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_MAX_reg_register_data_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_MAX_reg_register_data_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_MAX_reg_register_data_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_MAX_reg_register_data_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NMI_reg_register_data_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MIN_reg_register_data_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_PS_reg_register_data_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PS_reg_register_data_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_PS_out_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_PS_out_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_PS_out_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMI_out_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMI_out_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMI_out_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMI_out_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMI_out_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMI_out_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMI_out_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MIN_out_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMI_out_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MIN_out_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMI_out_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MIN_out_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMI_out_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MIN_out_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MIN_out_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MIN_out_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MIN_out_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MIN_out_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MIN_out_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MIN_out_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMI_out_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMI_out_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MAX_out_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMI_out_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MAX_out_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MAX_out_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMI_out_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MAX_out_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MAX_out_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMI_out_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MAX_out_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MAX_out_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_NMI_out_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MAX_out_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MAX_out_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MAX_out_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MAX_out_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MAX_out_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MAX_out_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MAX_out_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MAX_out_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MAX_out_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MIN_out_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MIN_out_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MIN_out_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MIN_out_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MIN_out_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_MIN_out_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_PS_out_0_OBUF_I : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OFFBYP_SRC_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OBYP_SRC_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OFFBYP_SRC_1_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OBYP_SRC_1_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OFFBYP_SRC_2_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OBYP_SRC_2_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OFFBYP_SRC_3_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OBYP_SRC_3_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OFFBYP_SRC_4_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OBYP_SRC_4_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OFFBYP_SRC_5_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OBYP_SRC_5_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OFFBYP_SRC_6_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OBYP_SRC_6_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OFFBYP_SRC_7_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OBYP_SRC_7_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OFFBYP_SRC_8_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OBYP_SRC_8_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OFFBYP_SRC_9_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OBYP_SRC_9_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OFFBYP_SRC_10_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OBYP_SRC_10_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OFFBYP_SRC_11_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OBYP_SRC_11_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OFFBYP_SRC_12_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OBYP_SRC_12_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OFFBYP_SRC_13_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OBYP_SRC_13_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OFFBYP_SRC_14_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OBYP_SRC_14_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OFFBYP_SRC_15_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp1_D2OBYP_SRC_15_IB_UNCONNECTED : STD_LOGIC; 
  signal write_to : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal PS_reg_register_data : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal MAX_reg_register_data : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal NMI_reg_register_data : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal MIN_reg_register_data : STD_LOGIC_VECTOR ( 15 downto 0 ); 
begin
  PS_reg_register_data_1 : X_FF
    generic map(
      LOC => "OLOGIC_X10Y62",
      INIT => '0'
    )
    port map (
      CE => write_to(0),
      CLK => NlwBufferSignal_PS_reg_register_data_1_CLK,
      I => NlwBufferSignal_PS_reg_register_data_1_IN,
      O => PS_reg_register_data(1),
      SET => GND,
      RST => rst_IBUF_0
    );
  PS_reg_register_data_2 : X_FF
    generic map(
      LOC => "OLOGIC_X10Y63",
      INIT => '0'
    )
    port map (
      CE => write_to(0),
      CLK => NlwBufferSignal_PS_reg_register_data_2_CLK,
      I => NlwBufferSignal_PS_reg_register_data_2_IN,
      O => PS_reg_register_data(2),
      SET => GND,
      RST => rst_IBUF_0
    );
  PS_reg_register_data_3 : X_FF
    generic map(
      LOC => "OLOGIC_X11Y61",
      INIT => '0'
    )
    port map (
      CE => write_to(0),
      CLK => NlwBufferSignal_PS_reg_register_data_3_CLK,
      I => NlwBufferSignal_PS_reg_register_data_3_IN,
      O => PS_reg_register_data(3),
      SET => GND,
      RST => rst_IBUF_0
    );
  MAX_reg_register_data_0 : X_FF
    generic map(
      LOC => "ILOGIC_X2Y60",
      INIT => '0'
    )
    port map (
      CE => write_to_3_0,
      CLK => NlwBufferSignal_MAX_reg_register_data_0_CLK,
      I => ProtoComp1_D2OFFBYP_SRC_OUT,
      O => MAX_reg_register_data(0),
      SET => GND,
      RST => rst_IBUF_0
    );
  ProtoComp1_D2OFFBYP_SRC : X_MUX2
    generic map(
      LOC => "ILOGIC_X2Y60"
    )
    port map (
      IA => data_0_IBUF_direct,
      IB => NLW_ProtoComp1_D2OFFBYP_SRC_IB_UNCONNECTED,
      O => ProtoComp1_D2OFFBYP_SRC_OUT,
      SEL => ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYP_SRC : X_MUX2
    generic map(
      LOC => "ILOGIC_X2Y60"
    )
    port map (
      IA => data_0_IBUF_direct,
      IB => NLW_ProtoComp1_D2OBYP_SRC_IB_UNCONNECTED,
      O => data_0_IBUF_0,
      SEL => ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYPSEL_GND : X_ZERO
    generic map(
      LOC => "ILOGIC_X2Y60"
    )
    port map (
      O => ProtoComp1_D2OBYPSEL_GND_0
    );
  NMI_reg_register_data_0 : X_FF
    generic map(
      LOC => "OLOGIC_X12Y25",
      INIT => '0'
    )
    port map (
      CE => write_to(2),
      CLK => NlwBufferSignal_NMI_reg_register_data_0_CLK,
      I => NlwBufferSignal_NMI_reg_register_data_0_IN,
      O => NMI_reg_register_data(0),
      SET => GND,
      RST => rst_IBUF_0
    );
  MAX_reg_register_data_1 : X_FF
    generic map(
      LOC => "ILOGIC_X2Y63",
      INIT => '0'
    )
    port map (
      CE => write_to_3_0,
      CLK => NlwBufferSignal_MAX_reg_register_data_1_CLK,
      I => data_1_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      O => MAX_reg_register_data(1),
      SET => GND,
      RST => rst_IBUF_0
    );
  ProtoComp1_D2OFFBYP_SRC_1 : X_MUX2
    generic map(
      LOC => "ILOGIC_X2Y63"
    )
    port map (
      IA => NlwBufferSignal_ProtoComp1_D2OFFBYP_SRC_1_INA,
      IB => NLW_ProtoComp1_D2OFFBYP_SRC_1_IB_UNCONNECTED,
      O => data_1_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      SEL => data_1_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYP_SRC_1 : X_MUX2
    generic map(
      LOC => "ILOGIC_X2Y63"
    )
    port map (
      IA => NlwBufferSignal_ProtoComp1_D2OBYP_SRC_1_INA,
      IB => NLW_ProtoComp1_D2OBYP_SRC_1_IB_UNCONNECTED,
      O => data_1_IBUF_0,
      SEL => data_1_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYPSEL_GND_1 : X_ZERO
    generic map(
      LOC => "ILOGIC_X2Y63"
    )
    port map (
      O => data_1_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  NMI_reg_register_data_1 : X_FF
    generic map(
      LOC => "OLOGIC_X12Y21",
      INIT => '0'
    )
    port map (
      CE => write_to(2),
      CLK => NlwBufferSignal_NMI_reg_register_data_1_CLK,
      I => NlwBufferSignal_NMI_reg_register_data_1_IN,
      O => NMI_reg_register_data(1),
      SET => GND,
      RST => rst_IBUF_0
    );
  MAX_reg_register_data_2 : X_FF
    generic map(
      LOC => "ILOGIC_X2Y62",
      INIT => '0'
    )
    port map (
      CE => write_to_3_0,
      CLK => NlwBufferSignal_MAX_reg_register_data_2_CLK,
      I => data_2_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      O => MAX_reg_register_data(2),
      SET => GND,
      RST => rst_IBUF_0
    );
  ProtoComp1_D2OFFBYP_SRC_2 : X_MUX2
    generic map(
      LOC => "ILOGIC_X2Y62"
    )
    port map (
      IA => data_2_IBUF_direct,
      IB => NLW_ProtoComp1_D2OFFBYP_SRC_2_IB_UNCONNECTED,
      O => data_2_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      SEL => data_2_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYP_SRC_2 : X_MUX2
    generic map(
      LOC => "ILOGIC_X2Y62"
    )
    port map (
      IA => data_2_IBUF_direct,
      IB => NLW_ProtoComp1_D2OBYP_SRC_2_IB_UNCONNECTED,
      O => data_2_IBUF_0,
      SEL => data_2_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYPSEL_GND_2 : X_ZERO
    generic map(
      LOC => "ILOGIC_X2Y62"
    )
    port map (
      O => data_2_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  NMI_reg_register_data_2 : X_FF
    generic map(
      LOC => "OLOGIC_X12Y30",
      INIT => '0'
    )
    port map (
      CE => write_to(2),
      CLK => NlwBufferSignal_NMI_reg_register_data_2_CLK,
      I => NlwBufferSignal_NMI_reg_register_data_2_IN,
      O => NMI_reg_register_data(2),
      SET => GND,
      RST => rst_IBUF_0
    );
  MAX_reg_register_data_3 : X_FF
    generic map(
      LOC => "ILOGIC_X2Y61",
      INIT => '0'
    )
    port map (
      CE => write_to_3_0,
      CLK => NlwBufferSignal_MAX_reg_register_data_3_CLK,
      I => data_3_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      O => MAX_reg_register_data(3),
      SET => GND,
      RST => rst_IBUF_0
    );
  ProtoComp1_D2OFFBYP_SRC_3 : X_MUX2
    generic map(
      LOC => "ILOGIC_X2Y61"
    )
    port map (
      IA => data_3_IBUF_direct,
      IB => NLW_ProtoComp1_D2OFFBYP_SRC_3_IB_UNCONNECTED,
      O => data_3_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      SEL => data_3_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYP_SRC_3 : X_MUX2
    generic map(
      LOC => "ILOGIC_X2Y61"
    )
    port map (
      IA => data_3_IBUF_direct,
      IB => NLW_ProtoComp1_D2OBYP_SRC_3_IB_UNCONNECTED,
      O => data_3_IBUF_0,
      SEL => data_3_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYPSEL_GND_3 : X_ZERO
    generic map(
      LOC => "ILOGIC_X2Y61"
    )
    port map (
      O => data_3_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  NMI_reg_register_data_3 : X_FF
    generic map(
      LOC => "OLOGIC_X12Y22",
      INIT => '0'
    )
    port map (
      CE => write_to(2),
      CLK => NlwBufferSignal_NMI_reg_register_data_3_CLK,
      I => NlwBufferSignal_NMI_reg_register_data_3_IN,
      O => NMI_reg_register_data(3),
      SET => GND,
      RST => rst_IBUF_0
    );
  MAX_reg_register_data_4 : X_FF
    generic map(
      LOC => "ILOGIC_X1Y60",
      INIT => '0'
    )
    port map (
      CE => write_to_3_0,
      CLK => NlwBufferSignal_MAX_reg_register_data_4_CLK,
      I => data_4_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      O => MAX_reg_register_data(4),
      SET => GND,
      RST => rst_IBUF_0
    );
  ProtoComp1_D2OFFBYP_SRC_4 : X_MUX2
    generic map(
      LOC => "ILOGIC_X1Y60"
    )
    port map (
      IA => data_4_IBUF_direct,
      IB => NLW_ProtoComp1_D2OFFBYP_SRC_4_IB_UNCONNECTED,
      O => data_4_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      SEL => data_4_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYP_SRC_4 : X_MUX2
    generic map(
      LOC => "ILOGIC_X1Y60"
    )
    port map (
      IA => data_4_IBUF_direct,
      IB => NLW_ProtoComp1_D2OBYP_SRC_4_IB_UNCONNECTED,
      O => data_4_IBUF_0,
      SEL => data_4_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYPSEL_GND_4 : X_ZERO
    generic map(
      LOC => "ILOGIC_X1Y60"
    )
    port map (
      O => data_4_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  NMI_reg_register_data_4 : X_FF
    generic map(
      LOC => "OLOGIC_X12Y24",
      INIT => '0'
    )
    port map (
      CE => write_to(2),
      CLK => NlwBufferSignal_NMI_reg_register_data_4_CLK,
      I => NlwBufferSignal_NMI_reg_register_data_4_IN,
      O => NMI_reg_register_data(4),
      SET => GND,
      RST => rst_IBUF_0
    );
  MAX_reg_register_data_5 : X_FF
    generic map(
      LOC => "ILOGIC_X6Y63",
      INIT => '0'
    )
    port map (
      CE => write_to_3_0,
      CLK => NlwBufferSignal_MAX_reg_register_data_5_CLK,
      I => data_5_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      O => MAX_reg_register_data(5),
      SET => GND,
      RST => rst_IBUF_0
    );
  ProtoComp1_D2OFFBYP_SRC_5 : X_MUX2
    generic map(
      LOC => "ILOGIC_X6Y63"
    )
    port map (
      IA => NlwBufferSignal_ProtoComp1_D2OFFBYP_SRC_5_INA,
      IB => NLW_ProtoComp1_D2OFFBYP_SRC_5_IB_UNCONNECTED,
      O => data_5_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      SEL => data_5_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYP_SRC_5 : X_MUX2
    generic map(
      LOC => "ILOGIC_X6Y63"
    )
    port map (
      IA => NlwBufferSignal_ProtoComp1_D2OBYP_SRC_5_INA,
      IB => NLW_ProtoComp1_D2OBYP_SRC_5_IB_UNCONNECTED,
      O => data_5_IBUF_0,
      SEL => data_5_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYPSEL_GND_5 : X_ZERO
    generic map(
      LOC => "ILOGIC_X6Y63"
    )
    port map (
      O => data_5_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  NMI_reg_register_data_5 : X_FF
    generic map(
      LOC => "OLOGIC_X12Y20",
      INIT => '0'
    )
    port map (
      CE => write_to(2),
      CLK => NlwBufferSignal_NMI_reg_register_data_5_CLK,
      I => NlwBufferSignal_NMI_reg_register_data_5_IN,
      O => NMI_reg_register_data(5),
      SET => GND,
      RST => rst_IBUF_0
    );
  MAX_reg_register_data_6 : X_FF
    generic map(
      LOC => "ILOGIC_X6Y62",
      INIT => '0'
    )
    port map (
      CE => write_to_3_0,
      CLK => NlwBufferSignal_MAX_reg_register_data_6_CLK,
      I => data_6_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      O => MAX_reg_register_data(6),
      SET => GND,
      RST => rst_IBUF_0
    );
  ProtoComp1_D2OFFBYP_SRC_6 : X_MUX2
    generic map(
      LOC => "ILOGIC_X6Y62"
    )
    port map (
      IA => data_6_IBUF_direct,
      IB => NLW_ProtoComp1_D2OFFBYP_SRC_6_IB_UNCONNECTED,
      O => data_6_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      SEL => data_6_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYP_SRC_6 : X_MUX2
    generic map(
      LOC => "ILOGIC_X6Y62"
    )
    port map (
      IA => data_6_IBUF_direct,
      IB => NLW_ProtoComp1_D2OBYP_SRC_6_IB_UNCONNECTED,
      O => data_6_IBUF_0,
      SEL => data_6_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYPSEL_GND_6 : X_ZERO
    generic map(
      LOC => "ILOGIC_X6Y62"
    )
    port map (
      O => data_6_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  NMI_reg_register_data_6 : X_FF
    generic map(
      LOC => "OLOGIC_X12Y5",
      INIT => '0'
    )
    port map (
      CE => write_to(2),
      CLK => NlwBufferSignal_NMI_reg_register_data_6_CLK,
      I => NlwBufferSignal_NMI_reg_register_data_6_IN,
      O => NMI_reg_register_data(6),
      SET => GND,
      RST => rst_IBUF_0
    );
  MAX_reg_register_data_7 : X_FF
    generic map(
      LOC => "ILOGIC_X6Y61",
      INIT => '0'
    )
    port map (
      CE => write_to_3_0,
      CLK => NlwBufferSignal_MAX_reg_register_data_7_CLK,
      I => data_7_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      O => MAX_reg_register_data(7),
      SET => GND,
      RST => rst_IBUF_0
    );
  ProtoComp1_D2OFFBYP_SRC_7 : X_MUX2
    generic map(
      LOC => "ILOGIC_X6Y61"
    )
    port map (
      IA => data_7_IBUF_direct,
      IB => NLW_ProtoComp1_D2OFFBYP_SRC_7_IB_UNCONNECTED,
      O => data_7_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      SEL => data_7_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYP_SRC_7 : X_MUX2
    generic map(
      LOC => "ILOGIC_X6Y61"
    )
    port map (
      IA => data_7_IBUF_direct,
      IB => NLW_ProtoComp1_D2OBYP_SRC_7_IB_UNCONNECTED,
      O => data_7_IBUF_0,
      SEL => data_7_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYPSEL_GND_7 : X_ZERO
    generic map(
      LOC => "ILOGIC_X6Y61"
    )
    port map (
      O => data_7_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  MIN_reg_register_data_0 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y29",
      INIT => '0'
    )
    port map (
      CE => write_to_1_0,
      CLK => NlwBufferSignal_MIN_reg_register_data_0_CLK,
      I => NlwBufferSignal_MIN_reg_register_data_0_IN,
      O => MIN_reg_register_data(0),
      SET => GND,
      RST => rst_IBUF_0
    );
  NMI_reg_register_data_7 : X_FF
    generic map(
      LOC => "OLOGIC_X12Y4",
      INIT => '0'
    )
    port map (
      CE => write_to(2),
      CLK => NlwBufferSignal_NMI_reg_register_data_7_CLK,
      I => NlwBufferSignal_NMI_reg_register_data_7_IN,
      O => NMI_reg_register_data(7),
      SET => GND,
      RST => rst_IBUF_0
    );
  MAX_reg_register_data_8 : X_FF
    generic map(
      LOC => "ILOGIC_X6Y60",
      INIT => '0'
    )
    port map (
      CE => write_to_3_0,
      CLK => NlwBufferSignal_MAX_reg_register_data_8_CLK,
      I => data_8_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      O => MAX_reg_register_data(8),
      SET => GND,
      RST => rst_IBUF_0
    );
  ProtoComp1_D2OFFBYP_SRC_8 : X_MUX2
    generic map(
      LOC => "ILOGIC_X6Y60"
    )
    port map (
      IA => data_8_IBUF_direct,
      IB => NLW_ProtoComp1_D2OFFBYP_SRC_8_IB_UNCONNECTED,
      O => data_8_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      SEL => data_8_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYP_SRC_8 : X_MUX2
    generic map(
      LOC => "ILOGIC_X6Y60"
    )
    port map (
      IA => data_8_IBUF_direct,
      IB => NLW_ProtoComp1_D2OBYP_SRC_8_IB_UNCONNECTED,
      O => data_8_IBUF_0,
      SEL => data_8_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYPSEL_GND_8 : X_ZERO
    generic map(
      LOC => "ILOGIC_X6Y60"
    )
    port map (
      O => data_8_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  MIN_reg_register_data_1 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y21",
      INIT => '0'
    )
    port map (
      CE => write_to_1_0,
      CLK => NlwBufferSignal_MIN_reg_register_data_1_CLK,
      I => NlwBufferSignal_MIN_reg_register_data_1_IN,
      O => MIN_reg_register_data(1),
      SET => GND,
      RST => rst_IBUF_0
    );
  NMI_reg_register_data_8 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y5",
      INIT => '0'
    )
    port map (
      CE => write_to(2),
      CLK => NlwBufferSignal_NMI_reg_register_data_8_CLK,
      I => NlwBufferSignal_NMI_reg_register_data_8_IN,
      O => NMI_reg_register_data(8),
      SET => GND,
      RST => rst_IBUF_0
    );
  MAX_reg_register_data_9 : X_FF
    generic map(
      LOC => "ILOGIC_X7Y63",
      INIT => '0'
    )
    port map (
      CE => write_to_3_0,
      CLK => NlwBufferSignal_MAX_reg_register_data_9_CLK,
      I => data_9_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      O => MAX_reg_register_data(9),
      SET => GND,
      RST => rst_IBUF_0
    );
  ProtoComp1_D2OFFBYP_SRC_9 : X_MUX2
    generic map(
      LOC => "ILOGIC_X7Y63"
    )
    port map (
      IA => NlwBufferSignal_ProtoComp1_D2OFFBYP_SRC_9_INA,
      IB => NLW_ProtoComp1_D2OFFBYP_SRC_9_IB_UNCONNECTED,
      O => data_9_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      SEL => data_9_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYP_SRC_9 : X_MUX2
    generic map(
      LOC => "ILOGIC_X7Y63"
    )
    port map (
      IA => NlwBufferSignal_ProtoComp1_D2OBYP_SRC_9_INA,
      IB => NLW_ProtoComp1_D2OBYP_SRC_9_IB_UNCONNECTED,
      O => data_9_IBUF_0,
      SEL => data_9_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYPSEL_GND_9 : X_ZERO
    generic map(
      LOC => "ILOGIC_X7Y63"
    )
    port map (
      O => data_9_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  MIN_reg_register_data_2 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y61",
      INIT => '0'
    )
    port map (
      CE => write_to_1_0,
      CLK => NlwBufferSignal_MIN_reg_register_data_2_CLK,
      I => NlwBufferSignal_MIN_reg_register_data_2_IN,
      O => MIN_reg_register_data(2),
      SET => GND,
      RST => rst_IBUF_0
    );
  NMI_reg_register_data_9 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y4",
      INIT => '0'
    )
    port map (
      CE => write_to(2),
      CLK => NlwBufferSignal_NMI_reg_register_data_9_CLK,
      I => NlwBufferSignal_NMI_reg_register_data_9_IN,
      O => NMI_reg_register_data(9),
      SET => GND,
      RST => rst_IBUF_0
    );
  MIN_reg_register_data_3 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y60",
      INIT => '0'
    )
    port map (
      CE => write_to_1_0,
      CLK => NlwBufferSignal_MIN_reg_register_data_3_CLK,
      I => NlwBufferSignal_MIN_reg_register_data_3_IN,
      O => MIN_reg_register_data(3),
      SET => GND,
      RST => rst_IBUF_0
    );
  MIN_reg_register_data_4 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y28",
      INIT => '0'
    )
    port map (
      CE => write_to_1_0,
      CLK => NlwBufferSignal_MIN_reg_register_data_4_CLK,
      I => NlwBufferSignal_MIN_reg_register_data_4_IN,
      O => MIN_reg_register_data(4),
      SET => GND,
      RST => rst_IBUF_0
    );
  MIN_reg_register_data_5 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y35",
      INIT => '0'
    )
    port map (
      CE => write_to_1_0,
      CLK => NlwBufferSignal_MIN_reg_register_data_5_CLK,
      I => NlwBufferSignal_MIN_reg_register_data_5_IN,
      O => MIN_reg_register_data(5),
      SET => GND,
      RST => rst_IBUF_0
    );
  MIN_reg_register_data_6 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y34",
      INIT => '0'
    )
    port map (
      CE => write_to_1_0,
      CLK => NlwBufferSignal_MIN_reg_register_data_6_CLK,
      I => NlwBufferSignal_MIN_reg_register_data_6_IN,
      O => MIN_reg_register_data(6),
      SET => GND,
      RST => rst_IBUF_0
    );
  MIN_reg_register_data_7 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y33",
      INIT => '0'
    )
    port map (
      CE => write_to_1_0,
      CLK => NlwBufferSignal_MIN_reg_register_data_7_CLK,
      I => NlwBufferSignal_MIN_reg_register_data_7_IN,
      O => MIN_reg_register_data(7),
      SET => GND,
      RST => rst_IBUF_0
    );
  MIN_reg_register_data_8 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y32",
      INIT => '0'
    )
    port map (
      CE => write_to_1_0,
      CLK => NlwBufferSignal_MIN_reg_register_data_8_CLK,
      I => NlwBufferSignal_MIN_reg_register_data_8_IN,
      O => MIN_reg_register_data(8),
      SET => GND,
      RST => rst_IBUF_0
    );
  MIN_reg_register_data_9 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y47",
      INIT => '0'
    )
    port map (
      CE => write_to_1_0,
      CLK => NlwBufferSignal_MIN_reg_register_data_9_CLK,
      I => NlwBufferSignal_MIN_reg_register_data_9_IN,
      O => MIN_reg_register_data(9),
      SET => GND,
      RST => rst_IBUF_0
    );
  MAX_reg_register_data_10 : X_FF
    generic map(
      LOC => "ILOGIC_X7Y62",
      INIT => '0'
    )
    port map (
      CE => write_to_3_0,
      CLK => NlwBufferSignal_MAX_reg_register_data_10_CLK,
      I => data_10_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      O => MAX_reg_register_data(10),
      SET => GND,
      RST => rst_IBUF_0
    );
  ProtoComp1_D2OFFBYP_SRC_10 : X_MUX2
    generic map(
      LOC => "ILOGIC_X7Y62"
    )
    port map (
      IA => data_10_IBUF_direct,
      IB => NLW_ProtoComp1_D2OFFBYP_SRC_10_IB_UNCONNECTED,
      O => data_10_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      SEL => data_10_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYP_SRC_10 : X_MUX2
    generic map(
      LOC => "ILOGIC_X7Y62"
    )
    port map (
      IA => data_10_IBUF_direct,
      IB => NLW_ProtoComp1_D2OBYP_SRC_10_IB_UNCONNECTED,
      O => data_10_IBUF_0,
      SEL => data_10_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYPSEL_GND_10 : X_ZERO
    generic map(
      LOC => "ILOGIC_X7Y62"
    )
    port map (
      O => data_10_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  MAX_reg_register_data_11 : X_FF
    generic map(
      LOC => "ILOGIC_X7Y61",
      INIT => '0'
    )
    port map (
      CE => write_to_3_0,
      CLK => NlwBufferSignal_MAX_reg_register_data_11_CLK,
      I => data_11_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      O => MAX_reg_register_data(11),
      SET => GND,
      RST => rst_IBUF_0
    );
  ProtoComp1_D2OFFBYP_SRC_11 : X_MUX2
    generic map(
      LOC => "ILOGIC_X7Y61"
    )
    port map (
      IA => data_11_IBUF_direct,
      IB => NLW_ProtoComp1_D2OFFBYP_SRC_11_IB_UNCONNECTED,
      O => data_11_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      SEL => data_11_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYP_SRC_11 : X_MUX2
    generic map(
      LOC => "ILOGIC_X7Y61"
    )
    port map (
      IA => data_11_IBUF_direct,
      IB => NLW_ProtoComp1_D2OBYP_SRC_11_IB_UNCONNECTED,
      O => data_11_IBUF_0,
      SEL => data_11_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYPSEL_GND_11 : X_ZERO
    generic map(
      LOC => "ILOGIC_X7Y61"
    )
    port map (
      O => data_11_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  NMI_reg_register_data_10 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y7",
      INIT => '0'
    )
    port map (
      CE => write_to(2),
      CLK => NlwBufferSignal_NMI_reg_register_data_10_CLK,
      I => NlwBufferSignal_NMI_reg_register_data_10_IN,
      O => NMI_reg_register_data(10),
      SET => GND,
      RST => rst_IBUF_0
    );
  MAX_reg_register_data_12 : X_FF
    generic map(
      LOC => "ILOGIC_X7Y60",
      INIT => '0'
    )
    port map (
      CE => write_to_3_0,
      CLK => NlwBufferSignal_MAX_reg_register_data_12_CLK,
      I => data_12_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      O => MAX_reg_register_data(12),
      SET => GND,
      RST => rst_IBUF_0
    );
  ProtoComp1_D2OFFBYP_SRC_12 : X_MUX2
    generic map(
      LOC => "ILOGIC_X7Y60"
    )
    port map (
      IA => data_12_IBUF_direct,
      IB => NLW_ProtoComp1_D2OFFBYP_SRC_12_IB_UNCONNECTED,
      O => data_12_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      SEL => data_12_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYP_SRC_12 : X_MUX2
    generic map(
      LOC => "ILOGIC_X7Y60"
    )
    port map (
      IA => data_12_IBUF_direct,
      IB => NLW_ProtoComp1_D2OBYP_SRC_12_IB_UNCONNECTED,
      O => data_12_IBUF_0,
      SEL => data_12_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYPSEL_GND_12 : X_ZERO
    generic map(
      LOC => "ILOGIC_X7Y60"
    )
    port map (
      O => data_12_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  NMI_reg_register_data_11 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y6",
      INIT => '0'
    )
    port map (
      CE => write_to(2),
      CLK => NlwBufferSignal_NMI_reg_register_data_11_CLK,
      I => NlwBufferSignal_NMI_reg_register_data_11_IN,
      O => NMI_reg_register_data(11),
      SET => GND,
      RST => rst_IBUF_0
    );
  MAX_reg_register_data_13 : X_FF
    generic map(
      LOC => "ILOGIC_X9Y61",
      INIT => '0'
    )
    port map (
      CE => write_to_3_0,
      CLK => NlwBufferSignal_MAX_reg_register_data_13_CLK,
      I => data_13_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      O => MAX_reg_register_data(13),
      SET => GND,
      RST => rst_IBUF_0
    );
  ProtoComp1_D2OFFBYP_SRC_13 : X_MUX2
    generic map(
      LOC => "ILOGIC_X9Y61"
    )
    port map (
      IA => data_13_IBUF_direct,
      IB => NLW_ProtoComp1_D2OFFBYP_SRC_13_IB_UNCONNECTED,
      O => data_13_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      SEL => data_13_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYP_SRC_13 : X_MUX2
    generic map(
      LOC => "ILOGIC_X9Y61"
    )
    port map (
      IA => data_13_IBUF_direct,
      IB => NLW_ProtoComp1_D2OBYP_SRC_13_IB_UNCONNECTED,
      O => data_13_IBUF_0,
      SEL => data_13_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYPSEL_GND_13 : X_ZERO
    generic map(
      LOC => "ILOGIC_X9Y61"
    )
    port map (
      O => data_13_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  NMI_reg_register_data_12 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y19",
      INIT => '0'
    )
    port map (
      CE => write_to(2),
      CLK => NlwBufferSignal_NMI_reg_register_data_12_CLK,
      I => NlwBufferSignal_NMI_reg_register_data_12_IN,
      O => NMI_reg_register_data(12),
      SET => GND,
      RST => rst_IBUF_0
    );
  MAX_reg_register_data_14 : X_FF
    generic map(
      LOC => "ILOGIC_X9Y60",
      INIT => '0'
    )
    port map (
      CE => write_to_3_0,
      CLK => NlwBufferSignal_MAX_reg_register_data_14_CLK,
      I => data_14_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      O => MAX_reg_register_data(14),
      SET => GND,
      RST => rst_IBUF_0
    );
  ProtoComp1_D2OFFBYP_SRC_14 : X_MUX2
    generic map(
      LOC => "ILOGIC_X9Y60"
    )
    port map (
      IA => data_14_IBUF_direct,
      IB => NLW_ProtoComp1_D2OFFBYP_SRC_14_IB_UNCONNECTED,
      O => data_14_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      SEL => data_14_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYP_SRC_14 : X_MUX2
    generic map(
      LOC => "ILOGIC_X9Y60"
    )
    port map (
      IA => data_14_IBUF_direct,
      IB => NLW_ProtoComp1_D2OBYP_SRC_14_IB_UNCONNECTED,
      O => data_14_IBUF_0,
      SEL => data_14_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYPSEL_GND_14 : X_ZERO
    generic map(
      LOC => "ILOGIC_X9Y60"
    )
    port map (
      O => data_14_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  NMI_reg_register_data_13 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y18",
      INIT => '0'
    )
    port map (
      CE => write_to(2),
      CLK => NlwBufferSignal_NMI_reg_register_data_13_CLK,
      I => NlwBufferSignal_NMI_reg_register_data_13_IN,
      O => NMI_reg_register_data(13),
      SET => GND,
      RST => rst_IBUF_0
    );
  MAX_reg_register_data_15 : X_FF
    generic map(
      LOC => "ILOGIC_X10Y60",
      INIT => '0'
    )
    port map (
      CE => write_to_3_0,
      CLK => NlwBufferSignal_MAX_reg_register_data_15_CLK,
      I => data_15_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      O => MAX_reg_register_data(15),
      SET => GND,
      RST => rst_IBUF_0
    );
  ProtoComp1_D2OFFBYP_SRC_15 : X_MUX2
    generic map(
      LOC => "ILOGIC_X10Y60"
    )
    port map (
      IA => data_15_IBUF_direct,
      IB => NLW_ProtoComp1_D2OFFBYP_SRC_15_IB_UNCONNECTED,
      O => data_15_IBUF_ProtoComp1_D2OFFBYP_SRC_OUT,
      SEL => data_15_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYP_SRC_15 : X_MUX2
    generic map(
      LOC => "ILOGIC_X10Y60"
    )
    port map (
      IA => data_15_IBUF_direct,
      IB => NLW_ProtoComp1_D2OBYP_SRC_15_IB_UNCONNECTED,
      O => data_15_IBUF_0,
      SEL => data_15_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  ProtoComp1_D2OBYPSEL_GND_15 : X_ZERO
    generic map(
      LOC => "ILOGIC_X10Y60"
    )
    port map (
      O => data_15_IBUF_ProtoComp1_D2OBYPSEL_GND_0
    );
  NMI_reg_register_data_14 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y49",
      INIT => '0'
    )
    port map (
      CE => write_to(2),
      CLK => NlwBufferSignal_NMI_reg_register_data_14_CLK,
      I => NlwBufferSignal_NMI_reg_register_data_14_IN,
      O => NMI_reg_register_data(14),
      SET => GND,
      RST => rst_IBUF_0
    );
  NMI_reg_register_data_15 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y20",
      INIT => '0'
    )
    port map (
      CE => write_to(2),
      CLK => NlwBufferSignal_NMI_reg_register_data_15_CLK,
      I => NlwBufferSignal_NMI_reg_register_data_15_IN,
      O => NMI_reg_register_data(15),
      SET => GND,
      RST => rst_IBUF_0
    );
  MIN_reg_register_data_10 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y45",
      INIT => '0'
    )
    port map (
      CE => write_to_1_0,
      CLK => NlwBufferSignal_MIN_reg_register_data_10_CLK,
      I => NlwBufferSignal_MIN_reg_register_data_10_IN,
      O => MIN_reg_register_data(10),
      SET => GND,
      RST => rst_IBUF_0
    );
  MIN_reg_register_data_11 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y46",
      INIT => '0'
    )
    port map (
      CE => write_to_1_0,
      CLK => NlwBufferSignal_MIN_reg_register_data_11_CLK,
      I => NlwBufferSignal_MIN_reg_register_data_11_IN,
      O => MIN_reg_register_data(11),
      SET => GND,
      RST => rst_IBUF_0
    );
  MIN_reg_register_data_12 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y31",
      INIT => '0'
    )
    port map (
      CE => write_to_1_0,
      CLK => NlwBufferSignal_MIN_reg_register_data_12_CLK,
      I => NlwBufferSignal_MIN_reg_register_data_12_IN,
      O => MIN_reg_register_data(12),
      SET => GND,
      RST => rst_IBUF_0
    );
  MIN_reg_register_data_13 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y44",
      INIT => '0'
    )
    port map (
      CE => write_to_1_0,
      CLK => NlwBufferSignal_MIN_reg_register_data_13_CLK,
      I => NlwBufferSignal_MIN_reg_register_data_13_IN,
      O => MIN_reg_register_data(13),
      SET => GND,
      RST => rst_IBUF_0
    );
  MIN_reg_register_data_14 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y51",
      INIT => '0'
    )
    port map (
      CE => write_to_1_0,
      CLK => NlwBufferSignal_MIN_reg_register_data_14_CLK,
      I => NlwBufferSignal_MIN_reg_register_data_14_IN,
      O => MIN_reg_register_data(14),
      SET => GND,
      RST => rst_IBUF_0
    );
  MIN_reg_register_data_15 : X_FF
    generic map(
      LOC => "OLOGIC_X0Y48",
      INIT => '0'
    )
    port map (
      CE => write_to_1_0,
      CLK => NlwBufferSignal_MIN_reg_register_data_15_CLK,
      I => NlwBufferSignal_MIN_reg_register_data_15_IN,
      O => MIN_reg_register_data(15),
      SET => GND,
      RST => rst_IBUF_0
    );
  PS_reg_register_data_0 : X_FF
    generic map(
      LOC => "OLOGIC_X10Y61",
      INIT => '0'
    )
    port map (
      CE => write_to(0),
      CLK => NlwBufferSignal_PS_reg_register_data_0_CLK,
      I => NlwBufferSignal_PS_reg_register_data_0_IN,
      O => PS_reg_register_data(0),
      SET => GND,
      RST => rst_IBUF_0
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
  PS_out_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD38"
    )
    port map (
      I => NlwBufferSignal_PS_out_1_OBUF_I,
      O => PS_out(1)
    );
  PS_out_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD37"
    )
    port map (
      I => NlwBufferSignal_PS_out_2_OBUF_I,
      O => PS_out(2)
    );
  PS_out_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD43"
    )
    port map (
      I => NlwBufferSignal_PS_out_3_OBUF_I,
      O => PS_out(3)
    );
  WrReg_IBUF : X_BUF
    generic map(
      LOC => "PAD3",
      PATHPULSE => 202 ps
    )
    port map (
      O => WrReg_IBUF_317,
      I => WrReg
    );
  ProtoComp6_IMUX : X_BUF
    generic map(
      LOC => "PAD3",
      PATHPULSE => 202 ps
    )
    port map (
      I => WrReg_IBUF_317,
      O => WrReg_IBUF_0
    );
  data_0_IBUF : X_BUF
    generic map(
      LOC => "PAD8",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_0_IBUF_320,
      I => data(0)
    );
  ProtoComp6_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD8",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_0_IBUF_320,
      O => data_0_IBUF_direct
    );
  NMI_out_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD79"
    )
    port map (
      I => NlwBufferSignal_NMI_out_0_OBUF_I,
      O => NMI_out(0)
    );
  data_1_IBUF : X_BUF
    generic map(
      LOC => "PAD5",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_1_IBUF_325,
      I => data(1)
    );
  ProtoComp6_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD5",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_1_IBUF_325,
      O => data_1_IBUF_direct
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      O => clk_BUFGP_IBUFG_328,
      I => clk
    );
  ProtoComp6_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_328,
      O => clk_BUFGP_IBUFG_0
    );
  NMI_out_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD83"
    )
    port map (
      I => NlwBufferSignal_NMI_out_1_OBUF_I,
      O => NMI_out(1)
    );
  data_2_IBUF : X_BUF
    generic map(
      LOC => "PAD6",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_2_IBUF_333,
      I => data(2)
    );
  ProtoComp6_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD6",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_2_IBUF_333,
      O => data_2_IBUF_direct
    );
  NMI_out_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD74"
    )
    port map (
      I => NlwBufferSignal_NMI_out_2_OBUF_I,
      O => NMI_out(2)
    );
  data_3_IBUF : X_BUF
    generic map(
      LOC => "PAD7",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_3_IBUF_338,
      I => data(3)
    );
  ProtoComp6_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD7",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_3_IBUF_338,
      O => data_3_IBUF_direct
    );
  NMI_out_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD82"
    )
    port map (
      I => NlwBufferSignal_NMI_out_3_OBUF_I,
      O => NMI_out(3)
    );
  data_4_IBUF : X_BUF
    generic map(
      LOC => "PAD4",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_4_IBUF_343,
      I => data(4)
    );
  ProtoComp6_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD4",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_4_IBUF_343,
      O => data_4_IBUF_direct
    );
  NMI_out_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD80"
    )
    port map (
      I => NlwBufferSignal_NMI_out_4_OBUF_I,
      O => NMI_out(4)
    );
  data_5_IBUF : X_BUF
    generic map(
      LOC => "PAD21",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_5_IBUF_348,
      I => data(5)
    );
  ProtoComp6_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD21",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_5_IBUF_348,
      O => data_5_IBUF_direct
    );
  NMI_out_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD84"
    )
    port map (
      I => NlwBufferSignal_NMI_out_5_OBUF_I,
      O => NMI_out(5)
    );
  data_6_IBUF : X_BUF
    generic map(
      LOC => "PAD22",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_6_IBUF_353,
      I => data(6)
    );
  ProtoComp6_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD22",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_6_IBUF_353,
      O => data_6_IBUF_direct
    );
  NMI_out_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD99"
    )
    port map (
      I => NlwBufferSignal_NMI_out_6_OBUF_I,
      O => NMI_out(6)
    );
  data_7_IBUF : X_BUF
    generic map(
      LOC => "PAD23",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_7_IBUF_358,
      I => data(7)
    );
  ProtoComp6_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD23",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_7_IBUF_358,
      O => data_7_IBUF_direct
    );
  MIN_out_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD169"
    )
    port map (
      I => NlwBufferSignal_MIN_out_0_OBUF_I,
      O => MIN_out(0)
    );
  NMI_out_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD100"
    )
    port map (
      I => NlwBufferSignal_NMI_out_7_OBUF_I,
      O => NMI_out(7)
    );
  data_8_IBUF : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_8_IBUF_365,
      I => data(8)
    );
  ProtoComp6_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_8_IBUF_365,
      O => data_8_IBUF_direct
    );
  MIN_out_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD161"
    )
    port map (
      I => NlwBufferSignal_MIN_out_1_OBUF_I,
      O => MIN_out(1)
    );
  NMI_out_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD145"
    )
    port map (
      I => NlwBufferSignal_NMI_out_8_OBUF_I,
      O => NMI_out(8)
    );
  data_9_IBUF : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_9_IBUF_372,
      I => data(9)
    );
  ProtoComp6_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_9_IBUF_372,
      O => data_9_IBUF_direct
    );
  MIN_out_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD199"
    )
    port map (
      I => NlwBufferSignal_MIN_out_2_OBUF_I,
      O => MIN_out(2)
    );
  NMI_out_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD146"
    )
    port map (
      I => NlwBufferSignal_NMI_out_9_OBUF_I,
      O => NMI_out(9)
    );
  MIN_out_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD200"
    )
    port map (
      I => NlwBufferSignal_MIN_out_3_OBUF_I,
      O => MIN_out(3)
    );
  MIN_out_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD170"
    )
    port map (
      I => NlwBufferSignal_MIN_out_4_OBUF_I,
      O => MIN_out(4)
    );
  MIN_out_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD175"
    )
    port map (
      I => NlwBufferSignal_MIN_out_5_OBUF_I,
      O => MIN_out(5)
    );
  MIN_out_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD176"
    )
    port map (
      I => NlwBufferSignal_MIN_out_6_OBUF_I,
      O => MIN_out(6)
    );
  MIN_out_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD173"
    )
    port map (
      I => NlwBufferSignal_MIN_out_7_OBUF_I,
      O => MIN_out(7)
    );
  MIN_out_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD174"
    )
    port map (
      I => NlwBufferSignal_MIN_out_8_OBUF_I,
      O => MIN_out(8)
    );
  MIN_out_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD187"
    )
    port map (
      I => NlwBufferSignal_MIN_out_9_OBUF_I,
      O => MIN_out(9)
    );
  command_0_IBUF : X_BUF
    generic map(
      LOC => "PAD192",
      PATHPULSE => 202 ps
    )
    port map (
      O => command_0_IBUF_393,
      I => command(0)
    );
  ProtoComp6_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD192",
      PATHPULSE => 202 ps
    )
    port map (
      I => command_0_IBUF_393,
      O => command_0_IBUF_0
    );
  command_1_IBUF : X_BUF
    generic map(
      LOC => "PAD1",
      PATHPULSE => 202 ps
    )
    port map (
      O => command_1_IBUF_396,
      I => command(1)
    );
  ProtoComp6_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD1",
      PATHPULSE => 202 ps
    )
    port map (
      I => command_1_IBUF_396,
      O => command_1_IBUF_0
    );
  data_10_IBUF : X_BUF
    generic map(
      LOC => "PAD26",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_10_IBUF_399,
      I => data(10)
    );
  ProtoComp6_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD26",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_10_IBUF_399,
      O => data_10_IBUF_direct
    );
  data_11_IBUF : X_BUF
    generic map(
      LOC => "PAD27",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_11_IBUF_402,
      I => data(11)
    );
  ProtoComp6_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD27",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_11_IBUF_402,
      O => data_11_IBUF_direct
    );
  NMI_out_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD147"
    )
    port map (
      I => NlwBufferSignal_NMI_out_10_OBUF_I,
      O => NMI_out(10)
    );
  data_12_IBUF : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_12_IBUF_407,
      I => data(12)
    );
  ProtoComp6_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_12_IBUF_407,
      O => data_12_IBUF_direct
    );
  NMI_out_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD148"
    )
    port map (
      I => NlwBufferSignal_NMI_out_11_OBUF_I,
      O => NMI_out(11)
    );
  data_13_IBUF : X_BUF
    generic map(
      LOC => "PAD35",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_13_IBUF_412,
      I => data(13)
    );
  ProtoComp6_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD35",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_13_IBUF_412,
      O => data_13_IBUF_direct
    );
  MAX_out_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD45"
    )
    port map (
      I => NlwBufferSignal_MAX_out_0_OBUF_I,
      O => MAX_out(0)
    );
  NMI_out_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD159"
    )
    port map (
      I => NlwBufferSignal_NMI_out_12_OBUF_I,
      O => NMI_out(12)
    );
  data_14_IBUF : X_BUF
    generic map(
      LOC => "PAD36",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_14_IBUF_419,
      I => data(14)
    );
  ProtoComp6_IMUX_18 : X_BUF
    generic map(
      LOC => "PAD36",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_14_IBUF_419,
      O => data_14_IBUF_direct
    );
  MAX_out_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD46"
    )
    port map (
      I => NlwBufferSignal_MAX_out_1_OBUF_I,
      O => MAX_out(1)
    );
  MAX_out_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD71"
    )
    port map (
      I => NlwBufferSignal_MAX_out_10_OBUF_I,
      O => MAX_out(10)
    );
  NMI_out_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD160"
    )
    port map (
      I => NlwBufferSignal_NMI_out_13_OBUF_I,
      O => NMI_out(13)
    );
  data_15_IBUF : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 202 ps
    )
    port map (
      O => data_15_IBUF_428,
      I => data(15)
    );
  ProtoComp6_IMUX_19 : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 202 ps
    )
    port map (
      I => data_15_IBUF_428,
      O => data_15_IBUF_direct
    );
  MAX_out_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD53"
    )
    port map (
      I => NlwBufferSignal_MAX_out_2_OBUF_I,
      O => MAX_out(2)
    );
  MAX_out_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD72"
    )
    port map (
      I => NlwBufferSignal_MAX_out_11_OBUF_I,
      O => MAX_out(11)
    );
  NMI_out_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD189"
    )
    port map (
      I => NlwBufferSignal_NMI_out_14_OBUF_I,
      O => NMI_out(14)
    );
  MAX_out_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD54"
    )
    port map (
      I => NlwBufferSignal_MAX_out_3_OBUF_I,
      O => MAX_out(3)
    );
  MAX_out_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD73"
    )
    port map (
      I => NlwBufferSignal_MAX_out_12_OBUF_I,
      O => MAX_out(12)
    );
  NMI_out_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD162"
    )
    port map (
      I => NlwBufferSignal_NMI_out_15_OBUF_I,
      O => NMI_out(15)
    );
  MAX_out_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD55"
    )
    port map (
      I => NlwBufferSignal_MAX_out_4_OBUF_I,
      O => MAX_out(4)
    );
  MAX_out_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD81"
    )
    port map (
      I => NlwBufferSignal_MAX_out_13_OBUF_I,
      O => MAX_out(13)
    );
  MAX_out_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD56"
    )
    port map (
      I => NlwBufferSignal_MAX_out_5_OBUF_I,
      O => MAX_out(5)
    );
  MAX_out_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD75"
    )
    port map (
      I => NlwBufferSignal_MAX_out_14_OBUF_I,
      O => MAX_out(14)
    );
  MAX_out_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD57"
    )
    port map (
      I => NlwBufferSignal_MAX_out_6_OBUF_I,
      O => MAX_out(6)
    );
  MAX_out_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD76"
    )
    port map (
      I => NlwBufferSignal_MAX_out_15_OBUF_I,
      O => MAX_out(15)
    );
  MAX_out_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD58"
    )
    port map (
      I => NlwBufferSignal_MAX_out_7_OBUF_I,
      O => MAX_out(7)
    );
  MAX_out_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD69"
    )
    port map (
      I => NlwBufferSignal_MAX_out_8_OBUF_I,
      O => MAX_out(8)
    );
  MAX_out_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD70"
    )
    port map (
      I => NlwBufferSignal_MAX_out_9_OBUF_I,
      O => MAX_out(9)
    );
  MIN_out_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD185"
    )
    port map (
      I => NlwBufferSignal_MIN_out_10_OBUF_I,
      O => MIN_out(10)
    );
  MIN_out_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD188"
    )
    port map (
      I => NlwBufferSignal_MIN_out_11_OBUF_I,
      O => MIN_out(11)
    );
  MIN_out_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD171"
    )
    port map (
      I => NlwBufferSignal_MIN_out_12_OBUF_I,
      O => MIN_out(12)
    );
  MIN_out_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD186"
    )
    port map (
      I => NlwBufferSignal_MIN_out_13_OBUF_I,
      O => MIN_out(13)
    );
  rst_IBUF : X_BUF
    generic map(
      LOC => "PAD2",
      PATHPULSE => 202 ps
    )
    port map (
      O => rst_IBUF_469,
      I => rst
    );
  ProtoComp6_IMUX_20 : X_BUF
    generic map(
      LOC => "PAD2",
      PATHPULSE => 202 ps
    )
    port map (
      I => rst_IBUF_469,
      O => rst_IBUF_0
    );
  MIN_out_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD191"
    )
    port map (
      I => NlwBufferSignal_MIN_out_14_OBUF_I,
      O => MIN_out(14)
    );
  MIN_out_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD190"
    )
    port map (
      I => NlwBufferSignal_MIN_out_15_OBUF_I,
      O => MIN_out(15)
    );
  PS_out_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD39"
    )
    port map (
      I => NlwBufferSignal_PS_out_0_OBUF_I,
      O => PS_out(0)
    );
  write_to_2_write_to_2_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => write_to(3),
      O => write_to_3_0
    );
  write_to_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y29",
      INIT => X"0C000C000C000C00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => command_1_IBUF_0,
      ADR2 => command_0_IBUF_0,
      ADR3 => WrReg_IBUF_0,
      ADR5 => '1',
      O => write_to(2)
    );
  write_to_3_1 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y29",
      INIT => X"C000C000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => command_1_IBUF_0,
      ADR2 => command_0_IBUF_0,
      ADR3 => WrReg_IBUF_0,
      O => write_to(3)
    );
  write_to_0_write_to_0_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => write_to(1),
      O => write_to_1_0
    );
  write_to_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y29",
      INIT => X"00000F0000000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => WrReg_IBUF_0,
      ADR4 => command_1_IBUF_0,
      ADR2 => command_0_IBUF_0,
      ADR5 => '1',
      O => write_to(0)
    );
  write_to_1_1 : X_LUT5
    generic map(
      LOC => "SLICE_X3Y29",
      INIT => X"0000F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => WrReg_IBUF_0,
      ADR4 => command_1_IBUF_0,
      ADR2 => command_0_IBUF_0,
      O => write_to(1)
    );
  NlwBufferBlock_PS_reg_register_data_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PS_reg_register_data_1_CLK
    );
  NlwBufferBlock_PS_reg_register_data_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_1_IBUF_0,
      O => NlwBufferSignal_PS_reg_register_data_1_IN
    );
  NlwBufferBlock_PS_reg_register_data_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PS_reg_register_data_2_CLK
    );
  NlwBufferBlock_PS_reg_register_data_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_2_IBUF_0,
      O => NlwBufferSignal_PS_reg_register_data_2_IN
    );
  NlwBufferBlock_PS_reg_register_data_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PS_reg_register_data_3_CLK
    );
  NlwBufferBlock_PS_reg_register_data_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_3_IBUF_0,
      O => NlwBufferSignal_PS_reg_register_data_3_IN
    );
  NlwBufferBlock_MAX_reg_register_data_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MAX_reg_register_data_0_CLK
    );
  NlwBufferBlock_NMI_reg_register_data_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NMI_reg_register_data_0_CLK
    );
  NlwBufferBlock_NMI_reg_register_data_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_0_IBUF_0,
      O => NlwBufferSignal_NMI_reg_register_data_0_IN
    );
  NlwBufferBlock_MAX_reg_register_data_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MAX_reg_register_data_1_CLK
    );
  NlwBufferBlock_ProtoComp1_D2OFFBYP_SRC_1_INA : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_1_IBUF_direct,
      O => NlwBufferSignal_ProtoComp1_D2OFFBYP_SRC_1_INA
    );
  NlwBufferBlock_ProtoComp1_D2OBYP_SRC_1_INA : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_1_IBUF_direct,
      O => NlwBufferSignal_ProtoComp1_D2OBYP_SRC_1_INA
    );
  NlwBufferBlock_NMI_reg_register_data_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NMI_reg_register_data_1_CLK
    );
  NlwBufferBlock_NMI_reg_register_data_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_1_IBUF_0,
      O => NlwBufferSignal_NMI_reg_register_data_1_IN
    );
  NlwBufferBlock_MAX_reg_register_data_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MAX_reg_register_data_2_CLK
    );
  NlwBufferBlock_NMI_reg_register_data_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NMI_reg_register_data_2_CLK
    );
  NlwBufferBlock_NMI_reg_register_data_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_2_IBUF_0,
      O => NlwBufferSignal_NMI_reg_register_data_2_IN
    );
  NlwBufferBlock_MAX_reg_register_data_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MAX_reg_register_data_3_CLK
    );
  NlwBufferBlock_NMI_reg_register_data_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NMI_reg_register_data_3_CLK
    );
  NlwBufferBlock_NMI_reg_register_data_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_3_IBUF_0,
      O => NlwBufferSignal_NMI_reg_register_data_3_IN
    );
  NlwBufferBlock_MAX_reg_register_data_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MAX_reg_register_data_4_CLK
    );
  NlwBufferBlock_NMI_reg_register_data_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NMI_reg_register_data_4_CLK
    );
  NlwBufferBlock_NMI_reg_register_data_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_4_IBUF_0,
      O => NlwBufferSignal_NMI_reg_register_data_4_IN
    );
  NlwBufferBlock_MAX_reg_register_data_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MAX_reg_register_data_5_CLK
    );
  NlwBufferBlock_ProtoComp1_D2OFFBYP_SRC_5_INA : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_5_IBUF_direct,
      O => NlwBufferSignal_ProtoComp1_D2OFFBYP_SRC_5_INA
    );
  NlwBufferBlock_ProtoComp1_D2OBYP_SRC_5_INA : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_5_IBUF_direct,
      O => NlwBufferSignal_ProtoComp1_D2OBYP_SRC_5_INA
    );
  NlwBufferBlock_NMI_reg_register_data_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NMI_reg_register_data_5_CLK
    );
  NlwBufferBlock_NMI_reg_register_data_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_5_IBUF_0,
      O => NlwBufferSignal_NMI_reg_register_data_5_IN
    );
  NlwBufferBlock_MAX_reg_register_data_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MAX_reg_register_data_6_CLK
    );
  NlwBufferBlock_NMI_reg_register_data_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NMI_reg_register_data_6_CLK
    );
  NlwBufferBlock_NMI_reg_register_data_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_6_IBUF_0,
      O => NlwBufferSignal_NMI_reg_register_data_6_IN
    );
  NlwBufferBlock_MAX_reg_register_data_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MAX_reg_register_data_7_CLK
    );
  NlwBufferBlock_MIN_reg_register_data_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIN_reg_register_data_0_CLK
    );
  NlwBufferBlock_MIN_reg_register_data_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_0_IBUF_0,
      O => NlwBufferSignal_MIN_reg_register_data_0_IN
    );
  NlwBufferBlock_NMI_reg_register_data_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NMI_reg_register_data_7_CLK
    );
  NlwBufferBlock_NMI_reg_register_data_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_7_IBUF_0,
      O => NlwBufferSignal_NMI_reg_register_data_7_IN
    );
  NlwBufferBlock_MAX_reg_register_data_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MAX_reg_register_data_8_CLK
    );
  NlwBufferBlock_MIN_reg_register_data_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIN_reg_register_data_1_CLK
    );
  NlwBufferBlock_MIN_reg_register_data_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_1_IBUF_0,
      O => NlwBufferSignal_MIN_reg_register_data_1_IN
    );
  NlwBufferBlock_NMI_reg_register_data_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NMI_reg_register_data_8_CLK
    );
  NlwBufferBlock_NMI_reg_register_data_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_8_IBUF_0,
      O => NlwBufferSignal_NMI_reg_register_data_8_IN
    );
  NlwBufferBlock_MAX_reg_register_data_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MAX_reg_register_data_9_CLK
    );
  NlwBufferBlock_ProtoComp1_D2OFFBYP_SRC_9_INA : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_9_IBUF_direct,
      O => NlwBufferSignal_ProtoComp1_D2OFFBYP_SRC_9_INA
    );
  NlwBufferBlock_ProtoComp1_D2OBYP_SRC_9_INA : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_9_IBUF_direct,
      O => NlwBufferSignal_ProtoComp1_D2OBYP_SRC_9_INA
    );
  NlwBufferBlock_MIN_reg_register_data_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIN_reg_register_data_2_CLK
    );
  NlwBufferBlock_MIN_reg_register_data_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_2_IBUF_0,
      O => NlwBufferSignal_MIN_reg_register_data_2_IN
    );
  NlwBufferBlock_NMI_reg_register_data_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NMI_reg_register_data_9_CLK
    );
  NlwBufferBlock_NMI_reg_register_data_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_9_IBUF_0,
      O => NlwBufferSignal_NMI_reg_register_data_9_IN
    );
  NlwBufferBlock_MIN_reg_register_data_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIN_reg_register_data_3_CLK
    );
  NlwBufferBlock_MIN_reg_register_data_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_3_IBUF_0,
      O => NlwBufferSignal_MIN_reg_register_data_3_IN
    );
  NlwBufferBlock_MIN_reg_register_data_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIN_reg_register_data_4_CLK
    );
  NlwBufferBlock_MIN_reg_register_data_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_4_IBUF_0,
      O => NlwBufferSignal_MIN_reg_register_data_4_IN
    );
  NlwBufferBlock_MIN_reg_register_data_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIN_reg_register_data_5_CLK
    );
  NlwBufferBlock_MIN_reg_register_data_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_5_IBUF_0,
      O => NlwBufferSignal_MIN_reg_register_data_5_IN
    );
  NlwBufferBlock_MIN_reg_register_data_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIN_reg_register_data_6_CLK
    );
  NlwBufferBlock_MIN_reg_register_data_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_6_IBUF_0,
      O => NlwBufferSignal_MIN_reg_register_data_6_IN
    );
  NlwBufferBlock_MIN_reg_register_data_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIN_reg_register_data_7_CLK
    );
  NlwBufferBlock_MIN_reg_register_data_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_7_IBUF_0,
      O => NlwBufferSignal_MIN_reg_register_data_7_IN
    );
  NlwBufferBlock_MIN_reg_register_data_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIN_reg_register_data_8_CLK
    );
  NlwBufferBlock_MIN_reg_register_data_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_8_IBUF_0,
      O => NlwBufferSignal_MIN_reg_register_data_8_IN
    );
  NlwBufferBlock_MIN_reg_register_data_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIN_reg_register_data_9_CLK
    );
  NlwBufferBlock_MIN_reg_register_data_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_9_IBUF_0,
      O => NlwBufferSignal_MIN_reg_register_data_9_IN
    );
  NlwBufferBlock_MAX_reg_register_data_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MAX_reg_register_data_10_CLK
    );
  NlwBufferBlock_MAX_reg_register_data_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MAX_reg_register_data_11_CLK
    );
  NlwBufferBlock_NMI_reg_register_data_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NMI_reg_register_data_10_CLK
    );
  NlwBufferBlock_NMI_reg_register_data_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_10_IBUF_0,
      O => NlwBufferSignal_NMI_reg_register_data_10_IN
    );
  NlwBufferBlock_MAX_reg_register_data_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MAX_reg_register_data_12_CLK
    );
  NlwBufferBlock_NMI_reg_register_data_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NMI_reg_register_data_11_CLK
    );
  NlwBufferBlock_NMI_reg_register_data_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_11_IBUF_0,
      O => NlwBufferSignal_NMI_reg_register_data_11_IN
    );
  NlwBufferBlock_MAX_reg_register_data_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MAX_reg_register_data_13_CLK
    );
  NlwBufferBlock_NMI_reg_register_data_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NMI_reg_register_data_12_CLK
    );
  NlwBufferBlock_NMI_reg_register_data_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_12_IBUF_0,
      O => NlwBufferSignal_NMI_reg_register_data_12_IN
    );
  NlwBufferBlock_MAX_reg_register_data_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MAX_reg_register_data_14_CLK
    );
  NlwBufferBlock_NMI_reg_register_data_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NMI_reg_register_data_13_CLK
    );
  NlwBufferBlock_NMI_reg_register_data_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_13_IBUF_0,
      O => NlwBufferSignal_NMI_reg_register_data_13_IN
    );
  NlwBufferBlock_MAX_reg_register_data_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MAX_reg_register_data_15_CLK
    );
  NlwBufferBlock_NMI_reg_register_data_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NMI_reg_register_data_14_CLK
    );
  NlwBufferBlock_NMI_reg_register_data_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_14_IBUF_0,
      O => NlwBufferSignal_NMI_reg_register_data_14_IN
    );
  NlwBufferBlock_NMI_reg_register_data_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NMI_reg_register_data_15_CLK
    );
  NlwBufferBlock_NMI_reg_register_data_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_15_IBUF_0,
      O => NlwBufferSignal_NMI_reg_register_data_15_IN
    );
  NlwBufferBlock_MIN_reg_register_data_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIN_reg_register_data_10_CLK
    );
  NlwBufferBlock_MIN_reg_register_data_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_10_IBUF_0,
      O => NlwBufferSignal_MIN_reg_register_data_10_IN
    );
  NlwBufferBlock_MIN_reg_register_data_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIN_reg_register_data_11_CLK
    );
  NlwBufferBlock_MIN_reg_register_data_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_11_IBUF_0,
      O => NlwBufferSignal_MIN_reg_register_data_11_IN
    );
  NlwBufferBlock_MIN_reg_register_data_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIN_reg_register_data_12_CLK
    );
  NlwBufferBlock_MIN_reg_register_data_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_12_IBUF_0,
      O => NlwBufferSignal_MIN_reg_register_data_12_IN
    );
  NlwBufferBlock_MIN_reg_register_data_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIN_reg_register_data_13_CLK
    );
  NlwBufferBlock_MIN_reg_register_data_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_13_IBUF_0,
      O => NlwBufferSignal_MIN_reg_register_data_13_IN
    );
  NlwBufferBlock_MIN_reg_register_data_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIN_reg_register_data_14_CLK
    );
  NlwBufferBlock_MIN_reg_register_data_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_14_IBUF_0,
      O => NlwBufferSignal_MIN_reg_register_data_14_IN
    );
  NlwBufferBlock_MIN_reg_register_data_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_MIN_reg_register_data_15_CLK
    );
  NlwBufferBlock_MIN_reg_register_data_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_15_IBUF_0,
      O => NlwBufferSignal_MIN_reg_register_data_15_IN
    );
  NlwBufferBlock_PS_reg_register_data_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PS_reg_register_data_0_CLK
    );
  NlwBufferBlock_PS_reg_register_data_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => data_0_IBUF_0,
      O => NlwBufferSignal_PS_reg_register_data_0_IN
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_0,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_PS_out_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PS_reg_register_data(1),
      O => NlwBufferSignal_PS_out_1_OBUF_I
    );
  NlwBufferBlock_PS_out_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PS_reg_register_data(2),
      O => NlwBufferSignal_PS_out_2_OBUF_I
    );
  NlwBufferBlock_PS_out_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PS_reg_register_data(3),
      O => NlwBufferSignal_PS_out_3_OBUF_I
    );
  NlwBufferBlock_NMI_out_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_reg_register_data(0),
      O => NlwBufferSignal_NMI_out_0_OBUF_I
    );
  NlwBufferBlock_NMI_out_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_reg_register_data(1),
      O => NlwBufferSignal_NMI_out_1_OBUF_I
    );
  NlwBufferBlock_NMI_out_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_reg_register_data(2),
      O => NlwBufferSignal_NMI_out_2_OBUF_I
    );
  NlwBufferBlock_NMI_out_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_reg_register_data(3),
      O => NlwBufferSignal_NMI_out_3_OBUF_I
    );
  NlwBufferBlock_NMI_out_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_reg_register_data(4),
      O => NlwBufferSignal_NMI_out_4_OBUF_I
    );
  NlwBufferBlock_NMI_out_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_reg_register_data(5),
      O => NlwBufferSignal_NMI_out_5_OBUF_I
    );
  NlwBufferBlock_NMI_out_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_reg_register_data(6),
      O => NlwBufferSignal_NMI_out_6_OBUF_I
    );
  NlwBufferBlock_MIN_out_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_reg_register_data(0),
      O => NlwBufferSignal_MIN_out_0_OBUF_I
    );
  NlwBufferBlock_NMI_out_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_reg_register_data(7),
      O => NlwBufferSignal_NMI_out_7_OBUF_I
    );
  NlwBufferBlock_MIN_out_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_reg_register_data(1),
      O => NlwBufferSignal_MIN_out_1_OBUF_I
    );
  NlwBufferBlock_NMI_out_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_reg_register_data(8),
      O => NlwBufferSignal_NMI_out_8_OBUF_I
    );
  NlwBufferBlock_MIN_out_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_reg_register_data(2),
      O => NlwBufferSignal_MIN_out_2_OBUF_I
    );
  NlwBufferBlock_NMI_out_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_reg_register_data(9),
      O => NlwBufferSignal_NMI_out_9_OBUF_I
    );
  NlwBufferBlock_MIN_out_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_reg_register_data(3),
      O => NlwBufferSignal_MIN_out_3_OBUF_I
    );
  NlwBufferBlock_MIN_out_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_reg_register_data(4),
      O => NlwBufferSignal_MIN_out_4_OBUF_I
    );
  NlwBufferBlock_MIN_out_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_reg_register_data(5),
      O => NlwBufferSignal_MIN_out_5_OBUF_I
    );
  NlwBufferBlock_MIN_out_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_reg_register_data(6),
      O => NlwBufferSignal_MIN_out_6_OBUF_I
    );
  NlwBufferBlock_MIN_out_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_reg_register_data(7),
      O => NlwBufferSignal_MIN_out_7_OBUF_I
    );
  NlwBufferBlock_MIN_out_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_reg_register_data(8),
      O => NlwBufferSignal_MIN_out_8_OBUF_I
    );
  NlwBufferBlock_MIN_out_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_reg_register_data(9),
      O => NlwBufferSignal_MIN_out_9_OBUF_I
    );
  NlwBufferBlock_NMI_out_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_reg_register_data(10),
      O => NlwBufferSignal_NMI_out_10_OBUF_I
    );
  NlwBufferBlock_NMI_out_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_reg_register_data(11),
      O => NlwBufferSignal_NMI_out_11_OBUF_I
    );
  NlwBufferBlock_MAX_out_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_reg_register_data(0),
      O => NlwBufferSignal_MAX_out_0_OBUF_I
    );
  NlwBufferBlock_NMI_out_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_reg_register_data(12),
      O => NlwBufferSignal_NMI_out_12_OBUF_I
    );
  NlwBufferBlock_MAX_out_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_reg_register_data(1),
      O => NlwBufferSignal_MAX_out_1_OBUF_I
    );
  NlwBufferBlock_MAX_out_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_reg_register_data(10),
      O => NlwBufferSignal_MAX_out_10_OBUF_I
    );
  NlwBufferBlock_NMI_out_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_reg_register_data(13),
      O => NlwBufferSignal_NMI_out_13_OBUF_I
    );
  NlwBufferBlock_MAX_out_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_reg_register_data(2),
      O => NlwBufferSignal_MAX_out_2_OBUF_I
    );
  NlwBufferBlock_MAX_out_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_reg_register_data(11),
      O => NlwBufferSignal_MAX_out_11_OBUF_I
    );
  NlwBufferBlock_NMI_out_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_reg_register_data(14),
      O => NlwBufferSignal_NMI_out_14_OBUF_I
    );
  NlwBufferBlock_MAX_out_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_reg_register_data(3),
      O => NlwBufferSignal_MAX_out_3_OBUF_I
    );
  NlwBufferBlock_MAX_out_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_reg_register_data(12),
      O => NlwBufferSignal_MAX_out_12_OBUF_I
    );
  NlwBufferBlock_NMI_out_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NMI_reg_register_data(15),
      O => NlwBufferSignal_NMI_out_15_OBUF_I
    );
  NlwBufferBlock_MAX_out_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_reg_register_data(4),
      O => NlwBufferSignal_MAX_out_4_OBUF_I
    );
  NlwBufferBlock_MAX_out_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_reg_register_data(13),
      O => NlwBufferSignal_MAX_out_13_OBUF_I
    );
  NlwBufferBlock_MAX_out_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_reg_register_data(5),
      O => NlwBufferSignal_MAX_out_5_OBUF_I
    );
  NlwBufferBlock_MAX_out_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_reg_register_data(14),
      O => NlwBufferSignal_MAX_out_14_OBUF_I
    );
  NlwBufferBlock_MAX_out_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_reg_register_data(6),
      O => NlwBufferSignal_MAX_out_6_OBUF_I
    );
  NlwBufferBlock_MAX_out_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_reg_register_data(15),
      O => NlwBufferSignal_MAX_out_15_OBUF_I
    );
  NlwBufferBlock_MAX_out_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_reg_register_data(7),
      O => NlwBufferSignal_MAX_out_7_OBUF_I
    );
  NlwBufferBlock_MAX_out_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_reg_register_data(8),
      O => NlwBufferSignal_MAX_out_8_OBUF_I
    );
  NlwBufferBlock_MAX_out_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MAX_reg_register_data(9),
      O => NlwBufferSignal_MAX_out_9_OBUF_I
    );
  NlwBufferBlock_MIN_out_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_reg_register_data(10),
      O => NlwBufferSignal_MIN_out_10_OBUF_I
    );
  NlwBufferBlock_MIN_out_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_reg_register_data(11),
      O => NlwBufferSignal_MIN_out_11_OBUF_I
    );
  NlwBufferBlock_MIN_out_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_reg_register_data(12),
      O => NlwBufferSignal_MIN_out_12_OBUF_I
    );
  NlwBufferBlock_MIN_out_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_reg_register_data(13),
      O => NlwBufferSignal_MIN_out_13_OBUF_I
    );
  NlwBufferBlock_MIN_out_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_reg_register_data(14),
      O => NlwBufferSignal_MIN_out_14_OBUF_I
    );
  NlwBufferBlock_MIN_out_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => MIN_reg_register_data(15),
      O => NlwBufferSignal_MIN_out_15_OBUF_I
    );
  NlwBufferBlock_PS_out_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PS_reg_register_data(0),
      O => NlwBufferSignal_PS_out_0_OBUF_I
    );
  NlwBlock_register_file_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

