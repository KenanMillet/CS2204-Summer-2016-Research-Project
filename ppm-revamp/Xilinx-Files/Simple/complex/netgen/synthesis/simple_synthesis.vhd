--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: simple_synthesis.vhd
-- /___/   /\     Timestamp: Thu Jun 16 15:17:45 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm simple -w -dir netgen/synthesis -ofmt vhdl -sim simple.ngc simple_synthesis.vhd 
-- Device	: xc7a100t-3-csg324
-- Input file	: simple.ngc
-- Output file	: C:\Users\acb610\Documents\GitHub\CS2204-Summer-2016-Research-Project\ppm-revamp\Xilinx-Files\Simple\complex\netgen\synthesis\simple_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: simple
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
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


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity simple is
  port (
    OBClk : in STD_LOGIC := 'X'; 
    usb_in : in STD_LOGIC := 'X'; 
    add0 : out STD_LOGIC; 
    add1 : out STD_LOGIC; 
    add2 : out STD_LOGIC; 
    add3 : out STD_LOGIC; 
    enableBit : out STD_LOGIC; 
    gpi0 : out STD_LOGIC; 
    gpi1 : out STD_LOGIC; 
    gpi2 : out STD_LOGIC; 
    gpi3 : out STD_LOGIC; 
    gpo0 : out STD_LOGIC; 
    gpo1 : out STD_LOGIC; 
    gpo2 : out STD_LOGIC; 
    gpo3 : out STD_LOGIC; 
    usb_out : out STD_LOGIC 
  );
end simple;

