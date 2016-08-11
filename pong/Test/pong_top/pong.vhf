--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : pong.vhf
-- /___/   /\     Timestamp : 08/11/2016 10:44:07
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/xy670/Documents/GitHub/CS2204-Summer-2016-Research-Project/pong/Test/pong_top/ipcore_dir -intstyle ise -family artix7 -flat -suppress -vhdl C:/Users/xy670/Documents/GitHub/CS2204-Summer-2016-Research-Project/pong/Test/pong_top/pong.vhf -w C:/Users/xy670/Documents/GitHub/CS2204-Summer-2016-Research-Project/pong/Test/pong_top/pong.sch
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
          led0    : out   std_logic; 
          led1    : out   std_logic; 
          led2    : out   std_logic; 
          led3    : out   std_logic; 
          usb_out : out   std_logic);
end pong;

architecture BEHAVIORAL of pong is
   attribute IOSTANDARD   : string ;
   attribute CAPACITANCE  : string ;
   attribute IBUF_LOW_PWR : string ;
   attribute BOX_TYPE     : string ;
   attribute SLEW         : string ;
   attribute DRIVE        : string ;
   signal comms_clk             : std_logic;
   signal comms_uart_rx         : std_logic;
   signal comms_uart_tx         : std_logic;
   signal gpi1                  : std_logic_vector (31 downto 0);
   signal gpo1                  : std_logic_vector (31 downto 0);
   signal gpo2                  : std_logic_vector (31 downto 0);
   signal gpo3                  : std_logic_vector (31 downto 0);
   signal XLXN_16               : std_logic;
   signal XLXN_40               : std_logic;
   signal XLXN_41               : std_logic_vector (1 downto 0);
   signal XLXN_42               : std_logic_vector (3 downto 0);
   signal comms_gpi2_openSignal : std_logic_vector (31 downto 0);
   signal comms_gpi3_openSignal : std_logic_vector (31 downto 0);
   signal comms_gpi4_openSignal : std_logic_vector (31 downto 0);
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
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component player
      port ( clk     : in    std_logic; 
             reset   : in    std_logic; 
             ctrlSel : in    std_logic_vector (1 downto 0); 
             extIn   : in    std_logic_vector (3 downto 0); 
             ballX   : in    std_logic_vector (9 downto 0); 
             ballY   : in    std_logic_vector (9 downto 0); 
             paddleX : in    std_logic_vector (9 downto 0); 
             paddleY : in    std_logic_vector (9 downto 0); 
             extOut  : out   std_logic_vector (3 downto 0));
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
begin
   XLXN_41(1 downto 0) <= b"10";
   XLXN_42(3 downto 0) <= x"0";
   comms : communication
      port map (clk=>comms_clk,
                gpi1(31 downto 0)=>gpi1(31 downto 0),
                gpi2(31 downto 0)=>comms_gpi2_openSignal(31 downto 0),
                gpi3(31 downto 0)=>comms_gpi3_openSignal(31 downto 0),
                gpi4(31 downto 0)=>comms_gpi4_openSignal(31 downto 0),
                reset=>XLXN_16,
                uart_rx=>comms_uart_rx,
                gpo1(31 downto 0)=>gpo1(31 downto 0),
                gpo2(31 downto 0)=>gpo2(31 downto 0),
                gpo3(31 downto 0)=>gpo3(31 downto 0),
                gpo4=>open,
                intc_irq=>open,
                uart_interrupt=>open,
                uart_tx=>comms_uart_tx);
   
   XLXI_2 : IBUFG
      port map (I=>CLOCK,
                O=>comms_clk);
   
   XLXI_3 : IBUF
      port map (I=>usb_in,
                O=>comms_uart_rx);
   
   XLXI_4 : OBUF
      port map (I=>comms_uart_tx,
                O=>usb_out);
   
   XLXI_8 : GND
      port map (G=>XLXN_16);
   
   XLXI_19 : player
      port map (ballX(9 downto 0)=>gpo1(9 downto 0),
                ballY(9 downto 0)=>gpo1(19 downto 10),
                clk=>comms_clk,
                ctrlSel(1 downto 0)=>XLXN_41(1 downto 0),
                extIn(3 downto 0)=>XLXN_42(3 downto 0),
                paddleX(9 downto 0)=>gpo3(9 downto 0),
                paddleY(9 downto 0)=>gpo3(19 downto 10),
                reset=>XLXN_40,
                extOut(3 downto 0)=>gpi1(3 downto 0));
   
   XLXI_21 : VCC
      port map (P=>XLXN_40);
   
   XLXI_24 : OBUF
      port map (I=>gpi1(0),
                O=>led0);
   
   XLXI_25 : OBUF
      port map (I=>gpi1(1),
                O=>led1);
   
   XLXI_26 : OBUF
      port map (I=>gpi1(2),
                O=>led2);
   
   XLXI_27 : OBUF
      port map (I=>gpi1(3),
                O=>led3);
   
end BEHAVIORAL;


