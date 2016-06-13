<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="D" />
        <signal name="C" />
        <signal name="Q" />
        <signal name="XLXN_7" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <port polarity="Input" name="D" />
        <port polarity="Input" name="C" />
        <port polarity="Output" name="Q" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
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
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="Q" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="XLXN_9" name="I" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_7">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="D" name="D" />
            <blockpin signalname="XLXN_9" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <iomarker fontsize="28" x="320" y="640" name="D" orien="R180" />
        <iomarker fontsize="28" x="320" y="1120" name="C" orien="R180" />
        <branch name="Q">
            <wire x2="3040" y1="848" y2="848" x1="2000" />
            <wire x2="3200" y1="640" y2="640" x1="3040" />
            <wire x2="3040" y1="640" y2="848" x1="3040" />
        </branch>
        <iomarker fontsize="28" x="3200" y="640" name="Q" orien="R0" />
        <branch name="D">
            <wire x2="480" y1="640" y2="640" x1="320" />
            <wire x2="480" y1="640" y2="880" x1="480" />
            <wire x2="1008" y1="880" y2="880" x1="480" />
            <wire x2="1072" y1="880" y2="880" x1="1008" />
            <wire x2="1008" y1="736" y2="880" x1="1008" />
            <wire x2="1520" y1="736" y2="736" x1="1008" />
            <wire x2="1520" y1="736" y2="816" x1="1520" />
            <wire x2="1744" y1="816" y2="816" x1="1520" />
        </branch>
        <branch name="C">
            <wire x2="480" y1="1120" y2="1120" x1="320" />
            <wire x2="1072" y1="1008" y2="1008" x1="480" />
            <wire x2="480" y1="1008" y2="1120" x1="480" />
        </branch>
        <instance x="1744" y="944" name="XLXI_1" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="1744" y1="880" y2="880" x1="1712" />
        </branch>
        <instance x="1488" y="912" name="XLXI_4" orien="R0" />
        <branch name="XLXN_9">
            <wire x2="1488" y1="880" y2="880" x1="1456" />
        </branch>
        <instance x="1072" y="1136" name="XLXI_7" orien="R0" />
    </sheet>
</drawing>