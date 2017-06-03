<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="op(3:0)" />
        <signal name="a(15:0)" />
        <signal name="b(15:0)" />
        <signal name="op(2)" />
        <signal name="op(3)" />
        <signal name="op(1)" />
        <signal name="XLXN_220(15:0)" />
        <signal name="XLXN_5(15:0)" />
        <signal name="XLXN_4(15:0)" />
        <signal name="XLXN_10(15:0)" />
        <signal name="s(15:0)" />
        <signal name="XLXN_14(15:0)" />
        <signal name="XLXN_9(15:0)" />
        <signal name="XLXN_8(15:0)" />
        <signal name="XLXN_12(15:0)" />
        <signal name="XLXN_11(15:0)" />
        <signal name="XLXN_13(15:0)" />
        <signal name="XLXN_6(15:0)" />
        <signal name="XLXN_7(15:0)" />
        <signal name="op(0)" />
        <signal name="XLXN_308(15:0)" />
        <signal name="XLXN_309(15:0)" />
        <signal name="XLXN_310(15:0)" />
        <signal name="XLXN_311(15:0)" />
        <signal name="XLXN_312(15:0)" />
        <signal name="XLXN_313(15:0)" />
        <signal name="XLXN_314(15:0)" />
        <signal name="XLXN_315(15:0)" />
        <signal name="XLXN_316(15:0)" />
        <port polarity="Input" name="op(3:0)" />
        <port polarity="Input" name="a(15:0)" />
        <port polarity="Input" name="b(15:0)" />
        <port polarity="Output" name="s(15:0)" />
        <blockdef name="mux2x16">
            <timestamp>2013-9-12T9:51:35</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="adsu16">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="384" y1="-64" y2="-64" x1="240" />
            <line x2="240" y1="-124" y2="-64" x1="240" />
            <rect width="64" x="0" y="-204" height="24" />
            <rect width="64" x="0" y="-332" height="24" />
            <rect width="64" x="384" y="-268" height="24" />
            <line x2="64" y1="-448" y2="-448" x1="128" />
            <line x2="128" y1="-416" y2="-448" x1="128" />
            <line x2="48" y1="-64" y2="-64" x1="128" />
            <line x2="128" y1="-96" y2="-64" x1="128" />
            <line x2="64" y1="-288" y2="-432" x1="64" />
            <line x2="64" y1="-256" y2="-288" x1="128" />
            <line x2="128" y1="-224" y2="-256" x1="64" />
            <line x2="64" y1="-80" y2="-224" x1="64" />
            <line x2="64" y1="-160" y2="-80" x1="384" />
            <line x2="384" y1="-336" y2="-160" x1="384" />
            <line x2="384" y1="-352" y2="-336" x1="384" />
            <line x2="384" y1="-432" y2="-352" x1="64" />
            <line x2="336" y1="-128" y2="-148" x1="336" />
            <line x2="336" y1="-128" y2="-128" x1="384" />
            <line x2="384" y1="-256" y2="-256" x1="448" />
            <line x2="384" y1="-128" y2="-128" x1="448" />
            <line x2="384" y1="-64" y2="-64" x1="448" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <blockdef name="inv16">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <rect width="64" x="160" y="-44" height="24" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="andor">
            <timestamp>2013-12-9T10:20:15</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="inc">
            <timestamp>2013-9-11T7:46:39</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="concat">
            <timestamp>2013-12-9T10:12:41</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="adsu16" name="XLXI_155">
            <blockpin signalname="a(15:0)" name="A(15:0)" />
            <blockpin signalname="op(0)" name="ADD" />
            <blockpin signalname="b(15:0)" name="B(15:0)" />
            <blockpin signalname="op(1)" name="CI" />
            <blockpin name="CO" />
            <blockpin name="OFL" />
            <blockpin signalname="XLXN_220(15:0)" name="S(15:0)" />
        </block>
        <block symbolname="mux2x16" name="XLXI_12">
            <blockpin signalname="XLXN_14(15:0)" name="D0(15:0)" />
            <blockpin signalname="XLXN_13(15:0)" name="D1(15:0)" />
            <blockpin signalname="op(3)" name="S0" />
            <blockpin signalname="s(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="mux2x16" name="XLXI_6">
            <blockpin name="D0(15:0)" />
            <blockpin name="D1(15:0)" />
            <blockpin signalname="op(0)" name="S0" />
            <blockpin signalname="XLXN_9(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="mux2x16" name="XLXI_5">
            <blockpin name="D0(15:0)" />
            <blockpin name="D1(15:0)" />
            <blockpin signalname="op(0)" name="S0" />
            <blockpin signalname="XLXN_8(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="mux2x16" name="XLXI_4">
            <blockpin name="D0(15:0)" />
            <blockpin name="D1(15:0)" />
            <blockpin signalname="op(0)" name="S0" />
            <blockpin signalname="XLXN_7(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="mux2x16" name="XLXI_3">
            <blockpin signalname="XLXN_312(15:0)" name="D0(15:0)" />
            <blockpin signalname="XLXN_314(15:0)" name="D1(15:0)" />
            <blockpin signalname="op(0)" name="S0" />
            <blockpin signalname="XLXN_6(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="mux2x16" name="XLXI_2">
            <blockpin signalname="XLXN_309(15:0)" name="D0(15:0)" />
            <blockpin signalname="XLXN_311(15:0)" name="D1(15:0)" />
            <blockpin signalname="op(0)" name="S0" />
            <blockpin signalname="XLXN_5(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="mux2x16" name="XLXI_1">
            <blockpin signalname="XLXN_308(15:0)" name="D0(15:0)" />
            <blockpin signalname="XLXN_310(15:0)" name="D1(15:0)" />
            <blockpin signalname="op(0)" name="S0" />
            <blockpin signalname="XLXN_4(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="mux2x16" name="XLXI_8">
            <blockpin signalname="XLXN_6(15:0)" name="D0(15:0)" />
            <blockpin signalname="XLXN_7(15:0)" name="D1(15:0)" />
            <blockpin signalname="op(1)" name="S0" />
            <blockpin signalname="XLXN_11(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="mux2x16" name="XLXI_7">
            <blockpin signalname="XLXN_4(15:0)" name="D0(15:0)" />
            <blockpin signalname="XLXN_5(15:0)" name="D1(15:0)" />
            <blockpin signalname="op(1)" name="S0" />
            <blockpin signalname="XLXN_10(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="mux2x16" name="XLXI_9">
            <blockpin signalname="XLXN_8(15:0)" name="D0(15:0)" />
            <blockpin signalname="XLXN_9(15:0)" name="D1(15:0)" />
            <blockpin signalname="op(1)" name="S0" />
            <blockpin signalname="XLXN_12(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="mux2x16" name="XLXI_10">
            <blockpin signalname="XLXN_220(15:0)" name="D0(15:0)" />
            <blockpin signalname="XLXN_10(15:0)" name="D1(15:0)" />
            <blockpin signalname="op(2)" name="S0" />
            <blockpin signalname="XLXN_14(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="mux2x16" name="XLXI_11">
            <blockpin signalname="XLXN_11(15:0)" name="D0(15:0)" />
            <blockpin signalname="XLXN_12(15:0)" name="D1(15:0)" />
            <blockpin signalname="op(2)" name="S0" />
            <blockpin signalname="XLXN_13(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="inv16" name="XLXI_199">
            <blockpin signalname="a(15:0)" name="I(15:0)" />
            <blockpin signalname="XLXN_308(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="andor" name="XLXI_201">
            <blockpin signalname="a(15:0)" name="a(15:0)" />
            <blockpin signalname="b(15:0)" name="b(15:0)" />
            <blockpin signalname="XLXN_309(15:0)" name="sor(15:0)" />
            <blockpin signalname="XLXN_310(15:0)" name="sand(15:0)" />
        </block>
        <block symbolname="inc" name="XLXI_202">
            <blockpin signalname="a(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_311(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="inc" name="XLXI_203">
            <blockpin signalname="XLXN_313(15:0)" name="Din(15:0)" />
            <blockpin signalname="XLXN_312(15:0)" name="Dout(15:0)" />
        </block>
        <block symbolname="inv16" name="XLXI_204">
            <blockpin signalname="a(15:0)" name="I(15:0)" />
            <blockpin signalname="XLXN_313(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="concat" name="XLXI_205">
            <blockpin signalname="a(15:0)" name="a(15:0)" />
            <blockpin signalname="b(15:0)" name="b(15:0)" />
            <blockpin signalname="XLXN_314(15:0)" name="s(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="op(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="688" y="80" type="branch" />
            <wire x2="688" y1="80" y2="80" x1="608" />
            <wire x2="1088" y1="80" y2="80" x1="688" />
            <wire x2="1776" y1="80" y2="80" x1="1088" />
            <wire x2="2304" y1="80" y2="80" x1="1776" />
            <wire x2="2816" y1="80" y2="80" x1="2304" />
            <wire x2="2960" y1="80" y2="80" x1="2816" />
        </branch>
        <branch name="a(15:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="112" y="320" type="branch" />
            <wire x2="112" y1="240" y2="320" x1="112" />
            <wire x2="112" y1="320" y2="416" x1="112" />
            <wire x2="416" y1="416" y2="416" x1="112" />
            <wire x2="112" y1="416" y2="800" x1="112" />
            <wire x2="320" y1="800" y2="800" x1="112" />
            <wire x2="112" y1="800" y2="880" x1="112" />
            <wire x2="416" y1="880" y2="880" x1="112" />
            <wire x2="112" y1="880" y2="1104" x1="112" />
            <wire x2="416" y1="1104" y2="1104" x1="112" />
            <wire x2="112" y1="1104" y2="1344" x1="112" />
            <wire x2="272" y1="1344" y2="1344" x1="112" />
            <wire x2="112" y1="1344" y2="1520" x1="112" />
            <wire x2="112" y1="1520" y2="2592" x1="112" />
            <wire x2="400" y1="1520" y2="1520" x1="112" />
        </branch>
        <branch name="b(15:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="224" y="320" type="branch" />
            <wire x2="224" y1="240" y2="320" x1="224" />
            <wire x2="224" y1="320" y2="544" x1="224" />
            <wire x2="416" y1="544" y2="544" x1="224" />
            <wire x2="224" y1="544" y2="944" x1="224" />
            <wire x2="416" y1="944" y2="944" x1="224" />
            <wire x2="224" y1="944" y2="1456" x1="224" />
            <wire x2="224" y1="1456" y2="2592" x1="224" />
            <wire x2="400" y1="1456" y2="1456" x1="224" />
        </branch>
        <iomarker fontsize="28" x="112" y="240" name="a(15:0)" orien="R270" />
        <iomarker fontsize="28" x="224" y="240" name="b(15:0)" orien="R270" />
        <bustap x2="2304" y1="80" y2="176" x1="2304" />
        <bustap x2="2816" y1="80" y2="176" x1="2816" />
        <bustap x2="1776" y1="80" y2="176" x1="1776" />
        <bustap x2="1088" y1="80" y2="176" x1="1088" />
        <iomarker fontsize="28" x="608" y="80" name="op(3:0)" orien="R180" />
        <instance x="416" y="736" name="XLXI_155" orien="R0" />
        <branch name="XLXN_220(15:0)">
            <wire x2="1632" y1="480" y2="480" x1="864" />
            <wire x2="1632" y1="480" y2="1200" x1="1632" />
            <wire x2="2384" y1="1200" y2="1200" x1="1632" />
        </branch>
        <branch name="XLXN_5(15:0)">
            <wire x2="1584" y1="1056" y2="1056" x1="1568" />
            <wire x2="1888" y1="992" y2="992" x1="1584" />
            <wire x2="1584" y1="992" y2="1056" x1="1584" />
        </branch>
        <branch name="XLXN_4(15:0)">
            <wire x2="1584" y1="800" y2="800" x1="1568" />
            <wire x2="1584" y1="800" y2="928" x1="1584" />
            <wire x2="1888" y1="928" y2="928" x1="1584" />
        </branch>
        <branch name="XLXN_10(15:0)">
            <wire x2="2288" y1="928" y2="928" x1="2272" />
            <wire x2="2288" y1="928" y2="1264" x1="2288" />
            <wire x2="2384" y1="1264" y2="1264" x1="2288" />
        </branch>
        <branch name="op(3)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2816" y="592" type="branch" />
            <wire x2="2816" y1="176" y2="592" x1="2816" />
            <wire x2="2816" y1="592" y2="1520" x1="2816" />
            <wire x2="2880" y1="1520" y2="1520" x1="2816" />
        </branch>
        <branch name="XLXN_14(15:0)">
            <wire x2="2784" y1="1200" y2="1200" x1="2768" />
            <wire x2="2784" y1="1200" y2="1392" x1="2784" />
            <wire x2="2880" y1="1392" y2="1392" x1="2784" />
        </branch>
        <branch name="s(15:0)">
            <wire x2="3392" y1="1392" y2="1392" x1="3264" />
        </branch>
        <branch name="op(2)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2304" y="728" type="branch" />
            <wire x2="2304" y1="176" y2="728" x1="2304" />
            <wire x2="2304" y1="728" y2="736" x1="2304" />
            <wire x2="2304" y1="736" y2="1328" x1="2304" />
            <wire x2="2384" y1="1328" y2="1328" x1="2304" />
            <wire x2="2304" y1="736" y2="1872" x1="2304" />
            <wire x2="2384" y1="1872" y2="1872" x1="2304" />
        </branch>
        <branch name="op(1)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1776" y="888" type="branch" />
            <wire x2="1776" y1="192" y2="192" x1="416" />
            <wire x2="1776" y1="192" y2="888" x1="1776" />
            <wire x2="1776" y1="888" y2="1056" x1="1776" />
            <wire x2="1776" y1="1056" y2="1600" x1="1776" />
            <wire x2="1776" y1="1600" y2="2160" x1="1776" />
            <wire x2="1936" y1="2160" y2="2160" x1="1776" />
            <wire x2="1856" y1="1600" y2="1600" x1="1776" />
            <wire x2="1888" y1="1056" y2="1056" x1="1776" />
            <wire x2="416" y1="192" y2="288" x1="416" />
            <wire x2="1776" y1="176" y2="192" x1="1776" />
        </branch>
        <branch name="XLXN_9(15:0)">
            <wire x2="1584" y1="2304" y2="2304" x1="1568" />
            <wire x2="1936" y1="2096" y2="2096" x1="1584" />
            <wire x2="1584" y1="2096" y2="2304" x1="1584" />
        </branch>
        <branch name="XLXN_8(15:0)">
            <wire x2="1584" y1="2000" y2="2000" x1="1568" />
            <wire x2="1584" y1="2000" y2="2032" x1="1584" />
            <wire x2="1936" y1="2032" y2="2032" x1="1584" />
        </branch>
        <branch name="XLXN_12(15:0)">
            <wire x2="2352" y1="2032" y2="2032" x1="2320" />
            <wire x2="2352" y1="1808" y2="2032" x1="2352" />
            <wire x2="2384" y1="1808" y2="1808" x1="2352" />
        </branch>
        <branch name="XLXN_11(15:0)">
            <wire x2="2368" y1="1472" y2="1472" x1="2240" />
            <wire x2="2368" y1="1472" y2="1744" x1="2368" />
            <wire x2="2384" y1="1744" y2="1744" x1="2368" />
        </branch>
        <branch name="XLXN_13(15:0)">
            <wire x2="2784" y1="1744" y2="1744" x1="2768" />
            <wire x2="2880" y1="1456" y2="1456" x1="2784" />
            <wire x2="2784" y1="1456" y2="1744" x1="2784" />
        </branch>
        <branch name="XLXN_6(15:0)">
            <wire x2="1584" y1="1360" y2="1360" x1="1568" />
            <wire x2="1584" y1="1360" y2="1472" x1="1584" />
            <wire x2="1856" y1="1472" y2="1472" x1="1584" />
        </branch>
        <branch name="XLXN_7(15:0)">
            <wire x2="1584" y1="1696" y2="1696" x1="1568" />
            <wire x2="1856" y1="1536" y2="1536" x1="1584" />
            <wire x2="1584" y1="1536" y2="1696" x1="1584" />
        </branch>
        <instance x="1184" y="2464" name="XLXI_6" orien="R0">
        </instance>
        <instance x="1184" y="2160" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1184" y="1856" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1184" y="1520" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1184" y="1216" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1184" y="960" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1888" y="1088" name="XLXI_7" orien="R0">
        </instance>
        <instance x="1936" y="2192" name="XLXI_9" orien="R0">
        </instance>
        <instance x="2384" y="1360" name="XLXI_10" orien="R0">
        </instance>
        <instance x="2384" y="1904" name="XLXI_11" orien="R0">
        </instance>
        <instance x="2880" y="1552" name="XLXI_12" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3392" y="1392" name="s(15:0)" orien="R0" />
        <branch name="op(0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1056" y="1024" type="branch" />
            <wire x2="416" y1="672" y2="704" x1="416" />
            <wire x2="1056" y1="704" y2="704" x1="416" />
            <wire x2="1056" y1="704" y2="928" x1="1056" />
            <wire x2="1056" y1="928" y2="1024" x1="1056" />
            <wire x2="1056" y1="1024" y2="1184" x1="1056" />
            <wire x2="1056" y1="1184" y2="1488" x1="1056" />
            <wire x2="1056" y1="1488" y2="1824" x1="1056" />
            <wire x2="1056" y1="1824" y2="2128" x1="1056" />
            <wire x2="1056" y1="2128" y2="2432" x1="1056" />
            <wire x2="1184" y1="2432" y2="2432" x1="1056" />
            <wire x2="1184" y1="2128" y2="2128" x1="1056" />
            <wire x2="1184" y1="1824" y2="1824" x1="1056" />
            <wire x2="1184" y1="1488" y2="1488" x1="1056" />
            <wire x2="1184" y1="1184" y2="1184" x1="1056" />
            <wire x2="1184" y1="928" y2="928" x1="1056" />
            <wire x2="1088" y1="176" y2="176" x1="1056" />
            <wire x2="1056" y1="176" y2="704" x1="1056" />
        </branch>
        <instance x="320" y="832" name="XLXI_199" orien="R0" />
        <branch name="XLXN_308(15:0)">
            <wire x2="1184" y1="800" y2="800" x1="544" />
        </branch>
        <instance x="416" y="976" name="XLXI_201" orien="R0">
        </instance>
        <branch name="XLXN_309(15:0)">
            <wire x2="992" y1="880" y2="880" x1="800" />
            <wire x2="992" y1="880" y2="1056" x1="992" />
            <wire x2="1184" y1="1056" y2="1056" x1="992" />
        </branch>
        <branch name="XLXN_310(15:0)">
            <wire x2="1008" y1="944" y2="944" x1="800" />
            <wire x2="1008" y1="864" y2="944" x1="1008" />
            <wire x2="1184" y1="864" y2="864" x1="1008" />
        </branch>
        <instance x="416" y="1136" name="XLXI_202" orien="R0">
        </instance>
        <branch name="XLXN_311(15:0)">
            <wire x2="992" y1="1104" y2="1104" x1="800" />
            <wire x2="992" y1="1104" y2="1120" x1="992" />
            <wire x2="1184" y1="1120" y2="1120" x1="992" />
        </branch>
        <instance x="592" y="1376" name="XLXI_203" orien="R0">
        </instance>
        <instance x="272" y="1376" name="XLXI_204" orien="R0" />
        <branch name="XLXN_312(15:0)">
            <wire x2="1072" y1="1344" y2="1344" x1="976" />
            <wire x2="1072" y1="1344" y2="1360" x1="1072" />
            <wire x2="1184" y1="1360" y2="1360" x1="1072" />
        </branch>
        <branch name="XLXN_313(15:0)">
            <wire x2="592" y1="1344" y2="1344" x1="496" />
        </branch>
        <instance x="400" y="1552" name="XLXI_205" orien="R0">
        </instance>
        <branch name="XLXN_314(15:0)">
            <wire x2="976" y1="1456" y2="1456" x1="784" />
            <wire x2="976" y1="1424" y2="1456" x1="976" />
            <wire x2="1184" y1="1424" y2="1424" x1="976" />
        </branch>
        <instance x="1856" y="1632" name="XLXI_8" orien="R0">
        </instance>
    </sheet>
</drawing>