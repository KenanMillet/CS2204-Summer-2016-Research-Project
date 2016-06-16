<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <blockdef name="microblazecore">
            <timestamp>2016-6-16T18:57:51</timestamp>
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
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="microblazecore" name="mcs_0">
            <blockpin signalname="XLXN_3" name="clk" />
            <blockpin signalname="XLXN_2" name="reset" />
            <blockpin name="uart_tx" />
            <blockpin name="uart_rx" />
            <blockpin name="uart_interrupt" />
            <blockpin name="gpi1(31:0)" />
            <blockpin name="gpo1(31:0)" />
            <blockpin name="intc_irq" />
        </block>
        <block symbolname="gnd" name="XLXI_2">
            <blockpin signalname="XLXN_2" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1216" y="384" name="mcs_0" orien="R0">
        </instance>
        <branch name="XLXN_3">
            <wire x2="1200" y1="384" y2="384" x1="1168" />
            <wire x2="1200" y1="384" y2="464" x1="1200" />
            <wire x2="1216" y1="464" y2="464" x1="1200" />
            <wire x2="1168" y1="384" y2="416" x1="1168" />
            <wire x2="1168" y1="416" y2="464" x1="1168" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1200" y1="496" y2="496" x1="1184" />
            <wire x2="1216" y1="496" y2="496" x1="1200" />
        </branch>
        <instance x="1056" y="432" name="XLXI_2" orien="R90" />
    </sheet>
</drawing>