--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : simple.vhf
-- /___/   /\     Timestamp : 07/23/2016 13:03:22
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/gomoku2/ipcore_dir -intstyle ise -family artix7 -flat -suppress -vhdl C:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/gomoku2/simple.vhf -w C:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/gomoku2/simple.sch
--Design Name: simple
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M2_1_HXILINX_simple -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_simple is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_simple;

architecture M2_1_HXILINX_simple_V of M2_1_HXILINX_simple is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_simple_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Gomoku_Verilog_MUSER_simple is
   port ( clk           : in    std_logic; 
          colIn         : in    std_logic_vector (3 downto 0); 
          playerIn      : in    std_logic; 
          recv          : in    std_logic; 
          rowIn         : in    std_logic_vector (3 downto 0); 
          sendConfirmed : in    std_logic; 
          winIn         : in    std_logic; 
          colOut        : out   std_logic_vector (3 downto 0); 
          playerOut     : out   std_logic; 
          recvConfirmed : out   std_logic; 
          rowOut        : out   std_logic_vector (3 downto 0); 
          send          : out   std_logic; 
          winOut        : out   std_logic);
end Gomoku_Verilog_MUSER_simple;

architecture BEHAVIORAL of Gomoku_Verilog_MUSER_simple is
   attribute BOX_TYPE   : string ;
   signal player        : std_logic_vector (1 downto 0);
   signal XLXN_3        : std_logic;
   signal XLXN_5        : std_logic;
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
   signal XLXN_52       : std_logic;
   signal XLXN_53       : std_logic;
   signal XLXN_54       : std_logic;
   signal winOut_DUMMY  : std_logic;
   signal send_DUMMY    : std_logic;
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
             player    : out   std_logic_vector (1 downto 0); 
             pause     : in    std_logic);
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
      port ( USBp2canplay     : in    std_logic; 
             USBp1played      : in    std_logic; 
             p2row            : in    std_logic_vector (3 downto 0); 
             p2col            : in    std_logic_vector (3 downto 0); 
             USBp1row         : in    std_logic_vector (3 downto 0); 
             USBp1col         : in    std_logic_vector (3 downto 0); 
             player           : in    std_logic_vector (1 downto 0); 
             p1row            : out   std_logic_vector (3 downto 0); 
             p1col            : out   std_logic_vector (3 downto 0); 
             USBp2row         : out   std_logic_vector (3 downto 0); 
             USBp2col         : out   std_logic_vector (3 downto 0); 
             USBp1sturn       : out   std_logic; 
             p2canplay        : out   std_logic; 
             p1played         : out   std_logic; 
             sendOut          : out   std_logic; 
             sendConfirmedIn  : in    std_logic; 
             recvConfirmedOut : out   std_logic; 
             p1sturn          : in    std_logic; 
             sendIn           : in    std_logic; 
             recvIn           : in    std_logic; 
             recvOut          : out   std_logic);
   end component;
   
