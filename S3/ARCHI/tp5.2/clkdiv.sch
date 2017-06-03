<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_9" />
        <signal name="XLXN_20" />
        <signal name="XLXN_22" />
        <signal name="XLXN_24" />
        <signal name="XLXN_30" />
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_4" />
        <signal name="XLXN_16" />
        <signal name="XLXN_3" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="XLXN_49" />
        <signal name="XLXN_50" />
        <signal name="XLXN_57" />
        <signal name="XLXN_79" />
        <signal name="XLXN_83" />
        <signal name="clk" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="XLXN_55" />
        <signal name="XLXN_56" />
        <signal name="XLXN_58" />
        <signal name="XLXN_59" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <signal name="XLXN_97" />
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
        <signal name="XLXN_73" />
        <signal name="XLXN_74" />
        <signal name="clksec" />
        <signal name="XLXN_76" />
        <signal name="XLXN_77" />
        <signal name="XLXN_78" />
        <signal name="clk190" />
        <signal name="XLXN_115" />
        <signal name="XLXN_116" />
        <signal name="XLXN_117" />
        <signal name="XLXN_118" />
        <signal name="XLXN_119" />
        <signal name="XLXN_120" />
        <signal name="XLXN_121" />
        <signal name="XLXN_122" />
        <signal name="XLXN_123" />
        <signal name="XLXN_124" />
        <signal name="XLXN_125" />
        <signal name="XLXN_126" />
        <signal name="XLXN_152" />
        <signal name="XLXN_153" />
        <signal name="XLXN_154" />
        <signal name="XLXN_155" />
        <signal name="XLXN_156" />
        <signal name="XLXN_158" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="clksec" />
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
        <block symbolname="fd" name="XLXI_1">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_2" name="D" />
            <blockpin signalname="XLXN_1" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_3">
            <blockpin signalname="XLXN_1" name="C" />
            <blockpin signalname="XLXN_4" name="D" />
            <blockpin signalname="XLXN_3" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="XLXN_3" name="I" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_14">
            <blockpin signalname="XLXN_16" name="I" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_13">
            <blockpin signalname="XLXN_3" name="C" />
            <blockpin signalname="XLXN_17" name="D" />
            <blockpin signalname="XLXN_16" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_15">
            <blockpin signalname="XLXN_16" name="C" />
            <blockpin signalname="XLXN_19" name="D" />
            <blockpin signalname="XLXN_18" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_16">
            <blockpin signalname="XLXN_18" name="I" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_39">
            <blockpin signalname="XLXN_18" name="C" />
            <blockpin signalname="XLXN_44" name="D" />
            <blockpin signalname="XLXN_46" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_40">
            <blockpin signalname="XLXN_46" name="I" />
            <blockpin signalname="XLXN_44" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_41">
            <blockpin signalname="XLXN_45" name="I" />
            <blockpin signalname="XLXN_47" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_42">
            <blockpin signalname="XLXN_46" name="C" />
            <blockpin signalname="XLXN_47" name="D" />
            <blockpin signalname="XLXN_45" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_43">
            <blockpin signalname="XLXN_45" name="C" />
            <blockpin signalname="XLXN_49" name="D" />
            <blockpin signalname="XLXN_152" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_44">
            <blockpin signalname="XLXN_152" name="I" />
            <blockpin signalname="XLXN_49" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_45">
            <blockpin signalname="XLXN_154" name="C" />
            <blockpin signalname="XLXN_52" name="D" />
            <blockpin signalname="XLXN_51" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_46">
            <blockpin signalname="XLXN_51" name="I" />
            <blockpin signalname="XLXN_52" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_47">
            <blockpin signalname="XLXN_51" name="C" />
            <blockpin signalname="XLXN_53" name="D" />
            <blockpin signalname="XLXN_55" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_48">
            <blockpin signalname="XLXN_55" name="I" />
            <blockpin signalname="XLXN_53" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_49">
            <blockpin signalname="XLXN_54" name="I" />
            <blockpin signalname="XLXN_56" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_50">
            <blockpin signalname="XLXN_55" name="C" />
            <blockpin signalname="XLXN_56" name="D" />
            <blockpin signalname="XLXN_54" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_51">
            <blockpin signalname="XLXN_54" name="C" />
            <blockpin signalname="XLXN_58" name="D" />
            <blockpin signalname="clk190" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_52">
            <blockpin signalname="clk190" name="I" />
            <blockpin signalname="XLXN_58" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_53">
            <blockpin signalname="clk190" name="C" />
            <blockpin signalname="XLXN_59" name="D" />
            <blockpin signalname="XLXN_61" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_54">
            <blockpin signalname="XLXN_61" name="I" />
            <blockpin signalname="XLXN_59" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_55">
            <blockpin signalname="XLXN_60" name="I" />
            <blockpin signalname="XLXN_62" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_56">
            <blockpin signalname="XLXN_61" name="C" />
            <blockpin signalname="XLXN_62" name="D" />
            <blockpin signalname="XLXN_60" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_57">
            <blockpin signalname="XLXN_60" name="C" />
            <blockpin signalname="XLXN_64" name="D" />
            <blockpin signalname="XLXN_63" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_58">
            <blockpin signalname="XLXN_63" name="I" />
            <blockpin signalname="XLXN_64" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_59">
            <blockpin signalname="XLXN_63" name="C" />
            <blockpin signalname="XLXN_66" name="D" />
            <blockpin signalname="XLXN_65" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_60">
            <blockpin signalname="XLXN_65" name="I" />
            <blockpin signalname="XLXN_66" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_61">
            <blockpin signalname="XLXN_65" name="C" />
            <blockpin signalname="XLXN_67" name="D" />
            <blockpin signalname="XLXN_69" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_62">
            <blockpin signalname="XLXN_69" name="I" />
            <blockpin signalname="XLXN_67" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_63">
            <blockpin signalname="XLXN_68" name="I" />
            <blockpin signalname="XLXN_70" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_64">
            <blockpin signalname="XLXN_69" name="C" />
            <blockpin signalname="XLXN_70" name="D" />
            <blockpin signalname="XLXN_68" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_65">
            <blockpin signalname="XLXN_68" name="C" />
            <blockpin signalname="XLXN_72" name="D" />
            <blockpin signalname="XLXN_71" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_66">
            <blockpin signalname="XLXN_71" name="I" />
            <blockpin signalname="XLXN_72" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_67">
            <blockpin signalname="XLXN_71" name="C" />
            <blockpin signalname="XLXN_73" name="D" />
            <blockpin signalname="clksec" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_68">
            <blockpin signalname="clksec" name="I" />
            <blockpin signalname="XLXN_73" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_69">
            <blockpin signalname="XLXN_74" name="I" />
            <blockpin signalname="XLXN_76" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_70">
            <blockpin signalname="clksec" name="C" />
            <blockpin signalname="XLXN_76" name="D" />
            <blockpin signalname="XLXN_74" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_71">
            <blockpin signalname="XLXN_74" name="C" />
            <blockpin signalname="XLXN_78" name="D" />
            <blockpin signalname="XLXN_77" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_72">
            <blockpin signalname="XLXN_77" name="I" />
            <blockpin signalname="XLXN_78" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_101">
            <blockpin signalname="XLXN_152" name="C" />
            <blockpin signalname="XLXN_116" name="D" />
            <blockpin signalname="XLXN_115" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_102">
            <blockpin signalname="XLXN_115" name="I" />
            <blockpin signalname="XLXN_116" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_103">
            <blockpin signalname="XLXN_115" name="C" />
            <blockpin signalname="XLXN_117" name="D" />
            <blockpin signalname="XLXN_119" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_104">
            <blockpin signalname="XLXN_119" name="I" />
            <blockpin signalname="XLXN_117" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_105">
            <blockpin signalname="XLXN_118" name="I" />
            <blockpin signalname="XLXN_120" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_106">
            <blockpin signalname="XLXN_119" name="C" />
            <blockpin signalname="XLXN_120" name="D" />
            <blockpin signalname="XLXN_118" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_107">
            <blockpin signalname="XLXN_118" name="C" />
            <blockpin signalname="XLXN_121" name="D" />
            <blockpin signalname="XLXN_156" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_108">
            <blockpin signalname="XLXN_156" name="I" />
            <blockpin signalname="XLXN_121" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_109">
            <blockpin signalname="XLXN_156" name="C" />
            <blockpin signalname="XLXN_122" name="D" />
            <blockpin signalname="XLXN_124" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_110">
            <blockpin signalname="XLXN_124" name="I" />
            <blockpin signalname="XLXN_122" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_111">
            <blockpin signalname="XLXN_123" name="I" />
            <blockpin signalname="XLXN_125" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_112">
            <blockpin signalname="XLXN_124" name="C" />
            <blockpin signalname="XLXN_125" name="D" />
            <blockpin signalname="XLXN_123" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_113">
            <blockpin signalname="XLXN_123" name="C" />
            <blockpin signalname="XLXN_126" name="D" />
            <blockpin signalname="XLXN_154" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_114">
            <blockpin signalname="XLXN_154" name="I" />
            <blockpin signalname="XLXN_126" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="32" y="640" name="XLXI_1" orien="R0" />
        <instance x="320" y="160" name="XLXI_2" orien="M0" />
        <branch name="XLXN_1">
            <wire x2="432" y1="128" y2="128" x1="320" />
            <wire x2="432" y1="128" y2="384" x1="432" />
            <wire x2="432" y1="384" y2="512" x1="432" />
            <wire x2="528" y1="512" y2="512" x1="432" />
            <wire x2="432" y1="384" y2="384" x1="416" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="16" y1="128" y2="384" x1="16" />
            <wire x2="32" y1="384" y2="384" x1="16" />
            <wire x2="96" y1="128" y2="128" x1="16" />
        </branch>
        <instance x="528" y="640" name="XLXI_3" orien="R0" />
        <instance x="816" y="160" name="XLXI_4" orien="M0" />
        <branch name="XLXN_4">
            <wire x2="512" y1="128" y2="384" x1="512" />
            <wire x2="528" y1="384" y2="384" x1="512" />
            <wire x2="592" y1="128" y2="128" x1="512" />
        </branch>
        <instance x="1376" y="176" name="XLXI_14" orien="M0" />
        <branch name="XLXN_16">
            <wire x2="1520" y1="144" y2="144" x1="1376" />
            <wire x2="1520" y1="144" y2="400" x1="1520" />
            <wire x2="1520" y1="400" y2="528" x1="1520" />
            <wire x2="1568" y1="528" y2="528" x1="1520" />
            <wire x2="1520" y1="400" y2="400" x1="1472" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="960" y1="128" y2="128" x1="816" />
            <wire x2="960" y1="128" y2="144" x1="960" />
            <wire x2="960" y1="144" y2="384" x1="960" />
            <wire x2="960" y1="384" y2="528" x1="960" />
            <wire x2="1088" y1="528" y2="528" x1="960" />
            <wire x2="960" y1="384" y2="384" x1="912" />
        </branch>
        <instance x="1088" y="656" name="XLXI_13" orien="R0" />
        <branch name="XLXN_17">
            <wire x2="1072" y1="144" y2="400" x1="1072" />
            <wire x2="1088" y1="400" y2="400" x1="1072" />
            <wire x2="1152" y1="144" y2="144" x1="1072" />
        </branch>
        <instance x="1568" y="656" name="XLXI_15" orien="R0" />
        <instance x="1856" y="176" name="XLXI_16" orien="M0" />
        <branch name="XLXN_18">
            <wire x2="1968" y1="144" y2="144" x1="1856" />
            <wire x2="1968" y1="144" y2="400" x1="1968" />
            <wire x2="1968" y1="400" y2="544" x1="1968" />
            <wire x2="2032" y1="544" y2="544" x1="1968" />
            <wire x2="1968" y1="400" y2="400" x1="1952" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1552" y1="144" y2="400" x1="1552" />
            <wire x2="1568" y1="400" y2="400" x1="1552" />
            <wire x2="1632" y1="144" y2="144" x1="1552" />
        </branch>
        <instance x="2032" y="672" name="XLXI_39" orien="R0" />
        <instance x="2320" y="192" name="XLXI_40" orien="M0" />
        <branch name="XLXN_44">
            <wire x2="2016" y1="160" y2="416" x1="2016" />
            <wire x2="2032" y1="416" y2="416" x1="2016" />
            <wire x2="2096" y1="160" y2="160" x1="2016" />
        </branch>
        <instance x="2880" y="208" name="XLXI_41" orien="M0" />
        <branch name="XLXN_45">
            <wire x2="3024" y1="176" y2="176" x1="2880" />
            <wire x2="3024" y1="176" y2="432" x1="3024" />
            <wire x2="3024" y1="432" y2="560" x1="3024" />
            <wire x2="3072" y1="560" y2="560" x1="3024" />
            <wire x2="3024" y1="432" y2="432" x1="2976" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="2464" y1="160" y2="160" x1="2320" />
            <wire x2="2464" y1="160" y2="176" x1="2464" />
            <wire x2="2464" y1="176" y2="416" x1="2464" />
            <wire x2="2464" y1="416" y2="560" x1="2464" />
            <wire x2="2592" y1="560" y2="560" x1="2464" />
            <wire x2="2464" y1="416" y2="416" x1="2416" />
        </branch>
        <instance x="2592" y="688" name="XLXI_42" orien="R0" />
        <branch name="XLXN_47">
            <wire x2="2576" y1="176" y2="432" x1="2576" />
            <wire x2="2592" y1="432" y2="432" x1="2576" />
            <wire x2="2656" y1="176" y2="176" x1="2576" />
        </branch>
        <instance x="3072" y="688" name="XLXI_43" orien="R0" />
        <instance x="3360" y="208" name="XLXI_44" orien="M0" />
        <branch name="XLXN_49">
            <wire x2="3056" y1="176" y2="432" x1="3056" />
            <wire x2="3072" y1="432" y2="432" x1="3056" />
            <wire x2="3136" y1="176" y2="176" x1="3056" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="16" y="544" type="branch" />
            <wire x2="32" y1="512" y2="512" x1="16" />
            <wire x2="16" y1="512" y2="544" x1="16" />
            <wire x2="16" y1="544" y2="576" x1="16" />
            <wire x2="32" y1="576" y2="576" x1="16" />
        </branch>
        <iomarker fontsize="28" x="32" y="576" name="clk" orien="R0" />
        <instance x="48" y="1776" name="XLXI_45" orien="R0" />
        <instance x="336" y="1296" name="XLXI_46" orien="M0" />
        <branch name="XLXN_51">
            <wire x2="448" y1="1264" y2="1264" x1="336" />
            <wire x2="448" y1="1264" y2="1520" x1="448" />
            <wire x2="448" y1="1520" y2="1648" x1="448" />
            <wire x2="544" y1="1648" y2="1648" x1="448" />
            <wire x2="448" y1="1520" y2="1520" x1="432" />
        </branch>
        <branch name="XLXN_52">
            <wire x2="32" y1="1264" y2="1520" x1="32" />
            <wire x2="48" y1="1520" y2="1520" x1="32" />
            <wire x2="112" y1="1264" y2="1264" x1="32" />
        </branch>
        <instance x="544" y="1776" name="XLXI_47" orien="R0" />
        <instance x="832" y="1296" name="XLXI_48" orien="M0" />
        <branch name="XLXN_53">
            <wire x2="528" y1="1264" y2="1520" x1="528" />
            <wire x2="544" y1="1520" y2="1520" x1="528" />
            <wire x2="608" y1="1264" y2="1264" x1="528" />
        </branch>
        <instance x="1392" y="1312" name="XLXI_49" orien="M0" />
        <branch name="XLXN_54">
            <wire x2="1536" y1="1280" y2="1280" x1="1392" />
            <wire x2="1536" y1="1280" y2="1536" x1="1536" />
            <wire x2="1536" y1="1536" y2="1664" x1="1536" />
            <wire x2="1584" y1="1664" y2="1664" x1="1536" />
            <wire x2="1536" y1="1536" y2="1536" x1="1488" />
        </branch>
        <branch name="XLXN_55">
            <wire x2="976" y1="1264" y2="1264" x1="832" />
            <wire x2="976" y1="1264" y2="1280" x1="976" />
            <wire x2="976" y1="1280" y2="1520" x1="976" />
            <wire x2="976" y1="1520" y2="1664" x1="976" />
            <wire x2="1104" y1="1664" y2="1664" x1="976" />
            <wire x2="976" y1="1520" y2="1520" x1="928" />
        </branch>
        <instance x="1104" y="1792" name="XLXI_50" orien="R0" />
        <branch name="XLXN_56">
            <wire x2="1088" y1="1280" y2="1536" x1="1088" />
            <wire x2="1104" y1="1536" y2="1536" x1="1088" />
            <wire x2="1168" y1="1280" y2="1280" x1="1088" />
        </branch>
        <instance x="1584" y="1792" name="XLXI_51" orien="R0" />
        <instance x="1872" y="1312" name="XLXI_52" orien="M0" />
        <branch name="XLXN_58">
            <wire x2="1568" y1="1280" y2="1536" x1="1568" />
            <wire x2="1584" y1="1536" y2="1536" x1="1568" />
            <wire x2="1648" y1="1280" y2="1280" x1="1568" />
        </branch>
        <instance x="2048" y="1808" name="XLXI_53" orien="R0" />
        <instance x="2336" y="1328" name="XLXI_54" orien="M0" />
        <branch name="XLXN_59">
            <wire x2="2032" y1="1296" y2="1552" x1="2032" />
            <wire x2="2048" y1="1552" y2="1552" x1="2032" />
            <wire x2="2112" y1="1296" y2="1296" x1="2032" />
        </branch>
        <instance x="2896" y="1344" name="XLXI_55" orien="M0" />
        <branch name="XLXN_60">
            <wire x2="3040" y1="1312" y2="1312" x1="2896" />
            <wire x2="3040" y1="1312" y2="1568" x1="3040" />
            <wire x2="3040" y1="1568" y2="1696" x1="3040" />
            <wire x2="3088" y1="1696" y2="1696" x1="3040" />
            <wire x2="3040" y1="1568" y2="1568" x1="2992" />
        </branch>
        <branch name="XLXN_61">
            <wire x2="2480" y1="1296" y2="1296" x1="2336" />
            <wire x2="2480" y1="1296" y2="1312" x1="2480" />
            <wire x2="2480" y1="1312" y2="1552" x1="2480" />
            <wire x2="2480" y1="1552" y2="1696" x1="2480" />
            <wire x2="2608" y1="1696" y2="1696" x1="2480" />
            <wire x2="2480" y1="1552" y2="1552" x1="2432" />
        </branch>
        <instance x="2608" y="1824" name="XLXI_56" orien="R0" />
        <branch name="XLXN_62">
            <wire x2="2592" y1="1312" y2="1568" x1="2592" />
            <wire x2="2608" y1="1568" y2="1568" x1="2592" />
            <wire x2="2672" y1="1312" y2="1312" x1="2592" />
        </branch>
        <instance x="3088" y="1824" name="XLXI_57" orien="R0" />
        <instance x="3376" y="1344" name="XLXI_58" orien="M0" />
        <branch name="XLXN_63">
            <wire x2="32" y1="2032" y2="2288" x1="32" />
            <wire x2="64" y1="2288" y2="2288" x1="32" />
            <wire x2="3488" y1="2032" y2="2032" x1="32" />
            <wire x2="3488" y1="1312" y2="1312" x1="3376" />
            <wire x2="3488" y1="1312" y2="1568" x1="3488" />
            <wire x2="3488" y1="1568" y2="2032" x1="3488" />
            <wire x2="3488" y1="1568" y2="1568" x1="3472" />
        </branch>
        <branch name="XLXN_64">
            <wire x2="3072" y1="1312" y2="1568" x1="3072" />
            <wire x2="3088" y1="1568" y2="1568" x1="3072" />
            <wire x2="3152" y1="1312" y2="1312" x1="3072" />
        </branch>
        <instance x="64" y="2416" name="XLXI_59" orien="R0" />
        <instance x="352" y="1936" name="XLXI_60" orien="M0" />
        <branch name="XLXN_65">
            <wire x2="464" y1="1904" y2="1904" x1="352" />
            <wire x2="464" y1="1904" y2="2160" x1="464" />
            <wire x2="464" y1="2160" y2="2288" x1="464" />
            <wire x2="560" y1="2288" y2="2288" x1="464" />
            <wire x2="464" y1="2160" y2="2160" x1="448" />
        </branch>
        <branch name="XLXN_66">
            <wire x2="48" y1="1904" y2="2160" x1="48" />
            <wire x2="64" y1="2160" y2="2160" x1="48" />
            <wire x2="128" y1="1904" y2="1904" x1="48" />
        </branch>
        <instance x="560" y="2416" name="XLXI_61" orien="R0" />
        <instance x="848" y="1936" name="XLXI_62" orien="M0" />
        <branch name="XLXN_67">
            <wire x2="544" y1="1904" y2="2160" x1="544" />
            <wire x2="560" y1="2160" y2="2160" x1="544" />
            <wire x2="624" y1="1904" y2="1904" x1="544" />
        </branch>
        <instance x="1408" y="1952" name="XLXI_63" orien="M0" />
        <branch name="XLXN_68">
            <wire x2="1552" y1="1920" y2="1920" x1="1408" />
            <wire x2="1552" y1="1920" y2="2176" x1="1552" />
            <wire x2="1552" y1="2176" y2="2304" x1="1552" />
            <wire x2="1600" y1="2304" y2="2304" x1="1552" />
            <wire x2="1552" y1="2176" y2="2176" x1="1504" />
        </branch>
        <branch name="XLXN_69">
            <wire x2="992" y1="1904" y2="1904" x1="848" />
            <wire x2="992" y1="1904" y2="1920" x1="992" />
            <wire x2="992" y1="1920" y2="2160" x1="992" />
            <wire x2="992" y1="2160" y2="2304" x1="992" />
            <wire x2="1120" y1="2304" y2="2304" x1="992" />
            <wire x2="992" y1="2160" y2="2160" x1="944" />
        </branch>
        <instance x="1120" y="2432" name="XLXI_64" orien="R0" />
        <branch name="XLXN_70">
            <wire x2="1104" y1="1920" y2="2176" x1="1104" />
            <wire x2="1120" y1="2176" y2="2176" x1="1104" />
            <wire x2="1184" y1="1920" y2="1920" x1="1104" />
        </branch>
        <instance x="1600" y="2432" name="XLXI_65" orien="R0" />
        <instance x="1888" y="1952" name="XLXI_66" orien="M0" />
        <branch name="XLXN_71">
            <wire x2="2000" y1="1920" y2="1920" x1="1888" />
            <wire x2="2000" y1="1920" y2="2176" x1="2000" />
            <wire x2="2000" y1="2176" y2="2320" x1="2000" />
            <wire x2="2064" y1="2320" y2="2320" x1="2000" />
            <wire x2="2000" y1="2176" y2="2176" x1="1984" />
        </branch>
        <branch name="XLXN_72">
            <wire x2="1584" y1="1920" y2="2176" x1="1584" />
            <wire x2="1600" y1="2176" y2="2176" x1="1584" />
            <wire x2="1664" y1="1920" y2="1920" x1="1584" />
        </branch>
        <instance x="2064" y="2448" name="XLXI_67" orien="R0" />
        <instance x="2352" y="1968" name="XLXI_68" orien="M0" />
        <branch name="XLXN_73">
            <wire x2="2048" y1="1936" y2="2192" x1="2048" />
            <wire x2="2064" y1="2192" y2="2192" x1="2048" />
            <wire x2="2128" y1="1936" y2="1936" x1="2048" />
        </branch>
        <instance x="2912" y="1984" name="XLXI_69" orien="M0" />
        <branch name="XLXN_74">
            <wire x2="3056" y1="1952" y2="1952" x1="2912" />
            <wire x2="3056" y1="1952" y2="2208" x1="3056" />
            <wire x2="3056" y1="2208" y2="2336" x1="3056" />
            <wire x2="3104" y1="2336" y2="2336" x1="3056" />
            <wire x2="3056" y1="2208" y2="2208" x1="3008" />
        </branch>
        <branch name="clksec">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2496" y="2432" type="branch" />
            <wire x2="2496" y1="1936" y2="1936" x1="2352" />
            <wire x2="2496" y1="1936" y2="1952" x1="2496" />
            <wire x2="2496" y1="1952" y2="2192" x1="2496" />
            <wire x2="2496" y1="2192" y2="2336" x1="2496" />
            <wire x2="2624" y1="2336" y2="2336" x1="2496" />
            <wire x2="2496" y1="2336" y2="2432" x1="2496" />
            <wire x2="2496" y1="2432" y2="2560" x1="2496" />
            <wire x2="2496" y1="2192" y2="2192" x1="2448" />
        </branch>
        <instance x="2624" y="2464" name="XLXI_70" orien="R0" />
        <branch name="XLXN_76">
            <wire x2="2608" y1="1952" y2="2208" x1="2608" />
            <wire x2="2624" y1="2208" y2="2208" x1="2608" />
            <wire x2="2688" y1="1952" y2="1952" x1="2608" />
        </branch>
        <instance x="3104" y="2464" name="XLXI_71" orien="R0" />
        <instance x="3392" y="1984" name="XLXI_72" orien="M0" />
        <branch name="XLXN_77">
            <wire x2="3504" y1="1952" y2="1952" x1="3392" />
            <wire x2="3504" y1="1952" y2="2208" x1="3504" />
            <wire x2="3504" y1="2208" y2="2208" x1="3488" />
        </branch>
        <branch name="XLXN_78">
            <wire x2="3088" y1="1952" y2="2208" x1="3088" />
            <wire x2="3104" y1="2208" y2="2208" x1="3088" />
            <wire x2="3168" y1="1952" y2="1952" x1="3088" />
        </branch>
        <branch name="clk190">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2016" y="2496" type="branch" />
            <wire x2="1984" y1="1280" y2="1280" x1="1872" />
            <wire x2="1984" y1="1280" y2="1536" x1="1984" />
            <wire x2="1984" y1="1536" y2="1680" x1="1984" />
            <wire x2="2016" y1="1680" y2="1680" x1="1984" />
            <wire x2="2048" y1="1680" y2="1680" x1="2016" />
            <wire x2="2016" y1="1680" y2="2496" x1="2016" />
            <wire x2="2016" y1="2496" y2="2576" x1="2016" />
            <wire x2="2048" y1="2576" y2="2576" x1="2016" />
            <wire x2="1984" y1="1536" y2="1536" x1="1968" />
        </branch>
        <instance x="48" y="1200" name="XLXI_101" orien="R0" />
        <instance x="336" y="720" name="XLXI_102" orien="M0" />
        <branch name="XLXN_115">
            <wire x2="448" y1="688" y2="688" x1="336" />
            <wire x2="448" y1="688" y2="944" x1="448" />
            <wire x2="448" y1="944" y2="1072" x1="448" />
            <wire x2="544" y1="1072" y2="1072" x1="448" />
            <wire x2="448" y1="944" y2="944" x1="432" />
        </branch>
        <branch name="XLXN_116">
            <wire x2="32" y1="688" y2="944" x1="32" />
            <wire x2="48" y1="944" y2="944" x1="32" />
            <wire x2="112" y1="688" y2="688" x1="32" />
        </branch>
        <instance x="544" y="1200" name="XLXI_103" orien="R0" />
        <instance x="832" y="720" name="XLXI_104" orien="M0" />
        <branch name="XLXN_117">
            <wire x2="528" y1="688" y2="944" x1="528" />
            <wire x2="544" y1="944" y2="944" x1="528" />
            <wire x2="608" y1="688" y2="688" x1="528" />
        </branch>
        <instance x="1392" y="736" name="XLXI_105" orien="M0" />
        <branch name="XLXN_118">
            <wire x2="1536" y1="704" y2="704" x1="1392" />
            <wire x2="1536" y1="704" y2="960" x1="1536" />
            <wire x2="1536" y1="960" y2="1088" x1="1536" />
            <wire x2="1584" y1="1088" y2="1088" x1="1536" />
            <wire x2="1536" y1="960" y2="960" x1="1488" />
        </branch>
        <branch name="XLXN_119">
            <wire x2="976" y1="688" y2="688" x1="832" />
            <wire x2="976" y1="688" y2="704" x1="976" />
            <wire x2="976" y1="704" y2="944" x1="976" />
            <wire x2="976" y1="944" y2="1088" x1="976" />
            <wire x2="1104" y1="1088" y2="1088" x1="976" />
            <wire x2="976" y1="944" y2="944" x1="928" />
        </branch>
        <instance x="1104" y="1216" name="XLXI_106" orien="R0" />
        <branch name="XLXN_120">
            <wire x2="1088" y1="704" y2="960" x1="1088" />
            <wire x2="1104" y1="960" y2="960" x1="1088" />
            <wire x2="1168" y1="704" y2="704" x1="1088" />
        </branch>
        <instance x="1584" y="1216" name="XLXI_107" orien="R0" />
        <instance x="1872" y="736" name="XLXI_108" orien="M0" />
        <branch name="XLXN_121">
            <wire x2="1568" y1="704" y2="960" x1="1568" />
            <wire x2="1584" y1="960" y2="960" x1="1568" />
            <wire x2="1648" y1="704" y2="704" x1="1568" />
        </branch>
        <instance x="2048" y="1232" name="XLXI_109" orien="R0" />
        <instance x="2336" y="752" name="XLXI_110" orien="M0" />
        <branch name="XLXN_122">
            <wire x2="2032" y1="720" y2="976" x1="2032" />
            <wire x2="2048" y1="976" y2="976" x1="2032" />
            <wire x2="2112" y1="720" y2="720" x1="2032" />
        </branch>
        <instance x="2896" y="768" name="XLXI_111" orien="M0" />
        <branch name="XLXN_123">
            <wire x2="3040" y1="736" y2="736" x1="2896" />
            <wire x2="3040" y1="736" y2="992" x1="3040" />
            <wire x2="3040" y1="992" y2="1120" x1="3040" />
            <wire x2="3088" y1="1120" y2="1120" x1="3040" />
            <wire x2="3040" y1="992" y2="992" x1="2992" />
        </branch>
        <branch name="XLXN_124">
            <wire x2="2480" y1="720" y2="720" x1="2336" />
            <wire x2="2480" y1="720" y2="736" x1="2480" />
            <wire x2="2480" y1="736" y2="976" x1="2480" />
            <wire x2="2480" y1="976" y2="1120" x1="2480" />
            <wire x2="2608" y1="1120" y2="1120" x1="2480" />
            <wire x2="2480" y1="976" y2="976" x1="2432" />
        </branch>
        <instance x="2608" y="1248" name="XLXI_112" orien="R0" />
        <branch name="XLXN_125">
            <wire x2="2592" y1="736" y2="992" x1="2592" />
            <wire x2="2608" y1="992" y2="992" x1="2592" />
            <wire x2="2672" y1="736" y2="736" x1="2592" />
        </branch>
        <instance x="3088" y="1248" name="XLXI_113" orien="R0" />
        <instance x="3376" y="768" name="XLXI_114" orien="M0" />
        <branch name="XLXN_126">
            <wire x2="3072" y1="736" y2="992" x1="3072" />
            <wire x2="3088" y1="992" y2="992" x1="3072" />
            <wire x2="3152" y1="736" y2="736" x1="3072" />
        </branch>
        <branch name="XLXN_152">
            <wire x2="16" y1="800" y2="1072" x1="16" />
            <wire x2="48" y1="1072" y2="1072" x1="16" />
            <wire x2="3472" y1="800" y2="800" x1="16" />
            <wire x2="3472" y1="176" y2="176" x1="3360" />
            <wire x2="3472" y1="176" y2="432" x1="3472" />
            <wire x2="3472" y1="432" y2="800" x1="3472" />
            <wire x2="3472" y1="432" y2="432" x1="3456" />
        </branch>
        <branch name="XLXN_154">
            <wire x2="16" y1="1200" y2="1648" x1="16" />
            <wire x2="48" y1="1648" y2="1648" x1="16" />
            <wire x2="3488" y1="1200" y2="1200" x1="16" />
            <wire x2="3488" y1="736" y2="736" x1="3376" />
            <wire x2="3488" y1="736" y2="992" x1="3488" />
            <wire x2="3488" y1="992" y2="1200" x1="3488" />
            <wire x2="3488" y1="992" y2="992" x1="3472" />
        </branch>
        <branch name="XLXN_156">
            <wire x2="1984" y1="704" y2="704" x1="1872" />
            <wire x2="1984" y1="704" y2="960" x1="1984" />
            <wire x2="1984" y1="960" y2="1104" x1="1984" />
            <wire x2="2048" y1="1104" y2="1104" x1="1984" />
            <wire x2="1984" y1="960" y2="960" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="2496" y="2560" name="clksec" orien="R90" />
        <iomarker fontsize="28" x="2048" y="2576" name="clk190" orien="R0" />
    </sheet>
</drawing>