<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="switches(7:0)" />
        <signal name="myled(7:5)" />
        <signal name="myled(7:0)">
        </signal>
        <signal name="switches(3:0)" />
        <signal name="switches(7:4)" />
        <signal name="myled(3:0)" />
        <signal name="myled(4)" />
        <signal name="led(7:0)" />
        <signal name="sevenseg(6:0)" />
        <signal name="anodes(3:0)" />
        <port polarity="Input" name="switches(7:0)" />
        <port polarity="Output" name="led(7:0)" />
        <port polarity="Output" name="sevenseg(6:0)" />
        <port polarity="Output" name="anodes(3:0)" />
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="add4bit">
            <timestamp>2013-10-7T9:2:28</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
            <attr value="000" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 3 Binary" />
            </attr>
            <blockpin signalname="myled(7:5)" name="O" />
        </block>
        <block symbolname="add4bit" name="XLXI_4">
            <blockpin signalname="switches(3:0)" name="a(3:0)" />
            <blockpin signalname="switches(7:4)" name="b(3:0)" />
            <blockpin signalname="myled(3:0)" name="s(3:0)" />
            <blockpin signalname="myled(4)" name="cout" />
        </block>
        <block symbolname="x7seg" name="XLXI_6">
            <blockpin signalname="myled(3:0)" name="sw(3:0)" />
            <blockpin signalname="sevenseg(6:0)" name="sevenseg(6:0)" />
            <blockpin signalname="anodes(3:0)" name="anodes(3:0)" />
        </block>
        <block symbolname="obuf8" name="XLXI_7">
            <blockpin signalname="myled(7:0)" name="I(7:0)" />
            <blockpin signalname="led(7:0)" name="O(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="switches(7:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1152" y="1264" type="branch" />
            <wire x2="1152" y1="864" y2="1168" x1="1152" />
            <wire x2="1152" y1="1168" y2="1264" x1="1152" />
            <wire x2="1152" y1="1264" y2="1344" x1="1152" />
            <wire x2="1152" y1="1344" y2="1408" x1="1152" />
            <wire x2="1152" y1="1408" y2="1440" x1="1152" />
            <wire x2="1152" y1="1440" y2="1504" x1="1152" />
            <wire x2="1152" y1="1504" y2="1568" x1="1152" />
            <wire x2="1152" y1="1568" y2="2192" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1152" y="864" name="switches(7:0)" orien="R270" />
        <instance x="1696" y="1792" name="XLXI_2" orien="R0">
        </instance>
        <bustap x2="2256" y1="1824" y2="1824" x1="2352" />
        <branch name="myled(7:5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2048" y="1824" type="branch" />
            <wire x2="2048" y1="1824" y2="1824" x1="1840" />
            <wire x2="2256" y1="1824" y2="1824" x1="2048" />
        </branch>
        <branch name="myled(7:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2352" y="1184" type="branch" />
            <wire x2="2352" y1="880" y2="1184" x1="2352" />
            <wire x2="2352" y1="1184" y2="1344" x1="2352" />
            <wire x2="2352" y1="1344" y2="1408" x1="2352" />
            <wire x2="2352" y1="1408" y2="1440" x1="2352" />
            <wire x2="2352" y1="1440" y2="1504" x1="2352" />
            <wire x2="2352" y1="1504" y2="1616" x1="2352" />
            <wire x2="2352" y1="1616" y2="1824" x1="2352" />
            <wire x2="2352" y1="1824" y2="2208" x1="2352" />
            <wire x2="2464" y1="2208" y2="2208" x1="2352" />
        </branch>
        <instance x="1488" y="1440" name="XLXI_4" orien="R0">
        </instance>
        <bustap x2="1248" y1="1344" y2="1344" x1="1152" />
        <branch name="switches(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1368" y="1344" type="branch" />
            <wire x2="1368" y1="1344" y2="1344" x1="1248" />
            <wire x2="1488" y1="1344" y2="1344" x1="1368" />
        </branch>
        <bustap x2="1248" y1="1408" y2="1408" x1="1152" />
        <branch name="switches(7:4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1368" y="1408" type="branch" />
            <wire x2="1368" y1="1408" y2="1408" x1="1248" />
            <wire x2="1488" y1="1408" y2="1408" x1="1368" />
        </branch>
        <bustap x2="2256" y1="1344" y2="1344" x1="2352" />
        <branch name="myled(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2064" y="1344" type="branch" />
            <wire x2="2064" y1="1344" y2="1344" x1="1872" />
            <wire x2="2256" y1="1344" y2="1344" x1="2064" />
        </branch>
        <bustap x2="2256" y1="1408" y2="1408" x1="2352" />
        <branch name="myled(4)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2064" y="1408" type="branch" />
            <wire x2="2064" y1="1408" y2="1408" x1="1872" />
            <wire x2="2256" y1="1408" y2="1408" x1="2064" />
        </branch>
        <instance x="2560" y="1712" name="XLXI_6" orien="R0">
        </instance>
        <instance x="2464" y="2240" name="XLXI_7" orien="R0" />
        <branch name="led(7:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2752" y="2208" type="branch" />
            <wire x2="2752" y1="2208" y2="2208" x1="2688" />
            <wire x2="2800" y1="2208" y2="2208" x1="2752" />
        </branch>
        <iomarker fontsize="28" x="2800" y="2208" name="led(7:0)" orien="R0" />
        <branch name="sevenseg(6:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3024" y="1616" type="branch" />
            <wire x2="3024" y1="1616" y2="1616" x1="2944" />
            <wire x2="3072" y1="1616" y2="1616" x1="3024" />
        </branch>
        <branch name="anodes(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2992" y="1680" type="branch" />
            <wire x2="2992" y1="1680" y2="1680" x1="2944" />
            <wire x2="3072" y1="1680" y2="1680" x1="2992" />
        </branch>
        <iomarker fontsize="28" x="3072" y="1616" name="sevenseg(6:0)" orien="R0" />
        <iomarker fontsize="28" x="3072" y="1680" name="anodes(3:0)" orien="R0" />
        <bustap x2="2448" y1="1616" y2="1616" x1="2352" />
        <branch name="myled(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2504" y="1616" type="branch" />
            <wire x2="2504" y1="1616" y2="1616" x1="2448" />
            <wire x2="2560" y1="1616" y2="1616" x1="2504" />
        </branch>
    </sheet>
</drawing>