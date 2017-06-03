<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="b" />
        <signal name="c" />
        <signal name="a" />
        <signal name="s" />
        <port polarity="Input" name="b" />
        <port polarity="Input" name="c" />
        <port polarity="Input" name="a" />
        <port polarity="Output" name="s" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <block symbolname="inv" name="XLXI_1">
            <blockpin signalname="b" name="I" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="c" name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_3">
            <blockpin signalname="XLXN_2" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_4">
            <blockpin signalname="XLXN_3" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_5">
            <blockpin signalname="c" name="I0" />
            <blockpin signalname="b" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_6">
            <blockpin signalname="XLXN_5" name="I0" />
            <blockpin signalname="XLXN_4" name="I1" />
            <blockpin signalname="s" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="592" y="656" name="XLXI_1" orien="R0" />
        <instance x="592" y="720" name="XLXI_2" orien="R0" />
        <instance x="1024" y="752" name="XLXI_3" orien="R0" />
        <instance x="1568" y="720" name="XLXI_4" orien="R0" />
        <instance x="1568" y="1104" name="XLXI_5" orien="R0" />
        <instance x="2224" y="896" name="XLXI_6" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1024" y1="624" y2="624" x1="816" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1024" y1="688" y2="688" x1="816" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1568" y1="656" y2="656" x1="1280" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="2016" y1="624" y2="624" x1="1824" />
            <wire x2="2016" y1="624" y2="768" x1="2016" />
            <wire x2="2224" y1="768" y2="768" x1="2016" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="2016" y1="1008" y2="1008" x1="1824" />
            <wire x2="2016" y1="832" y2="1008" x1="2016" />
            <wire x2="2224" y1="832" y2="832" x1="2016" />
        </branch>
        <branch name="b">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="512" y="624" type="branch" />
            <wire x2="448" y1="624" y2="624" x1="384" />
            <wire x2="448" y1="624" y2="976" x1="448" />
            <wire x2="1568" y1="976" y2="976" x1="448" />
            <wire x2="512" y1="624" y2="624" x1="448" />
            <wire x2="592" y1="624" y2="624" x1="512" />
        </branch>
        <branch name="c">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="496" y="688" type="branch" />
            <wire x2="496" y1="688" y2="688" x1="384" />
            <wire x2="544" y1="688" y2="688" x1="496" />
            <wire x2="592" y1="688" y2="688" x1="544" />
            <wire x2="544" y1="688" y2="1040" x1="544" />
            <wire x2="1568" y1="1040" y2="1040" x1="544" />
        </branch>
        <branch name="a">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="512" y="512" type="branch" />
            <wire x2="512" y1="512" y2="512" x1="384" />
            <wire x2="976" y1="512" y2="512" x1="512" />
            <wire x2="976" y1="512" y2="592" x1="976" />
            <wire x2="1568" y1="592" y2="592" x1="976" />
        </branch>
        <branch name="s">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2544" y="800" type="branch" />
            <wire x2="2544" y1="800" y2="800" x1="2480" />
            <wire x2="2608" y1="800" y2="800" x1="2544" />
        </branch>
        <iomarker fontsize="28" x="384" y="624" name="b" orien="R180" />
        <iomarker fontsize="28" x="384" y="688" name="c" orien="R180" />
        <iomarker fontsize="28" x="384" y="512" name="a" orien="R180" />
        <iomarker fontsize="28" x="2608" y="800" name="s" orien="R0" />
    </sheet>
</drawing>