<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="O(3:0)" />
        <signal name="S(1:0)" />
        <signal name="I0(3:0)" />
        <signal name="I1(3:0)" />
        <signal name="I2(3:0)" />
        <signal name="I3(3:0)" />
        <signal name="I3(3)" />
        <signal name="I3(2)" />
        <signal name="I3(1)" />
        <signal name="I3(0)" />
        <signal name="I2(3)" />
        <signal name="I2(2)" />
        <signal name="I2(1)" />
        <signal name="I2(0)" />
        <signal name="I1(3)" />
        <signal name="I1(2)" />
        <signal name="I1(1)" />
        <signal name="I1(0)" />
        <signal name="I0(3)" />
        <signal name="XLXN_40" />
        <signal name="s(0)" />
        <signal name="s(1)" />
        <signal name="O(3)" />
        <signal name="O(2)" />
        <signal name="O(1)" />
        <signal name="O(0)" />
        <port polarity="Output" name="O(3:0)" />
        <port polarity="Input" name="S(1:0)" />
        <port polarity="Input" name="I0(3:0)" />
        <port polarity="Input" name="I1(3:0)" />
        <port polarity="Input" name="I2(3:0)" />
        <port polarity="Input" name="I3(3:0)" />
        <blockdef name="m4_1e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-416" y2="-416" x1="0" />
            <line x2="96" y1="-352" y2="-352" x1="0" />
            <line x2="96" y1="-288" y2="-288" x1="0" />
            <line x2="96" y1="-224" y2="-224" x1="0" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-320" y2="-320" x1="320" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="176" />
            <line x2="176" y1="-208" y2="-96" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="224" />
            <line x2="224" y1="-216" y2="-32" x1="224" />
            <line x2="96" y1="-224" y2="-192" x1="256" />
            <line x2="256" y1="-416" y2="-224" x1="256" />
            <line x2="256" y1="-448" y2="-416" x1="96" />
            <line x2="96" y1="-192" y2="-448" x1="96" />
            <line x2="96" y1="-160" y2="-160" x1="128" />
            <line x2="128" y1="-200" y2="-160" x1="128" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="m4_1e" name="XLXI_1">
            <blockpin signalname="I0(3)" name="D0" />
            <blockpin signalname="I1(3)" name="D1" />
            <blockpin signalname="I2(3)" name="D2" />
            <blockpin signalname="I3(3)" name="D3" />
            <blockpin signalname="XLXN_40" name="E" />
            <blockpin signalname="s(0)" name="S0" />
            <blockpin signalname="s(1)" name="S1" />
            <blockpin signalname="O(3)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_2">
            <blockpin signalname="I0(3)" name="D0" />
            <blockpin signalname="I1(2)" name="D1" />
            <blockpin signalname="I2(2)" name="D2" />
            <blockpin signalname="I3(2)" name="D3" />
            <blockpin signalname="XLXN_40" name="E" />
            <blockpin signalname="s(0)" name="S0" />
            <blockpin signalname="s(1)" name="S1" />
            <blockpin signalname="O(2)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_3">
            <blockpin signalname="I0(3)" name="D0" />
            <blockpin signalname="I1(1)" name="D1" />
            <blockpin signalname="I2(1)" name="D2" />
            <blockpin signalname="I3(1)" name="D3" />
            <blockpin signalname="XLXN_40" name="E" />
            <blockpin signalname="s(0)" name="S0" />
            <blockpin signalname="s(1)" name="S1" />
            <blockpin signalname="O(1)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_4">
            <blockpin signalname="I0(3)" name="D0" />
            <blockpin signalname="I1(0)" name="D1" />
            <blockpin signalname="I2(0)" name="D2" />
            <blockpin signalname="I3(0)" name="D3" />
            <blockpin signalname="XLXN_40" name="E" />
            <blockpin signalname="s(0)" name="S0" />
            <blockpin signalname="s(1)" name="S1" />
            <blockpin signalname="O(0)" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_5">
            <blockpin signalname="XLXN_40" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="816" y="704" name="XLXI_1" orien="R0" />
        <instance x="816" y="1232" name="XLXI_2" orien="R0" />
        <instance x="816" y="1760" name="XLXI_3" orien="R0" />
        <instance x="832" y="2272" name="XLXI_4" orien="R0" />
        <branch name="O(3:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1472" y="1888" type="branch" />
            <wire x2="1472" y1="176" y2="384" x1="1472" />
            <wire x2="1472" y1="384" y2="912" x1="1472" />
            <wire x2="1472" y1="912" y2="1440" x1="1472" />
            <wire x2="1472" y1="1440" y2="1888" x1="1472" />
            <wire x2="1472" y1="1888" y2="1952" x1="1472" />
            <wire x2="1472" y1="1952" y2="2352" x1="1472" />
        </branch>
        <branch name="S(1:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="624" y="64" type="branch" />
            <wire x2="624" y1="64" y2="64" x1="544" />
            <wire x2="672" y1="64" y2="64" x1="624" />
            <wire x2="752" y1="64" y2="64" x1="672" />
            <wire x2="1424" y1="64" y2="64" x1="752" />
        </branch>
        <branch name="I0(3:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="16" y="240" type="branch" />
            <wire x2="16" y1="160" y2="240" x1="16" />
            <wire x2="16" y1="240" y2="256" x1="16" />
            <wire x2="16" y1="256" y2="272" x1="16" />
            <wire x2="16" y1="272" y2="288" x1="16" />
            <wire x2="16" y1="288" y2="816" x1="16" />
            <wire x2="16" y1="816" y2="1344" x1="16" />
            <wire x2="16" y1="1344" y2="1856" x1="16" />
            <wire x2="16" y1="1856" y2="2272" x1="16" />
        </branch>
        <branch name="I1(3:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="160" y="224" type="branch" />
            <wire x2="160" y1="160" y2="224" x1="160" />
            <wire x2="160" y1="224" y2="352" x1="160" />
            <wire x2="160" y1="352" y2="880" x1="160" />
            <wire x2="160" y1="880" y2="1408" x1="160" />
            <wire x2="160" y1="1408" y2="1920" x1="160" />
            <wire x2="160" y1="1920" y2="2288" x1="160" />
        </branch>
        <branch name="I2(3:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="336" y="240" type="branch" />
            <wire x2="336" y1="160" y2="240" x1="336" />
            <wire x2="336" y1="240" y2="416" x1="336" />
            <wire x2="336" y1="416" y2="944" x1="336" />
            <wire x2="336" y1="944" y2="1472" x1="336" />
            <wire x2="336" y1="1472" y2="1984" x1="336" />
            <wire x2="336" y1="1984" y2="2288" x1="336" />
        </branch>
        <branch name="I3(3:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="512" y="256" type="branch" />
            <wire x2="512" y1="160" y2="256" x1="512" />
            <wire x2="512" y1="256" y2="480" x1="512" />
            <wire x2="512" y1="480" y2="1008" x1="512" />
            <wire x2="512" y1="1008" y2="1536" x1="512" />
            <wire x2="512" y1="1536" y2="2048" x1="512" />
            <wire x2="512" y1="2048" y2="2288" x1="512" />
        </branch>
        <bustap x2="608" y1="480" y2="480" x1="512" />
        <branch name="I3(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="712" y="480" type="branch" />
            <wire x2="712" y1="480" y2="480" x1="608" />
            <wire x2="816" y1="480" y2="480" x1="712" />
        </branch>
        <bustap x2="608" y1="1008" y2="1008" x1="512" />
        <branch name="I3(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="712" y="1008" type="branch" />
            <wire x2="712" y1="1008" y2="1008" x1="608" />
            <wire x2="816" y1="1008" y2="1008" x1="712" />
        </branch>
        <bustap x2="608" y1="1536" y2="1536" x1="512" />
        <branch name="I3(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="712" y="1536" type="branch" />
            <wire x2="712" y1="1536" y2="1536" x1="608" />
            <wire x2="816" y1="1536" y2="1536" x1="712" />
        </branch>
        <bustap x2="608" y1="2048" y2="2048" x1="512" />
        <branch name="I3(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="720" y="2048" type="branch" />
            <wire x2="720" y1="2048" y2="2048" x1="608" />
            <wire x2="832" y1="2048" y2="2048" x1="720" />
        </branch>
        <bustap x2="432" y1="416" y2="416" x1="336" />
        <branch name="I2(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="624" y="416" type="branch" />
            <wire x2="624" y1="416" y2="416" x1="432" />
            <wire x2="816" y1="416" y2="416" x1="624" />
        </branch>
        <bustap x2="432" y1="944" y2="944" x1="336" />
        <branch name="I2(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="624" y="944" type="branch" />
            <wire x2="624" y1="944" y2="944" x1="432" />
            <wire x2="816" y1="944" y2="944" x1="624" />
        </branch>
        <bustap x2="432" y1="1472" y2="1472" x1="336" />
        <branch name="I2(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="624" y="1472" type="branch" />
            <wire x2="624" y1="1472" y2="1472" x1="432" />
            <wire x2="816" y1="1472" y2="1472" x1="624" />
        </branch>
        <bustap x2="432" y1="1984" y2="1984" x1="336" />
        <branch name="I2(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="632" y="1984" type="branch" />
            <wire x2="632" y1="1984" y2="1984" x1="432" />
            <wire x2="832" y1="1984" y2="1984" x1="632" />
        </branch>
        <bustap x2="256" y1="352" y2="352" x1="160" />
        <branch name="I1(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="536" y="352" type="branch" />
            <wire x2="536" y1="352" y2="352" x1="256" />
            <wire x2="816" y1="352" y2="352" x1="536" />
        </branch>
        <bustap x2="256" y1="880" y2="880" x1="160" />
        <branch name="I1(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="536" y="880" type="branch" />
            <wire x2="536" y1="880" y2="880" x1="256" />
            <wire x2="816" y1="880" y2="880" x1="536" />
        </branch>
        <bustap x2="256" y1="1408" y2="1408" x1="160" />
        <branch name="I1(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="536" y="1408" type="branch" />
            <wire x2="536" y1="1408" y2="1408" x1="256" />
            <wire x2="816" y1="1408" y2="1408" x1="536" />
        </branch>
        <bustap x2="256" y1="1920" y2="1920" x1="160" />
        <branch name="I1(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="544" y="1920" type="branch" />
            <wire x2="544" y1="1920" y2="1920" x1="256" />
            <wire x2="832" y1="1920" y2="1920" x1="544" />
        </branch>
        <bustap x2="112" y1="288" y2="288" x1="16" />
        <branch name="I0(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="464" y="288" type="branch" />
            <wire x2="464" y1="288" y2="288" x1="112" />
            <wire x2="816" y1="288" y2="288" x1="464" />
        </branch>
        <bustap x2="112" y1="816" y2="816" x1="16" />
        <branch name="I0(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="464" y="816" type="branch" />
            <wire x2="464" y1="816" y2="816" x1="112" />
            <wire x2="816" y1="816" y2="816" x1="464" />
        </branch>
        <bustap x2="112" y1="1344" y2="1344" x1="16" />
        <branch name="I0(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="464" y="1344" type="branch" />
            <wire x2="464" y1="1344" y2="1344" x1="112" />
            <wire x2="816" y1="1344" y2="1344" x1="464" />
        </branch>
        <bustap x2="112" y1="1856" y2="1856" x1="16" />
        <branch name="I0(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="472" y="1856" type="branch" />
            <wire x2="472" y1="1856" y2="1856" x1="112" />
            <wire x2="832" y1="1856" y2="1856" x1="472" />
        </branch>
        <instance x="464" y="2464" name="XLXI_5" orien="R270" />
        <branch name="XLXN_40">
            <wire x2="592" y1="2400" y2="2400" x1="464" />
            <wire x2="832" y1="2400" y2="2400" x1="592" />
            <wire x2="816" y1="672" y2="672" x1="496" />
            <wire x2="496" y1="672" y2="1200" x1="496" />
            <wire x2="496" y1="1200" y2="1720" x1="496" />
            <wire x2="496" y1="1720" y2="1728" x1="496" />
            <wire x2="496" y1="1728" y2="2384" x1="496" />
            <wire x2="592" y1="2384" y2="2384" x1="496" />
            <wire x2="592" y1="2384" y2="2400" x1="592" />
            <wire x2="816" y1="1728" y2="1728" x1="496" />
            <wire x2="816" y1="1200" y2="1200" x1="496" />
            <wire x2="832" y1="2240" y2="2400" x1="832" />
        </branch>
        <bustap x2="672" y1="64" y2="160" x1="672" />
        <bustap x2="752" y1="64" y2="160" x1="752" />
        <branch name="s(0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="752" y="176" type="branch" />
            <wire x2="752" y1="160" y2="176" x1="752" />
            <wire x2="752" y1="176" y2="544" x1="752" />
            <wire x2="752" y1="544" y2="1072" x1="752" />
            <wire x2="752" y1="1072" y2="1600" x1="752" />
            <wire x2="752" y1="1600" y2="2112" x1="752" />
            <wire x2="832" y1="2112" y2="2112" x1="752" />
            <wire x2="816" y1="1600" y2="1600" x1="752" />
            <wire x2="816" y1="1072" y2="1072" x1="752" />
            <wire x2="816" y1="544" y2="544" x1="752" />
        </branch>
        <branch name="s(1)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="672" y="176" type="branch" />
            <wire x2="672" y1="160" y2="176" x1="672" />
            <wire x2="672" y1="176" y2="608" x1="672" />
            <wire x2="672" y1="608" y2="1136" x1="672" />
            <wire x2="672" y1="1136" y2="1664" x1="672" />
            <wire x2="672" y1="1664" y2="2176" x1="672" />
            <wire x2="832" y1="2176" y2="2176" x1="672" />
            <wire x2="816" y1="1664" y2="1664" x1="672" />
            <wire x2="816" y1="1136" y2="1136" x1="672" />
            <wire x2="816" y1="608" y2="608" x1="672" />
        </branch>
        <bustap x2="1376" y1="384" y2="384" x1="1472" />
        <branch name="O(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1256" y="384" type="branch" />
            <wire x2="1256" y1="384" y2="384" x1="1136" />
            <wire x2="1376" y1="384" y2="384" x1="1256" />
        </branch>
        <bustap x2="1376" y1="912" y2="912" x1="1472" />
        <branch name="O(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1256" y="912" type="branch" />
            <wire x2="1256" y1="912" y2="912" x1="1136" />
            <wire x2="1376" y1="912" y2="912" x1="1256" />
        </branch>
        <bustap x2="1376" y1="1440" y2="1440" x1="1472" />
        <branch name="O(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1256" y="1440" type="branch" />
            <wire x2="1256" y1="1440" y2="1440" x1="1136" />
            <wire x2="1376" y1="1440" y2="1440" x1="1256" />
        </branch>
        <bustap x2="1376" y1="1952" y2="1952" x1="1472" />
        <branch name="O(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1264" y="1952" type="branch" />
            <wire x2="1264" y1="1952" y2="1952" x1="1152" />
            <wire x2="1376" y1="1952" y2="1952" x1="1264" />
        </branch>
        <iomarker fontsize="28" x="1472" y="2352" name="O(3:0)" orien="R90" />
        <iomarker fontsize="28" x="544" y="64" name="S(1:0)" orien="R180" />
        <iomarker fontsize="28" x="16" y="160" name="I0(3:0)" orien="R270" />
        <iomarker fontsize="28" x="160" y="160" name="I1(3:0)" orien="R270" />
        <iomarker fontsize="28" x="336" y="160" name="I2(3:0)" orien="R270" />
        <iomarker fontsize="28" x="512" y="160" name="I3(3:0)" orien="R270" />
    </sheet>
</drawing>