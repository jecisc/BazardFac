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
        <signal name="b" />
        <signal name="a" />
        <signal name="XLXN_10" />
        <port polarity="Output" name="S0" />
        <port polarity="Output" name="S1" />
        <port polarity="Output" name="S2" />
        <port polarity="Output" name="S3" />
        <port polarity="Output" name="S4" />
        <port polarity="Output" name="S5" />
        <port polarity="Output" name="S6" />
        <port polarity="Input" name="b" />
        <port polarity="Input" name="a" />
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
        <instance x="928" y="544" name="XLXI_1" orien="R0" />
        <instance x="928" y="656" name="XLXI_2" orien="R0" />
        <instance x="928" y="880" name="XLXI_3" orien="R0" />
        <instance x="928" y="1088" name="XLXI_4" orien="R0" />
        <instance x="928" y="1264" name="XLXI_5" orien="R0" />
        <instance x="928" y="1424" name="XLXI_6" orien="R0" />
        <instance x="928" y="1584" name="XLXI_7" orien="R0" />
        <branch name="S0">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1248" y="448" type="branch" />
            <wire x2="1248" y1="448" y2="448" x1="1184" />
            <wire x2="1440" y1="448" y2="448" x1="1248" />
        </branch>
        <branch name="S1">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1264" y="624" type="branch" />
            <wire x2="1264" y1="624" y2="624" x1="1152" />
            <wire x2="1440" y1="624" y2="624" x1="1264" />
        </branch>
        <branch name="S2">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1280" y="784" type="branch" />
            <wire x2="1280" y1="784" y2="784" x1="1184" />
            <wire x2="1440" y1="784" y2="784" x1="1280" />
        </branch>
        <branch name="S3">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1264" y="992" type="branch" />
            <wire x2="1264" y1="992" y2="992" x1="1184" />
            <wire x2="1440" y1="992" y2="992" x1="1264" />
        </branch>
        <branch name="S4">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1296" y="1168" type="branch" />
            <wire x2="1296" y1="1168" y2="1168" x1="1184" />
            <wire x2="1440" y1="1168" y2="1168" x1="1296" />
        </branch>
        <branch name="S5">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1280" y="1328" type="branch" />
            <wire x2="1280" y1="1328" y2="1328" x1="1184" />
            <wire x2="1440" y1="1328" y2="1328" x1="1280" />
        </branch>
        <branch name="S6">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1296" y="1488" type="branch" />
            <wire x2="1296" y1="1488" y2="1488" x1="1184" />
            <wire x2="1440" y1="1488" y2="1488" x1="1296" />
        </branch>
        <branch name="b">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="784" y="544" type="branch" />
            <wire x2="784" y1="256" y2="480" x1="784" />
            <wire x2="784" y1="480" y2="544" x1="784" />
            <wire x2="784" y1="544" y2="816" x1="784" />
            <wire x2="928" y1="816" y2="816" x1="784" />
            <wire x2="784" y1="816" y2="1024" x1="784" />
            <wire x2="928" y1="1024" y2="1024" x1="784" />
            <wire x2="784" y1="1024" y2="1200" x1="784" />
            <wire x2="928" y1="1200" y2="1200" x1="784" />
            <wire x2="784" y1="1200" y2="1360" x1="784" />
            <wire x2="928" y1="1360" y2="1360" x1="784" />
            <wire x2="784" y1="1360" y2="1520" x1="784" />
            <wire x2="784" y1="1520" y2="1648" x1="784" />
            <wire x2="928" y1="1520" y2="1520" x1="784" />
            <wire x2="800" y1="480" y2="480" x1="784" />
            <wire x2="928" y1="480" y2="480" x1="800" />
        </branch>
        <branch name="a">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="640" y="544" type="branch" />
            <wire x2="640" y1="256" y2="416" x1="640" />
            <wire x2="640" y1="416" y2="496" x1="640" />
            <wire x2="640" y1="496" y2="544" x1="640" />
            <wire x2="640" y1="544" y2="624" x1="640" />
            <wire x2="928" y1="624" y2="624" x1="640" />
            <wire x2="640" y1="624" y2="752" x1="640" />
            <wire x2="928" y1="752" y2="752" x1="640" />
            <wire x2="640" y1="752" y2="960" x1="640" />
            <wire x2="928" y1="960" y2="960" x1="640" />
            <wire x2="640" y1="960" y2="1136" x1="640" />
            <wire x2="928" y1="1136" y2="1136" x1="640" />
            <wire x2="640" y1="1136" y2="1296" x1="640" />
            <wire x2="928" y1="1296" y2="1296" x1="640" />
            <wire x2="640" y1="1296" y2="1456" x1="640" />
            <wire x2="640" y1="1456" y2="1632" x1="640" />
            <wire x2="640" y1="1632" y2="1648" x1="640" />
            <wire x2="928" y1="1456" y2="1456" x1="640" />
            <wire x2="928" y1="416" y2="416" x1="640" />
        </branch>
        <iomarker fontsize="28" x="784" y="256" name="b" orien="R270" />
        <iomarker fontsize="28" x="640" y="256" name="a" orien="R270" />
        <iomarker fontsize="28" x="1440" y="448" name="S0" orien="R0" />
        <iomarker fontsize="28" x="1440" y="624" name="S1" orien="R0" />
        <iomarker fontsize="28" x="1440" y="784" name="S2" orien="R0" />
        <iomarker fontsize="28" x="1440" y="992" name="S3" orien="R0" />
        <iomarker fontsize="28" x="1440" y="1168" name="S4" orien="R0" />
        <iomarker fontsize="28" x="1440" y="1328" name="S5" orien="R0" />
        <iomarker fontsize="28" x="1440" y="1488" name="S6" orien="R0" />
    </sheet>
</drawing>