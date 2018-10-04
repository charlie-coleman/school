<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_20" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_14" />
        <signal name="XLXN_17" />
        <signal name="XLXN_27" />
        <signal name="XLXN_18" />
        <signal name="QC" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="QB" />
        <signal name="XLXN_35" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="QA" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="XLXN_56" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="QC" />
        <port polarity="Output" name="QB" />
        <port polarity="Output" name="QA" />
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
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
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
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="and3" name="XLXI_4">
            <blockpin signalname="XLXN_18" name="I0" />
            <blockpin signalname="XLXN_17" name="I1" />
            <blockpin signalname="QA" name="I2" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="XLXN_18" name="I1" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_7">
            <blockpin signalname="XLXN_10" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_3">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_35" name="D" />
            <blockpin signalname="QC" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="QA" name="I" />
            <blockpin signalname="XLXN_40" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="QB" name="I" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_2">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_14" name="D" />
            <blockpin signalname="QB" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_1">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_11" name="D" />
            <blockpin signalname="QA" name="Q" />
        </block>
        <block symbolname="and3" name="XLXI_5">
            <blockpin signalname="XLXN_18" name="I0" />
            <blockpin signalname="QB" name="I1" />
            <blockpin signalname="XLXN_40" name="I2" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="QC" name="I" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_21">
            <blockpin signalname="XLXN_35" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="CLK">
            <wire x2="944" y1="1200" y2="1200" x1="352" />
            <wire x2="1696" y1="1200" y2="1200" x1="944" />
            <wire x2="2528" y1="1200" y2="1200" x1="1696" />
            <wire x2="944" y1="880" y2="1200" x1="944" />
            <wire x2="1728" y1="880" y2="880" x1="1696" />
            <wire x2="1696" y1="880" y2="1200" x1="1696" />
            <wire x2="2544" y1="880" y2="880" x1="2528" />
            <wire x2="2528" y1="880" y2="1200" x1="2528" />
        </branch>
        <instance x="320" y="784" name="XLXI_4" orien="R0" />
        <branch name="XLXN_11">
            <wire x2="944" y1="752" y2="752" x1="928" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="1728" y1="752" y2="752" x1="1696" />
        </branch>
        <instance x="320" y="976" name="XLXI_5" orien="R0" />
        <branch name="QC">
            <wire x2="2960" y1="752" y2="752" x1="2928" />
            <wire x2="2960" y1="752" y2="1024" x1="2960" />
            <wire x2="3008" y1="1024" y2="1024" x1="2960" />
            <wire x2="2960" y1="1024" y2="1232" x1="2960" />
        </branch>
        <branch name="QB">
            <wire x2="320" y1="848" y2="848" x1="288" />
            <wire x2="288" y1="848" y2="1136" x1="288" />
            <wire x2="2144" y1="1136" y2="1136" x1="288" />
            <wire x2="2144" y1="1136" y2="1232" x1="2144" />
            <wire x2="2144" y1="752" y2="752" x1="2112" />
            <wire x2="2144" y1="752" y2="976" x1="2144" />
            <wire x2="2144" y1="976" y2="1136" x1="2144" />
        </branch>
        <branch name="QA">
            <wire x2="320" y1="544" y2="592" x1="320" />
            <wire x2="1360" y1="544" y2="544" x1="320" />
            <wire x2="1360" y1="544" y2="752" x1="1360" />
            <wire x2="1360" y1="752" y2="944" x1="1360" />
            <wire x2="1424" y1="944" y2="944" x1="1360" />
            <wire x2="1360" y1="944" y2="1232" x1="1360" />
            <wire x2="1360" y1="752" y2="752" x1="1328" />
        </branch>
        <branch name="XLXN_40">
            <wire x2="256" y1="784" y2="1168" x1="256" />
            <wire x2="1664" y1="1168" y2="1168" x1="256" />
            <wire x2="320" y1="784" y2="784" x1="256" />
            <wire x2="1664" y1="944" y2="944" x1="1648" />
            <wire x2="1664" y1="944" y2="1168" x1="1664" />
        </branch>
        <instance x="672" y="848" name="XLXI_7" orien="R0" />
        <branch name="XLXN_9">
            <wire x2="592" y1="656" y2="656" x1="576" />
            <wire x2="592" y1="656" y2="720" x1="592" />
            <wire x2="672" y1="720" y2="720" x1="592" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="592" y1="848" y2="848" x1="576" />
            <wire x2="672" y1="784" y2="784" x1="592" />
            <wire x2="592" y1="784" y2="848" x1="592" />
        </branch>
        <instance x="944" y="1008" name="XLXI_1" orien="R0" />
        <instance x="1424" y="976" name="XLXI_8" orien="R0" />
        <instance x="1440" y="848" name="XLXI_6" orien="R0" />
        <branch name="XLXN_18">
            <wire x2="256" y1="480" y2="720" x1="256" />
            <wire x2="320" y1="720" y2="720" x1="256" />
            <wire x2="1424" y1="480" y2="480" x1="256" />
            <wire x2="1424" y1="480" y2="720" x1="1424" />
            <wire x2="1440" y1="720" y2="720" x1="1424" />
            <wire x2="3264" y1="480" y2="480" x1="1424" />
            <wire x2="3264" y1="480" y2="1024" x1="3264" />
            <wire x2="3264" y1="1024" y2="1104" x1="3264" />
            <wire x2="320" y1="912" y2="1104" x1="320" />
            <wire x2="3264" y1="1104" y2="1104" x1="320" />
            <wire x2="3264" y1="1024" y2="1024" x1="3232" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="288" y1="512" y2="656" x1="288" />
            <wire x2="320" y1="656" y2="656" x1="288" />
            <wire x2="1392" y1="512" y2="512" x1="288" />
            <wire x2="1392" y1="512" y2="784" x1="1392" />
            <wire x2="1440" y1="784" y2="784" x1="1392" />
            <wire x2="2384" y1="512" y2="512" x1="1392" />
            <wire x2="2384" y1="512" y2="976" x1="2384" />
            <wire x2="2384" y1="976" y2="976" x1="2368" />
        </branch>
        <instance x="1728" y="1008" name="XLXI_2" orien="R0" />
        <instance x="2144" y="1008" name="XLXI_9" orien="R0" />
        <instance x="2400" y="880" name="XLXI_21" orien="R0" />
        <branch name="XLXN_35">
            <wire x2="2544" y1="752" y2="752" x1="2464" />
        </branch>
        <instance x="2544" y="1008" name="XLXI_3" orien="R0" />
        <instance x="3008" y="1056" name="XLXI_10" orien="R0" />
        <iomarker fontsize="28" x="352" y="1200" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="2144" y="1232" name="QB" orien="R90" />
        <iomarker fontsize="28" x="1360" y="1232" name="QA" orien="R90" />
        <iomarker fontsize="28" x="2960" y="1232" name="QC" orien="R90" />
    </sheet>
</drawing>