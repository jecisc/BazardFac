<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="a(15:0)" />
        <signal name="b(15:0)" />
        <signal name="s(15:0)" />
        <signal name="a(7)" />
        <signal name="a(6)" />
        <signal name="a(5)" />
        <signal name="a(3)" />
        <signal name="a(1)" />
        <signal name="a(0)" />
        <signal name="a(4)" />
        <signal name="a(2)" />
        <signal name="b(0)" />
        <signal name="b(7)" />
        <signal name="b(6)" />
        <signal name="b(5)" />
        <signal name="b(4)" />
        <signal name="b(3)" />
        <signal name="b(2)" />
        <signal name="b(1)" />
        <signal name="s(15)" />
        <signal name="s(14)" />
        <signal name="s(13)" />
        <signal name="s(12)" />
        <signal name="s(11)" />
        <signal name="s(10)" />
        <signal name="s(9)" />
        <signal name="s(8)" />
        <signal name="s(7)" />
        <signal name="s(6)" />
        <signal name="s(5)" />
        <signal name="s(4)" />
        <signal name="s(3)" />
        <signal name="s(2)" />
        <signal name="s(1)" />
        <signal name="s(0)" />
        <port polarity="Input" name="a(15:0)" />
        <port polarity="Input" name="b(15:0)" />
        <port polarity="Output" name="s(15:0)" />
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="buf" name="XLXI_1">
            <blockpin signalname="a(0)" name="I" />
            <blockpin signalname="s(0)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_2">
            <blockpin signalname="a(1)" name="I" />
            <blockpin signalname="s(1)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_3">
            <blockpin signalname="a(2)" name="I" />
            <blockpin signalname="s(2)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_4">
            <blockpin signalname="a(3)" name="I" />
            <blockpin signalname="s(3)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_5">
            <blockpin signalname="a(4)" name="I" />
            <blockpin signalname="s(4)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_6">
            <blockpin signalname="a(5)" name="I" />
            <blockpin signalname="s(5)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_7">
            <blockpin signalname="a(6)" name="I" />
            <blockpin signalname="s(6)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_8">
            <blockpin signalname="a(7)" name="I" />
            <blockpin signalname="s(7)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_9">
            <blockpin signalname="b(0)" name="I" />
            <blockpin signalname="s(8)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_10">
            <blockpin signalname="b(1)" name="I" />
            <blockpin signalname="s(9)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_11">
            <blockpin signalname="b(2)" name="I" />
            <blockpin signalname="s(10)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_12">
            <blockpin signalname="b(3)" name="I" />
            <blockpin signalname="s(11)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_13">
            <blockpin signalname="b(4)" name="I" />
            <blockpin signalname="s(12)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_14">
            <blockpin signalname="b(5)" name="I" />
            <blockpin signalname="s(13)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_15">
            <blockpin signalname="b(6)" name="I" />
            <blockpin signalname="s(14)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_16">
            <blockpin signalname="b(7)" name="I" />
            <blockpin signalname="s(15)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="a(15:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="416" y="928" type="branch" />
            <wire x2="416" y1="160" y2="352" x1="416" />
            <wire x2="416" y1="352" y2="464" x1="416" />
            <wire x2="416" y1="464" y2="576" x1="416" />
            <wire x2="416" y1="576" y2="688" x1="416" />
            <wire x2="416" y1="688" y2="800" x1="416" />
            <wire x2="416" y1="800" y2="896" x1="416" />
            <wire x2="416" y1="896" y2="928" x1="416" />
            <wire x2="416" y1="928" y2="1008" x1="416" />
            <wire x2="416" y1="1008" y2="1120" x1="416" />
            <wire x2="416" y1="1120" y2="2512" x1="416" />
        </branch>
        <branch name="b(15:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="736" y="1040" type="branch" />
            <wire x2="736" y1="192" y2="1040" x1="736" />
            <wire x2="736" y1="1040" y2="1216" x1="736" />
            <wire x2="736" y1="1216" y2="1328" x1="736" />
            <wire x2="736" y1="1328" y2="1472" x1="736" />
            <wire x2="736" y1="1472" y2="1584" x1="736" />
            <wire x2="736" y1="1584" y2="1664" x1="736" />
            <wire x2="736" y1="1664" y2="1792" x1="736" />
            <wire x2="736" y1="1792" y2="1888" x1="736" />
            <wire x2="736" y1="1888" y2="1984" x1="736" />
            <wire x2="736" y1="1984" y2="2448" x1="736" />
        </branch>
        <branch name="s(15:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1744" y="1392" type="branch" />
            <wire x2="1744" y1="272" y2="352" x1="1744" />
            <wire x2="1744" y1="352" y2="464" x1="1744" />
            <wire x2="1744" y1="464" y2="576" x1="1744" />
            <wire x2="1744" y1="576" y2="688" x1="1744" />
            <wire x2="1744" y1="688" y2="800" x1="1744" />
            <wire x2="1744" y1="800" y2="912" x1="1744" />
            <wire x2="1744" y1="912" y2="1008" x1="1744" />
            <wire x2="1744" y1="1008" y2="1120" x1="1744" />
            <wire x2="1744" y1="1120" y2="1216" x1="1744" />
            <wire x2="1744" y1="1216" y2="1328" x1="1744" />
            <wire x2="1744" y1="1328" y2="1392" x1="1744" />
            <wire x2="1744" y1="1392" y2="1472" x1="1744" />
            <wire x2="1744" y1="1472" y2="1584" x1="1744" />
            <wire x2="1744" y1="1584" y2="1664" x1="1744" />
            <wire x2="1744" y1="1664" y2="1792" x1="1744" />
            <wire x2="1744" y1="1792" y2="1888" x1="1744" />
            <wire x2="1744" y1="1888" y2="1984" x1="1744" />
            <wire x2="1744" y1="1984" y2="2400" x1="1744" />
        </branch>
        <instance x="1104" y="384" name="XLXI_1" orien="R0" />
        <instance x="1104" y="496" name="XLXI_2" orien="R0" />
        <instance x="1104" y="608" name="XLXI_3" orien="R0" />
        <instance x="1104" y="720" name="XLXI_4" orien="R0" />
        <instance x="1104" y="832" name="XLXI_5" orien="R0" />
        <instance x="1104" y="928" name="XLXI_6" orien="R0" />
        <instance x="1104" y="1040" name="XLXI_7" orien="R0" />
        <instance x="1104" y="1152" name="XLXI_8" orien="R0" />
        <instance x="1104" y="1248" name="XLXI_9" orien="R0" />
        <instance x="1104" y="1360" name="XLXI_10" orien="R0" />
        <instance x="1104" y="1504" name="XLXI_11" orien="R0" />
        <instance x="1104" y="1616" name="XLXI_12" orien="R0" />
        <instance x="1104" y="1696" name="XLXI_13" orien="R0" />
        <instance x="1104" y="1824" name="XLXI_14" orien="R0" />
        <instance x="1104" y="1920" name="XLXI_15" orien="R0" />
        <instance x="1104" y="2016" name="XLXI_16" orien="R0" />
        <branch name="a(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="808" y="1120" type="branch" />
            <wire x2="808" y1="1120" y2="1120" x1="512" />
            <wire x2="1104" y1="1120" y2="1120" x1="808" />
        </branch>
        <branch name="a(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="808" y="1008" type="branch" />
            <wire x2="808" y1="1008" y2="1008" x1="512" />
            <wire x2="1104" y1="1008" y2="1008" x1="808" />
        </branch>
        <branch name="a(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="808" y="896" type="branch" />
            <wire x2="808" y1="896" y2="896" x1="512" />
            <wire x2="1104" y1="896" y2="896" x1="808" />
        </branch>
        <branch name="a(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="808" y="800" type="branch" />
            <wire x2="808" y1="800" y2="800" x1="512" />
            <wire x2="1104" y1="800" y2="800" x1="808" />
        </branch>
        <branch name="a(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="808" y="688" type="branch" />
            <wire x2="808" y1="688" y2="688" x1="512" />
            <wire x2="1104" y1="688" y2="688" x1="808" />
        </branch>
        <branch name="a(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="808" y="464" type="branch" />
            <wire x2="808" y1="464" y2="464" x1="512" />
            <wire x2="1104" y1="464" y2="464" x1="808" />
        </branch>
        <branch name="a(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="808" y="352" type="branch" />
            <wire x2="808" y1="352" y2="352" x1="512" />
            <wire x2="1104" y1="352" y2="352" x1="808" />
        </branch>
        <bustap x2="512" y1="1120" y2="1120" x1="416" />
        <bustap x2="512" y1="1008" y2="1008" x1="416" />
        <bustap x2="512" y1="896" y2="896" x1="416" />
        <bustap x2="512" y1="800" y2="800" x1="416" />
        <bustap x2="512" y1="688" y2="688" x1="416" />
        <bustap x2="512" y1="464" y2="464" x1="416" />
        <bustap x2="512" y1="352" y2="352" x1="416" />
        <bustap x2="512" y1="576" y2="576" x1="416" />
        <branch name="a(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="808" y="576" type="branch" />
            <wire x2="808" y1="576" y2="576" x1="512" />
            <wire x2="1104" y1="576" y2="576" x1="808" />
        </branch>
        <bustap x2="832" y1="1216" y2="1216" x1="736" />
        <branch name="b(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="968" y="1216" type="branch" />
            <wire x2="968" y1="1216" y2="1216" x1="832" />
            <wire x2="1104" y1="1216" y2="1216" x1="968" />
        </branch>
        <bustap x2="832" y1="1984" y2="1984" x1="736" />
        <branch name="b(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="968" y="1984" type="branch" />
            <wire x2="968" y1="1984" y2="1984" x1="832" />
            <wire x2="1104" y1="1984" y2="1984" x1="968" />
        </branch>
        <bustap x2="832" y1="1888" y2="1888" x1="736" />
        <branch name="b(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="968" y="1888" type="branch" />
            <wire x2="968" y1="1888" y2="1888" x1="832" />
            <wire x2="1104" y1="1888" y2="1888" x1="968" />
        </branch>
        <bustap x2="832" y1="1792" y2="1792" x1="736" />
        <branch name="b(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="968" y="1792" type="branch" />
            <wire x2="968" y1="1792" y2="1792" x1="832" />
            <wire x2="1104" y1="1792" y2="1792" x1="968" />
        </branch>
        <bustap x2="832" y1="1664" y2="1664" x1="736" />
        <branch name="b(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="968" y="1664" type="branch" />
            <wire x2="968" y1="1664" y2="1664" x1="832" />
            <wire x2="1104" y1="1664" y2="1664" x1="968" />
        </branch>
        <bustap x2="832" y1="1584" y2="1584" x1="736" />
        <branch name="b(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="968" y="1584" type="branch" />
            <wire x2="968" y1="1584" y2="1584" x1="832" />
            <wire x2="1104" y1="1584" y2="1584" x1="968" />
        </branch>
        <bustap x2="832" y1="1472" y2="1472" x1="736" />
        <branch name="b(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="968" y="1472" type="branch" />
            <wire x2="968" y1="1472" y2="1472" x1="832" />
            <wire x2="1104" y1="1472" y2="1472" x1="968" />
        </branch>
        <bustap x2="832" y1="1328" y2="1328" x1="736" />
        <branch name="b(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="968" y="1328" type="branch" />
            <wire x2="968" y1="1328" y2="1328" x1="832" />
            <wire x2="1104" y1="1328" y2="1328" x1="968" />
        </branch>
        <bustap x2="1648" y1="1984" y2="1984" x1="1744" />
        <branch name="s(15)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1488" y="1984" type="branch" />
            <wire x2="1488" y1="1984" y2="1984" x1="1328" />
            <wire x2="1648" y1="1984" y2="1984" x1="1488" />
        </branch>
        <bustap x2="1648" y1="1888" y2="1888" x1="1744" />
        <branch name="s(14)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1488" y="1888" type="branch" />
            <wire x2="1488" y1="1888" y2="1888" x1="1328" />
            <wire x2="1648" y1="1888" y2="1888" x1="1488" />
        </branch>
        <bustap x2="1648" y1="1792" y2="1792" x1="1744" />
        <branch name="s(13)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1488" y="1792" type="branch" />
            <wire x2="1488" y1="1792" y2="1792" x1="1328" />
            <wire x2="1648" y1="1792" y2="1792" x1="1488" />
        </branch>
        <bustap x2="1648" y1="1664" y2="1664" x1="1744" />
        <branch name="s(12)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1488" y="1664" type="branch" />
            <wire x2="1488" y1="1664" y2="1664" x1="1328" />
            <wire x2="1648" y1="1664" y2="1664" x1="1488" />
        </branch>
        <bustap x2="1648" y1="1584" y2="1584" x1="1744" />
        <branch name="s(11)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1488" y="1584" type="branch" />
            <wire x2="1488" y1="1584" y2="1584" x1="1328" />
            <wire x2="1648" y1="1584" y2="1584" x1="1488" />
        </branch>
        <bustap x2="1648" y1="1472" y2="1472" x1="1744" />
        <branch name="s(10)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1488" y="1472" type="branch" />
            <wire x2="1488" y1="1472" y2="1472" x1="1328" />
            <wire x2="1648" y1="1472" y2="1472" x1="1488" />
        </branch>
        <bustap x2="1648" y1="1328" y2="1328" x1="1744" />
        <branch name="s(9)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1488" y="1328" type="branch" />
            <wire x2="1488" y1="1328" y2="1328" x1="1328" />
            <wire x2="1648" y1="1328" y2="1328" x1="1488" />
        </branch>
        <bustap x2="1648" y1="1216" y2="1216" x1="1744" />
        <branch name="s(8)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1488" y="1216" type="branch" />
            <wire x2="1488" y1="1216" y2="1216" x1="1328" />
            <wire x2="1648" y1="1216" y2="1216" x1="1488" />
        </branch>
        <bustap x2="1648" y1="1120" y2="1120" x1="1744" />
        <branch name="s(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1488" y="1120" type="branch" />
            <wire x2="1488" y1="1120" y2="1120" x1="1328" />
            <wire x2="1648" y1="1120" y2="1120" x1="1488" />
        </branch>
        <bustap x2="1648" y1="1008" y2="1008" x1="1744" />
        <branch name="s(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1488" y="1008" type="branch" />
            <wire x2="1488" y1="1008" y2="1008" x1="1328" />
            <wire x2="1648" y1="1008" y2="1008" x1="1488" />
        </branch>
        <bustap x2="1648" y1="912" y2="912" x1="1744" />
        <branch name="s(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1488" y="896" type="branch" />
            <wire x2="1488" y1="896" y2="896" x1="1328" />
            <wire x2="1648" y1="896" y2="896" x1="1488" />
            <wire x2="1648" y1="896" y2="912" x1="1648" />
        </branch>
        <bustap x2="1648" y1="800" y2="800" x1="1744" />
        <branch name="s(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1488" y="800" type="branch" />
            <wire x2="1488" y1="800" y2="800" x1="1328" />
            <wire x2="1648" y1="800" y2="800" x1="1488" />
        </branch>
        <bustap x2="1648" y1="688" y2="688" x1="1744" />
        <branch name="s(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1488" y="688" type="branch" />
            <wire x2="1488" y1="688" y2="688" x1="1328" />
            <wire x2="1648" y1="688" y2="688" x1="1488" />
        </branch>
        <bustap x2="1648" y1="576" y2="576" x1="1744" />
        <branch name="s(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1488" y="576" type="branch" />
            <wire x2="1488" y1="576" y2="576" x1="1328" />
            <wire x2="1648" y1="576" y2="576" x1="1488" />
        </branch>
        <bustap x2="1648" y1="464" y2="464" x1="1744" />
        <branch name="s(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1488" y="464" type="branch" />
            <wire x2="1488" y1="464" y2="464" x1="1328" />
            <wire x2="1648" y1="464" y2="464" x1="1488" />
        </branch>
        <bustap x2="1648" y1="352" y2="352" x1="1744" />
        <branch name="s(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1488" y="352" type="branch" />
            <wire x2="1488" y1="352" y2="352" x1="1328" />
            <wire x2="1648" y1="352" y2="352" x1="1488" />
        </branch>
        <iomarker fontsize="28" x="1744" y="2400" name="s(15:0)" orien="R90" />
        <iomarker fontsize="28" x="416" y="160" name="a(15:0)" orien="R270" />
        <iomarker fontsize="28" x="736" y="192" name="b(15:0)" orien="R270" />
    </sheet>
</drawing>