--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
--Date        : Fri Jul 15 18:17:21 2016
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
  attribute CORE_GENERATION_INFO of microblaze : entity is "microblaze,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=microblaze,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=7,numReposBlks=7,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=3,da_board_cnt=6,da_mb_cnt=1,synth_mode=Global}";
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
  component microblaze_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component microblaze_xlslice_0_0;
  component microblaze_xlslice_1_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component microblaze_xlslice_1_1;
  component microblaze_xlslice_1_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component microblaze_xlslice_1_2;
  component microblaze_xlslice_1_3 is
  port (
    Din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component microblaze_xlslice_1_3;
  component microblaze_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    In2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component microblaze_xlconcat_0_0;
  component microblaze_top_0_0 is
  port (
    iLastPlayer : in STD_LOGIC;
    iXLoc : in STD_LOGIC_VECTOR ( 3 downto 0 );
    iYLoc : in STD_LOGIC_VECTOR ( 3 downto 0 );
    oLastPlayer : out STD_LOGIC;
    oXLoc : out STD_LOGIC_VECTOR ( 3 downto 0 );
    oYLoc : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component microblaze_top_0_0;
  signal CLOCK_1 : STD_LOGIC;
  signal RESET_1 : STD_LOGIC;
  signal USB_IN_1 : STD_LOGIC;
  signal microblaze_mcs_0_GPIO1_tri_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_mcs_0_UART_txd : STD_LOGIC;
  signal top_0_oLastPlayer : STD_LOGIC;
  signal top_0_oXLoc : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal top_0_oYLoc : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_2_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlslice_3_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_microblaze_mcs_0_GPIO1_tri_i_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 9 );
begin
  CLOCK_1 <= CLOCK;
  RESET_1 <= RESET;
  USB_IN_1 <= USB_IN;
  USB_OUT <= microblaze_mcs_0_UART_txd;
microblaze_mcs_0: component microblaze_microblaze_mcs_0_0
     port map (
      Clk => CLOCK_1,
      GPIO1_tri_i(31 downto 9) => NLW_microblaze_mcs_0_GPIO1_tri_i_UNCONNECTED(31 downto 9),
      GPIO1_tri_i(8 downto 0) => xlconcat_0_dout(8 downto 0),
      GPIO1_tri_o(31 downto 0) => microblaze_mcs_0_GPIO1_tri_o(31 downto 0),
      Reset => RESET_1,
      UART_rxd => USB_IN_1,
      UART_txd => microblaze_mcs_0_UART_txd
    );
top_0: component microblaze_top_0_0
     port map (
      iLastPlayer => xlslice_1_Dout(0),
      iXLoc(3 downto 0) => xlslice_2_Dout(3 downto 0),
      iYLoc(3 downto 0) => xlslice_3_Dout(3 downto 0),
      oLastPlayer => top_0_oLastPlayer,
      oXLoc(3 downto 0) => top_0_oXLoc(3 downto 0),
      oYLoc(3 downto 0) => top_0_oYLoc(3 downto 0)
    );
xlconcat_0: component microblaze_xlconcat_0_0
     port map (
      In0(0) => top_0_oLastPlayer,
      In1(3 downto 0) => top_0_oXLoc(3 downto 0),
      In2(3 downto 0) => top_0_oYLoc(3 downto 0),
      dout(8 downto 0) => xlconcat_0_dout(8 downto 0)
    );
xlslice_0: component microblaze_xlslice_0_0
     port map (
      Din(31 downto 0) => microblaze_mcs_0_GPIO1_tri_o(31 downto 0),
      Dout(8 downto 0) => xlslice_0_Dout(8 downto 0)
    );
xlslice_1: component microblaze_xlslice_1_1
     port map (
      Din(8 downto 0) => xlslice_0_Dout(8 downto 0),
      Dout(0) => xlslice_1_Dout(0)
    );
xlslice_2: component microblaze_xlslice_1_2
     port map (
      Din(8 downto 0) => xlslice_0_Dout(8 downto 0),
      Dout(3 downto 0) => xlslice_2_Dout(3 downto 0)
    );
xlslice_3: component microblaze_xlslice_1_3
     port map (
      Din(8 downto 0) => xlslice_0_Dout(8 downto 0),
      Dout(3 downto 0) => xlslice_3_Dout(3 downto 0)
    );
end STRUCTURE;
