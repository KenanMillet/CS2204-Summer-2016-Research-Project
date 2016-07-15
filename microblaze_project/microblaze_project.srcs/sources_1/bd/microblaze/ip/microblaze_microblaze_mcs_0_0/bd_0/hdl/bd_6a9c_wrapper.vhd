--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
--Date        : Fri Jul 15 16:47:13 2016
--Host        : HP-25 running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target bd_6a9c_wrapper.bd
--Design      : bd_6a9c_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_6a9c_wrapper is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    UART_rxd : in STD_LOGIC;
    UART_txd : out STD_LOGIC;
    gpio1_tri_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio1_tri_o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end bd_6a9c_wrapper;

architecture STRUCTURE of bd_6a9c_wrapper is
  component bd_6a9c is
  port (
    UART_rxd : in STD_LOGIC;
    UART_txd : out STD_LOGIC;
    GPIO1_tri_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    GPIO1_tri_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC
  );
  end component bd_6a9c;
begin
bd_6a9c_i: component bd_6a9c
     port map (
      Clk => Clk,
      GPIO1_tri_i(31 downto 0) => gpio1_tri_i(31 downto 0),
      GPIO1_tri_o(31 downto 0) => gpio1_tri_o(31 downto 0),
      Reset => Reset,
      UART_rxd => UART_rxd,
      UART_txd => UART_txd
    );
end STRUCTURE;
