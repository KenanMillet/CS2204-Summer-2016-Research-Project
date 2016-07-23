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
        <signal name="UartTx" />
        <signal name="USB_OUT" />
        <signal name="USB_IN" />
        <signal name="UartRx" />
        <signal name="XLXN_49" />
        <signal name="gpi(31:0)" />
        <signal name="gpo(31:0)" />
        <signal name="gpo(0)" />
        <signal name="gpo(4:1)" />
        <signal name="gpo(8:5)" />
        <signal name="gpi(4:1)" />
        <signal name="gpi(8:5)" />
        <signal name="gpi(9)" />
        <signal name="gpi(0)" />
        <signal name="gpo(9)" />
        <signal name="gpo(10)" />
        <signal name="gpi(10)" />
        <signal name="gpi(11)" />
        <signal name="gpo(11)" />
        <signal name="INT_CLK" />
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
        <signal name="data_sel" />
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
        <signal name="MAN_CLK" />
        <signal name="clk_sel" />
        <signal name="sendRecv" />
        <signal name="XLXN_153" />
        <signal name="XLXN_154" />
        <signal name="confirm" />
        <signal name="clockSel" />
        <signal name="dataSel" />
        <signal name="btnc" />
        <signal name="sw14" />
        <signal name="sw15" />
        <signal name="XLXN_161" />
        <signal name="XLXN_162" />
        <signal name="XLXN_163" />
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
        <port polarity="Output" name="sendRecv" />
        <port polarity="Output" name="confirm" />
        <port polarity="Output" name="clockSel" />
        <port polarity="Output" name="dataSel" />
        <port polarity="Input" name="btnc" />
        <port polarity="Input" name="sw14" />
        <port polarity="Input" name="sw15" />
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
        <blockdef name="communication">
            <timestamp>2016-7-23T17:41:7</timestamp>
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
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
        <block symbolname="m2_1" name="XLXI_38">
            <blockpin signalname="gpi(1)" name="D0" />
            <blockpin signalname="gpo(1)" name="D1" />
            <blockpin signalname="XLXN_163" name="S0" />
            <blockpin signalname="XLXN_95" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_39">
            <blockpin signalname="gpi(0)" name="D0" />
            <blockpin signalname="gpo(0)" name="D1" />
            <blockpin signalname="XLXN_163" name="S0" />
            <blockpin signalname="XLXN_94" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_40">
            <blockpin signalname="gpi(2)" name="D0" />
            <blockpin signalname="gpo(2)" name="D1" />
            <blockpin signalname="XLXN_163" name="S0" />
            <blockpin signalname="XLXN_96" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_41">
            <blockpin signalname="gpi(3)" name="D0" />
            <blockpin signalname="gpo(3)" name="D1" />
            <blockpin signalname="XLXN_163" name="S0" />
            <blockpin signalname="XLXN_97" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_42">
            <blockpin signalname="gpi(8)" name="D0" />
            <blockpin signalname="gpo(8)" name="D1" />
            <blockpin signalname="XLXN_163" name="S0" />
            <blockpin signalname="XLXN_102" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_43">
            <blockpin signalname="gpi(9)" name="D0" />
            <blockpin signalname="gpo(9)" name="D1" />
            <blockpin signalname="XLXN_163" name="S0" />
            <blockpin signalname="XLXN_103" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_44">
            <blockpin signalname="gpi(4)" name="D0" />
            <blockpin signalname="gpo(4)" name="D1" />
            <blockpin signalname="XLXN_163" name="S0" />
            <blockpin signalname="XLXN_98" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_45">
            <blockpin signalname="gpi(5)" name="D0" />
            <blockpin signalname="gpo(5)" name="D1" />
            <blockpin signalname="XLXN_163" name="S0" />
            <blockpin signalname="XLXN_99" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_46">
            <blockpin signalname="gpi(6)" name="D0" />
            <blockpin signalname="gpo(6)" name="D1" />
            <blockpin signalname="XLXN_163" name="S0" />
            <blockpin signalname="XLXN_100" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_47">
            <blockpin signalname="gpi(7)" name="D0" />
            <blockpin signalname="gpo(7)" name="D1" />
            <blockpin signalname="XLXN_163" name="S0" />
            <blockpin signalname="XLXN_101" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_48">
            <blockpin signalname="XLXN_94" name="I" />
            <blockpin signalname="lp" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_49">
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
        <block symbolname="m2_1" name="XLXI_79">
            <blockpin signalname="CLOCK" name="D0" />
            <blockpin signalname="MAN_CLK" name="D1" />
            <blockpin signalname="clk_sel" name="S0" />
            <blockpin signalname="INT_CLK" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_80">
            <blockpin signalname="XLXN_153" name="I" />
            <blockpin signalname="sendRecv" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_81">
            <blockpin signalname="XLXN_154" name="I" />
            <blockpin signalname="confirm" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_85">
            <blockpin signalname="gpi(11)" name="D0" />
            <blockpin signalname="gpo(11)" name="D1" />
            <blockpin signalname="XLXN_163" name="S0" />
            <blockpin signalname="XLXN_154" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_84">
            <blockpin signalname="gpi(10)" name="D0" />
            <blockpin signalname="gpo(10)" name="D1" />
            <blockpin signalname="XLXN_163" name="S0" />
            <blockpin signalname="XLXN_153" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_82">
            <blockpin signalname="clk_sel" name="I" />
            <blockpin signalname="clockSel" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_83">
            <blockpin signalname="data_sel" name="I" />
            <blockpin signalname="dataSel" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_37">
            <blockpin signalname="btnc" name="I" />
            <blockpin signalname="MAN_CLK" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_59">
            <blockpin signalname="sw14" name="I" />
            <blockpin signalname="data_sel" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_78">
            <blockpin signalname="sw15" name="I" />
            <blockpin signalname="clk_sel" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_87">
            <blockpin signalname="data_sel" name="I" />
            <blockpin signalname="XLXN_163" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <line x2="1744" y1="1840" y2="1840" x1="68" />
        <branch name="CLOCK">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="2240" type="branch" />
            <wire x2="1072" y1="2240" y2="2240" x1="896" />
        </branch>
        <branch name="OBClk">
            <wire x2="656" y1="2240" y2="2240" x1="544" />
            <wire x2="672" y1="2240" y2="2240" x1="656" />
        </branch>
        <instance x="672" y="2368" name="XLXI_26" orien="R0" />
        <instance x="672" y="2448" name="XLXI_27" orien="R0" />
        <branch name="UartTx">
            <wire x2="656" y1="2336" y2="2336" x1="544" />
            <wire x2="672" y1="2336" y2="2336" x1="656" />
        </branch>
        <branch name="USB_OUT">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="544" y="2416" type="branch" />
            <wire x2="672" y1="2416" y2="2416" x1="544" />
        </branch>
        <branch name="USB_IN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="2336" type="branch" />
            <wire x2="1072" y1="2336" y2="2336" x1="896" />
        </branch>
        <branch name="UartRx">
            <wire x2="912" y1="2416" y2="2416" x1="896" />
            <wire x2="1072" y1="2416" y2="2416" x1="912" />
        </branch>
        <instance x="672" y="2272" name="XLXI_28" orien="R0" />
        <text style="fontsize:64;fontname:Arial" x="808" y="1920">Buffers</text>
        <iomarker fontsize="28" x="544" y="2240" name="OBClk" orien="R180" />
        <iomarker fontsize="28" x="544" y="2336" name="UartTx" orien="R180" />
        <iomarker fontsize="28" x="1072" y="2416" name="UartRx" orien="R0" />
        <text style="fontsize:64;fontname:Arial" x="468" y="176">Main Functionality</text>
        <text style="fontsize:64;fontname:Arial" x="2032" y="176">Communication (MicroBlaze)</text>
        <branch name="XLXN_49">
            <wire x2="2016" y1="416" y2="416" x1="2000" />
            <wire x2="2032" y1="416" y2="416" x1="2016" />
        </branch>
        <instance x="1872" y="352" name="XLXI_15" orien="R90" />
        <branch name="gpi(31:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1840" y="608" type="branch" />
            <wire x2="2032" y1="608" y2="608" x1="1840" />
        </branch>
        <branch name="USB_IN">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1904" y="528" type="branch" />
            <wire x2="2016" y1="528" y2="528" x1="1904" />
            <wire x2="2032" y1="448" y2="448" x1="2016" />
            <wire x2="2016" y1="448" y2="528" x1="2016" />
        </branch>
        <branch name="USB_OUT">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2880" y="384" type="branch" />
            <wire x2="2816" y1="384" y2="384" x1="2800" />
            <wire x2="2880" y1="384" y2="384" x1="2816" />
        </branch>
        <branch name="gpo(31:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3040" y="1088" type="branch" />
            <wire x2="2816" y1="1088" y2="1088" x1="2800" />
            <wire x2="3040" y1="1088" y2="1088" x1="2816" />
        </branch>
        <instance x="2032" y="304" name="mcs_0" orien="R0">
        </instance>
        <branch name="gpo(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="976" type="branch" />
            <wire x2="624" y1="976" y2="976" x1="512" />
        </branch>
        <branch name="gpo(4:1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="1040" type="branch" />
            <wire x2="624" y1="1040" y2="1040" x1="512" />
        </branch>
        <branch name="gpo(8:5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="1104" type="branch" />
            <wire x2="624" y1="1104" y2="1104" x1="512" />
        </branch>
        <branch name="gpi(4:1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1040" type="branch" />
            <wire x2="1312" y1="1040" y2="1040" x1="1168" />
        </branch>
        <branch name="gpi(8:5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1104" type="branch" />
            <wire x2="1312" y1="1104" y2="1104" x1="1168" />
        </branch>
        <branch name="gpi(9)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1168" type="branch" />
            <wire x2="1312" y1="1168" y2="1168" x1="1168" />
        </branch>
        <branch name="gpi(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="976" type="branch" />
            <wire x2="1312" y1="976" y2="976" x1="1168" />
        </branch>
        <branch name="gpo(9)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="1168" type="branch" />
            <wire x2="624" y1="1168" y2="1168" x1="512" />
        </branch>
        <instance x="624" y="1200" name="XLXI_36" orien="R0">
        </instance>
        <branch name="gpo(10)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="784" type="branch" />
            <wire x2="624" y1="784" y2="784" x1="512" />
        </branch>
        <branch name="gpi(10)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="784" type="branch" />
            <wire x2="1312" y1="784" y2="784" x1="1168" />
        </branch>
        <branch name="gpi(11)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="848" type="branch" />
            <wire x2="1312" y1="848" y2="848" x1="1168" />
        </branch>
        <branch name="gpo(11)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="848" type="branch" />
            <wire x2="624" y1="848" y2="848" x1="512" />
        </branch>
        <branch name="INT_CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="912" type="branch" />
            <wire x2="624" y1="912" y2="912" x1="512" />
        </branch>
        <branch name="CLOCK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1904" y="320" type="branch" />
            <wire x2="2016" y1="320" y2="320" x1="1904" />
            <wire x2="2016" y1="320" y2="384" x1="2016" />
            <wire x2="2032" y1="384" y2="384" x1="2016" />
        </branch>
    </sheet>
    <sheet sheetnum="2" width="3520" height="2720">
        <instance x="592" y="656" name="XLXI_38" orien="R0" />
        <instance x="592" y="416" name="XLXI_39" orien="R0" />
        <instance x="592" y="896" name="XLXI_40" orien="R0" />
        <instance x="592" y="1136" name="XLXI_41" orien="R0" />
        <instance x="592" y="2336" name="XLXI_42" orien="R0" />
        <instance x="592" y="2576" name="XLXI_43" orien="R0" />
        <branch name="gpi(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="256" type="branch" />
            <wire x2="592" y1="256" y2="256" x1="432" />
        </branch>
        <branch name="gpo(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="320" type="branch" />
            <wire x2="592" y1="320" y2="320" x1="432" />
        </branch>
        <branch name="gpi(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="496" type="branch" />
            <wire x2="592" y1="496" y2="496" x1="432" />
        </branch>
        <branch name="gpo(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="560" type="branch" />
            <wire x2="592" y1="560" y2="560" x1="432" />
        </branch>
        <branch name="gpi(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="736" type="branch" />
            <wire x2="592" y1="736" y2="736" x1="432" />
        </branch>
        <branch name="gpo(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="800" type="branch" />
            <wire x2="592" y1="800" y2="800" x1="432" />
        </branch>
        <branch name="gpi(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="976" type="branch" />
            <wire x2="592" y1="976" y2="976" x1="432" />
        </branch>
        <branch name="gpo(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="1040" type="branch" />
            <wire x2="592" y1="1040" y2="1040" x1="432" />
        </branch>
        <branch name="gpi(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="1216" type="branch" />
            <wire x2="592" y1="1216" y2="1216" x1="432" />
        </branch>
        <branch name="gpo(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="1280" type="branch" />
            <wire x2="592" y1="1280" y2="1280" x1="432" />
        </branch>
        <branch name="gpi(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="1456" type="branch" />
            <wire x2="592" y1="1456" y2="1456" x1="432" />
        </branch>
        <branch name="gpo(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="1520" type="branch" />
            <wire x2="592" y1="1520" y2="1520" x1="432" />
        </branch>
        <instance x="592" y="1376" name="XLXI_44" orien="R0" />
        <instance x="592" y="1616" name="XLXI_45" orien="R0" />
        <instance x="592" y="1856" name="XLXI_46" orien="R0" />
        <instance x="592" y="2096" name="XLXI_47" orien="R0" />
        <branch name="gpi(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="1696" type="branch" />
            <wire x2="592" y1="1696" y2="1696" x1="432" />
        </branch>
        <branch name="gpo(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="1760" type="branch" />
            <wire x2="592" y1="1760" y2="1760" x1="432" />
        </branch>
        <branch name="gpi(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="1936" type="branch" />
            <wire x2="592" y1="1936" y2="1936" x1="432" />
        </branch>
        <branch name="gpo(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="2000" type="branch" />
            <wire x2="592" y1="2000" y2="2000" x1="432" />
        </branch>
        <branch name="gpi(8)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="2176" type="branch" />
            <wire x2="592" y1="2176" y2="2176" x1="432" />
        </branch>
        <branch name="gpo(8)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="2240" type="branch" />
            <wire x2="592" y1="2240" y2="2240" x1="432" />
        </branch>
        <branch name="gpi(9)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="2416" type="branch" />
            <wire x2="592" y1="2416" y2="2416" x1="432" />
        </branch>
        <branch name="gpo(9)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="2480" type="branch" />
            <wire x2="592" y1="2480" y2="2480" x1="432" />
        </branch>
        <branch name="XLXN_94">
            <wire x2="1072" y1="288" y2="288" x1="912" />
        </branch>
        <branch name="XLXN_95">
            <wire x2="1072" y1="528" y2="528" x1="912" />
        </branch>
        <branch name="XLXN_96">
            <wire x2="1072" y1="768" y2="768" x1="912" />
        </branch>
        <branch name="XLXN_97">
            <wire x2="1072" y1="1008" y2="1008" x1="912" />
        </branch>
        <branch name="XLXN_98">
            <wire x2="1072" y1="1248" y2="1248" x1="912" />
        </branch>
        <branch name="XLXN_99">
            <wire x2="1072" y1="1488" y2="1488" x1="912" />
        </branch>
        <branch name="XLXN_100">
            <wire x2="1072" y1="1728" y2="1728" x1="912" />
        </branch>
        <branch name="XLXN_101">
            <wire x2="1072" y1="1968" y2="1968" x1="912" />
        </branch>
        <branch name="XLXN_102">
            <wire x2="1072" y1="2208" y2="2208" x1="912" />
        </branch>
        <branch name="XLXN_103">
            <wire x2="1072" y1="2448" y2="2448" x1="912" />
        </branch>
        <instance x="1072" y="320" name="XLXI_48" orien="R0" />
        <instance x="1072" y="560" name="XLXI_49" orien="R0" />
        <instance x="1072" y="800" name="XLXI_66" orien="R0" />
        <instance x="1072" y="1040" name="XLXI_67" orien="R0" />
        <instance x="1072" y="1280" name="XLXI_68" orien="R0" />
        <instance x="1072" y="1520" name="XLXI_69" orien="R0" />
        <instance x="1072" y="1760" name="XLXI_70" orien="R0" />
        <instance x="1072" y="2000" name="XLXI_71" orien="R0" />
        <instance x="1072" y="2240" name="XLXI_72" orien="R0" />
        <instance x="1072" y="2480" name="XLXI_73" orien="R0" />
        <branch name="lp">
            <wire x2="1472" y1="288" y2="288" x1="1296" />
        </branch>
        <branch name="x0">
            <wire x2="1472" y1="528" y2="528" x1="1296" />
        </branch>
        <branch name="x1">
            <wire x2="1472" y1="768" y2="768" x1="1296" />
        </branch>
        <branch name="x2">
            <wire x2="1472" y1="1008" y2="1008" x1="1296" />
        </branch>
        <branch name="x3">
            <wire x2="1472" y1="1248" y2="1248" x1="1296" />
        </branch>
        <branch name="y0">
            <wire x2="1472" y1="1488" y2="1488" x1="1296" />
        </branch>
        <branch name="y1">
            <wire x2="1472" y1="1728" y2="1728" x1="1296" />
        </branch>
        <branch name="y2">
            <wire x2="1472" y1="1968" y2="1968" x1="1296" />
        </branch>
        <branch name="y3">
            <wire x2="1472" y1="2208" y2="2208" x1="1296" />
        </branch>
        <branch name="win">
            <wire x2="1472" y1="2448" y2="2448" x1="1296" />
        </branch>
        <instance x="2048" y="1136" name="XLXI_79" orien="R0" />
        <branch name="CLOCK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="976" type="branch" />
            <wire x2="2048" y1="976" y2="976" x1="1952" />
        </branch>
        <branch name="MAN_CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="1040" type="branch" />
            <wire x2="2048" y1="1040" y2="1040" x1="1952" />
        </branch>
        <branch name="clk_sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="1104" type="branch" />
            <wire x2="2048" y1="1104" y2="1104" x1="1792" />
        </branch>
        <branch name="INT_CLK">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2832" y="1008" type="branch" />
            <wire x2="2832" y1="1008" y2="1008" x1="2368" />
        </branch>
        <iomarker fontsize="28" x="1472" y="288" name="lp" orien="R0" />
        <iomarker fontsize="28" x="1472" y="528" name="x0" orien="R0" />
        <iomarker fontsize="28" x="1472" y="768" name="x1" orien="R0" />
        <iomarker fontsize="28" x="1472" y="1008" name="x2" orien="R0" />
        <iomarker fontsize="28" x="1472" y="1248" name="x3" orien="R0" />
        <iomarker fontsize="28" x="1472" y="1488" name="y0" orien="R0" />
        <iomarker fontsize="28" x="1472" y="1728" name="y1" orien="R0" />
        <iomarker fontsize="28" x="1472" y="1968" name="y2" orien="R0" />
        <iomarker fontsize="28" x="1472" y="2208" name="y3" orien="R0" />
        <iomarker fontsize="28" x="1472" y="2448" name="win" orien="R0" />
        <instance x="2400" y="1296" name="XLXI_80" orien="R0" />
        <instance x="2400" y="1536" name="XLXI_81" orien="R0" />
        <branch name="sendRecv">
            <wire x2="2832" y1="1264" y2="1264" x1="2624" />
        </branch>
        <branch name="XLXN_153">
            <wire x2="2400" y1="1264" y2="1264" x1="2368" />
        </branch>
        <instance x="2048" y="1632" name="XLXI_85" orien="R0" />
        <branch name="XLXN_154">
            <wire x2="2400" y1="1504" y2="1504" x1="2368" />
        </branch>
        <instance x="2048" y="1392" name="XLXI_84" orien="R0" />
        <iomarker fontsize="28" x="2832" y="1264" name="sendRecv" orien="R0" />
        <iomarker fontsize="28" x="2832" y="1504" name="confirm" orien="R0" />
        <branch name="gpi(10)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="1232" type="branch" />
            <wire x2="2048" y1="1232" y2="1232" x1="1952" />
        </branch>
        <branch name="gpo(10)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="1296" type="branch" />
            <wire x2="2048" y1="1296" y2="1296" x1="1952" />
        </branch>
        <branch name="gpi(11)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="1472" type="branch" />
            <wire x2="2048" y1="1472" y2="1472" x1="1952" />
        </branch>
        <branch name="gpo(11)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="1536" type="branch" />
            <wire x2="2048" y1="1536" y2="1536" x1="1952" />
        </branch>
        <branch name="confirm">
            <wire x2="2832" y1="1504" y2="1504" x1="2624" />
        </branch>
        <instance x="2400" y="1776" name="XLXI_82" orien="R0" />
        <instance x="2400" y="2016" name="XLXI_83" orien="R0" />
        <branch name="clockSel">
            <wire x2="2832" y1="1744" y2="1744" x1="2624" />
        </branch>
        <branch name="dataSel">
            <wire x2="2832" y1="1984" y2="1984" x1="2624" />
        </branch>
        <branch name="clk_sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2272" y="1744" type="branch" />
            <wire x2="2400" y1="1744" y2="1744" x1="2272" />
        </branch>
        <branch name="data_sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2272" y="1984" type="branch" />
            <wire x2="2400" y1="1984" y2="1984" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2832" y="1744" name="clockSel" orien="R0" />
        <iomarker fontsize="28" x="2832" y="1984" name="dataSel" orien="R0" />
        <instance x="2400" y="320" name="XLXI_37" orien="R0" />
        <branch name="btnc">
            <wire x2="2400" y1="288" y2="288" x1="2272" />
        </branch>
        <branch name="MAN_CLK">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2832" y="288" type="branch" />
            <wire x2="2832" y1="288" y2="288" x1="2624" />
        </branch>
        <instance x="2400" y="560" name="XLXI_59" orien="R0" />
        <branch name="sw14">
            <wire x2="2400" y1="528" y2="528" x1="2272" />
        </branch>
        <instance x="2400" y="800" name="XLXI_78" orien="R0" />
        <branch name="clk_sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2832" y="768" type="branch" />
            <wire x2="2832" y1="768" y2="768" x1="2624" />
        </branch>
        <branch name="sw15">
            <wire x2="2400" y1="768" y2="768" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2272" y="288" name="btnc" orien="R180" />
        <iomarker fontsize="28" x="2272" y="528" name="sw14" orien="R180" />
        <iomarker fontsize="28" x="2272" y="768" name="sw15" orien="R180" />
        <branch name="data_sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2832" y="528" type="branch" />
            <wire x2="2832" y1="528" y2="528" x1="2624" />
        </branch>
        <instance x="256" y="2624" name="XLXI_87" orien="R0" />
        <branch name="data_sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="160" y="2592" type="branch" />
            <wire x2="256" y1="2592" y2="2592" x1="160" />
        </branch>
        <branch name="XLXN_163">
            <wire x2="576" y1="2592" y2="2592" x1="480" />
            <wire x2="1744" y1="2592" y2="2592" x1="576" />
            <wire x2="592" y1="384" y2="384" x1="576" />
            <wire x2="576" y1="384" y2="624" x1="576" />
            <wire x2="592" y1="624" y2="624" x1="576" />
            <wire x2="576" y1="624" y2="864" x1="576" />
            <wire x2="592" y1="864" y2="864" x1="576" />
            <wire x2="576" y1="864" y2="1104" x1="576" />
            <wire x2="592" y1="1104" y2="1104" x1="576" />
            <wire x2="576" y1="1104" y2="1344" x1="576" />
            <wire x2="592" y1="1344" y2="1344" x1="576" />
            <wire x2="576" y1="1344" y2="1584" x1="576" />
            <wire x2="592" y1="1584" y2="1584" x1="576" />
            <wire x2="576" y1="1584" y2="1824" x1="576" />
            <wire x2="592" y1="1824" y2="1824" x1="576" />
            <wire x2="576" y1="1824" y2="2064" x1="576" />
            <wire x2="592" y1="2064" y2="2064" x1="576" />
            <wire x2="576" y1="2064" y2="2304" x1="576" />
            <wire x2="592" y1="2304" y2="2304" x1="576" />
            <wire x2="576" y1="2304" y2="2544" x1="576" />
            <wire x2="592" y1="2544" y2="2544" x1="576" />
            <wire x2="576" y1="2544" y2="2592" x1="576" />
            <wire x2="2048" y1="1360" y2="1360" x1="1744" />
            <wire x2="1744" y1="1360" y2="1600" x1="1744" />
            <wire x2="2048" y1="1600" y2="1600" x1="1744" />
            <wire x2="1744" y1="1600" y2="2592" x1="1744" />
        </branch>
    </sheet>
</drawing>