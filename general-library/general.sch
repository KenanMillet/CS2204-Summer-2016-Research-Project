<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="OBClk" />
        <signal name="CLOCK" />
        <signal name="USB_OUT" />
        <signal name="USB_IN" />
        <signal name="Uart_Rx" />
        <signal name="Uart_Tx" />
        <port polarity="Input" name="OBClk" />
        <port polarity="Input" name="Uart_Rx" />
        <port polarity="Output" name="Uart_Tx" />
        <blockdef name="io">
            <timestamp>2016-6-17T21:1:27</timestamp>
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
        <blockdef name="ibuf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="obuf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
        </blockdef>
        <block symbolname="io" name="XLXI_2">
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
        <block symbolname="ibuf" name="XLXI_3">
            <blockpin signalname="OBClk" name="I" />
            <blockpin signalname="CLOCK" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_5">
            <blockpin signalname="USB_OUT" name="I" />
            <blockpin signalname="Uart_Tx" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_6">
            <blockpin signalname="Uart_Rx" name="I" />
            <blockpin signalname="USB_IN" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="OBClk">
            <wire x2="390" y1="160" y2="160" x1="240" />
            <wire x2="400" y1="160" y2="160" x1="390" />
        </branch>
        <iomarker fontsize="28" x="240" y="160" name="OBClk" orien="R180" />
        <instance x="400" y="192" name="XLXI_3" orien="R0" />
        <branch name="CLOCK">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="160" type="branch" />
            <wire x2="880" y1="160" y2="160" x1="624" />
        </branch>
        <instance x="400" y="352" name="XLXI_5" orien="R0" />
        <branch name="USB_OUT">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="320" type="branch" />
            <wire x2="400" y1="320" y2="320" x1="240" />
        </branch>
        <branch name="USB_IN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="240" type="branch" />
            <wire x2="654" y1="240" y2="240" x1="624" />
            <wire x2="880" y1="240" y2="240" x1="654" />
        </branch>
        <instance x="400" y="272" name="XLXI_6" orien="R0" />
        <branch name="Uart_Rx">
            <wire x2="400" y1="240" y2="240" x1="240" />
        </branch>
        <iomarker fontsize="28" x="240" y="240" name="Uart_Rx" orien="R180" />
        <branch name="Uart_Tx">
            <wire x2="880" y1="320" y2="320" x1="624" />
        </branch>
        <iomarker fontsize="28" x="880" y="320" name="Uart_Tx" orien="R0" />
    </sheet>
    <sheet sheetnum="2" width="3520" height="2720">
        <instance x="1232" y="400" name="XLXI_2" orien="R0">
        </instance>
    </sheet>
</drawing>