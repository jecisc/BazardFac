<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2" />
        <signal name="clk" />
        <signal name="XLXN_4" />
        <signal name="XLXN_7" />
        <signal name="XLXN_9" />
        <signal name="q(1:0)" />
        <signal name="q(1)" />
        <signal name="q(0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="q(1:0)" />
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
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
        <block symbolname="fd" name="BasculeD_0">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_2" name="D" />
            <blockpin signalname="q(0)" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="q(0)" name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="fd" name="BasculeD_1">
            <blockpin signalname="XLXN_2" name="C" />
            <blockpin signalname="XLXN_4" name="D" />
            <blockpin signalname="q(1)" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="q(1)" name="I" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1424" y="1312" name="BasculeD_0" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="96" y="-16" type="instance" />
        </instance>
        <instance x="1712" y="864" name="XLXI_2" orien="M0" />
        <branch name="XLXN_2">
            <wire x2="1408" y1="752" y2="832" x1="1408" />
            <wire x2="1408" y1="832" y2="1056" x1="1408" />
            <wire x2="1424" y1="1056" y2="1056" x1="1408" />
            <wire x2="1488" y1="832" y2="832" x1="1408" />
            <wire x2="1888" y1="752" y2="752" x1="1408" />
            <wire x2="1888" y1="752" y2="1184" x1="1888" />
            <wire x2="2304" y1="1184" y2="1184" x1="1888" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1312" y="1184" type="branch" />
            <wire x2="1312" y1="1184" y2="1184" x1="1248" />
            <wire x2="1424" y1="1184" y2="1184" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="1248" y="1184" name="clk" orien="R180" />
        <instance x="2592" y="912" name="XLXI_4" orien="M0" />
        <instance x="2304" y="1312" name="BasculeD_1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="80" y="-16" type="instance" />
        </instance>
        <branch name="XLXN_4">
            <wire x2="2288" y1="880" y2="1056" x1="2288" />
            <wire x2="2304" y1="1056" y2="1056" x1="2288" />
            <wire x2="2352" y1="880" y2="880" x1="2288" />
            <wire x2="2368" y1="880" y2="880" x1="2352" />
        </branch>
        <branch name="q(1:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1680" y="1472" type="branch" />
            <wire x2="1680" y1="1472" y2="1472" x1="992" />
            <wire x2="1824" y1="1472" y2="1472" x1="1680" />
            <wire x2="2736" y1="1472" y2="1472" x1="1824" />
            <wire x2="3024" y1="1472" y2="1472" x1="2736" />
            <wire x2="3040" y1="1472" y2="1472" x1="3024" />
        </branch>
        <bustap x2="2736" y1="1472" y2="1376" x1="2736" />
        <branch name="q(1)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2736" y="1184" type="branch" />
            <wire x2="2736" y1="880" y2="880" x1="2592" />
            <wire x2="2736" y1="880" y2="1056" x1="2736" />
            <wire x2="2736" y1="1056" y2="1184" x1="2736" />
            <wire x2="2736" y1="1184" y2="1376" x1="2736" />
            <wire x2="2736" y1="1056" y2="1056" x1="2688" />
        </branch>
        <bustap x2="1824" y1="1472" y2="1376" x1="1824" />
        <branch name="q(0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1824" y="1152" type="branch" />
            <wire x2="1824" y1="832" y2="832" x1="1712" />
            <wire x2="1824" y1="832" y2="1056" x1="1824" />
            <wire x2="1824" y1="1056" y2="1152" x1="1824" />
            <wire x2="1824" y1="1152" y2="1376" x1="1824" />
            <wire x2="1824" y1="1056" y2="1056" x1="1808" />
        </branch>
        <iomarker fontsize="28" x="3040" y="1472" name="q(1:0)" orien="R0" />
    </sheet>
</drawing>