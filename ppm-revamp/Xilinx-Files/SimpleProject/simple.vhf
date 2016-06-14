--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : simple.vhf
-- /___/   /\     Timestamp : 06/14/2016 12:53:33
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/ppm-revamp/Xilinx-Files/SimpleProject/ipcore_dir -intstyle ise -family artix7 -flat -suppress -vhdl C:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/ppm-revamp/Xilinx-Files/SimpleProject/simple.vhf -w C:/Users/acb610/Documents/GitHub/CS2204-Summer-2016-Research-Project/ppm-revamp/Xilinx-Files/SimpleProject/simple.sch
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
   port ( OBClk   : in    std_logic; 
          usb_in  : in    std_logic; 
          usb_out : out   std_logic);
end simple;

architecture BEHAVIORAL of simple is
   attribute HU_SET      : string ;
   attribute BOX_TYPE    : string ;
   attribute IOSTANDARD  : string ;
   attribute CAPACITANCE : string ;
   signal CLOCK      : std_logic;
   signal uCont_gpi1 : std_logic_vector (31 downto 0);
   signal uCont_gpo1 : std_logic_vector (31 downto 0);
   signal XLXN_14    : std_logic;
   signal XLXN_15    : std_logic;
   signal XLXN_45    : std_logic;
   signal XLXN_46    : std_logic;
   signal XLXN_47    : std_logic;
   signal XLXN_48    : std_logic;
   signal XLXN_49    : std_logic;
   signal XLXN_56    : std_logic;
   signal XLXN_61    : std_logic;
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
   
   component IBUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute IOSTANDARD of IBUF : component is "DEFAULT";
   attribute CAPACITANCE of IBUF : component is "DONT_CARE";
   attribute BOX_TYPE of IBUF : component is "BLACK_BOX";
   
   component BUFG
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUFG : component is "BLACK_BOX";
   
   component RisingEdge_MUSER_simple
      port ( D : in    std_logic; 
             C : in    std_logic; 
             Q : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_1";
begin
   mcs_0 : communication
      port map (clk=>CLOCK,
                gpi1(31 downto 0)=>uCont_gpi1(31 downto 0),
                reset=>XLXN_49,
                uart_rx=>usb_in,
                gpo1(31 downto 0)=>uCont_gpo1(31 downto 0),
                intc_irq=>open,
                uart_interrupt=>open,
                uart_tx=>usb_out);
   
   XLXI_1 : FD4CE_HXILINX_simple
      port map (C=>CLOCK,
                CE=>XLXN_61,
                CLR=>XLXN_48,
                D0=>XLXN_14,
                D1=>XLXN_15,
                D2=>XLXN_45,
                D3=>XLXN_46,
                Q0=>uCont_gpi1(0),
                Q1=>uCont_gpi1(1),
                Q2=>uCont_gpi1(2),
                Q3=>uCont_gpi1(3));
   
   XLXI_2 : ADD4_HXILINX_simple
      port map (A0=>uCont_gpi1(0),
                A1=>uCont_gpi1(1),
                A2=>uCont_gpi1(2),
                A3=>uCont_gpi1(3),
                B0=>uCont_gpo1(0),
                B1=>uCont_gpo1(1),
                B2=>uCont_gpo1(2),
                B3=>uCont_gpo1(3),
                CI=>XLXN_47,
                CO=>open,
                OFL=>open,
                S0=>XLXN_14,
                S1=>XLXN_15,
                S2=>XLXN_45,
                S3=>XLXN_46);
   
   XLXI_11 : GND
      port map (G=>XLXN_47);
   
   XLXI_12 : GND
      port map (G=>XLXN_48);
   
   XLXI_15 : GND
      port map (G=>XLXN_49);
   
   XLXI_17 : IBUF
      port map (I=>OBClk,
                O=>XLXN_56);
   
   XLXI_18 : BUFG
      port map (I=>XLXN_56,
                O=>CLOCK);
   
   XLXI_22 : RisingEdge_MUSER_simple
      port map (C=>CLOCK,
                D=>uCont_gpo1(4),
                Q=>XLXN_61);
   
end BEHAVIORAL;


