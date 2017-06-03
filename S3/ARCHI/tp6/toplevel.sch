<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="anodes(3:0)" />
        <signal name="sevenseg(6:0)" />
        <signal name="clk" />
        <signal name="ld(15:0)" />
        <signal name="Led(7:0)" />
        <signal name="sw(15:0)" />
        <signal name="switches(7:0)" />
        <signal name="sw(15:8)" />
        <signal name="ld(7:0)" />
        <signal name="sw(7:0)" />
        <port polarity="Output" name="anodes(3:0)" />
        <port polarity="Output" name="sevenseg(6:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="Led(7:0)" />
        <port polarity="Input" name="switches(7:0)" />
        <blockdef name="S3">
            <timestamp>2013-11-18T9:47:14</timestamp>
            <rect width="320" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-172" height="24" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <rect width="64" x="384" y="-108" height="24" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
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
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="S3" name="mon_S3">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="sw(15:0)" name="switches(15:0)" />
            <blockpin signalname="ld(15:0)" name="Led(15:0)" />
            <blockpin signalname="anodes(3:0)" name="anodes(3:0)" />
            <blockpin signalname="sevenseg(6:0)" name="sevenseg(6:0)" />
        </block>
        <block symbolname="obuf8" name="XLXI_2">
            <blockpin signalname="ld(7:0)" name="I(7:0)" />
            <blockpin signalname="Led(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="ibuf8" name="XLXI_3">
            <blockpin signalname="switches(7:0)" name="I(7:0)" />
            <blockpin signalname="sw(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="constant" name="XLXI_4">
            <attr value="00" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 16 Hexadecimal" />
            </attr>
            <blockpin signalname="sw(15:8)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1168" y="1088" name="mon_S3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="anodes(3:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1664" y="992" type="branch" />
            <wire x2="1664" y1="992" y2="992" x1="1616" />
            <wire x2="1824" y1="992" y2="992" x1="1664" />
        </branch>
        <branch name="sevenseg(6:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1648" y="1056" type="branch" />
            <wire x2="1648" y1="1056" y2="1056" x1="1616" />
            <wire x2="1824" y1="1056" y2="1056" x1="1648" />
        </branch>
        <iomarker fontsize="28" x="1824" y="992" name="anodes(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1824" y="1056" name="sevenseg(6:0)" orien="R0" />
        <branch name="clk">
            <wire x2="1152" y1="304" y2="320" x1="1152" />
            <wire x2="1152" y1="320" y2="928" x1="1152" />
            <wire x2="1168" y1="928" y2="928" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1152" y="304" name="clk" orien="R270" />
        <branch name="ld(15:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1824" y="928" type="branch" />
            <wire x2="1728" y1="928" y2="928" x1="1616" />
            <wire x2="1824" y1="928" y2="928" x1="1728" />
            <wire x2="1888" y1="928" y2="928" x1="1824" />
        </branch>
        <instance x="1760" y="736" name="XLXI_2" orien="R270" />
        <branch name="Led(7:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1808" y="400" type="branch" />
            <wire x2="1728" y1="400" y2="512" x1="1728" />
            <wire x2="1808" y1="400" y2="400" x1="1728" />
            <wire x2="2000" y1="400" y2="400" x1="1808" />
        </branch>
        <iomarker fontsize="28" x="2000" y="400" name="Led(7:0)" orien="R0" />
        <branch name="sw(15:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="960" y="656" type="branch" />
            <wire x2="960" y1="640" y2="656" x1="960" />
            <wire x2="960" y1="656" y2="736" x1="960" />
            <wire x2="960" y1="736" y2="816" x1="960" />
            <wire x2="960" y1="816" y2="960" x1="960" />
            <wire x2="960" y1="960" y2="1056" x1="960" />
            <wire x2="1168" y1="1056" y2="1056" x1="960" />
        </branch>
        <bustap x2="864" y1="960" y2="960" x1="960" />
        <instance x="608" y="512" name="XLXI_3" orien="R90" />
        <branch name="switches(7:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="640" y="416" type="branch" />
            <wire x2="640" y1="352" y2="416" x1="640" />
            <wire x2="640" y1="416" y2="512" x1="640" />
        </branch>
        <iomarker fontsize="28" x="640" y="352" name="switches(7:0)" orien="R270" />
        <instance x="560" y="928" name="XLXI_4" orien="R0">
        </instance>
        <branch name="sw(15:8)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="800" y="960" type="branch" />
            <wire x2="800" y1="960" y2="960" x1="704" />
            <wire x2="864" y1="960" y2="960" x1="800" />
        </branch>
        <bustap x2="1728" y1="928" y2="832" x1="1728" />
        <branch name="ld(7:0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1728" y="784" type="branch" />
            <wire x2="1728" y1="736" y2="784" x1="1728" />
            <wire x2="1728" y1="784" y2="832" x1="1728" />
        </branch>
        <bustap x2="864" y1="736" y2="736" x1="960" />
        <branch name="sw(7:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="752" y="736" type="branch" />
            <wire x2="752" y1="736" y2="736" x1="640" />
            <wire x2="864" y1="736" y2="736" x1="752" />
        </branch>
    </sheet>
</drawing>