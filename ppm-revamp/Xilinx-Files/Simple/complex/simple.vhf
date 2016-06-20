--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : simple.vhf
-- /___/   /\     Timestamp : 06/20/2016 13:03:52
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/kvm237/Desktop/CS2204-Summer-2016-Research-Project/ppm-revamp/Xilinx-Files/Simple/complex/ipcore_dir -intstyle ise -family artix7 -flat -suppress -vhdl C:/Users/kvm237/Desktop/CS2204-Summer-2016-Research-Project/ppm-revamp/Xilinx-Files/Simple/complex/simple.vhf -w C:/Users/kvm237/Desktop/CS2204-Summer-2016-Research-Project/ppm-revamp/Xilinx-Files/Simple/complex/simple.sch
--Design Name: simple
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL ADD4_HXILINX_simple -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ADD4_HXILINX_simple is
  port(
    CO  : out std_logic;
    OFL : out std_logic;
    S0  : out std_logic;
    S1  : out std_logic;
    S2  : out std_logic;
    S3  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    A2  : in std_logic;
    A3  : in std_logic;
    B0  : in std_logic;
    B1  : in std_logic;
    B2  : in std_logic;
    B3  : in std_logic;
    CI  : in std_logic
  );
end ADD4_HXILINX_simple;

architecture ADD4_HXILINX_simple_V of ADD4_HXILINX_simple is
begin
 adsu_p : process (A0, A1, A2, A3, B0, B1, B2, B3, CI)
    variable adsu_tmp : std_logic_vector(4 downto 0);
    variable a_tmp    : std_logic_vector(3 downto 0);
    variable b_tmp    : std_logic_vector(3 downto 0);
  begin
    a_tmp := A3 & A2 & A1 & A0;
    b_tmp := B3 & B2 & B1 & B0;
    adsu_tmp := conv_std_logic_vector((conv_integer(a_tmp) + conv_integer(b_tmp) + conv_integer(CI)),5);
      
    S3 <= adsu_tmp(3);
    S2 <= adsu_tmp(2);
    S1 <= adsu_tmp(1);
    S0 <= adsu_tmp(0);
    CO <= adsu_tmp(4);
    OFL <= ( A3 and B3 and (not adsu_tmp(3)) ) or ( (not A3) and (not B3) and adsu_tmp(3) ); 
  end process; 

end ADD4_HXILINX_simple_V;
----- CELL FD4CE_HXILINX_simple -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD4CE_HXILINX_simple is
port (
    Q0  : out STD_LOGIC := '0';
    Q1  : out STD_LOGIC := '0';
    Q2  : out STD_LOGIC := '0';
    Q3  : out STD_LOGIC := '0';

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D0  : in STD_LOGIC;
    D1  : in STD_LOGIC;
    D2  : in STD_LOGIC;
    D3  : in STD_LOGIC
    );
end FD4CE_HXILINX_simple;

architecture Behavioral of FD4CE_HXILINX_simple is

begin

