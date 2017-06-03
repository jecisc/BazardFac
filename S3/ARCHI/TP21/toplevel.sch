<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="c" />
        <signal name="a" />
        <signal name="b" />
        <signal name="XLXN_4" />
        <signal name="t" />
        <signal name="s" />
        <port polarity="Input" name="c" />
        <port polarity="Input" name="a" />
        <port polarity="Input" name="b" />
        <port polarity="Output" name="t" />
        <port polarity="Output" name="s" />
        <blockdef name="circuit1">
            <timestamp>2013-9-30T9:5:10</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="circuit2">
            <timestamp>2013-9-30T9:9:1</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <block symbolname="circuit1" name="XLXI_1">
            <blockpin signalname="b" name="b" />
            <blockpin signalname="c" name="c" />
            <blockpin signalname="a" name="a" />
            <blockpin signalname="s" name="s" />
        </block>
        <block symbolname="circuit2" name="XLXI_2">
            <blockpin signalname="a" name="a" />
            <blockpin signalname="b" name="b" />
            <blockpin signalname="c" name="c" />
            <blockpin signalname="t" name="t" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="928" y="688" name="XLXI_1" orien="R0">
        </instance>
        <instance x="944" y="1056" name="XLXI_2" orien="R0">
        </instance>
        <branch name="c">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="736" y="368" type="branch" />
            <wire x2="736" y1="272" y2="368" x1="736" />
            <wire x2="736" y1="368" y2="592" x1="736" />
            <wire x2="752" y1="592" y2="592" x1="736" />
            <wire x2="928" y1="592" y2="592" x1="752" />
            <wire x2="736" y1="592" y2="1024" x1="736" />
            <wire x2="736" y1="1024" y2="1376" x1="736" />
            <wire x2="944" y1="1024" y2="1024" x1="736" />
        </branch>
        <branch name="b">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="640" y="368" type="branch" />
            <wire x2="640" y1="272" y2="368" x1="640" />
            <wire x2="640" y1="368" y2="528" x1="640" />
            <wire x2="928" y1="528" y2="528" x1="640" />
            <wire x2="640" y1="528" y2="960" x1="640" />
            <wire x2="640" y1="960" y2="1376" x1="640" />
            <wire x2="944" y1="960" y2="960" x1="640" />
        </branch>
        <branch name="a">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="528" y="352" type="branch" />
            <wire x2="528" y1="256" y2="352" x1="528" />
            <wire x2="528" y1="352" y2="528" x1="528" />
            <wire x2="528" y1="528" y2="656" x1="528" />
            <wire x2="928" y1="656" y2="656" x1="528" />
            <wire x2="528" y1="656" y2="896" x1="528" />
            <wire x2="528" y1="896" y2="1376" x1="528" />
            <wire x2="944" y1="896" y2="896" x1="528" />
        </branch>
        <branch name="t">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1360" y="896" type="branch" />
            <wire x2="1360" y1="896" y2="896" x1="1328" />
            <wire x2="1424" y1="896" y2="896" x1="1360" />
        </branch>
        <branch name="s">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1344" y="528" type="branch" />
            <wire x2="1344" y1="528" y2="528" x1="1312" />
            <wire x2="1408" y1="528" y2="528" x1="1344" />
        </branch>
        <iomarker fontsize="28" x="736" y="272" name="c" orien="R270" />
        <iomarker fontsize="28" x="640" y="272" name="b" orien="R270" />
        <iomarker fontsize="28" x="528" y="256" name="a" orien="R270" />
        <iomarker fontsize="28" x="1424" y="896" name="t" orien="R0" />
        <iomarker fontsize="28" x="1408" y="528" name="s" orien="R0" />
    </sheet>
</drawing>