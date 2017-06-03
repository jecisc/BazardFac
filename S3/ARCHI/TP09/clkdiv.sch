<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_4" />
        <signal name="XLXN_3" />
        <signal name="XLXN_2" />
        <signal name="XLXN_1" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_73" />
        <signal name="XLXN_87" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <signal name="XLXN_63" />
        <signal name="XLXN_64" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67" />
        <signal name="XLXN_68" />
        <signal name="XLXN_69" />
        <signal name="XLXN_70" />
        <signal name="XLXN_71" />
        <signal name="XLXN_72" />
        <signal name="XLXN_74" />
        <signal name="XLXN_89" />
        <signal name="XLXN_90" />
        <signal name="xyx">
        </signal>
        <signal name="XLXN_92" />
        <signal name="XLXN_93" />
        <signal name="XLXN_94" />
        <signal name="XLXN_95" />
        <signal name="XLXN_96" />
        <signal name="XLXN_97" />
        <signal name="XLXN_98" />
        <signal name="clksec" />
        <signal name="XLXN_100" />
        <signal name="xxx">
        </signal>
        <signal name="XLXN_102" />
        <signal name="clk" />
        <signal name="XLXN_75" />
        <signal name="XLXN_76" />
        <signal name="XLXN_77" />
        <signal name="XLXN_78" />
        <signal name="clk190" />
        <signal name="XLXN_80" />
        <signal name="XLXN_81" />
        <signal name="XLXN_82" />
        <signal name="XLXN_83" />
        <signal name="XLXN_84" />
        <signal name="XLXN_85" />
        <signal name="XLXN_86" />
        <signal name="XLXN_88" />
        <signal name="XLXN_177" />
        <signal name="XLXN_178" />
        <port polarity="Output" name="clksec" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="clk190" />
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
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
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="XLXN_4" name="I" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_3">
            <blockpin signalname="XLXN_2" name="C" />
            <blockpin signalname="XLXN_3" name="D" />
            <blockpin signalname="XLXN_4" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="XLXN_2" name="I" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_1">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_1" name="D" />
            <blockpin signalname="XLXN_2" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="XLXN_12" name="I" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_10">
            <blockpin signalname="XLXN_14" name="C" />
            <blockpin signalname="XLXN_13" name="D" />
            <blockpin signalname="XLXN_12" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_11">
            <blockpin signalname="XLXN_14" name="I" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_12">
            <blockpin signalname="XLXN_4" name="C" />
            <blockpin signalname="XLXN_15" name="D" />
            <blockpin signalname="XLXN_14" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_13">
            <blockpin signalname="XLXN_16" name="I" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_14">
            <blockpin signalname="XLXN_18" name="C" />
            <blockpin signalname="XLXN_17" name="D" />
            <blockpin signalname="XLXN_16" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_15">
            <blockpin signalname="XLXN_18" name="I" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_16">
            <blockpin signalname="XLXN_12" name="C" />
            <blockpin signalname="XLXN_19" name="D" />
            <blockpin signalname="XLXN_18" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_25">
            <blockpin signalname="XLXN_28" name="I" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_26">
            <blockpin signalname="XLXN_16" name="C" />
            <blockpin signalname="XLXN_29" name="D" />
            <blockpin signalname="XLXN_28" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_55">
            <blockpin signalname="XLXN_61" name="I" />
            <blockpin signalname="XLXN_62" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_56">
            <blockpin signalname="XLXN_63" name="C" />
            <blockpin signalname="XLXN_62" name="D" />
            <blockpin signalname="XLXN_61" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_57">
            <blockpin signalname="XLXN_63" name="I" />
            <blockpin signalname="XLXN_64" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_58">
            <blockpin signalname="XLXN_28" name="C" />
            <blockpin signalname="XLXN_64" name="D" />
            <blockpin signalname="XLXN_63" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_59">
            <blockpin signalname="XLXN_65" name="I" />
            <blockpin signalname="XLXN_66" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_60">
            <blockpin signalname="XLXN_67" name="C" />
            <blockpin signalname="XLXN_66" name="D" />
            <blockpin signalname="XLXN_65" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_61">
            <blockpin signalname="XLXN_67" name="I" />
            <blockpin signalname="XLXN_68" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_62">
            <blockpin signalname="XLXN_61" name="C" />
            <blockpin signalname="XLXN_68" name="D" />
            <blockpin signalname="XLXN_67" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_63">
            <blockpin signalname="XLXN_69" name="I" />
            <blockpin signalname="XLXN_70" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_64">
            <blockpin signalname="XLXN_71" name="C" />
            <blockpin signalname="XLXN_70" name="D" />
            <blockpin signalname="XLXN_69" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_65">
            <blockpin signalname="XLXN_71" name="I" />
            <blockpin signalname="XLXN_72" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_66">
            <blockpin signalname="XLXN_65" name="C" />
            <blockpin signalname="XLXN_72" name="D" />
            <blockpin signalname="XLXN_71" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_67">
            <blockpin signalname="XLXN_73" name="I" />
            <blockpin signalname="XLXN_74" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_68">
            <blockpin signalname="XLXN_69" name="C" />
            <blockpin signalname="XLXN_74" name="D" />
            <blockpin signalname="XLXN_73" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_83">
            <blockpin signalname="XLXN_89" name="I" />
            <blockpin signalname="XLXN_90" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_84">
            <blockpin signalname="xyx" name="C" />
            <blockpin signalname="XLXN_90" name="D" />
            <blockpin signalname="XLXN_89" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_85">
            <blockpin signalname="xyx" name="I" />
            <blockpin signalname="XLXN_92" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_86">
            <blockpin signalname="XLXN_87" name="C" />
            <blockpin signalname="XLXN_92" name="D" />
            <blockpin signalname="xyx" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_87">
            <blockpin signalname="XLXN_93" name="I" />
            <blockpin signalname="XLXN_94" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_88">
            <blockpin signalname="XLXN_95" name="C" />
            <blockpin signalname="XLXN_94" name="D" />
            <blockpin signalname="XLXN_93" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_89">
            <blockpin signalname="XLXN_95" name="I" />
            <blockpin signalname="XLXN_96" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_90">
            <blockpin signalname="XLXN_89" name="C" />
            <blockpin signalname="XLXN_96" name="D" />
            <blockpin signalname="XLXN_95" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_91">
            <blockpin signalname="XLXN_97" name="I" />
            <blockpin signalname="XLXN_98" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_92">
            <blockpin signalname="clksec" name="C" />
            <blockpin signalname="XLXN_98" name="D" />
            <blockpin signalname="XLXN_97" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_93">
            <blockpin signalname="clksec" name="I" />
            <blockpin signalname="XLXN_100" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_94">
            <blockpin signalname="XLXN_93" name="C" />
            <blockpin signalname="XLXN_100" name="D" />
            <blockpin signalname="clksec" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_95">
            <blockpin signalname="xxx" name="I" />
            <blockpin signalname="XLXN_102" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_96">
            <blockpin signalname="XLXN_97" name="C" />
            <blockpin signalname="XLXN_102" name="D" />
            <blockpin signalname="xxx" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_69">
            <blockpin signalname="XLXN_75" name="I" />
            <blockpin signalname="XLXN_76" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_70">
            <blockpin signalname="XLXN_77" name="C" />
            <blockpin signalname="XLXN_76" name="D" />
            <blockpin signalname="XLXN_75" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_71">
            <blockpin signalname="XLXN_77" name="I" />
            <blockpin signalname="XLXN_78" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_72">
            <blockpin signalname="XLXN_73" name="C" />
            <blockpin signalname="XLXN_78" name="D" />
            <blockpin signalname="XLXN_77" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_73">
            <blockpin signalname="clk190" name="I" />
            <blockpin signalname="XLXN_80" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_74">
            <blockpin signalname="XLXN_81" name="C" />
            <blockpin signalname="XLXN_80" name="D" />
            <blockpin signalname="clk190" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_75">
            <blockpin signalname="XLXN_81" name="I" />
            <blockpin signalname="XLXN_82" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_76">
            <blockpin signalname="XLXN_75" name="C" />
            <blockpin signalname="XLXN_82" name="D" />
            <blockpin signalname="XLXN_81" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_77">
            <blockpin signalname="XLXN_83" name="I" />
            <blockpin signalname="XLXN_84" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_78">
            <blockpin signalname="XLXN_85" name="C" />
            <blockpin signalname="XLXN_84" name="D" />
            <blockpin signalname="XLXN_83" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_79">
            <blockpin signalname="XLXN_85" name="I" />
            <blockpin signalname="XLXN_86" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_80">
            <blockpin signalname="clk190" name="C" />
            <blockpin signalname="XLXN_86" name="D" />
            <blockpin signalname="XLXN_85" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_81">
            <blockpin signalname="XLXN_87" name="I" />
            <blockpin signalname="XLXN_88" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_82">
            <blockpin signalname="XLXN_83" name="C" />
            <blockpin signalname="XLXN_88" name="D" />
            <blockpin signalname="XLXN_87" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="896" y="96" name="XLXI_4" orien="M0" />
        <instance x="592" y="480" name="XLXI_3" orien="R0" />
        <instance x="400" y="96" name="XLXI_2" orien="M0" />
        <instance x="96" y="480" name="XLXI_1" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="992" y1="64" y2="64" x1="896" />
            <wire x2="992" y1="64" y2="224" x1="992" />
            <wire x2="992" y1="224" y2="352" x1="992" />
            <wire x2="1088" y1="352" y2="352" x1="992" />
            <wire x2="992" y1="224" y2="224" x1="976" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="576" y1="64" y2="224" x1="576" />
            <wire x2="592" y1="224" y2="224" x1="576" />
            <wire x2="672" y1="64" y2="64" x1="576" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="496" y1="64" y2="64" x1="400" />
            <wire x2="496" y1="64" y2="224" x1="496" />
            <wire x2="496" y1="224" y2="352" x1="496" />
            <wire x2="592" y1="352" y2="352" x1="496" />
            <wire x2="496" y1="224" y2="224" x1="480" />
        </branch>
        <branch name="XLXN_1">
            <wire x2="80" y1="64" y2="224" x1="80" />
            <wire x2="96" y1="224" y2="224" x1="80" />
            <wire x2="176" y1="64" y2="64" x1="80" />
        </branch>
        <instance x="1888" y="96" name="XLXI_9" orien="M0" />
        <instance x="1584" y="480" name="XLXI_10" orien="R0" />
        <instance x="1392" y="96" name="XLXI_11" orien="M0" />
        <instance x="1088" y="480" name="XLXI_12" orien="R0" />
        <branch name="XLXN_12">
            <wire x2="1984" y1="64" y2="64" x1="1888" />
            <wire x2="1984" y1="64" y2="224" x1="1984" />
            <wire x2="1984" y1="224" y2="352" x1="1984" />
            <wire x2="2080" y1="352" y2="352" x1="1984" />
            <wire x2="1984" y1="224" y2="224" x1="1968" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1568" y1="64" y2="224" x1="1568" />
            <wire x2="1584" y1="224" y2="224" x1="1568" />
            <wire x2="1664" y1="64" y2="64" x1="1568" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="1488" y1="64" y2="64" x1="1392" />
            <wire x2="1488" y1="64" y2="224" x1="1488" />
            <wire x2="1488" y1="224" y2="352" x1="1488" />
            <wire x2="1584" y1="352" y2="352" x1="1488" />
            <wire x2="1488" y1="224" y2="224" x1="1472" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1072" y1="64" y2="224" x1="1072" />
            <wire x2="1088" y1="224" y2="224" x1="1072" />
            <wire x2="1168" y1="64" y2="64" x1="1072" />
        </branch>
        <instance x="2880" y="96" name="XLXI_13" orien="M0" />
        <instance x="2576" y="480" name="XLXI_14" orien="R0" />
        <instance x="2384" y="96" name="XLXI_15" orien="M0" />
        <instance x="2080" y="480" name="XLXI_16" orien="R0" />
        <branch name="XLXN_16">
            <wire x2="2976" y1="64" y2="64" x1="2880" />
            <wire x2="2976" y1="64" y2="224" x1="2976" />
            <wire x2="2976" y1="224" y2="352" x1="2976" />
            <wire x2="3072" y1="352" y2="352" x1="2976" />
            <wire x2="2976" y1="224" y2="224" x1="2960" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="2560" y1="64" y2="224" x1="2560" />
            <wire x2="2576" y1="224" y2="224" x1="2560" />
            <wire x2="2656" y1="64" y2="64" x1="2560" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="2480" y1="64" y2="64" x1="2384" />
            <wire x2="2480" y1="64" y2="224" x1="2480" />
            <wire x2="2480" y1="224" y2="352" x1="2480" />
            <wire x2="2576" y1="352" y2="352" x1="2480" />
            <wire x2="2480" y1="224" y2="224" x1="2464" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="2064" y1="64" y2="224" x1="2064" />
            <wire x2="2080" y1="224" y2="224" x1="2064" />
            <wire x2="2160" y1="64" y2="64" x1="2064" />
        </branch>
        <instance x="3376" y="96" name="XLXI_25" orien="M0" />
        <instance x="3072" y="480" name="XLXI_26" orien="R0" />
        <branch name="XLXN_28">
            <wire x2="3472" y1="528" y2="528" x1="32" />
            <wire x2="32" y1="528" y2="912" x1="32" />
            <wire x2="96" y1="912" y2="912" x1="32" />
            <wire x2="3472" y1="64" y2="64" x1="3376" />
            <wire x2="3472" y1="64" y2="224" x1="3472" />
            <wire x2="3472" y1="224" y2="528" x1="3472" />
            <wire x2="3472" y1="224" y2="224" x1="3456" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="3056" y1="64" y2="224" x1="3056" />
            <wire x2="3072" y1="224" y2="224" x1="3056" />
            <wire x2="3152" y1="64" y2="64" x1="3056" />
        </branch>
        <branch name="XLXN_87">
            <wire x2="48" y1="1616" y2="2032" x1="48" />
            <wire x2="112" y1="2032" y2="2032" x1="48" />
            <wire x2="3488" y1="1616" y2="1616" x1="48" />
            <wire x2="3488" y1="1200" y2="1200" x1="3376" />
            <wire x2="3488" y1="1200" y2="1360" x1="3488" />
            <wire x2="3488" y1="1360" y2="1616" x1="3488" />
            <wire x2="3488" y1="1360" y2="1360" x1="3456" />
        </branch>
        <instance x="896" y="656" name="XLXI_55" orien="M0" />
        <instance x="592" y="1040" name="XLXI_56" orien="R0" />
        <instance x="400" y="656" name="XLXI_57" orien="M0" />
        <instance x="96" y="1040" name="XLXI_58" orien="R0" />
        <branch name="XLXN_61">
            <wire x2="992" y1="624" y2="624" x1="896" />
            <wire x2="992" y1="624" y2="784" x1="992" />
            <wire x2="992" y1="784" y2="912" x1="992" />
            <wire x2="1088" y1="912" y2="912" x1="992" />
            <wire x2="992" y1="784" y2="784" x1="976" />
        </branch>
        <branch name="XLXN_62">
            <wire x2="576" y1="624" y2="784" x1="576" />
            <wire x2="592" y1="784" y2="784" x1="576" />
            <wire x2="672" y1="624" y2="624" x1="576" />
        </branch>
        <branch name="XLXN_63">
            <wire x2="496" y1="624" y2="624" x1="400" />
            <wire x2="496" y1="624" y2="784" x1="496" />
            <wire x2="496" y1="784" y2="912" x1="496" />
            <wire x2="592" y1="912" y2="912" x1="496" />
            <wire x2="496" y1="784" y2="784" x1="480" />
        </branch>
        <branch name="XLXN_64">
            <wire x2="80" y1="624" y2="784" x1="80" />
            <wire x2="96" y1="784" y2="784" x1="80" />
            <wire x2="176" y1="624" y2="624" x1="80" />
        </branch>
        <instance x="1888" y="656" name="XLXI_59" orien="M0" />
        <instance x="1584" y="1040" name="XLXI_60" orien="R0" />
        <instance x="1392" y="656" name="XLXI_61" orien="M0" />
        <instance x="1088" y="1040" name="XLXI_62" orien="R0" />
        <branch name="XLXN_65">
            <wire x2="1984" y1="624" y2="624" x1="1888" />
            <wire x2="1984" y1="624" y2="784" x1="1984" />
            <wire x2="1984" y1="784" y2="912" x1="1984" />
            <wire x2="2080" y1="912" y2="912" x1="1984" />
            <wire x2="1984" y1="784" y2="784" x1="1968" />
        </branch>
        <branch name="XLXN_66">
            <wire x2="1568" y1="624" y2="784" x1="1568" />
            <wire x2="1584" y1="784" y2="784" x1="1568" />
            <wire x2="1664" y1="624" y2="624" x1="1568" />
        </branch>
        <branch name="XLXN_67">
            <wire x2="1488" y1="624" y2="624" x1="1392" />
            <wire x2="1488" y1="624" y2="784" x1="1488" />
            <wire x2="1488" y1="784" y2="912" x1="1488" />
            <wire x2="1584" y1="912" y2="912" x1="1488" />
            <wire x2="1488" y1="784" y2="784" x1="1472" />
        </branch>
        <branch name="XLXN_68">
            <wire x2="1072" y1="624" y2="784" x1="1072" />
            <wire x2="1088" y1="784" y2="784" x1="1072" />
            <wire x2="1168" y1="624" y2="624" x1="1072" />
        </branch>
        <instance x="2880" y="656" name="XLXI_63" orien="M0" />
        <instance x="2576" y="1040" name="XLXI_64" orien="R0" />
        <instance x="2384" y="656" name="XLXI_65" orien="M0" />
        <instance x="2080" y="1040" name="XLXI_66" orien="R0" />
        <branch name="XLXN_69">
            <wire x2="2976" y1="624" y2="624" x1="2880" />
            <wire x2="2976" y1="624" y2="784" x1="2976" />
            <wire x2="2976" y1="784" y2="912" x1="2976" />
            <wire x2="3072" y1="912" y2="912" x1="2976" />
            <wire x2="2976" y1="784" y2="784" x1="2960" />
        </branch>
        <branch name="XLXN_70">
            <wire x2="2560" y1="624" y2="784" x1="2560" />
            <wire x2="2576" y1="784" y2="784" x1="2560" />
            <wire x2="2656" y1="624" y2="624" x1="2560" />
        </branch>
        <branch name="XLXN_71">
            <wire x2="2480" y1="624" y2="624" x1="2384" />
            <wire x2="2480" y1="624" y2="784" x1="2480" />
            <wire x2="2480" y1="784" y2="912" x1="2480" />
            <wire x2="2576" y1="912" y2="912" x1="2480" />
            <wire x2="2480" y1="784" y2="784" x1="2464" />
        </branch>
        <branch name="XLXN_72">
            <wire x2="2064" y1="624" y2="784" x1="2064" />
            <wire x2="2080" y1="784" y2="784" x1="2064" />
            <wire x2="2160" y1="624" y2="624" x1="2064" />
        </branch>
        <instance x="3376" y="656" name="XLXI_67" orien="M0" />
        <instance x="3072" y="1040" name="XLXI_68" orien="R0" />
        <branch name="XLXN_74">
            <wire x2="3056" y1="624" y2="784" x1="3056" />
            <wire x2="3072" y1="784" y2="784" x1="3056" />
            <wire x2="3152" y1="624" y2="624" x1="3056" />
        </branch>
        <instance x="912" y="1776" name="XLXI_83" orien="M0" />
        <instance x="608" y="2160" name="XLXI_84" orien="R0" />
        <instance x="416" y="1776" name="XLXI_85" orien="M0" />
        <instance x="112" y="2160" name="XLXI_86" orien="R0" />
        <branch name="XLXN_89">
            <wire x2="1008" y1="1744" y2="1744" x1="912" />
            <wire x2="1008" y1="1744" y2="1904" x1="1008" />
            <wire x2="1008" y1="1904" y2="2032" x1="1008" />
            <wire x2="1104" y1="2032" y2="2032" x1="1008" />
            <wire x2="1008" y1="1904" y2="1904" x1="992" />
        </branch>
        <branch name="XLXN_90">
            <wire x2="592" y1="1744" y2="1904" x1="592" />
            <wire x2="608" y1="1904" y2="1904" x1="592" />
            <wire x2="688" y1="1744" y2="1744" x1="592" />
        </branch>
        <branch name="xyx">
            <wire x2="512" y1="1744" y2="1744" x1="416" />
            <wire x2="512" y1="1744" y2="1904" x1="512" />
            <wire x2="512" y1="1904" y2="2032" x1="512" />
            <wire x2="608" y1="2032" y2="2032" x1="512" />
            <wire x2="512" y1="1904" y2="1904" x1="496" />
        </branch>
        <branch name="XLXN_92">
            <wire x2="96" y1="1744" y2="1904" x1="96" />
            <wire x2="112" y1="1904" y2="1904" x1="96" />
            <wire x2="192" y1="1744" y2="1744" x1="96" />
        </branch>
        <instance x="1904" y="1776" name="XLXI_87" orien="M0" />
        <instance x="1600" y="2160" name="XLXI_88" orien="R0" />
        <instance x="1408" y="1776" name="XLXI_89" orien="M0" />
        <instance x="1104" y="2160" name="XLXI_90" orien="R0" />
        <branch name="XLXN_93">
            <wire x2="2000" y1="1744" y2="1744" x1="1904" />
            <wire x2="2000" y1="1744" y2="1904" x1="2000" />
            <wire x2="2000" y1="1904" y2="2032" x1="2000" />
            <wire x2="2096" y1="2032" y2="2032" x1="2000" />
            <wire x2="2000" y1="1904" y2="1904" x1="1984" />
        </branch>
        <branch name="XLXN_94">
            <wire x2="1584" y1="1744" y2="1904" x1="1584" />
            <wire x2="1600" y1="1904" y2="1904" x1="1584" />
            <wire x2="1680" y1="1744" y2="1744" x1="1584" />
        </branch>
        <branch name="XLXN_95">
            <wire x2="1504" y1="1744" y2="1744" x1="1408" />
            <wire x2="1504" y1="1744" y2="1904" x1="1504" />
            <wire x2="1504" y1="1904" y2="2032" x1="1504" />
            <wire x2="1600" y1="2032" y2="2032" x1="1504" />
            <wire x2="1504" y1="1904" y2="1904" x1="1488" />
        </branch>
        <branch name="XLXN_96">
            <wire x2="1088" y1="1744" y2="1904" x1="1088" />
            <wire x2="1104" y1="1904" y2="1904" x1="1088" />
            <wire x2="1184" y1="1744" y2="1744" x1="1088" />
        </branch>
        <instance x="2896" y="1776" name="XLXI_91" orien="M0" />
        <instance x="2592" y="2160" name="XLXI_92" orien="R0" />
        <instance x="2400" y="1776" name="XLXI_93" orien="M0" />
        <instance x="2096" y="2160" name="XLXI_94" orien="R0" />
        <branch name="XLXN_97">
            <wire x2="2992" y1="1744" y2="1744" x1="2896" />
            <wire x2="2992" y1="1744" y2="1904" x1="2992" />
            <wire x2="2992" y1="1904" y2="2032" x1="2992" />
            <wire x2="3088" y1="2032" y2="2032" x1="2992" />
            <wire x2="2992" y1="1904" y2="1904" x1="2976" />
        </branch>
        <branch name="XLXN_98">
            <wire x2="2576" y1="1744" y2="1904" x1="2576" />
            <wire x2="2592" y1="1904" y2="1904" x1="2576" />
            <wire x2="2672" y1="1744" y2="1744" x1="2576" />
        </branch>
        <branch name="clksec">
            <wire x2="2496" y1="1744" y2="1744" x1="2400" />
            <wire x2="2496" y1="1744" y2="1904" x1="2496" />
            <wire x2="2496" y1="1904" y2="2032" x1="2496" />
            <wire x2="2592" y1="2032" y2="2032" x1="2496" />
            <wire x2="2496" y1="2032" y2="2144" x1="2496" />
            <wire x2="2496" y1="1904" y2="1904" x1="2480" />
        </branch>
        <branch name="XLXN_100">
            <wire x2="2080" y1="1744" y2="1904" x1="2080" />
            <wire x2="2096" y1="1904" y2="1904" x1="2080" />
            <wire x2="2176" y1="1744" y2="1744" x1="2080" />
        </branch>
        <instance x="3392" y="1776" name="XLXI_95" orien="M0" />
        <instance x="3088" y="2160" name="XLXI_96" orien="R0" />
        <branch name="xxx">
            <wire x2="3488" y1="1744" y2="1744" x1="3392" />
            <wire x2="3488" y1="1744" y2="1904" x1="3488" />
            <wire x2="3488" y1="1904" y2="1904" x1="3472" />
        </branch>
        <branch name="XLXN_102">
            <wire x2="3072" y1="1744" y2="1904" x1="3072" />
            <wire x2="3088" y1="1904" y2="1904" x1="3072" />
            <wire x2="3168" y1="1744" y2="1744" x1="3072" />
        </branch>
        <branch name="clk">
            <wire x2="96" y1="352" y2="352" x1="80" />
            <wire x2="80" y1="352" y2="400" x1="80" />
        </branch>
        <iomarker fontsize="28" x="80" y="400" name="clk" orien="R90" />
        <branch name="XLXN_73">
            <wire x2="3488" y1="1088" y2="1088" x1="48" />
            <wire x2="48" y1="1088" y2="1488" x1="48" />
            <wire x2="96" y1="1488" y2="1488" x1="48" />
            <wire x2="3488" y1="624" y2="624" x1="3376" />
            <wire x2="3488" y1="624" y2="784" x1="3488" />
            <wire x2="3488" y1="784" y2="1088" x1="3488" />
            <wire x2="3488" y1="784" y2="784" x1="3456" />
        </branch>
        <instance x="896" y="1232" name="XLXI_69" orien="M0" />
        <instance x="592" y="1616" name="XLXI_70" orien="R0" />
        <instance x="400" y="1232" name="XLXI_71" orien="M0" />
        <instance x="96" y="1616" name="XLXI_72" orien="R0" />
        <instance x="1888" y="1232" name="XLXI_73" orien="M0" />
        <instance x="1584" y="1616" name="XLXI_74" orien="R0" />
        <instance x="1392" y="1232" name="XLXI_75" orien="M0" />
        <instance x="1088" y="1616" name="XLXI_76" orien="R0" />
        <instance x="2880" y="1232" name="XLXI_77" orien="M0" />
        <instance x="2576" y="1616" name="XLXI_78" orien="R0" />
        <instance x="2384" y="1232" name="XLXI_79" orien="M0" />
        <instance x="2080" y="1616" name="XLXI_80" orien="R0" />
        <instance x="3376" y="1232" name="XLXI_81" orien="M0" />
        <instance x="3072" y="1616" name="XLXI_82" orien="R0" />
        <branch name="XLXN_75">
            <wire x2="992" y1="1200" y2="1200" x1="896" />
            <wire x2="992" y1="1200" y2="1360" x1="992" />
            <wire x2="992" y1="1360" y2="1488" x1="992" />
            <wire x2="1088" y1="1488" y2="1488" x1="992" />
            <wire x2="992" y1="1360" y2="1360" x1="976" />
        </branch>
        <branch name="XLXN_76">
            <wire x2="576" y1="1200" y2="1360" x1="576" />
            <wire x2="592" y1="1360" y2="1360" x1="576" />
            <wire x2="672" y1="1200" y2="1200" x1="576" />
        </branch>
        <branch name="XLXN_77">
            <wire x2="496" y1="1200" y2="1200" x1="400" />
            <wire x2="496" y1="1200" y2="1360" x1="496" />
            <wire x2="496" y1="1360" y2="1488" x1="496" />
            <wire x2="592" y1="1488" y2="1488" x1="496" />
            <wire x2="496" y1="1360" y2="1360" x1="480" />
        </branch>
        <branch name="XLXN_78">
            <wire x2="80" y1="1200" y2="1360" x1="80" />
            <wire x2="96" y1="1360" y2="1360" x1="80" />
            <wire x2="176" y1="1200" y2="1200" x1="80" />
        </branch>
        <branch name="clk190">
            <wire x2="1984" y1="1200" y2="1200" x1="1888" />
            <wire x2="1984" y1="1200" y2="1360" x1="1984" />
            <wire x2="1984" y1="1360" y2="1488" x1="1984" />
            <wire x2="2064" y1="1488" y2="1488" x1="1984" />
            <wire x2="2080" y1="1488" y2="1488" x1="2064" />
            <wire x2="2064" y1="1488" y2="2128" x1="2064" />
            <wire x2="1984" y1="1360" y2="1360" x1="1968" />
        </branch>
        <branch name="XLXN_80">
            <wire x2="1568" y1="1200" y2="1360" x1="1568" />
            <wire x2="1584" y1="1360" y2="1360" x1="1568" />
            <wire x2="1664" y1="1200" y2="1200" x1="1568" />
        </branch>
        <branch name="XLXN_81">
            <wire x2="1488" y1="1200" y2="1200" x1="1392" />
            <wire x2="1488" y1="1200" y2="1360" x1="1488" />
            <wire x2="1488" y1="1360" y2="1488" x1="1488" />
            <wire x2="1584" y1="1488" y2="1488" x1="1488" />
            <wire x2="1488" y1="1360" y2="1360" x1="1472" />
        </branch>
        <branch name="XLXN_82">
            <wire x2="1072" y1="1200" y2="1360" x1="1072" />
            <wire x2="1088" y1="1360" y2="1360" x1="1072" />
            <wire x2="1168" y1="1200" y2="1200" x1="1072" />
        </branch>
        <branch name="XLXN_83">
            <wire x2="2976" y1="1200" y2="1200" x1="2880" />
            <wire x2="2976" y1="1200" y2="1360" x1="2976" />
            <wire x2="2976" y1="1360" y2="1488" x1="2976" />
            <wire x2="3072" y1="1488" y2="1488" x1="2976" />
            <wire x2="2976" y1="1360" y2="1360" x1="2960" />
        </branch>
        <branch name="XLXN_84">
            <wire x2="2560" y1="1200" y2="1360" x1="2560" />
            <wire x2="2576" y1="1360" y2="1360" x1="2560" />
            <wire x2="2656" y1="1200" y2="1200" x1="2560" />
        </branch>
        <branch name="XLXN_85">
            <wire x2="2480" y1="1200" y2="1200" x1="2384" />
            <wire x2="2480" y1="1200" y2="1360" x1="2480" />
            <wire x2="2480" y1="1360" y2="1488" x1="2480" />
            <wire x2="2576" y1="1488" y2="1488" x1="2480" />
            <wire x2="2480" y1="1360" y2="1360" x1="2464" />
        </branch>
        <branch name="XLXN_86">
            <wire x2="2064" y1="1200" y2="1360" x1="2064" />
            <wire x2="2080" y1="1360" y2="1360" x1="2064" />
            <wire x2="2160" y1="1200" y2="1200" x1="2064" />
        </branch>
        <branch name="XLXN_88">
            <wire x2="3056" y1="1200" y2="1360" x1="3056" />
            <wire x2="3072" y1="1360" y2="1360" x1="3056" />
            <wire x2="3152" y1="1200" y2="1200" x1="3056" />
        </branch>
        <iomarker fontsize="28" x="2064" y="2128" name="clk190" orien="R90" />
        <iomarker fontsize="28" x="2496" y="2144" name="clksec" orien="R90" />
    </sheet>
</drawing>