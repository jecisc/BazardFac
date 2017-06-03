<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="a(3:0)" />
        <signal name="b(3:0)" />
        <signal name="s(3:0)" />
        <signal name="a(3)" />
        <signal name="a(2)" />
        <signal name="a(1)" />
        <signal name="a(0)" />
        <signal name="b(0)" />
        <signal name="b(1)" />
        <signal name="b(2)" />
        <signal name="b(3)" />
        <signal name="s(3)" />
        <signal name="s(2)" />
        <signal name="s(1)" />
        <signal name="s(0)" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="cout" />
        <port polarity="Input" name="a(3:0)" />
        <port polarity="Input" name="b(3:0)" />
        <port polarity="Output" name="s(3:0)" />
        <port polarity="Output" name="cout" />
        <blockdef name="demiadd">
            <timestamp>2013-10-7T8:31:35</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="add1bit">
            <timestamp>2013-10-7T8:47:4</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="demiadd" name="XLXI_1">
            <blockpin signalname="b(0)" name="b" />
            <blockpin signalname="a(0)" name="a" />
            <blockpin signalname="XLXN_19" name="c" />
            <blockpin signalname="s(0)" name="s" />
        </block>
        <block symbolname="add1bit" name="XLXI_2">
            <blockpin signalname="b(1)" name="b" />
            <blockpin signalname="a(1)" name="a" />
            <blockpin signalname="XLXN_19" name="cin" />
            <blockpin signalname="s(1)" name="s" />
            <blockpin signalname="XLXN_20" name="cout" />
        </block>
        <block symbolname="add1bit" name="XLXI_3">
            <blockpin signalname="b(2)" name="b" />
            <blockpin signalname="a(2)" name="a" />
            <blockpin signalname="XLXN_20" name="cin" />
            <blockpin signalname="s(2)" name="s" />
            <blockpin signalname="XLXN_21" name="cout" />
        </block>
        <block symbolname="add1bit" name="XLXI_4">
            <blockpin signalname="b(3)" name="b" />
            <blockpin signalname="a(3)" name="a" />
            <blockpin signalname="XLXN_21" name="cin" />
            <blockpin signalname="s(3)" name="s" />
            <blockpin signalname="cout" name="cout" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1280" y="752" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1280" y="1136" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1280" y="1472" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1280" y="1776" name="XLXI_4" orien="R0">
        </instance>
        <branch name="a(3:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="800" y="608" type="branch" />
            <wire x2="800" y1="528" y2="608" x1="800" />
            <wire x2="800" y1="608" y2="720" x1="800" />
            <wire x2="800" y1="720" y2="1040" x1="800" />
            <wire x2="800" y1="1040" y2="1376" x1="800" />
            <wire x2="800" y1="1376" y2="1680" x1="800" />
            <wire x2="800" y1="1680" y2="2064" x1="800" />
        </branch>
        <branch name="b(3:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="976" y="608" type="branch" />
            <wire x2="976" y1="528" y2="608" x1="976" />
            <wire x2="976" y1="608" y2="656" x1="976" />
            <wire x2="976" y1="656" y2="976" x1="976" />
            <wire x2="976" y1="976" y2="1312" x1="976" />
            <wire x2="976" y1="1312" y2="1616" x1="976" />
            <wire x2="976" y1="1616" y2="1680" x1="976" />
            <wire x2="976" y1="1680" y2="2064" x1="976" />
        </branch>
        <branch name="s(3:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1968" y="1072" type="branch" />
            <wire x2="1968" y1="544" y2="720" x1="1968" />
            <wire x2="1968" y1="720" y2="976" x1="1968" />
            <wire x2="1968" y1="976" y2="1072" x1="1968" />
            <wire x2="1968" y1="1072" y2="1312" x1="1968" />
            <wire x2="1968" y1="1312" y2="1616" x1="1968" />
            <wire x2="1968" y1="1616" y2="2016" x1="1968" />
        </branch>
        <bustap x2="896" y1="1680" y2="1680" x1="800" />
        <branch name="a(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1088" y="1680" type="branch" />
            <wire x2="1088" y1="1680" y2="1680" x1="896" />
            <wire x2="1280" y1="1680" y2="1680" x1="1088" />
        </branch>
        <bustap x2="896" y1="1376" y2="1376" x1="800" />
        <branch name="a(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1088" y="1376" type="branch" />
            <wire x2="1088" y1="1376" y2="1376" x1="896" />
            <wire x2="1280" y1="1376" y2="1376" x1="1088" />
        </branch>
        <bustap x2="896" y1="1040" y2="1040" x1="800" />
        <branch name="a(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1088" y="1040" type="branch" />
            <wire x2="1088" y1="1040" y2="1040" x1="896" />
            <wire x2="1280" y1="1040" y2="1040" x1="1088" />
        </branch>
        <bustap x2="896" y1="720" y2="720" x1="800" />
        <branch name="a(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1088" y="720" type="branch" />
            <wire x2="1088" y1="720" y2="720" x1="896" />
            <wire x2="1280" y1="720" y2="720" x1="1088" />
        </branch>
        <bustap x2="1072" y1="656" y2="656" x1="976" />
        <branch name="b(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1176" y="656" type="branch" />
            <wire x2="1176" y1="656" y2="656" x1="1072" />
            <wire x2="1280" y1="656" y2="656" x1="1176" />
        </branch>
        <bustap x2="1072" y1="976" y2="976" x1="976" />
        <branch name="b(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1176" y="976" type="branch" />
            <wire x2="1176" y1="976" y2="976" x1="1072" />
            <wire x2="1280" y1="976" y2="976" x1="1176" />
        </branch>
        <bustap x2="1072" y1="1312" y2="1312" x1="976" />
        <branch name="b(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1176" y="1312" type="branch" />
            <wire x2="1176" y1="1312" y2="1312" x1="1072" />
            <wire x2="1280" y1="1312" y2="1312" x1="1176" />
        </branch>
        <bustap x2="1072" y1="1616" y2="1616" x1="976" />
        <branch name="b(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1176" y="1616" type="branch" />
            <wire x2="1176" y1="1616" y2="1616" x1="1072" />
            <wire x2="1280" y1="1616" y2="1616" x1="1176" />
        </branch>
        <bustap x2="1872" y1="1616" y2="1616" x1="1968" />
        <branch name="s(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1768" y="1616" type="branch" />
            <wire x2="1768" y1="1616" y2="1616" x1="1664" />
            <wire x2="1872" y1="1616" y2="1616" x1="1768" />
        </branch>
        <bustap x2="1872" y1="1312" y2="1312" x1="1968" />
        <branch name="s(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1768" y="1312" type="branch" />
            <wire x2="1768" y1="1312" y2="1312" x1="1664" />
            <wire x2="1872" y1="1312" y2="1312" x1="1768" />
        </branch>
        <bustap x2="1872" y1="976" y2="976" x1="1968" />
        <branch name="s(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1768" y="976" type="branch" />
            <wire x2="1768" y1="976" y2="976" x1="1664" />
            <wire x2="1872" y1="976" y2="976" x1="1768" />
        </branch>
        <bustap x2="1872" y1="720" y2="720" x1="1968" />
        <branch name="s(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1768" y="720" type="branch" />
            <wire x2="1768" y1="720" y2="720" x1="1664" />
            <wire x2="1872" y1="720" y2="720" x1="1768" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1216" y1="880" y2="1104" x1="1216" />
            <wire x2="1280" y1="1104" y2="1104" x1="1216" />
            <wire x2="1744" y1="880" y2="880" x1="1216" />
            <wire x2="1744" y1="656" y2="656" x1="1664" />
            <wire x2="1744" y1="656" y2="880" x1="1744" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="1216" y1="1216" y2="1440" x1="1216" />
            <wire x2="1280" y1="1440" y2="1440" x1="1216" />
            <wire x2="1744" y1="1216" y2="1216" x1="1216" />
            <wire x2="1744" y1="1104" y2="1104" x1="1664" />
            <wire x2="1744" y1="1104" y2="1216" x1="1744" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="1280" y1="1744" y2="1744" x1="1216" />
            <wire x2="1216" y1="1744" y2="1840" x1="1216" />
            <wire x2="1744" y1="1840" y2="1840" x1="1216" />
            <wire x2="1744" y1="1440" y2="1440" x1="1664" />
            <wire x2="1744" y1="1440" y2="1840" x1="1744" />
        </branch>
        <branch name="cout">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1808" y="1888" type="branch" />
            <wire x2="1808" y1="1744" y2="1744" x1="1664" />
            <wire x2="1808" y1="1744" y2="1792" x1="1808" />
            <wire x2="1808" y1="1792" y2="1888" x1="1808" />
            <wire x2="1808" y1="1888" y2="1936" x1="1808" />
        </branch>
        <iomarker fontsize="28" x="800" y="528" name="a(3:0)" orien="R270" />
        <iomarker fontsize="28" x="976" y="528" name="b(3:0)" orien="R270" />
        <iomarker fontsize="28" x="1968" y="2016" name="s(3:0)" orien="R90" />
        <iomarker fontsize="28" x="1808" y="1936" name="cout" orien="R90" />
    </sheet>
</drawing>