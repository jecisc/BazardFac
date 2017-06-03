<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="S0" />
        <signal name="S1" />
        <signal name="S2" />
        <signal name="S3" />
        <signal name="S4" />
        <signal name="S5" />
        <signal name="S6" />
        <signal name="a" />
        <signal name="b" />
        <port polarity="Output" name="S0" />
        <port polarity="Output" name="S1" />
        <port polarity="Output" name="S2" />
        <port polarity="Output" name="S3" />
        <port polarity="Output" name="S4" />
        <port polarity="Output" name="S5" />
        <port polarity="Output" name="S6" />
        <port polarity="Input" name="a" />
        <port polarity="Input" name="b" />
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
        <blockdef name="xnor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
            <circle r="8" cx="220" cy="-96" />
            <line x2="256" y1="-96" y2="-96" x1="228" />
            <line x2="60" y1="-28" y2="-28" x1="60" />
        </blockdef>
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
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="b" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="S0" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="a" name="I" />
            <blockpin signalname="S1" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_3">
            <blockpin signalname="b" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="S2" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_4">
            <blockpin signalname="b" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="S3" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_5">
            <blockpin signalname="b" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="S4" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_6">
            <blockpin signalname="b" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="S5" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_7">
            <blockpin signalname="b" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="S6" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="656" y="576" name="XLXI_1" orien="R0" />
        <branch name="S0">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="928" y="480" type="branch" />
            <wire x2="928" y1="480" y2="480" x1="912" />
            <wire x2="1152" y1="480" y2="480" x1="928" />
        </branch>
        <branch name="S1">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="960" y="688" type="branch" />
            <wire x2="960" y1="688" y2="688" x1="880" />
            <wire x2="1184" y1="688" y2="688" x1="960" />
        </branch>
        <branch name="S2">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="976" y="912" type="branch" />
            <wire x2="976" y1="912" y2="912" x1="912" />
            <wire x2="1184" y1="912" y2="912" x1="976" />
        </branch>
        <branch name="S3">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1024" y="1184" type="branch" />
            <wire x2="1024" y1="1184" y2="1184" x1="912" />
            <wire x2="1200" y1="1184" y2="1184" x1="1024" />
        </branch>
        <branch name="S4">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1040" y="1424" type="branch" />
            <wire x2="1040" y1="1424" y2="1424" x1="928" />
            <wire x2="1184" y1="1424" y2="1424" x1="1040" />
        </branch>
        <branch name="S5">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1040" y="1632" type="branch" />
            <wire x2="1040" y1="1632" y2="1632" x1="928" />
            <wire x2="1200" y1="1632" y2="1632" x1="1040" />
        </branch>
        <branch name="S6">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1024" y="1840" type="branch" />
            <wire x2="1024" y1="1840" y2="1840" x1="928" />
            <wire x2="1200" y1="1840" y2="1840" x1="1024" />
        </branch>
        <instance x="656" y="720" name="XLXI_2" orien="R0" />
        <instance x="656" y="1008" name="XLXI_3" orien="R0" />
        <instance x="656" y="1280" name="XLXI_4" orien="R0" />
        <instance x="672" y="1520" name="XLXI_5" orien="R0" />
        <instance x="672" y="1728" name="XLXI_6" orien="R0" />
        <instance x="672" y="1936" name="XLXI_7" orien="R0" />
        <branch name="a">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="304" y="592" type="branch" />
            <wire x2="304" y1="272" y2="448" x1="304" />
            <wire x2="304" y1="448" y2="592" x1="304" />
            <wire x2="304" y1="592" y2="688" x1="304" />
            <wire x2="656" y1="688" y2="688" x1="304" />
            <wire x2="304" y1="688" y2="880" x1="304" />
            <wire x2="656" y1="880" y2="880" x1="304" />
            <wire x2="304" y1="880" y2="1152" x1="304" />
            <wire x2="656" y1="1152" y2="1152" x1="304" />
            <wire x2="304" y1="1152" y2="1392" x1="304" />
            <wire x2="672" y1="1392" y2="1392" x1="304" />
            <wire x2="304" y1="1392" y2="1600" x1="304" />
            <wire x2="672" y1="1600" y2="1600" x1="304" />
            <wire x2="304" y1="1600" y2="1808" x1="304" />
            <wire x2="304" y1="1808" y2="2064" x1="304" />
            <wire x2="672" y1="1808" y2="1808" x1="304" />
            <wire x2="656" y1="448" y2="448" x1="304" />
        </branch>
        <branch name="b">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="464" y="592" type="branch" />
            <wire x2="464" y1="272" y2="512" x1="464" />
            <wire x2="464" y1="512" y2="592" x1="464" />
            <wire x2="464" y1="592" y2="704" x1="464" />
            <wire x2="464" y1="704" y2="944" x1="464" />
            <wire x2="464" y1="944" y2="1216" x1="464" />
            <wire x2="464" y1="1216" y2="1456" x1="464" />
            <wire x2="464" y1="1456" y2="1664" x1="464" />
            <wire x2="464" y1="1664" y2="1872" x1="464" />
            <wire x2="464" y1="1872" y2="2064" x1="464" />
            <wire x2="672" y1="1872" y2="1872" x1="464" />
            <wire x2="672" y1="1664" y2="1664" x1="464" />
            <wire x2="672" y1="1456" y2="1456" x1="464" />
            <wire x2="656" y1="1216" y2="1216" x1="464" />
            <wire x2="656" y1="944" y2="944" x1="464" />
            <wire x2="656" y1="512" y2="512" x1="464" />
        </branch>
        <iomarker fontsize="28" x="304" y="272" name="a" orien="R270" />
        <iomarker fontsize="28" x="464" y="272" name="b" orien="R270" />
        <iomarker fontsize="28" x="1152" y="480" name="S0" orien="R0" />
        <iomarker fontsize="28" x="1184" y="688" name="S1" orien="R0" />
        <iomarker fontsize="28" x="1184" y="912" name="S2" orien="R0" />
        <iomarker fontsize="28" x="1200" y="1184" name="S3" orien="R0" />
        <iomarker fontsize="28" x="1184" y="1424" name="S4" orien="R0" />
        <iomarker fontsize="28" x="1200" y="1632" name="S5" orien="R0" />
        <iomarker fontsize="28" x="1200" y="1840" name="S6" orien="R0" />
    </sheet>
</drawing>