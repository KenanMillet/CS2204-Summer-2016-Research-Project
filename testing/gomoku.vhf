--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : gomoku.vhf
-- /___/   /\     Timestamp : 07/11/2016 11:08:56
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/kvm237/Desktop/CS2204-Summer-2016-Research-Project/gomoku/ipcore_dir -intstyle ise -family artix7 -flat -suppress -vhdl C:/Users/kvm237/Desktop/CS2204-Summer-2016-Research-Project/gomoku/gomoku.vhf -w C:/Users/kvm237/Desktop/CS2204-Summer-2016-Research-Project/gomoku/gomoku.sch
--Design Name: gomoku
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity gomoku is
   port ( OBClk  : in    std_logic; 
          UartRx : in    std_logic; 
          UartTx : out   std_logic);
end gomoku;

architecture BEHAVIORAL of gomoku is
   attribute BOX_TYPE     : string ;
   attribute IOSTANDARD   : string ;
   attribute CAPACITANCE  : string ;
   attribute IBUF_LOW_PWR : string ;
   attribute SLEW         : string ;
   attribute DRIVE        : string ;
   signal CLOCK      : std_logic;
   signal comms_gpi1 : std_logic_vector (31 downto 0);
   signal comms_gpi2 : std_logic_vector (31 downto 0);
   signal comms_gpi3 : std_logic_vector (31 downto 0);
   signal comms_gpi4 : std_logic_vector (31 downto 0);
   signal comms_gpo1 : std_logic_vector (31 downto 0);
   signal comms_gpo2 : std_logic_vector (31 downto 0);
   signal comms_gpo3 : std_logic_vector (31 downto 0);
   signal comms_gpo4 : std_logic_vector (31 downto 0);
   signal USB_IN     : std_logic;
   signal USB_OUT    : std_logic;
   signal XLXN_2     : std_logic;
   component communication
      port ( clk            : in    std_logic; 
             reset          : in    std_logic; 
             uart_tx        : out   std_logic; 
             uart_rx        : in    std_logic; 
             uart_interrupt : out   std_logic; 
             gpi1           : in    std_logic_vector (31 downto 0); 
             gpi2           : in    std_logic_vector (31 downto 0); 
             gpi3           : in    std_logic_vector (31 downto 0); 
             gpi4           : in    std_logic_vector (31 downto 0); 
             gpo1           : out   std_logic_vector (31 downto 0); 
             gpo2           : out   std_logic_vector (31 downto 0); 
             gpo3           : out   std_logic_vector (31 downto 0); 
             gpo4           : out   std_logic_vector (31 downto 0); 
             intc_irq       : out   std_logic);
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component IBUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute IOSTANDARD of IBUF : component is "DEFAULT";
   attribute CAPACITANCE of IBUF : component is "DONT_CARE";
   attribute BOX_TYPE of IBUF : component is "BLACK_BOX";
   
   component IBUFG
      -- synopsys translate_off
      generic( IBUF_LOW_PWR : boolean :=  TRUE);
      -- synopsys translate_on
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute IOSTANDARD of IBUFG : component is "DEFAULT";
   attribute CAPACITANCE of IBUFG : component is "DONT_CARE";
   attribute IBUF_LOW_PWR of IBUFG : component is "TRUE";
   attribute BOX_TYPE of IBUFG : component is "BLACK_BOX";
   
   component OBUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute IOSTANDARD of OBUF : component is "DEFAULT";
   attribute CAPACITANCE of OBUF : component is "DONT_CARE";
   attribute SLEW of OBUF : component is "SLOW";
   attribute DRIVE of OBUF : component is "12";
   attribute BOX_TYPE of OBUF : component is "BLACK_BOX";
   
