<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="playerIn" />
        <signal name="rowIn(3:0)" />
        <signal name="colIn(3:0)" />
        <signal name="winIn" />
        <signal name="clk" />
        <signal name="XLXN_3" />
        <signal name="player(1:0)" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="invalidplay" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_13" />
        <signal name="XLXN_18(3:0)" />
        <signal name="XLXN_19(3:0)" />
        <signal name="playerOut" />
        <signal name="rowOut(3:0)" />
        <signal name="colOut(3:0)" />
        <signal name="winOut" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35(3:0)" />
        <signal name="XLXN_36(3:0)" />
        <signal name="XLXN_38" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="start" />
        <signal name="confirm" />
        <port polarity="Input" name="playerIn" />
        <port polarity="Input" name="rowIn(3:0)" />
        <port polarity="Input" name="colIn(3:0)" />
        <port polarity="Input" name="winIn" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="playerOut" />
        <port polarity="Output" name="rowOut(3:0)" />
        <port polarity="Output" name="colOut(3:0)" />
        <port polarity="Output" name="winOut" />
        <port polarity="Input" name="start" />
        <port polarity="Output" name="confirm" />
        <blockdef name="Gomoku_ControlUnit_V">
            <timestamp>2016-7-21T19:43:2</timestamp>
            <rect width="288" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="56" y1="-160" y2="-160" x1="0" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <circle r="4" cx="60" cy="-160" />
            <line x2="416" y1="-416" y2="-416" x1="352" />
            <line x2="416" y1="-352" y2="-352" x1="352" />
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-172" height="24" />
            <line x2="80" y1="-404" y2="-416" x1="64" />
            <line x2="64" y1="-416" y2="-428" x1="80" />
        </blockdef>
        <blockdef name="Gomoku_IO_V">
            <timestamp>2016-7-21T19:46:7</timestamp>
            <rect width="416" x="64" y="-576" height="576" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
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
            <line x2="544" y1="-544" y2="-544" x1="480" />
            <rect width="64" x="480" y="-556" height="24" />
            <line x2="544" y1="-480" y2="-480" x1="480" />
            <rect width="64" x="480" y="-492" height="24" />
            <line x2="544" y1="-416" y2="-416" x1="480" />
            <rect width="64" x="480" y="-428" height="24" />
            <line x2="544" y1="-352" y2="-352" x1="480" />
            <rect width="64" x="480" y="-364" height="24" />
            <line x2="544" y1="-288" y2="-288" x1="480" />
            <line x2="544" y1="-224" y2="-224" x1="480" />
            <line x2="544" y1="-160" y2="-160" x1="480" />
            <line x2="480" y1="-96" y2="-96" x1="544" />
        </blockdef>
        <blockdef name="Gomoku_MachinePlayer_V">
            <timestamp>2016-7-20T15:7:15</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
        </blockdef>
        <blockdef name="Gomoku_PlayCheck_V">
            <timestamp>2016-7-20T15:5:9</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
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
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="Gomoku_ControlUnit_V" name="XLXI_9">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_48" name="p1played" />
            <blockpin signalname="XLXN_3" name="p2played" />
            <blockpin signalname="XLXN_48" name="p2canplay" />
            <blockpin signalname="XLXN_10" name="reset" />
            <blockpin signalname="start" name="start" />
            <blockpin signalname="XLXN_8" name="valid" />
            <blockpin signalname="XLXN_13" name="check" />
            <blockpin signalname="XLXN_5" name="p2sturn" />
            <blockpin signalname="XLXN_6" name="p1sturn" />
            <blockpin signalname="invalidplay" name="confirm" />
            <blockpin signalname="player(1:0)" name="player(1:0)" />
        </block>
        <block symbolname="Gomoku_MachinePlayer_V" name="XLXI_11">
            <blockpin signalname="XLXN_5" name="myturn" />
            <blockpin signalname="XLXN_8" name="valid" />
            <blockpin signalname="XLXN_3" name="played" />
            <blockpin signalname="XLXN_18(3:0)" name="myrow(3:0)" />
            <blockpin signalname="XLXN_19(3:0)" name="mycol(3:0)" />
        </block>
        <block symbolname="Gomoku_PlayCheck_V" name="XLXI_12">
            <blockpin signalname="XLXN_13" name="check" />
            <blockpin signalname="player(1:0)" name="player(1:0)" />
            <blockpin signalname="XLXN_35(3:0)" name="p1row(3:0)" />
            <blockpin signalname="XLXN_36(3:0)" name="p1col(3:0)" />
            <blockpin signalname="XLXN_18(3:0)" name="p2row(3:0)" />
            <blockpin signalname="XLXN_19(3:0)" name="p2col(3:0)" />
            <blockpin signalname="XLXN_8" name="valid" />
            <blockpin signalname="winOut" name="win" />
        </block>
        <block symbolname="inv" name="XLXI_14">
            <blockpin signalname="XLXN_9" name="I" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_16">
            <blockpin signalname="XLXN_34" name="I" />
            <blockpin signalname="playerOut" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_25">
            <blockpin signalname="playerIn" name="I" />
            <blockpin signalname="XLXN_38" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_26">
            <blockpin signalname="winOut" name="I0" />
            <blockpin signalname="winIn" name="I1" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_27">
            <blockpin signalname="XLXN_47" name="I0" />
            <blockpin signalname="XLXN_46" name="I1" />
            <blockpin signalname="XLXN_48" name="O" />
        </block>
        <block symbolname="Gomoku_IO_V" name="XLXI_28">
            <blockpin signalname="XLXN_6" name="p1sturn" />
            <blockpin signalname="XLXN_38" name="USBp2canplay" />
            <blockpin signalname="XLXN_38" name="USBp1played" />
            <blockpin signalname="XLXN_18(3:0)" name="p2row(3:0)" />
            <blockpin signalname="XLXN_19(3:0)" name="p2col(3:0)" />
            <blockpin signalname="rowIn(3:0)" name="USBp1row(3:0)" />
            <blockpin signalname="colIn(3:0)" name="USBp1col(3:0)" />
            <blockpin signalname="player(1:0)" name="player(1:0)" />
            <blockpin signalname="XLXN_35(3:0)" name="p1row(3:0)" />
            <blockpin signalname="XLXN_36(3:0)" name="p1col(3:0)" />
            <blockpin signalname="rowOut(3:0)" name="USBp2row(3:0)" />
            <blockpin signalname="colOut(3:0)" name="USBp2col(3:0)" />
            <blockpin signalname="XLXN_34" name="USBp1sturn" />
            <blockpin signalname="XLXN_46" name="p2canplay" />
            <blockpin signalname="XLXN_47" name="p1played" />
            <blockpin signalname="confirm" name="confirmOut" />
            <blockpin signalname="invalidplay" name="confirmIn" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="playerIn">
            <wire x2="784" y1="640" y2="640" x1="320" />
            <wire x2="784" y1="640" y2="848" x1="784" />
            <wire x2="1696" y1="848" y2="848" x1="784" />
            <wire x2="1760" y1="672" y2="672" x1="1696" />
            <wire x2="1696" y1="672" y2="848" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="320" y="640" name="playerIn" orien="R180" />
        <branch name="rowIn(3:0)">
            <wire x2="784" y1="992" y2="992" x1="320" />
            <wire x2="784" y1="864" y2="992" x1="784" />
            <wire x2="2048" y1="864" y2="864" x1="784" />
        </branch>
        <iomarker fontsize="28" x="320" y="992" name="rowIn(3:0)" orien="R180" />
        <branch name="colIn(3:0)">
            <wire x2="912" y1="1344" y2="1344" x1="320" />
            <wire x2="912" y1="928" y2="1344" x1="912" />
            <wire x2="2048" y1="928" y2="928" x1="912" />
        </branch>
        <iomarker fontsize="28" x="320" y="1344" name="colIn(3:0)" orien="R180" />
        <branch name="winIn">
            <wire x2="784" y1="1696" y2="1696" x1="320" />
            <wire x2="784" y1="1264" y2="1696" x1="784" />
        </branch>
        <iomarker fontsize="28" x="320" y="1696" name="winIn" orien="R180" />
        <branch name="clk">
            <wire x2="1264" y1="384" y2="384" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="384" name="clk" orien="R180" />
        <instance x="896" y="672" name="XLXI_14" orien="R0" />
        <branch name="XLXN_10">
            <wire x2="1264" y1="640" y2="640" x1="1120" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1216" y1="944" y2="1680" x1="1216" />
            <wire x2="1312" y1="1680" y2="1680" x1="1216" />
            <wire x2="1744" y1="944" y2="944" x1="1216" />
            <wire x2="1744" y1="448" y2="448" x1="1680" />
            <wire x2="1744" y1="448" y2="944" x1="1744" />
        </branch>
        <instance x="1312" y="1840" name="XLXI_11" orien="R0">
        </instance>
        <branch name="player(1:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="992" type="branch" />
            <wire x2="1200" y1="992" y2="1184" x1="1200" />
            <wire x2="1312" y1="1184" y2="1184" x1="1200" />
            <wire x2="1728" y1="992" y2="992" x1="1200" />
            <wire x2="2048" y1="992" y2="992" x1="1728" />
            <wire x2="1728" y1="640" y2="640" x1="1680" />
            <wire x2="1728" y1="640" y2="992" x1="1728" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1136" y1="224" y2="1120" x1="1136" />
            <wire x2="1312" y1="1120" y2="1120" x1="1136" />
            <wire x2="1776" y1="224" y2="224" x1="1136" />
            <wire x2="1776" y1="224" y2="384" x1="1776" />
            <wire x2="1696" y1="384" y2="384" x1="1680" />
            <wire x2="1776" y1="384" y2="384" x1="1696" />
        </branch>
        <instance x="1312" y="1472" name="XLXI_12" orien="R0">
        </instance>
        <branch name="XLXN_18(3:0)">
            <wire x2="1008" y1="1376" y2="1936" x1="1008" />
            <wire x2="1904" y1="1936" y2="1936" x1="1008" />
            <wire x2="1312" y1="1376" y2="1376" x1="1008" />
            <wire x2="1904" y1="1744" y2="1744" x1="1696" />
            <wire x2="1904" y1="1744" y2="1936" x1="1904" />
            <wire x2="2048" y1="736" y2="736" x1="1904" />
            <wire x2="1904" y1="736" y2="1744" x1="1904" />
        </branch>
        <branch name="XLXN_19(3:0)">
            <wire x2="1312" y1="1440" y2="1440" x1="1072" />
            <wire x2="1072" y1="1440" y2="1968" x1="1072" />
            <wire x2="1968" y1="1968" y2="1968" x1="1072" />
            <wire x2="1968" y1="1808" y2="1808" x1="1696" />
            <wire x2="1968" y1="1808" y2="1968" x1="1968" />
            <wire x2="2048" y1="800" y2="800" x1="1968" />
            <wire x2="1968" y1="800" y2="1808" x1="1968" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="2032" y1="512" y2="512" x1="1680" />
            <wire x2="2048" y1="480" y2="480" x1="2032" />
            <wire x2="2032" y1="480" y2="512" x1="2032" />
        </branch>
        <branch name="invalidplay">
            <wire x2="2032" y1="576" y2="576" x1="1680" />
            <wire x2="2032" y1="544" y2="576" x1="2032" />
            <wire x2="2048" y1="544" y2="544" x1="2032" />
        </branch>
        <branch name="playerOut">
            <wire x2="3312" y1="640" y2="640" x1="3024" />
        </branch>
        <branch name="rowOut(3:0)">
            <wire x2="2720" y1="608" y2="608" x1="2592" />
            <wire x2="2720" y1="608" y2="992" x1="2720" />
            <wire x2="3312" y1="992" y2="992" x1="2720" />
        </branch>
        <branch name="colOut(3:0)">
            <wire x2="2624" y1="672" y2="672" x1="2592" />
            <wire x2="2624" y1="672" y2="1344" x1="2624" />
            <wire x2="3312" y1="1344" y2="1344" x1="2624" />
        </branch>
        <branch name="winOut">
            <wire x2="848" y1="1264" y2="1520" x1="848" />
            <wire x2="1760" y1="1520" y2="1520" x1="848" />
            <wire x2="2848" y1="1520" y2="1520" x1="1760" />
            <wire x2="2848" y1="1520" y2="1696" x1="2848" />
            <wire x2="3312" y1="1696" y2="1696" x1="2848" />
            <wire x2="1760" y1="1184" y2="1184" x1="1696" />
            <wire x2="1760" y1="1184" y2="1520" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="3312" y="640" name="playerOut" orien="R0" />
        <iomarker fontsize="28" x="3312" y="992" name="rowOut(3:0)" orien="R0" />
        <iomarker fontsize="28" x="3312" y="1344" name="colOut(3:0)" orien="R0" />
        <iomarker fontsize="28" x="3312" y="1696" name="winOut" orien="R0" />
        <instance x="2800" y="672" name="XLXI_16" orien="R0" />
        <branch name="XLXN_34">
            <wire x2="2672" y1="736" y2="736" x1="2592" />
            <wire x2="2800" y1="640" y2="640" x1="2672" />
            <wire x2="2672" y1="640" y2="736" x1="2672" />
        </branch>
        <branch name="XLXN_35(3:0)">
            <wire x2="1312" y1="1248" y2="1248" x1="1248" />
            <wire x2="1248" y1="1248" y2="1552" x1="1248" />
            <wire x2="2784" y1="1552" y2="1552" x1="1248" />
            <wire x2="2608" y1="480" y2="480" x1="2592" />
            <wire x2="2784" y1="480" y2="480" x1="2608" />
            <wire x2="2784" y1="480" y2="1552" x1="2784" />
        </branch>
        <branch name="XLXN_36(3:0)">
            <wire x2="1312" y1="1312" y2="1312" x1="1264" />
            <wire x2="1264" y1="1312" y2="1488" x1="1264" />
            <wire x2="2752" y1="1488" y2="1488" x1="1264" />
            <wire x2="2608" y1="544" y2="544" x1="2592" />
            <wire x2="2752" y1="544" y2="544" x1="2608" />
            <wire x2="2752" y1="544" y2="1488" x1="2752" />
        </branch>
        <instance x="1760" y="704" name="XLXI_25" orien="R0" />
        <branch name="XLXN_38">
            <wire x2="2016" y1="672" y2="672" x1="1984" />
            <wire x2="2048" y1="672" y2="672" x1="2016" />
            <wire x2="2016" y1="608" y2="672" x1="2016" />
            <wire x2="2048" y1="608" y2="608" x1="2016" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="896" y1="640" y2="640" x1="816" />
            <wire x2="816" y1="640" y2="1008" x1="816" />
        </branch>
        <instance x="912" y="1264" name="XLXI_26" orien="R270" />
        <branch name="XLXN_8">
            <wire x2="1104" y1="768" y2="960" x1="1104" />
            <wire x2="1104" y1="960" y2="1744" x1="1104" />
            <wire x2="1312" y1="1744" y2="1744" x1="1104" />
            <wire x2="1824" y1="960" y2="960" x1="1104" />
            <wire x2="1824" y1="960" y2="1120" x1="1824" />
            <wire x2="1264" y1="768" y2="768" x1="1104" />
            <wire x2="1824" y1="1120" y2="1120" x1="1696" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1264" y1="512" y2="512" x1="1200" />
            <wire x2="1200" y1="512" y2="832" x1="1200" />
            <wire x2="1712" y1="832" y2="832" x1="1200" />
            <wire x2="1712" y1="832" y2="1680" x1="1712" />
            <wire x2="1712" y1="1680" y2="1680" x1="1696" />
        </branch>
        <instance x="1264" y="800" name="XLXI_9" orien="R0">
        </instance>
        <instance x="2400" y="64" name="XLXI_27" orien="R180" />
        <branch name="XLXN_46">
            <wire x2="2640" y1="192" y2="192" x1="2400" />
            <wire x2="2640" y1="192" y2="800" x1="2640" />
            <wire x2="2640" y1="800" y2="800" x1="2592" />
        </branch>
        <branch name="XLXN_47">
            <wire x2="2608" y1="128" y2="128" x1="2400" />
            <wire x2="2608" y1="128" y2="864" x1="2608" />
            <wire x2="2608" y1="864" y2="864" x1="2592" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="1216" y1="160" y2="448" x1="1216" />
            <wire x2="1264" y1="448" y2="448" x1="1216" />
            <wire x2="1216" y1="448" y2="576" x1="1216" />
            <wire x2="1264" y1="576" y2="576" x1="1216" />
            <wire x2="2144" y1="160" y2="160" x1="1216" />
        </branch>
        <branch name="start">
            <wire x2="480" y1="240" y2="240" x1="320" />
            <wire x2="480" y1="240" y2="704" x1="480" />
            <wire x2="1264" y1="704" y2="704" x1="480" />
        </branch>
        <iomarker fontsize="28" x="320" y="240" name="start" orien="R180" />
        <branch name="confirm">
            <wire x2="3312" y1="928" y2="928" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="3312" y="928" name="confirm" orien="R0" />
        <instance x="2048" y="1024" name="XLXI_28" orien="R0">
        </instance>
    </sheet>
</drawing>