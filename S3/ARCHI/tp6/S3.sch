<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(15:0)" />
        <signal name="XLXN_2(15:0)" />
        <signal name="XLXN_3(15:0)" />
        <signal name="XLXN_4(15:0)" />
        <signal name="XLXN_5(15:0)" />
        <signal name="Led(15:0)" />
        <signal name="XLXN_7(15:0)" />
        <signal name="XLXN_8(15:0)" />
        <signal name="XLXN_9(15:0)" />
        <signal name="XLXN_10(15:0)" />
        <signal name="XLXN_11(15:0)" />
        <signal name="XLXN_12(15:0)" />
        <signal name="XLXN_13(15:0)" />
        <signal name="XLXN_14(15:0)" />
        <signal name="XLXN_15(15:0)" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31(15:0)" />
        <signal name="XLXN_32(15:0)" />
        <signal name="XLXN_33(15:0)" />
        <signal name="XLXN_34(15:0)" />
        <signal name="XLXN_35(15:0)" />
        <signal name="XLXN_36(15:0)" />
        <signal name="XLXN_37(15:0)" />
        <signal name="XLXN_38(15:0)" />
        <signal name="XLXN_39(15:0)" />
        <signal name="XLXN_40(15:0)" />
        <signal name="XLXN_41(15:0)" />
        <signal name="XLXN_42(15:0)" />
        <signal name="XLXN_43(15:0)" />
        <signal name="XLXN_45(15:0)" />
        <signal name="XLXN_46(15:0)" />
        <signal name="bus_data(15:0)" />
        <signal name="clk" />
        <signal name="switches(15:0)" />
        <signal name="XLXN_79" />
        <signal name="anodes(3:0)" />
        <signal name="sevenseg(6:0)" />
        <signal name="XLXN_82" />
        <port polarity="Output" name="Led(15:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="switches(15:0)" />
        <port polarity="Output" name="anodes(3:0)" />
        <port polarity="Output" name="sevenseg(6:0)" />
        <blockdef name="fd16ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <rect width="64" x="320" y="-268" height="24" />
            <rect width="64" x="0" y="-268" height="24" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="connect16">
            <timestamp>2013-11-4T10:28:2</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
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
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="clkdiv">
            <timestamp>2013-11-18T9:28:41</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="afficheur16">
            <timestamp>2013-11-18T10:15:40</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="fd16ce" name="R1">
            <blockpin signalname="clk" name="C" />
            <blockpin name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="bus_data(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_1(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="R2">
            <blockpin signalname="clk" name="C" />
            <blockpin name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="bus_data(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_2(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="R3">
            <blockpin signalname="clk" name="C" />
            <blockpin name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="bus_data(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_3(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="R4">
            <blockpin signalname="clk" name="C" />
            <blockpin name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="bus_data(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_4(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="R5">
            <blockpin signalname="clk" name="C" />
            <blockpin name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="bus_data(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_5(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="Rled">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_82" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="bus_data(15:0)" name="D(15:0)" />
            <blockpin signalname="Led(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="Rsw">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_82" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="switches(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_7(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="R7seg">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_82" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="bus_data(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_8(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="Rsrc1">
            <blockpin signalname="clk" name="C" />
            <blockpin name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="bus_data(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_9(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="Rsrc2">
            <blockpin signalname="clk" name="C" />
            <blockpin name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="bus_data(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_10(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="Rdest">
            <blockpin signalname="clk" name="C" />
            <blockpin name="CE" />
            <blockpin name="CLR" />
            <blockpin name="D(15:0)" />
            <blockpin signalname="XLXN_11(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="Ram">
            <blockpin signalname="clk" name="C" />
            <blockpin name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="bus_data(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_12(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="Rdm">
            <blockpin signalname="clk" name="C" />
            <blockpin name="CE" />
            <blockpin name="CLR" />
            <blockpin name="D(15:0)" />
            <blockpin signalname="XLXN_13(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="CO">
            <blockpin signalname="clk" name="C" />
            <blockpin name="CE" />
            <blockpin name="CLR" />
            <blockpin name="D(15:0)" />
            <blockpin signalname="XLXN_14(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="RI">
            <blockpin signalname="clk" name="C" />
            <blockpin name="CE" />
            <blockpin name="CLR" />
            <blockpin name="D(15:0)" />
            <blockpin signalname="XLXN_15(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="connect16" name="CR1">
            <blockpin signalname="XLXN_46(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_1(15:0)" name="R(15:0)" />
            <blockpin signalname="XLXN_16" name="connect" />
            <blockpin signalname="XLXN_31(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connect16" name="CR2">
            <blockpin signalname="XLXN_31(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_2(15:0)" name="R(15:0)" />
            <blockpin signalname="XLXN_17" name="connect" />
            <blockpin signalname="XLXN_32(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connect16" name="CR3">
            <blockpin signalname="XLXN_32(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_3(15:0)" name="R(15:0)" />
            <blockpin signalname="XLXN_18" name="connect" />
            <blockpin signalname="XLXN_33(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connect16" name="CR4">
            <blockpin signalname="XLXN_33(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_4(15:0)" name="R(15:0)" />
            <blockpin signalname="XLXN_19" name="connect" />
            <blockpin signalname="XLXN_34(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connect16" name="CR5">
            <blockpin signalname="XLXN_34(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_5(15:0)" name="R(15:0)" />
            <blockpin signalname="XLXN_20" name="connect" />
            <blockpin signalname="XLXN_35(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connect16" name="CRled">
            <blockpin signalname="XLXN_35(15:0)" name="Din(15:0)" />
            <blockpin signalname="Led(15:0)" name="R(15:0)" />
            <blockpin signalname="XLXN_21" name="connect" />
            <blockpin signalname="XLXN_36(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connect16" name="CRsw">
            <blockpin signalname="XLXN_36(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_7(15:0)" name="R(15:0)" />
            <blockpin signalname="XLXN_82" name="connect" />
            <blockpin signalname="XLXN_37(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connect16" name="CR7seg">
            <blockpin signalname="XLXN_37(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_8(15:0)" name="R(15:0)" />
            <blockpin signalname="XLXN_23" name="connect" />
            <blockpin signalname="XLXN_39(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connect16" name="CRsrc1">
            <blockpin signalname="XLXN_39(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_9(15:0)" name="R(15:0)" />
            <blockpin signalname="XLXN_24" name="connect" />
            <blockpin signalname="XLXN_38(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connect16" name="CRsrc2">
            <blockpin signalname="XLXN_38(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_10(15:0)" name="R(15:0)" />
            <blockpin signalname="XLXN_25" name="connect" />
            <blockpin signalname="XLXN_40(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connect16" name="CRdest">
            <blockpin signalname="XLXN_40(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_11(15:0)" name="R(15:0)" />
            <blockpin signalname="XLXN_26" name="connect" />
            <blockpin signalname="XLXN_41(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connect16" name="CRam">
            <blockpin signalname="XLXN_41(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_12(15:0)" name="R(15:0)" />
            <blockpin signalname="XLXN_27" name="connect" />
            <blockpin signalname="XLXN_42(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connect16" name="CRdm">
            <blockpin signalname="XLXN_42(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_13(15:0)" name="R(15:0)" />
            <blockpin signalname="XLXN_28" name="connect" />
            <blockpin signalname="XLXN_43(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connect16" name="CRO">
            <blockpin signalname="XLXN_43(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_14(15:0)" name="R(15:0)" />
            <blockpin signalname="XLXN_29" name="connect" />
            <blockpin signalname="XLXN_45(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connect16" name="CRI">
            <blockpin signalname="XLXN_45(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_15(15:0)" name="R(15:0)" />
            <blockpin signalname="XLXN_30" name="connect" />
            <blockpin signalname="bus_data(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_33">
            <blockpin signalname="XLXN_16" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_34">
            <blockpin signalname="XLXN_17" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_35">
            <blockpin signalname="XLXN_18" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_36">
            <blockpin signalname="XLXN_19" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_37">
            <blockpin signalname="XLXN_20" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_38">
            <blockpin signalname="XLXN_21" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_40">
            <blockpin signalname="XLXN_23" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_41">
            <blockpin signalname="XLXN_24" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_42">
            <blockpin signalname="XLXN_25" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_43">
            <blockpin signalname="XLXN_26" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_44">
            <blockpin signalname="XLXN_27" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_45">
            <blockpin signalname="XLXN_28" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_46">
            <blockpin signalname="XLXN_29" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_47">
            <blockpin signalname="XLXN_30" name="G" />
        </block>
        <block symbolname="constant" name="XLXI_48">
            <attr value="0000" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 16 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_46(15:0)" name="O" />
        </block>
        <block symbolname="clkdiv" name="XLXI_49">
            <blockpin signalname="clk" name="clk" />
            <blockpin name="clksec" />
            <blockpin signalname="XLXN_79" name="clk190" />
        </block>
        <block symbolname="afficheur16" name="XLXI_50">
            <blockpin signalname="XLXN_79" name="clk" />
            <blockpin signalname="XLXN_8(15:0)" name="data(15:0)" />
            <blockpin signalname="sevenseg(6:0)" name="sevenseg(6:0)" />
            <blockpin signalname="anodes(3:0)" name="anodes(3:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_52">
            <blockpin signalname="XLXN_82" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5382" height="7609">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="1904" y="5680" name="CO" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="224" y="-176" type="instance" />
        </instance>
        <instance x="1904" y="6048" name="RI" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="240" y="-176" type="instance" />
        </instance>
        <instance x="1904" y="624" name="R1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="144" y="-160" type="instance" />
        </instance>
        <instance x="1904" y="1024" name="R2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="224" y="-192" type="instance" />
        </instance>
        <instance x="1904" y="1392" name="R3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="208" y="-160" type="instance" />
        </instance>
        <instance x="1904" y="1808" name="R4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="224" y="-160" type="instance" />
        </instance>
        <instance x="1904" y="2208" name="R5" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="224" y="-160" type="instance" />
        </instance>
        <instance x="1904" y="2576" name="Rled" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="224" y="-176" type="instance" />
        </instance>
        <instance x="1904" y="2944" name="Rsw" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="224" y="-160" type="instance" />
        </instance>
        <instance x="1904" y="3312" name="R7seg" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="240" y="-160" type="instance" />
        </instance>
        <instance x="1904" y="3712" name="Rsrc1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="208" y="-160" type="instance" />
        </instance>
        <instance x="1904" y="4144" name="Rsrc2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="192" y="-160" type="instance" />
        </instance>
        <instance x="1904" y="4528" name="Rdest" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="224" y="-176" type="instance" />
        </instance>
        <instance x="1904" y="4928" name="Ram" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="224" y="-176" type="instance" />
        </instance>
        <instance x="1904" y="5296" name="Rdm" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="240" y="-144" type="instance" />
        </instance>
        <instance x="2400" y="464" name="CR1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="224" y="-64" type="instance" />
        </instance>
        <instance x="2400" y="880" name="CR2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="224" y="-64" type="instance" />
        </instance>
        <instance x="2400" y="1248" name="CR3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="240" y="-80" type="instance" />
        </instance>
        <instance x="2400" y="1664" name="CR4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="240" y="-96" type="instance" />
        </instance>
        <instance x="2400" y="2048" name="CR5" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="240" y="-96" type="instance" />
        </instance>
        <instance x="2400" y="2432" name="CRled" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="240" y="-48" type="instance" />
        </instance>
        <instance x="2400" y="2784" name="CRsw" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="224" y="-64" type="instance" />
        </instance>
        <instance x="2400" y="3168" name="CR7seg" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="240" y="-64" type="instance" />
        </instance>
        <instance x="2400" y="3552" name="CRsrc1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="240" y="-64" type="instance" />
        </instance>
        <instance x="2400" y="4000" name="CRsrc2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="224" y="-64" type="instance" />
        </instance>
        <instance x="2400" y="4384" name="CRdest" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="192" y="-64" type="instance" />
        </instance>
        <instance x="2400" y="4800" name="CRam" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="240" y="-64" type="instance" />
        </instance>
        <instance x="2400" y="5136" name="CRdm" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="240" y="-80" type="instance" />
        </instance>
        <instance x="2400" y="5520" name="CRO" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="224" y="-48" type="instance" />
        </instance>
        <instance x="2400" y="5888" name="CRI" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="224" y="-64" type="instance" />
        </instance>
        <branch name="XLXN_1(15:0)">
            <wire x2="2400" y1="368" y2="368" x1="2288" />
        </branch>
        <branch name="XLXN_2(15:0)">
            <wire x2="2336" y1="768" y2="768" x1="2288" />
            <wire x2="2336" y1="768" y2="784" x1="2336" />
            <wire x2="2400" y1="784" y2="784" x1="2336" />
        </branch>
        <branch name="XLXN_3(15:0)">
            <wire x2="2336" y1="1136" y2="1136" x1="2288" />
            <wire x2="2336" y1="1136" y2="1152" x1="2336" />
            <wire x2="2400" y1="1152" y2="1152" x1="2336" />
        </branch>
        <branch name="XLXN_4(15:0)">
            <wire x2="2336" y1="1552" y2="1552" x1="2288" />
            <wire x2="2336" y1="1552" y2="1568" x1="2336" />
            <wire x2="2400" y1="1568" y2="1568" x1="2336" />
        </branch>
        <branch name="XLXN_5(15:0)">
            <wire x2="2400" y1="1952" y2="1952" x1="2288" />
        </branch>
        <branch name="Led(15:0)">
            <wire x2="2320" y1="2192" y2="2192" x1="1152" />
            <wire x2="2320" y1="2192" y2="2320" x1="2320" />
            <wire x2="2336" y1="2320" y2="2320" x1="2320" />
            <wire x2="2336" y1="2320" y2="2336" x1="2336" />
            <wire x2="2400" y1="2336" y2="2336" x1="2336" />
            <wire x2="2320" y1="2320" y2="2320" x1="2288" />
        </branch>
        <branch name="XLXN_7(15:0)">
            <wire x2="2400" y1="2688" y2="2688" x1="2288" />
        </branch>
        <branch name="XLXN_8(15:0)">
            <wire x2="2320" y1="2944" y2="2944" x1="976" />
            <wire x2="2320" y1="2944" y2="3056" x1="2320" />
            <wire x2="2336" y1="3056" y2="3056" x1="2320" />
            <wire x2="2336" y1="3056" y2="3072" x1="2336" />
            <wire x2="2400" y1="3072" y2="3072" x1="2336" />
            <wire x2="2320" y1="3056" y2="3056" x1="2288" />
        </branch>
        <branch name="XLXN_9(15:0)">
            <wire x2="2400" y1="3456" y2="3456" x1="2288" />
        </branch>
        <branch name="XLXN_10(15:0)">
            <wire x2="2336" y1="3888" y2="3888" x1="2288" />
            <wire x2="2336" y1="3888" y2="3904" x1="2336" />
            <wire x2="2400" y1="3904" y2="3904" x1="2336" />
        </branch>
        <branch name="XLXN_11(15:0)">
            <wire x2="2336" y1="4272" y2="4272" x1="2288" />
            <wire x2="2336" y1="4272" y2="4288" x1="2336" />
            <wire x2="2400" y1="4288" y2="4288" x1="2336" />
        </branch>
        <branch name="XLXN_12(15:0)">
            <wire x2="2336" y1="4672" y2="4672" x1="2288" />
            <wire x2="2336" y1="4672" y2="4704" x1="2336" />
            <wire x2="2400" y1="4704" y2="4704" x1="2336" />
        </branch>
        <branch name="XLXN_13(15:0)">
            <wire x2="2400" y1="5040" y2="5040" x1="2288" />
        </branch>
        <branch name="XLXN_14(15:0)">
            <wire x2="2400" y1="5424" y2="5424" x1="2288" />
        </branch>
        <branch name="XLXN_15(15:0)">
            <wire x2="2400" y1="5792" y2="5792" x1="2288" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="2400" y1="432" y2="464" x1="2400" />
        </branch>
        <instance x="2336" y="592" name="XLXI_33" orien="R0" />
        <branch name="XLXN_17">
            <wire x2="2400" y1="848" y2="880" x1="2400" />
        </branch>
        <instance x="2336" y="1008" name="XLXI_34" orien="R0" />
        <branch name="XLXN_18">
            <wire x2="2400" y1="1216" y2="1248" x1="2400" />
        </branch>
        <instance x="2336" y="1376" name="XLXI_35" orien="R0" />
        <branch name="XLXN_19">
            <wire x2="2400" y1="1632" y2="1664" x1="2400" />
        </branch>
        <instance x="2336" y="1792" name="XLXI_36" orien="R0" />
        <branch name="XLXN_20">
            <wire x2="2400" y1="2016" y2="2048" x1="2400" />
        </branch>
        <instance x="2336" y="2176" name="XLXI_37" orien="R0" />
        <branch name="XLXN_21">
            <wire x2="2400" y1="2400" y2="2432" x1="2400" />
        </branch>
        <instance x="2336" y="2560" name="XLXI_38" orien="R0" />
        <branch name="XLXN_23">
            <wire x2="2400" y1="3136" y2="3168" x1="2400" />
        </branch>
        <instance x="2336" y="3296" name="XLXI_40" orien="R0" />
        <branch name="XLXN_24">
            <wire x2="2400" y1="3520" y2="3552" x1="2400" />
        </branch>
        <instance x="2336" y="3680" name="XLXI_41" orien="R0" />
        <branch name="XLXN_25">
            <wire x2="2400" y1="3968" y2="4000" x1="2400" />
        </branch>
        <instance x="2336" y="4128" name="XLXI_42" orien="R0" />
        <branch name="XLXN_26">
            <wire x2="2400" y1="4352" y2="4384" x1="2400" />
        </branch>
        <instance x="2336" y="4512" name="XLXI_43" orien="R0" />
        <branch name="XLXN_27">
            <wire x2="2400" y1="4768" y2="4800" x1="2400" />
        </branch>
        <instance x="2336" y="4928" name="XLXI_44" orien="R0" />
        <branch name="XLXN_28">
            <wire x2="2400" y1="5104" y2="5136" x1="2400" />
        </branch>
        <instance x="2336" y="5264" name="XLXI_45" orien="R0" />
        <branch name="XLXN_29">
            <wire x2="2400" y1="5488" y2="5520" x1="2400" />
        </branch>
        <instance x="2336" y="5648" name="XLXI_46" orien="R0" />
        <branch name="XLXN_30">
            <wire x2="2400" y1="5856" y2="5888" x1="2400" />
        </branch>
        <instance x="2336" y="6016" name="XLXI_47" orien="R0" />
        <branch name="XLXN_31(15:0)">
            <wire x2="2336" y1="624" y2="720" x1="2336" />
            <wire x2="2400" y1="720" y2="720" x1="2336" />
            <wire x2="2864" y1="624" y2="624" x1="2336" />
            <wire x2="2864" y1="304" y2="304" x1="2784" />
            <wire x2="2864" y1="304" y2="624" x1="2864" />
        </branch>
        <branch name="XLXN_32(15:0)">
            <wire x2="2320" y1="992" y2="1088" x1="2320" />
            <wire x2="2400" y1="1088" y2="1088" x1="2320" />
            <wire x2="2864" y1="992" y2="992" x1="2320" />
            <wire x2="2864" y1="720" y2="720" x1="2784" />
            <wire x2="2864" y1="720" y2="992" x1="2864" />
        </branch>
        <branch name="XLXN_33(15:0)">
            <wire x2="2320" y1="1408" y2="1504" x1="2320" />
            <wire x2="2400" y1="1504" y2="1504" x1="2320" />
            <wire x2="2864" y1="1408" y2="1408" x1="2320" />
            <wire x2="2864" y1="1088" y2="1088" x1="2784" />
            <wire x2="2864" y1="1088" y2="1408" x1="2864" />
        </branch>
        <branch name="XLXN_34(15:0)">
            <wire x2="2336" y1="1792" y2="1888" x1="2336" />
            <wire x2="2400" y1="1888" y2="1888" x1="2336" />
            <wire x2="2864" y1="1792" y2="1792" x1="2336" />
            <wire x2="2864" y1="1504" y2="1504" x1="2784" />
            <wire x2="2864" y1="1504" y2="1792" x1="2864" />
        </branch>
        <branch name="XLXN_35(15:0)">
            <wire x2="2336" y1="2176" y2="2272" x1="2336" />
            <wire x2="2400" y1="2272" y2="2272" x1="2336" />
            <wire x2="2864" y1="2176" y2="2176" x1="2336" />
            <wire x2="2864" y1="1888" y2="1888" x1="2784" />
            <wire x2="2864" y1="1888" y2="2176" x1="2864" />
        </branch>
        <branch name="XLXN_36(15:0)">
            <wire x2="2336" y1="2544" y2="2624" x1="2336" />
            <wire x2="2400" y1="2624" y2="2624" x1="2336" />
            <wire x2="2864" y1="2544" y2="2544" x1="2336" />
            <wire x2="2864" y1="2272" y2="2272" x1="2784" />
            <wire x2="2864" y1="2272" y2="2544" x1="2864" />
        </branch>
        <branch name="XLXN_37(15:0)">
            <wire x2="2336" y1="2912" y2="3008" x1="2336" />
            <wire x2="2400" y1="3008" y2="3008" x1="2336" />
            <wire x2="2864" y1="2912" y2="2912" x1="2336" />
            <wire x2="2864" y1="2624" y2="2624" x1="2784" />
            <wire x2="2864" y1="2624" y2="2912" x1="2864" />
        </branch>
        <branch name="XLXN_38(15:0)">
            <wire x2="2336" y1="3744" y2="3840" x1="2336" />
            <wire x2="2400" y1="3840" y2="3840" x1="2336" />
            <wire x2="2864" y1="3744" y2="3744" x1="2336" />
            <wire x2="2864" y1="3392" y2="3392" x1="2784" />
            <wire x2="2864" y1="3392" y2="3744" x1="2864" />
        </branch>
        <branch name="XLXN_39(15:0)">
            <wire x2="2336" y1="3296" y2="3392" x1="2336" />
            <wire x2="2400" y1="3392" y2="3392" x1="2336" />
            <wire x2="2864" y1="3296" y2="3296" x1="2336" />
            <wire x2="2864" y1="3008" y2="3008" x1="2784" />
            <wire x2="2864" y1="3008" y2="3296" x1="2864" />
        </branch>
        <branch name="XLXN_40(15:0)">
            <wire x2="2336" y1="4128" y2="4224" x1="2336" />
            <wire x2="2400" y1="4224" y2="4224" x1="2336" />
            <wire x2="2864" y1="4128" y2="4128" x1="2336" />
            <wire x2="2864" y1="3840" y2="3840" x1="2784" />
            <wire x2="2864" y1="3840" y2="4128" x1="2864" />
        </branch>
        <branch name="XLXN_41(15:0)">
            <wire x2="2336" y1="4544" y2="4640" x1="2336" />
            <wire x2="2400" y1="4640" y2="4640" x1="2336" />
            <wire x2="2864" y1="4544" y2="4544" x1="2336" />
            <wire x2="2864" y1="4224" y2="4224" x1="2784" />
            <wire x2="2864" y1="4224" y2="4544" x1="2864" />
        </branch>
        <branch name="XLXN_42(15:0)">
            <wire x2="2320" y1="4912" y2="4976" x1="2320" />
            <wire x2="2400" y1="4976" y2="4976" x1="2320" />
            <wire x2="2864" y1="4912" y2="4912" x1="2320" />
            <wire x2="2864" y1="4640" y2="4640" x1="2784" />
            <wire x2="2864" y1="4640" y2="4912" x1="2864" />
        </branch>
        <branch name="XLXN_43(15:0)">
            <wire x2="2320" y1="5264" y2="5360" x1="2320" />
            <wire x2="2400" y1="5360" y2="5360" x1="2320" />
            <wire x2="2864" y1="5264" y2="5264" x1="2320" />
            <wire x2="2864" y1="4976" y2="4976" x1="2784" />
            <wire x2="2864" y1="4976" y2="5264" x1="2864" />
        </branch>
        <branch name="XLXN_45(15:0)">
            <wire x2="2336" y1="5632" y2="5728" x1="2336" />
            <wire x2="2400" y1="5728" y2="5728" x1="2336" />
            <wire x2="2864" y1="5632" y2="5632" x1="2336" />
            <wire x2="2864" y1="5360" y2="5360" x1="2784" />
            <wire x2="2864" y1="5360" y2="5632" x1="2864" />
        </branch>
        <instance x="2208" y="176" name="XLXI_48" orien="R0">
        </instance>
        <branch name="XLXN_46(15:0)">
            <wire x2="2368" y1="208" y2="208" x1="2352" />
            <wire x2="2368" y1="208" y2="304" x1="2368" />
            <wire x2="2400" y1="304" y2="304" x1="2368" />
        </branch>
        <branch name="bus_data(15:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1744" y="624" type="branch" />
            <wire x2="1904" y1="368" y2="368" x1="1744" />
            <wire x2="1744" y1="368" y2="624" x1="1744" />
            <wire x2="1744" y1="624" y2="768" x1="1744" />
            <wire x2="1904" y1="768" y2="768" x1="1744" />
            <wire x2="1744" y1="768" y2="1136" x1="1744" />
            <wire x2="1904" y1="1136" y2="1136" x1="1744" />
            <wire x2="1744" y1="1136" y2="1552" x1="1744" />
            <wire x2="1904" y1="1552" y2="1552" x1="1744" />
            <wire x2="1744" y1="1552" y2="1952" x1="1744" />
            <wire x2="1904" y1="1952" y2="1952" x1="1744" />
            <wire x2="1744" y1="1952" y2="2320" x1="1744" />
            <wire x2="1904" y1="2320" y2="2320" x1="1744" />
            <wire x2="1744" y1="2320" y2="3056" x1="1744" />
            <wire x2="1904" y1="3056" y2="3056" x1="1744" />
            <wire x2="1744" y1="3056" y2="3456" x1="1744" />
            <wire x2="1904" y1="3456" y2="3456" x1="1744" />
            <wire x2="1744" y1="3456" y2="3888" x1="1744" />
            <wire x2="1904" y1="3888" y2="3888" x1="1744" />
            <wire x2="1744" y1="3888" y2="4672" x1="1744" />
            <wire x2="1904" y1="4672" y2="4672" x1="1744" />
            <wire x2="1744" y1="4672" y2="6112" x1="1744" />
            <wire x2="2784" y1="6112" y2="6112" x1="1744" />
            <wire x2="2784" y1="5728" y2="6112" x1="2784" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1632" y="496" type="branch" />
            <wire x2="1584" y1="2816" y2="2816" x1="1424" />
            <wire x2="1904" y1="2816" y2="2816" x1="1584" />
            <wire x2="1584" y1="2816" y2="3184" x1="1584" />
            <wire x2="1904" y1="3184" y2="3184" x1="1584" />
            <wire x2="1584" y1="3184" y2="3584" x1="1584" />
            <wire x2="1904" y1="3584" y2="3584" x1="1584" />
            <wire x2="1584" y1="3584" y2="4016" x1="1584" />
            <wire x2="1904" y1="4016" y2="4016" x1="1584" />
            <wire x2="1584" y1="4016" y2="4400" x1="1584" />
            <wire x2="1904" y1="4400" y2="4400" x1="1584" />
            <wire x2="1584" y1="4400" y2="4800" x1="1584" />
            <wire x2="1904" y1="4800" y2="4800" x1="1584" />
            <wire x2="1584" y1="4800" y2="5168" x1="1584" />
            <wire x2="1904" y1="5168" y2="5168" x1="1584" />
            <wire x2="1584" y1="5168" y2="5552" x1="1584" />
            <wire x2="1904" y1="5552" y2="5552" x1="1584" />
            <wire x2="1584" y1="5552" y2="5920" x1="1584" />
            <wire x2="1904" y1="5920" y2="5920" x1="1584" />
            <wire x2="1584" y1="496" y2="496" x1="1536" />
            <wire x2="1632" y1="496" y2="496" x1="1584" />
            <wire x2="1904" y1="496" y2="496" x1="1632" />
            <wire x2="1584" y1="496" y2="896" x1="1584" />
            <wire x2="1904" y1="896" y2="896" x1="1584" />
            <wire x2="1584" y1="896" y2="1264" x1="1584" />
            <wire x2="1904" y1="1264" y2="1264" x1="1584" />
            <wire x2="1584" y1="1264" y2="1680" x1="1584" />
            <wire x2="1904" y1="1680" y2="1680" x1="1584" />
            <wire x2="1584" y1="1680" y2="2080" x1="1584" />
            <wire x2="1904" y1="2080" y2="2080" x1="1584" />
            <wire x2="1584" y1="2080" y2="2448" x1="1584" />
            <wire x2="1904" y1="2448" y2="2448" x1="1584" />
            <wire x2="1584" y1="2448" y2="2816" x1="1584" />
        </branch>
        <iomarker fontsize="28" x="1536" y="496" name="clk" orien="R180" />
        <branch name="switches(15:0)">
            <wire x2="1904" y1="2688" y2="2688" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1376" y="2688" name="switches(15:0)" orien="R180" />
        <iomarker fontsize="28" x="1152" y="2192" name="Led(15:0)" orien="R180" />
        <instance x="1424" y="2912" name="XLXI_49" orien="M0">
        </instance>
        <instance x="976" y="2976" name="XLXI_50" orien="M0">
        </instance>
        <branch name="XLXN_79">
            <wire x2="1040" y1="2880" y2="2880" x1="976" />
        </branch>
        <branch name="anodes(3:0)">
            <wire x2="592" y1="2944" y2="2944" x1="448" />
        </branch>
        <branch name="sevenseg(6:0)">
            <wire x2="592" y1="2880" y2="2880" x1="448" />
        </branch>
        <iomarker fontsize="28" x="448" y="2944" name="anodes(3:0)" orien="R180" />
        <iomarker fontsize="28" x="448" y="2880" name="sevenseg(6:0)" orien="R180" />
        <branch name="XLXN_82">
            <wire x2="1408" y1="2384" y2="2384" x1="1072" />
            <wire x2="1904" y1="2384" y2="2384" x1="1408" />
            <wire x2="1408" y1="2384" y2="2576" x1="1408" />
            <wire x2="1408" y1="2576" y2="2752" x1="1408" />
            <wire x2="1408" y1="2752" y2="3120" x1="1408" />
            <wire x2="1904" y1="3120" y2="3120" x1="1408" />
            <wire x2="1904" y1="2752" y2="2752" x1="1408" />
            <wire x2="2352" y1="2576" y2="2576" x1="1408" />
            <wire x2="2352" y1="2576" y2="2784" x1="2352" />
            <wire x2="2400" y1="2784" y2="2784" x1="2352" />
            <wire x2="2400" y1="2752" y2="2784" x1="2400" />
        </branch>
        <instance x="1008" y="2384" name="XLXI_52" orien="R0" />
    </sheet>
</drawing>