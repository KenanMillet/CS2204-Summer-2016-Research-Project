--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : pong.vhf
-- /___/   /\     Timestamp : 08/01/2016 15:51:32
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/pong/TOP/ipcore_dir -intstyle ise -family artix7 -flat -suppress -vhdl C:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/pong/TOP/pong.vhf -w C:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/pong/TOP/pong.sch
--Design Name: pong
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

entity pong is
   port ( CLOCK   : in    std_logic; 
          usb_in  : in    std_logic; 
          usb_out : out   std_logic);
end pong;

architecture BEHAVIORAL of pong is
   attribute BOX_TYPE     : string ;
   attribute IOSTANDARD   : string ;
   attribute CAPACITANCE  : string ;
   attribute IBUF_LOW_PWR : string ;
   attribute SLEW         : string ;
   attribute DRIVE        : string ;
   signal clk                     : std_logic;
   signal gpi1                    : std_logic_vector (31 downto 0);
   signal gpi2                    : std_logic_vector (31 downto 0);
   signal gpo1                    : std_logic_vector (31 downto 0);
   signal uart_rx                 : std_logic;
   signal uart_tx                 : std_logic;
   signal XLXN_15                 : std_logic;
   signal comms_gpi3_openSignal   : std_logic_vector (31 downto 0);
   signal comms_gpi4_openSignal   : std_logic_vector (31 downto 0);
   signal XLXI_2_clk_openSignal   : std_logic;
   signal XLXI_2_gpi1_openSignal  : std_logic_vector (31 downto 0);
   signal XLXI_2_gpi2_openSignal  : std_logic_vector (31 downto 0);
   signal XLXI_2_gpi3_openSignal  : std_logic_vector (31 downto 0);
   signal XLXI_2_gpi4_openSignal  : std_logic_vector (31 downto 0);
   signal XLXI_2_reset_openSignal : std_logic;
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
   
   component pong_game
      port ( clk   : in    std_logic; 
             reset : in    std_logic; 
             gpi1  : in    std_logic_vector (31 downto 0); 
             gpi2  : in    std_logic_vector (31 downto 0); 
             gpi3  : in    std_logic_vector (31 downto 0); 
             gpi4  : in    std_logic_vector (31 downto 0); 
             gpo1  : out   std_logic_vector (31 downto 0); 
             gpo2  : out   std_logic_vector (31 downto 0); 
             gpo3  : out   std_logic_vector (31 downto 0); 
             gpo4  : out   std_logic_vector (31 downto 0));
   end component;
   
   component ball
      port ( tickIn     : in    std_logic; 
             collBottom : in    std_logic; 
             collLeft   : in    std_logic; 
             collRight  : in    std_logic; 
             reset      : in    std_logic; 
             elapseTime : in    std_logic_vector (19 downto 0); 
             ballWidth  : out   std_logic_vector (7 downto 0); 
             ballHeight : out   std_logic_vector (7 downto 0); 
             ballPosX   : out   std_logic_vector (9 downto 0); 
             ballPosY   : out   std_logic_vector (9 downto 0); 
             collTop    : out   std_logic);
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
   comms : communication
      port map (clk=>clk,
                gpi1(31 downto 0)=>gpi1(31 downto 0),
                gpi2(31 downto 0)=>gpi2(31 downto 0),
                gpi3(31 downto 0)=>comms_gpi3_openSignal(31 downto 0),
                gpi4(31 downto 0)=>comms_gpi4_openSignal(31 downto 0),
                reset=>XLXN_15,
                uart_rx=>uart_rx,
                gpo1(31 downto 0)=>gpo1(31 downto 0),
                gpo2=>open,
                gpo3=>open,
                gpo4=>open,
                intc_irq=>open,
                uart_interrupt=>open,
                uart_tx=>uart_tx);
   
   XLXI_2 : pong_game
      port map (clk=>XLXI_2_clk_openSignal,
                gpi1(31 downto 0)=>XLXI_2_gpi1_openSignal(31 downto 0),
                gpi2(31 downto 0)=>XLXI_2_gpi2_openSignal(31 downto 0),
                gpi3(31 downto 0)=>XLXI_2_gpi3_openSignal(31 downto 0),
                gpi4(31 downto 0)=>XLXI_2_gpi4_openSignal(31 downto 0),
                reset=>XLXI_2_reset_openSignal,
                gpo1=>open,
                gpo2=>open,
                gpo3=>open,
                gpo4=>open);
   
   XLXI_3 : ball
      port map (collBottom=>gpo1(2),
                collLeft=>gpo1(3),
                collRight=>gpo1(4),
                elapseTime(19 downto 0)=>gpo1(25 downto 6),
                reset=>gpo1(5),
                tickIn=>gpo1(0),
                ballHeight(7 downto 0)=>gpi1(15 downto 8),
                ballPosX(9 downto 0)=>gpi1(25 downto 16),
                ballPosY(9 downto 0)=>gpi2(9 downto 0),
                ballWidth(7 downto 0)=>gpi1(7 downto 0),
                collTop=>gpo1(1));
   
   XLXI_4 : GND
      port map (G=>XLXN_15);
   
   XLXI_5 : IBUFG
      port map (I=>CLOCK,
                O=>clk);
   
   XLXI_6 : IBUF
      port map (I=>usb_in,
                O=>uart_rx);
   
   XLXI_7 : OBUF
      port map (I=>uart_tx,
                O=>usb_out);
   
end BEHAVIORAL;


