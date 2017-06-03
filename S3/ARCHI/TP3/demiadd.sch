<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="c" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="b" />
        <signal name="a" />
        <signal name="s" />
        <port polarity="Output" name="c" />
        <port polarity="Input" name="b" />
        <port polarity="Input" name="a" />
        <port polarity="Output" name="s" />
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
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
        <block symbolname="xor2" name="XLXI_1">
            <blockpin signalname="b" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="s" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="b" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="c" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1168" y="848" name="XLXI_1" orien="R0" />
        <instance x="1168" y="1168" name="XLXI_2" orien="R0" />
        <branch name="s">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1744" y="752" type="branch" />
            <wire x2="1696" y1="752" y2="752" x1="1424" />
            <wire x2="1744" y1="752" y2="752" x1="1696" />
            <wire x2="1968" y1="752" y2="752" x1="1744" />
        </branch>
        <branch name="c">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1728" y="1072" type="branch" />
            <wire x2="1728" y1="1072" y2="1072" x1="1424" />
            <wire x2="2000" y1="1072" y2="1072" x1="1728" />
        </branch>
        <branch name="b">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1024" y="784" type="branch" />
            <wire x2="1024" y1="784" y2="784" x1="848" />
            <wire x2="1072" y1="784" y2="784" x1="1024" />
            <wire x2="1168" y1="784" y2="784" x1="1072" />
            <wire x2="1072" y1="784" y2="1104" x1="1072" />
            <wire x2="1168" y1="1104" y2="1104" x1="1072" />
        </branch>
        <branch name="a">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1040" y="720" type="branch" />
            <wire x2="960" y1="720" y2="720" x1="848" />
            <wire x2="960" y1="720" y2="1040" x1="960" />
            <wire x2="1168" y1="1040" y2="1040" x1="960" />
            <wire x2="1040" y1="720" y2="720" x1="960" />
            <wire x2="1168" y1="720" y2="720" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="848" y="784" name="b" orien="R180" />
        <iomarker fontsize="28" x="848" y="720" name="a" orien="R180" />
        <iomarker fontsize="28" x="1968" y="752" name="s" orien="R0" />
        <iomarker fontsize="28" x="2000" y="1072" name="c" orien="R0" />
    </sheet>
</drawing>