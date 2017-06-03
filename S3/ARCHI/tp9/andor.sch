<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="sor(15:0)" />
        <signal name="sand(15:0)" />
        <signal name="a(15:0)" />
        <signal name="b(15:0)" />
        <signal name="sor(15)" />
        <signal name="sor(14)" />
        <signal name="sor(13)" />
        <signal name="sor(12)" />
        <signal name="sor(11)" />
        <signal name="sor(10)" />
        <signal name="sor(9)" />
        <signal name="sor(8)" />
        <signal name="sor(7)" />
        <signal name="sor(6)" />
        <signal name="sor(5)" />
        <signal name="sor(4)" />
        <signal name="sor(3)" />
        <signal name="sor(2)" />
        <signal name="sor(1)" />
        <signal name="sor(0)" />
        <signal name="sand(15)" />
        <signal name="sand(14)" />
        <signal name="sand(13)" />
        <signal name="sand(12)" />
        <signal name="sand(11)" />
        <signal name="sand(10)" />
        <signal name="sand(9)" />
        <signal name="sand(8)" />
        <signal name="sand(7)" />
        <signal name="sand(6)" />
        <signal name="sand(5)" />
        <signal name="sand(4)" />
        <signal name="sand(3)" />
        <signal name="sand(2)" />
        <signal name="sand(1)" />
        <signal name="sand(0)" />
        <signal name="a(15)" />
        <signal name="a(14)" />
        <signal name="a(13)" />
        <signal name="a(12)" />
        <signal name="a(11)" />
        <signal name="a(10)" />
        <signal name="a(9)" />
        <signal name="a(8)" />
        <signal name="a(7)" />
        <signal name="a(6)" />
        <signal name="a(5)" />
        <signal name="a(4)" />
        <signal name="a(3)" />
        <signal name="a(2)" />
        <signal name="a(1)" />
        <signal name="a(0)" />
        <signal name="b(15)" />
        <signal name="b(14)" />
        <signal name="b(13)" />
        <signal name="b(12)" />
        <signal name="b(11)" />
        <signal name="b(10)" />
        <signal name="b(9)" />
        <signal name="b(8)" />
        <signal name="b(7)" />
        <signal name="b(6)" />
        <signal name="b(5)" />
        <signal name="b(4)" />
        <signal name="b(3)" />
        <signal name="b(2)" />
        <signal name="b(1)" />
        <signal name="b(0)" />
        <port polarity="Output" name="sor(15:0)" />
        <port polarity="Output" name="sand(15:0)" />
        <port polarity="Input" name="a(15:0)" />
        <port polarity="Input" name="b(15:0)" />
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
            <blockpin signalname="a(0)" name="I0" />
            <blockpin signalname="b(0)" name="I1" />
            <blockpin signalname="sand(0)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="a(1)" name="I0" />
            <blockpin signalname="b(1)" name="I1" />
            <blockpin signalname="sand(1)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="a(2)" name="I0" />
            <blockpin signalname="b(2)" name="I1" />
            <blockpin signalname="sand(2)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="a(3)" name="I0" />
            <blockpin signalname="b(3)" name="I1" />
            <blockpin signalname="sand(3)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="a(4)" name="I0" />
            <blockpin signalname="b(4)" name="I1" />
            <blockpin signalname="sand(4)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="a(5)" name="I0" />
            <blockpin signalname="b(5)" name="I1" />
            <blockpin signalname="sand(5)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="a(6)" name="I0" />
            <blockpin signalname="b(6)" name="I1" />
            <blockpin signalname="sand(6)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="a(7)" name="I0" />
            <blockpin signalname="b(7)" name="I1" />
            <blockpin signalname="sand(7)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="a(8)" name="I0" />
            <blockpin signalname="b(8)" name="I1" />
            <blockpin signalname="sand(8)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="a(9)" name="I0" />
            <blockpin signalname="b(9)" name="I1" />
            <blockpin signalname="sand(9)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_11">
            <blockpin signalname="a(10)" name="I0" />
            <blockpin signalname="b(10)" name="I1" />
            <blockpin signalname="sand(10)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_12">
            <blockpin signalname="a(11)" name="I0" />
            <blockpin signalname="b(11)" name="I1" />
            <blockpin signalname="sand(11)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_13">
            <blockpin signalname="a(12)" name="I0" />
            <blockpin signalname="b(12)" name="I1" />
            <blockpin signalname="sand(12)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_14">
            <blockpin signalname="a(13)" name="I0" />
            <blockpin signalname="b(13)" name="I1" />
            <blockpin signalname="sand(13)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_15">
            <blockpin signalname="a(14)" name="I0" />
            <blockpin signalname="b(14)" name="I1" />
            <blockpin signalname="sand(14)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_16">
            <blockpin signalname="a(15)" name="I0" />
            <blockpin signalname="b(15)" name="I1" />
            <blockpin signalname="sand(15)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_17">
            <blockpin signalname="b(0)" name="I0" />
            <blockpin signalname="a(0)" name="I1" />
            <blockpin signalname="sor(0)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_18">
            <blockpin signalname="b(1)" name="I0" />
            <blockpin signalname="a(1)" name="I1" />
            <blockpin signalname="sor(1)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_19">
            <blockpin signalname="b(2)" name="I0" />
            <blockpin signalname="a(2)" name="I1" />
            <blockpin signalname="sor(2)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_20">
            <blockpin signalname="b(3)" name="I0" />
            <blockpin signalname="a(3)" name="I1" />
            <blockpin signalname="sor(3)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_21">
            <blockpin signalname="b(4)" name="I0" />
            <blockpin signalname="a(4)" name="I1" />
            <blockpin signalname="sor(4)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_22">
            <blockpin signalname="b(5)" name="I0" />
            <blockpin signalname="a(5)" name="I1" />
            <blockpin signalname="sor(5)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_23">
            <blockpin signalname="b(6)" name="I0" />
            <blockpin signalname="a(6)" name="I1" />
            <blockpin signalname="sor(6)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_24">
            <blockpin signalname="b(7)" name="I0" />
            <blockpin signalname="a(7)" name="I1" />
            <blockpin signalname="sor(7)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_25">
            <blockpin signalname="b(8)" name="I0" />
            <blockpin signalname="a(8)" name="I1" />
            <blockpin signalname="sor(8)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_26">
            <blockpin signalname="b(9)" name="I0" />
            <blockpin signalname="a(9)" name="I1" />
            <blockpin signalname="sor(9)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_27">
            <blockpin signalname="b(10)" name="I0" />
            <blockpin signalname="a(10)" name="I1" />
            <blockpin signalname="sor(10)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_28">
            <blockpin signalname="b(11)" name="I0" />
            <blockpin signalname="a(11)" name="I1" />
            <blockpin signalname="sor(11)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_29">
            <blockpin signalname="b(12)" name="I0" />
            <blockpin signalname="a(12)" name="I1" />
            <blockpin signalname="sor(12)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_30">
            <blockpin signalname="b(13)" name="I0" />
            <blockpin signalname="a(13)" name="I1" />
            <blockpin signalname="sor(13)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_31">
            <blockpin signalname="b(14)" name="I0" />
            <blockpin signalname="a(14)" name="I1" />
            <blockpin signalname="sor(14)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_32">
            <blockpin signalname="b(15)" name="I0" />
            <blockpin signalname="a(15)" name="I1" />
            <blockpin signalname="sor(15)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <branch name="sor(15:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="528" y="2336" type="branch" />
            <wire x2="528" y1="240" y2="320" x1="528" />
            <wire x2="528" y1="320" y2="464" x1="528" />
            <wire x2="528" y1="464" y2="592" x1="528" />
            <wire x2="528" y1="592" y2="720" x1="528" />
            <wire x2="528" y1="720" y2="864" x1="528" />
            <wire x2="528" y1="864" y2="1008" x1="528" />
            <wire x2="528" y1="1008" y2="1152" x1="528" />
            <wire x2="528" y1="1152" y2="1280" x1="528" />
            <wire x2="528" y1="1280" y2="1472" x1="528" />
            <wire x2="528" y1="1472" y2="1632" x1="528" />
            <wire x2="528" y1="1632" y2="1792" x1="528" />
            <wire x2="528" y1="1792" y2="1904" x1="528" />
            <wire x2="528" y1="1904" y2="2096" x1="528" />
            <wire x2="528" y1="2096" y2="2240" x1="528" />
            <wire x2="528" y1="2240" y2="2336" x1="528" />
            <wire x2="528" y1="2336" y2="2368" x1="528" />
            <wire x2="528" y1="2368" y2="2544" x1="528" />
            <wire x2="528" y1="2544" y2="2736" x1="528" />
        </branch>
        <branch name="sand(15:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1984" y="2336" type="branch" />
            <wire x2="1984" y1="288" y2="368" x1="1984" />
            <wire x2="1984" y1="368" y2="528" x1="1984" />
            <wire x2="1984" y1="528" y2="672" x1="1984" />
            <wire x2="1984" y1="672" y2="816" x1="1984" />
            <wire x2="1984" y1="816" y2="944" x1="1984" />
            <wire x2="1984" y1="944" y2="1104" x1="1984" />
            <wire x2="1984" y1="1104" y2="1264" x1="1984" />
            <wire x2="1984" y1="1264" y2="1408" x1="1984" />
            <wire x2="1984" y1="1408" y2="1552" x1="1984" />
            <wire x2="1984" y1="1552" y2="1680" x1="1984" />
            <wire x2="1984" y1="1680" y2="1840" x1="1984" />
            <wire x2="1984" y1="1840" y2="2000" x1="1984" />
            <wire x2="1984" y1="2000" y2="2144" x1="1984" />
            <wire x2="1984" y1="2144" y2="2288" x1="1984" />
            <wire x2="1984" y1="2288" y2="2336" x1="1984" />
            <wire x2="1984" y1="2336" y2="2416" x1="1984" />
            <wire x2="1984" y1="2416" y2="2576" x1="1984" />
            <wire x2="1984" y1="2576" y2="2720" x1="1984" />
        </branch>
        <branch name="a(15:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1152" y="288" type="branch" />
            <wire x2="1152" y1="240" y2="288" x1="1152" />
            <wire x2="1152" y1="288" y2="352" x1="1152" />
            <wire x2="1152" y1="352" y2="400" x1="1152" />
            <wire x2="1152" y1="400" y2="496" x1="1152" />
            <wire x2="1152" y1="496" y2="560" x1="1152" />
            <wire x2="1152" y1="560" y2="624" x1="1152" />
            <wire x2="1152" y1="624" y2="704" x1="1152" />
            <wire x2="1152" y1="704" y2="752" x1="1152" />
            <wire x2="1152" y1="752" y2="848" x1="1152" />
            <wire x2="1152" y1="848" y2="896" x1="1152" />
            <wire x2="1152" y1="896" y2="976" x1="1152" />
            <wire x2="1152" y1="976" y2="1040" x1="1152" />
            <wire x2="1152" y1="1040" y2="1136" x1="1152" />
            <wire x2="1152" y1="1136" y2="1184" x1="1152" />
            <wire x2="1152" y1="1184" y2="1296" x1="1152" />
            <wire x2="1152" y1="1296" y2="1312" x1="1152" />
            <wire x2="1152" y1="1312" y2="1440" x1="1152" />
            <wire x2="1152" y1="1440" y2="1504" x1="1152" />
            <wire x2="1152" y1="1504" y2="1584" x1="1152" />
            <wire x2="1152" y1="1584" y2="1664" x1="1152" />
            <wire x2="1152" y1="1664" y2="1712" x1="1152" />
            <wire x2="1152" y1="1712" y2="1824" x1="1152" />
            <wire x2="1152" y1="1824" y2="1872" x1="1152" />
            <wire x2="1152" y1="1872" y2="1936" x1="1152" />
            <wire x2="1152" y1="1936" y2="2032" x1="1152" />
            <wire x2="1152" y1="2032" y2="2128" x1="1152" />
            <wire x2="1152" y1="2128" y2="2176" x1="1152" />
            <wire x2="1152" y1="2176" y2="2272" x1="1152" />
            <wire x2="1152" y1="2272" y2="2320" x1="1152" />
            <wire x2="1152" y1="2320" y2="2400" x1="1152" />
            <wire x2="1152" y1="2400" y2="2448" x1="1152" />
            <wire x2="1152" y1="2448" y2="2576" x1="1152" />
            <wire x2="1152" y1="2576" y2="2608" x1="1152" />
            <wire x2="1152" y1="2608" y2="2768" x1="1152" />
        </branch>
        <branch name="b(15:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1280" y="304" type="branch" />
            <wire x2="1280" y1="224" y2="288" x1="1280" />
            <wire x2="1280" y1="288" y2="304" x1="1280" />
            <wire x2="1280" y1="304" y2="336" x1="1280" />
            <wire x2="1280" y1="336" y2="432" x1="1280" />
            <wire x2="1280" y1="432" y2="496" x1="1280" />
            <wire x2="1280" y1="496" y2="560" x1="1280" />
            <wire x2="1280" y1="560" y2="640" x1="1280" />
            <wire x2="1280" y1="640" y2="688" x1="1280" />
            <wire x2="1280" y1="688" y2="784" x1="1280" />
            <wire x2="1280" y1="784" y2="832" x1="1280" />
            <wire x2="1280" y1="832" y2="912" x1="1280" />
            <wire x2="1280" y1="912" y2="976" x1="1280" />
            <wire x2="1280" y1="976" y2="1072" x1="1280" />
            <wire x2="1280" y1="1072" y2="1120" x1="1280" />
            <wire x2="1280" y1="1120" y2="1232" x1="1280" />
            <wire x2="1280" y1="1232" y2="1248" x1="1280" />
            <wire x2="1280" y1="1248" y2="1376" x1="1280" />
            <wire x2="1280" y1="1376" y2="1440" x1="1280" />
            <wire x2="1280" y1="1440" y2="1520" x1="1280" />
            <wire x2="1280" y1="1520" y2="1600" x1="1280" />
            <wire x2="1280" y1="1600" y2="1648" x1="1280" />
            <wire x2="1280" y1="1648" y2="1760" x1="1280" />
            <wire x2="1280" y1="1760" y2="1808" x1="1280" />
            <wire x2="1280" y1="1808" y2="1872" x1="1280" />
            <wire x2="1280" y1="1872" y2="1968" x1="1280" />
            <wire x2="1280" y1="1968" y2="2064" x1="1280" />
            <wire x2="1280" y1="2064" y2="2112" x1="1280" />
            <wire x2="1280" y1="2112" y2="2208" x1="1280" />
            <wire x2="1280" y1="2208" y2="2256" x1="1280" />
            <wire x2="1280" y1="2256" y2="2336" x1="1280" />
            <wire x2="1280" y1="2336" y2="2384" x1="1280" />
            <wire x2="1280" y1="2384" y2="2512" x1="1280" />
            <wire x2="1280" y1="2512" y2="2544" x1="1280" />
            <wire x2="1280" y1="2544" y2="2768" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1152" y="240" name="a(15:0)" orien="R270" />
        <iomarker fontsize="28" x="1280" y="224" name="b(15:0)" orien="R270" />
        <instance x="1488" y="464" name="XLXI_1" orien="R0" />
        <instance x="1488" y="624" name="XLXI_2" orien="R0" />
        <instance x="1488" y="768" name="XLXI_3" orien="R0" />
        <iomarker fontsize="28" x="1984" y="2720" name="sand(15:0)" orien="R90" />
        <instance x="1488" y="912" name="XLXI_4" orien="R0" />
        <instance x="1488" y="1040" name="XLXI_5" orien="R0" />
        <instance x="1488" y="1200" name="XLXI_6" orien="R0" />
        <instance x="1488" y="1360" name="XLXI_7" orien="R0" />
        <instance x="1488" y="1504" name="XLXI_8" orien="R0" />
        <instance x="1488" y="1648" name="XLXI_9" orien="R0" />
        <instance x="1488" y="1776" name="XLXI_10" orien="R0" />
        <instance x="1488" y="1936" name="XLXI_11" orien="R0" />
        <instance x="1488" y="2096" name="XLXI_12" orien="R0" />
        <instance x="1488" y="2240" name="XLXI_13" orien="R0" />
        <instance x="1488" y="2384" name="XLXI_14" orien="R0" />
        <instance x="1488" y="2512" name="XLXI_15" orien="R0" />
        <instance x="1488" y="2672" name="XLXI_16" orien="R0" />
        <instance x="944" y="1056" name="XLXI_23" orien="R180" />
        <instance x="944" y="1376" name="XLXI_25" orien="R180" />
        <instance x="944" y="1536" name="XLXI_26" orien="R180" />
        <instance x="944" y="1696" name="XLXI_27" orien="R180" />
        <instance x="944" y="1808" name="XLXI_28" orien="R180" />
        <instance x="944" y="224" name="XLXI_17" orien="R180" />
        <instance x="944" y="368" name="XLXI_18" orien="R180" />
        <instance x="944" y="496" name="XLXI_19" orien="R180" />
        <instance x="944" y="624" name="XLXI_20" orien="R180" />
        <instance x="944" y="768" name="XLXI_21" orien="R180" />
        <instance x="944" y="912" name="XLXI_22" orien="R180" />
        <instance x="944" y="1184" name="XLXI_24" orien="R180" />
        <instance x="944" y="2000" name="XLXI_29" orien="R180" />
        <instance x="944" y="2144" name="XLXI_30" orien="R180" />
        <instance x="944" y="2272" name="XLXI_31" orien="R180" />
        <instance x="944" y="2448" name="XLXI_32" orien="R180" />
        <iomarker fontsize="28" x="528" y="2736" name="sor(15:0)" orien="R90" />
        <bustap x2="624" y1="2544" y2="2544" x1="528" />
        <branch name="sor(15)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="656" y="2544" type="branch" />
            <wire x2="656" y1="2544" y2="2544" x1="624" />
            <wire x2="688" y1="2544" y2="2544" x1="656" />
        </branch>
        <bustap x2="624" y1="2368" y2="2368" x1="528" />
        <branch name="sor(14)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="656" y="2368" type="branch" />
            <wire x2="656" y1="2368" y2="2368" x1="624" />
            <wire x2="688" y1="2368" y2="2368" x1="656" />
        </branch>
        <bustap x2="624" y1="2240" y2="2240" x1="528" />
        <branch name="sor(13)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="656" y="2240" type="branch" />
            <wire x2="656" y1="2240" y2="2240" x1="624" />
            <wire x2="688" y1="2240" y2="2240" x1="656" />
        </branch>
        <bustap x2="624" y1="2096" y2="2096" x1="528" />
        <branch name="sor(12)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="656" y="2096" type="branch" />
            <wire x2="656" y1="2096" y2="2096" x1="624" />
            <wire x2="688" y1="2096" y2="2096" x1="656" />
        </branch>
        <bustap x2="624" y1="1904" y2="1904" x1="528" />
        <branch name="sor(11)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="656" y="1904" type="branch" />
            <wire x2="656" y1="1904" y2="1904" x1="624" />
            <wire x2="688" y1="1904" y2="1904" x1="656" />
        </branch>
        <bustap x2="624" y1="1792" y2="1792" x1="528" />
        <branch name="sor(10)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="656" y="1792" type="branch" />
            <wire x2="656" y1="1792" y2="1792" x1="624" />
            <wire x2="688" y1="1792" y2="1792" x1="656" />
        </branch>
        <bustap x2="624" y1="1632" y2="1632" x1="528" />
        <branch name="sor(9)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="656" y="1632" type="branch" />
            <wire x2="656" y1="1632" y2="1632" x1="624" />
            <wire x2="688" y1="1632" y2="1632" x1="656" />
        </branch>
        <bustap x2="624" y1="1472" y2="1472" x1="528" />
        <branch name="sor(8)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="656" y="1472" type="branch" />
            <wire x2="656" y1="1472" y2="1472" x1="624" />
            <wire x2="688" y1="1472" y2="1472" x1="656" />
        </branch>
        <bustap x2="624" y1="1280" y2="1280" x1="528" />
        <branch name="sor(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="656" y="1280" type="branch" />
            <wire x2="656" y1="1280" y2="1280" x1="624" />
            <wire x2="688" y1="1280" y2="1280" x1="656" />
        </branch>
        <bustap x2="624" y1="1152" y2="1152" x1="528" />
        <branch name="sor(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="656" y="1152" type="branch" />
            <wire x2="656" y1="1152" y2="1152" x1="624" />
            <wire x2="688" y1="1152" y2="1152" x1="656" />
        </branch>
        <bustap x2="624" y1="1008" y2="1008" x1="528" />
        <branch name="sor(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="656" y="1008" type="branch" />
            <wire x2="656" y1="1008" y2="1008" x1="624" />
            <wire x2="688" y1="1008" y2="1008" x1="656" />
        </branch>
        <bustap x2="624" y1="864" y2="864" x1="528" />
        <branch name="sor(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="656" y="864" type="branch" />
            <wire x2="656" y1="864" y2="864" x1="624" />
            <wire x2="688" y1="864" y2="864" x1="656" />
        </branch>
        <bustap x2="624" y1="720" y2="720" x1="528" />
        <branch name="sor(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="656" y="720" type="branch" />
            <wire x2="656" y1="720" y2="720" x1="624" />
            <wire x2="688" y1="720" y2="720" x1="656" />
        </branch>
        <bustap x2="624" y1="592" y2="592" x1="528" />
        <branch name="sor(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="656" y="592" type="branch" />
            <wire x2="656" y1="592" y2="592" x1="624" />
            <wire x2="688" y1="592" y2="592" x1="656" />
        </branch>
        <bustap x2="624" y1="464" y2="464" x1="528" />
        <branch name="sor(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="656" y="464" type="branch" />
            <wire x2="656" y1="464" y2="464" x1="624" />
            <wire x2="688" y1="464" y2="464" x1="656" />
        </branch>
        <bustap x2="624" y1="320" y2="320" x1="528" />
        <branch name="sor(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="656" y="320" type="branch" />
            <wire x2="656" y1="320" y2="320" x1="624" />
            <wire x2="688" y1="320" y2="320" x1="656" />
        </branch>
        <bustap x2="1888" y1="2576" y2="2576" x1="1984" />
        <branch name="sand(15)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1816" y="2576" type="branch" />
            <wire x2="1816" y1="2576" y2="2576" x1="1744" />
            <wire x2="1888" y1="2576" y2="2576" x1="1816" />
        </branch>
        <bustap x2="1888" y1="2416" y2="2416" x1="1984" />
        <branch name="sand(14)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1816" y="2416" type="branch" />
            <wire x2="1816" y1="2416" y2="2416" x1="1744" />
            <wire x2="1888" y1="2416" y2="2416" x1="1816" />
        </branch>
        <bustap x2="1888" y1="2288" y2="2288" x1="1984" />
        <branch name="sand(13)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1816" y="2288" type="branch" />
            <wire x2="1816" y1="2288" y2="2288" x1="1744" />
            <wire x2="1888" y1="2288" y2="2288" x1="1816" />
        </branch>
        <bustap x2="1888" y1="2144" y2="2144" x1="1984" />
        <branch name="sand(12)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1816" y="2144" type="branch" />
            <wire x2="1816" y1="2144" y2="2144" x1="1744" />
            <wire x2="1888" y1="2144" y2="2144" x1="1816" />
        </branch>
        <bustap x2="1888" y1="2000" y2="2000" x1="1984" />
        <branch name="sand(11)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1816" y="2000" type="branch" />
            <wire x2="1816" y1="2000" y2="2000" x1="1744" />
            <wire x2="1888" y1="2000" y2="2000" x1="1816" />
        </branch>
        <bustap x2="1888" y1="1840" y2="1840" x1="1984" />
        <branch name="sand(10)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1816" y="1840" type="branch" />
            <wire x2="1816" y1="1840" y2="1840" x1="1744" />
            <wire x2="1888" y1="1840" y2="1840" x1="1816" />
        </branch>
        <bustap x2="1888" y1="1680" y2="1680" x1="1984" />
        <branch name="sand(9)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1816" y="1680" type="branch" />
            <wire x2="1816" y1="1680" y2="1680" x1="1744" />
            <wire x2="1888" y1="1680" y2="1680" x1="1816" />
        </branch>
        <bustap x2="1888" y1="1552" y2="1552" x1="1984" />
        <branch name="sand(8)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1816" y="1552" type="branch" />
            <wire x2="1816" y1="1552" y2="1552" x1="1744" />
            <wire x2="1888" y1="1552" y2="1552" x1="1816" />
        </branch>
        <bustap x2="1888" y1="1408" y2="1408" x1="1984" />
        <branch name="sand(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1816" y="1408" type="branch" />
            <wire x2="1816" y1="1408" y2="1408" x1="1744" />
            <wire x2="1888" y1="1408" y2="1408" x1="1816" />
        </branch>
        <bustap x2="1888" y1="1264" y2="1264" x1="1984" />
        <branch name="sand(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1816" y="1264" type="branch" />
            <wire x2="1816" y1="1264" y2="1264" x1="1744" />
            <wire x2="1888" y1="1264" y2="1264" x1="1816" />
        </branch>
        <bustap x2="1888" y1="1104" y2="1104" x1="1984" />
        <branch name="sand(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1816" y="1104" type="branch" />
            <wire x2="1816" y1="1104" y2="1104" x1="1744" />
            <wire x2="1888" y1="1104" y2="1104" x1="1816" />
        </branch>
        <bustap x2="1888" y1="944" y2="944" x1="1984" />
        <branch name="sand(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1816" y="944" type="branch" />
            <wire x2="1816" y1="944" y2="944" x1="1744" />
            <wire x2="1888" y1="944" y2="944" x1="1816" />
        </branch>
        <bustap x2="1888" y1="816" y2="816" x1="1984" />
        <branch name="sand(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1816" y="816" type="branch" />
            <wire x2="1816" y1="816" y2="816" x1="1744" />
            <wire x2="1888" y1="816" y2="816" x1="1816" />
        </branch>
        <bustap x2="1888" y1="672" y2="672" x1="1984" />
        <branch name="sand(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1816" y="672" type="branch" />
            <wire x2="1816" y1="672" y2="672" x1="1744" />
            <wire x2="1888" y1="672" y2="672" x1="1816" />
        </branch>
        <bustap x2="1888" y1="528" y2="528" x1="1984" />
        <branch name="sand(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1816" y="528" type="branch" />
            <wire x2="1816" y1="528" y2="528" x1="1744" />
            <wire x2="1888" y1="528" y2="528" x1="1816" />
        </branch>
        <bustap x2="1888" y1="368" y2="368" x1="1984" />
        <branch name="sand(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1816" y="368" type="branch" />
            <wire x2="1816" y1="368" y2="368" x1="1744" />
            <wire x2="1888" y1="368" y2="368" x1="1816" />
        </branch>
        <bustap x2="1056" y1="2576" y2="2576" x1="1152" />
        <branch name="a(15)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1000" y="2576" type="branch" />
            <wire x2="1000" y1="2576" y2="2576" x1="944" />
            <wire x2="1056" y1="2576" y2="2576" x1="1000" />
        </branch>
        <bustap x2="1056" y1="2400" y2="2400" x1="1152" />
        <branch name="a(14)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1000" y="2400" type="branch" />
            <wire x2="1000" y1="2400" y2="2400" x1="944" />
            <wire x2="1056" y1="2400" y2="2400" x1="1000" />
        </branch>
        <bustap x2="1056" y1="2272" y2="2272" x1="1152" />
        <branch name="a(13)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1000" y="2272" type="branch" />
            <wire x2="1000" y1="2272" y2="2272" x1="944" />
            <wire x2="1056" y1="2272" y2="2272" x1="1000" />
        </branch>
        <bustap x2="1056" y1="2128" y2="2128" x1="1152" />
        <branch name="a(12)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1000" y="2128" type="branch" />
            <wire x2="1000" y1="2128" y2="2128" x1="944" />
            <wire x2="1056" y1="2128" y2="2128" x1="1000" />
        </branch>
        <bustap x2="1056" y1="1936" y2="1936" x1="1152" />
        <branch name="a(11)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1000" y="1936" type="branch" />
            <wire x2="1000" y1="1936" y2="1936" x1="944" />
            <wire x2="1056" y1="1936" y2="1936" x1="1000" />
        </branch>
        <bustap x2="1056" y1="1824" y2="1824" x1="1152" />
        <branch name="a(10)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1000" y="1824" type="branch" />
            <wire x2="1000" y1="1824" y2="1824" x1="944" />
            <wire x2="1056" y1="1824" y2="1824" x1="1000" />
        </branch>
        <bustap x2="1056" y1="1664" y2="1664" x1="1152" />
        <branch name="a(9)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1000" y="1664" type="branch" />
            <wire x2="1000" y1="1664" y2="1664" x1="944" />
            <wire x2="1056" y1="1664" y2="1664" x1="1000" />
        </branch>
        <bustap x2="1056" y1="1504" y2="1504" x1="1152" />
        <branch name="a(8)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1000" y="1504" type="branch" />
            <wire x2="1000" y1="1504" y2="1504" x1="944" />
            <wire x2="1056" y1="1504" y2="1504" x1="1000" />
        </branch>
        <bustap x2="1056" y1="1312" y2="1312" x1="1152" />
        <branch name="a(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1000" y="1312" type="branch" />
            <wire x2="1000" y1="1312" y2="1312" x1="944" />
            <wire x2="1056" y1="1312" y2="1312" x1="1000" />
        </branch>
        <bustap x2="1056" y1="1184" y2="1184" x1="1152" />
        <branch name="a(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1000" y="1184" type="branch" />
            <wire x2="1000" y1="1184" y2="1184" x1="944" />
            <wire x2="1056" y1="1184" y2="1184" x1="1000" />
        </branch>
        <bustap x2="1056" y1="1040" y2="1040" x1="1152" />
        <branch name="a(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1000" y="1040" type="branch" />
            <wire x2="1000" y1="1040" y2="1040" x1="944" />
            <wire x2="1056" y1="1040" y2="1040" x1="1000" />
        </branch>
        <bustap x2="1056" y1="896" y2="896" x1="1152" />
        <branch name="a(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1000" y="896" type="branch" />
            <wire x2="1000" y1="896" y2="896" x1="944" />
            <wire x2="1056" y1="896" y2="896" x1="1000" />
        </branch>
        <bustap x2="1056" y1="752" y2="752" x1="1152" />
        <branch name="a(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1000" y="752" type="branch" />
            <wire x2="1000" y1="752" y2="752" x1="944" />
            <wire x2="1056" y1="752" y2="752" x1="1000" />
        </branch>
        <bustap x2="1056" y1="624" y2="624" x1="1152" />
        <branch name="a(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1000" y="624" type="branch" />
            <wire x2="1000" y1="624" y2="624" x1="944" />
            <wire x2="1056" y1="624" y2="624" x1="1000" />
        </branch>
        <bustap x2="1056" y1="496" y2="496" x1="1152" />
        <branch name="a(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1000" y="496" type="branch" />
            <wire x2="1000" y1="496" y2="496" x1="944" />
            <wire x2="1056" y1="496" y2="496" x1="1000" />
        </branch>
        <bustap x2="1056" y1="352" y2="352" x1="1152" />
        <branch name="a(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1000" y="352" type="branch" />
            <wire x2="1000" y1="352" y2="352" x1="944" />
            <wire x2="1056" y1="352" y2="352" x1="1000" />
        </branch>
        <bustap x2="1248" y1="2608" y2="2608" x1="1152" />
        <branch name="a(15)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1368" y="2608" type="branch" />
            <wire x2="1368" y1="2608" y2="2608" x1="1248" />
            <wire x2="1488" y1="2608" y2="2608" x1="1368" />
        </branch>
        <bustap x2="1248" y1="2448" y2="2448" x1="1152" />
        <branch name="a(14)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1368" y="2448" type="branch" />
            <wire x2="1368" y1="2448" y2="2448" x1="1248" />
            <wire x2="1488" y1="2448" y2="2448" x1="1368" />
        </branch>
        <bustap x2="1248" y1="2320" y2="2320" x1="1152" />
        <branch name="a(13)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1368" y="2320" type="branch" />
            <wire x2="1368" y1="2320" y2="2320" x1="1248" />
            <wire x2="1488" y1="2320" y2="2320" x1="1368" />
        </branch>
        <bustap x2="1248" y1="2176" y2="2176" x1="1152" />
        <branch name="a(12)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1368" y="2176" type="branch" />
            <wire x2="1368" y1="2176" y2="2176" x1="1248" />
            <wire x2="1488" y1="2176" y2="2176" x1="1368" />
        </branch>
        <bustap x2="1248" y1="2032" y2="2032" x1="1152" />
        <branch name="a(11)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1368" y="2032" type="branch" />
            <wire x2="1368" y1="2032" y2="2032" x1="1248" />
            <wire x2="1488" y1="2032" y2="2032" x1="1368" />
        </branch>
        <bustap x2="1248" y1="1872" y2="1872" x1="1152" />
        <branch name="a(10)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1368" y="1872" type="branch" />
            <wire x2="1368" y1="1872" y2="1872" x1="1248" />
            <wire x2="1488" y1="1872" y2="1872" x1="1368" />
        </branch>
        <bustap x2="1248" y1="1712" y2="1712" x1="1152" />
        <branch name="a(9)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1368" y="1712" type="branch" />
            <wire x2="1368" y1="1712" y2="1712" x1="1248" />
            <wire x2="1488" y1="1712" y2="1712" x1="1368" />
        </branch>
        <bustap x2="1248" y1="1584" y2="1584" x1="1152" />
        <branch name="a(8)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1368" y="1584" type="branch" />
            <wire x2="1368" y1="1584" y2="1584" x1="1248" />
            <wire x2="1488" y1="1584" y2="1584" x1="1368" />
        </branch>
        <bustap x2="1248" y1="1440" y2="1440" x1="1152" />
        <branch name="a(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1368" y="1440" type="branch" />
            <wire x2="1368" y1="1440" y2="1440" x1="1248" />
            <wire x2="1488" y1="1440" y2="1440" x1="1368" />
        </branch>
        <bustap x2="1248" y1="1296" y2="1296" x1="1152" />
        <branch name="a(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1368" y="1296" type="branch" />
            <wire x2="1368" y1="1296" y2="1296" x1="1248" />
            <wire x2="1488" y1="1296" y2="1296" x1="1368" />
        </branch>
        <bustap x2="1248" y1="1136" y2="1136" x1="1152" />
        <branch name="a(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1368" y="1136" type="branch" />
            <wire x2="1368" y1="1136" y2="1136" x1="1248" />
            <wire x2="1488" y1="1136" y2="1136" x1="1368" />
        </branch>
        <bustap x2="1248" y1="976" y2="976" x1="1152" />
        <branch name="a(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1368" y="976" type="branch" />
            <wire x2="1368" y1="976" y2="976" x1="1248" />
            <wire x2="1488" y1="976" y2="976" x1="1368" />
        </branch>
        <bustap x2="1248" y1="848" y2="848" x1="1152" />
        <branch name="a(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1368" y="848" type="branch" />
            <wire x2="1368" y1="848" y2="848" x1="1248" />
            <wire x2="1488" y1="848" y2="848" x1="1368" />
        </branch>
        <bustap x2="1248" y1="704" y2="704" x1="1152" />
        <branch name="a(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1368" y="704" type="branch" />
            <wire x2="1368" y1="704" y2="704" x1="1248" />
            <wire x2="1488" y1="704" y2="704" x1="1368" />
        </branch>
        <bustap x2="1248" y1="560" y2="560" x1="1152" />
        <branch name="a(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1368" y="560" type="branch" />
            <wire x2="1368" y1="560" y2="560" x1="1248" />
            <wire x2="1488" y1="560" y2="560" x1="1368" />
        </branch>
        <bustap x2="1248" y1="400" y2="400" x1="1152" />
        <branch name="a(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1368" y="400" type="branch" />
            <wire x2="1368" y1="400" y2="400" x1="1248" />
            <wire x2="1488" y1="400" y2="400" x1="1368" />
        </branch>
        <bustap x2="1376" y1="2544" y2="2544" x1="1280" />
        <branch name="b(15)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1432" y="2544" type="branch" />
            <wire x2="1432" y1="2544" y2="2544" x1="1376" />
            <wire x2="1488" y1="2544" y2="2544" x1="1432" />
        </branch>
        <bustap x2="1376" y1="2384" y2="2384" x1="1280" />
        <branch name="b(14)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1432" y="2384" type="branch" />
            <wire x2="1432" y1="2384" y2="2384" x1="1376" />
            <wire x2="1488" y1="2384" y2="2384" x1="1432" />
        </branch>
        <bustap x2="1376" y1="2256" y2="2256" x1="1280" />
        <branch name="b(13)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1432" y="2256" type="branch" />
            <wire x2="1432" y1="2256" y2="2256" x1="1376" />
            <wire x2="1488" y1="2256" y2="2256" x1="1432" />
        </branch>
        <bustap x2="1376" y1="2112" y2="2112" x1="1280" />
        <branch name="b(12)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1432" y="2112" type="branch" />
            <wire x2="1432" y1="2112" y2="2112" x1="1376" />
            <wire x2="1488" y1="2112" y2="2112" x1="1432" />
        </branch>
        <bustap x2="1376" y1="1968" y2="1968" x1="1280" />
        <branch name="b(11)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1432" y="1968" type="branch" />
            <wire x2="1432" y1="1968" y2="1968" x1="1376" />
            <wire x2="1488" y1="1968" y2="1968" x1="1432" />
        </branch>
        <bustap x2="1376" y1="1808" y2="1808" x1="1280" />
        <branch name="b(10)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1432" y="1808" type="branch" />
            <wire x2="1432" y1="1808" y2="1808" x1="1376" />
            <wire x2="1488" y1="1808" y2="1808" x1="1432" />
        </branch>
        <bustap x2="1376" y1="1648" y2="1648" x1="1280" />
        <branch name="b(9)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1432" y="1648" type="branch" />
            <wire x2="1432" y1="1648" y2="1648" x1="1376" />
            <wire x2="1488" y1="1648" y2="1648" x1="1432" />
        </branch>
        <bustap x2="1376" y1="1520" y2="1520" x1="1280" />
        <branch name="b(8)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1432" y="1520" type="branch" />
            <wire x2="1432" y1="1520" y2="1520" x1="1376" />
            <wire x2="1488" y1="1520" y2="1520" x1="1432" />
        </branch>
        <bustap x2="1376" y1="1376" y2="1376" x1="1280" />
        <branch name="b(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1432" y="1376" type="branch" />
            <wire x2="1432" y1="1376" y2="1376" x1="1376" />
            <wire x2="1488" y1="1376" y2="1376" x1="1432" />
        </branch>
        <bustap x2="1376" y1="1232" y2="1232" x1="1280" />
        <branch name="b(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1432" y="1232" type="branch" />
            <wire x2="1432" y1="1232" y2="1232" x1="1376" />
            <wire x2="1488" y1="1232" y2="1232" x1="1432" />
        </branch>
        <bustap x2="1376" y1="1072" y2="1072" x1="1280" />
        <branch name="b(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1432" y="1072" type="branch" />
            <wire x2="1432" y1="1072" y2="1072" x1="1376" />
            <wire x2="1488" y1="1072" y2="1072" x1="1432" />
        </branch>
        <bustap x2="1376" y1="912" y2="912" x1="1280" />
        <branch name="b(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1432" y="912" type="branch" />
            <wire x2="1432" y1="912" y2="912" x1="1376" />
            <wire x2="1488" y1="912" y2="912" x1="1432" />
        </branch>
        <bustap x2="1376" y1="784" y2="784" x1="1280" />
        <branch name="b(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1432" y="784" type="branch" />
            <wire x2="1432" y1="784" y2="784" x1="1376" />
            <wire x2="1488" y1="784" y2="784" x1="1432" />
        </branch>
        <bustap x2="1376" y1="640" y2="640" x1="1280" />
        <branch name="b(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1432" y="640" type="branch" />
            <wire x2="1432" y1="640" y2="640" x1="1376" />
            <wire x2="1488" y1="640" y2="640" x1="1432" />
        </branch>
        <bustap x2="1376" y1="496" y2="496" x1="1280" />
        <branch name="b(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1432" y="496" type="branch" />
            <wire x2="1432" y1="496" y2="496" x1="1376" />
            <wire x2="1488" y1="496" y2="496" x1="1432" />
        </branch>
        <bustap x2="1376" y1="336" y2="336" x1="1280" />
        <branch name="b(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1432" y="336" type="branch" />
            <wire x2="1432" y1="336" y2="336" x1="1376" />
            <wire x2="1488" y1="336" y2="336" x1="1432" />
        </branch>
        <bustap x2="1184" y1="2512" y2="2512" x1="1280" />
        <branch name="b(15)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1064" y="2512" type="branch" />
            <wire x2="1064" y1="2512" y2="2512" x1="944" />
            <wire x2="1184" y1="2512" y2="2512" x1="1064" />
        </branch>
        <bustap x2="1184" y1="2336" y2="2336" x1="1280" />
        <branch name="b(14)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1064" y="2336" type="branch" />
            <wire x2="1064" y1="2336" y2="2336" x1="944" />
            <wire x2="1184" y1="2336" y2="2336" x1="1064" />
        </branch>
        <bustap x2="1184" y1="2208" y2="2208" x1="1280" />
        <branch name="b(13)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1064" y="2208" type="branch" />
            <wire x2="1064" y1="2208" y2="2208" x1="944" />
            <wire x2="1184" y1="2208" y2="2208" x1="1064" />
        </branch>
        <bustap x2="1184" y1="2064" y2="2064" x1="1280" />
        <branch name="b(12)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1064" y="2064" type="branch" />
            <wire x2="1064" y1="2064" y2="2064" x1="944" />
            <wire x2="1184" y1="2064" y2="2064" x1="1064" />
        </branch>
        <bustap x2="1184" y1="1872" y2="1872" x1="1280" />
        <branch name="b(11)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1064" y="1872" type="branch" />
            <wire x2="1064" y1="1872" y2="1872" x1="944" />
            <wire x2="1184" y1="1872" y2="1872" x1="1064" />
        </branch>
        <bustap x2="1184" y1="1760" y2="1760" x1="1280" />
        <branch name="b(10)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1064" y="1760" type="branch" />
            <wire x2="1064" y1="1760" y2="1760" x1="944" />
            <wire x2="1184" y1="1760" y2="1760" x1="1064" />
        </branch>
        <bustap x2="1184" y1="1600" y2="1600" x1="1280" />
        <branch name="b(9)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1064" y="1600" type="branch" />
            <wire x2="1064" y1="1600" y2="1600" x1="944" />
            <wire x2="1184" y1="1600" y2="1600" x1="1064" />
        </branch>
        <bustap x2="1184" y1="1440" y2="1440" x1="1280" />
        <branch name="b(8)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1064" y="1440" type="branch" />
            <wire x2="1064" y1="1440" y2="1440" x1="944" />
            <wire x2="1184" y1="1440" y2="1440" x1="1064" />
        </branch>
        <bustap x2="1184" y1="1248" y2="1248" x1="1280" />
        <branch name="b(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1064" y="1248" type="branch" />
            <wire x2="1064" y1="1248" y2="1248" x1="944" />
            <wire x2="1184" y1="1248" y2="1248" x1="1064" />
        </branch>
        <bustap x2="1184" y1="1120" y2="1120" x1="1280" />
        <branch name="b(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1064" y="1120" type="branch" />
            <wire x2="1064" y1="1120" y2="1120" x1="944" />
            <wire x2="1184" y1="1120" y2="1120" x1="1064" />
        </branch>
        <bustap x2="1184" y1="976" y2="976" x1="1280" />
        <branch name="b(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1064" y="976" type="branch" />
            <wire x2="1064" y1="976" y2="976" x1="944" />
            <wire x2="1184" y1="976" y2="976" x1="1064" />
        </branch>
        <bustap x2="1184" y1="832" y2="832" x1="1280" />
        <branch name="b(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1064" y="832" type="branch" />
            <wire x2="1064" y1="832" y2="832" x1="944" />
            <wire x2="1184" y1="832" y2="832" x1="1064" />
        </branch>
        <bustap x2="1184" y1="688" y2="688" x1="1280" />
        <branch name="b(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1064" y="688" type="branch" />
            <wire x2="1064" y1="688" y2="688" x1="944" />
            <wire x2="1184" y1="688" y2="688" x1="1064" />
        </branch>
        <bustap x2="1184" y1="560" y2="560" x1="1280" />
        <branch name="b(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1064" y="560" type="branch" />
            <wire x2="1064" y1="560" y2="560" x1="944" />
            <wire x2="1184" y1="560" y2="560" x1="1064" />
        </branch>
        <bustap x2="1184" y1="432" y2="432" x1="1280" />
        <branch name="b(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1064" y="432" type="branch" />
            <wire x2="1064" y1="432" y2="432" x1="944" />
            <wire x2="1184" y1="432" y2="432" x1="1064" />
        </branch>
        <bustap x2="1184" y1="288" y2="288" x1="1280" />
        <branch name="b(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1064" y="288" type="branch" />
            <wire x2="1064" y1="288" y2="288" x1="944" />
            <wire x2="1184" y1="288" y2="288" x1="1064" />
        </branch>
    </sheet>
</drawing>