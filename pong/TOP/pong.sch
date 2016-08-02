<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="gpo1(31:0)" />
        <signal name="gpi1(31:0)" />
        <signal name="gpi2(31:0)" />
        <signal name="XLXN_15" />
        <signal name="clk" />
        <signal name="CLOCK" />
        <signal name="usb_in" />
        <signal name="usb_out" />
        <signal name="uart_tx" />
        <signal name="uart_rx" />
        <signal name="XLXN_16(3:0)" />
        <signal name="XLXN_17(3:0)" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_25" />
        <signal name="XLXN_27" />
        <signal name="XLXN_32(19:0)" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34(19:0)" />
        <signal name="XLXN_39(9:0)" />
        <signal name="XLXN_40(9:0)" />
        <signal name="XLXN_41(9:0)" />
        <signal name="XLXN_42(9:0)" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44(9:0)" />
        <signal name="XLXN_45(9:0)" />
        <signal name="XLXN_46(9:0)" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48(9:0)" />
        <signal name="XLXN_51(9:0)" />
        <signal name="XLXN_52(9:0)" />
        <signal name="XLXN_53(9:0)" />
        <signal name="XLXN_54(9:0)" />
        <signal name="XLXN_55" />
        <signal name="XLXN_56(9:0)" />
        <signal name="XLXN_58(9:0)" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61(9:0)" />
        <signal name="XLXN_63(9:0)" />
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
        <blockdef name="player">
            <timestamp>2016-8-1T20:36:4</timestamp>
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
        <blockdef name="tick">
            <timestamp>2016-8-1T20:39:39</timestamp>
            <rect width="304" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <rect width="64" x="368" y="-108" height="24" />
        </blockdef>
        <blockdef name="controlUnit">
            <timestamp>2016-8-1T20:46:23</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="extInterface">
            <timestamp>2016-8-1T20:49:24</timestamp>
            <rect width="320" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
        </blockdef>
        <blockdef name="paddle">
            <timestamp>2016-8-1T20:53:19</timestamp>
            <rect width="336" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="464" y1="-416" y2="-416" x1="400" />
            <rect width="64" x="400" y="-428" height="24" />
            <line x2="464" y1="-352" y2="-352" x1="400" />
            <rect width="64" x="400" y="-364" height="24" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
            <rect width="64" x="400" y="-300" height="24" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <rect width="64" x="400" y="-236" height="24" />
        </blockdef>
        <blockdef name="physics">
            <timestamp>2016-8-1T21:0:3</timestamp>
            <rect width="320" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
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
            <line x2="448" y1="-480" y2="-480" x1="384" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
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
        <block symbolname="tick" name="XLXI_9">
            <blockpin name="clk" />
            <blockpin signalname="XLXN_22" name="enable" />
            <blockpin signalname="XLXN_20" name="reset" />
            <blockpin signalname="XLXN_33" name="tickOut" />
            <blockpin signalname="XLXN_34(19:0)" name="elapseTime(19:0)" />
        </block>
        <block symbolname="controlUnit" name="XLXI_10">
            <blockpin name="scored" />
            <blockpin name="start" />
            <blockpin name="reset" />
            <blockpin name="win" />
            <blockpin name="clk" />
            <blockpin signalname="XLXN_17(3:0)" name="player1Dec(3:0)" />
            <blockpin signalname="XLXN_16(3:0)" name="player2Dec(3:0)" />
            <blockpin signalname="XLXN_22" name="tickEnable" />
            <blockpin signalname="XLXN_20" name="tickReset" />
            <blockpin signalname="XLXN_34(19:0)" name="playerReset" />
            <blockpin signalname="XLXN_19" name="ballReset" />
            <blockpin signalname="XLXN_23" name="extIntReset" />
        </block>
        <block symbolname="extInterface" name="XLXI_11">
            <blockpin signalname="XLXN_23" name="reset" />
            <blockpin name="clk" />
            <blockpin name="p1decision(3:0)" />
            <blockpin name="p2decision(3:0)" />
            <blockpin name="extIn1(3:0)" />
            <blockpin name="extIn2(3:0)" />
            <blockpin signalname="XLXN_17(3:0)" name="player1Dec" />
            <blockpin signalname="XLXN_16(3:0)" name="player2Dec" />
            <blockpin name="extOut1" />
            <blockpin name="extOut2" />
        </block>
        <block symbolname="paddle" name="XLXI_12">
            <blockpin signalname="XLXN_33" name="tickIn" />
            <blockpin name="collTop" />
            <blockpin name="collBottom" />
            <blockpin name="collLeft" />
            <blockpin name="collRight" />
            <blockpin signalname="XLXN_34(19:0)" name="elapseTime(19:0)" />
            <blockpin name="extIn(3:0)" />
            <blockpin name="paddleWidth(7:0)" />
            <blockpin name="paddleHeight(7:0)" />
            <blockpin signalname="XLXN_51(9:0)" name="paddlePosX(9:0)" />
            <blockpin signalname="XLXN_53(9:0)" name="paddlePosY(9:0)" />
        </block>
        <block symbolname="physics" name="XLXI_13">
            <blockpin name="aTop(9:0)" />
            <blockpin name="aBottom(9:0)" />
            <blockpin name="aLeft(9:0)" />
            <blockpin name="aRight(9:0)" />
            <blockpin name="bTop(9:0)" />
            <blockpin name="bBottom(9:0)" />
            <blockpin name="bLeft(9:0)" />
            <blockpin name="bRight(9:0)" />
            <blockpin name="aCollTop" />
            <blockpin name="aCollBottom" />
            <blockpin name="aCollLeft" />
            <blockpin name="aCollRight" />
            <blockpin name="bCollTop" />
            <blockpin name="bCollBottom" />
            <blockpin name="bCollLeft" />
            <blockpin name="bCollRight" />
        </block>
        <block symbolname="ball" name="XLXI_3">
            <blockpin signalname="XLXN_33" name="tickIn" />
            <blockpin name="collBottom" />
            <blockpin name="collLeft" />
            <blockpin name="collRight" />
            <blockpin signalname="XLXN_19" name="reset" />
            <blockpin signalname="XLXN_34(19:0)" name="elapseTime(19:0)" />
            <blockpin name="ballWidth(7:0)" />
            <blockpin name="ballHeight(7:0)" />
            <blockpin signalname="XLXN_39(9:0)" name="ballPosX(9:0)" />
            <blockpin signalname="XLXN_40(9:0)" name="ballPosY(9:0)" />
            <blockpin name="collTop" />
        </block>
        <block symbolname="physics" name="XLXI_19">
            <blockpin name="aTop(9:0)" />
            <blockpin name="aBottom(9:0)" />
            <blockpin name="aLeft(9:0)" />
            <blockpin name="aRight(9:0)" />
            <blockpin name="bTop(9:0)" />
            <blockpin name="bBottom(9:0)" />
            <blockpin name="bLeft(9:0)" />
            <blockpin name="bRight(9:0)" />
            <blockpin name="aCollTop" />
            <blockpin name="aCollBottom" />
            <blockpin name="aCollLeft" />
            <blockpin name="aCollRight" />
            <blockpin name="bCollTop" />
            <blockpin name="bCollBottom" />
            <blockpin name="bCollLeft" />
            <blockpin name="bCollRight" />
        </block>
        <block symbolname="player" name="XLXI_8">
            <blockpin name="clk" />
            <blockpin signalname="XLXN_34(19:0)" name="reset" />
            <blockpin name="ctrlSel(1:0)" />
            <blockpin name="extIn(3:0)" />
            <blockpin signalname="XLXN_39(9:0)" name="ballPosX(9:0)" />
            <blockpin signalname="XLXN_40(9:0)" name="ballPosY(9:0)" />
            <blockpin signalname="XLXN_51(9:0)" name="paddlePosX(9:0)" />
            <blockpin signalname="XLXN_53(9:0)" name="paddlePosY(9:0)" />
            <blockpin name="extOut(3:0)" />
        </block>
        <block symbolname="player" name="XLXI_18">
            <blockpin name="clk" />
            <blockpin signalname="XLXN_34(19:0)" name="reset" />
            <blockpin name="ctrlSel(1:0)" />
            <blockpin name="extIn(3:0)" />
            <blockpin signalname="XLXN_39(9:0)" name="ballPosX(9:0)" />
            <blockpin signalname="XLXN_40(9:0)" name="ballPosY(9:0)" />
            <blockpin signalname="XLXN_51(9:0)" name="paddlePosX(9:0)" />
            <blockpin signalname="XLXN_53(9:0)" name="paddlePosY(9:0)" />
            <blockpin name="extOut(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2400" y="320" name="comms" orien="R0">
        </instance>
        <instance x="336" y="320" name="XLXI_2" orien="R0">
        </instance>
        <branch name="gpo1(31:0)">
            <wire x2="3248" y1="1104" y2="1104" x1="3168" />
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
    <sheet sheetnum="2" width="3520" height="2720">
        <instance x="1232" y="1216" name="XLXI_10" orien="R0">
        </instance>
        <instance x="576" y="1152" name="XLXI_11" orien="R0">
        </instance>
        <branch name="XLXN_16(3:0)">
            <wire x2="1120" y1="800" y2="800" x1="1024" />
            <wire x2="1120" y1="800" y2="1184" x1="1120" />
            <wire x2="1232" y1="1184" y2="1184" x1="1120" />
        </branch>
        <branch name="XLXN_17(3:0)">
            <wire x2="1104" y1="928" y2="928" x1="1024" />
            <wire x2="1104" y1="928" y2="1120" x1="1104" />
            <wire x2="1232" y1="1120" y2="1120" x1="1104" />
        </branch>
        <branch name="XLXN_34(19:0)">
            <wire x2="1632" y1="928" y2="928" x1="1616" />
            <wire x2="1632" y1="912" y2="928" x1="1632" />
            <wire x2="2400" y1="912" y2="912" x1="1632" />
            <wire x2="2400" y1="912" y2="944" x1="2400" />
            <wire x2="2592" y1="944" y2="944" x1="2400" />
            <wire x2="2496" y1="912" y2="912" x1="2400" />
            <wire x2="2496" y1="912" y2="1584" x1="2496" />
            <wire x2="2592" y1="1584" y2="1584" x1="2496" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="1744" y1="864" y2="864" x1="1616" />
            <wire x2="1744" y1="768" y2="864" x1="1744" />
            <wire x2="1872" y1="768" y2="768" x1="1744" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="512" y1="688" y2="800" x1="512" />
            <wire x2="576" y1="800" y2="800" x1="512" />
            <wire x2="1712" y1="688" y2="688" x1="512" />
            <wire x2="1712" y1="688" y2="1056" x1="1712" />
            <wire x2="1712" y1="1056" y2="1056" x1="1616" />
        </branch>
        <instance x="1904" y="1440" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_19">
            <wire x2="1632" y1="992" y2="992" x1="1616" />
            <wire x2="1632" y1="992" y2="1344" x1="1632" />
            <wire x2="1904" y1="1344" y2="1344" x1="1632" />
        </branch>
        <instance x="1888" y="2000" name="XLXI_12" orien="R0">
        </instance>
        <branch name="XLXN_33">
            <wire x2="2368" y1="864" y2="864" x1="1872" />
            <wire x2="1872" y1="864" y2="1024" x1="1872" />
            <wire x2="1872" y1="1024" y2="1584" x1="1872" />
            <wire x2="1888" y1="1584" y2="1584" x1="1872" />
            <wire x2="1904" y1="1024" y2="1024" x1="1872" />
            <wire x2="2368" y1="640" y2="640" x1="2304" />
            <wire x2="2368" y1="640" y2="864" x1="2368" />
        </branch>
        <branch name="XLXN_34(19:0)">
            <wire x2="2352" y1="832" y2="832" x1="1808" />
            <wire x2="1808" y1="832" y2="1408" x1="1808" />
            <wire x2="1904" y1="1408" y2="1408" x1="1808" />
            <wire x2="1808" y1="1408" y2="1968" x1="1808" />
            <wire x2="1888" y1="1968" y2="1968" x1="1808" />
            <wire x2="2352" y1="704" y2="704" x1="2304" />
            <wire x2="2352" y1="704" y2="832" x1="2352" />
        </branch>
        <instance x="1872" y="800" name="XLXI_9" orien="R0">
        </instance>
        <branch name="XLXN_22">
            <wire x2="1632" y1="800" y2="800" x1="1616" />
            <wire x2="1872" y1="704" y2="704" x1="1632" />
            <wire x2="1632" y1="704" y2="800" x1="1632" />
        </branch>
        <instance x="1200" y="2528" name="XLXI_13" orien="R0">
        </instance>
        <instance x="1184" y="1888" name="XLXI_19" orien="R0">
        </instance>
        <instance x="2592" y="1360" name="XLXI_8" orien="R0">
        </instance>
        <instance x="2592" y="2000" name="XLXI_18" orien="R0">
        </instance>
        <branch name="XLXN_53(9:0)">
            <wire x2="2368" y1="1776" y2="1776" x1="2352" />
            <wire x2="2368" y1="1776" y2="1968" x1="2368" />
            <wire x2="2592" y1="1968" y2="1968" x1="2368" />
            <wire x2="2592" y1="1328" y2="1328" x1="2368" />
            <wire x2="2368" y1="1328" y2="1776" x1="2368" />
        </branch>
        <branch name="XLXN_39(9:0)">
            <wire x2="2376" y1="1152" y2="1152" x1="2336" />
            <wire x2="2384" y1="1152" y2="1152" x1="2376" />
            <wire x2="2384" y1="1152" y2="1776" x1="2384" />
            <wire x2="2592" y1="1776" y2="1776" x1="2384" />
            <wire x2="2592" y1="1136" y2="1136" x1="2384" />
            <wire x2="2384" y1="1136" y2="1152" x1="2384" />
        </branch>
        <branch name="XLXN_51(9:0)">
            <wire x2="2416" y1="1712" y2="1712" x1="2352" />
            <wire x2="2416" y1="1712" y2="1904" x1="2416" />
            <wire x2="2592" y1="1904" y2="1904" x1="2416" />
            <wire x2="2592" y1="1264" y2="1264" x1="2416" />
            <wire x2="2416" y1="1264" y2="1712" x1="2416" />
        </branch>
        <branch name="XLXN_40(9:0)">
            <wire x2="2432" y1="1216" y2="1216" x1="2336" />
            <wire x2="2432" y1="1216" y2="1840" x1="2432" />
            <wire x2="2592" y1="1840" y2="1840" x1="2432" />
            <wire x2="2592" y1="1200" y2="1200" x1="2432" />
            <wire x2="2432" y1="1200" y2="1216" x1="2432" />
        </branch>
    </sheet>
</drawing>