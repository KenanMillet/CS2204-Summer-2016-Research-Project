<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLOCK" />
        <signal name="XLXN_4" />
        <signal name="usb_in" />
        <signal name="comms_in(31:0)" />
        <signal name="usb_out" />
        <signal name="comms_out(31:0)" />
        <signal name="OBClk" />
        <port polarity="Input" name="usb_in" />
        <port polarity="Output" name="usb_out" />
        <port polarity="Input" name="OBClk" />
        <blockdef name="ibufg">
            <timestamp>2008-10-8T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="mb_core">
            <timestamp>2016-6-20T21:16:16</timestamp>
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
        <block symbolname="gnd" name="XLXI_3">
            <blockpin signalname="XLXN_4" name="G" />
        </block>
        <block symbolname="mb_core" name="mcs_0">
            <blockpin signalname="CLOCK" name="clk" />
            <blockpin signalname="XLXN_4" name="reset" />
            <blockpin signalname="usb_out" name="uart_tx" />
            <blockpin signalname="usb_in" name="uart_rx" />
            <blockpin name="uart_interrupt" />
            <blockpin signalname="comms_in(31:0)" name="gpi1(31:0)" />
            <blockpin signalname="comms_out(31:0)" name="gpo1(31:0)" />
            <blockpin name="intc_irq" />
        </block>
        <block symbolname="ibufg" name="XLXI_2">
            <blockpin signalname="OBClk" name="I" />
            <blockpin signalname="CLOCK" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="CLOCK">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="464" type="branch" />
            <wire x2="1072" y1="464" y2="512" x1="1072" />
            <wire x2="1136" y1="512" y2="512" x1="1072" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1136" y1="544" y2="544" x1="1024" />
        </branch>
        <instance x="896" y="480" name="XLXI_3" orien="R90" />
        <branch name="usb_in">
            <wire x2="1072" y1="608" y2="608" x1="1056" />
            <wire x2="1136" y1="576" y2="576" x1="1072" />
            <wire x2="1072" y1="576" y2="608" x1="1072" />
        </branch>
        <iomarker fontsize="28" x="1056" y="608" name="usb_in" orien="R180" />
        <branch name="comms_in(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="736" type="branch" />
            <wire x2="1136" y1="736" y2="736" x1="1008" />
        </branch>
        <branch name="usb_out">
            <wire x2="1968" y1="512" y2="512" x1="1904" />
        </branch>
        <iomarker fontsize="28" x="1968" y="512" name="usb_out" orien="R0" />
        <branch name="comms_out(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="1216" type="branch" />
            <wire x2="2016" y1="1216" y2="1216" x1="1904" />
        </branch>
        <instance x="1136" y="432" name="mcs_0" orien="R0">
        </instance>
        <instance x="720" y="960" name="XLXI_2" orien="R0" />
        <branch name="OBClk">
            <wire x2="720" y1="928" y2="928" x1="608" />
        </branch>
        <branch name="CLOCK">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="928" type="branch" />
            <wire x2="1040" y1="928" y2="928" x1="944" />
        </branch>
        <iomarker fontsize="28" x="608" y="928" name="OBClk" orien="R180" />
    </sheet>
</drawing>