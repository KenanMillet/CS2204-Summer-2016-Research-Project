--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
--Date        : Mon Jul 18 14:54:52 2016
--Host        : HP-25 running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target microblaze.bd
--Design      : microblaze
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze is
  port (
    CLOCK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    USB_IN : in STD_LOGIC;
    USB_OUT : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of microblaze : entity is "microblaze,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=microblaze,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=3,da_board_cnt=6,da_mb_cnt=1,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of microblaze : entity is "microblaze.hwdef";
end microblaze;

architecture STRUCTURE of microblaze is
  component microblaze_microblaze_mcs_0_0 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    UART_rxd : in STD_LOGIC;
    UART_txd : out STD_LOGIC;
    GPIO1_tri_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    GPIO1_tri_o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component microblaze_microblaze_mcs_0_0;
  signal CLOCK_1 : STD_LOGIC;
  signal RESET_1 : STD_LOGIC;
  signal USB_IN_1 : STD_LOGIC;
  signal microblaze_mcs_0_GPIO1_tri_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_mcs_0_UART_txd : STD_LOGIC;
begin
  CLOCK_1 <= CLOCK;
  RESET_1 <= RESET;
  USB_IN_1 <= USB_IN;
  USB_OUT <= microblaze_mcs_0_UART_txd;
microblaze_mcs_0: component microblaze_microblaze_mcs_0_0
     port map (
      Clk => CLOCK_1,
      GPIO1_tri_i(31 downto 0) => microblaze_mcs_0_GPIO1_tri_o(31 downto 0),
      GPIO1_tri_o(31 downto 0) => microblaze_mcs_0_GPIO1_tri_o(31 downto 0),
      Reset => RESET_1,
      UART_rxd => USB_IN_1,
      UART_txd => microblaze_mcs_0_UART_txd
    );
end STRUCTURE;
