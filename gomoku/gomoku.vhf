--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : gomoku.vhf
-- /___/   /\     Timestamp : 07/13/2016 17:32:55
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/gomoku/ipcore_dir -intstyle ise -family artix7 -flat -suppress -vhdl C:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/gomoku/gomoku.vhf -w C:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/gomoku/gomoku.sch
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
   port ( OBClk   : in    std_logic; 
          USB_IN  : in    std_logic; 
          USB_OUT : out   std_logic);
end gomoku;

architecture BEHAVIORAL of gomoku is
   attribute BOX_TYPE     : string ;
   attribute IOSTANDARD   : string ;
   attribute CAPACITANCE  : string ;
   attribute IBUF_LOW_PWR : string ;
   signal CLOCK                 : std_logic;
   signal comms_gpi             : std_logic_vector (31 downto 0);
   signal XLXN_2                : std_logic;
   signal mcs_0_gpi2_openSignal : std_logic_vector (31 downto 0);
   signal mcs_0_gpi3_openSignal : std_logic_vector (31 downto 0);
   signal mcs_0_gpi4_openSignal : std_logic_vector (31 downto 0);
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
   
begin
   mcs_0 : communication
      port map (clk=>CLOCK,
                gpi1(31 downto 0)=>comms_gpi(31 downto 0),
                gpi2(31 downto 0)=>mcs_0_gpi2_openSignal(31 downto 0),
                gpi3(31 downto 0)=>mcs_0_gpi3_openSignal(31 downto 0),
                gpi4(31 downto 0)=>mcs_0_gpi4_openSignal(31 downto 0),
                reset=>XLXN_2,
                uart_rx=>USB_IN,
                gpo1(31 downto 0)=>comms_gpi(31 downto 0),
                gpo2=>open,
                gpo3=>open,
                gpo4=>open,
                intc_irq=>open,
                uart_interrupt=>open,
                uart_tx=>USB_OUT);
   
   XLXI_3 : GND
      port map (G=>XLXN_2);
   
   XLXI_8 : IBUFG
      port map (I=>OBClk,
                O=>CLOCK);
   
end BEHAVIORAL;


