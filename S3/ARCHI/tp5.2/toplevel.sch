<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="switches(7:0)" />
        <signal name="clk" />
        <signal name="Led(7:0)" />
        <signal name="switches(0)" />
        <port polarity="Input" name="switches(7:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="Led(7:0)" />
        <blockdef name="clkdiv">
            <timestamp>2013-10-21T8:58:47</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="fsm4">
            <timestamp>2013-10-21T9:30:10</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="clkdiv" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_1" name="clksec" />
            <blockpin name="clk190" />
        </block>
        <block symbolname="fsm4" name="XLXI_4">
            <blockpin signalname="XLXN_1" name="clk" />
            <blockpin signalname="switches(0)" name="travaux" />
            <blockpin signalname="Led(7:0)" name="Led(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="624" y="1280" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1248" y="1280" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1248" y1="1184" y2="1184" x1="1008" />
        </branch>
        <branch name="switches(7:0)">
            <wire x2="816" y1="1504" y2="1504" x1="592" />
            <wire x2="1248" y1="1504" y2="1504" x1="816" />
            <wire x2="1680" y1="1504" y2="1504" x1="1248" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="576" y="1184" type="branch" />
            <wire x2="576" y1="1184" y2="1184" x1="512" />
            <wire x2="592" y1="1184" y2="1184" x1="576" />
            <wire x2="624" y1="1184" y2="1184" x1="592" />
        </branch>
        <branch name="Led(7:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1760" y="1184" type="branch" />
            <wire x2="1760" y1="1184" y2="1184" x1="1632" />
            <wire x2="1792" y1="1184" y2="1184" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="1792" y="1184" name="Led(7:0)" orien="R0" />
        <iomarker fontsize="28" x="592" y="1504" name="switches(7:0)" orien="R180" />
        <iomarker fontsize="28" x="512" y="1184" name="clk" orien="R180" />
        <bustap x2="1248" y1="1504" y2="1408" x1="1248" />
        <branch name="switches(0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1248" y="1328" type="branch" />
            <wire x2="1248" y1="1248" y2="1328" x1="1248" />
            <wire x2="1248" y1="1328" y2="1408" x1="1248" />
        </branch>
    </sheet>
</drawing>