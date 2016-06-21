--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : gomoku.vhf
-- /___/   /\     Timestamp : 06/21/2016 15:26:32
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/Owner/Desktop/CS2204-Summer-2016-Research-Project/gomoku/ipcore_dir -intstyle ise -family artix7 -flat -suppress -vhdl C:/Users/Owner/Desktop/CS2204-Summer-2016-Research-Project/gomoku/gomoku.vhf -w C:/Users/Owner/Desktop/CS2204-Summer-2016-Research-Project/gomoku/gomoku.sch
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


