<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="sevenseg(6:0)" />
        <signal name="anodes(3:0)" />
        <signal name="sw(15:0)" />
        <signal name="ld(15:0)" />
        <signal name="sw(15:8)" />
        <signal name="sw(7:0)" />
        <signal name="switches(7:0)" />
        <signal name="led(7:0)" />
        <signal name="ld(7:0)" />
        <signal name="XLXN_1(15:0)" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3(15:0)" />
        <signal name="btn0" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="sevenseg(6:0)" />
        <port polarity="Output" name="anodes(3:0)" />
        <port polarity="Input" name="switches(7:0)" />
        <port polarity="Output" name="led(7:0)" />
        <port polarity="Input" name="btn0" />
        <blockdef name="S3">
            <timestamp>2013-12-16T11:43:54</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-172" height="24" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <rect width="64" x="384" y="-108" height="24" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
            <rect width="320" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="ibuf8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="96" x="128" y="-44" height="24" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="obuf8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <rect width="64" x="0" y="-44" height="24" />
            <rect width="96" x="128" y="-44" height="24" />
        </blockdef>
        <block symbolname="constant" name="XLXI_2">
            <attr value="0000" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 16 Hexadecimal" />
            </attr>
            <blockpin signalname="sw(15:8)" name="O" />
        </block>
        <block symbolname="ibuf8" name="XLXI_3">
            <blockpin signalname="switches(7:0)" name="I(7:0)" />
            <blockpin signalname="sw(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="obuf8" name="XLXI_4">
            <blockpin signalname="ld(7:0)" name="I(7:0)" />
            <blockpin signalname="led(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="S3" name="XLXI_1">
            <blockpin signalname="sw(15:0)" name="switches(15:0)" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="btn0" name="continue" />
            <blockpin signalname="ld(15:0)" name="led(15:0)" />
            <blockpin signalname="sevenseg(6:0)" name="sevenseg(6:0)" />
            <blockpin signalname="anodes(3:0)" name="anodes(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk">
            <wire x2="656" y1="208" y2="512" x1="656" />
            <wire x2="864" y1="512" y2="512" x1="656" />
        </branch>
        <branch name="sevenseg(6:0)">
            <wire x2="1472" y1="448" y2="448" x1="1312" />
            <wire x2="1472" y1="448" y2="768" x1="1472" />
        </branch>
        <branch name="anodes(3:0)">
            <wire x2="1552" y1="512" y2="512" x1="1312" />
            <wire x2="1552" y1="512" y2="768" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="656" y="208" name="clk" orien="R270" />
        <branch name="sw(15:0)">
            <wire x2="864" y1="384" y2="384" x1="800" />
            <wire x2="800" y1="384" y2="560" x1="800" />
            <wire x2="800" y1="560" y2="688" x1="800" />
            <wire x2="800" y1="688" y2="736" x1="800" />
        </branch>
        <instance x="368" y="656" name="XLXI_2" orien="R0">
        </instance>
        <branch name="ld(15:0)">
            <wire x2="1472" y1="384" y2="384" x1="1312" />
            <wire x2="1472" y1="288" y2="384" x1="1472" />
            <wire x2="1664" y1="288" y2="288" x1="1472" />
            <wire x2="1712" y1="288" y2="288" x1="1664" />
        </branch>
        <bustap x2="704" y1="688" y2="688" x1="800" />
        <branch name="sw(15:8)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="608" y="688" type="branch" />
            <wire x2="608" y1="688" y2="688" x1="512" />
            <wire x2="704" y1="688" y2="688" x1="608" />
        </branch>
        <instance x="432" y="288" name="XLXI_3" orien="R90" />
        <bustap x2="704" y1="560" y2="560" x1="800" />
        <branch name="sw(7:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="584" y="560" type="branch" />
            <wire x2="464" y1="512" y2="560" x1="464" />
            <wire x2="584" y1="560" y2="560" x1="464" />
            <wire x2="704" y1="560" y2="560" x1="584" />
        </branch>
        <branch name="switches(7:0)">
            <wire x2="464" y1="208" y2="288" x1="464" />
        </branch>
        <iomarker fontsize="28" x="464" y="208" name="switches(7:0)" orien="R270" />
        <branch name="led(7:0)">
            <wire x2="1664" y1="720" y2="768" x1="1664" />
        </branch>
        <iomarker fontsize="28" x="1472" y="768" name="sevenseg(6:0)" orien="R90" />
        <iomarker fontsize="28" x="1552" y="768" name="anodes(3:0)" orien="R90" />
        <iomarker fontsize="28" x="1664" y="768" name="led(7:0)" orien="R90" />
        <instance x="1632" y="496" name="XLXI_4" orien="R90" />
        <bustap x2="1664" y1="288" y2="384" x1="1664" />
        <branch name="ld(7:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1664" y="440" type="branch" />
            <wire x2="1664" y1="384" y2="440" x1="1664" />
            <wire x2="1664" y1="440" y2="496" x1="1664" />
        </branch>
        <branch name="btn0">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="624" y="864" type="branch" />
            <wire x2="624" y1="864" y2="864" x1="576" />
            <wire x2="832" y1="864" y2="864" x1="624" />
            <wire x2="864" y1="576" y2="576" x1="832" />
            <wire x2="832" y1="576" y2="864" x1="832" />
        </branch>
        <iomarker fontsize="28" x="576" y="864" name="btn0" orien="R180" />
        <instance x="864" y="544" name="XLXI_1" orien="R0">
        </instance>
    </sheet>
</drawing>