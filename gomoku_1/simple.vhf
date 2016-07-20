--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : simple.vhf
-- /___/   /\     Timestamp : 07/20/2016 12:40:17
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

entity Gomoku_Verilog_MUSER_simple is
   port ( clk       : in    std_logic; 
          colIn     : in    std_logic_vector (3 downto 0); 
          playerIn  : in    std_logic; 
          rowIn     : in    std_logic_vector (3 downto 0); 
          winIn     : in    std_logic; 
          colOut    : out   std_logic_vector (3 downto 0); 
          playerOut : out   std_logic; 
          rowOut    : out   std_logic_vector (3 downto 0); 
          winOut    : out   std_logic);
end Gomoku_Verilog_MUSER_simple;

architecture BEHAVIORAL of Gomoku_Verilog_MUSER_simple is
   attribute BOX_TYPE   : string ;
   signal XLXN_2       : std_logic;
   signal XLXN_3       : std_logic;
   signal XLXN_4       : std_logic_vector (1 downto 0);
   signal XLXN_5       : std_logic;
   signal XLXN_6       : std_logic;
   signal XLXN_7       : std_logic;
   signal XLXN_8       : std_logic;
   signal XLXN_9       : std_logic;
   signal XLXN_10      : std_logic;
   signal XLXN_11      : std_logic;
   signal XLXN_12      : std_logic;
   signal XLXN_13      : std_logic;
   signal XLXN_18      : std_logic_vector (3 downto 0);
   signal XLXN_19      : std_logic_vector (3 downto 0);
   signal XLXN_34      : std_logic;
   signal XLXN_35      : std_logic_vector (3 downto 0);
   signal XLXN_36      : std_logic_vector (3 downto 0);
   signal XLXN_38      : std_logic;
   signal winOut_DUMMY : std_logic;
   component Gomoku_ControlUnit_V
      port ( clk         : in    std_logic; 
             p1played    : in    std_logic; 
             p2played    : in    std_logic; 
             p2canplay   : in    std_logic; 
             reset       : in    std_logic; 
             enable      : in    std_logic; 
             valid       : in    std_logic; 
             check       : out   std_logic; 
             p2sturn     : out   std_logic; 
             p1sturn     : out   std_logic; 
             invalidplay : out   std_logic; 
             player      : out   std_logic_vector (1 downto 0));
   end component;
   
   component Gomoku_IO_V
      port ( p1sturn      : in    std_logic; 
             invalidplay  : in    std_logic; 
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
             p1played     : out   std_logic);
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
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
begin
   winOut <= winOut_DUMMY;
   XLXI_9 : Gomoku_ControlUnit_V
      port map (clk=>XLXN_2,
                enable=>XLXN_12,
                p1played=>XLXN_11,
                p2canplay=>XLXN_11,
                p2played=>XLXN_3,
                reset=>XLXN_10,
                valid=>XLXN_8,
                check=>XLXN_13,
                invalidplay=>XLXN_7,
                player(1 downto 0)=>XLXN_4(1 downto 0),
                p1sturn=>XLXN_6,
                p2sturn=>XLXN_5);
   
   XLXI_10 : Gomoku_IO_V
      port map (invalidplay=>XLXN_7,
                player(1 downto 0)=>XLXN_4(1 downto 0),
                p1sturn=>XLXN_6,
                p2col(3 downto 0)=>XLXN_19(3 downto 0),
                p2row(3 downto 0)=>XLXN_18(3 downto 0),
                USBp1col(3 downto 0)=>colIn(3 downto 0),
                USBp1played=>XLXN_38,
                USBp1row(3 downto 0)=>rowIn(3 downto 0),
                USBp2canplay=>XLXN_38,
                p1col(3 downto 0)=>XLXN_36(3 downto 0),
                p1played=>XLXN_11,
                p1row(3 downto 0)=>XLXN_35(3 downto 0),
                p2canplay=>XLXN_11,
                USBp1sturn=>XLXN_34,
                USBp2col(3 downto 0)=>colOut(3 downto 0),
                USBp2row(3 downto 0)=>rowOut(3 downto 0));
   
   XLXI_11 : Gomoku_MachinePlayer_V
      port map (myturn=>XLXN_5,
                valid=>XLXN_8,
                mycol(3 downto 0)=>XLXN_19(3 downto 0),
                myrow(3 downto 0)=>XLXN_18(3 downto 0),
                played=>XLXN_3);
   
   XLXI_12 : Gomoku_PlayCheck_V
      port map (check=>XLXN_13,
                player(1 downto 0)=>XLXN_4(1 downto 0),
                p1col(3 downto 0)=>XLXN_36(3 downto 0),
                p1row(3 downto 0)=>XLXN_35(3 downto 0),
                p2col(3 downto 0)=>XLXN_19(3 downto 0),
                p2row(3 downto 0)=>XLXN_18(3 downto 0),
                valid=>XLXN_8,
                win=>winOut_DUMMY);
   
   XLXI_14 : INV
      port map (I=>XLXN_9,
                O=>XLXN_10);
   
   XLXI_15 : VCC
      port map (P=>XLXN_12);
   
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
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity simple is
   port ( OBClk  : in    std_logic; 
          UartTx : in    std_logic; 
          UartRx : out   std_logic);
