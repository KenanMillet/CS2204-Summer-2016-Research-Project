--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Gomoku_Verilog.vhf
-- /___/   /\     Timestamp : 07/21/2016 15:55:26
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/gomoku_1/ipcore_dir -intstyle ise -family artix7 -flat -suppress -vhdl C:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/gomoku_1/Gomoku_Verilog.vhf -w C:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/gomoku_1/Gomoku_Verilog.sch
--Design Name: Gomoku_Verilog
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

entity Gomoku_Verilog is
   port ( clk       : in    std_logic; 
          colIn     : in    std_logic_vector (3 downto 0); 
          playerIn  : in    std_logic; 
          rowIn     : in    std_logic_vector (3 downto 0); 
          start     : in    std_logic; 
          winIn     : in    std_logic; 
          colOut    : out   std_logic_vector (3 downto 0); 
          confirm   : out   std_logic; 
          playerOut : out   std_logic; 
          rowOut    : out   std_logic_vector (3 downto 0); 
          winOut    : out   std_logic);
end Gomoku_Verilog;

architecture BEHAVIORAL of Gomoku_Verilog is
   attribute BOX_TYPE   : string ;
   signal invalidplay   : std_logic;
   signal player        : std_logic_vector (1 downto 0);
   signal XLXN_3        : std_logic;
   signal XLXN_5        : std_logic;
   signal XLXN_6        : std_logic;
   signal XLXN_8        : std_logic;
   signal XLXN_9        : std_logic;
   signal XLXN_10       : std_logic;
   signal XLXN_13       : std_logic;
   signal XLXN_18       : std_logic_vector (3 downto 0);
   signal XLXN_19       : std_logic_vector (3 downto 0);
   signal XLXN_34       : std_logic;
   signal XLXN_35       : std_logic_vector (3 downto 0);
   signal XLXN_36       : std_logic_vector (3 downto 0);
   signal XLXN_38       : std_logic;
   signal XLXN_46       : std_logic;
   signal XLXN_47       : std_logic;
   signal XLXN_48       : std_logic;
   signal winOut_DUMMY  : std_logic;
   signal confirm_DUMMY : std_logic;
   component Gomoku_ControlUnit_V
      port ( clk       : in    std_logic; 
             p1played  : in    std_logic; 
             p2played  : in    std_logic; 
             p2canplay : in    std_logic; 
             reset     : in    std_logic; 
             start     : in    std_logic; 
             valid     : in    std_logic; 
             check     : out   std_logic; 
             p2sturn   : out   std_logic; 
             p1sturn   : out   std_logic; 
             confirm   : out   std_logic; 
             player    : out   std_logic_vector (1 downto 0));
   end component;
   
   component Gomoku_MachinePlayer_V
      port ( myturn : in    std_logic; 
             valid  : in    std_logic; 
             played : out   std_logic; 
             myrow  : out   std_logic_vector (3 downto 0); 
             mycol  : out   std_logic_vector (3 downto 0));
   end component;
   
   component Gomoku_PlayCheck_V
      port ( check  : in    std_logic; 
             player : in    std_logic_vector (1 downto 0); 
             p1row  : in    std_logic_vector (3 downto 0); 
             p1col  : in    std_logic_vector (3 downto 0); 
             p2row  : in    std_logic_vector (3 downto 0); 
             p2col  : in    std_logic_vector (3 downto 0); 
             valid  : out   std_logic; 
             win    : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component Gomoku_IO_V
      port ( p1sturn      : in    std_logic; 
             USBp2canplay : in    std_logic; 
             USBp1played  : in    std_logic; 
             p2row        : in    std_logic_vector (3 downto 0); 
             p2col        : in    std_logic_vector (3 downto 0); 
             USBp1row     : in    std_logic_vector (3 downto 0); 
             USBp1col     : in    std_logic_vector (3 downto 0); 
             player       : in    std_logic_vector (1 downto 0); 
             p1row        : out   std_logic_vector (3 downto 0); 
             p1col        : out   std_logic_vector (3 downto 0); 
             USBp2row     : out   std_logic_vector (3 downto 0); 
             USBp2col     : out   std_logic_vector (3 downto 0); 
             USBp1sturn   : out   std_logic; 
             p2canplay    : out   std_logic; 
             p1played     : out   std_logic; 
             confirmOut   : in    std_logic; 
             confirmIn    : in    std_logic);
   end component;
   
begin
   confirm <= confirm_DUMMY;
   winOut <= winOut_DUMMY;
   XLXI_9 : Gomoku_ControlUnit_V
      port map (clk=>clk,
                p1played=>XLXN_48,
                p2canplay=>XLXN_48,
                p2played=>XLXN_3,
                reset=>XLXN_10,
                start=>start,
                valid=>XLXN_8,
                check=>XLXN_13,
                confirm=>invalidplay,
                player(1 downto 0)=>player(1 downto 0),
                p1sturn=>XLXN_6,
                p2sturn=>XLXN_5);
   
   XLXI_11 : Gomoku_MachinePlayer_V
      port map (myturn=>XLXN_5,
                valid=>XLXN_8,
                mycol(3 downto 0)=>XLXN_19(3 downto 0),
                myrow(3 downto 0)=>XLXN_18(3 downto 0),
                played=>XLXN_3);
   
   XLXI_12 : Gomoku_PlayCheck_V
      port map (check=>XLXN_13,
                player(1 downto 0)=>player(1 downto 0),
                p1col(3 downto 0)=>XLXN_36(3 downto 0),
                p1row(3 downto 0)=>XLXN_35(3 downto 0),
                p2col(3 downto 0)=>XLXN_19(3 downto 0),
                p2row(3 downto 0)=>XLXN_18(3 downto 0),
                valid=>XLXN_8,
                win=>winOut_DUMMY);
   
   XLXI_14 : INV
      port map (I=>XLXN_9,
                O=>XLXN_10);
   
   XLXI_16 : INV
      port map (I=>XLXN_34,
                O=>playerOut);
   
   XLXI_25 : INV
      port map (I=>playerIn,
                O=>XLXN_38);
   
   XLXI_26 : OR2
      port map (I0=>winOut_DUMMY,
                I1=>winIn,
                O=>XLXN_9);
   
   XLXI_27 : OR2
      port map (I0=>XLXN_47,
                I1=>XLXN_46,
                O=>XLXN_48);
   
   XLXI_28 : Gomoku_IO_V
      port map (confirmIn=>invalidplay,
                confirmOut=>confirm_DUMMY,
                player(1 downto 0)=>player(1 downto 0),
                p1sturn=>XLXN_6,
                p2col(3 downto 0)=>XLXN_19(3 downto 0),
                p2row(3 downto 0)=>XLXN_18(3 downto 0),
                USBp1col(3 downto 0)=>colIn(3 downto 0),
                USBp1played=>XLXN_38,
                USBp1row(3 downto 0)=>rowIn(3 downto 0),
                USBp2canplay=>XLXN_38,
                p1col(3 downto 0)=>XLXN_36(3 downto 0),
                p1played=>XLXN_47,
                p1row(3 downto 0)=>XLXN_35(3 downto 0),
                p2canplay=>XLXN_46,
                USBp1sturn=>XLXN_34,
                USBp2col(3 downto 0)=>colOut(3 downto 0),
                USBp2row(3 downto 0)=>rowOut(3 downto 0));
   
end BEHAVIORAL;


