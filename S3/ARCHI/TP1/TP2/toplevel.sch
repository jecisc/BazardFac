<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_4" />
        <signal name="switches(7:0)" />
        <signal name="Data(7:0)" />
        <signal name="led(7:0)" />
        <signal name="sevenseg(6:0)" />
        <signal name="anodes(3:0)" />
        <signal name="Data(3:0)" />
        <port polarity="Input" name="switches(7:0)" />
        <port polarity="Output" name="led(7:0)" />
        <port polarity="Output" name="sevenseg(6:0)" />
        <port polarity="Output" name="anodes(3:0)" />
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
        <blockdef name="x7seg">
            <timestamp>2013-9-23T9:27:47</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="ibuf8" name="XLXI_1">
            <blockpin signalname="switches(7:0)" name="I(7:0)" />
            <blockpin signalname="Data(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="obuf8" name="XLXI_2">
            <blockpin signalname="Data(7:0)" name="I(7:0)" />
            <blockpin signalname="led(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="x7seg" name="XLXI_3">
            <blockpin signalname="Data(3:0)" name="sw(3:0)" />
            <blockpin signalname="sevenseg(6:0)" name="sevenseg(6:0)" />
            <blockpin signalname="anodes(3:0)" name="anodes(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1776" y="848" name="XLXI_2" orien="R0" />
        <branch name="switches(7:0)">
            <wire x2="752" y1="816" y2="816" x1="576" />
            <wire x2="768" y1="816" y2="816" x1="752" />
        </branch>
        <branch name="Data(7:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1328" y="816" type="branch" />
            <wire x2="1168" y1="816" y2="816" x1="992" />
            <wire x2="1328" y1="816" y2="816" x1="1168" />
            <wire x2="1776" y1="816" y2="816" x1="1328" />
        </branch>
        <branch name="led(7:0)">
            <wire x2="2080" y1="816" y2="816" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2080" y="816" name="led(7:0)" orien="R0" />
        <instance x="768" y="848" name="XLXI_1" orien="R0" />
        <iomarker fontsize="28" x="576" y="816" name="switches(7:0)" orien="R180" />
        <instance x="1168" y="1248" name="XLXI_3" orien="R0">
        </instance>
        <branch name="sevenseg(6:0)">
            <wire x2="1888" y1="1152" y2="1152" x1="1552" />
        </branch>
        <branch name="anodes(3:0)">
            <wire x2="1872" y1="1216" y2="1216" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1888" y="1152" name="sevenseg(6:0)" orien="R0" />
        <iomarker fontsize="28" x="1872" y="1216" name="anodes(3:0)" orien="R0" />
        <bustap x2="1168" y1="816" y2="912" x1="1168" />
        <branch name="Data(3:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1168" y="1032" type="branch" />
            <wire x2="1168" y1="912" y2="1032" x1="1168" />
            <wire x2="1168" y1="1032" y2="1152" x1="1168" />
        </branch>
    </sheet>
</drawing>