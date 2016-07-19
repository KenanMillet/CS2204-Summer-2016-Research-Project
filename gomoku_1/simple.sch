<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLOCK" />
        <signal name="OBClk" />
        <signal name="XLXN_49" />
        <signal name="usb_in" />
        <signal name="usb_out" />
        <signal name="gpi(31:0)" />
        <signal name="gpo(31:0)" />
        <signal name="gpi(0)" />
        <signal name="gpi(4:1)" />
        <signal name="gpi(8:5)" />
        <signal name="gpo(8:5)" />
        <signal name="gpo(4:1)" />
        <signal name="gpo(0)" />
        <port polarity="Input" name="OBClk" />
        <port polarity="Input" name="usb_in" />
        <port polarity="Output" name="usb_out" />
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="communication">
            <timestamp>2016-7-14T23:7:30</timestamp>
            <rect width="704" x="32" y="32" height="1696" />
            <line x2="32" y1="80" y2="80" x1="0" />
            <line x2="32" y1="112" y2="112" x1="0" />
            <line x2="736" y1="80" y2="80" x1="768" />
            <line x2="32" y1="144" y2="144" x1="0" />
            <line x2="736" y1="752" y2="752" x1="768" />
            <line x2="32" y1="304" y2="304" style="linewidth:W" x1="0" />
            <line x2="736" y1="784" y2="784" style="linewidth:W" x1="768" />
            <line x2="736" y1="912" y2="912" x1="768" />
        </blockdef>
        <blockdef name="ibufg">
            <timestamp>2008-10-8T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="Gomoku_Verilog">
            <timestamp>2016-7-19T20:35:30</timestamp>
            <rect width="416" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="544" y1="-224" y2="-224" x1="480" />
            <line x2="544" y1="-160" y2="-160" x1="480" />
            <rect width="64" x="480" y="-172" height="24" />
            <line x2="544" y1="-96" y2="-96" x1="480" />
            <rect width="64" x="480" y="-108" height="24" />
        </blockdef>
        <block symbolname="ibufg" name="XLXI_23">
            <blockpin signalname="OBClk" name="I" />
            <blockpin signalname="CLOCK" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_15">
            <blockpin signalname="XLXN_49" name="G" />
        </block>
        <block symbolname="communication" name="mcs_0">
            <blockpin signalname="CLOCK" name="clk" />
            <blockpin signalname="XLXN_49" name="reset" />
            <blockpin signalname="usb_out" name="uart_tx" />
            <blockpin signalname="usb_in" name="uart_rx" />
            <blockpin name="uart_interrupt" />
            <blockpin signalname="gpi(31:0)" name="gpi1(31:0)" />
            <blockpin signalname="gpo(31:0)" name="gpo1(31:0)" />
            <blockpin name="intc_irq" />
        </block>
        <block symbolname="Gomoku_Verilog" name="XLXI_26">
            <blockpin signalname="CLOCK" name="Clk" />
            <blockpin signalname="gpo(0)" name="PlayerIn" />
            <blockpin signalname="gpo(4:1)" name="RowIn(3:0)" />
            <blockpin signalname="gpo(8:5)" name="ColIn(3:0)" />
            <blockpin signalname="gpi(0)" name="PlayerOut" />
            <blockpin signalname="gpi(4:1)" name="RowOut(3:0)" />
            <blockpin signalname="gpi(8:5)" name="ColOut(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <text style="fontsize:64;fontname:Arial" x="484" y="160">Main Functionality</text>
        <line x2="1712" y1="1824" y2="1824" x1="36" />
        <text style="fontsize:64;fontname:Arial" x="776" y="1904">Buffers</text>
        <instance x="640" y="2256" name="XLXI_23" orien="R0" />
        <branch name="CLOCK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="992" y="2224" type="branch" />
            <wire x2="992" y1="2224" y2="2224" x1="864" />
            <wire x2="1040" y1="2224" y2="2224" x1="992" />
        </branch>
        <branch name="OBClk">
            <wire x2="624" y1="2224" y2="2224" x1="512" />
            <wire x2="640" y1="2224" y2="2224" x1="624" />
        </branch>
        <iomarker fontsize="28" x="512" y="2224" name="OBClk" orien="R180" />
        <text style="fontsize:64;fontname:Arial" x="2048" y="160">Communication (MicroBlaze)</text>
        <branch name="XLXN_49">
            <wire x2="2016" y1="368" y2="368" x1="2000" />
            <wire x2="2032" y1="368" y2="368" x1="2016" />
        </branch>
        <instance x="1872" y="304" name="XLXI_15" orien="R90" />
        <branch name="CLOCK">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1920" y="256" type="branch" />
            <wire x2="1920" y1="256" y2="256" x1="1904" />
            <wire x2="2016" y1="256" y2="256" x1="1920" />
            <wire x2="2016" y1="256" y2="336" x1="2016" />
            <wire x2="2032" y1="336" y2="336" x1="2016" />
        </branch>
        <branch name="usb_in">
            <wire x2="1920" y1="464" y2="464" x1="1904" />
            <wire x2="2016" y1="464" y2="464" x1="1920" />
            <wire x2="2016" y1="400" y2="464" x1="2016" />
            <wire x2="2032" y1="400" y2="400" x1="2016" />
        </branch>
        <instance x="2032" y="256" name="mcs_0" orien="R0">
        </instance>
        <branch name="usb_out">
            <wire x2="2928" y1="336" y2="336" x1="2800" />
            <wire x2="2944" y1="336" y2="336" x1="2928" />
        </branch>
        <iomarker fontsize="28" x="1904" y="464" name="usb_in" orien="R180" />
        <iomarker fontsize="28" x="2944" y="336" name="usb_out" orien="R0" />
        <branch name="gpi(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="560" type="branch" />
            <wire x2="2032" y1="560" y2="560" x1="1840" />
        </branch>
        <branch name="gpo(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2960" y="1040" type="branch" />
            <wire x2="2960" y1="1040" y2="1040" x1="2800" />
        </branch>
        <branch name="gpi(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1296" y="944" type="branch" />
            <wire x2="1296" y1="944" y2="944" x1="1120" />
        </branch>
        <branch name="gpi(4:1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1296" y="1008" type="branch" />
            <wire x2="1296" y1="1008" y2="1008" x1="1120" />
        </branch>
        <branch name="gpi(8:5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1296" y="1072" type="branch" />
            <wire x2="1296" y1="1072" y2="1072" x1="1120" />
        </branch>
        <branch name="gpo(8:5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="416" y="1136" type="branch" />
            <wire x2="576" y1="1136" y2="1136" x1="416" />
        </branch>
        <branch name="gpo(4:1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="416" y="1072" type="branch" />
            <wire x2="576" y1="1072" y2="1072" x1="416" />
        </branch>
        <branch name="gpo(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="416" y="1008" type="branch" />
            <wire x2="576" y1="1008" y2="1008" x1="416" />
        </branch>
        <branch name="CLOCK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="416" y="944" type="branch" />
            <wire x2="576" y1="944" y2="944" x1="416" />
        </branch>
        <instance x="576" y="1168" name="XLXI_26" orien="R0">
        </instance>
    </sheet>
</drawing>