architecture Structure of simple is
  component communication
    port (
      clk : in STD_LOGIC := 'X'; 
      reset : in STD_LOGIC := 'X'; 
      uart_rx : in STD_LOGIC := 'X'; 
      uart_tx : out STD_LOGIC; 
      uart_interrupt : out STD_LOGIC; 
      GPI1_Interrupt : out STD_LOGIC; 
      intc_irq : out STD_LOGIC; 
      gpi1 : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
      gpo1 : out STD_LOGIC_VECTOR ( 31 downto 0 ) 
    );
  end component;
  signal usb_in_IBUF_25 : STD_LOGIC; 
  signal CLOCK_BUFG_26 : STD_LOGIC; 
  signal usb_out_OBUF_32 : STD_LOGIC; 
  signal XLXN_61 : STD_LOGIC; 
  signal result0 : STD_LOGIC; 
  signal result1 : STD_LOGIC; 
  signal result2 : STD_LOGIC; 
  signal result3 : STD_LOGIC; 
  signal XLXN_49 : STD_LOGIC; 
  signal XLXI_22_XLXN_7 : STD_LOGIC; 
  signal XLXI_22_XLXN_9 : STD_LOGIC; 
  signal CLOCK : STD_LOGIC; 
  signal XLXI_2_N01 : STD_LOGIC; 
  signal NLW_mcs_0_gpo1_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_mcs_0_gpo1_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_mcs_0_gpo1_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_mcs_0_gpo1_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_mcs_0_gpo1_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_mcs_0_gpo1_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_mcs_0_gpo1_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_mcs_0_gpo1_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_mcs_0_gpo1_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_mcs_0_gpo1_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_mcs_0_gpo1_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_mcs_0_gpo1_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_mcs_0_gpo1_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_mcs_0_gpo1_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_mcs_0_gpo1_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_mcs_0_gpo1_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_mcs_0_gpo1_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_mcs_0_gpo1_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_mcs_0_gpo1_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_mcs_0_gpo1_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_mcs_0_gpo1_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_mcs_0_gpo1_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_mcs_0_gpo1_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_mcs_0_gpo1_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_mcs_0_gpo1_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_mcs_0_gpo1_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_mcs_0_gpo1_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_mcs_0_uart_interrupt_UNCONNECTED : STD_LOGIC; 
  signal NLW_mcs_0_GPI1_Interrupt_UNCONNECTED : STD_LOGIC; 
  signal NLW_mcs_0_intc_irq_UNCONNECTED : STD_LOGIC; 
  signal comms_gpo1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal comms_gpi1 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  XLXI_22_XLXI_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFG_26,
      D => comms_gpo1(4),
      Q => XLXI_22_XLXN_9
    );
  XLXI_23 : IBUFG
    generic map(
      IOSTANDARD => "DEFAULT",
      CAPACITANCE => "DONT_CARE",
      IBUF_LOW_PWR => TRUE
    )
    port map (
      I => OBClk,
      O => CLOCK
    );
  XLXI_30 : OBUF
    generic map(
      IOSTANDARD => "DEFAULT",
      CAPACITANCE => "DONT_CARE",
      SLEW => "20",
      DRIVE => 12
    )
    port map (
      I => comms_gpi1(0),
      O => gpi0
    );
  XLXI_31 : OBUF
    generic map(
      IOSTANDARD => "DEFAULT",
      CAPACITANCE => "DONT_CARE",
      SLEW => "20",
      DRIVE => 12
    )
    port map (
      I => comms_gpi1(1),
      O => gpi1
    );
  XLXI_27 : OBUF
    generic map(
      IOSTANDARD => "DEFAULT",
      CAPACITANCE => "DONT_CARE",
      SLEW => "20",
      DRIVE => 12
    )
    port map (
      I => comms_gpi1(2),
      O => gpi2
    );
  XLXI_32 : OBUF
    generic map(
      IOSTANDARD => "DEFAULT",
      CAPACITANCE => "DONT_CARE",
      SLEW => "20",
      DRIVE => 12
    )
    port map (
      I => comms_gpi1(3),
      O => gpi3
    );
  XLXI_33 : OBUF
    generic map(
      IOSTANDARD => "DEFAULT",
      CAPACITANCE => "DONT_CARE",
      SLEW => "20",
      DRIVE => 12
    )
    port map (
      I => comms_gpo1(0),
      O => gpo0
    );
  XLXI_34 : OBUF
    generic map(
      IOSTANDARD => "DEFAULT",
      CAPACITANCE => "DONT_CARE",
      SLEW => "20",
      DRIVE => 12
    )
    port map (
      I => comms_gpo1(1),
      O => gpo1
    );
  XLXI_35 : OBUF
    generic map(
      IOSTANDARD => "DEFAULT",
      CAPACITANCE => "DONT_CARE",
      SLEW => "20",
      DRIVE => 12
    )
    port map (
      I => comms_gpo1(2),
      O => gpo2
    );
  XLXI_36 : OBUF
    generic map(
      IOSTANDARD => "DEFAULT",
      CAPACITANCE => "DONT_CARE",
      SLEW => "20",
      DRIVE => 12
    )
    port map (
      I => comms_gpo1(3),
      O => gpo3
    );
  XLXI_37 : OBUF
    generic map(
      IOSTANDARD => "DEFAULT",
      CAPACITANCE => "DONT_CARE",
      SLEW => "20",
      DRIVE => 12
    )
    port map (
      I => comms_gpo1(4),
      O => enableBit
    );
  XLXI_38 : OBUF
    generic map(
      IOSTANDARD => "DEFAULT",
      CAPACITANCE => "DONT_CARE",
      SLEW => "20",
      DRIVE => 12
    )
    port map (
      I => result0,
      O => add0
    );
  XLXI_39 : OBUF
    generic map(
      IOSTANDARD => "DEFAULT",
      CAPACITANCE => "DONT_CARE",
      SLEW => "20",
      DRIVE => 12
    )
    port map (
      I => result1,
      O => add1
    );
  XLXI_40 : OBUF
    generic map(
      IOSTANDARD => "DEFAULT",
      CAPACITANCE => "DONT_CARE",
      SLEW => "20",
      DRIVE => 12
    )
    port map (
      I => result2,
      O => add2
    );
  XLXI_41 : OBUF
    generic map(
      IOSTANDARD => "DEFAULT",
      CAPACITANCE => "DONT_CARE",
      SLEW => "20",
      DRIVE => 12
    )
    port map (
      I => result3,
      O => add3
    );
  XLXI_15 : GND
    port map (
      G => XLXN_49
    );
  XLXI_22_XLXI_4 : INV
    port map (
      I => XLXI_22_XLXN_9,
      O => XLXI_22_XLXN_7
    );
  XLXI_22_XLXI_1 : AND2
    port map (
      I0 => XLXI_22_XLXN_7,
      I1 => comms_gpo1(4),
      O => XLXN_61
    );
  usb_in_IBUF : IBUF
    port map (
      I => usb_in,
      O => usb_in_IBUF_25
    );
  usb_out_OBUF : OBUF
    port map (
      I => usb_out_OBUF_32,
      O => usb_out
    );
  CLOCK_BUFG : BUFG
    port map (
      O => CLOCK_BUFG_26,
      I => CLOCK
    );
  mcs_0 : communication
    port map (
      clk => CLOCK_BUFG_26,
      reset => XLXN_49,
      uart_rx => usb_in_IBUF_25,
      uart_tx => usb_out_OBUF_32,
      uart_interrupt => NLW_mcs_0_uart_interrupt_UNCONNECTED,
      GPI1_Interrupt => NLW_mcs_0_GPI1_Interrupt_UNCONNECTED,
      intc_irq => NLW_mcs_0_intc_irq_UNCONNECTED,
      gpi1(31) => XLXN_49,
      gpi1(30) => XLXN_49,
      gpi1(29) => XLXN_49,
      gpi1(28) => XLXN_49,
      gpi1(27) => XLXN_49,
      gpi1(26) => XLXN_49,
      gpi1(25) => XLXN_49,
      gpi1(24) => XLXN_49,
      gpi1(23) => XLXN_49,
      gpi1(22) => XLXN_49,
      gpi1(21) => XLXN_49,
      gpi1(20) => XLXN_49,
      gpi1(19) => XLXN_49,
      gpi1(18) => XLXN_49,
      gpi1(17) => XLXN_49,
      gpi1(16) => XLXN_49,
      gpi1(15) => XLXN_49,
      gpi1(14) => XLXN_49,
      gpi1(13) => XLXN_49,
      gpi1(12) => XLXN_49,
      gpi1(11) => XLXN_49,
      gpi1(10) => XLXN_49,
      gpi1(9) => XLXN_49,
      gpi1(8) => XLXN_49,
      gpi1(7) => XLXN_49,
      gpi1(6) => XLXN_49,
      gpi1(5) => XLXN_49,
      gpi1(4) => XLXN_49,
      gpi1(3) => comms_gpi1(3),
      gpi1(2) => comms_gpi1(2),
      gpi1(1) => comms_gpi1(1),
      gpi1(0) => comms_gpi1(0),
      gpo1(31) => NLW_mcs_0_gpo1_31_UNCONNECTED,
      gpo1(30) => NLW_mcs_0_gpo1_30_UNCONNECTED,
      gpo1(29) => NLW_mcs_0_gpo1_29_UNCONNECTED,
      gpo1(28) => NLW_mcs_0_gpo1_28_UNCONNECTED,
      gpo1(27) => NLW_mcs_0_gpo1_27_UNCONNECTED,
      gpo1(26) => NLW_mcs_0_gpo1_26_UNCONNECTED,
      gpo1(25) => NLW_mcs_0_gpo1_25_UNCONNECTED,
      gpo1(24) => NLW_mcs_0_gpo1_24_UNCONNECTED,
      gpo1(23) => NLW_mcs_0_gpo1_23_UNCONNECTED,
      gpo1(22) => NLW_mcs_0_gpo1_22_UNCONNECTED,
      gpo1(21) => NLW_mcs_0_gpo1_21_UNCONNECTED,
      gpo1(20) => NLW_mcs_0_gpo1_20_UNCONNECTED,
      gpo1(19) => NLW_mcs_0_gpo1_19_UNCONNECTED,
      gpo1(18) => NLW_mcs_0_gpo1_18_UNCONNECTED,
      gpo1(17) => NLW_mcs_0_gpo1_17_UNCONNECTED,
      gpo1(16) => NLW_mcs_0_gpo1_16_UNCONNECTED,
      gpo1(15) => NLW_mcs_0_gpo1_15_UNCONNECTED,
      gpo1(14) => NLW_mcs_0_gpo1_14_UNCONNECTED,
      gpo1(13) => NLW_mcs_0_gpo1_13_UNCONNECTED,
      gpo1(12) => NLW_mcs_0_gpo1_12_UNCONNECTED,
      gpo1(11) => NLW_mcs_0_gpo1_11_UNCONNECTED,
      gpo1(10) => NLW_mcs_0_gpo1_10_UNCONNECTED,
      gpo1(9) => NLW_mcs_0_gpo1_9_UNCONNECTED,
      gpo1(8) => NLW_mcs_0_gpo1_8_UNCONNECTED,
      gpo1(7) => NLW_mcs_0_gpo1_7_UNCONNECTED,
      gpo1(6) => NLW_mcs_0_gpo1_6_UNCONNECTED,
      gpo1(5) => NLW_mcs_0_gpo1_5_UNCONNECTED,
      gpo1(4) => comms_gpo1(4),
      gpo1(3) => comms_gpo1(3),
      gpo1(2) => comms_gpo1(2),
      gpo1(1) => comms_gpo1(1),
      gpo1(0) => comms_gpo1(0)
    );
  XLXI_1_Q3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFG_26,
      CE => XLXN_61,
      CLR => XLXN_49,
      D => result3,
      Q => comms_gpi1(3)
    );
  XLXI_1_Q0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFG_26,
      CE => XLXN_61,
      CLR => XLXN_49,
      D => result0,
      Q => comms_gpi1(0)
    );
  XLXI_1_Q1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFG_26,
      CE => XLXN_61,
      CLR => XLXN_49,
      D => result1,
      Q => comms_gpi1(1)
    );
  XLXI_1_Q2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLOCK_BUFG_26,
      CE => XLXN_61,
      CLR => XLXN_49,
      D => result2,
      Q => comms_gpi1(2)
    );
  XLXI_2_Madd_adsu_p_adsu_tmp_Madd_xor_3_11_SW0 : LUT4
    generic map(
      INIT => X"175F"
    )
    port map (
      I0 => comms_gpi1(1),
      I1 => comms_gpi1(0),
      I2 => comms_gpo1(1),
      I3 => comms_gpo1(0),
      O => XLXI_2_N01
    );
  XLXI_2_Madd_adsu_p_adsu_tmp_Madd_xor_3_11 : LUT5
    generic map(
      INIT => X"936CC936"
    )
    port map (
      I0 => comms_gpi1(2),
      I1 => comms_gpi1(3),
      I2 => comms_gpo1(2),
      I3 => comms_gpo1(3),
      I4 => XLXI_2_N01,
      O => result3
    );
  XLXI_2_Madd_adsu_p_adsu_tmp_Madd_xor_1_11 : LUT4
    generic map(
      INIT => X"936C"
    )
    port map (
      I0 => comms_gpi1(0),
      I1 => comms_gpi1(1),
      I2 => comms_gpo1(0),
      I3 => comms_gpo1(1),
      O => result1
    );
  XLXI_2_Madd_adsu_p_adsu_tmp_Madd_xor_2_11 : LUT6
    generic map(
      INIT => X"E81717E8A05F5FA0"
    )
    port map (
      I0 => comms_gpi1(1),
      I1 => comms_gpi1(0),
      I2 => comms_gpo1(1),
      I3 => comms_gpi1(2),
      I4 => comms_gpo1(2),
      I5 => comms_gpo1(0),
      O => result2
    );
  XLXI_2_Madd_adsu_p_adsu_tmp_Madd_lut_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => comms_gpi1(0),
      I1 => comms_gpo1(0),
      O => result0
    );

end Structure;

-- synthesis translate_on
