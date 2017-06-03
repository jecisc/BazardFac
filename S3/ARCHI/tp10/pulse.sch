<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk190" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="inp" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="q0" />
        <signal name="q1" />
        <signal name="q2" />
        <signal name="XLXN_13" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="clk" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="q3" />
        <signal name="q4" />
        <signal name="q5" />
        <signal name="XLXN_26" />
        <signal name="outp" />
        <signal name="O1" />
        <port polarity="Input" name="clk190" />
        <port polarity="Input" name="inp" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="outp" />
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="fd" name="XLXI_1">
            <blockpin signalname="clk190" name="C" />
            <blockpin signalname="inp" name="D" />
            <blockpin signalname="q0" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_2">
            <blockpin signalname="clk190" name="C" />
            <blockpin signalname="q0" name="D" />
            <blockpin signalname="q1" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_3">
            <blockpin signalname="clk190" name="C" />
            <blockpin signalname="q1" name="D" />
            <blockpin signalname="q2" name="Q" />
        </block>
        <block symbolname="and3" name="XLXI_10">
            <blockpin signalname="q2" name="I0" />
            <blockpin signalname="q1" name="I1" />
            <blockpin signalname="q0" name="I2" />
            <blockpin signalname="O1" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_4">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="O1" name="D" />
            <blockpin signalname="q3" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_6">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="q4" name="D" />
            <blockpin signalname="q5" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_5">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="q3" name="D" />
            <blockpin signalname="q4" name="Q" />
        </block>
        <block symbolname="and3" name="XLXI_14">
            <blockpin signalname="XLXN_26" name="I0" />
            <blockpin signalname="q4" name="I1" />
            <blockpin signalname="q3" name="I2" />
            <blockpin signalname="outp" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_15">
            <blockpin signalname="q5" name="I" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="720" y="960" name="XLXI_1" orien="R0" />
        <instance x="1312" y="960" name="XLXI_2" orien="R0" />
        <instance x="1968" y="960" name="XLXI_3" orien="R0" />
        <branch name="clk190">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="416" y="1168" type="branch" />
            <wire x2="416" y1="1168" y2="1168" x1="336" />
            <wire x2="704" y1="1168" y2="1168" x1="416" />
            <wire x2="1168" y1="1168" y2="1168" x1="704" />
            <wire x2="1760" y1="1168" y2="1168" x1="1168" />
            <wire x2="720" y1="832" y2="832" x1="704" />
            <wire x2="704" y1="832" y2="1168" x1="704" />
            <wire x2="1168" y1="832" y2="1168" x1="1168" />
            <wire x2="1312" y1="832" y2="832" x1="1168" />
            <wire x2="1760" y1="832" y2="1168" x1="1760" />
            <wire x2="1968" y1="832" y2="832" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="336" y="1168" name="clk190" orien="R180" />
        <branch name="inp">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="432" y="704" type="branch" />
            <wire x2="432" y1="704" y2="704" x1="368" />
            <wire x2="720" y1="704" y2="704" x1="432" />
        </branch>
        <iomarker fontsize="28" x="368" y="704" name="inp" orien="R180" />
        <instance x="2416" y="432" name="XLXI_10" orien="R0" />
        <branch name="q0">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1216" y="560" type="branch" />
            <wire x2="1216" y1="704" y2="704" x1="1104" />
            <wire x2="1312" y1="704" y2="704" x1="1216" />
            <wire x2="2416" y1="240" y2="240" x1="1216" />
            <wire x2="1216" y1="240" y2="560" x1="1216" />
            <wire x2="1216" y1="560" y2="704" x1="1216" />
        </branch>
        <branch name="q1">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1856" y="528" type="branch" />
            <wire x2="1856" y1="704" y2="704" x1="1696" />
            <wire x2="1968" y1="704" y2="704" x1="1856" />
            <wire x2="2416" y1="304" y2="304" x1="1856" />
            <wire x2="1856" y1="304" y2="528" x1="1856" />
            <wire x2="1856" y1="528" y2="704" x1="1856" />
        </branch>
        <branch name="q2">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2416" y="592" type="branch" />
            <wire x2="2416" y1="704" y2="704" x1="2352" />
            <wire x2="2416" y1="368" y2="592" x1="2416" />
            <wire x2="2416" y1="592" y2="704" x1="2416" />
        </branch>
        <instance x="1024" y="2016" name="XLXI_4" orien="R0" />
        <instance x="2320" y="2016" name="XLXI_6" orien="R0" />
        <instance x="1680" y="2016" name="XLXI_5" orien="R0" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="384" y="2416" type="branch" />
            <wire x2="384" y1="2416" y2="2416" x1="320" />
            <wire x2="976" y1="2416" y2="2416" x1="384" />
            <wire x2="1632" y1="2416" y2="2416" x1="976" />
            <wire x2="2256" y1="2416" y2="2416" x1="1632" />
            <wire x2="1024" y1="1888" y2="1888" x1="976" />
            <wire x2="976" y1="1888" y2="2416" x1="976" />
            <wire x2="1680" y1="1888" y2="1888" x1="1632" />
            <wire x2="1632" y1="1888" y2="2416" x1="1632" />
            <wire x2="2320" y1="1888" y2="1888" x1="2256" />
            <wire x2="2256" y1="1888" y2="2416" x1="2256" />
        </branch>
        <iomarker fontsize="28" x="320" y="2416" name="clk" orien="R180" />
        <branch name="O1">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2000" y="1232" type="branch" />
            <wire x2="960" y1="1232" y2="1760" x1="960" />
            <wire x2="1024" y1="1760" y2="1760" x1="960" />
            <wire x2="2000" y1="1232" y2="1232" x1="960" />
            <wire x2="2688" y1="1232" y2="1232" x1="2000" />
            <wire x2="2688" y1="304" y2="304" x1="2672" />
            <wire x2="2688" y1="304" y2="1232" x1="2688" />
        </branch>
        <instance x="2928" y="1520" name="XLXI_14" orien="R0" />
        <branch name="q3">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1536" y="1536" type="branch" />
            <wire x2="1536" y1="1760" y2="1760" x1="1408" />
            <wire x2="1680" y1="1760" y2="1760" x1="1536" />
            <wire x2="2928" y1="1328" y2="1328" x1="1536" />
            <wire x2="1536" y1="1328" y2="1536" x1="1536" />
            <wire x2="1536" y1="1536" y2="1760" x1="1536" />
        </branch>
        <branch name="q4">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2176" y="1504" type="branch" />
            <wire x2="2176" y1="1760" y2="1760" x1="2064" />
            <wire x2="2320" y1="1760" y2="1760" x1="2176" />
            <wire x2="2928" y1="1392" y2="1392" x1="2176" />
            <wire x2="2176" y1="1392" y2="1504" x1="2176" />
            <wire x2="2176" y1="1504" y2="1760" x1="2176" />
        </branch>
        <branch name="q5">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2784" y="1760" type="branch" />
            <wire x2="2784" y1="1760" y2="1760" x1="2704" />
            <wire x2="2896" y1="1760" y2="1760" x1="2784" />
        </branch>
        <instance x="2928" y="1760" name="XLXI_15" orien="R270" />
        <branch name="XLXN_26">
            <wire x2="2928" y1="1456" y2="1456" x1="2896" />
            <wire x2="2896" y1="1456" y2="1536" x1="2896" />
        </branch>
        <branch name="outp">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3232" y="1392" type="branch" />
            <wire x2="3232" y1="1392" y2="1392" x1="3184" />
            <wire x2="3280" y1="1392" y2="1392" x1="3232" />
        </branch>
        <iomarker fontsize="28" x="3280" y="1392" name="outp" orien="R0" />
    </sheet>
</drawing>