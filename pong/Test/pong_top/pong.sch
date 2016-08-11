<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLOCK" />
        <signal name="usb_in" />
        <signal name="usb_out" />
        <signal name="comms_clk" />
        <signal name="comms_uart_tx" />
        <signal name="comms_uart_rx" />
        <signal name="XLXN_16" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41(1:0)" />
        <signal name="XLXN_42(3:0)" />
        <signal name="gpo1(9:0)" />
        <signal name="gpo1(19:10)" />
        <signal name="gpo3(9:0)" />
        <signal name="gpo3(19:10)" />
        <signal name="gpi1(3:0)" />
        <signal name="gpo1(31:0)" />
        <signal name="gpo2(31:0)" />
        <signal name="gpi1(31:0)" />
        <signal name="gpo3(31:0)" />
        <signal name="gpi1(0)" />
        <signal name="gpi1(1)" />
        <signal name="gpi1(2)" />
        <signal name="gpi1(3)" />
        <signal name="led0" />
        <signal name="led1" />
        <signal name="led2" />
        <signal name="led3" />
        <port polarity="Input" name="CLOCK" />
        <port polarity="Input" name="usb_in" />
        <port polarity="Output" name="usb_out" />
        <port polarity="Output" name="led0" />
        <port polarity="Output" name="led1" />
        <port polarity="Output" name="led2" />
        <port polarity="Output" name="led3" />
        <blockdef name="communication">
            <timestamp>2016-8-11T17:43:49</timestamp>
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
        <blockdef name="ibufg">
            <timestamp>2008-10-8T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
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
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="player">
            <timestamp>2016-8-10T15:48:57</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <rect width="64" x="320" y="-492" height="24" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="ibufg" name="XLXI_2">
            <blockpin signalname="CLOCK" name="I" />
            <blockpin signalname="comms_clk" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_3">
            <blockpin signalname="usb_in" name="I" />
            <blockpin signalname="comms_uart_rx" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_4">
            <blockpin signalname="comms_uart_tx" name="I" />
            <blockpin signalname="usb_out" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_8">
            <blockpin signalname="XLXN_16" name="G" />
        </block>
        <block symbolname="player" name="XLXI_19">
            <blockpin signalname="comms_clk" name="clk" />
            <blockpin signalname="XLXN_40" name="reset" />
            <blockpin signalname="XLXN_41(1:0)" name="ctrlSel(1:0)" />
            <blockpin signalname="XLXN_42(3:0)" name="extIn(3:0)" />
            <blockpin signalname="gpo1(9:0)" name="ballX(9:0)" />
            <blockpin signalname="gpo1(19:10)" name="ballY(9:0)" />
            <blockpin signalname="gpo3(9:0)" name="paddleX(9:0)" />
            <blockpin signalname="gpo3(19:10)" name="paddleY(9:0)" />
            <blockpin signalname="gpi1(3:0)" name="extOut(3:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_21">
            <blockpin signalname="XLXN_40" name="P" />
        </block>
        <block symbolname="constant" name="XLXI_22">
            <attr value="2" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_41(1:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_23">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_42(3:0)" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_24">
            <blockpin signalname="gpi1(0)" name="I" />
            <blockpin signalname="led0" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_25">
            <blockpin signalname="gpi1(1)" name="I" />
            <blockpin signalname="led1" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_26">
            <blockpin signalname="gpi1(2)" name="I" />
            <blockpin signalname="led2" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_27">
            <blockpin signalname="gpi1(3)" name="I" />
            <blockpin signalname="led3" name="O" />
        </block>
        <block symbolname="communication" name="comms">
            <blockpin signalname="comms_clk" name="clk" />
            <blockpin signalname="XLXN_16" name="reset" />
            <blockpin signalname="comms_uart_tx" name="uart_tx" />
            <blockpin signalname="comms_uart_rx" name="uart_rx" />
            <blockpin name="uart_interrupt" />
            <blockpin signalname="gpi1(31:0)" name="gpi1(31:0)" />
            <blockpin name="gpi2(31:0)" />
            <blockpin name="gpi3(31:0)" />
            <blockpin name="gpi4(31:0)" />
            <blockpin signalname="gpo1(31:0)" name="gpo1(31:0)" />
            <blockpin signalname="gpo2(31:0)" name="gpo2(31:0)" />
            <blockpin signalname="gpo3(31:0)" name="gpo3(31:0)" />
            <blockpin name="gpo4(31:0)" />
            <blockpin name="intc_irq" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="CLOCK">
            <wire x2="2448" y1="160" y2="160" x1="2320" />
        </branch>
        <branch name="usb_in">
            <wire x2="2448" y1="320" y2="320" x1="2320" />
        </branch>
        <instance x="2448" y="192" name="XLXI_2" orien="R0" />
        <instance x="2448" y="352" name="XLXI_3" orien="R0" />
        <branch name="usb_out">
            <wire x2="2800" y1="240" y2="240" x1="2672" />
        </branch>
        <instance x="2448" y="272" name="XLXI_4" orien="R0" />
        <branch name="comms_clk">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2800" y="160" type="branch" />
            <wire x2="2800" y1="160" y2="160" x1="2672" />
        </branch>
        <branch name="comms_uart_tx">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="240" type="branch" />
            <wire x2="2448" y1="240" y2="240" x1="2320" />
        </branch>
        <branch name="comms_uart_rx">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2800" y="320" type="branch" />
            <wire x2="2800" y1="320" y2="320" x1="2672" />
        </branch>
        <branch name="comms_clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1872" y="464" type="branch" />
            <wire x2="1888" y1="464" y2="464" x1="1872" />
            <wire x2="2096" y1="464" y2="464" x1="1888" />
            <wire x2="2096" y1="464" y2="528" x1="2096" />
            <wire x2="2176" y1="528" y2="528" x1="2096" />
        </branch>
        <branch name="comms_uart_rx">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1872" y="640" type="branch" />
            <wire x2="1888" y1="640" y2="640" x1="1872" />
            <wire x2="2096" y1="640" y2="640" x1="1888" />
            <wire x2="2176" y1="592" y2="592" x1="2096" />
            <wire x2="2096" y1="592" y2="640" x1="2096" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1952" y1="560" y2="560" x1="1936" />
            <wire x2="2176" y1="560" y2="560" x1="1952" />
        </branch>
        <instance x="1808" y="496" name="XLXI_8" orien="R90" />
        <branch name="comms_uart_tx">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3104" y="528" type="branch" />
            <wire x2="3088" y1="528" y2="528" x1="2944" />
            <wire x2="3104" y1="528" y2="528" x1="3088" />
        </branch>
        <iomarker fontsize="28" x="2320" y="160" name="CLOCK" orien="R180" />
        <iomarker fontsize="28" x="2320" y="320" name="usb_in" orien="R180" />
        <iomarker fontsize="28" x="2800" y="240" name="usb_out" orien="R0" />
        <instance x="1312" y="1392" name="XLXI_19" orien="R0">
        </instance>
        <branch name="comms_clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="912" type="branch" />
            <wire x2="1312" y1="912" y2="912" x1="1040" />
        </branch>
        <branch name="XLXN_40">
            <wire x2="1312" y1="976" y2="976" x1="1232" />
        </branch>
        <branch name="XLXN_41(1:0)">
            <wire x2="1072" y1="992" y2="992" x1="1040" />
            <wire x2="1072" y1="992" y2="1040" x1="1072" />
            <wire x2="1312" y1="1040" y2="1040" x1="1072" />
        </branch>
        <instance x="1232" y="1040" name="XLXI_21" orien="R270" />
        <branch name="XLXN_42(3:0)">
            <wire x2="1072" y1="1088" y2="1088" x1="1040" />
            <wire x2="1072" y1="1088" y2="1104" x1="1072" />
            <wire x2="1312" y1="1104" y2="1104" x1="1072" />
        </branch>
        <instance x="896" y="960" name="XLXI_22" orien="R0">
        </instance>
        <instance x="896" y="1056" name="XLXI_23" orien="R0">
        </instance>
        <branch name="gpo1(9:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="1168" type="branch" />
            <wire x2="1312" y1="1168" y2="1168" x1="1040" />
        </branch>
        <branch name="gpo1(19:10)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="1232" type="branch" />
            <wire x2="1312" y1="1232" y2="1232" x1="1040" />
        </branch>
        <branch name="gpo3(9:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="1296" type="branch" />
            <wire x2="1312" y1="1296" y2="1296" x1="1040" />
        </branch>
        <branch name="gpo3(19:10)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="1360" type="branch" />
            <wire x2="1312" y1="1360" y2="1360" x1="1040" />
        </branch>
        <branch name="gpi1(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1872" y="912" type="branch" />
            <wire x2="1872" y1="912" y2="912" x1="1696" />
        </branch>
        <branch name="gpo1(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3184" y="1232" type="branch" />
            <wire x2="3168" y1="1232" y2="1232" x1="2944" />
            <wire x2="3184" y1="1232" y2="1232" x1="3168" />
        </branch>
        <branch name="gpo2(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3184" y="1264" type="branch" />
            <wire x2="3168" y1="1264" y2="1264" x1="2944" />
            <wire x2="3184" y1="1264" y2="1264" x1="3168" />
        </branch>
        <branch name="gpi1(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="752" type="branch" />
            <wire x2="1904" y1="752" y2="752" x1="1888" />
            <wire x2="2176" y1="752" y2="752" x1="1904" />
        </branch>
        <branch name="gpo3(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3184" y="1296" type="branch" />
            <wire x2="3168" y1="1296" y2="1296" x1="2944" />
            <wire x2="3184" y1="1296" y2="1296" x1="3168" />
        </branch>
        <instance x="1360" y="1872" name="XLXI_24" orien="R0" />
        <instance x="1360" y="1952" name="XLXI_25" orien="R0" />
        <instance x="1360" y="2032" name="XLXI_26" orien="R0" />
        <instance x="1360" y="2112" name="XLXI_27" orien="R0" />
        <branch name="gpi1(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="1840" type="branch" />
            <wire x2="1264" y1="1840" y2="1840" x1="1200" />
            <wire x2="1360" y1="1840" y2="1840" x1="1264" />
        </branch>
        <branch name="gpi1(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="1920" type="branch" />
            <wire x2="1360" y1="1920" y2="1920" x1="1200" />
        </branch>
        <branch name="gpi1(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="2000" type="branch" />
            <wire x2="1360" y1="2000" y2="2000" x1="1200" />
        </branch>
        <branch name="gpi1(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="2080" type="branch" />
            <wire x2="1360" y1="2080" y2="2080" x1="1200" />
        </branch>
        <branch name="led0">
            <wire x2="1760" y1="1840" y2="1840" x1="1584" />
        </branch>
        <branch name="led1">
            <wire x2="1760" y1="1920" y2="1920" x1="1584" />
        </branch>
        <branch name="led2">
            <wire x2="1760" y1="2000" y2="2000" x1="1584" />
        </branch>
        <branch name="led3">
            <wire x2="1760" y1="2080" y2="2080" x1="1584" />
        </branch>
        <iomarker fontsize="28" x="1760" y="1840" name="led0" orien="R0" />
        <iomarker fontsize="28" x="1760" y="1920" name="led1" orien="R0" />
        <iomarker fontsize="28" x="1760" y="2000" name="led2" orien="R0" />
        <iomarker fontsize="28" x="1760" y="2080" name="led3" orien="R0" />
        <instance x="2176" y="448" name="comms" orien="R0">
        </instance>
    </sheet>
</drawing>