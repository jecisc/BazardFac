<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="a" />
        <signal name="XLXN_18" />
        <signal name="c" />
        <signal name="s" />
        <signal name="b" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <port polarity="Input" name="a" />
        <port polarity="Input" name="c" />
        <port polarity="Output" name="s" />
        <port polarity="Input" name="b" />
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
        <block symbolname="or2" name="XLXI_16">
            <blockpin signalname="b" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_17">
            <blockpin signalname="XLXN_24" name="I0" />
            <blockpin signalname="XLXN_23" name="I1" />
            <blockpin signalname="s" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_18">
            <blockpin signalname="c" name="I0" />
            <blockpin signalname="XLXN_22" name="I1" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_19">
            <blockpin signalname="b" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="a">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1088" y="464" type="branch" />
            <wire x2="1088" y1="464" y2="464" x1="960" />
            <wire x2="1104" y1="464" y2="464" x1="1088" />
            <wire x2="1408" y1="464" y2="464" x1="1104" />
            <wire x2="1488" y1="464" y2="464" x1="1408" />
            <wire x2="1104" y1="464" y2="608" x1="1104" />
            <wire x2="1600" y1="608" y2="608" x1="1104" />
        </branch>
        <branch name="c">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1024" y="640" type="branch" />
            <wire x2="1024" y1="640" y2="640" x1="960" />
            <wire x2="1408" y1="640" y2="640" x1="1024" />
            <wire x2="1584" y1="640" y2="640" x1="1408" />
            <wire x2="1584" y1="560" y2="640" x1="1584" />
            <wire x2="1792" y1="560" y2="560" x1="1584" />
        </branch>
        <branch name="s">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2480" y="560" type="branch" />
            <wire x2="2352" y1="560" y2="560" x1="2336" />
            <wire x2="2480" y1="560" y2="560" x1="2352" />
            <wire x2="2752" y1="560" y2="560" x1="2480" />
        </branch>
        <instance x="1488" y="592" name="XLXI_16" orien="R0" />
        <instance x="2096" y="656" name="XLXI_17" orien="R0" />
        <instance x="1792" y="624" name="XLXI_18" orien="R0" />
        <instance x="1600" y="736" name="XLXI_19" orien="R0" />
        <branch name="b">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1024" y="560" type="branch" />
            <wire x2="1024" y1="560" y2="560" x1="960" />
            <wire x2="1184" y1="560" y2="560" x1="1024" />
            <wire x2="1408" y1="560" y2="560" x1="1184" />
            <wire x2="1184" y1="560" y2="672" x1="1184" />
            <wire x2="1600" y1="672" y2="672" x1="1184" />
            <wire x2="1488" y1="528" y2="528" x1="1408" />
            <wire x2="1408" y1="528" y2="560" x1="1408" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="1792" y1="496" y2="496" x1="1744" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="2096" y1="528" y2="528" x1="2048" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="1968" y1="640" y2="640" x1="1856" />
            <wire x2="1968" y1="592" y2="640" x1="1968" />
            <wire x2="2096" y1="592" y2="592" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="960" y="464" name="a" orien="R180" />
        <iomarker fontsize="28" x="960" y="640" name="c" orien="R180" />
        <iomarker fontsize="28" x="960" y="560" name="b" orien="R180" />
        <iomarker fontsize="28" x="2752" y="560" name="s" orien="R0" />
    </sheet>
</drawing>