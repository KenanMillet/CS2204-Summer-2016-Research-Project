<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <blockdef name="communication">
            <timestamp>2016-7-25T15:7:12</timestamp>
            <rect width="704" x="32" y="32" height="1696" />
            <line x2="32" y1="80" y2="80" x1="0" />
            <line x2="32" y1="112" y2="112" x1="0" />
            <line x2="736" y1="80" y2="80" x1="768" />
            <line x2="32" y1="144" y2="144" x1="0" />
            <line x2="736" y1="752" y2="752" x1="768" />
            <line x2="32" y1="304" y2="304" style="linewidth:W" x1="0" />
            <line x2="32" y1="336" y2="336" style="linewidth:W" x1="0" />
            <line x2="32" y1="368" y2="368" style="linewidth:W" x1="0" />
            <line x2="32" y1="400" y2="400" style="linewidth:W" x1="0" />
            <line x2="736" y1="784" y2="784" style="linewidth:W" x1="768" />
            <line x2="736" y1="816" y2="816" style="linewidth:W" x1="768" />
            <line x2="736" y1="848" y2="848" style="linewidth:W" x1="768" />
            <line x2="736" y1="880" y2="880" style="linewidth:W" x1="768" />
            <line x2="736" y1="912" y2="912" x1="768" />
        </blockdef>
        <blockdef name="pong_game">
            <timestamp>2016-7-25T15:11:47</timestamp>
            <rect width="704" x="32" y="32" height="1696" />
            <line x2="32" y1="80" y2="80" x1="0" />
            <line x2="32" y1="112" y2="112" x1="0" />
            <line x2="32" y1="304" y2="304" style="linewidth:W" x1="0" />
            <line x2="32" y1="336" y2="336" style="linewidth:W" x1="0" />
            <line x2="32" y1="368" y2="368" style="linewidth:W" x1="0" />
            <line x2="32" y1="400" y2="400" style="linewidth:W" x1="0" />
            <line x2="736" y1="784" y2="784" style="linewidth:W" x1="768" />
            <line x2="736" y1="816" y2="816" style="linewidth:W" x1="768" />
            <line x2="736" y1="848" y2="848" style="linewidth:W" x1="768" />
            <line x2="736" y1="880" y2="880" style="linewidth:W" x1="768" />
        </blockdef>
        <block symbolname="communication" name="comms">
            <blockpin name="clk" />
            <blockpin name="reset" />
            <blockpin name="uart_tx" />
            <blockpin name="uart_rx" />
            <blockpin name="uart_interrupt" />
            <blockpin name="gpi1(31:0)" />
            <blockpin name="gpi2(31:0)" />
            <blockpin name="gpi3(31:0)" />
            <blockpin name="gpi4(31:0)" />
            <blockpin name="gpo1(31:0)" />
            <blockpin name="gpo2(31:0)" />
            <blockpin name="gpo3(31:0)" />
            <blockpin name="gpo4(31:0)" />
            <blockpin name="intc_irq" />
        </block>
        <block symbolname="pong_game" name="XLXI_2">
            <blockpin name="clk" />
            <blockpin name="reset" />
            <blockpin name="gpi1(31:0)" />
            <blockpin name="gpi2(31:0)" />
            <blockpin name="gpi3(31:0)" />
            <blockpin name="gpi4(31:0)" />
            <blockpin name="gpo1(31:0)" />
            <blockpin name="gpo2(31:0)" />
            <blockpin name="gpo3(31:0)" />
            <blockpin name="gpo4(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2400" y="320" name="comms" orien="R0">
        </instance>
        <instance x="336" y="320" name="XLXI_2" orien="R0">
        </instance>
    </sheet>
</drawing>