begin
   comms : communication
      port map (clk=>CLOCK,
                gpi1(31 downto 0)=>comms_gpi1(31 downto 0),
                gpi2(31 downto 0)=>comms_gpi2(31 downto 0),
                gpi3(31 downto 0)=>comms_gpi3(31 downto 0),
                gpi4(31 downto 0)=>comms_gpi4(31 downto 0),
                reset=>XLXN_2,
                uart_rx=>USB_IN,
                gpo1(31 downto 0)=>comms_gpo1(31 downto 0),
                gpo2(31 downto 0)=>comms_gpo2(31 downto 0),
                gpo3(31 downto 0)=>comms_gpo3(31 downto 0),
                gpo4(31 downto 0)=>comms_gpo4(31 downto 0),
                intc_irq=>open,
                uart_interrupt=>open,
                uart_tx=>USB_OUT);
   
   comms_bus1_0 : BUF
      port map (I=>comms_gpo1(0),
                O=>comms_gpi1(0));
   
   comms_bus1_1 : BUF
      port map (I=>comms_gpo1(1),
                O=>comms_gpi1(1));
   
   comms_bus1_2 : BUF
      port map (I=>comms_gpo1(2),
                O=>comms_gpi1(2));
   
   comms_bus1_3 : BUF
      port map (I=>comms_gpo1(3),
                O=>comms_gpi1(3));
   
   comms_bus1_4 : BUF
      port map (I=>comms_gpo1(4),
                O=>comms_gpi1(4));
   
   comms_bus1_5 : BUF
      port map (I=>comms_gpo1(5),
                O=>comms_gpi1(5));
   
   comms_bus1_6 : BUF
      port map (I=>comms_gpo1(6),
                O=>comms_gpi1(6));
   
   comms_bus1_7 : BUF
      port map (I=>comms_gpo1(7),
                O=>comms_gpi1(7));
   
   comms_bus1_8 : BUF
      port map (I=>comms_gpo1(8),
                O=>comms_gpi1(8));
   
   comms_bus1_9 : BUF
      port map (I=>comms_gpo1(9),
                O=>comms_gpi1(9));
   
   comms_bus1_10 : BUF
      port map (I=>comms_gpo1(10),
                O=>comms_gpi1(10));
   
   comms_bus1_11 : BUF
      port map (I=>comms_gpo1(11),
                O=>comms_gpi1(11));
   
   comms_bus1_12 : BUF
      port map (I=>comms_gpo1(12),
                O=>comms_gpi1(12));
   
   comms_bus1_13 : BUF
      port map (I=>comms_gpo1(13),
                O=>comms_gpi1(13));
   
   comms_bus1_14 : BUF
      port map (I=>comms_gpo1(14),
                O=>comms_gpi1(14));
   
   comms_bus1_15 : BUF
      port map (I=>comms_gpo1(15),
                O=>comms_gpi1(15));
   
   comms_bus1_16 : BUF
      port map (I=>comms_gpo1(16),
                O=>comms_gpi1(16));
   
   comms_bus1_17 : BUF
      port map (I=>comms_gpo1(17),
                O=>comms_gpi1(17));
   
   comms_bus1_18 : BUF
      port map (I=>comms_gpo1(18),
                O=>comms_gpi1(18));
   
   comms_bus1_19 : BUF
      port map (I=>comms_gpo1(19),
                O=>comms_gpi1(19));
   
   comms_bus1_20 : BUF
      port map (I=>comms_gpo1(20),
                O=>comms_gpi1(20));
   
   comms_bus1_21 : BUF
      port map (I=>comms_gpo1(21),
                O=>comms_gpi1(21));
   
   comms_bus1_22 : BUF
      port map (I=>comms_gpo1(22),
                O=>comms_gpi1(22));
   
   comms_bus1_23 : BUF
      port map (I=>comms_gpo1(23),
                O=>comms_gpi1(23));
   
   comms_bus1_24 : BUF
      port map (I=>comms_gpo1(24),
                O=>comms_gpi1(24));
   
   comms_bus1_25 : BUF
      port map (I=>comms_gpo1(25),
                O=>comms_gpi1(25));
   
   comms_bus1_26 : BUF
      port map (I=>comms_gpo1(26),
                O=>comms_gpi1(26));
   
   comms_bus1_27 : BUF
      port map (I=>comms_gpo1(27),
                O=>comms_gpi1(27));
   
   comms_bus1_28 : BUF
      port map (I=>comms_gpo1(28),
                O=>comms_gpi1(28));
   
   comms_bus1_29 : BUF
      port map (I=>comms_gpo1(29),
                O=>comms_gpi1(29));
   
   comms_bus1_30 : BUF
      port map (I=>comms_gpo1(30),
                O=>comms_gpi1(30));
   
   comms_bus1_31 : BUF
      port map (I=>comms_gpo1(31),
                O=>comms_gpi1(31));
   
   comms_bus2_0 : BUF
      port map (I=>comms_gpo2(0),
                O=>comms_gpi2(0));
   
   comms_bus2_1 : BUF
      port map (I=>comms_gpo2(1),
                O=>comms_gpi2(1));
   
   comms_bus2_2 : BUF
      port map (I=>comms_gpo2(2),
                O=>comms_gpi2(2));
   
   comms_bus2_3 : BUF
      port map (I=>comms_gpo2(3),
                O=>comms_gpi2(3));
   
   comms_bus2_4 : BUF
      port map (I=>comms_gpo2(4),
                O=>comms_gpi2(4));
   
   comms_bus2_5 : BUF
      port map (I=>comms_gpo2(5),
                O=>comms_gpi2(5));
   
   comms_bus2_6 : BUF
      port map (I=>comms_gpo2(6),
                O=>comms_gpi2(6));
   
   comms_bus2_7 : BUF
      port map (I=>comms_gpo2(7),
                O=>comms_gpi2(7));
   
   comms_bus2_8 : BUF
      port map (I=>comms_gpo2(8),
                O=>comms_gpi2(8));
   
   comms_bus2_9 : BUF
      port map (I=>comms_gpo2(9),
                O=>comms_gpi2(9));
   
   comms_bus2_10 : BUF
      port map (I=>comms_gpo2(10),
                O=>comms_gpi2(10));
   
   comms_bus2_11 : BUF
      port map (I=>comms_gpo2(11),
                O=>comms_gpi2(11));
   
   comms_bus2_12 : BUF
      port map (I=>comms_gpo2(12),
                O=>comms_gpi2(12));
   
   comms_bus2_13 : BUF
      port map (I=>comms_gpo2(13),
                O=>comms_gpi2(13));
   
   comms_bus2_14 : BUF
      port map (I=>comms_gpo2(14),
                O=>comms_gpi2(14));
   
   comms_bus2_15 : BUF
      port map (I=>comms_gpo2(15),
                O=>comms_gpi2(15));
   
   comms_bus2_16 : BUF
      port map (I=>comms_gpo2(16),
                O=>comms_gpi2(16));
   
   comms_bus2_17 : BUF
      port map (I=>comms_gpo2(17),
                O=>comms_gpi2(17));
   
   comms_bus2_18 : BUF
      port map (I=>comms_gpo2(18),
                O=>comms_gpi2(18));
   
   comms_bus2_19 : BUF
      port map (I=>comms_gpo2(19),
                O=>comms_gpi2(19));
   
   comms_bus2_20 : BUF
      port map (I=>comms_gpo2(20),
                O=>comms_gpi2(20));
   
   comms_bus2_21 : BUF
      port map (I=>comms_gpo2(21),
                O=>comms_gpi2(21));
   
   comms_bus2_22 : BUF
      port map (I=>comms_gpo2(22),
                O=>comms_gpi2(22));
   
   comms_bus2_23 : BUF
      port map (I=>comms_gpo2(23),
                O=>comms_gpi2(23));
   
   comms_bus2_24 : BUF
      port map (I=>comms_gpo2(24),
                O=>comms_gpi2(24));
   
   comms_bus2_25 : BUF
      port map (I=>comms_gpo2(25),
                O=>comms_gpi2(25));
   
   comms_bus2_26 : BUF
      port map (I=>comms_gpo2(26),
                O=>comms_gpi2(26));
   
   comms_bus2_27 : BUF
      port map (I=>comms_gpo2(27),
                O=>comms_gpi2(27));
   
   comms_bus2_28 : BUF
      port map (I=>comms_gpo2(28),
                O=>comms_gpi2(28));
   
   comms_bus2_29 : BUF
      port map (I=>comms_gpo2(29),
                O=>comms_gpi2(29));
   
   comms_bus2_30 : BUF
      port map (I=>comms_gpo2(30),
                O=>comms_gpi2(30));
   
   comms_bus2_31 : BUF
      port map (I=>comms_gpo2(31),
                O=>comms_gpi2(31));
   
   comms_bus3_0 : BUF
      port map (I=>comms_gpo3(0),
                O=>comms_gpi3(0));
   
   comms_bus3_1 : BUF
      port map (I=>comms_gpo3(1),
                O=>comms_gpi3(1));
   
   comms_bus3_2 : BUF
      port map (I=>comms_gpo3(2),
                O=>comms_gpi3(2));
   
   comms_bus3_3 : BUF
      port map (I=>comms_gpo3(3),
                O=>comms_gpi3(3));
   
   comms_bus3_4 : BUF
      port map (I=>comms_gpo3(4),
                O=>comms_gpi3(4));
   
   comms_bus3_5 : BUF
      port map (I=>comms_gpo3(5),
                O=>comms_gpi3(5));
   
   comms_bus3_6 : BUF
      port map (I=>comms_gpo3(6),
                O=>comms_gpi3(6));
   
   comms_bus3_7 : BUF
      port map (I=>comms_gpo3(7),
                O=>comms_gpi3(7));
   
   comms_bus3_8 : BUF
      port map (I=>comms_gpo3(8),
                O=>comms_gpi3(8));
   
   comms_bus3_9 : BUF
      port map (I=>comms_gpo3(9),
                O=>comms_gpi3(9));
   
   comms_bus3_10 : BUF
      port map (I=>comms_gpo3(10),
                O=>comms_gpi3(10));
   
   comms_bus3_11 : BUF
      port map (I=>comms_gpo3(11),
                O=>comms_gpi3(11));
   
   comms_bus3_12 : BUF
      port map (I=>comms_gpo3(12),
                O=>comms_gpi3(12));
   
   comms_bus3_13 : BUF
      port map (I=>comms_gpo3(13),
                O=>comms_gpi3(13));
   
   comms_bus3_14 : BUF
      port map (I=>comms_gpo3(14),
                O=>comms_gpi3(14));
   
   comms_bus3_15 : BUF
      port map (I=>comms_gpo3(15),
                O=>comms_gpi3(15));
   
   comms_bus3_16 : BUF
      port map (I=>comms_gpo3(16),
                O=>comms_gpi3(16));
   
   comms_bus3_17 : BUF
      port map (I=>comms_gpo3(17),
                O=>comms_gpi3(17));
   
   comms_bus3_18 : BUF
      port map (I=>comms_gpo3(18),
                O=>comms_gpi3(18));
   
   comms_bus3_19 : BUF
      port map (I=>comms_gpo3(19),
                O=>comms_gpi3(19));
   
   comms_bus3_20 : BUF
      port map (I=>comms_gpo3(20),
                O=>comms_gpi3(20));
   
   comms_bus3_21 : BUF
      port map (I=>comms_gpo3(21),
                O=>comms_gpi3(21));
   
   comms_bus3_22 : BUF
      port map (I=>comms_gpo3(22),
                O=>comms_gpi3(22));
   
   comms_bus3_23 : BUF
      port map (I=>comms_gpo3(23),
                O=>comms_gpi3(23));
   
   comms_bus3_24 : BUF
      port map (I=>comms_gpo3(24),
                O=>comms_gpi3(24));
   
   comms_bus3_25 : BUF
      port map (I=>comms_gpo3(25),
                O=>comms_gpi3(25));
   
   comms_bus3_26 : BUF
      port map (I=>comms_gpo3(26),
                O=>comms_gpi3(26));
   
   comms_bus3_27 : BUF
      port map (I=>comms_gpo3(27),
                O=>comms_gpi3(27));
   
   comms_bus3_28 : BUF
      port map (I=>comms_gpo3(28),
                O=>comms_gpi3(28));
   
   comms_bus3_29 : BUF
      port map (I=>comms_gpo3(29),
                O=>comms_gpi3(29));
   
   comms_bus3_30 : BUF
      port map (I=>comms_gpo3(30),
                O=>comms_gpi3(30));
   
   comms_bus3_31 : BUF
      port map (I=>comms_gpo3(31),
                O=>comms_gpi3(31));
   
   comms_bus4_0 : BUF
      port map (I=>comms_gpo4(0),
                O=>comms_gpi4(0));
   
   comms_bus4_1 : BUF
      port map (I=>comms_gpo4(1),
                O=>comms_gpi4(1));
   
   comms_bus4_2 : BUF
      port map (I=>comms_gpo4(2),
                O=>comms_gpi4(2));
   
   comms_bus4_3 : BUF
      port map (I=>comms_gpo4(3),
                O=>comms_gpi4(3));
   
   comms_bus4_4 : BUF
      port map (I=>comms_gpo4(4),
                O=>comms_gpi4(4));
   
   comms_bus4_5 : BUF
      port map (I=>comms_gpo4(5),
                O=>comms_gpi4(5));
   
   comms_bus4_6 : BUF
      port map (I=>comms_gpo4(6),
                O=>comms_gpi4(6));
   
   comms_bus4_7 : BUF
      port map (I=>comms_gpo4(7),
                O=>comms_gpi4(7));
   
   comms_bus4_8 : BUF
      port map (I=>comms_gpo4(8),
                O=>comms_gpi4(8));
   
   comms_bus4_9 : BUF
      port map (I=>comms_gpo4(9),
                O=>comms_gpi4(9));
   
   comms_bus4_10 : BUF
      port map (I=>comms_gpo4(10),
                O=>comms_gpi4(10));
   
   comms_bus4_11 : BUF
      port map (I=>comms_gpo4(11),
                O=>comms_gpi4(11));
   
   comms_bus4_12 : BUF
      port map (I=>comms_gpo4(12),
                O=>comms_gpi4(12));
   
   comms_bus4_13 : BUF
      port map (I=>comms_gpo4(13),
                O=>comms_gpi4(13));
   
   comms_bus4_14 : BUF
      port map (I=>comms_gpo4(14),
                O=>comms_gpi4(14));
   
   comms_bus4_15 : BUF
      port map (I=>comms_gpo4(15),
                O=>comms_gpi4(15));
   
   comms_bus4_16 : BUF
      port map (I=>comms_gpo4(16),
                O=>comms_gpi4(16));
   
   comms_bus4_17 : BUF
      port map (I=>comms_gpo4(17),
                O=>comms_gpi4(17));
   
   comms_bus4_18 : BUF
      port map (I=>comms_gpo4(18),
                O=>comms_gpi4(18));
   
   comms_bus4_19 : BUF
      port map (I=>comms_gpo4(19),
                O=>comms_gpi4(19));
   
   comms_bus4_20 : BUF
      port map (I=>comms_gpo4(20),
                O=>comms_gpi4(20));
   
   comms_bus4_21 : BUF
      port map (I=>comms_gpo4(21),
                O=>comms_gpi4(21));
   
   comms_bus4_22 : BUF
      port map (I=>comms_gpo4(22),
                O=>comms_gpi4(22));
   
   comms_bus4_23 : BUF
      port map (I=>comms_gpo4(23),
                O=>comms_gpi4(23));
   
   comms_bus4_24 : BUF
      port map (I=>comms_gpo4(24),
                O=>comms_gpi4(24));
   
   comms_bus4_25 : BUF
      port map (I=>comms_gpo4(25),
                O=>comms_gpi4(25));
   
   comms_bus4_26 : BUF
      port map (I=>comms_gpo4(26),
                O=>comms_gpi4(26));
   
   comms_bus4_27 : BUF
      port map (I=>comms_gpo4(27),
                O=>comms_gpi4(27));
   
   comms_bus4_28 : BUF
      port map (I=>comms_gpo4(28),
                O=>comms_gpi4(28));
   
   comms_bus4_29 : BUF
      port map (I=>comms_gpo4(29),
                O=>comms_gpi4(29));
   
   comms_bus4_30 : BUF
      port map (I=>comms_gpo4(30),
                O=>comms_gpi4(30));
   
   comms_bus4_31 : BUF
      port map (I=>comms_gpo4(31),
                O=>comms_gpi4(31));
   
   XLXI_3 : GND
      port map (G=>XLXN_2);
   
   XLXI_7 : IBUF
      port map (I=>UartRx,
                O=>USB_IN);
   
   XLXI_8 : IBUFG
      port map (I=>OBClk,
                O=>CLOCK);
   
   XLXI_11 : OBUF
      port map (I=>USB_OUT,
                O=>UartTx);
   
end BEHAVIORAL;


