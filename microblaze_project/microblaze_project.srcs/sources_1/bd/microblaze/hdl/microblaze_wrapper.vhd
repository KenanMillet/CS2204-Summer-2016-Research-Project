--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
--Date        : Fri Jul 15 18:17:21 2016
--Host        : HP-25 running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target microblaze_wrapper.bd
--Design      : microblaze_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_wrapper is
  port (
    CLOCK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    USB_IN : in STD_LOGIC;
    USB_OUT : out STD_LOGIC
  );
end microblaze_wrapper;

architecture STRUCTURE of microblaze_wrapper is
  component microblaze is
  port (
    USB_IN : in STD_LOGIC;
    USB_OUT : out STD_LOGIC;
    CLOCK : in STD_LOGIC;
    RESET : in STD_LOGIC
  );
  end component microblaze;
begin
microblaze_i: component microblaze
     port map (
      CLOCK => CLOCK,
      RESET => RESET,
      USB_IN => USB_IN,
      USB_OUT => USB_OUT
    );
end STRUCTURE;
