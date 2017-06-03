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
        <signal name="a(11)" />
        <signal name="a(10)" />
        <signal name="a(9)" />
        <signal name="a(8)" />
        <signal name="a(7)" />
        <signal name="a(6)" />
        <signal name="a(5)" />
        <signal name="a(4)" />
        <signal name="b(7)" />
        <signal name="b(6)" />
        <signal name="b(5)" />
        <signal name="b(4)" />
        <signal name="b(3)" />
        <signal name="b(2)" />
        <signal name="b(1)" />
        <signal name="b(0)" />
        <signal name="b(15:8)" />
        <port polarity="Input" name="a(15:0)" />
        <port polarity="Output" name="b(15:0)" />
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="buf" name="XLXI_1">
            <blockpin signalname="a(4)" name="I" />
            <blockpin signalname="b(0)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_2">
            <blockpin signalname="a(5)" name="I" />
            <blockpin signalname="b(1)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_3">
            <blockpin signalname="a(6)" name="I" />
            <blockpin signalname="b(2)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_4">
            <blockpin signalname="a(7)" name="I" />
            <blockpin signalname="b(3)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_5">
            <blockpin signalname="a(8)" name="I" />
            <blockpin signalname="b(4)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_6">
            <blockpin signalname="a(9)" name="I" />
            <blockpin signalname="b(5)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_7">
            <blockpin signalname="a(10)" name="I" />
            <blockpin signalname="b(6)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_8">
            <blockpin signalname="a(11)" name="I" />
            <blockpin signalname="b(7)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_9">
            <attr value="00" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 8 Hexadecimal" />
            </attr>
            <blockpin signalname="b(15:8)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="a(15:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="432" y="352" type="branch" />
            <wire x2="432" y1="288" y2="352" x1="432" />
            <wire x2="432" y1="352" y2="976" x1="432" />
            <wire x2="432" y1="976" y2="1040" x1="432" />
            <wire x2="432" y1="1040" y2="1120" x1="432" />
            <wire x2="432" y1="1120" y2="1200" x1="432" />
            <wire x2="432" y1="1200" y2="1280" x1="432" />
            <wire x2="432" y1="1280" y2="1360" x1="432" />
            <wire x2="432" y1="1360" y2="1440" x1="432" />
            <wire x2="432" y1="1440" y2="1520" x1="432" />
            <wire x2="432" y1="1520" y2="2080" x1="432" />
        </branch>
        <iomarker fontsize="28" x="432" y="288" name="a(15:0)" orien="R270" />
        <branch name="b(15:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1456" y="368" type="branch" />
            <wire x2="1456" y1="304" y2="368" x1="1456" />
            <wire x2="1456" y1="368" y2="640" x1="1456" />
            <wire x2="1456" y1="640" y2="976" x1="1456" />
            <wire x2="1456" y1="976" y2="1040" x1="1456" />
            <wire x2="1456" y1="1040" y2="1120" x1="1456" />
            <wire x2="1456" y1="1120" y2="1200" x1="1456" />
            <wire x2="1456" y1="1200" y2="1280" x1="1456" />
            <wire x2="1456" y1="1280" y2="1360" x1="1456" />
            <wire x2="1456" y1="1360" y2="1440" x1="1456" />
            <wire x2="1456" y1="1440" y2="1520" x1="1456" />
            <wire x2="1456" y1="1520" y2="2128" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="1456" y="2128" name="b(15:0)" orien="R90" />
        <instance x="768" y="1008" name="XLXI_1" orien="R0" />
        <instance x="768" y="1072" name="XLXI_2" orien="R0" />
        <instance x="768" y="1152" name="XLXI_3" orien="R0" />
        <instance x="768" y="1232" name="XLXI_4" orien="R0" />
        <instance x="768" y="1312" name="XLXI_5" orien="R0" />
        <instance x="768" y="1392" name="XLXI_6" orien="R0" />
        <instance x="768" y="1472" name="XLXI_7" orien="R0" />
        <instance x="768" y="1552" name="XLXI_8" orien="R0" />
        <bustap x2="528" y1="1520" y2="1520" x1="432" />
        <branch name="a(11)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="648" y="1520" type="branch" />
            <wire x2="648" y1="1520" y2="1520" x1="528" />
            <wire x2="768" y1="1520" y2="1520" x1="648" />
        </branch>
        <bustap x2="528" y1="1440" y2="1440" x1="432" />
        <branch name="a(10)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="648" y="1440" type="branch" />
            <wire x2="648" y1="1440" y2="1440" x1="528" />
            <wire x2="768" y1="1440" y2="1440" x1="648" />
        </branch>
        <bustap x2="528" y1="1360" y2="1360" x1="432" />
        <branch name="a(9)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="648" y="1360" type="branch" />
            <wire x2="648" y1="1360" y2="1360" x1="528" />
            <wire x2="768" y1="1360" y2="1360" x1="648" />
        </branch>
        <bustap x2="528" y1="1280" y2="1280" x1="432" />
        <branch name="a(8)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="648" y="1280" type="branch" />
            <wire x2="648" y1="1280" y2="1280" x1="528" />
            <wire x2="768" y1="1280" y2="1280" x1="648" />
        </branch>
        <bustap x2="528" y1="1200" y2="1200" x1="432" />
        <branch name="a(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="648" y="1200" type="branch" />
            <wire x2="648" y1="1200" y2="1200" x1="528" />
            <wire x2="768" y1="1200" y2="1200" x1="648" />
        </branch>
        <bustap x2="528" y1="1120" y2="1120" x1="432" />
        <branch name="a(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="648" y="1120" type="branch" />
            <wire x2="648" y1="1120" y2="1120" x1="528" />
            <wire x2="768" y1="1120" y2="1120" x1="648" />
        </branch>
        <bustap x2="528" y1="1040" y2="1040" x1="432" />
        <branch name="a(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="648" y="1040" type="branch" />
            <wire x2="648" y1="1040" y2="1040" x1="528" />
            <wire x2="768" y1="1040" y2="1040" x1="648" />
        </branch>
        <bustap x2="528" y1="976" y2="976" x1="432" />
        <branch name="a(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="648" y="976" type="branch" />
            <wire x2="648" y1="976" y2="976" x1="528" />
            <wire x2="768" y1="976" y2="976" x1="648" />
        </branch>
        <bustap x2="1360" y1="1520" y2="1520" x1="1456" />
        <branch name="b(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1176" y="1520" type="branch" />
            <wire x2="1176" y1="1520" y2="1520" x1="992" />
            <wire x2="1360" y1="1520" y2="1520" x1="1176" />
        </branch>
        <bustap x2="1360" y1="1440" y2="1440" x1="1456" />
        <branch name="b(6)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1176" y="1440" type="branch" />
            <wire x2="1176" y1="1440" y2="1440" x1="992" />
            <wire x2="1360" y1="1440" y2="1440" x1="1176" />
        </branch>
        <bustap x2="1360" y1="1360" y2="1360" x1="1456" />
        <branch name="b(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1176" y="1360" type="branch" />
            <wire x2="1176" y1="1360" y2="1360" x1="992" />
            <wire x2="1360" y1="1360" y2="1360" x1="1176" />
        </branch>
        <bustap x2="1360" y1="1280" y2="1280" x1="1456" />
        <branch name="b(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1176" y="1280" type="branch" />
            <wire x2="1176" y1="1280" y2="1280" x1="992" />
            <wire x2="1360" y1="1280" y2="1280" x1="1176" />
        </branch>
        <bustap x2="1360" y1="1200" y2="1200" x1="1456" />
        <branch name="b(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1176" y="1200" type="branch" />
            <wire x2="1176" y1="1200" y2="1200" x1="992" />
            <wire x2="1360" y1="1200" y2="1200" x1="1176" />
        </branch>
        <bustap x2="1360" y1="1120" y2="1120" x1="1456" />
        <branch name="b(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1176" y="1120" type="branch" />
            <wire x2="1176" y1="1120" y2="1120" x1="992" />
            <wire x2="1360" y1="1120" y2="1120" x1="1176" />
        </branch>
        <bustap x2="1360" y1="1040" y2="1040" x1="1456" />
        <branch name="b(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1176" y="1040" type="branch" />
            <wire x2="1176" y1="1040" y2="1040" x1="992" />
            <wire x2="1360" y1="1040" y2="1040" x1="1176" />
        </branch>
        <bustap x2="1360" y1="976" y2="976" x1="1456" />
        <branch name="b(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1176" y="976" type="branch" />
            <wire x2="1176" y1="976" y2="976" x1="992" />
            <wire x2="1360" y1="976" y2="976" x1="1176" />
        </branch>
        <instance x="848" y="608" name="XLXI_9" orien="R0">
        </instance>
        <bustap x2="1360" y1="640" y2="640" x1="1456" />
        <branch name="b(15:8)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1176" y="640" type="branch" />
            <wire x2="1176" y1="640" y2="640" x1="992" />
            <wire x2="1360" y1="640" y2="640" x1="1176" />
        </branch>
    </sheet>
</drawing>