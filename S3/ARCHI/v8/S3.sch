<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_4(15:0)" />
        <signal name="XLXN_5(15:0)" />
        <signal name="XLXN_6(15:0)" />
        <signal name="XLXN_7(15:0)" />
        <signal name="XLXN_8(15:0)" />
        <signal name="led(15:0)" />
        <signal name="XLXN_10(15:0)" />
        <signal name="XLXN_11(15:0)" />
        <signal name="XLXN_12(15:0)" />
        <signal name="XLXN_13(15:0)" />
        <signal name="XLXN_14(15:0)" />
        <signal name="XLXN_15(15:0)" />
        <signal name="XLXN_16(15:0)" />
        <signal name="XLXN_18(15:0)" />
        <signal name="XLXN_19(15:0)" />
        <signal name="XLXN_20(15:0)" />
        <signal name="XLXN_21(15:0)" />
        <signal name="XLXN_22(15:0)" />
        <signal name="XLXN_23(15:0)" />
        <signal name="XLXN_24(15:0)" />
        <signal name="XLXN_25(15:0)" />
        <signal name="XLXN_26(15:0)" />
        <signal name="XLXN_27(15:0)" />
        <signal name="XLXN_28(15:0)" />
        <signal name="XLXN_29(15:0)" />
        <signal name="XLXN_30(15:0)" />
        <signal name="XLXN_31(15:0)" />
        <signal name="XLXN_32(15:0)" />
        <signal name="bus_data(15:0)" />
        <signal name="XLXN_48(15:0)" />
        <signal name="switches(15:0)" />
        <signal name="sevenseg(6:0)" />
        <signal name="anodes(3:0)" />
        <signal name="clk" />
        <signal name="XLXN_74" />
        <signal name="XLXN_84(15:0)" />
        <signal name="XLXN_86(15:0)" />
        <signal name="COinc" />
        <signal name="B2CO" />
        <signal name="XLXN_93" />
        <signal name="CObus(15:0)" />
        <signal name="RIload" />
        <signal name="B2R7seg" />
        <signal name="RI2B" />
        <signal name="CObus(7:0)" />
        <signal name="B2R1" />
        <signal name="B2R2" />
        <signal name="B2R3" />
        <signal name="B2R4" />
        <signal name="B2R5" />
        <signal name="B2Rled" />
        <signal name="Rswload" />
        <signal name="B2Rsrc1" />
        <signal name="B2Rsrc2" />
        <signal name="Rdestload" />
        <signal name="B2Ram" />
        <signal name="Rdmload" />
        <signal name="R12B" />
        <signal name="R22B" />
        <signal name="R32B" />
        <signal name="R42B" />
        <signal name="R52B" />
        <signal name="Rled2B" />
        <signal name="Rsw2B" />
        <signal name="R7seg2B" />
        <signal name="Rsrc12B" />
        <signal name="Rsrc22B" />
        <signal name="Rdest2B" />
        <signal name="Ram2B" />
        <signal name="Rdm2B" />
        <signal name="CO2B" />
        <signal name="XLXN_183(15:0)" />
        <signal name="dest(3:0)" />
        <signal name="source(3:0)" />
        <signal name="dest(3)" />
        <signal name="dest(2)" />
        <signal name="dest(1)" />
        <signal name="dest(0)" />
        <signal name="source(3)" />
        <signal name="source(2)" />
        <signal name="source(1)" />
        <signal name="source(0)" />
        <signal name="XLXN_194" />
        <signal name="XLXN_195" />
        <signal name="B2Rdm" />
        <port polarity="Output" name="led(15:0)" />
        <port polarity="Input" name="switches(15:0)" />
        <port polarity="Output" name="sevenseg(6:0)" />
        <port polarity="Output" name="anodes(3:0)" />
        <port polarity="Input" name="clk" />
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
        <blockdef name="connecteur16">
            <timestamp>2013-7-3T19:19:8</timestamp>
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
        <blockdef name="afficheur16">
            <timestamp>2013-8-22T16:38:9</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="clkdiv">
            <timestamp>2013-8-22T16:38:19</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="inc">
            <timestamp>2013-9-11T7:46:39</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
            <timestamp>2013-9-13T5:58:33</timestamp>
            <rect width="224" x="32" y="32" height="512" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="256" y1="80" y2="80" style="linewidth:W" x1="288" />
        </blockdef>
        <blockdef name="fsm">
            <timestamp>2013-9-12T20:19:19</timestamp>
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="256" x="64" y="-256" height="384" />
        </blockdef>
        <blockdef name="mux2x16">
            <timestamp>2013-9-12T9:51:35</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
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
            <blockpin signalname="XLXN_4(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="R2">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="B2R2" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="bus_data(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_5(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="R3">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="B2R3" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="bus_data(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_6(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="R4">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="B2R4" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="bus_data(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_7(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="R5">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="B2R5" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="bus_data(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_8(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="Rled">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="B2Rled" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="bus_data(15:0)" name="D(15:0)" />
            <blockpin signalname="led(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="Rsw">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="Rswload" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="switches(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_10(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="R7seg">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="B2R7seg" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="bus_data(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_11(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="Rsrc1">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="B2Rsrc1" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="bus_data(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_12(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="Rsrc2">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="B2Rsrc2" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="bus_data(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_13(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="Rdest">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="Rdestload" name="CE" />
            <blockpin name="CLR" />
            <blockpin name="D(15:0)" />
            <blockpin signalname="XLXN_14(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="Ram">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="B2Ram" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="bus_data(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_15(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="Rdm">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="Rdmload" name="CE" />
            <blockpin name="CLR" />
            <blockpin name="D(15:0)" />
            <blockpin signalname="XLXN_16(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="CO">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_93" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_86(15:0)" name="D(15:0)" />
            <blockpin signalname="CObus(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="RI">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="RIload" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_183(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_18(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="connecteur16" name="CR3">
            <blockpin signalname="XLXN_20(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_6(15:0)" name="R(15:0)" />
            <blockpin signalname="R32B" name="connect" />
            <blockpin signalname="XLXN_21(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connecteur16" name="CR4">
            <blockpin signalname="XLXN_21(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_7(15:0)" name="R(15:0)" />
            <blockpin signalname="R42B" name="connect" />
            <blockpin signalname="XLXN_22(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connecteur16" name="CR5">
            <blockpin signalname="XLXN_22(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_8(15:0)" name="R(15:0)" />
            <blockpin signalname="R52B" name="connect" />
            <blockpin signalname="XLXN_23(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connecteur16" name="CRled">
            <blockpin signalname="XLXN_23(15:0)" name="Din(15:0)" />
            <blockpin signalname="led(15:0)" name="R(15:0)" />
            <blockpin signalname="Rled2B" name="connect" />
            <blockpin signalname="XLXN_24(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connecteur16" name="CRsw">
            <blockpin signalname="XLXN_24(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_10(15:0)" name="R(15:0)" />
            <blockpin signalname="Rsw2B" name="connect" />
            <blockpin signalname="XLXN_25(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connecteur16" name="CR7seg">
            <blockpin signalname="XLXN_25(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_11(15:0)" name="R(15:0)" />
            <blockpin signalname="R7seg2B" name="connect" />
            <blockpin signalname="XLXN_26(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connecteur16" name="CRsrc1">
            <blockpin signalname="XLXN_26(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_12(15:0)" name="R(15:0)" />
            <blockpin signalname="Rsrc12B" name="connect" />
            <blockpin signalname="XLXN_27(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connecteur16" name="CRsrc2">
            <blockpin signalname="XLXN_27(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_13(15:0)" name="R(15:0)" />
            <blockpin signalname="Rsrc22B" name="connect" />
            <blockpin signalname="XLXN_28(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connecteur16" name="CRdest">
            <blockpin signalname="XLXN_28(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_14(15:0)" name="R(15:0)" />
            <blockpin signalname="Rdest2B" name="connect" />
            <blockpin signalname="XLXN_29(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connecteur16" name="CRam">
            <blockpin signalname="XLXN_29(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_15(15:0)" name="R(15:0)" />
            <blockpin signalname="Ram2B" name="connect" />
            <blockpin signalname="XLXN_30(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connecteur16" name="CRdm">
            <blockpin signalname="XLXN_30(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_16(15:0)" name="R(15:0)" />
            <blockpin signalname="Rdm2B" name="connect" />
            <blockpin signalname="XLXN_31(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connecteur16" name="CCO">
            <blockpin signalname="XLXN_31(15:0)" name="Din(15:0)" />
            <blockpin signalname="CObus(15:0)" name="R(15:0)" />
            <blockpin signalname="CO2B" name="connect" />
            <blockpin signalname="XLXN_32(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connecteur16" name="CRI">
            <blockpin signalname="XLXN_32(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_18(15:0)" name="R(15:0)" />
            <blockpin signalname="RI2B" name="connect" />
            <blockpin signalname="bus_data(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="constant" name="XLXI_67">
            <attr value="0000" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 16 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_48(15:0)" name="O" />
        </block>
        <block symbolname="afficheur16" name="mon_afficheur">
            <blockpin signalname="XLXN_74" name="clk" />
            <blockpin signalname="XLXN_11(15:0)" name="data(15:0)" />
            <blockpin signalname="sevenseg(6:0)" name="sevenseg(6:0)" />
            <blockpin signalname="anodes(3:0)" name="anodes(3:0)" />
        </block>
        <block symbolname="clkdiv" name="mon_clkdiv">
            <blockpin signalname="clk" name="clk" />
            <blockpin name="clksec" />
            <blockpin signalname="XLXN_74" name="clk190" />
        </block>
        <block symbolname="inc" name="incCO">
            <blockpin signalname="CObus(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_84(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="or2" name="XLXI_74">
            <blockpin signalname="COinc" name="I0" />
            <blockpin signalname="B2CO" name="I1" />
            <blockpin signalname="XLXN_93" name="O" />
        </block>
        <block symbolname="insmem" name="XLXI_75">
            <blockpin signalname="CObus(7:0)" name="a(7:0)" />
            <blockpin signalname="XLXN_183(15:0)" name="spo(15:0)" />
        </block>
        <block symbolname="fsm" name="XLXI_76">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_183(15:0)" name="instr(15:0)" />
            <blockpin signalname="COinc" name="COinc" />
            <blockpin signalname="RIload" name="RIload" />
            <blockpin signalname="source(3:0)" name="source(3:0)" />
            <blockpin signalname="dest(3:0)" name="dest(3:0)" />
        </block>
        <block symbolname="connecteur16" name="CR1">
            <blockpin signalname="XLXN_48(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_4(15:0)" name="R(15:0)" />
            <blockpin signalname="R12B" name="connect" />
            <blockpin signalname="XLXN_19(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="connecteur16" name="CR2">
            <blockpin signalname="XLXN_19(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_5(15:0)" name="R(15:0)" />
            <blockpin signalname="R22B" name="connect" />
            <blockpin signalname="XLXN_20(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="mux2x16" name="selectCO">
            <blockpin signalname="XLXN_84(15:0)" name="D0(15:0)" />
            <blockpin signalname="bus_data(15:0)" name="D1(15:0)" />
            <blockpin signalname="B2CO" name="S0" />
            <blockpin signalname="XLXN_86(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="d4_16e" name="XLXI_113">
            <blockpin signalname="dest(0)" name="A0" />
            <blockpin signalname="dest(1)" name="A1" />
            <blockpin signalname="dest(2)" name="A2" />
            <blockpin signalname="dest(3)" name="A3" />
            <blockpin signalname="XLXN_194" name="E" />
            <blockpin name="D0" />
            <blockpin signalname="B2R1" name="D1" />
            <blockpin signalname="B2Rsrc2" name="D10" />
            <blockpin name="D11" />
            <blockpin signalname="B2Ram" name="D12" />
            <blockpin signalname="B2Rdm" name="D13" />
            <blockpin signalname="B2CO" name="D14" />
            <blockpin name="D15" />
            <blockpin signalname="B2R2" name="D2" />
            <blockpin signalname="B2R3" name="D3" />
            <blockpin signalname="B2R4" name="D4" />
            <blockpin signalname="B2R5" name="D5" />
            <blockpin signalname="B2Rled" name="D6" />
            <blockpin name="D7" />
            <blockpin signalname="B2R7seg" name="D8" />
            <blockpin signalname="B2Rsrc1" name="D9" />
        </block>
        <block symbolname="d4_16e" name="XLXI_114">
            <blockpin signalname="source(0)" name="A0" />
            <blockpin signalname="source(1)" name="A1" />
            <blockpin signalname="source(2)" name="A2" />
            <blockpin signalname="source(3)" name="A3" />
            <blockpin signalname="XLXN_195" name="E" />
            <blockpin name="D0" />
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
        <block symbolname="vcc" name="XLXI_115">
            <blockpin signalname="XLXN_194" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_116">
            <blockpin signalname="XLXN_195" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_117">
            <blockpin signalname="Rswload" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5382" height="7609">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="2944" y="400" name="R1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-340" type="instance" />
        </instance>
        <instance x="2944" y="784" name="R2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-336" type="instance" />
        </instance>
        <instance x="2944" y="1168" name="R3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-336" type="instance" />
        </instance>
        <instance x="2944" y="1552" name="R4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-336" type="instance" />
        </instance>
        <instance x="2944" y="1936" name="R5" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-340" type="instance" />
        </instance>
        <instance x="2944" y="2320" name="Rled" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-340" type="instance" />
        </instance>
        <instance x="2944" y="2704" name="Rsw" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-340" type="instance" />
        </instance>
        <instance x="2944" y="3088" name="R7seg" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-340" type="instance" />
        </instance>
        <instance x="2944" y="3472" name="Rsrc1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-340" type="instance" />
        </instance>
        <instance x="2944" y="3856" name="Rsrc2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-340" type="instance" />
        </instance>
        <instance x="2944" y="4240" name="Rdest" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-340" type="instance" />
        </instance>
        <instance x="2944" y="5392" name="CO" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-340" type="instance" />
        </instance>
        <instance x="2944" y="5776" name="RI" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-340" type="instance" />
        </instance>
        <instance x="3568" y="1008" name="CR3" orien="R0">
        </instance>
        <instance x="3568" y="1392" name="CR4" orien="R0">
        </instance>
        <instance x="3568" y="1776" name="CR5" orien="R0">
        </instance>
        <instance x="3568" y="2160" name="CRled" orien="R0">
        </instance>
        <instance x="3568" y="2544" name="CRsw" orien="R0">
        </instance>
        <instance x="3568" y="2928" name="CR7seg" orien="R0">
        </instance>
        <instance x="3568" y="3312" name="CRsrc1" orien="R0">
        </instance>
        <instance x="3568" y="3696" name="CRsrc2" orien="R0">
        </instance>
        <instance x="3568" y="4080" name="CRdest" orien="R0">
        </instance>
        <instance x="3568" y="4464" name="CRam" orien="R0">
        </instance>
        <instance x="3568" y="5232" name="CCO" orien="R0">
        </instance>
        <instance x="3568" y="5616" name="CRI" orien="R0">
        </instance>
        <branch name="XLXN_4(15:0)">
            <wire x2="3568" y1="144" y2="144" x1="3328" />
        </branch>
        <branch name="XLXN_5(15:0)">
            <wire x2="3568" y1="528" y2="528" x1="3328" />
        </branch>
        <branch name="XLXN_6(15:0)">
            <wire x2="3568" y1="912" y2="912" x1="3328" />
        </branch>
        <branch name="XLXN_7(15:0)">
            <wire x2="3568" y1="1296" y2="1296" x1="3328" />
        </branch>
        <branch name="XLXN_8(15:0)">
            <wire x2="3568" y1="1680" y2="1680" x1="3328" />
        </branch>
        <branch name="led(15:0)">
            <wire x2="3360" y1="1936" y2="1936" x1="1584" />
            <wire x2="3360" y1="1936" y2="2064" x1="3360" />
            <wire x2="3568" y1="2064" y2="2064" x1="3360" />
            <wire x2="3360" y1="2064" y2="2064" x1="3328" />
        </branch>
        <branch name="XLXN_10(15:0)">
            <wire x2="3568" y1="2448" y2="2448" x1="3328" />
        </branch>
        <branch name="XLXN_11(15:0)">
            <wire x2="3360" y1="2704" y2="2704" x1="2032" />
            <wire x2="3360" y1="2704" y2="2832" x1="3360" />
            <wire x2="3568" y1="2832" y2="2832" x1="3360" />
            <wire x2="3360" y1="2832" y2="2832" x1="3328" />
        </branch>
        <branch name="XLXN_12(15:0)">
            <wire x2="3568" y1="3216" y2="3216" x1="3328" />
        </branch>
        <branch name="XLXN_13(15:0)">
            <wire x2="3568" y1="3600" y2="3600" x1="3328" />
        </branch>
        <branch name="XLXN_14(15:0)">
            <wire x2="3568" y1="3984" y2="3984" x1="3328" />
        </branch>
        <branch name="XLXN_15(15:0)">
            <wire x2="3568" y1="4368" y2="4368" x1="3328" />
        </branch>
        <branch name="XLXN_16(15:0)">
            <wire x2="3568" y1="4752" y2="4752" x1="3328" />
        </branch>
        <instance x="3568" y="4848" name="CRdm" orien="R0">
        </instance>
        <branch name="CObus(15:0)">
            <wire x2="3408" y1="5008" y2="5008" x1="2048" />
            <wire x2="3408" y1="5008" y2="5136" x1="3408" />
            <wire x2="3568" y1="5136" y2="5136" x1="3408" />
            <wire x2="3376" y1="5136" y2="5136" x1="3328" />
            <wire x2="3408" y1="5136" y2="5136" x1="3376" />
        </branch>
        <branch name="XLXN_18(15:0)">
            <wire x2="3568" y1="5520" y2="5520" x1="3328" />
        </branch>
        <branch name="XLXN_19(15:0)">
            <wire x2="3504" y1="368" y2="464" x1="3504" />
            <wire x2="3568" y1="464" y2="464" x1="3504" />
            <wire x2="4032" y1="368" y2="368" x1="3504" />
            <wire x2="4032" y1="80" y2="80" x1="3952" />
            <wire x2="4032" y1="80" y2="368" x1="4032" />
        </branch>
        <branch name="XLXN_20(15:0)">
            <wire x2="3504" y1="736" y2="848" x1="3504" />
            <wire x2="3568" y1="848" y2="848" x1="3504" />
            <wire x2="4032" y1="736" y2="736" x1="3504" />
            <wire x2="4032" y1="464" y2="464" x1="3952" />
            <wire x2="4032" y1="464" y2="736" x1="4032" />
        </branch>
        <branch name="XLXN_21(15:0)">
            <wire x2="4032" y1="1120" y2="1120" x1="3504" />
            <wire x2="3504" y1="1120" y2="1232" x1="3504" />
            <wire x2="3568" y1="1232" y2="1232" x1="3504" />
            <wire x2="4032" y1="848" y2="848" x1="3952" />
            <wire x2="4032" y1="848" y2="1120" x1="4032" />
        </branch>
        <branch name="XLXN_22(15:0)">
            <wire x2="3504" y1="1520" y2="1616" x1="3504" />
            <wire x2="3568" y1="1616" y2="1616" x1="3504" />
            <wire x2="4032" y1="1520" y2="1520" x1="3504" />
            <wire x2="4032" y1="1232" y2="1232" x1="3952" />
            <wire x2="4032" y1="1232" y2="1520" x1="4032" />
        </branch>
        <branch name="XLXN_23(15:0)">
            <wire x2="3504" y1="1888" y2="2000" x1="3504" />
            <wire x2="3568" y1="2000" y2="2000" x1="3504" />
            <wire x2="4032" y1="1888" y2="1888" x1="3504" />
            <wire x2="4032" y1="1616" y2="1616" x1="3952" />
            <wire x2="4032" y1="1616" y2="1888" x1="4032" />
        </branch>
        <branch name="XLXN_24(15:0)">
            <wire x2="3504" y1="2288" y2="2384" x1="3504" />
            <wire x2="3568" y1="2384" y2="2384" x1="3504" />
            <wire x2="4032" y1="2288" y2="2288" x1="3504" />
            <wire x2="4032" y1="2000" y2="2000" x1="3952" />
            <wire x2="4032" y1="2000" y2="2288" x1="4032" />
        </branch>
        <branch name="XLXN_25(15:0)">
            <wire x2="3504" y1="2672" y2="2768" x1="3504" />
            <wire x2="3568" y1="2768" y2="2768" x1="3504" />
            <wire x2="4032" y1="2672" y2="2672" x1="3504" />
            <wire x2="4032" y1="2384" y2="2384" x1="3952" />
            <wire x2="4032" y1="2384" y2="2672" x1="4032" />
        </branch>
        <branch name="XLXN_26(15:0)">
            <wire x2="4032" y1="3040" y2="3040" x1="3504" />
            <wire x2="3504" y1="3040" y2="3152" x1="3504" />
            <wire x2="3568" y1="3152" y2="3152" x1="3504" />
            <wire x2="4032" y1="2768" y2="2768" x1="3952" />
            <wire x2="4032" y1="2768" y2="3040" x1="4032" />
        </branch>
        <branch name="XLXN_27(15:0)">
            <wire x2="4032" y1="3424" y2="3424" x1="3504" />
            <wire x2="3504" y1="3424" y2="3536" x1="3504" />
            <wire x2="3568" y1="3536" y2="3536" x1="3504" />
            <wire x2="4032" y1="3152" y2="3152" x1="3952" />
            <wire x2="4032" y1="3152" y2="3424" x1="4032" />
        </branch>
        <branch name="XLXN_28(15:0)">
            <wire x2="3504" y1="3824" y2="3920" x1="3504" />
            <wire x2="3568" y1="3920" y2="3920" x1="3504" />
            <wire x2="4032" y1="3824" y2="3824" x1="3504" />
            <wire x2="4032" y1="3536" y2="3536" x1="3952" />
            <wire x2="4032" y1="3536" y2="3824" x1="4032" />
        </branch>
        <branch name="XLXN_29(15:0)">
            <wire x2="3504" y1="4208" y2="4304" x1="3504" />
            <wire x2="3568" y1="4304" y2="4304" x1="3504" />
            <wire x2="4032" y1="4208" y2="4208" x1="3504" />
            <wire x2="4032" y1="3920" y2="3920" x1="3952" />
            <wire x2="4032" y1="3920" y2="4208" x1="4032" />
        </branch>
        <branch name="XLXN_30(15:0)">
            <wire x2="3504" y1="4592" y2="4688" x1="3504" />
            <wire x2="3568" y1="4688" y2="4688" x1="3504" />
            <wire x2="4032" y1="4592" y2="4592" x1="3504" />
            <wire x2="4032" y1="4304" y2="4304" x1="3952" />
            <wire x2="4032" y1="4304" y2="4592" x1="4032" />
        </branch>
        <branch name="XLXN_31(15:0)">
            <wire x2="3504" y1="4976" y2="5072" x1="3504" />
            <wire x2="3568" y1="5072" y2="5072" x1="3504" />
            <wire x2="4032" y1="4976" y2="4976" x1="3504" />
            <wire x2="4032" y1="4688" y2="4688" x1="3952" />
            <wire x2="4032" y1="4688" y2="4976" x1="4032" />
        </branch>
        <branch name="XLXN_32(15:0)">
            <wire x2="3488" y1="5360" y2="5456" x1="3488" />
            <wire x2="3568" y1="5456" y2="5456" x1="3488" />
            <wire x2="4032" y1="5360" y2="5360" x1="3488" />
            <wire x2="4032" y1="5072" y2="5072" x1="3952" />
            <wire x2="4032" y1="5072" y2="5360" x1="4032" />
        </branch>
        <instance x="2944" y="5008" name="Rdm" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-340" type="instance" />
        </instance>
        <branch name="bus_data(15:0)">
            <wire x2="1568" y1="4928" y2="5200" x1="1568" />
            <wire x2="1664" y1="5200" y2="5200" x1="1568" />
            <wire x2="2752" y1="4928" y2="4928" x1="1568" />
            <wire x2="2752" y1="4928" y2="5840" x1="2752" />
            <wire x2="4016" y1="5840" y2="5840" x1="2752" />
            <wire x2="2752" y1="144" y2="528" x1="2752" />
            <wire x2="2752" y1="528" y2="912" x1="2752" />
            <wire x2="2752" y1="912" y2="1296" x1="2752" />
            <wire x2="2752" y1="1296" y2="1680" x1="2752" />
            <wire x2="2752" y1="1680" y2="2064" x1="2752" />
            <wire x2="2752" y1="2064" y2="2832" x1="2752" />
            <wire x2="2752" y1="2832" y2="3216" x1="2752" />
            <wire x2="2752" y1="3216" y2="3600" x1="2752" />
            <wire x2="2752" y1="3600" y2="4368" x1="2752" />
            <wire x2="2944" y1="4368" y2="4368" x1="2752" />
            <wire x2="2752" y1="4368" y2="4928" x1="2752" />
            <wire x2="2944" y1="3600" y2="3600" x1="2752" />
            <wire x2="2944" y1="3216" y2="3216" x1="2752" />
            <wire x2="2944" y1="2832" y2="2832" x1="2752" />
            <wire x2="2944" y1="2064" y2="2064" x1="2752" />
            <wire x2="2944" y1="1680" y2="1680" x1="2752" />
            <wire x2="2944" y1="1296" y2="1296" x1="2752" />
            <wire x2="2944" y1="912" y2="912" x1="2752" />
            <wire x2="2944" y1="528" y2="528" x1="2752" />
            <wire x2="2944" y1="144" y2="144" x1="2752" />
            <wire x2="4016" y1="5456" y2="5456" x1="3952" />
            <wire x2="4016" y1="5456" y2="5840" x1="4016" />
        </branch>
        <instance x="2944" y="4624" name="Ram" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-340" type="instance" />
        </instance>
        <branch name="XLXN_48(15:0)">
            <wire x2="3568" y1="80" y2="80" x1="3472" />
        </branch>
        <branch name="switches(15:0)">
            <wire x2="2944" y1="2448" y2="2448" x1="1600" />
        </branch>
        <iomarker fontsize="28" x="1584" y="1936" name="led(15:0)" orien="R180" />
        <iomarker fontsize="28" x="1600" y="2448" name="switches(15:0)" orien="R180" />
        <instance x="2032" y="2736" name="mon_afficheur" orien="M0">
        </instance>
        <branch name="sevenseg(6:0)">
            <wire x2="1648" y1="2640" y2="2640" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="1616" y="2640" name="sevenseg(6:0)" orien="R180" />
        <branch name="anodes(3:0)">
            <wire x2="1648" y1="2704" y2="2704" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="1616" y="2704" name="anodes(3:0)" orien="R180" />
        <branch name="clk">
            <wire x2="2688" y1="272" y2="272" x1="1616" />
            <wire x2="2944" y1="272" y2="272" x1="2688" />
            <wire x2="2688" y1="272" y2="656" x1="2688" />
            <wire x2="2944" y1="656" y2="656" x1="2688" />
            <wire x2="2688" y1="656" y2="1040" x1="2688" />
            <wire x2="2944" y1="1040" y2="1040" x1="2688" />
            <wire x2="2688" y1="1040" y2="1424" x1="2688" />
            <wire x2="2944" y1="1424" y2="1424" x1="2688" />
            <wire x2="2688" y1="1424" y2="1808" x1="2688" />
            <wire x2="2944" y1="1808" y2="1808" x1="2688" />
            <wire x2="2688" y1="1808" y2="2192" x1="2688" />
            <wire x2="2944" y1="2192" y2="2192" x1="2688" />
            <wire x2="2688" y1="2192" y2="2576" x1="2688" />
            <wire x2="2944" y1="2576" y2="2576" x1="2688" />
            <wire x2="2688" y1="2576" y2="2960" x1="2688" />
            <wire x2="2944" y1="2960" y2="2960" x1="2688" />
            <wire x2="2688" y1="2960" y2="3344" x1="2688" />
            <wire x2="2944" y1="3344" y2="3344" x1="2688" />
            <wire x2="2688" y1="3344" y2="3728" x1="2688" />
            <wire x2="2944" y1="3728" y2="3728" x1="2688" />
            <wire x2="2688" y1="3728" y2="4112" x1="2688" />
            <wire x2="2944" y1="4112" y2="4112" x1="2688" />
            <wire x2="2688" y1="4112" y2="4496" x1="2688" />
            <wire x2="2944" y1="4496" y2="4496" x1="2688" />
            <wire x2="2688" y1="4496" y2="4880" x1="2688" />
            <wire x2="2944" y1="4880" y2="4880" x1="2688" />
            <wire x2="2688" y1="4880" y2="5264" x1="2688" />
            <wire x2="2944" y1="5264" y2="5264" x1="2688" />
            <wire x2="2688" y1="5264" y2="5648" x1="2688" />
            <wire x2="2944" y1="5648" y2="5648" x1="2688" />
            <wire x2="2688" y1="5648" y2="5984" x1="2688" />
            <wire x2="2688" y1="2576" y2="2576" x1="2448" />
        </branch>
        <branch name="XLXN_74">
            <wire x2="2064" y1="2640" y2="2640" x1="2032" />
        </branch>
        <instance x="2448" y="2672" name="mon_clkdiv" orien="M0">
        </instance>
        <iomarker fontsize="28" x="1616" y="272" name="clk" orien="R180" />
        <instance x="2048" y="5040" name="incCO" orien="M0">
            <attrtext style="alignment:RIGHT;fontsize:28;fontname:Arial" attrname="InstName" x="288" y="16" type="instance" />
        </instance>
        <branch name="XLXN_84(15:0)">
            <wire x2="1664" y1="5008" y2="5008" x1="1648" />
            <wire x2="1648" y1="5008" y2="5136" x1="1648" />
            <wire x2="1664" y1="5136" y2="5136" x1="1648" />
        </branch>
        <branch name="XLXN_86(15:0)">
            <wire x2="2944" y1="5136" y2="5136" x1="2048" />
        </branch>
        <branch name="COinc">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1568" y="5472" type="branch" />
            <wire x2="1568" y1="5472" y2="5472" x1="1504" />
            <wire x2="1728" y1="5472" y2="5472" x1="1568" />
        </branch>
        <instance x="1728" y="5536" name="XLXI_74" orien="R0" />
        <branch name="B2CO">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1536" y="5264" type="branch" />
            <wire x2="1536" y1="5264" y2="5264" x1="1504" />
            <wire x2="1600" y1="5264" y2="5264" x1="1536" />
            <wire x2="1600" y1="5264" y2="5408" x1="1600" />
            <wire x2="1728" y1="5408" y2="5408" x1="1600" />
            <wire x2="1664" y1="5264" y2="5264" x1="1600" />
        </branch>
        <branch name="XLXN_93">
            <wire x2="2464" y1="5440" y2="5440" x1="1984" />
            <wire x2="2464" y1="5200" y2="5440" x1="2464" />
            <wire x2="2944" y1="5200" y2="5200" x1="2464" />
        </branch>
        <instance x="1712" y="5552" name="XLXI_75" orien="R0">
        </instance>
        <branch name="RIload">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2848" y="5584" type="branch" />
            <wire x2="2848" y1="5584" y2="5584" x1="2816" />
            <wire x2="2944" y1="5584" y2="5584" x1="2848" />
        </branch>
        <branch name="RI2B">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3520" y="5584" type="branch" />
            <wire x2="3520" y1="5584" y2="5584" x1="3488" />
            <wire x2="3568" y1="5584" y2="5584" x1="3520" />
        </branch>
        <instance x="2688" y="6208" name="XLXI_76" orien="R0">
        </instance>
        <branch name="COinc">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3120" y="5984" type="branch" />
            <wire x2="3120" y1="5984" y2="5984" x1="3072" />
            <wire x2="3184" y1="5984" y2="5984" x1="3120" />
        </branch>
        <branch name="RIload">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3136" y="6048" type="branch" />
            <wire x2="3136" y1="6048" y2="6048" x1="3072" />
            <wire x2="3184" y1="6048" y2="6048" x1="3136" />
        </branch>
        <instance x="3568" y="240" name="CR1" orien="R0">
        </instance>
        <instance x="3568" y="624" name="CR2" orien="R0">
        </instance>
        <instance x="3328" y="48" name="XLXI_67" orien="R0">
        </instance>
        <instance x="1664" y="5296" name="selectCO" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="192" y="-32" type="instance" />
        </instance>
        <bustap x2="3376" y1="5136" y2="5232" x1="3376" />
        <branch name="CObus(7:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2576" y="5392" type="branch" />
            <wire x2="1648" y1="5536" y2="5632" x1="1648" />
            <wire x2="1712" y1="5632" y2="5632" x1="1648" />
            <wire x2="2512" y1="5536" y2="5536" x1="1648" />
            <wire x2="2512" y1="5392" y2="5536" x1="2512" />
            <wire x2="2576" y1="5392" y2="5392" x1="2512" />
            <wire x2="3376" y1="5392" y2="5392" x1="2576" />
            <wire x2="3376" y1="5232" y2="5392" x1="3376" />
        </branch>
        <branch name="B2R1">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2896" y="208" type="branch" />
            <wire x2="2896" y1="208" y2="208" x1="2880" />
            <wire x2="2944" y1="208" y2="208" x1="2896" />
        </branch>
        <branch name="B2R2">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2896" y="592" type="branch" />
            <wire x2="2896" y1="592" y2="592" x1="2880" />
            <wire x2="2944" y1="592" y2="592" x1="2896" />
        </branch>
        <branch name="B2R3">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2896" y="976" type="branch" />
            <wire x2="2896" y1="976" y2="976" x1="2880" />
            <wire x2="2944" y1="976" y2="976" x1="2896" />
        </branch>
        <branch name="B2R4">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2896" y="1360" type="branch" />
            <wire x2="2896" y1="1360" y2="1360" x1="2880" />
            <wire x2="2944" y1="1360" y2="1360" x1="2896" />
        </branch>
        <branch name="B2R5">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2896" y="1744" type="branch" />
            <wire x2="2896" y1="1744" y2="1744" x1="2880" />
            <wire x2="2944" y1="1744" y2="1744" x1="2896" />
        </branch>
        <branch name="B2Rled">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2893" y="2128" type="branch" />
            <wire x2="2893" y1="2128" y2="2128" x1="2880" />
            <wire x2="2944" y1="2128" y2="2128" x1="2893" />
        </branch>
        <branch name="Rswload">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2896" y="2512" type="branch" />
            <wire x2="2896" y1="2512" y2="2512" x1="2880" />
            <wire x2="2944" y1="2512" y2="2512" x1="2896" />
        </branch>
        <branch name="B2Rsrc1">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2912" y="3280" type="branch" />
            <wire x2="2912" y1="3280" y2="3280" x1="2880" />
            <wire x2="2944" y1="3280" y2="3280" x1="2912" />
        </branch>
        <branch name="B2R7seg">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2912" y="2896" type="branch" />
            <wire x2="2912" y1="2896" y2="2896" x1="2880" />
            <wire x2="2944" y1="2896" y2="2896" x1="2912" />
        </branch>
        <branch name="B2Rsrc2">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2912" y="3664" type="branch" />
            <wire x2="2912" y1="3664" y2="3664" x1="2880" />
            <wire x2="2944" y1="3664" y2="3664" x1="2912" />
        </branch>
        <branch name="Rdestload">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2896" y="4048" type="branch" />
            <wire x2="2896" y1="4048" y2="4048" x1="2880" />
            <wire x2="2944" y1="4048" y2="4048" x1="2896" />
        </branch>
        <branch name="B2Ram">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2896" y="4432" type="branch" />
            <wire x2="2896" y1="4432" y2="4432" x1="2880" />
            <wire x2="2944" y1="4432" y2="4432" x1="2896" />
        </branch>
        <branch name="Rdmload">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2896" y="4816" type="branch" />
            <wire x2="2896" y1="4816" y2="4816" x1="2880" />
            <wire x2="2944" y1="4816" y2="4816" x1="2896" />
        </branch>
        <branch name="R12B">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3520" y="208" type="branch" />
            <wire x2="3520" y1="208" y2="208" x1="3504" />
            <wire x2="3568" y1="208" y2="208" x1="3520" />
        </branch>
        <branch name="R22B">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3520" y="592" type="branch" />
            <wire x2="3520" y1="592" y2="592" x1="3504" />
            <wire x2="3568" y1="592" y2="592" x1="3520" />
        </branch>
        <branch name="R32B">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3520" y="976" type="branch" />
            <wire x2="3520" y1="976" y2="976" x1="3504" />
            <wire x2="3568" y1="976" y2="976" x1="3520" />
        </branch>
        <branch name="R42B">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3520" y="1360" type="branch" />
            <wire x2="3520" y1="1360" y2="1360" x1="3504" />
            <wire x2="3568" y1="1360" y2="1360" x1="3520" />
        </branch>
        <branch name="R52B">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3520" y="1744" type="branch" />
            <wire x2="3520" y1="1744" y2="1744" x1="3504" />
            <wire x2="3568" y1="1744" y2="1744" x1="3520" />
        </branch>
        <branch name="Rled2B">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3520" y="2128" type="branch" />
            <wire x2="3520" y1="2128" y2="2128" x1="3504" />
            <wire x2="3568" y1="2128" y2="2128" x1="3520" />
        </branch>
        <branch name="Rsw2B">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3520" y="2512" type="branch" />
            <wire x2="3520" y1="2512" y2="2512" x1="3504" />
            <wire x2="3568" y1="2512" y2="2512" x1="3520" />
        </branch>
        <branch name="R7seg2B">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3520" y="2896" type="branch" />
            <wire x2="3520" y1="2896" y2="2896" x1="3504" />
            <wire x2="3568" y1="2896" y2="2896" x1="3520" />
        </branch>
        <branch name="Rsrc12B">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3520" y="3280" type="branch" />
            <wire x2="3520" y1="3280" y2="3280" x1="3504" />
            <wire x2="3568" y1="3280" y2="3280" x1="3520" />
        </branch>
        <branch name="Rsrc22B">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3520" y="3664" type="branch" />
            <wire x2="3520" y1="3664" y2="3664" x1="3504" />
            <wire x2="3568" y1="3664" y2="3664" x1="3520" />
        </branch>
        <branch name="Rdest2B">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3520" y="4048" type="branch" />
            <wire x2="3520" y1="4048" y2="4048" x1="3504" />
            <wire x2="3568" y1="4048" y2="4048" x1="3520" />
        </branch>
        <branch name="Ram2B">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3520" y="4432" type="branch" />
            <wire x2="3520" y1="4432" y2="4432" x1="3504" />
            <wire x2="3568" y1="4432" y2="4432" x1="3520" />
        </branch>
        <branch name="Rdm2B">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3520" y="4816" type="branch" />
            <wire x2="3520" y1="4816" y2="4816" x1="3504" />
            <wire x2="3568" y1="4816" y2="4816" x1="3520" />
        </branch>
        <branch name="CO2B">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3520" y="5200" type="branch" />
            <wire x2="3520" y1="5200" y2="5200" x1="3504" />
            <wire x2="3568" y1="5200" y2="5200" x1="3520" />
        </branch>
        <branch name="XLXN_183(15:0)">
            <wire x2="2544" y1="5632" y2="5632" x1="2000" />
            <wire x2="2544" y1="5632" y2="6304" x1="2544" />
            <wire x2="2688" y1="6304" y2="6304" x1="2544" />
            <wire x2="2544" y1="5520" y2="5632" x1="2544" />
            <wire x2="2944" y1="5520" y2="5520" x1="2544" />
        </branch>
        <instance x="2272" y="6512" name="XLXI_113" orien="R90" />
        <instance x="3520" y="6512" name="XLXI_114" orien="R90" />
        <branch name="dest(3:0)">
            <wire x2="3168" y1="6304" y2="6304" x1="3072" />
            <wire x2="3232" y1="6304" y2="6304" x1="3168" />
            <wire x2="3296" y1="6304" y2="6304" x1="3232" />
            <wire x2="3360" y1="6304" y2="6304" x1="3296" />
            <wire x2="3392" y1="6304" y2="6304" x1="3360" />
        </branch>
        <branch name="source(3:0)">
            <wire x2="4416" y1="6240" y2="6240" x1="3072" />
            <wire x2="4480" y1="6240" y2="6240" x1="4416" />
            <wire x2="4544" y1="6240" y2="6240" x1="4480" />
            <wire x2="4608" y1="6240" y2="6240" x1="4544" />
            <wire x2="4656" y1="6240" y2="6240" x1="4608" />
        </branch>
        <bustap x2="3168" y1="6304" y2="6400" x1="3168" />
        <branch name="dest(3)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3168" y="6456" type="branch" />
            <wire x2="3168" y1="6400" y2="6456" x1="3168" />
            <wire x2="3168" y1="6456" y2="6512" x1="3168" />
        </branch>
        <bustap x2="3232" y1="6304" y2="6400" x1="3232" />
        <branch name="dest(2)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3232" y="6456" type="branch" />
            <wire x2="3232" y1="6400" y2="6456" x1="3232" />
            <wire x2="3232" y1="6456" y2="6512" x1="3232" />
        </branch>
        <bustap x2="3296" y1="6304" y2="6400" x1="3296" />
        <branch name="dest(1)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3296" y="6456" type="branch" />
            <wire x2="3296" y1="6400" y2="6456" x1="3296" />
            <wire x2="3296" y1="6456" y2="6512" x1="3296" />
        </branch>
        <bustap x2="3360" y1="6304" y2="6400" x1="3360" />
        <branch name="dest(0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3360" y="6456" type="branch" />
            <wire x2="3360" y1="6400" y2="6456" x1="3360" />
            <wire x2="3360" y1="6456" y2="6512" x1="3360" />
        </branch>
        <bustap x2="4416" y1="6240" y2="6336" x1="4416" />
        <branch name="source(3)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="4416" y="6424" type="branch" />
            <wire x2="4416" y1="6336" y2="6424" x1="4416" />
            <wire x2="4416" y1="6424" y2="6512" x1="4416" />
        </branch>
        <bustap x2="4480" y1="6240" y2="6336" x1="4480" />
        <branch name="source(2)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="4480" y="6424" type="branch" />
            <wire x2="4480" y1="6336" y2="6424" x1="4480" />
            <wire x2="4480" y1="6424" y2="6512" x1="4480" />
        </branch>
        <bustap x2="4544" y1="6240" y2="6336" x1="4544" />
        <branch name="source(1)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="4544" y="6424" type="branch" />
            <wire x2="4544" y1="6336" y2="6424" x1="4544" />
            <wire x2="4544" y1="6424" y2="6512" x1="4544" />
        </branch>
        <bustap x2="4608" y1="6240" y2="6336" x1="4608" />
        <branch name="source(0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="4608" y="6424" type="branch" />
            <wire x2="4608" y1="6336" y2="6424" x1="4608" />
            <wire x2="4608" y1="6424" y2="6512" x1="4608" />
        </branch>
        <branch name="XLXN_194">
            <wire x2="2400" y1="6480" y2="6496" x1="2400" />
            <wire x2="2400" y1="6496" y2="6512" x1="2400" />
        </branch>
        <branch name="XLXN_195">
            <wire x2="3648" y1="6480" y2="6512" x1="3648" />
        </branch>
        <instance x="3584" y="6480" name="XLXI_116" orien="R0" />
        <branch name="B2CO">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2464" y="6944" type="branch" />
            <wire x2="2464" y1="6896" y2="6944" x1="2464" />
            <wire x2="2464" y1="6944" y2="6960" x1="2464" />
        </branch>
        <branch name="B2Rdm">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2528" y="6928" type="branch" />
            <wire x2="2528" y1="6896" y2="6928" x1="2528" />
            <wire x2="2528" y1="6928" y2="6960" x1="2528" />
        </branch>
        <branch name="B2Ram">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2592" y="6928" type="branch" />
            <wire x2="2592" y1="6896" y2="6928" x1="2592" />
            <wire x2="2592" y1="6928" y2="6960" x1="2592" />
        </branch>
        <branch name="B2Rsrc2">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2720" y="6944" type="branch" />
            <wire x2="2720" y1="6896" y2="6944" x1="2720" />
            <wire x2="2720" y1="6944" y2="6960" x1="2720" />
        </branch>
        <branch name="B2Rsrc1">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2784" y="6944" type="branch" />
            <wire x2="2784" y1="6896" y2="6944" x1="2784" />
            <wire x2="2784" y1="6944" y2="6960" x1="2784" />
        </branch>
        <branch name="B2R7seg">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2848" y="6944" type="branch" />
            <wire x2="2848" y1="6896" y2="6944" x1="2848" />
            <wire x2="2848" y1="6944" y2="6960" x1="2848" />
        </branch>
        <branch name="B2Rled">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2976" y="6928" type="branch" />
            <wire x2="2976" y1="6896" y2="6928" x1="2976" />
            <wire x2="2976" y1="6928" y2="6960" x1="2976" />
        </branch>
        <branch name="B2R5">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3040" y="6944" type="branch" />
            <wire x2="3040" y1="6896" y2="6944" x1="3040" />
            <wire x2="3040" y1="6944" y2="6960" x1="3040" />
        </branch>
        <branch name="B2R4">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3104" y="6944" type="branch" />
            <wire x2="3104" y1="6896" y2="6944" x1="3104" />
            <wire x2="3104" y1="6944" y2="6960" x1="3104" />
        </branch>
        <branch name="B2R3">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3168" y="6944" type="branch" />
            <wire x2="3168" y1="6896" y2="6944" x1="3168" />
            <wire x2="3168" y1="6944" y2="6960" x1="3168" />
        </branch>
        <branch name="B2R2">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3232" y="6944" type="branch" />
            <wire x2="3232" y1="6896" y2="6944" x1="3232" />
            <wire x2="3232" y1="6944" y2="6960" x1="3232" />
        </branch>
        <branch name="B2R1">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3296" y="6944" type="branch" />
            <wire x2="3296" y1="6896" y2="6944" x1="3296" />
            <wire x2="3296" y1="6944" y2="6960" x1="3296" />
        </branch>
        <branch name="RI2B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3648" y="6944" type="branch" />
            <wire x2="3648" y1="6896" y2="6944" x1="3648" />
            <wire x2="3648" y1="6944" y2="6960" x1="3648" />
        </branch>
        <branch name="CO2B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3712" y="6944" type="branch" />
            <wire x2="3712" y1="6896" y2="6944" x1="3712" />
            <wire x2="3712" y1="6944" y2="6960" x1="3712" />
        </branch>
        <branch name="Rdm2B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3776" y="6944" type="branch" />
            <wire x2="3776" y1="6896" y2="6944" x1="3776" />
            <wire x2="3776" y1="6944" y2="6960" x1="3776" />
        </branch>
        <branch name="Ram2B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3840" y="6944" type="branch" />
            <wire x2="3840" y1="6896" y2="6944" x1="3840" />
            <wire x2="3840" y1="6944" y2="6960" x1="3840" />
        </branch>
        <branch name="Rdest2B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3904" y="6944" type="branch" />
            <wire x2="3904" y1="6896" y2="6944" x1="3904" />
            <wire x2="3904" y1="6944" y2="6960" x1="3904" />
        </branch>
        <branch name="Rsrc22B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="3968" y="6944" type="branch" />
            <wire x2="3968" y1="6896" y2="6944" x1="3968" />
            <wire x2="3968" y1="6944" y2="6960" x1="3968" />
        </branch>
        <branch name="Rsrc12B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="4032" y="6944" type="branch" />
            <wire x2="4032" y1="6896" y2="6944" x1="4032" />
            <wire x2="4032" y1="6944" y2="6960" x1="4032" />
        </branch>
        <branch name="R7seg2B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="4096" y="6944" type="branch" />
            <wire x2="4096" y1="6896" y2="6944" x1="4096" />
            <wire x2="4096" y1="6944" y2="6960" x1="4096" />
        </branch>
        <branch name="Rsw2B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="4160" y="6944" type="branch" />
            <wire x2="4160" y1="6896" y2="6944" x1="4160" />
            <wire x2="4160" y1="6944" y2="6960" x1="4160" />
        </branch>
        <branch name="Rled2B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="4224" y="6944" type="branch" />
            <wire x2="4224" y1="6896" y2="6944" x1="4224" />
            <wire x2="4224" y1="6944" y2="6960" x1="4224" />
        </branch>
        <branch name="R52B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="4288" y="6944" type="branch" />
            <wire x2="4288" y1="6896" y2="6944" x1="4288" />
            <wire x2="4288" y1="6944" y2="6960" x1="4288" />
        </branch>
        <branch name="R42B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="4352" y="6944" type="branch" />
            <wire x2="4352" y1="6896" y2="6944" x1="4352" />
            <wire x2="4352" y1="6944" y2="6960" x1="4352" />
        </branch>
        <branch name="R32B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="4416" y="6944" type="branch" />
            <wire x2="4416" y1="6896" y2="6944" x1="4416" />
            <wire x2="4416" y1="6944" y2="6960" x1="4416" />
        </branch>
        <branch name="R22B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="4480" y="6944" type="branch" />
            <wire x2="4480" y1="6896" y2="6944" x1="4480" />
            <wire x2="4480" y1="6944" y2="6960" x1="4480" />
        </branch>
        <branch name="R12B">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="4544" y="6944" type="branch" />
            <wire x2="4544" y1="6896" y2="6944" x1="4544" />
            <wire x2="4544" y1="6944" y2="6960" x1="4544" />
        </branch>
        <instance x="2880" y="2576" name="XLXI_117" orien="R270" />
        <instance x="2336" y="6480" name="XLXI_115" orien="R0" />
    </sheet>
</drawing>