process(C, CLR)
begin
  if (CLR='1') then
    Q3 <= '0';
    Q2 <= '0';
    Q1 <= '0';
    Q0 <= '0';
  elsif (C'event and C = '1') then
    if (CE='1') then 
      Q3 <= D3;
      Q2 <= D2;
      Q1 <= D1;
      Q0 <= D0;
    end if;
  end if;
end process;


end Behavioral;


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity RisingEdge_MUSER_simple is
   port ( C : in    std_logic; 
          D : in    std_logic; 
          Q : out   std_logic);
end RisingEdge_MUSER_simple;

architecture BEHAVIORAL of RisingEdge_MUSER_simple is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity simple is
   port ( OBClk     : in    std_logic; 
          usb_in    : in    std_logic; 
          add0      : out   std_logic; 
          add1      : out   std_logic; 
          add2      : out   std_logic; 
          add3      : out   std_logic; 
          enableBit : out   std_logic; 
          gpi0      : out   std_logic; 
          gpi1      : out   std_logic; 
          gpi2      : out   std_logic; 
          gpi3      : out   std_logic; 
          gpo0      : out   std_logic; 
          gpo1      : out   std_logic; 
          gpo2      : out   std_logic; 
          gpo3      : out   std_logic; 
          usb_out   : out   std_logic);
end simple;

architecture BEHAVIORAL of simple is
   attribute HU_SET       : string ;
   attribute BOX_TYPE     : string ;
   attribute IOSTANDARD   : string ;
   attribute CAPACITANCE  : string ;
   attribute IBUF_LOW_PWR : string ;
   attribute SLEW         : string ;
   attribute DRIVE        : string ;
   signal CLOCK      : std_logic;
   signal comms_gpi1 : std_logic_vector (31 downto 0);
   signal comms_gpo1 : std_logic_vector (31 downto 0);
   signal enable     : std_logic;
   signal result0    : std_logic;
   signal result1    : std_logic;
   signal result2    : std_logic;
   signal result3    : std_logic;
   signal XLXN_47    : std_logic;
   signal XLXN_48    : std_logic;
   signal XLXN_49    : std_logic;
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
   
   component FD4CE_HXILINX_simple
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D0  : in    std_logic; 
             D1  : in    std_logic; 
             D2  : in    std_logic; 
             D3  : in    std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic);
   end component;
   
   component ADD4_HXILINX_simple
      port ( A0  : in    std_logic; 
             A1  : in    std_logic; 
             A2  : in    std_logic; 
             A3  : in    std_logic; 
             B0  : in    std_logic; 
             B1  : in    std_logic; 
             B2  : in    std_logic; 
             B3  : in    std_logic; 
             CI  : in    std_logic; 
             CO  : out   std_logic; 
             OFL : out   std_logic; 
             S0  : out   std_logic; 
             S1  : out   std_logic; 
             S2  : out   std_logic; 
             S3  : out   std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component RisingEdge_MUSER_simple
      port ( D : in    std_logic; 
             C : in    std_logic; 
             Q : out   std_logic);
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
   
   component OBUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute IOSTANDARD of OBUF : component is "DEFAULT";
   attribute CAPACITANCE of OBUF : component is "DONT_CARE";
   attribute SLEW of OBUF : component is "SLOW";
   attribute DRIVE of OBUF : component is "12";
   attribute BOX_TYPE of OBUF : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_2";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_3";
begin
   mcs_0 : communication
      port map (clk=>CLOCK,
                gpi1(31 downto 0)=>comms_gpi1(31 downto 0),
                reset=>XLXN_49,
                uart_rx=>usb_in,
                gpo1(31 downto 0)=>comms_gpo1(31 downto 0),
                intc_irq=>open,
                uart_interrupt=>open,
                uart_tx=>usb_out);
   
   XLXI_1 : FD4CE_HXILINX_simple
      port map (C=>CLOCK,
                CE=>enable,
                CLR=>XLXN_48,
                D0=>result0,
                D1=>result1,
                D2=>result2,
                D3=>result3,
                Q0=>comms_gpi1(0),
                Q1=>comms_gpi1(1),
                Q2=>comms_gpi1(2),
                Q3=>comms_gpi1(3));
   
   XLXI_2 : ADD4_HXILINX_simple
      port map (A0=>comms_gpi1(0),
                A1=>comms_gpi1(1),
                A2=>comms_gpi1(2),
                A3=>comms_gpi1(3),
                B0=>comms_gpo1(0),
                B1=>comms_gpo1(1),
                B2=>comms_gpo1(2),
                B3=>comms_gpo1(3),
                CI=>XLXN_47,
                CO=>open,
                OFL=>open,
                S0=>result0,
                S1=>result1,
                S2=>result2,
                S3=>result3);
   
   XLXI_11 : GND
      port map (G=>XLXN_47);
   
   XLXI_12 : GND
      port map (G=>XLXN_48);
   
   XLXI_15 : GND
      port map (G=>XLXN_49);
   
   XLXI_22 : RisingEdge_MUSER_simple
      port map (C=>CLOCK,
                D=>comms_gpo1(4),
                Q=>enable);
   
   XLXI_23 : IBUFG
      port map (I=>OBClk,
                O=>CLOCK);
   
   XLXI_27 : OBUF
      port map (I=>comms_gpi1(2),
                O=>gpi2);
   
   XLXI_30 : OBUF
      port map (I=>comms_gpo1(5),
                O=>gpi0);
   
   XLXI_31 : OBUF
      port map (I=>comms_gpi1(1),
                O=>gpi1);
   
   XLXI_32 : OBUF
      port map (I=>comms_gpi1(3),
                O=>gpi3);
   
   XLXI_33 : OBUF
      port map (I=>comms_gpo1(0),
                O=>gpo0);
   
   XLXI_34 : OBUF
      port map (I=>comms_gpo1(1),
                O=>gpo1);
   
   XLXI_35 : OBUF
      port map (I=>comms_gpo1(2),
                O=>gpo2);
   
   XLXI_36 : OBUF
      port map (I=>comms_gpo1(3),
                O=>gpo3);
   
   XLXI_37 : OBUF
      port map (I=>enable,
                O=>enableBit);
   
   XLXI_38 : OBUF
      port map (I=>result0,
                O=>add0);
   
   XLXI_39 : OBUF
      port map (I=>result1,
                O=>add1);
   
   XLXI_40 : OBUF
      port map (I=>result2,
                O=>add2);
   
   XLXI_41 : OBUF
      port map (I=>result3,
                O=>add3);
   
end BEHAVIORAL;


