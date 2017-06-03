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
        <signal name="COBus(15:0)" />
        <signal name="XLXN_15(15:0)" />
        <signal name="R22B" />
        <signal name="R32B" />
        <signal name="R42B" />
        <signal name="R52B" />
        <signal name="Rled2B" />
        <signal name="R7seg2B" />
        <signal name="Rsrc12B" />
        <signal name="Rsrc22B" />
        <signal name="Rdest2B" />
        <signal name="Ram2B" />
        <signal name="Rdm2B" />
        <signal name="CO2B" />
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
        <signal name="XLXN_80(15:0)" />
        <signal name="B2CO" />
        <signal name="COinc" />
        <signal name="XLXN_85" />
        <signal name="COBus(7:0)" />
        <signal name="XLXN_88(15:0)" />
        <signal name="XLXN_89(15:0)" />
        <signal name="RIload" />
        <signal name="B2R7seg" />
        <signal name="RI2B" />
        <signal name="R12B" />
        <signal name="Rsw2B" />
        <signal name="B2R1" />
        <signal name="B2R2" />
        <signal name="B2R3" />
        <signal name="B2R4" />
        <signal name="B2R5" />
        <signal name="B2Rled" />
        <signal name="B2Rswload" />
        <signal name="B2Rsrc1" />
        <signal name="B2Rsrc2" />
        <signal name="B2Rdestload" />
        <signal name="B2Ram" />
        <signal name="B2Rdmload" />
        <signal name="XLXN_102(15:0)" />
        <signal name="source(3:0)" />
        <signal name="dest(3:0)" />
        <signal name="XLXN_109" />
        <signal name="XLXN_113" />
        <signal name="XLXN_120" />
        <signal name="XLXN_136" />
        <signal name="dest(3)" />
        <signal name="dest(2)" />
        <signal name="dest(1)" />
        <signal name="dest(0)" />
        <signal name="source(3)" />
        <signal name="source(2)" />
        <signal name="source(1)" />
        <signal name="source(0)" />
        <signal name="XLXN_148" />
        <signal name="B2Rdm" />
        <signal name="XLXN_105" />
        <signal name="XLXN_149" />
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
        <blockdef name="inc">
            <timestamp>2013-11-25T9:36:25</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="mux2x16">
            <timestamp>2013-11-25T9:49:50</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
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
        <blockdef name="insmem">
            <timestamp>2013-12-2T10:39:26</timestamp>
            <rect width="224" x="32" y="32" height="512" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="256" y1="80" y2="80" style="linewidth:W" x1="288" />
        </blockdef>
        <blockdef name="fsm3">
            <timestamp>2013-12-2T10:12:41</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="d4_16e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-1152" height="1088" />
            <line x2="320" y1="-1088" y2="-1088" x1="384" />
            <line x2="320" y1="-1024" y2="-1024" x1="384" />
            <line x2="320" y1="-960" y2="-960" x1="384" />
            <line x2="320" y1="-896" y2="-896" x1="384" />
            <line x2="320" y1="-832" y2="-832" x1="384" />
            <line x2="320" y1="-768" y2="-768" x1="384" />
            <line x2="320" y1="-704" y2="-704" x1="384" />
            <line x2="320" y1="-640" y2="-640" x1="384" />
            <line x2="320" y1="-576" y2="-576" x1="384" />
            <line x2="320" y1="-512" y2="-512" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-896" y2="-896" x1="0" />
            <line x2="64" y1="-960" y2="-960" x1="0" />
            <line x2="64" y1="-1024" y2="-1024" x1="0" />
            <line x2="64" y1="-1088" y2="-1088" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="fd16ce" name="R1">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="B2R1" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="bus_data(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_1(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="R2">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="B2R2" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="bus_data(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_2(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="R3">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="B2R3" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="bus_data(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_3(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="R4">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="B2R4" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="bus_data(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_4(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="R5">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="B2R5" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="bus_data(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_5(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="Rled">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="B2Rled" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="bus_data(15:0)" name="D(15:0)" />
            <blockpin signalname="Led(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="Rsw">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="B2Rswload" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="switches(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_7(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="R7seg">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="B2R7seg" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="bus_data(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_8(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="Rsrc1">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="B2Rsrc1" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="bus_data(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_9(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="Rsrc2">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="B2Rsrc2" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="bus_data(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_10(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="Rdest">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="B2Rdestload" name="CE" />
            <blockpin name="CLR" />
            <blockpin name="D(15:0)" />
            <blockpin signalname="XLXN_11(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="Ram">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="B2Ram" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="bus_data(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_12(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="Rdm">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="B2Rdmload" name="CE" />
            <blockpin name="CLR" />
            <blockpin name="D(15:0)" />
            <blockpin signalname="XLXN_13(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="CO">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_85" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_89(15:0)" name="D(15:0)" />
            <blockpin signalname="COBus(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="RI">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="RIload" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_102(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_15(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="connect16" name="CR1">
            <blockpin signalname="XLXN_46(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_1(15:0)" name="R(15:0)" />
            <blockpin signalname="R12B" name="connect" />
            <blockpin signalname="XLXN_31(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connect16" name="CR2">
            <blockpin signalname="XLXN_31(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_2(15:0)" name="R(15:0)" />
            <blockpin signalname="R22B" name="connect" />
            <blockpin signalname="XLXN_32(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connect16" name="CR3">
            <blockpin signalname="XLXN_32(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_3(15:0)" name="R(15:0)" />
            <blockpin signalname="R32B" name="connect" />
            <blockpin signalname="XLXN_33(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connect16" name="CR4">
            <blockpin signalname="XLXN_33(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_4(15:0)" name="R(15:0)" />
            <blockpin signalname="R42B" name="connect" />
            <blockpin signalname="XLXN_34(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connect16" name="CR5">
            <blockpin signalname="XLXN_34(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_5(15:0)" name="R(15:0)" />
            <blockpin signalname="R52B" name="connect" />
            <blockpin signalname="XLXN_35(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connect16" name="CRled">
            <blockpin signalname="XLXN_35(15:0)" name="Din(15:0)" />
            <blockpin signalname="Led(15:0)" name="R(15:0)" />
            <blockpin signalname="Rled2B" name="connect" />
            <blockpin signalname="XLXN_36(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connect16" name="CRsw">
            <blockpin signalname="XLXN_36(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_7(15:0)" name="R(15:0)" />
            <blockpin signalname="Rsw2B" name="connect" />
            <blockpin signalname="XLXN_37(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connect16" name="CR7seg">
            <blockpin signalname="XLXN_37(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_8(15:0)" name="R(15:0)" />
            <blockpin signalname="R7seg2B" name="connect" />
            <blockpin signalname="XLXN_39(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connect16" name="CRsrc1">
            <blockpin signalname="XLXN_39(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_9(15:0)" name="R(15:0)" />
            <blockpin signalname="Rsrc12B" name="connect" />
            <blockpin signalname="XLXN_38(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connect16" name="CRsrc2">
            <blockpin signalname="XLXN_38(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_10(15:0)" name="R(15:0)" />
            <blockpin signalname="Rsrc22B" name="connect" />
            <blockpin signalname="XLXN_40(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connect16" name="CRdest">
            <blockpin signalname="XLXN_40(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_11(15:0)" name="R(15:0)" />
            <blockpin signalname="Rdest2B" name="connect" />
            <blockpin signalname="XLXN_41(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connect16" name="CRam">
            <blockpin signalname="XLXN_41(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_12(15:0)" name="R(15:0)" />
            <blockpin signalname="Ram2B" name="connect" />
            <blockpin signalname="XLXN_42(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connect16" name="CRdm">
            <blockpin signalname="XLXN_42(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_13(15:0)" name="R(15:0)" />
            <blockpin signalname="Rdm2B" name="connect" />
            <blockpin signalname="XLXN_43(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connect16" name="CRO">
            <blockpin signalname="XLXN_43(15:0)" name="Din(15:0)" />
            <blockpin signalname="COBus(15:0)" name="R(15:0)" />
            <blockpin signalname="CO2B" name="connect" />
            <blockpin signalname="XLXN_45(15:0)" name="Dout(15:0)" />
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
        <block symbolname="inc" name="incCO">
            <blockpin signalname="COBus(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_80(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="mux2x16" name="selecCO">
            <blockpin signalname="B2CO" name="S0" />
            <blockpin signalname="bus_data(15:0)" name="D1(15:0)" />
            <blockpin signalname="XLXN_80(15:0)" name="D0(15:0)" />
            <blockpin signalname="XLXN_89(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="or2" name="XLXI_53">
            <blockpin signalname="COinc" name="I0" />
            <blockpin signalname="B2CO" name="I1" />
            <blockpin signalname="XLXN_85" name="O" />
        </block>
        <block symbolname="insmem" name="XLXI_54">
            <blockpin signalname="COBus(7:0)" name="a(7:0)" />
            <blockpin signalname="XLXN_102(15:0)" name="spo(15:0)" />
        </block>
        <block symbolname="connect16" name="CRI">
            <blockpin signalname="XLXN_45(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_15(15:0)" name="R(15:0)" />
            <blockpin signalname="RI2B" name="connect" />
            <blockpin signalname="bus_data(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="fsm3" name="XLXI_60">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_102(15:0)" name="instr(15:0)" />
            <blockpin signalname="COinc" name="COinc" />
            <blockpin signalname="RIload" name="RIload" />
            <blockpin signalname="source(3:0)" name="source(3:0)" />
            <blockpin signalname="dest(3:0)" name="dest(3:0)" />
        </block>
        <block symbolname="d4_16e" name="XLXI_61">
            <blockpin signalname="dest(0)" name="A0" />
            <blockpin signalname="dest(1)" name="A1" />
            <blockpin signalname="dest(2)" name="A2" />
            <blockpin signalname="dest(3)" name="A3" />
            <blockpin signalname="XLXN_148" name="E" />
            <blockpin signalname="XLXN_120" name="D0" />
            <blockpin signalname="B2R1" name="D1" />
            <blockpin signalname="B2Rsrc2" name="D10" />
            <blockpin signalname="XLXN_109" name="D11" />
            <blockpin signalname="B2Ram" name="D12" />
            <blockpin signalname="B2Rdm" name="D13" />
            <blockpin signalname="B2CO" name="D14" />
            <blockpin signalname="XLXN_105" name="D15" />
            <blockpin signalname="B2R2" name="D2" />
            <blockpin signalname="B2R3" name="D3" />
            <blockpin signalname="B2R4" name="D4" />
            <blockpin signalname="B2R5" name="D5" />
            <blockpin signalname="B2Rled" name="D6" />
            <blockpin signalname="XLXN_113" name="D7" />
            <blockpin signalname="B2R7seg" name="D8" />
            <blockpin signalname="B2Rsrc1" name="D9" />
        </block>
        <block symbolname="d4_16e" name="XLXI_62">
            <blockpin signalname="source(0)" name="A0" />
            <blockpin signalname="source(1)" name="A1" />
            <blockpin signalname="source(2)" name="A2" />
            <blockpin signalname="source(3)" name="A3" />
            <blockpin signalname="XLXN_149" name="E" />
            <blockpin signalname="XLXN_136" name="D0" />
            <blockpin signalname="R12B" name="D1" />
            <blockpin signalname="Rsrc22B" name="D10" />
            <blockpin signalname="Rdest2B" name="D11" />
            <blockpin signalname="Ram2B" name="D12" />
            <blockpin signalname="Rdm2B" name="D13" />
            <blockpin signalname="CO2B" name="D14" />
            <blockpin signalname="RI2B" name="D15" />
            <blockpin signalname="R22B" name="D2" />
            <blockpin signalname="R32B" name="D3" />
            <blockpin signalname="R42B" name="D4" />
            <blockpin signalname="R52B" name="D5" />
            <blockpin signalname="Rled2B" name="D6" />
            <blockpin signalname="Rsw2B" name="D7" />
            <blockpin signalname="R7seg2B" name="D8" />
            <blockpin signalname="Rsrc12B" name="D9" />
        </block>
        <block symbolname="vcc" name="XLXI_63">
            <blockpin signalname="XLXN_148" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_64">
            <blockpin signalname="XLXN_149" name="P" />
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
        <branch name="COBus(15:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2336" y="5424" type="branch" />
            <wire x2="2368" y1="5280" y2="5280" x1="1120" />
            <wire x2="2368" y1="5280" y2="5424" x1="2368" />
            <wire x2="2400" y1="5424" y2="5424" x1="2368" />
            <wire x2="2320" y1="5424" y2="5424" x1="2288" />
            <wire x2="2336" y1="5424" y2="5424" x1="2320" />
            <wire x2="2368" y1="5424" y2="5424" x1="2336" />
        </branch>
        <branch name="XLXN_15(15:0)">
            <wire x2="2400" y1="5792" y2="5792" x1="2288" />
        </branch>
        <branch name="R12B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2400" y="448" type="branch" />
            <wire x2="2400" y1="432" y2="448" x1="2400" />
            <wire x2="2400" y1="448" y2="464" x1="2400" />
        </branch>
        <branch name="R22B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2400" y="864" type="branch" />
            <wire x2="2400" y1="848" y2="864" x1="2400" />
            <wire x2="2400" y1="864" y2="880" x1="2400" />
        </branch>
        <branch name="R32B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2400" y="1232" type="branch" />
            <wire x2="2400" y1="1216" y2="1232" x1="2400" />
            <wire x2="2400" y1="1232" y2="1248" x1="2400" />
        </branch>
        <branch name="R42B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2400" y="1648" type="branch" />
            <wire x2="2400" y1="1632" y2="1648" x1="2400" />
            <wire x2="2400" y1="1648" y2="1664" x1="2400" />
        </branch>
        <branch name="R52B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2400" y="2032" type="branch" />
            <wire x2="2400" y1="2016" y2="2032" x1="2400" />
            <wire x2="2400" y1="2032" y2="2048" x1="2400" />
        </branch>
        <branch name="Rled2B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2400" y="2416" type="branch" />
            <wire x2="2400" y1="2400" y2="2416" x1="2400" />
            <wire x2="2400" y1="2416" y2="2432" x1="2400" />
        </branch>
        <branch name="R7seg2B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2400" y="3152" type="branch" />
            <wire x2="2400" y1="3136" y2="3152" x1="2400" />
            <wire x2="2400" y1="3152" y2="3168" x1="2400" />
        </branch>
        <branch name="Rsrc12B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2400" y="3536" type="branch" />
            <wire x2="2400" y1="3520" y2="3536" x1="2400" />
            <wire x2="2400" y1="3536" y2="3552" x1="2400" />
        </branch>
        <branch name="Rsrc22B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2400" y="3984" type="branch" />
            <wire x2="2400" y1="3968" y2="3984" x1="2400" />
            <wire x2="2400" y1="3984" y2="4000" x1="2400" />
        </branch>
        <branch name="Rdest2B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2400" y="4368" type="branch" />
            <wire x2="2400" y1="4352" y2="4368" x1="2400" />
            <wire x2="2400" y1="4368" y2="4384" x1="2400" />
        </branch>
        <branch name="Ram2B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2400" y="4784" type="branch" />
            <wire x2="2400" y1="4768" y2="4784" x1="2400" />
            <wire x2="2400" y1="4784" y2="4800" x1="2400" />
        </branch>
        <branch name="Rdm2B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2400" y="5120" type="branch" />
            <wire x2="2400" y1="5104" y2="5120" x1="2400" />
            <wire x2="2400" y1="5120" y2="5136" x1="2400" />
        </branch>
        <branch name="CO2B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2400" y="5504" type="branch" />
            <wire x2="2400" y1="5488" y2="5504" x1="2400" />
            <wire x2="2400" y1="5504" y2="5520" x1="2400" />
        </branch>
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
            <wire x2="672" y1="5216" y2="5488" x1="672" />
            <wire x2="736" y1="5488" y2="5488" x1="672" />
            <wire x2="1744" y1="5216" y2="5216" x1="672" />
            <wire x2="1744" y1="5216" y2="6112" x1="1744" />
            <wire x2="2784" y1="6112" y2="6112" x1="1744" />
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
            <wire x2="1744" y1="4672" y2="5216" x1="1744" />
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
            <wire x2="1648" y1="5920" y2="5920" x1="1584" />
            <wire x2="1904" y1="5920" y2="5920" x1="1648" />
            <wire x2="1648" y1="5920" y2="6256" x1="1648" />
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
        <instance x="1120" y="5312" name="incCO" orien="M0">
            <attrtext style="alignment:RIGHT;fontsize:28;fontname:Arial" attrname="InstName" x="224" y="16" type="instance" />
        </instance>
        <branch name="XLXN_80(15:0)">
            <wire x2="736" y1="5280" y2="5280" x1="720" />
            <wire x2="720" y1="5280" y2="5552" x1="720" />
            <wire x2="736" y1="5552" y2="5552" x1="720" />
        </branch>
        <branch name="B2CO">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="544" y="5424" type="branch" />
            <wire x2="544" y1="5424" y2="5424" x1="480" />
            <wire x2="560" y1="5424" y2="5424" x1="544" />
            <wire x2="736" y1="5424" y2="5424" x1="560" />
            <wire x2="560" y1="5424" y2="5712" x1="560" />
            <wire x2="656" y1="5712" y2="5712" x1="560" />
        </branch>
        <instance x="656" y="5840" name="XLXI_53" orien="R0" />
        <branch name="COinc">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="528" y="5776" type="branch" />
            <wire x2="528" y1="5776" y2="5776" x1="480" />
            <wire x2="656" y1="5776" y2="5776" x1="528" />
        </branch>
        <branch name="XLXN_85">
            <wire x2="1408" y1="5744" y2="5744" x1="912" />
            <wire x2="1408" y1="5488" y2="5744" x1="1408" />
            <wire x2="1904" y1="5488" y2="5488" x1="1408" />
        </branch>
        <instance x="896" y="5840" name="XLXI_54" orien="R0">
        </instance>
        <branch name="COBus(7:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2320" y="5592" type="branch" />
            <wire x2="880" y1="5808" y2="5920" x1="880" />
            <wire x2="896" y1="5920" y2="5920" x1="880" />
            <wire x2="1536" y1="5808" y2="5808" x1="880" />
            <wire x2="1536" y1="5664" y2="5808" x1="1536" />
            <wire x2="2320" y1="5664" y2="5664" x1="1536" />
            <wire x2="2320" y1="5520" y2="5592" x1="2320" />
            <wire x2="2320" y1="5592" y2="5664" x1="2320" />
        </branch>
        <bustap x2="2320" y1="5424" y2="5520" x1="2320" />
        <branch name="XLXN_89(15:0)">
            <wire x2="1904" y1="5424" y2="5424" x1="1120" />
        </branch>
        <instance x="736" y="5584" name="selecCO" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="160" y="32" type="instance" />
        </instance>
        <branch name="RIload">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1856" y="5856" type="branch" />
            <wire x2="1856" y1="5856" y2="5856" x1="1824" />
            <wire x2="1904" y1="5856" y2="5856" x1="1856" />
        </branch>
        <branch name="B2R7seg">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1872" y="3120" type="branch" />
            <wire x2="1872" y1="3120" y2="3120" x1="1808" />
            <wire x2="1904" y1="3120" y2="3120" x1="1872" />
        </branch>
        <instance x="2400" y="5888" name="CRI" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="224" y="-64" type="instance" />
        </instance>
        <branch name="RI2B">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2352" y="5856" type="branch" />
            <wire x2="2352" y1="5856" y2="5856" x1="2320" />
            <wire x2="2400" y1="5856" y2="5856" x1="2352" />
        </branch>
        <branch name="Rsw2B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2384" y="2784" type="branch" />
            <wire x2="2400" y1="2752" y2="2752" x1="2384" />
            <wire x2="2384" y1="2752" y2="2784" x1="2384" />
            <wire x2="2384" y1="2784" y2="2800" x1="2384" />
            <wire x2="2400" y1="2800" y2="2800" x1="2384" />
            <wire x2="2400" y1="2800" y2="2816" x1="2400" />
        </branch>
        <branch name="B2R1">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1856" y="432" type="branch" />
            <wire x2="1856" y1="432" y2="432" x1="1824" />
            <wire x2="1904" y1="432" y2="432" x1="1856" />
        </branch>
        <branch name="B2R2">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1840" y="832" type="branch" />
            <wire x2="1840" y1="832" y2="832" x1="1824" />
            <wire x2="1904" y1="832" y2="832" x1="1840" />
        </branch>
        <branch name="B2R3">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1856" y="1200" type="branch" />
            <wire x2="1856" y1="1200" y2="1200" x1="1840" />
            <wire x2="1904" y1="1200" y2="1200" x1="1856" />
        </branch>
        <branch name="B2R4">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1856" y="1616" type="branch" />
            <wire x2="1856" y1="1616" y2="1616" x1="1808" />
            <wire x2="1904" y1="1616" y2="1616" x1="1856" />
        </branch>
        <branch name="B2R5">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1856" y="2016" type="branch" />
            <wire x2="1856" y1="2016" y2="2016" x1="1808" />
            <wire x2="1904" y1="2016" y2="2016" x1="1856" />
        </branch>
        <branch name="B2Rled">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1824" y="2384" type="branch" />
            <wire x2="1824" y1="2384" y2="2384" x1="1808" />
            <wire x2="1904" y1="2384" y2="2384" x1="1824" />
        </branch>
        <branch name="B2Rswload">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1840" y="2752" type="branch" />
            <wire x2="1840" y1="2752" y2="2752" x1="1808" />
            <wire x2="1904" y1="2752" y2="2752" x1="1840" />
        </branch>
        <branch name="B2Rsrc1">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1840" y="3520" type="branch" />
            <wire x2="1840" y1="3520" y2="3520" x1="1808" />
            <wire x2="1904" y1="3520" y2="3520" x1="1840" />
        </branch>
        <branch name="B2Rsrc2">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1856" y="3952" type="branch" />
            <wire x2="1856" y1="3952" y2="3952" x1="1808" />
            <wire x2="1904" y1="3952" y2="3952" x1="1856" />
        </branch>
        <branch name="B2Rdestload">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1840" y="4336" type="branch" />
            <wire x2="1840" y1="4336" y2="4336" x1="1808" />
            <wire x2="1904" y1="4336" y2="4336" x1="1840" />
        </branch>
        <branch name="B2Ram">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1840" y="4736" type="branch" />
            <wire x2="1840" y1="4736" y2="4736" x1="1808" />
            <wire x2="1904" y1="4736" y2="4736" x1="1840" />
        </branch>
        <branch name="B2Rdmload">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1824" y="5104" type="branch" />
            <wire x2="1824" y1="5104" y2="5104" x1="1808" />
            <wire x2="1904" y1="5104" y2="5104" x1="1824" />
        </branch>
        <instance x="1648" y="6480" name="XLXI_60" orien="R0">
        </instance>
        <branch name="COinc">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2112" y="6256" type="branch" />
            <wire x2="2112" y1="6256" y2="6256" x1="2032" />
            <wire x2="2176" y1="6256" y2="6256" x1="2112" />
        </branch>
        <branch name="RIload">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2112" y="6320" type="branch" />
            <wire x2="2112" y1="6320" y2="6320" x1="2032" />
            <wire x2="2176" y1="6320" y2="6320" x1="2112" />
        </branch>
        <branch name="XLXN_102(15:0)">
            <wire x2="1552" y1="5920" y2="5920" x1="1184" />
            <wire x2="1552" y1="5920" y2="6448" x1="1552" />
            <wire x2="1648" y1="6448" y2="6448" x1="1552" />
            <wire x2="1552" y1="5792" y2="5920" x1="1552" />
            <wire x2="1904" y1="5792" y2="5792" x1="1552" />
        </branch>
        <branch name="source(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2480" y="6384" type="branch" />
            <wire x2="2480" y1="6384" y2="6384" x1="2032" />
            <wire x2="3504" y1="6384" y2="6384" x1="2480" />
            <wire x2="3568" y1="6384" y2="6384" x1="3504" />
            <wire x2="3632" y1="6384" y2="6384" x1="3568" />
            <wire x2="3696" y1="6384" y2="6384" x1="3632" />
            <wire x2="4080" y1="6384" y2="6384" x1="3696" />
        </branch>
        <branch name="dest(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2224" y="6448" type="branch" />
            <wire x2="2176" y1="6448" y2="6448" x1="2032" />
            <wire x2="2224" y1="6448" y2="6448" x1="2176" />
            <wire x2="2240" y1="6448" y2="6448" x1="2224" />
            <wire x2="2304" y1="6448" y2="6448" x1="2240" />
            <wire x2="2368" y1="6448" y2="6448" x1="2304" />
            <wire x2="2576" y1="6448" y2="6448" x1="2368" />
        </branch>
        <instance x="1280" y="6576" name="XLXI_61" orien="R90" />
        <branch name="XLXN_105">
            <wire x2="1408" y1="6960" y2="7008" x1="1408" />
            <wire x2="1408" y1="7008" y2="7056" x1="1408" />
        </branch>
        <branch name="B2CO">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1472" y="7008" type="branch" />
            <wire x2="1472" y1="6960" y2="7008" x1="1472" />
            <wire x2="1472" y1="7008" y2="7056" x1="1472" />
        </branch>
        <branch name="B2Rdm">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1536" y="7008" type="branch" />
            <wire x2="1536" y1="6960" y2="7008" x1="1536" />
            <wire x2="1536" y1="7008" y2="7024" x1="1536" />
            <wire x2="1536" y1="7024" y2="7056" x1="1536" />
        </branch>
        <branch name="B2Ram">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1600" y="7008" type="branch" />
            <wire x2="1600" y1="6960" y2="7008" x1="1600" />
            <wire x2="1600" y1="7008" y2="7056" x1="1600" />
        </branch>
        <branch name="XLXN_109">
            <wire x2="1664" y1="6960" y2="7056" x1="1664" />
        </branch>
        <branch name="B2Rsrc2">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1728" y="7008" type="branch" />
            <wire x2="1728" y1="6960" y2="7008" x1="1728" />
            <wire x2="1728" y1="7008" y2="7056" x1="1728" />
        </branch>
        <branch name="B2Rsrc1">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1792" y="7008" type="branch" />
            <wire x2="1792" y1="6960" y2="7008" x1="1792" />
            <wire x2="1792" y1="7008" y2="7056" x1="1792" />
        </branch>
        <branch name="B2R7seg">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1856" y="7008" type="branch" />
            <wire x2="1856" y1="6960" y2="7008" x1="1856" />
            <wire x2="1856" y1="7008" y2="7056" x1="1856" />
        </branch>
        <branch name="XLXN_113">
            <wire x2="1920" y1="6960" y2="7056" x1="1920" />
        </branch>
        <branch name="B2Rled">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1984" y="6992" type="branch" />
            <wire x2="1984" y1="6960" y2="6992" x1="1984" />
            <wire x2="1984" y1="6992" y2="7056" x1="1984" />
        </branch>
        <branch name="B2R5">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2048" y="7008" type="branch" />
            <wire x2="2048" y1="6960" y2="7008" x1="2048" />
            <wire x2="2048" y1="7008" y2="7056" x1="2048" />
        </branch>
        <branch name="B2R4">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2112" y="6976" type="branch" />
            <wire x2="2112" y1="6960" y2="6976" x1="2112" />
            <wire x2="2112" y1="6976" y2="7056" x1="2112" />
        </branch>
        <branch name="B2R3">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2176" y="6992" type="branch" />
            <wire x2="2176" y1="6960" y2="6992" x1="2176" />
            <wire x2="2176" y1="6992" y2="7056" x1="2176" />
        </branch>
        <branch name="B2R2">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2240" y="7008" type="branch" />
            <wire x2="2240" y1="6960" y2="7008" x1="2240" />
            <wire x2="2240" y1="7008" y2="7056" x1="2240" />
        </branch>
        <branch name="B2R1">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2304" y="7024" type="branch" />
            <wire x2="2304" y1="6960" y2="7024" x1="2304" />
            <wire x2="2304" y1="7024" y2="7072" x1="2304" />
        </branch>
        <branch name="XLXN_120">
            <wire x2="2368" y1="6960" y2="7056" x1="2368" />
        </branch>
        <instance x="2608" y="6576" name="XLXI_62" orien="R90" />
        <branch name="RI2B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2736" y="6992" type="branch" />
            <wire x2="2736" y1="6960" y2="6992" x1="2736" />
            <wire x2="2736" y1="6992" y2="7056" x1="2736" />
        </branch>
        <branch name="CO2B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2800" y="6992" type="branch" />
            <wire x2="2800" y1="6960" y2="6992" x1="2800" />
            <wire x2="2800" y1="6992" y2="7056" x1="2800" />
        </branch>
        <branch name="Rdm2B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2864" y="6992" type="branch" />
            <wire x2="2864" y1="6960" y2="6992" x1="2864" />
            <wire x2="2864" y1="6992" y2="7056" x1="2864" />
        </branch>
        <branch name="Ram2B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2928" y="6992" type="branch" />
            <wire x2="2928" y1="6960" y2="6992" x1="2928" />
            <wire x2="2928" y1="6992" y2="7056" x1="2928" />
        </branch>
        <branch name="Rdest2B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2992" y="7008" type="branch" />
            <wire x2="2992" y1="6960" y2="7008" x1="2992" />
            <wire x2="2992" y1="7008" y2="7056" x1="2992" />
        </branch>
        <branch name="Rsrc22B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3056" y="6992" type="branch" />
            <wire x2="3056" y1="6960" y2="6992" x1="3056" />
            <wire x2="3056" y1="6992" y2="7056" x1="3056" />
        </branch>
        <branch name="Rsrc12B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3120" y="7008" type="branch" />
            <wire x2="3120" y1="6960" y2="7008" x1="3120" />
            <wire x2="3120" y1="7008" y2="7056" x1="3120" />
        </branch>
        <branch name="R7seg2B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3184" y="7008" type="branch" />
            <wire x2="3184" y1="6960" y2="7008" x1="3184" />
            <wire x2="3184" y1="7008" y2="7056" x1="3184" />
        </branch>
        <branch name="Rsw2B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3248" y="7008" type="branch" />
            <wire x2="3248" y1="6960" y2="7008" x1="3248" />
            <wire x2="3248" y1="7008" y2="7056" x1="3248" />
        </branch>
        <branch name="Rled2B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3312" y="6992" type="branch" />
            <wire x2="3312" y1="6960" y2="6992" x1="3312" />
            <wire x2="3312" y1="6992" y2="7056" x1="3312" />
        </branch>
        <branch name="R52B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3376" y="7008" type="branch" />
            <wire x2="3376" y1="6960" y2="7008" x1="3376" />
            <wire x2="3376" y1="7008" y2="7056" x1="3376" />
        </branch>
        <branch name="R42B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3440" y="7008" type="branch" />
            <wire x2="3440" y1="6960" y2="7008" x1="3440" />
            <wire x2="3440" y1="7008" y2="7056" x1="3440" />
        </branch>
        <branch name="R32B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3504" y="7008" type="branch" />
            <wire x2="3504" y1="6960" y2="7008" x1="3504" />
            <wire x2="3504" y1="7008" y2="7056" x1="3504" />
        </branch>
        <branch name="R22B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3568" y="7008" type="branch" />
            <wire x2="3568" y1="6960" y2="7008" x1="3568" />
            <wire x2="3568" y1="7008" y2="7056" x1="3568" />
        </branch>
        <branch name="R12B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3632" y="7024" type="branch" />
            <wire x2="3632" y1="6960" y2="7024" x1="3632" />
            <wire x2="3632" y1="7024" y2="7072" x1="3632" />
        </branch>
        <branch name="XLXN_136">
            <wire x2="3696" y1="6960" y2="7056" x1="3696" />
        </branch>
        <bustap x2="2176" y1="6448" y2="6544" x1="2176" />
        <branch name="dest(3)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2176" y="6560" type="branch" />
            <wire x2="2176" y1="6544" y2="6560" x1="2176" />
            <wire x2="2176" y1="6560" y2="6576" x1="2176" />
        </branch>
        <bustap x2="2240" y1="6448" y2="6544" x1="2240" />
        <branch name="dest(2)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2240" y="6560" type="branch" />
            <wire x2="2240" y1="6544" y2="6560" x1="2240" />
            <wire x2="2240" y1="6560" y2="6576" x1="2240" />
        </branch>
        <bustap x2="2304" y1="6448" y2="6544" x1="2304" />
        <branch name="dest(1)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2304" y="6560" type="branch" />
            <wire x2="2304" y1="6544" y2="6560" x1="2304" />
            <wire x2="2304" y1="6560" y2="6576" x1="2304" />
        </branch>
        <bustap x2="2368" y1="6448" y2="6544" x1="2368" />
        <branch name="dest(0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2368" y="6560" type="branch" />
            <wire x2="2368" y1="6544" y2="6560" x1="2368" />
            <wire x2="2368" y1="6560" y2="6576" x1="2368" />
        </branch>
        <bustap x2="3504" y1="6384" y2="6480" x1="3504" />
        <branch name="source(3)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3504" y="6528" type="branch" />
            <wire x2="3504" y1="6480" y2="6528" x1="3504" />
            <wire x2="3504" y1="6528" y2="6576" x1="3504" />
        </branch>
        <bustap x2="3568" y1="6384" y2="6480" x1="3568" />
        <branch name="source(2)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3568" y="6528" type="branch" />
            <wire x2="3568" y1="6480" y2="6528" x1="3568" />
            <wire x2="3568" y1="6528" y2="6576" x1="3568" />
        </branch>
        <bustap x2="3632" y1="6384" y2="6480" x1="3632" />
        <branch name="source(1)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3632" y="6528" type="branch" />
            <wire x2="3632" y1="6480" y2="6528" x1="3632" />
            <wire x2="3632" y1="6528" y2="6576" x1="3632" />
        </branch>
        <bustap x2="3696" y1="6384" y2="6480" x1="3696" />
        <branch name="source(0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3696" y="6528" type="branch" />
            <wire x2="3696" y1="6480" y2="6528" x1="3696" />
            <wire x2="3696" y1="6528" y2="6576" x1="3696" />
        </branch>
        <branch name="XLXN_148">
            <wire x2="1408" y1="6544" y2="6576" x1="1408" />
        </branch>
        <instance x="1344" y="6544" name="XLXI_63" orien="R0" />
        <branch name="XLXN_149">
            <wire x2="2736" y1="6544" y2="6576" x1="2736" />
        </branch>
        <instance x="2672" y="6544" name="XLXI_64" orien="R0" />
    </sheet>
</drawing>