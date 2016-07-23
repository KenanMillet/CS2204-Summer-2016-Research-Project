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
        <signal name="gpi(31:0)" />
        <signal name="UartTx" />
        <signal name="USB_OUT" />
        <signal name="USB_IN" />
        <signal name="UartRx" />
        <signal name="gpo(31:0)" />
        <signal name="gpo(0)" />
        <signal name="gpo(4:1)" />
        <signal name="gpo(8:5)" />
        <signal name="gpo(9)" />
        <signal name="gpi(4:1)" />
        <signal name="gpi(8:5)" />
        <signal name="gpi(9)" />
        <signal name="gpi(0)" />
        <signal name="gpi(10)" />
        <signal name="gpo(10)" />
        <port polarity="Input" name="OBClk" />
        <port polarity="Input" name="UartTx" />
        <port polarity="Output" name="UartRx" />
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
        <blockdef name="Gomoku_Verilog">
            <timestamp>2016-7-20T21:12:18</timestamp>
            <rect width="416" x="64" y="-380" height="380" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="544" y1="-224" y2="-224" x1="480" />
            <line x2="544" y1="-160" y2="-160" x1="480" />
            <rect width="64" x="480" y="-172" height="24" />
            <line x2="544" y1="-96" y2="-96" x1="480" />
            <rect width="64" x="480" y="-108" height="24" />
            <line x2="544" y1="-32" y2="-32" x1="480" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="80" y1="-276" y2="-288" x1="64" />
            <line x2="64" y1="-288" y2="-300" x1="80" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="544" y1="-288" y2="-288" x1="480" />
        </blockdef>
        <block symbolname="gnd" name="XLXI_15">
            <blockpin signalname="XLXN_49" name="G" />
        </block>
        <block symbolname="communication" name="mcs_0">
            <blockpin signalname="CLOCK" name="clk" />
            <blockpin signalname="XLXN_49" name="reset" />
            <blockpin signalname="USB_OUT" name="uart_tx" />
            <blockpin signalname="USB_IN" name="uart_rx" />
            <blockpin name="uart_interrupt" />
            <blockpin signalname="gpi(31:0)" name="gpi1(31:0)" />
            <blockpin signalname="gpo(31:0)" name="gpo1(31:0)" />
            <blockpin name="intc_irq" />
        </block>
        <block symbolname="ibuf" name="XLXI_26">
            <blockpin signalname="UartTx" name="I" />
            <blockpin signalname="USB_IN" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_27">
            <blockpin signalname="USB_OUT" name="I" />
            <blockpin signalname="UartRx" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_28">
            <blockpin signalname="OBClk" name="I" />
            <blockpin signalname="CLOCK" name="O" />
        </block>
        <block symbolname="Gomoku_Verilog" name="XLXI_29">
            <blockpin signalname="gpo(0)" name="playerIn" />
            <blockpin signalname="gpo(4:1)" name="rowIn(3:0)" />
            <blockpin signalname="gpo(8:5)" name="colIn(3:0)" />
            <blockpin signalname="gpo(9)" name="winIn" />
            <blockpin signalname="gpi(0)" name="playerOut" />
            <blockpin signalname="gpi(4:1)" name="rowOut(3:0)" />
            <blockpin signalname="gpi(8:5)" name="colOut(3:0)" />
            <blockpin signalname="gpi(9)" name="winOut" />
            <blockpin signalname="CLOCK" name="clk" />
            <blockpin signalname="gpo(10)" name="start" />
            <blockpin signalname="gpi(10)" name="confirm" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <text style="fontsize:64;fontname:Arial" x="484" y="160">Main Functionality</text>
        <line x2="1712" y1="1824" y2="1824" x1="36" />
        <branch name="CLOCK">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="2224" type="branch" />
            <wire x2="1040" y1="2224" y2="2224" x1="864" />
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
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1904" y="256" type="branch" />
            <wire x2="2016" y1="256" y2="256" x1="1904" />
            <wire x2="2016" y1="256" y2="336" x1="2016" />
            <wire x2="2032" y1="336" y2="336" x1="2016" />
        </branch>
        <instance x="2032" y="256" name="mcs_0" orien="R0">
        </instance>
        <branch name="gpi(31:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1840" y="560" type="branch" />
            <wire x2="2032" y1="560" y2="560" x1="1840" />
        </branch>
        <instance x="640" y="2352" name="XLXI_26" orien="R0" />
        <instance x="640" y="2432" name="XLXI_27" orien="R0" />
        <branch name="UartTx">
            <wire x2="624" y1="2320" y2="2320" x1="512" />
            <wire x2="640" y1="2320" y2="2320" x1="624" />
        </branch>
        <branch name="USB_OUT">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="2400" type="branch" />
            <wire x2="640" y1="2400" y2="2400" x1="512" />
        </branch>
        <iomarker fontsize="28" x="512" y="2320" name="UartTx" orien="R180" />
        <branch name="USB_IN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="2320" type="branch" />
            <wire x2="1040" y1="2320" y2="2320" x1="864" />
        </branch>
        <branch name="UartRx">
            <wire x2="880" y1="2400" y2="2400" x1="864" />
            <wire x2="1040" y1="2400" y2="2400" x1="880" />
        </branch>
        <iomarker fontsize="28" x="1040" y="2400" name="UartRx" orien="R0" />
        <branch name="USB_IN">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1904" y="480" type="branch" />
            <wire x2="2016" y1="480" y2="480" x1="1904" />
            <wire x2="2032" y1="400" y2="400" x1="2016" />
            <wire x2="2016" y1="400" y2="480" x1="2016" />
        </branch>
        <branch name="USB_OUT">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2880" y="336" type="branch" />
            <wire x2="2880" y1="336" y2="336" x1="2800" />
        </branch>
        <instance x="640" y="2256" name="XLXI_28" orien="R0" />
        <branch name="gpo(31:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3040" y="1040" type="branch" />
            <wire x2="3040" y1="1040" y2="1040" x1="2800" />
        </branch>
        <branch name="CLOCK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="704" type="branch" />
            <wire x2="496" y1="704" y2="704" x1="480" />
            <wire x2="576" y1="704" y2="704" x1="496" />
            <wire x2="592" y1="704" y2="704" x1="576" />
        </branch>
        <branch name="gpo(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="768" type="branch" />
            <wire x2="496" y1="768" y2="768" x1="480" />
            <wire x2="576" y1="768" y2="768" x1="496" />
            <wire x2="592" y1="768" y2="768" x1="576" />
        </branch>
        <branch name="gpo(4:1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="832" type="branch" />
            <wire x2="496" y1="832" y2="832" x1="480" />
            <wire x2="576" y1="832" y2="832" x1="496" />
            <wire x2="592" y1="832" y2="832" x1="576" />
        </branch>
        <branch name="gpo(8:5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="896" type="branch" />
            <wire x2="496" y1="896" y2="896" x1="480" />
            <wire x2="576" y1="896" y2="896" x1="496" />
            <wire x2="592" y1="896" y2="896" x1="576" />
        </branch>
        <branch name="gpi(4:1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="832" type="branch" />
            <wire x2="1264" y1="832" y2="832" x1="1136" />
            <wire x2="1280" y1="832" y2="832" x1="1264" />
        </branch>
        <branch name="gpi(8:5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="896" type="branch" />
            <wire x2="1264" y1="896" y2="896" x1="1136" />
            <wire x2="1280" y1="896" y2="896" x1="1264" />
        </branch>
        <branch name="gpi(9)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="960" type="branch" />
            <wire x2="1264" y1="960" y2="960" x1="1136" />
            <wire x2="1280" y1="960" y2="960" x1="1264" />
        </branch>
        <branch name="gpi(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="768" type="branch" />
            <wire x2="1264" y1="768" y2="768" x1="1136" />
            <wire x2="1280" y1="768" y2="768" x1="1264" />
        </branch>
        <branch name="gpo(9)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="960" type="branch" />
            <wire x2="496" y1="960" y2="960" x1="480" />
            <wire x2="576" y1="960" y2="960" x1="496" />
            <wire x2="592" y1="960" y2="960" x1="576" />
        </branch>
        <branch name="gpi(10)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="704" type="branch" />
            <wire x2="1280" y1="704" y2="704" x1="1136" />
        </branch>
        <branch name="gpo(10)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="640" type="branch" />
            <wire x2="576" y1="640" y2="640" x1="480" />
            <wire x2="592" y1="640" y2="640" x1="576" />
        </branch>
        <instance x="592" y="992" name="XLXI_29" orien="R0">
        </instance>
        <text style="fontsize:64;fontname:Arial" x="776" y="1904">Buffers</text>
    </sheet>
</drawing>