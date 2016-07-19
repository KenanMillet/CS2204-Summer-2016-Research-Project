--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : simple.vhf
-- /___/   /\     Timestamp : 07/19/2016 16:37:27
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/kvm237/Desktop/CS2204-Summer-2016-Research-Project/gomoku_1/ipcore_dir -intstyle ise -family artix7 -flat -suppress -vhdl C:/Users/kvm237/Desktop/CS2204-Summer-2016-Research-Project/gomoku_1/simple.vhf -w C:/Users/kvm237/Desktop/CS2204-Summer-2016-Research-Project/gomoku_1/simple.sch
--Design Name: simple
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

entity simple is
   port ( OBClk   : in    std_logic; 
          usb_in  : in    std_logic; 
          usb_out : out   std_logic);
end simple;

architecture BEHAVIORAL of simple is
   attribute BOX_TYPE     : string ;
   attribute IOSTANDARD   : string ;
   attribute CAPACITANCE  : string ;
   attribute IBUF_LOW_PWR : string ;
   signal CLOCK   : std_logic;
   signal gpi     : std_logic_vector (31 downto 0);
   signal gpo     : std_logic_vector (31 downto 0);
   signal XLXN_49 : std_logic;
   component communication
      port ( clk            : in    std_logic; 
             reset          : in    std_logic; 
             uart_tx        : out   std_logic; 
             uart_rx        : in    std_logic; 
             uart_interrupt : out   std_logic; 
             gpi1           : in    std_logic_vector (31 downto 0); 
             gpo1           : out   std_logic_vector (31 downto 0); 
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
   
   component Gomoku_Verilog
      port ( Clk       : in    std_logic; 
             PlayerIn  : in    std_logic; 
             RowIn     : in    std_logic_vector (3 downto 0); 
             ColIn     : in    std_logic_vector (3 downto 0); 
             PlayerOut : out   std_logic; 
             RowOut    : out   std_logic_vector (3 downto 0); 
             ColOut    : out   std_logic_vector (3 downto 0));
   end component;
   
begin
   mcs_0 : communication
      port map (clk=>CLOCK,
                gpi1(31 downto 0)=>gpi(31 downto 0),
                reset=>XLXN_49,
                uart_rx=>usb_in,
                gpo1(31 downto 0)=>gpo(31 downto 0),
                intc_irq=>open,
                uart_interrupt=>open,
                uart_tx=>usb_out);
   
   XLXI_15 : GND
      port map (G=>XLXN_49);
   
   XLXI_23 : IBUFG
      port map (I=>OBClk,
                O=>CLOCK);
   
   XLXI_26 : Gomoku_Verilog
      port map (Clk=>CLOCK,
                ColIn(3 downto 0)=>gpo(8 downto 5),
                PlayerIn=>gpo(0),
                RowIn(3 downto 0)=>gpo(4 downto 1),
                ColOut(3 downto 0)=>gpi(8 downto 5),
                PlayerOut=>gpi(0),
                RowOut(3 downto 0)=>gpi(4 downto 1));
   
end BEHAVIORAL;


