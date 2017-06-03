<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2" />
        <signal name="clk" />
        <signal name="Led(7:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="Led(7:0)" />
        <blockdef name="clkdiv">
            <timestamp>2013-10-14T9:14:12</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="fsm">
            <timestamp>2013-10-21T8:59:12</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="clkdiv" name="XLXI_3">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_2" name="clksec" />
            <blockpin name="clk190" />
        </block>
        <block symbolname="fsm" name="XLXI_5">
            <blockpin signalname="XLXN_2" name="clk" />
            <blockpin signalname="Led(7:0)" name="Led(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="704" y="1024" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_2">
            <wire x2="1248" y1="928" y2="928" x1="1088" />
            <wire x2="1248" y1="928" y2="944" x1="1248" />
            <wire x2="1408" y1="944" y2="944" x1="1248" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="624" y="928" type="branch" />
            <wire x2="624" y1="928" y2="928" x1="528" />
            <wire x2="704" y1="928" y2="928" x1="624" />
        </branch>
        <branch name="Led(7:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1872" y="944" type="branch" />
            <wire x2="1872" y1="944" y2="944" x1="1792" />
            <wire x2="1920" y1="944" y2="944" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="528" y="928" name="clk" orien="R180" />
        <iomarker fontsize="28" x="1920" y="944" name="Led(7:0)" orien="R0" />
        <instance x="1408" y="976" name="XLXI_5" orien="R0">
        </instance>
    </sheet>
</drawing>