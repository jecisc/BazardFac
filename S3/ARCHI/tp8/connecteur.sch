<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="Dout" />
        <signal name="Din" />
        <signal name="R" />
        <signal name="connect" />
        <port polarity="Output" name="Dout" />
        <port polarity="Input" name="Din" />
        <port polarity="Input" name="R" />
        <port polarity="Input" name="connect" />
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
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="R" name="I0" />
            <blockpin signalname="connect" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_2">
            <blockpin signalname="Din" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
            <blockpin signalname="Dout" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="944" y="576" name="XLXI_1" orien="R0" />
        <instance x="1424" y="800" name="XLXI_2" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1312" y1="480" y2="480" x1="1200" />
            <wire x2="1312" y1="480" y2="672" x1="1312" />
            <wire x2="1424" y1="672" y2="672" x1="1312" />
        </branch>
        <branch name="Dout">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1792" y="704" type="branch" />
            <wire x2="1792" y1="704" y2="704" x1="1680" />
            <wire x2="1936" y1="704" y2="704" x1="1792" />
        </branch>
        <branch name="Din">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="896" y="736" type="branch" />
            <wire x2="896" y1="736" y2="736" x1="768" />
            <wire x2="1424" y1="736" y2="736" x1="896" />
        </branch>
        <branch name="R">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="896" y="512" type="branch" />
            <wire x2="896" y1="512" y2="512" x1="768" />
            <wire x2="944" y1="512" y2="512" x1="896" />
        </branch>
        <branch name="connect">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="880" y="448" type="branch" />
            <wire x2="880" y1="448" y2="448" x1="768" />
            <wire x2="944" y1="448" y2="448" x1="880" />
        </branch>
        <iomarker fontsize="28" x="768" y="736" name="Din" orien="R180" />
        <iomarker fontsize="28" x="768" y="512" name="R" orien="R180" />
        <iomarker fontsize="28" x="768" y="448" name="connect" orien="R180" />
        <iomarker fontsize="28" x="1936" y="704" name="Dout" orien="R0" />
    </sheet>
</drawing>