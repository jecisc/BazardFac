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
        <signal name="XLXN_13" />
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
        <block symbolname="fd" name="BaculeD_0">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_2" name="D" />
            <blockpin signalname="q(0)" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="q(0)" name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="fd" name="BaculeD_1">
            <blockpin signalname="XLXN_2" name="C" />
            <blockpin signalname="XLXN_13" name="D" />
            <blockpin signalname="q(1)" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_13">
            <blockpin signalname="q(1)" name="I" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="512" y="608" name="BaculeD_0" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="160" y="-32" type="instance" />
        </instance>
        <instance x="832" y="176" name="XLXI_3" orien="M0" />
        <branch name="XLXN_2">
            <wire x2="496" y1="96" y2="144" x1="496" />
            <wire x2="496" y1="144" y2="352" x1="496" />
            <wire x2="512" y1="352" y2="352" x1="496" />
            <wire x2="608" y1="144" y2="144" x1="496" />
            <wire x2="1040" y1="96" y2="96" x1="496" />
            <wire x2="1040" y1="96" y2="480" x1="1040" />
            <wire x2="1184" y1="480" y2="480" x1="1040" />
        </branch>
        <branch name="clk">
            <wire x2="512" y1="480" y2="480" x1="384" />
        </branch>
        <iomarker fontsize="28" x="384" y="480" name="clk" orien="R180" />
        <instance x="1184" y="608" name="BaculeD_1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="144" y="-32" type="instance" />
        </instance>
        <instance x="1504" y="176" name="XLXI_13" orien="M0" />
        <branch name="XLXN_13">
            <wire x2="1168" y1="144" y2="352" x1="1168" />
            <wire x2="1184" y1="352" y2="352" x1="1168" />
            <wire x2="1280" y1="144" y2="144" x1="1168" />
        </branch>
        <branch name="q(1:0)">
            <wire x2="896" y1="720" y2="720" x1="704" />
            <wire x2="1568" y1="720" y2="720" x1="896" />
            <wire x2="1856" y1="720" y2="720" x1="1568" />
        </branch>
        <bustap x2="1568" y1="720" y2="624" x1="1568" />
        <branch name="q(1)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1568" y="488" type="branch" />
            <wire x2="1600" y1="144" y2="144" x1="1504" />
            <wire x2="1600" y1="144" y2="400" x1="1600" />
            <wire x2="1568" y1="352" y2="400" x1="1568" />
            <wire x2="1568" y1="400" y2="488" x1="1568" />
            <wire x2="1568" y1="488" y2="624" x1="1568" />
            <wire x2="1600" y1="400" y2="400" x1="1568" />
        </branch>
        <iomarker fontsize="28" x="1856" y="720" name="q(1:0)" orien="R0" />
        <bustap x2="896" y1="720" y2="624" x1="896" />
        <branch name="q(0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="896" y="488" type="branch" />
            <wire x2="928" y1="144" y2="144" x1="832" />
            <wire x2="928" y1="144" y2="400" x1="928" />
            <wire x2="896" y1="352" y2="400" x1="896" />
            <wire x2="896" y1="400" y2="488" x1="896" />
            <wire x2="896" y1="488" y2="624" x1="896" />
            <wire x2="928" y1="400" y2="400" x1="896" />
        </branch>
    </sheet>
</drawing>