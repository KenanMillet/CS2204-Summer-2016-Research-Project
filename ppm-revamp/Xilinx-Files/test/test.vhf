--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : test.vhf
-- /___/   /\     Timestamp : 06/21/2016 12:51:42
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/ppm-revamp/Xilinx-Files/test/ipcore_dir -intstyle ise -family artix7 -flat -suppress -vhdl C:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/ppm-revamp/Xilinx-Files/test/test.vhf -w C:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/ppm-revamp/Xilinx-Files/test/test.sch
--Design Name: test
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

entity test is
   port ( OBClk   : in    std_logic; 
          usb_in  : in    std_logic; 
          usb_out : out   std_logic);
end test;

architecture BEHAVIORAL of test is
   attribute IOSTANDARD   : string ;
   attribute CAPACITANCE  : string ;
   attribute IBUF_LOW_PWR : string ;
   attribute BOX_TYPE     : string ;
   signal CLOCK     : std_logic;
   signal comms_in  : std_logic_vector (31 downto 0);
   signal comms_out : std_logic_vector (31 downto 0);
   signal XLXN_4    : std_logic;
   component mb_core
      port ( clk            : in    std_logic; 
             reset          : in    std_logic; 
             uart_tx        : out   std_logic; 
             uart_rx        : in    std_logic; 
             uart_interrupt : out   std_logic; 
             gpi1           : in    std_logic_vector (31 downto 0); 
             gpo1           : out   std_logic_vector (31 downto 0); 
             intc_irq       : out   std_logic);
   end component;
   
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
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
begin
   mcs_0 : mb_core
      port map (clk=>CLOCK,
                gpi1(31 downto 0)=>comms_in(31 downto 0),
                reset=>XLXN_4,
                uart_rx=>usb_in,
                gpo1(31 downto 0)=>comms_out(31 downto 0),
                intc_irq=>open,
                uart_interrupt=>open,
                uart_tx=>usb_out);
   
   XLXI_2 : IBUFG
      port map (I=>OBClk,
                O=>CLOCK);
   
   XLXI_3 : GND
      port map (G=>XLXN_4);
   
end BEHAVIORAL;


