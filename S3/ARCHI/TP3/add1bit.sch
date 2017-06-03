<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="b" />
        <signal name="a" />
        <signal name="cin" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="s" />
        <signal name="cout" />
        <port polarity="Input" name="b" />
        <port polarity="Input" name="a" />
        <port polarity="Input" name="cin" />
        <port polarity="Output" name="s" />
        <port polarity="Output" name="cout" />
        <blockdef name="demiadd">
            <timestamp>2013-10-7T8:31:35</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
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
        <block symbolname="demiadd" name="XLXI_1">
            <blockpin signalname="b" name="b" />
            <blockpin signalname="a" name="a" />
            <blockpin signalname="XLXN_6" name="c" />
            <blockpin signalname="XLXN_4" name="s" />
        </block>
        <block symbolname="demiadd" name="XLXI_2">
            <blockpin signalname="cin" name="b" />
            <blockpin signalname="XLXN_4" name="a" />
            <blockpin signalname="XLXN_5" name="c" />
            <blockpin signalname="s" name="s" />
        </block>
        <block symbolname="or2" name="XLXI_3">
            <blockpin signalname="XLXN_6" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="cout" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1008" y="944" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1552" y="1312" name="XLXI_2" orien="R0">
        </instance>
        <branch name="b">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="976" y="848" type="branch" />
            <wire x2="976" y1="848" y2="848" x1="848" />
            <wire x2="1008" y1="848" y2="848" x1="976" />
        </branch>
        <branch name="a">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="960" y="912" type="branch" />
            <wire x2="960" y1="912" y2="912" x1="848" />
            <wire x2="1008" y1="912" y2="912" x1="960" />
        </branch>
        <branch name="cin">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="992" y="1216" type="branch" />
            <wire x2="992" y1="1216" y2="1216" x1="848" />
            <wire x2="1552" y1="1216" y2="1216" x1="992" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1472" y1="912" y2="912" x1="1392" />
            <wire x2="1472" y1="912" y2="1280" x1="1472" />
            <wire x2="1552" y1="1280" y2="1280" x1="1472" />
        </branch>
        <instance x="2032" y="1552" name="XLXI_3" orien="R0" />
        <branch name="XLXN_5">
            <wire x2="1984" y1="1216" y2="1216" x1="1936" />
            <wire x2="1984" y1="1216" y2="1424" x1="1984" />
            <wire x2="2032" y1="1424" y2="1424" x1="1984" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1456" y1="848" y2="848" x1="1392" />
            <wire x2="1456" y1="848" y2="1488" x1="1456" />
            <wire x2="2032" y1="1488" y2="1488" x1="1456" />
        </branch>
        <branch name="s">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2352" y="1280" type="branch" />
            <wire x2="2352" y1="1280" y2="1280" x1="1936" />
            <wire x2="2480" y1="1280" y2="1280" x1="2352" />
            <wire x2="2496" y1="1280" y2="1280" x1="2480" />
        </branch>
        <branch name="cout">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2336" y="1456" type="branch" />
            <wire x2="2336" y1="1456" y2="1456" x1="2288" />
            <wire x2="2528" y1="1456" y2="1456" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="848" y="848" name="b" orien="R180" />
        <iomarker fontsize="28" x="848" y="912" name="a" orien="R180" />
        <iomarker fontsize="28" x="848" y="1216" name="cin" orien="R180" />
        <iomarker fontsize="28" x="2496" y="1280" name="s" orien="R0" />
        <iomarker fontsize="28" x="2528" y="1456" name="cout" orien="R0" />
    </sheet>
</drawing>