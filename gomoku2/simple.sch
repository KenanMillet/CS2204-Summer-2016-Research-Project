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
        <signal name="gpo(10)" />
        <signal name="gpi(10)" />
        <signal name="gpi(11)" />
        <signal name="gpo(11)" />
        <signal name="gpi(1)" />
        <signal name="gpo(1)" />
        <signal name="gpi(2)" />
        <signal name="gpo(2)" />
        <signal name="gpi(3)" />
        <signal name="gpo(3)" />
        <signal name="gpi(4)" />
        <signal name="gpo(4)" />
        <signal name="gpi(5)" />
        <signal name="gpo(5)" />
        <signal name="gpi(6)" />
        <signal name="gpo(6)" />
        <signal name="gpi(7)" />
        <signal name="gpo(7)" />
        <signal name="gpi(8)" />
        <signal name="gpo(8)" />
        <signal name="data_sel">
        </signal>
        <signal name="XLXN_84" />
        <signal name="XLXN_85" />
        <signal name="XLXN_86" />
        <signal name="XLXN_87" />
        <signal name="XLXN_88" />
        <signal name="XLXN_89" />
        <signal name="XLXN_90" />
        <signal name="XLXN_91" />
        <signal name="XLXN_94" />
        <signal name="XLXN_95" />
        <signal name="XLXN_96" />
        <signal name="XLXN_97" />
        <signal name="XLXN_98" />
        <signal name="XLXN_99" />
        <signal name="XLXN_100" />
        <signal name="XLXN_101" />
        <signal name="XLXN_102" />
        <signal name="XLXN_103" />
        <signal name="lp" />
        <signal name="x0" />
        <signal name="x1" />
        <signal name="x2" />
        <signal name="x3" />
        <signal name="y0" />
        <signal name="y1" />
        <signal name="y2" />
        <signal name="y3" />
        <signal name="win" />
        <signal name="INT_CLK" />
        <signal name="btnc" />
        <signal name="MAN_CLK" />
        <signal name="sw0" />
        <signal name="clk_sel" />
        <signal name="sw15" />
        <signal name="send" />
        <signal name="recvConf" />
        <signal name="recv" />
        <signal name="sendConf" />
        <port polarity="Input" name="OBClk" />
        <port polarity="Input" name="UartTx" />
        <port polarity="Output" name="UartRx" />
        <port polarity="Output" name="lp" />
        <port polarity="Output" name="x0" />
        <port polarity="Output" name="x1" />
        <port polarity="Output" name="x2" />
        <port polarity="Output" name="x3" />
        <port polarity="Output" name="y0" />
        <port polarity="Output" name="y1" />
        <port polarity="Output" name="y2" />
        <port polarity="Output" name="y3" />
        <port polarity="Output" name="win" />
        <port polarity="Input" name="btnc" />
        <port polarity="Input" name="sw0" />
        <port polarity="Input" name="sw15" />
        <port polarity="Output" name="send" />
        <port polarity="Output" name="recvConf" />
        <port polarity="Output" name="recv" />
        <port polarity="Output" name="sendConf" />
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
            <timestamp>2016-7-21T21:12:24</timestamp>
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
            <timestamp>2016-7-22T17:20:57</timestamp>
            <rect width="416" x="64" y="-440" height="440" />
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
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="544" y1="-416" y2="-416" x1="480" />
            <line x2="544" y1="-352" y2="-352" x1="480" />
        </blockdef>
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <block symbolname="gnd" name="XLXI_15">
            <blockpin signalname="XLXN_49" name="G" />
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
        <block symbolname="communication" name="XLXI_32">
            <blockpin signalname="CLOCK" name="clk" />
            <blockpin signalname="XLXN_49" name="reset" />
            <blockpin signalname="USB_OUT" name="uart_tx" />
            <blockpin signalname="USB_IN" name="uart_rx" />
            <blockpin name="uart_interrupt" />
            <blockpin signalname="gpi(31:0)" name="gpi1(31:0)" />
            <blockpin signalname="gpo(31:0)" name="gpo1(31:0)" />
            <blockpin name="intc_irq" />
        </block>
        <block symbolname="Gomoku_Verilog" name="XLXI_36">
            <blockpin signalname="gpo(0)" name="playerIn" />
            <blockpin signalname="gpo(4:1)" name="rowIn(3:0)" />
            <blockpin signalname="gpo(8:5)" name="colIn(3:0)" />
            <blockpin signalname="gpo(9)" name="winIn" />
            <blockpin signalname="gpi(0)" name="playerOut" />
            <blockpin signalname="gpi(4:1)" name="rowOut(3:0)" />
            <blockpin signalname="gpi(8:5)" name="colOut(3:0)" />
            <blockpin signalname="gpi(9)" name="winOut" />
            <blockpin signalname="INT_CLK" name="clk" />
            <blockpin signalname="gpo(11)" name="sendConfirmed" />
            <blockpin signalname="gpo(10)" name="recv" />
            <blockpin signalname="gpi(11)" name="recvConfirmed" />
            <blockpin signalname="gpi(10)" name="send" />
        </block>
        <block symbolname="m2_1" name="XLXI_42">
            <blockpin signalname="gpi(0)" name="D0" />
            <blockpin signalname="gpo(0)" name="D1" />
            <blockpin signalname="data_sel" name="S0" />
            <blockpin signalname="XLXN_94" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_44">
            <blockpin signalname="gpi(1)" name="D0" />
            <blockpin signalname="gpo(1)" name="D1" />
            <blockpin signalname="data_sel" name="S0" />
            <blockpin signalname="XLXN_95" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_45">
            <blockpin signalname="gpi(2)" name="D0" />
            <blockpin signalname="gpo(2)" name="D1" />
            <blockpin signalname="data_sel" name="S0" />
            <blockpin signalname="XLXN_96" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_46">
            <blockpin signalname="gpi(3)" name="D0" />
            <blockpin signalname="gpo(3)" name="D1" />
            <blockpin signalname="data_sel" name="S0" />
            <blockpin signalname="XLXN_97" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_55">
            <blockpin signalname="gpi(8)" name="D0" />
            <blockpin signalname="gpo(8)" name="D1" />
            <blockpin signalname="data_sel" name="S0" />
            <blockpin signalname="XLXN_102" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_56">
            <blockpin signalname="gpi(9)" name="D0" />
            <blockpin signalname="gpo(9)" name="D1" />
            <blockpin signalname="data_sel" name="S0" />
            <blockpin signalname="XLXN_103" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_52">
            <blockpin signalname="gpi(4)" name="D0" />
            <blockpin signalname="gpo(4)" name="D1" />
            <blockpin signalname="data_sel" name="S0" />
            <blockpin signalname="XLXN_98" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_51">
            <blockpin signalname="gpi(5)" name="D0" />
            <blockpin signalname="gpo(5)" name="D1" />
            <blockpin signalname="data_sel" name="S0" />
            <blockpin signalname="XLXN_99" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_53">
            <blockpin signalname="gpi(6)" name="D0" />
            <blockpin signalname="gpo(6)" name="D1" />
            <blockpin signalname="data_sel" name="S0" />
            <blockpin signalname="XLXN_100" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_54">
            <blockpin signalname="gpi(7)" name="D0" />
            <blockpin signalname="gpo(7)" name="D1" />
            <blockpin signalname="data_sel" name="S0" />
            <blockpin signalname="XLXN_101" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_64">
            <blockpin signalname="XLXN_94" name="I" />
            <blockpin signalname="lp" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_65">
            <blockpin signalname="XLXN_95" name="I" />
            <blockpin signalname="x0" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_66">
            <blockpin signalname="XLXN_96" name="I" />
            <blockpin signalname="x1" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_67">
            <blockpin signalname="XLXN_97" name="I" />
            <blockpin signalname="x2" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_68">
            <blockpin signalname="XLXN_98" name="I" />
            <blockpin signalname="x3" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_69">
            <blockpin signalname="XLXN_99" name="I" />
            <blockpin signalname="y0" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_70">
            <blockpin signalname="XLXN_100" name="I" />
            <blockpin signalname="y1" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_71">
            <blockpin signalname="XLXN_101" name="I" />
            <blockpin signalname="y2" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_72">
            <blockpin signalname="XLXN_102" name="I" />
            <blockpin signalname="y3" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_73">
            <blockpin signalname="XLXN_103" name="I" />
            <blockpin signalname="win" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_37">
            <blockpin signalname="btnc" name="I" />
            <blockpin signalname="MAN_CLK" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_61">
            <blockpin signalname="sw0" name="I" />
            <blockpin signalname="data_sel" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_78">
            <blockpin signalname="sw15" name="I" />
            <blockpin signalname="clk_sel" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_79">
            <blockpin signalname="CLOCK" name="D0" />
            <blockpin signalname="MAN_CLK" name="D1" />
            <blockpin signalname="clk_sel" name="S0" />
            <blockpin signalname="INT_CLK" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_80">
            <blockpin signalname="gpi(10)" name="I" />
            <blockpin signalname="send" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_81">
            <blockpin signalname="gpi(11)" name="I" />
            <blockpin signalname="recvConf" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_82">
            <blockpin signalname="gpo(10)" name="I" />
            <blockpin signalname="recv" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_83">
            <blockpin signalname="gpo(11)" name="I" />
            <blockpin signalname="sendConf" name="O" />
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
            <wire x2="2816" y1="336" y2="336" x1="2800" />
            <wire x2="2880" y1="336" y2="336" x1="2816" />
        </branch>
        <instance x="640" y="2256" name="XLXI_28" orien="R0" />
        <branch name="gpo(31:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3040" y="1040" type="branch" />
            <wire x2="2816" y1="1040" y2="1040" x1="2800" />
            <wire x2="3040" y1="1040" y2="1040" x1="2816" />
        </branch>
        <branch name="gpo(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="768" type="branch" />
            <wire x2="592" y1="768" y2="768" x1="480" />
        </branch>
        <branch name="gpo(4:1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="832" type="branch" />
            <wire x2="592" y1="832" y2="832" x1="480" />
        </branch>
        <branch name="gpo(8:5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="896" type="branch" />
            <wire x2="592" y1="896" y2="896" x1="480" />
        </branch>
        <branch name="gpi(4:1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="832" type="branch" />
            <wire x2="1280" y1="832" y2="832" x1="1136" />
        </branch>
        <branch name="gpi(8:5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="896" type="branch" />
            <wire x2="1280" y1="896" y2="896" x1="1136" />
        </branch>
        <branch name="gpi(9)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="960" type="branch" />
            <wire x2="1280" y1="960" y2="960" x1="1136" />
        </branch>
        <branch name="gpi(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="768" type="branch" />
            <wire x2="1280" y1="768" y2="768" x1="1136" />
        </branch>
        <branch name="gpo(9)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="960" type="branch" />
            <wire x2="592" y1="960" y2="960" x1="480" />
        </branch>
        <text style="fontsize:64;fontname:Arial" x="776" y="1904">Buffers</text>
        <instance x="2032" y="256" name="XLXI_32" orien="R0">
        </instance>
        <instance x="592" y="992" name="XLXI_36" orien="R0">
        </instance>
        <branch name="gpo(10)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="576" type="branch" />
            <wire x2="592" y1="576" y2="576" x1="480" />
        </branch>
        <branch name="gpi(10)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="576" type="branch" />
            <wire x2="1280" y1="576" y2="576" x1="1136" />
        </branch>
        <branch name="gpi(11)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="640" type="branch" />
            <wire x2="1280" y1="640" y2="640" x1="1136" />
        </branch>
        <branch name="gpo(11)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="640" type="branch" />
            <wire x2="592" y1="640" y2="640" x1="480" />
        </branch>
        <branch name="INT_CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="704" type="branch" />
            <wire x2="592" y1="704" y2="704" x1="480" />
        </branch>
    </sheet>
    <sheet sheetnum="2" width="3520" height="2720">
        <instance x="480" y="592" name="XLXI_44" orien="R0" />
        <instance x="480" y="352" name="XLXI_42" orien="R0" />
        <instance x="480" y="832" name="XLXI_45" orien="R0" />
        <instance x="480" y="1072" name="XLXI_46" orien="R0" />
        <instance x="480" y="2272" name="XLXI_55" orien="R0" />
        <instance x="480" y="2512" name="XLXI_56" orien="R0" />
        <branch name="gpi(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="192" type="branch" />
            <wire x2="480" y1="192" y2="192" x1="320" />
        </branch>
        <branch name="gpo(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="256" type="branch" />
            <wire x2="480" y1="256" y2="256" x1="320" />
        </branch>
        <branch name="gpi(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="432" type="branch" />
            <wire x2="480" y1="432" y2="432" x1="320" />
        </branch>
        <branch name="gpo(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="496" type="branch" />
            <wire x2="480" y1="496" y2="496" x1="320" />
        </branch>
        <branch name="gpi(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="672" type="branch" />
            <wire x2="480" y1="672" y2="672" x1="320" />
        </branch>
        <branch name="gpo(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="736" type="branch" />
            <wire x2="480" y1="736" y2="736" x1="320" />
        </branch>
        <branch name="gpi(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="912" type="branch" />
            <wire x2="480" y1="912" y2="912" x1="320" />
        </branch>
        <branch name="gpo(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="976" type="branch" />
            <wire x2="480" y1="976" y2="976" x1="320" />
        </branch>
        <branch name="gpi(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="1152" type="branch" />
            <wire x2="480" y1="1152" y2="1152" x1="320" />
        </branch>
        <branch name="gpo(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="1216" type="branch" />
            <wire x2="480" y1="1216" y2="1216" x1="320" />
        </branch>
        <branch name="gpi(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="1392" type="branch" />
            <wire x2="480" y1="1392" y2="1392" x1="320" />
        </branch>
        <branch name="gpo(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="1456" type="branch" />
            <wire x2="480" y1="1456" y2="1456" x1="320" />
        </branch>
        <instance x="480" y="1312" name="XLXI_52" orien="R0" />
        <instance x="480" y="1552" name="XLXI_51" orien="R0" />
        <instance x="480" y="1792" name="XLXI_53" orien="R0" />
        <instance x="480" y="2032" name="XLXI_54" orien="R0" />
        <branch name="gpi(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="1632" type="branch" />
            <wire x2="480" y1="1632" y2="1632" x1="320" />
        </branch>
        <branch name="gpo(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="1696" type="branch" />
            <wire x2="480" y1="1696" y2="1696" x1="320" />
        </branch>
        <branch name="gpi(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="1872" type="branch" />
            <wire x2="480" y1="1872" y2="1872" x1="320" />
        </branch>
        <branch name="gpo(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="1936" type="branch" />
            <wire x2="480" y1="1936" y2="1936" x1="320" />
        </branch>
        <branch name="gpi(8)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="2112" type="branch" />
            <wire x2="480" y1="2112" y2="2112" x1="320" />
        </branch>
        <branch name="gpo(8)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="2176" type="branch" />
            <wire x2="480" y1="2176" y2="2176" x1="320" />
        </branch>
        <branch name="gpi(9)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="2352" type="branch" />
            <wire x2="480" y1="2352" y2="2352" x1="320" />
        </branch>
        <branch name="gpo(9)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="2416" type="branch" />
            <wire x2="480" y1="2416" y2="2416" x1="320" />
        </branch>
        <branch name="data_sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="160" y="2480" type="branch" />
            <wire x2="464" y1="2480" y2="2480" x1="160" />
            <wire x2="480" y1="2480" y2="2480" x1="464" />
            <wire x2="480" y1="320" y2="320" x1="464" />
            <wire x2="464" y1="320" y2="560" x1="464" />
            <wire x2="480" y1="560" y2="560" x1="464" />
            <wire x2="464" y1="560" y2="800" x1="464" />
            <wire x2="480" y1="800" y2="800" x1="464" />
            <wire x2="464" y1="800" y2="1040" x1="464" />
            <wire x2="480" y1="1040" y2="1040" x1="464" />
            <wire x2="464" y1="1040" y2="1280" x1="464" />
            <wire x2="480" y1="1280" y2="1280" x1="464" />
            <wire x2="464" y1="1280" y2="1520" x1="464" />
            <wire x2="480" y1="1520" y2="1520" x1="464" />
            <wire x2="464" y1="1520" y2="1760" x1="464" />
            <wire x2="480" y1="1760" y2="1760" x1="464" />
            <wire x2="464" y1="1760" y2="2000" x1="464" />
            <wire x2="480" y1="2000" y2="2000" x1="464" />
            <wire x2="464" y1="2000" y2="2240" x1="464" />
            <wire x2="480" y1="2240" y2="2240" x1="464" />
            <wire x2="464" y1="2240" y2="2480" x1="464" />
        </branch>
        <branch name="XLXN_94">
            <wire x2="960" y1="224" y2="224" x1="800" />
        </branch>
        <branch name="XLXN_95">
            <wire x2="960" y1="464" y2="464" x1="800" />
        </branch>
        <branch name="XLXN_96">
            <wire x2="960" y1="704" y2="704" x1="800" />
        </branch>
        <branch name="XLXN_97">
            <wire x2="960" y1="944" y2="944" x1="800" />
        </branch>
        <branch name="XLXN_98">
            <wire x2="960" y1="1184" y2="1184" x1="800" />
        </branch>
        <branch name="XLXN_99">
            <wire x2="960" y1="1424" y2="1424" x1="800" />
        </branch>
        <branch name="XLXN_100">
            <wire x2="960" y1="1664" y2="1664" x1="800" />
        </branch>
        <branch name="XLXN_101">
            <wire x2="960" y1="1904" y2="1904" x1="800" />
        </branch>
        <branch name="XLXN_102">
            <wire x2="960" y1="2144" y2="2144" x1="800" />
        </branch>
        <branch name="XLXN_103">
            <wire x2="960" y1="2384" y2="2384" x1="800" />
        </branch>
        <instance x="960" y="256" name="XLXI_64" orien="R0" />
        <instance x="960" y="496" name="XLXI_65" orien="R0" />
        <instance x="960" y="736" name="XLXI_66" orien="R0" />
        <instance x="960" y="976" name="XLXI_67" orien="R0" />
        <instance x="960" y="1216" name="XLXI_68" orien="R0" />
        <instance x="960" y="1456" name="XLXI_69" orien="R0" />
        <instance x="960" y="1696" name="XLXI_70" orien="R0" />
        <instance x="960" y="1936" name="XLXI_71" orien="R0" />
        <instance x="960" y="2176" name="XLXI_72" orien="R0" />
        <instance x="960" y="2416" name="XLXI_73" orien="R0" />
        <branch name="lp">
            <wire x2="1360" y1="224" y2="224" x1="1184" />
        </branch>
        <branch name="x0">
            <wire x2="1360" y1="464" y2="464" x1="1184" />
        </branch>
        <branch name="x1">
            <wire x2="1360" y1="704" y2="704" x1="1184" />
        </branch>
        <branch name="x2">
            <wire x2="1360" y1="944" y2="944" x1="1184" />
        </branch>
        <branch name="x3">
            <wire x2="1360" y1="1184" y2="1184" x1="1184" />
        </branch>
        <branch name="y0">
            <wire x2="1360" y1="1424" y2="1424" x1="1184" />
        </branch>
        <branch name="y1">
            <wire x2="1360" y1="1664" y2="1664" x1="1184" />
        </branch>
        <branch name="y2">
            <wire x2="1360" y1="1904" y2="1904" x1="1184" />
        </branch>
        <branch name="y3">
            <wire x2="1360" y1="2144" y2="2144" x1="1184" />
        </branch>
        <branch name="win">
            <wire x2="1360" y1="2384" y2="2384" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="1360" y="224" name="lp" orien="R0" />
        <iomarker fontsize="28" x="1360" y="464" name="x0" orien="R0" />
        <iomarker fontsize="28" x="1360" y="704" name="x1" orien="R0" />
        <iomarker fontsize="28" x="1360" y="944" name="x2" orien="R0" />
        <iomarker fontsize="28" x="1360" y="1184" name="x3" orien="R0" />
        <iomarker fontsize="28" x="1360" y="1424" name="y0" orien="R0" />
        <iomarker fontsize="28" x="1360" y="1664" name="y1" orien="R0" />
        <iomarker fontsize="28" x="1360" y="1904" name="y2" orien="R0" />
        <iomarker fontsize="28" x="1360" y="2144" name="y3" orien="R0" />
        <iomarker fontsize="28" x="1360" y="2384" name="win" orien="R0" />
        <instance x="1968" y="256" name="XLXI_37" orien="R0" />
        <branch name="btnc">
            <wire x2="1952" y1="224" y2="224" x1="1840" />
            <wire x2="1968" y1="224" y2="224" x1="1952" />
        </branch>
        <branch name="MAN_CLK">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="224" type="branch" />
            <wire x2="2400" y1="224" y2="224" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="1840" y="224" name="btnc" orien="R180" />
        <instance x="1968" y="496" name="XLXI_61" orien="R0" />
        <branch name="data_sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="464" type="branch" />
            <wire x2="2400" y1="464" y2="464" x1="2192" />
        </branch>
        <branch name="sw0">
            <wire x2="1968" y1="464" y2="464" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="1840" y="464" name="sw0" orien="R180" />
        <instance x="1968" y="736" name="XLXI_78" orien="R0" />
        <branch name="clk_sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="704" type="branch" />
            <wire x2="2400" y1="704" y2="704" x1="2192" />
        </branch>
        <branch name="sw15">
            <wire x2="1968" y1="704" y2="704" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="1840" y="704" name="sw15" orien="R180" />
        <instance x="1936" y="1072" name="XLXI_79" orien="R0" />
        <branch name="CLOCK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="912" type="branch" />
            <wire x2="1856" y1="912" y2="912" x1="1840" />
            <wire x2="1936" y1="912" y2="912" x1="1856" />
        </branch>
        <branch name="MAN_CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="976" type="branch" />
            <wire x2="1856" y1="976" y2="976" x1="1840" />
            <wire x2="1920" y1="976" y2="976" x1="1856" />
            <wire x2="1936" y1="976" y2="976" x1="1920" />
        </branch>
        <branch name="clk_sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="1040" type="branch" />
            <wire x2="1696" y1="1040" y2="1040" x1="1680" />
            <wire x2="1936" y1="1040" y2="1040" x1="1696" />
        </branch>
        <branch name="INT_CLK">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="944" type="branch" />
            <wire x2="2384" y1="944" y2="944" x1="2256" />
            <wire x2="2400" y1="944" y2="944" x1="2384" />
        </branch>
        <branch name="gpi(10)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="1200" type="branch" />
            <wire x2="1968" y1="1200" y2="1200" x1="1840" />
        </branch>
        <branch name="gpi(11)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="1440" type="branch" />
            <wire x2="1968" y1="1440" y2="1440" x1="1840" />
        </branch>
        <branch name="gpo(10)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="1680" type="branch" />
            <wire x2="1968" y1="1680" y2="1680" x1="1840" />
        </branch>
        <branch name="gpo(11)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="1920" type="branch" />
            <wire x2="1968" y1="1920" y2="1920" x1="1840" />
        </branch>
        <instance x="1968" y="1232" name="XLXI_80" orien="R0" />
        <instance x="1968" y="1472" name="XLXI_81" orien="R0" />
        <instance x="1968" y="1712" name="XLXI_82" orien="R0" />
        <instance x="1968" y="1952" name="XLXI_83" orien="R0" />
        <branch name="send">
            <wire x2="2208" y1="1200" y2="1200" x1="2192" />
            <wire x2="2400" y1="1200" y2="1200" x1="2208" />
        </branch>
        <branch name="recvConf">
            <wire x2="2208" y1="1440" y2="1440" x1="2192" />
            <wire x2="2400" y1="1440" y2="1440" x1="2208" />
        </branch>
        <branch name="recv">
            <wire x2="2208" y1="1680" y2="1680" x1="2192" />
            <wire x2="2400" y1="1680" y2="1680" x1="2208" />
        </branch>
        <branch name="sendConf">
            <wire x2="2208" y1="1920" y2="1920" x1="2192" />
            <wire x2="2400" y1="1920" y2="1920" x1="2208" />
        </branch>
        <iomarker fontsize="28" x="2400" y="1200" name="send" orien="R0" />
        <iomarker fontsize="28" x="2400" y="1440" name="recvConf" orien="R0" />
        <iomarker fontsize="28" x="2400" y="1680" name="recv" orien="R0" />
        <iomarker fontsize="28" x="2400" y="1920" name="sendConf" orien="R0" />
    </sheet>
</drawing>