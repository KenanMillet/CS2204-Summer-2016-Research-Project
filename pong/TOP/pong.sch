<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="gpo1(0)" />
        <signal name="gpo1(1)" />
        <signal name="gpo1(2)" />
        <signal name="gpo1(3)" />
        <signal name="gpo1(4)" />
        <signal name="gpo1(5)" />
        <signal name="gpo1(25:6)" />
        <signal name="gpo1(31:0)" />
        <signal name="gpi1(7:0)" />
        <signal name="gpi1(15:8)" />
        <signal name="gpi1(25:16)" />
        <signal name="gpi2(9:0)" />
        <signal name="gpi1(31:0)" />
        <signal name="gpi2(31:0)" />
        <signal name="XLXN_15" />
        <signal name="clk" />
        <signal name="CLOCK" />
        <signal name="usb_in" />
        <signal name="usb_out" />
        <signal name="uart_tx" />
        <signal name="uart_rx" />
        <port polarity="Input" name="CLOCK" />
        <port polarity="Input" name="usb_in" />
        <port polarity="Output" name="usb_out" />
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
        <blockdef name="ball">
            <timestamp>2016-8-1T19:40:43</timestamp>
            <rect width="304" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="432" y1="-416" y2="-416" x1="368" />
            <rect width="64" x="368" y="-428" height="24" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <rect width="64" x="368" y="-364" height="24" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <rect width="64" x="368" y="-300" height="24" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <rect width="64" x="368" y="-236" height="24" />
            <line x2="64" y1="-352" y2="-352" x1="0" />
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
        <block symbolname="communication" name="comms">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_15" name="reset" />
            <blockpin signalname="uart_tx" name="uart_tx" />
            <blockpin signalname="uart_rx" name="uart_rx" />
            <blockpin name="uart_interrupt" />
            <blockpin signalname="gpi1(31:0)" name="gpi1(31:0)" />
            <blockpin signalname="gpi2(31:0)" name="gpi2(31:0)" />
            <blockpin name="gpi3(31:0)" />
            <blockpin name="gpi4(31:0)" />
            <blockpin signalname="gpo1(31:0)" name="gpo1(31:0)" />
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
        <block symbolname="ball" name="XLXI_3">
            <blockpin signalname="gpo1(0)" name="tickIn" />
            <blockpin signalname="gpo1(2)" name="collBottom" />
            <blockpin signalname="gpo1(3)" name="collLeft" />
            <blockpin signalname="gpo1(4)" name="collRight" />
            <blockpin signalname="gpo1(5)" name="reset" />
            <blockpin signalname="gpo1(25:6)" name="elapseTime(19:0)" />
            <blockpin signalname="gpi1(7:0)" name="ballWidth(7:0)" />
            <blockpin signalname="gpi1(15:8)" name="ballHeight(7:0)" />
            <blockpin signalname="gpi1(25:16)" name="ballPosX(9:0)" />
            <blockpin signalname="gpi2(9:0)" name="ballPosY(9:0)" />
            <blockpin signalname="gpo1(1)" name="collTop" />
        </block>
        <block symbolname="gnd" name="XLXI_4">
            <blockpin signalname="XLXN_15" name="G" />
        </block>
        <block symbolname="ibufg" name="XLXI_5">
            <blockpin signalname="CLOCK" name="I" />
            <blockpin signalname="clk" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_6">
            <blockpin signalname="usb_in" name="I" />
            <blockpin signalname="uart_rx" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_7">
            <blockpin signalname="uart_tx" name="I" />
            <blockpin signalname="usb_out" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2400" y="320" name="comms" orien="R0">
        </instance>
        <instance x="336" y="320" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1760" y="1024" name="XLXI_3" orien="R0">
        </instance>
        <branch name="gpo1(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="608" type="branch" />
            <wire x2="1744" y1="608" y2="608" x1="1680" />
            <wire x2="1760" y1="608" y2="608" x1="1744" />
        </branch>
        <branch name="gpo1(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="672" type="branch" />
            <wire x2="1760" y1="672" y2="672" x1="1680" />
        </branch>
        <branch name="gpo1(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="736" type="branch" />
            <wire x2="1760" y1="736" y2="736" x1="1680" />
        </branch>
        <branch name="gpo1(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="800" type="branch" />
            <wire x2="1760" y1="800" y2="800" x1="1680" />
        </branch>
        <branch name="gpo1(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="864" type="branch" />
            <wire x2="1760" y1="864" y2="864" x1="1680" />
        </branch>
        <branch name="gpo1(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="928" type="branch" />
            <wire x2="1760" y1="928" y2="928" x1="1680" />
        </branch>
        <branch name="gpo1(25:6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="992" type="branch" />
            <wire x2="1760" y1="992" y2="992" x1="1680" />
        </branch>
        <branch name="gpo1(31:0)">
            <wire x2="3248" y1="1104" y2="1104" x1="3168" />
        </branch>
        <branch name="gpi1(7:0)">
            <wire x2="2272" y1="608" y2="608" x1="2192" />
        </branch>
        <branch name="gpi1(15:8)">
            <wire x2="2272" y1="672" y2="672" x1="2192" />
        </branch>
        <branch name="gpi1(25:16)">
            <wire x2="2272" y1="736" y2="736" x1="2192" />
        </branch>
        <branch name="gpi2(9:0)">
            <wire x2="2256" y1="800" y2="800" x1="2192" />
            <wire x2="2272" y1="800" y2="800" x1="2256" />
        </branch>
        <branch name="gpi1(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="624" type="branch" />
            <wire x2="2368" y1="624" y2="624" x1="2352" />
            <wire x2="2400" y1="624" y2="624" x1="2368" />
        </branch>
        <branch name="gpi2(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="656" type="branch" />
            <wire x2="2368" y1="656" y2="656" x1="2352" />
            <wire x2="2400" y1="656" y2="656" x1="2368" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="2400" y1="432" y2="432" x1="2368" />
        </branch>
        <instance x="2240" y="368" name="XLXI_4" orien="R90" />
        <instance x="1952" y="256" name="XLXI_5" orien="R0" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="224" type="branch" />
            <wire x2="2240" y1="224" y2="224" x1="2176" />
        </branch>
        <branch name="CLOCK">
            <wire x2="1952" y1="224" y2="224" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="1888" y="224" name="CLOCK" orien="R180" />
        <instance x="1952" y="368" name="XLXI_6" orien="R0" />
        <branch name="usb_in">
            <wire x2="1952" y1="336" y2="336" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="1888" y="336" name="usb_in" orien="R180" />
        <instance x="2896" y="240" name="XLXI_7" orien="R0" />
        <branch name="usb_out">
            <wire x2="3184" y1="208" y2="208" x1="3120" />
        </branch>
        <branch name="uart_tx">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2816" y="208" type="branch" />
            <wire x2="2896" y1="208" y2="208" x1="2816" />
        </branch>
        <iomarker fontsize="28" x="3184" y="208" name="usb_out" orien="R0" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="400" type="branch" />
            <wire x2="2400" y1="400" y2="400" x1="2352" />
        </branch>
        <branch name="uart_rx">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="336" type="branch" />
            <wire x2="2224" y1="336" y2="336" x1="2176" />
        </branch>
        <branch name="uart_rx">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="464" type="branch" />
            <wire x2="2400" y1="464" y2="464" x1="2352" />
        </branch>
        <branch name="uart_tx">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3216" y="400" type="branch" />
            <wire x2="3216" y1="400" y2="400" x1="3168" />
        </branch>
    </sheet>
</drawing>