end simple;

architecture BEHAVIORAL of simple is
   attribute BOX_TYPE    : string ;
   attribute IOSTANDARD  : string ;
   attribute CAPACITANCE : string ;
   attribute SLEW        : string ;
   attribute DRIVE       : string ;
   signal CLOCK   : std_logic;
   signal gpi     : std_logic_vector (31 downto 0);
   signal gpo     : std_logic_vector (31 downto 0);
   signal USB_IN  : std_logic;
   signal USB_OUT : std_logic;
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
   
   component Gomoku_Verilog_MUSER_simple
      port ( playerIn  : in    std_logic; 
             rowIn     : in    std_logic_vector (3 downto 0); 
             colIn     : in    std_logic_vector (3 downto 0); 
             winIn     : in    std_logic; 
             playerOut : out   std_logic; 
             rowOut    : out   std_logic_vector (3 downto 0); 
             colOut    : out   std_logic_vector (3 downto 0); 
             winOut    : out   std_logic; 
             clk       : in    std_logic);
   end component;
   
   component IBUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute IOSTANDARD of IBUF : component is "DEFAULT";
   attribute CAPACITANCE of IBUF : component is "DONT_CARE";
   attribute BOX_TYPE of IBUF : component is "BLACK_BOX";
   
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
   mcs_0 : communication
      port map (clk=>CLOCK,
                gpi1(31 downto 0)=>gpi(31 downto 0),
                reset=>XLXN_49,
                uart_rx=>USB_IN,
                gpo1(31 downto 0)=>gpo(31 downto 0),
                intc_irq=>open,
                uart_interrupt=>open,
                uart_tx=>USB_OUT);
   
   XLXI_15 : GND
      port map (G=>XLXN_49);
   
   XLXI_25 : Gomoku_Verilog_MUSER_simple
      port map (clk=>CLOCK,
                colIn(3 downto 0)=>gpo(8 downto 5),
                playerIn=>gpo(0),
                rowIn(3 downto 0)=>gpo(4 downto 1),
                winIn=>gpo(9),
                colOut(3 downto 0)=>gpi(8 downto 5),
                playerOut=>gpi(0),
                rowOut(3 downto 0)=>gpi(4 downto 1),
                winOut=>gpi(9));
   
   XLXI_26 : IBUF
      port map (I=>UartTx,
                O=>USB_IN);
   
   XLXI_27 : OBUF
      port map (I=>USB_OUT,
                O=>UartRx);
   
   XLXI_28 : IBUF
      port map (I=>OBClk,
                O=>CLOCK);
   
end BEHAVIORAL;


