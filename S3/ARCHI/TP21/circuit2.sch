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
        <signal name="t" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="a" />
        <signal name="b" />
        <signal name="c" />
        <port polarity="Output" name="t" />
        <port polarity="Input" name="a" />
        <port polarity="Input" name="b" />
        <port polarity="Input" name="c" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="nor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
        </blockdef>
        <block symbolname="inv" name="XLXI_1">
            <blockpin signalname="b" name="I" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="c" name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_3">
            <blockpin signalname="XLXN_2" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_4">
            <blockpin signalname="XLXN_3" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_5">
            <blockpin signalname="XLXN_5" name="I0" />
            <blockpin signalname="XLXN_4" name="I1" />
            <blockpin signalname="t" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_6">
            <blockpin signalname="c" name="I0" />
            <blockpin signalname="b" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="720" y="752" name="XLXI_1" orien="R0" />
        <instance x="720" y="816" name="XLXI_2" orien="R0" />
        <instance x="1120" y="848" name="XLXI_3" orien="R0" />
        <instance x="1552" y="816" name="XLXI_4" orien="R0" />
        <instance x="2080" y="1008" name="XLXI_5" orien="R0" />
        <instance x="1552" y="1152" name="XLXI_6" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1120" y1="720" y2="720" x1="944" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="960" y1="784" y2="784" x1="944" />
            <wire x2="1120" y1="784" y2="784" x1="960" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1552" y1="752" y2="752" x1="1376" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1936" y1="720" y2="720" x1="1808" />
            <wire x2="1936" y1="720" y2="880" x1="1936" />
            <wire x2="2080" y1="880" y2="880" x1="1936" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1936" y1="1056" y2="1056" x1="1808" />
            <wire x2="1936" y1="944" y2="1056" x1="1936" />
            <wire x2="2080" y1="944" y2="944" x1="1936" />
        </branch>
        <branch name="t">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2384" y="912" type="branch" />
            <wire x2="2352" y1="912" y2="912" x1="2336" />
            <wire x2="2384" y1="912" y2="912" x1="2352" />
            <wire x2="2512" y1="912" y2="912" x1="2384" />
        </branch>
        <branch name="a">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="624" y="624" type="branch" />
            <wire x2="624" y1="624" y2="624" x1="528" />
            <wire x2="1040" y1="624" y2="624" x1="624" />
            <wire x2="1040" y1="624" y2="688" x1="1040" />
            <wire x2="1552" y1="688" y2="688" x1="1040" />
        </branch>
        <branch name="b">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="640" y="720" type="branch" />
            <wire x2="592" y1="720" y2="720" x1="528" />
            <wire x2="592" y1="720" y2="1024" x1="592" />
            <wire x2="1552" y1="1024" y2="1024" x1="592" />
            <wire x2="640" y1="720" y2="720" x1="592" />
            <wire x2="720" y1="720" y2="720" x1="640" />
        </branch>
        <branch name="c">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="624" y="784" type="branch" />
            <wire x2="624" y1="784" y2="784" x1="528" />
            <wire x2="656" y1="784" y2="784" x1="624" />
            <wire x2="720" y1="784" y2="784" x1="656" />
            <wire x2="656" y1="784" y2="1088" x1="656" />
            <wire x2="1552" y1="1088" y2="1088" x1="656" />
        </branch>
        <iomarker fontsize="28" x="528" y="624" name="a" orien="R180" />
        <iomarker fontsize="28" x="528" y="720" name="b" orien="R180" />
        <iomarker fontsize="28" x="528" y="784" name="c" orien="R180" />
        <iomarker fontsize="28" x="2512" y="912" name="t" orien="R0" />
    </sheet>
</drawing>