begin
   send <= send_DUMMY;
   winOut <= winOut_DUMMY;
   XLXI_9 : Gomoku_ControlUnit_V
      port map (clk=>clk,
                pause=>send_DUMMY,
                p1played=>XLXN_48,
                p2canplay=>XLXN_48,
                p2played=>XLXN_3,
                reset=>XLXN_10,
                start=>XLXN_54,
                valid=>XLXN_8,
                check=>XLXN_13,
                confirm=>XLXN_53,
                player(1 downto 0)=>player(1 downto 0),
                p1sturn=>XLXN_52,
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
      port map (player(1 downto 0)=>player(1 downto 0),
                p1sturn=>XLXN_52,
                p2col(3 downto 0)=>XLXN_19(3 downto 0),
                p2row(3 downto 0)=>XLXN_18(3 downto 0),
                recvIn=>recv,
                sendConfirmedIn=>sendConfirmed,
                sendIn=>XLXN_53,
                USBp1col(3 downto 0)=>colIn(3 downto 0),
                USBp1played=>XLXN_38,
                USBp1row(3 downto 0)=>rowIn(3 downto 0),
                USBp2canplay=>XLXN_38,
                p1col(3 downto 0)=>XLXN_36(3 downto 0),
                p1played=>XLXN_47,
                p1row(3 downto 0)=>XLXN_35(3 downto 0),
                p2canplay=>XLXN_46,
                recvConfirmedOut=>recvConfirmed,
                recvOut=>XLXN_54,
                sendOut=>send_DUMMY,
                USBp1sturn=>XLXN_34,
                USBp2col(3 downto 0)=>colOut(3 downto 0),
                USBp2row(3 downto 0)=>rowOut(3 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity simple is
   port ( btnc     : in    std_logic; 
          OBClk    : in    std_logic; 
          sw0      : in    std_logic; 
          sw15     : in    std_logic; 
          UartTx   : in    std_logic; 
          lp       : out   std_logic; 
          recv     : out   std_logic; 
          recvConf : out   std_logic; 
          send     : out   std_logic; 
          sendConf : out   std_logic; 
          UartRx   : out   std_logic; 
          win      : out   std_logic; 
          x0       : out   std_logic; 
          x1       : out   std_logic; 
          x2       : out   std_logic; 
          x3       : out   std_logic; 
          y0       : out   std_logic; 
          y1       : out   std_logic; 
          y2       : out   std_logic; 
          y3       : out   std_logic);
end simple;

architecture BEHAVIORAL of simple is
   attribute BOX_TYPE    : string ;
   attribute IOSTANDARD  : string ;
   attribute CAPACITANCE : string ;
   attribute SLEW        : string ;
   attribute DRIVE       : string ;
   attribute HU_SET      : string ;
   signal clk_sel  : std_logic;
   signal CLOCK    : std_logic;
   signal data_sel : std_logic;
   signal gpi      : std_logic_vector (31 downto 0);
   signal gpo      : std_logic_vector (31 downto 0);
   signal INT_CLK  : std_logic;
   signal MAN_CLK  : std_logic;
   signal USB_IN   : std_logic;
   signal USB_OUT  : std_logic;
   signal XLXN_49  : std_logic;
   signal XLXN_94  : std_logic;
   signal XLXN_95  : std_logic;
   signal XLXN_96  : std_logic;
   signal XLXN_97  : std_logic;
   signal XLXN_98  : std_logic;
   signal XLXN_99  : std_logic;
   signal XLXN_100 : std_logic;
   signal XLXN_101 : std_logic;
   signal XLXN_102 : std_logic;
   signal XLXN_103 : std_logic;
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
   
   component OBUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute IOSTANDARD of OBUF : component is "DEFAULT";
   attribute CAPACITANCE of OBUF : component is "DONT_CARE";
   attribute SLEW of OBUF : component is "SLOW";
   attribute DRIVE of OBUF : component is "12";
   attribute BOX_TYPE of OBUF : component is "BLACK_BOX";
   
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
   
   component Gomoku_Verilog_MUSER_simple
      port ( playerIn      : in    std_logic; 
             rowIn         : in    std_logic_vector (3 downto 0); 
             colIn         : in    std_logic_vector (3 downto 0); 
             winIn         : in    std_logic; 
             playerOut     : out   std_logic; 
             rowOut        : out   std_logic_vector (3 downto 0); 
             colOut        : out   std_logic_vector (3 downto 0); 
             winOut        : out   std_logic; 
             clk           : in    std_logic; 
             sendConfirmed : in    std_logic; 
             recv          : in    std_logic; 
             recvConfirmed : out   std_logic; 
             send          : out   std_logic);
   end component;
   
   component M2_1_HXILINX_simple
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_42 : label is "XLXI_42_0";
   attribute HU_SET of XLXI_44 : label is "XLXI_44_1";
   attribute HU_SET of XLXI_45 : label is "XLXI_45_2";
   attribute HU_SET of XLXI_46 : label is "XLXI_46_3";
   attribute HU_SET of XLXI_51 : label is "XLXI_51_7";
   attribute HU_SET of XLXI_52 : label is "XLXI_52_6";
   attribute HU_SET of XLXI_53 : label is "XLXI_53_8";
   attribute HU_SET of XLXI_54 : label is "XLXI_54_9";
   attribute HU_SET of XLXI_55 : label is "XLXI_55_4";
   attribute HU_SET of XLXI_56 : label is "XLXI_56_5";
   attribute HU_SET of XLXI_79 : label is "XLXI_79_10";
begin
   XLXI_15 : GND
      port map (G=>XLXN_49);
   
   XLXI_26 : IBUF
      port map (I=>UartTx,
                O=>USB_IN);
   
   XLXI_27 : OBUF
      port map (I=>USB_OUT,
                O=>UartRx);
   
   XLXI_28 : IBUF
      port map (I=>OBClk,
                O=>CLOCK);
   
   XLXI_32 : communication
      port map (clk=>CLOCK,
                gpi1(31 downto 0)=>gpi(31 downto 0),
                reset=>XLXN_49,
                uart_rx=>USB_IN,
                gpo1(31 downto 0)=>gpo(31 downto 0),
                intc_irq=>open,
                uart_interrupt=>open,
                uart_tx=>USB_OUT);
   
   XLXI_36 : Gomoku_Verilog_MUSER_simple
      port map (clk=>INT_CLK,
                colIn(3 downto 0)=>gpo(8 downto 5),
                playerIn=>gpo(0),
                recv=>gpo(10),
                rowIn(3 downto 0)=>gpo(4 downto 1),
                sendConfirmed=>gpo(11),
                winIn=>gpo(9),
                colOut(3 downto 0)=>gpi(8 downto 5),
                playerOut=>gpi(0),
                recvConfirmed=>gpi(11),
                rowOut(3 downto 0)=>gpi(4 downto 1),
                send=>gpi(10),
                winOut=>gpi(9));
   
   XLXI_37 : IBUF
      port map (I=>btnc,
                O=>MAN_CLK);
   
   XLXI_42 : M2_1_HXILINX_simple
      port map (D0=>gpi(0),
                D1=>gpo(0),
                S0=>data_sel,
                O=>XLXN_94);
   
   XLXI_44 : M2_1_HXILINX_simple
      port map (D0=>gpi(1),
                D1=>gpo(1),
                S0=>data_sel,
                O=>XLXN_95);
   
   XLXI_45 : M2_1_HXILINX_simple
      port map (D0=>gpi(2),
                D1=>gpo(2),
                S0=>data_sel,
                O=>XLXN_96);
   
   XLXI_46 : M2_1_HXILINX_simple
      port map (D0=>gpi(3),
                D1=>gpo(3),
                S0=>data_sel,
                O=>XLXN_97);
   
   XLXI_51 : M2_1_HXILINX_simple
      port map (D0=>gpi(5),
                D1=>gpo(5),
                S0=>data_sel,
                O=>XLXN_99);
   
   XLXI_52 : M2_1_HXILINX_simple
      port map (D0=>gpi(4),
                D1=>gpo(4),
                S0=>data_sel,
                O=>XLXN_98);
   
   XLXI_53 : M2_1_HXILINX_simple
      port map (D0=>gpi(6),
                D1=>gpo(6),
                S0=>data_sel,
                O=>XLXN_100);
   
   XLXI_54 : M2_1_HXILINX_simple
      port map (D0=>gpi(7),
                D1=>gpo(7),
                S0=>data_sel,
                O=>XLXN_101);
   
   XLXI_55 : M2_1_HXILINX_simple
      port map (D0=>gpi(8),
                D1=>gpo(8),
                S0=>data_sel,
                O=>XLXN_102);
   
   XLXI_56 : M2_1_HXILINX_simple
      port map (D0=>gpi(9),
                D1=>gpo(9),
                S0=>data_sel,
                O=>XLXN_103);
   
   XLXI_61 : IBUF
      port map (I=>sw0,
                O=>data_sel);
   
   XLXI_64 : OBUF
      port map (I=>XLXN_94,
                O=>lp);
   
   XLXI_65 : OBUF
      port map (I=>XLXN_95,
                O=>x0);
   
   XLXI_66 : OBUF
      port map (I=>XLXN_96,
                O=>x1);
   
   XLXI_67 : OBUF
      port map (I=>XLXN_97,
                O=>x2);
   
   XLXI_68 : OBUF
      port map (I=>XLXN_98,
                O=>x3);
   
   XLXI_69 : OBUF
      port map (I=>XLXN_99,
                O=>y0);
   
   XLXI_70 : OBUF
      port map (I=>XLXN_100,
                O=>y1);
   
   XLXI_71 : OBUF
      port map (I=>XLXN_101,
                O=>y2);
   
   XLXI_72 : OBUF
      port map (I=>XLXN_102,
                O=>y3);
   
   XLXI_73 : OBUF
      port map (I=>XLXN_103,
                O=>win);
   
   XLXI_78 : IBUF
      port map (I=>sw15,
                O=>clk_sel);
   
   XLXI_79 : M2_1_HXILINX_simple
      port map (D0=>CLOCK,
                D1=>MAN_CLK,
                S0=>clk_sel,
                O=>INT_CLK);
   
   XLXI_80 : OBUF
      port map (I=>gpi(10),
                O=>send);
   
   XLXI_81 : OBUF
      port map (I=>gpi(11),
                O=>recvConf);
   
   XLXI_82 : OBUF
      port map (I=>gpo(10),
                O=>recv);
   
   XLXI_83 : OBUF
      port map (I=>gpo(11),
                O=>sendConf);
   
end BEHAVIORAL;


