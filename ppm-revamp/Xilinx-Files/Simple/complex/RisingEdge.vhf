--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : RisingEdge.vhf
-- /___/   /\     Timestamp : 06/17/2016 13:31:52
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/Owner/Desktop/CS2204-Summer-2016-Research-Project/ppm-revamp/Xilinx-Files/Simple/complex/ipcore_dir -intstyle ise -family artix7 -flat -suppress -vhdl C:/Users/Owner/Desktop/CS2204-Summer-2016-Research-Project/ppm-revamp/Xilinx-Files/Simple/complex/RisingEdge.vhf -w C:/Users/Owner/Desktop/CS2204-Summer-2016-Research-Project/ppm-revamp/Xilinx-Files/Simple/complex/RisingEdge.sch
--Design Name: RisingEdge
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

entity RisingEdge is
   port ( C : in    std_logic; 
          D : in    std_logic; 
          Q : out   std_logic);
end RisingEdge;

architecture BEHAVIORAL of RisingEdge is
   attribute BOX_TYPE   : string ;
   signal XLXN_7 : std_logic;
   signal XLXN_9 : std_logic;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND2
      port map (I0=>XLXN_7,
                I1=>D,
                O=>Q);
   
   XLXI_4 : INV
      port map (I=>XLXN_9,
                O=>XLXN_7);
   
   XLXI_7 : FD
      port map (C=>C,
                D=>D,
                Q=>XLXN_9);
   
end BEHAVIORAL;


