<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="XLXN_3(3:0)" />
        <signal name="sevenseg(6:0)" />
        <signal name="anodes(3:0)" />
        <signal name="data(15:0)" />
        <signal name="data(15:12)" />
        <signal name="data(11:8)" />
        <signal name="data(7:4)" />
        <signal name="data(3:0)" />
        <signal name="XLXN_19(1:0)" />
        <signal name="XLXN_21(3:0)" />
        <signal name="XLXN_22(3:0)" />
        <signal name="XLXN_23(3:0)" />
        <signal name="XLXN_24(3:0)" />
        <signal name="XLXN_25" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="sevenseg(6:0)" />
        <port polarity="Output" name="anodes(3:0)" />
        <port polarity="Input" name="data(15:0)" />
        <blockdef name="compteur4">
            <timestamp>2013-8-6T13:22:56</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="mux4x4">
            <timestamp>2013-8-7T16:52:14</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="x7seg">
            <timestamp>2013-8-7T16:56:18</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="compteur4" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_19(1:0)" name="q(1:0)" />
        </block>
        <block symbolname="mux4x4" name="mux_data">
            <blockpin signalname="data(3:0)" name="I0(3:0)" />
            <blockpin signalname="data(7:4)" name="I1(3:0)" />
            <blockpin signalname="data(11:8)" name="I2(3:0)" />
            <blockpin signalname="data(15:12)" name="I3(3:0)" />
            <blockpin signalname="XLXN_19(1:0)" name="s(1:0)" />
            <blockpin signalname="XLXN_3(3:0)" name="O(3:0)" />
        </block>
        <block symbolname="mux4x4" name="mux_anodes">
            <blockpin signalname="XLXN_21(3:0)" name="I0(3:0)" />
            <blockpin signalname="XLXN_22(3:0)" name="I1(3:0)" />
            <blockpin signalname="XLXN_23(3:0)" name="I2(3:0)" />
            <blockpin signalname="XLXN_24(3:0)" name="I3(3:0)" />
            <blockpin signalname="XLXN_19(1:0)" name="s(1:0)" />
            <blockpin signalname="anodes(3:0)" name="O(3:0)" />
        </block>
        <block symbolname="x7seg" name="XLXI_10">
            <blockpin signalname="XLXN_3(3:0)" name="sw(3:0)" />
            <blockpin signalname="sevenseg(6:0)" name="sevenseg(6:0)" />
            <blockpin name="anodes(3:0)" />
        </block>
        <block symbolname="constant" name="XLXI_12">
            <attr value="1110" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 4 Binary" />
            </attr>
            <blockpin signalname="XLXN_21(3:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_13">
            <attr value="1101" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 4 Binary" />
            </attr>
            <blockpin signalname="XLXN_22(3:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_14">
            <attr value="1011" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 4 Binary" />
            </attr>
            <blockpin signalname="XLXN_23(3:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_15">
            <attr value="0111" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 4 Binary" />
            </attr>
            <blockpin signalname="XLXN_24(3:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="912" y="352" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1392" y="832" name="mux_data" orien="R0">
        </instance>
        <instance x="1392" y="1264" name="mux_anodes" orien="R0">
        </instance>
        <instance x="1872" y="640" name="XLXI_10" orien="R0">
        </instance>
        <branch name="XLXN_3(3:0)">
            <wire x2="1872" y1="544" y2="544" x1="1776" />
        </branch>
        <branch name="sevenseg(6:0)">
            <wire x2="2352" y1="544" y2="544" x1="2256" />
        </branch>
        <branch name="anodes(3:0)">
            <wire x2="2368" y1="976" y2="976" x1="1776" />
        </branch>
        <bustap x2="1104" y1="736" y2="736" x1="1008" />
        <branch name="data(15:12)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1248" y="736" type="branch" />
            <wire x2="1248" y1="736" y2="736" x1="1104" />
            <wire x2="1392" y1="736" y2="736" x1="1248" />
        </branch>
        <bustap x2="1104" y1="672" y2="672" x1="1008" />
        <branch name="data(11:8)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1248" y="672" type="branch" />
            <wire x2="1248" y1="672" y2="672" x1="1104" />
            <wire x2="1392" y1="672" y2="672" x1="1248" />
        </branch>
        <bustap x2="1104" y1="608" y2="608" x1="1008" />
        <branch name="data(7:4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1248" y="608" type="branch" />
            <wire x2="1248" y1="608" y2="608" x1="1104" />
            <wire x2="1392" y1="608" y2="608" x1="1248" />
        </branch>
        <bustap x2="1104" y1="544" y2="544" x1="1008" />
        <branch name="data(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1248" y="544" type="branch" />
            <wire x2="1248" y1="544" y2="544" x1="1104" />
            <wire x2="1392" y1="544" y2="544" x1="1248" />
        </branch>
        <branch name="XLXN_19(1:0)">
            <wire x2="1344" y1="320" y2="320" x1="1296" />
            <wire x2="1344" y1="320" y2="800" x1="1344" />
            <wire x2="1392" y1="800" y2="800" x1="1344" />
            <wire x2="1344" y1="800" y2="1232" x1="1344" />
            <wire x2="1392" y1="1232" y2="1232" x1="1344" />
        </branch>
        <branch name="XLXN_21(3:0)">
            <wire x2="1392" y1="976" y2="976" x1="1360" />
        </branch>
        <instance x="1216" y="944" name="XLXI_12" orien="R0">
        </instance>
        <branch name="XLXN_22(3:0)">
            <wire x2="1392" y1="1040" y2="1040" x1="1360" />
        </branch>
        <instance x="1216" y="1008" name="XLXI_13" orien="R0">
        </instance>
        <branch name="XLXN_23(3:0)">
            <wire x2="1392" y1="1104" y2="1104" x1="1360" />
        </branch>
        <instance x="1216" y="1072" name="XLXI_14" orien="R0">
        </instance>
        <branch name="XLXN_24(3:0)">
            <wire x2="1392" y1="1168" y2="1168" x1="1360" />
        </branch>
        <instance x="1216" y="1136" name="XLXI_15" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2368" y="976" name="anodes(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2352" y="544" name="sevenseg(6:0)" orien="R0" />
        <iomarker fontsize="28" x="752" y="480" name="data(15:0)" orien="R180" />
        <branch name="data(15:0)">
            <wire x2="1008" y1="480" y2="480" x1="752" />
            <wire x2="1008" y1="480" y2="816" x1="1008" />
        </branch>
        <branch name="clk">
            <wire x2="896" y1="320" y2="320" x1="672" />
            <wire x2="912" y1="320" y2="320" x1="896" />
        </branch>
        <iomarker fontsize="28" x="672" y="320" name="clk" orien="R180" />
    </sheet>
</drawing>