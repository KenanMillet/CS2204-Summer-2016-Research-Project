<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLOCK" />
        <signal name="USB_IN" />
        <signal name="USB_OUT" />
        <signal name="OBClk" />
        <signal name="UartRx" />
        <signal name="UartTx" />
        <signal name="XLXN_2" />
        <signal name="comms_gpi1(31:0)" />
        <signal name="comms_gpi2(31:0)" />
        <signal name="comms_gpi3(31:0)" />
        <signal name="comms_gpi4(31:0)" />
        <signal name="comms_gpo1(31:0)" />
        <signal name="comms_gpo2(31:0)" />
        <signal name="comms_gpo4(31:0)" />
        <signal name="XLXN_52(31:0)" />
        <signal name="XLXN_53(31:0)" />
        <signal name="XLXN_54(31:0)" />
        <signal name="XLXN_55(31:0)" />
        <signal name="comms_gpo3(31:0)" />
        <signal name="XLXN_66(31:0)" />
        <signal name="XLXN_67(31:0)" />
        <signal name="XLXN_68(31:0)" />
        <signal name="XLXN_69(31:0)" />
        <signal name="XLXN_70(31:0)" />
        <signal name="XLXN_71(31:0)" />
        <signal name="XLXN_72(31:0)" />
        <signal name="XLXN_73(31:0)" />
        <signal name="XLXN_74(31:0)" />
        <signal name="XLXN_75(31:0)" />
        <signal name="XLXN_76(31:0)" />
        <signal name="XLXN_77(31:0)" />
        <signal name="XLXN_78(31:0)" />
        <signal name="XLXN_79(31:0)" />
        <port polarity="Input" name="OBClk" />
        <port polarity="Input" name="UartRx" />
        <port polarity="Output" name="UartTx" />
        <blockdef name="communication">
            <timestamp>2016-6-21T16:58:56</timestamp>
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
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="ibuf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="ibufg">
            <timestamp>2008-10-8T10:10:10</timestamp>
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
        <blockdef name="title">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="-796" y1="-288" y2="-256" x1="-764" />
            <line x2="-764" y1="-256" y2="-288" x1="-732" />
            <line x2="-732" y1="-256" y2="-256" x1="-776" />
            <line x2="-776" y1="-264" y2="-256" x1="-788" />
            <line x2="-796" y1="-256" y2="-256" x1="-840" />
            <line x2="-836" y1="-256" y2="-288" x1="-804" />
            <line x2="-832" y1="-256" y2="-288" x1="-800" />
            <line x2="-828" y1="-256" y2="-288" x1="-796" />
            <line x2="-800" y1="-288" y2="-320" x1="-832" />
            <line x2="-796" y1="-288" y2="-320" x1="-828" />
            <line x2="-796" y1="-352" y2="-384" x1="-828" />
            <line x2="-796" y1="-384" y2="-384" x1="-840" />
            <line x2="-764" y1="-384" y2="-352" x1="-796" />
            <line x2="-832" y1="-320" y2="-352" x1="-800" />
            <line x2="-828" y1="-320" y2="-352" x1="-796" />
            <line x2="-836" y1="-320" y2="-352" x1="-804" />
            <line x2="-800" y1="-352" y2="-384" x1="-832" />
            <line x2="-804" y1="-352" y2="-384" x1="-836" />
            <line x2="-840" y1="-352" y2="-384" x1="-872" />
            <line x2="-836" y1="-352" y2="-384" x1="-868" />
            <line x2="-764" y1="-384" y2="-352" x1="-732" />
            <line x2="-732" y1="-384" y2="-384" x1="-776" />
            <line x2="-776" y1="-376" y2="-384" x1="-788" />
            <line x2="-736" y1="-356" y2="-384" x1="-764" />
            <line x2="-740" y1="-360" y2="-384" x1="-768" />
            <line x2="-740" y1="-356" y2="-384" x1="-768" />
            <line x2="-744" y1="-360" y2="-384" x1="-772" />
            <line x2="-748" y1="-360" y2="-384" x1="-772" />
            <line x2="-752" y1="-360" y2="-384" x1="-772" />
            <line x2="-808" y1="-352" y2="-384" x1="-840" />
            <line x2="-812" y1="-352" y2="-384" x1="-844" />
            <line x2="-816" y1="-352" y2="-384" x1="-848" />
            <line x2="-820" y1="-352" y2="-384" x1="-852" />
            <line x2="-848" y1="-256" y2="-288" x1="-816" />
            <line x2="-852" y1="-256" y2="-288" x1="-820" />
            <line x2="-828" y1="-352" y2="-352" x1="-872" />
            <line x2="-868" y1="-320" y2="-352" x1="-836" />
            <line x2="-864" y1="-320" y2="-352" x1="-832" />
            <line x2="-860" y1="-320" y2="-352" x1="-828" />
            <line x2="-856" y1="-320" y2="-352" x1="-824" />
            <line x2="-840" y1="-288" y2="-320" x1="-872" />
            <line x2="-828" y1="-288" y2="-288" x1="-872" />
            <line x2="-828" y1="-352" y2="-384" x1="-860" />
            <line x2="-832" y1="-352" y2="-384" x1="-864" />
            <line x2="-824" y1="-352" y2="-384" x1="-856" />
            <line x2="-824" y1="-288" y2="-320" x1="-856" />
            <line x2="-820" y1="-288" y2="-320" x1="-852" />
            <line x2="-816" y1="-288" y2="-320" x1="-848" />
            <line x2="-812" y1="-288" y2="-320" x1="-844" />
            <line x2="-808" y1="-288" y2="-320" x1="-840" />
            <line x2="-804" y1="-288" y2="-320" x1="-836" />
            <line x2="-836" y1="-288" y2="-320" x1="-868" />
            <line x2="-832" y1="-288" y2="-320" x1="-864" />
            <line x2="-828" y1="-288" y2="-320" x1="-860" />
            <line x2="-872" y1="-320" y2="-352" x1="-840" />
            <line x2="-852" y1="-320" y2="-352" x1="-820" />
            <line x2="-848" y1="-320" y2="-352" x1="-816" />
            <line x2="-844" y1="-320" y2="-352" x1="-812" />
            <line x2="-840" y1="-320" y2="-352" x1="-808" />
            <line x2="-840" y1="-256" y2="-288" x1="-808" />
            <line x2="-844" y1="-256" y2="-288" x1="-812" />
            <line x2="-868" y1="-256" y2="-288" x1="-836" />
            <line x2="-872" y1="-256" y2="-288" x1="-840" />
            <line x2="-856" y1="-256" y2="-288" x1="-824" />
            <line x2="-860" y1="-256" y2="-288" x1="-828" />
            <line x2="-864" y1="-256" y2="-288" x1="-832" />
            <line x2="-756" y1="-364" y2="-384" x1="-772" />
            <line x2="-756" y1="-364" y2="-384" x1="-776" />
            <line x2="-760" y1="-368" y2="-384" x1="-776" />
            <line x2="-764" y1="-368" y2="-384" x1="-780" />
            <line x2="-768" y1="-372" y2="-384" x1="-780" />
            <line x2="-772" y1="-372" y2="-384" x1="-784" />
            <line x2="-772" y1="-376" y2="-384" x1="-784" />
            <line x2="-612" y1="-272" y2="-368" x1="-612" />
            <line x2="-616" y1="-272" y2="-368" x1="-616" />
            <line x2="-620" y1="-272" y2="-368" x1="-620" />
            <line x2="-612" y1="-276" y2="-276" x1="-564" />
            <line x2="-456" y1="-272" y2="-368" x1="-456" />
            <line x2="-460" y1="-272" y2="-368" x1="-460" />
            <line x2="-640" y1="-272" y2="-368" x1="-640" />
            <line x2="-444" y1="-272" y2="-368" x1="-392" />
            <line x2="-444" y1="-368" y2="-272" x1="-392" />
            <line x2="-712" y1="-272" y2="-368" x1="-660" />
            <line x2="-716" y1="-368" y2="-272" x1="-660" />
            <line x2="-544" y1="-272" y2="-368" x1="-544" />
            <line x2="-644" y1="-272" y2="-368" x1="-644" />
            <line x2="-636" y1="-272" y2="-368" x1="-636" />
            <line x2="-708" y1="-272" y2="-368" x1="-656" />
            <line x2="-520" y1="-272" y2="-368" x1="-468" />
            <line x2="-716" y1="-272" y2="-368" x1="-660" />
            <line x2="-720" y1="-272" y2="-368" x1="-664" />
            <line x2="-524" y1="-272" y2="-368" x1="-524" />
            <line x2="-528" y1="-272" y2="-368" x1="-528" />
            <line x2="-632" y1="-272" y2="-368" x1="-632" />
            <line x2="-524" y1="-272" y2="-368" x1="-468" />
            <line x2="-540" y1="-272" y2="-368" x1="-540" />
            <line x2="-516" y1="-272" y2="-368" x1="-464" />
            <line x2="-516" y1="-272" y2="-368" x1="-460" />
            <line x2="-548" y1="-272" y2="-368" x1="-548" />
            <line x2="-440" y1="-272" y2="-368" x1="-388" />
            <line x2="-612" y1="-272" y2="-272" x1="-564" />
            <line x2="-720" y1="-368" y2="-272" x1="-664" />
            <line x2="-784" y1="-256" y2="-264" x1="-772" />
            <line x2="-772" y1="-268" y2="-256" x1="-784" />
            <line x2="-780" y1="-256" y2="-268" x1="-768" />
            <line x2="-764" y1="-272" y2="-256" x1="-780" />
            <line x2="-776" y1="-256" y2="-272" x1="-760" />
            <line x2="-756" y1="-276" y2="-256" x1="-776" />
            <line x2="-772" y1="-256" y2="-276" x1="-756" />
            <line x2="-752" y1="-280" y2="-256" x1="-772" />
            <line x2="-772" y1="-256" y2="-280" x1="-748" />
            <line x2="-744" y1="-280" y2="-256" x1="-772" />
            <line x2="-768" y1="-256" y2="-280" x1="-740" />
            <line x2="-740" y1="-284" y2="-256" x1="-768" />
            <line x2="-764" y1="-256" y2="-284" x1="-736" />
            <line x2="-436" y1="-272" y2="-368" x1="-388" />
            <line x2="-436" y1="-272" y2="-368" x1="-384" />
            <line x2="-440" y1="-368" y2="-272" x1="-388" />
            <line x2="-1140" y1="-176" y2="-176" x1="-112" />
            <line x2="-1136" y1="-416" y2="-212" style="linewidth:W" x1="-1136" />
            <line x2="-80" y1="-416" y2="-220" style="linewidth:W" x1="-80" />
            <line x2="-80" y1="-416" y2="-416" style="linewidth:W" x1="-1136" />
            <line x2="-80" y1="-128" y2="-128" x1="-1136" />
            <line x2="-80" y1="-220" y2="-220" x1="-1132" />
            <line x2="-352" y1="-80" y2="-80" style="linewidth:W" x1="-80" />
            <line x2="-352" y1="-80" y2="-80" style="linewidth:W" x1="-1136" />
            <line x2="-1136" y1="-224" y2="-80" style="linewidth:W" x1="-1136" />
            <line x2="-152" y1="-80" y2="-80" style="linewidth:W" x1="-144" />
            <line x2="-80" y1="-224" y2="-80" style="linewidth:W" x1="-80" />
            <line x2="-80" y1="-176" y2="-176" x1="-112" />
            <line x2="-144" y1="-128" y2="-128" x1="-176" />
            <line x2="-296" y1="-128" y2="-80" x1="-296" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="ibuf" name="XLXI_7">
            <blockpin signalname="UartRx" name="I" />
            <blockpin signalname="USB_IN" name="O" />
        </block>
        <block symbolname="ibufg" name="XLXI_8">
            <blockpin signalname="OBClk" name="I" />
            <blockpin signalname="CLOCK" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_11">
            <blockpin signalname="USB_OUT" name="I" />
            <blockpin signalname="UartTx" name="O" />
        </block>
        <block symbolname="title" name="XLXI_18">
            <attr value="Gomoku 1.0.0" name="TitleFieldText" />
            <attr value="Ana, Kenan, Xikun, Varron" name="NameFieldText" />
        </block>
        <block symbolname="title" name="XLXI_19">
            <attr value="Gomoku 1.0.0" name="TitleFieldText" />
            <attr value="Ana, Kenan, Xikun, Varron" name="NameFieldText" />
        </block>
        <block symbolname="title" name="XLXI_20">
            <attr value="Gomoku 1.0.0" name="TitleFieldText" />
            <attr value="Ana, Kenan, Xikun, Varron" name="NameFieldText" />
        </block>
        <block symbolname="title" name="XLXI_21">
            <attr value="Gomoku 1.0.0" name="TitleFieldText" />
            <attr value="Ana, Kenan, Xikun, Varron" name="NameFieldText" />
        </block>
        <block symbolname="title" name="XLXI_22">
            <attr value="Gomoku 1.0.0" name="TitleFieldText" />
            <attr value="Ana, Kenan, Xikun, Varron" name="NameFieldText" />
        </block>
        <block symbolname="title" name="XLXI_23">
            <attr value="Gomoku 1.0.0" name="TitleFieldText" />
            <attr value="Ana, Kenan, Xikun, Varron" name="NameFieldText" />
        </block>
        <block symbolname="communication" name="comms">
            <blockpin signalname="CLOCK" name="clk" />
            <blockpin signalname="XLXN_2" name="reset" />
            <blockpin signalname="USB_OUT" name="uart_tx" />
            <blockpin signalname="USB_IN" name="uart_rx" />
            <blockpin name="uart_interrupt" />
            <blockpin signalname="comms_gpi1(31:0)" name="gpi1(31:0)" />
            <blockpin signalname="comms_gpi2(31:0)" name="gpi2(31:0)" />
            <blockpin signalname="comms_gpi3(31:0)" name="gpi3(31:0)" />
            <blockpin signalname="comms_gpi4(31:0)" name="gpi4(31:0)" />
            <blockpin signalname="comms_gpo1(31:0)" name="gpo1(31:0)" />
            <blockpin signalname="comms_gpo2(31:0)" name="gpo2(31:0)" />
            <blockpin signalname="comms_gpo3(31:0)" name="gpo3(31:0)" />
            <blockpin signalname="comms_gpo4(31:0)" name="gpo4(31:0)" />
            <blockpin name="intc_irq" />
        </block>
        <block symbolname="gnd" name="XLXI_3">
            <blockpin signalname="XLXN_2" name="G" />
        </block>
        <block symbolname="buf" name="comms_bus1(31:0)">
            <blockpin signalname="comms_gpo1(31:0)" name="I" />
            <blockpin signalname="comms_gpi1(31:0)" name="O" />
        </block>
        <block symbolname="buf" name="comms_bus2(31:0)">
            <blockpin signalname="comms_gpo2(31:0)" name="I" />
            <blockpin signalname="comms_gpi2(31:0)" name="O" />
        </block>
        <block symbolname="buf" name="comms_bus3(31:0)">
            <blockpin signalname="comms_gpo3(31:0)" name="I" />
            <blockpin signalname="comms_gpi3(31:0)" name="O" />
        </block>
        <block symbolname="buf" name="comms_bus4(31:0)">
            <blockpin signalname="comms_gpo4(31:0)" name="I" />
            <blockpin signalname="comms_gpi4(31:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="3600" y="2800" name="XLXI_18" orien="R0">
        </instance>
        <text style="fontsize:64;fontname:Arial" x="1524" y="156">Contents</text>
        <text style="fontsize:64;fontname:Arial" x="556" y="412">2: Buffers</text>
        <text style="fontsize:64;fontname:Arial" x="2232" y="388">3: Core Game Mechanics</text>
        <text style="fontsize:64;fontname:Arial" x="536" y="900">4: Machine Player</text>
        <text style="fontsize:64;fontname:Arial" x="2228" y="892">5: Communication/USB IO</text>
        <text style="fontsize:64;fontname:Arial" x="1436" y="1280">6: Control Unit</text>
    </sheet>
    <sheet sheetnum="2" width="3520" height="2720">
        <line x2="1764" y1="48" y2="2660" x1="1764" />
        <branch name="OBClk">
            <wire x2="416" y1="512" y2="512" x1="368" />
            <wire x2="592" y1="512" y2="512" x1="416" />
        </branch>
        <branch name="UartRx">
            <wire x2="592" y1="640" y2="640" x1="368" />
        </branch>
        <instance x="592" y="672" name="XLXI_7" orien="R0" />
        <instance x="592" y="544" name="XLXI_8" orien="R0" />
        <branch name="CLOCK">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="512" type="branch" />
            <wire x2="1088" y1="512" y2="512" x1="816" />
        </branch>
        <branch name="USB_IN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="640" type="branch" />
            <wire x2="1088" y1="640" y2="640" x1="816" />
        </branch>
        <branch name="USB_OUT">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="496" type="branch" />
            <wire x2="2496" y1="496" y2="496" x1="2160" />
        </branch>
        <instance x="2496" y="528" name="XLXI_11" orien="R0" />
        <branch name="UartTx">
            <wire x2="3104" y1="496" y2="496" x1="2720" />
        </branch>
        <iomarker fontsize="28" x="3104" y="496" name="UartTx" orien="R0" />
        <iomarker fontsize="28" x="368" y="512" name="OBClk" orien="R180" />
        <iomarker fontsize="28" x="368" y="640" name="UartRx" orien="R180" />
        <instance x="3600" y="2800" name="XLXI_19" orien="R0">
        </instance>
    </sheet>
    <sheet sheetnum="3" width="3520" height="2720">
        <instance x="3600" y="2800" name="XLXI_20" orien="R0">
        </instance>
    </sheet>
    <sheet sheetnum="4" width="3520" height="2720">
        <instance x="3600" y="2800" name="XLXI_21" orien="R0">
        </instance>
    </sheet>
    <sheet sheetnum="5" width="3520" height="2720">
        <instance x="3600" y="2800" name="XLXI_22" orien="R0">
        </instance>
        <instance x="1120" y="416" name="XLXI_3" orien="R90" />
        <branch name="USB_IN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="576" type="branch" />
            <wire x2="1152" y1="576" y2="576" x1="992" />
            <wire x2="1152" y1="512" y2="576" x1="1152" />
            <wire x2="1280" y1="512" y2="512" x1="1152" />
        </branch>
        <branch name="USB_OUT">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="448" type="branch" />
            <wire x2="2352" y1="448" y2="448" x1="2048" />
        </branch>
        <branch name="comms_gpo1(31:0)">
            <wire x2="2064" y1="1152" y2="1152" x1="2048" />
            <wire x2="2272" y1="1024" y2="1024" x1="2064" />
            <wire x2="2064" y1="1024" y2="1152" x1="2064" />
        </branch>
        <branch name="comms_gpo2(31:0)">
            <wire x2="2160" y1="1184" y2="1184" x1="2048" />
            <wire x2="2160" y1="1136" y2="1184" x1="2160" />
            <wire x2="2272" y1="1136" y2="1136" x1="2160" />
        </branch>
        <branch name="comms_gpi1(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2688" y="1152" type="branch" />
            <wire x2="2672" y1="1024" y2="1024" x1="2496" />
            <wire x2="2672" y1="1024" y2="1152" x1="2672" />
            <wire x2="2688" y1="1152" y2="1152" x1="2672" />
        </branch>
        <branch name="comms_gpi2(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2688" y="1184" type="branch" />
            <wire x2="2576" y1="1136" y2="1136" x1="2496" />
            <wire x2="2576" y1="1136" y2="1184" x1="2576" />
            <wire x2="2688" y1="1184" y2="1184" x1="2576" />
        </branch>
        <branch name="comms_gpi4(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2688" y="1248" type="branch" />
            <wire x2="2672" y1="1376" y2="1376" x1="2496" />
            <wire x2="2688" y1="1248" y2="1248" x1="2672" />
            <wire x2="2672" y1="1248" y2="1376" x1="2672" />
        </branch>
        <branch name="comms_gpi4(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="768" type="branch" />
            <wire x2="1280" y1="768" y2="768" x1="1088" />
        </branch>
        <branch name="comms_gpi3(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="736" type="branch" />
            <wire x2="1280" y1="736" y2="736" x1="1088" />
        </branch>
        <branch name="comms_gpi2(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="704" type="branch" />
            <wire x2="1280" y1="704" y2="704" x1="1088" />
        </branch>
        <branch name="comms_gpi1(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="672" type="branch" />
            <wire x2="1280" y1="672" y2="672" x1="1088" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1280" y1="480" y2="480" x1="1248" />
        </branch>
        <branch name="CLOCK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="368" type="branch" />
            <wire x2="1152" y1="368" y2="368" x1="992" />
            <wire x2="1152" y1="368" y2="448" x1="1152" />
            <wire x2="1280" y1="448" y2="448" x1="1152" />
        </branch>
        <instance x="1280" y="368" name="comms" orien="R0">
        </instance>
        <branch name="comms_gpo4(31:0)">
            <wire x2="2064" y1="1248" y2="1248" x1="2048" />
            <wire x2="2064" y1="1248" y2="1376" x1="2064" />
            <wire x2="2272" y1="1376" y2="1376" x1="2064" />
        </branch>
        <branch name="comms_gpo3(31:0)">
            <wire x2="2160" y1="1216" y2="1216" x1="2048" />
            <wire x2="2160" y1="1216" y2="1264" x1="2160" />
            <wire x2="2272" y1="1264" y2="1264" x1="2160" />
        </branch>
        <branch name="comms_gpi3(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2688" y="1216" type="branch" />
            <wire x2="2576" y1="1264" y2="1264" x1="2496" />
            <wire x2="2576" y1="1216" y2="1264" x1="2576" />
            <wire x2="2688" y1="1216" y2="1216" x1="2576" />
        </branch>
        <instance x="2272" y="1168" name="comms_bus2(31:0)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-80" type="instance" />
        </instance>
        <instance x="2272" y="1296" name="comms_bus3(31:0)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-80" type="instance" />
        </instance>
        <instance x="2272" y="1408" name="comms_bus4(31:0)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-80" type="instance" />
        </instance>
        <instance x="2272" y="1056" name="comms_bus1(31:0)" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-80" type="instance" />
        </instance>
    </sheet>
    <sheet sheetnum="6" width="3520" height="2720">
        <instance x="3600" y="2800" name="XLXI_23" orien="R0">
        </instance>
    </sheet>
</drawing>