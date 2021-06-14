<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_3" />
        <signal name="reset_enable" />
        <signal name="clock" />
        <signal name="q1" />
        <signal name="q2" />
        <signal name="q3" />
        <signal name="q6" />
        <signal name="q7" />
        <signal name="count_206" />
        <signal name="q4" />
        <signal name="q5" />
        <signal name="hsync" />
        <signal name="intack" />
        <signal name="Iorq" />
        <signal name="M1" />
        <signal name="XLXN_4" />
        <signal name="back_porch" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <port polarity="Input" name="clock" />
        <port polarity="Output" name="hsync" />
        <port polarity="Input" name="Iorq" />
        <port polarity="Input" name="M1" />
        <port polarity="Output" name="back_porch" />
        <blockdef name="cb4re">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <rect width="256" x="64" y="-512" height="448" />
        </blockdef>
        <blockdef name="and5">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <arc ex="144" ey="-240" sx="144" sy="-144" r="48" cx="144" cy="-192" />
            <line x2="64" y1="-144" y2="-144" x1="144" />
            <line x2="144" y1="-240" y2="-240" x1="64" />
            <line x2="64" y1="-64" y2="-320" x1="64" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <blockdef name="and4b3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="40" y1="-192" y2="-192" x1="0" />
            <circle r="12" cx="52" cy="-192" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
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
        <blockdef name="and2b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="32" y1="-64" y2="-64" x1="96" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="64" />
        </blockdef>
        <blockdef name="and5b4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <arc ex="144" ey="-240" sx="144" sy="-144" r="48" cx="144" cy="-192" />
            <line x2="144" y1="-240" y2="-240" x1="64" />
            <line x2="64" y1="-144" y2="-144" x1="144" />
            <line x2="64" y1="-64" y2="-320" x1="64" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="40" y1="-256" y2="-256" x1="0" />
            <circle r="12" cx="52" cy="-256" />
            <line x2="40" y1="-192" y2="-192" x1="0" />
            <circle r="12" cx="52" cy="-192" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <block symbolname="cb4re" name="XLXI_2">
            <blockpin signalname="clock" name="C" />
            <blockpin signalname="XLXN_3" name="CE" />
            <blockpin signalname="reset_enable" name="R" />
            <blockpin name="CEO" />
            <blockpin name="Q0" />
            <blockpin signalname="q1" name="Q1" />
            <blockpin signalname="q2" name="Q2" />
            <blockpin signalname="q3" name="Q3" />
            <blockpin signalname="XLXN_7" name="TC" />
        </block>
        <block symbolname="cb4re" name="XLXI_4">
            <blockpin signalname="clock" name="C" />
            <blockpin signalname="XLXN_7" name="CE" />
            <blockpin signalname="reset_enable" name="R" />
            <blockpin name="CEO" />
            <blockpin signalname="q4" name="Q0" />
            <blockpin signalname="q5" name="Q1" />
            <blockpin signalname="q6" name="Q2" />
            <blockpin signalname="q7" name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="and5" name="XLXI_5">
            <blockpin signalname="q7" name="I0" />
            <blockpin signalname="q6" name="I1" />
            <blockpin signalname="q3" name="I2" />
            <blockpin signalname="q2" name="I3" />
            <blockpin signalname="q1" name="I4" />
            <blockpin signalname="count_206" name="O" />
        </block>
        <block symbolname="and4b3" name="XLXI_6">
            <blockpin signalname="q7" name="I0" />
            <blockpin signalname="q6" name="I1" />
            <blockpin signalname="q5" name="I2" />
            <blockpin signalname="q4" name="I3" />
            <blockpin signalname="hsync" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_7">
            <blockpin signalname="intack" name="I0" />
            <blockpin signalname="count_206" name="I1" />
            <blockpin signalname="reset_enable" name="O" />
        </block>
        <block symbolname="and2b2" name="XLXI_8">
            <blockpin signalname="M1" name="I0" />
            <blockpin signalname="Iorq" name="I1" />
            <blockpin signalname="intack" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_9">
            <blockpin signalname="XLXN_3" name="P" />
        </block>
        <block symbolname="and5b4" name="XLXI_10">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="q6" name="I1" />
            <blockpin signalname="q7" name="I2" />
            <blockpin signalname="q4" name="I3" />
            <blockpin signalname="q5" name="I4" />
            <blockpin signalname="back_porch" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="768" y="2096" name="XLXI_4" orien="R0" />
        <instance x="768" y="1424" name="XLXI_2" orien="R0" />
        <instance x="1472" y="1904" name="XLXI_6" orien="R0" />
        <instance x="1472" y="1360" name="XLXI_5" orien="R0" />
        <instance x="1328" y="528" name="XLXI_7" orien="R180" />
        <instance x="720" y="528" name="XLXI_8" orien="R0" />
        <instance x="656" y="1216" name="XLXI_9" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="720" y1="1216" y2="1232" x1="720" />
            <wire x2="768" y1="1232" y2="1232" x1="720" />
        </branch>
        <branch name="clock">
            <wire x2="560" y1="1296" y2="1296" x1="320" />
            <wire x2="768" y1="1296" y2="1296" x1="560" />
            <wire x2="560" y1="1296" y2="1968" x1="560" />
            <wire x2="768" y1="1968" y2="1968" x1="560" />
        </branch>
        <branch name="hsync">
            <wire x2="1920" y1="1744" y2="1744" x1="1728" />
        </branch>
        <branch name="Iorq">
            <wire x2="720" y1="400" y2="400" x1="480" />
        </branch>
        <branch name="M1">
            <wire x2="720" y1="464" y2="464" x1="480" />
        </branch>
        <iomarker fontsize="28" x="480" y="400" name="Iorq" orien="R180" />
        <iomarker fontsize="28" x="480" y="464" name="M1" orien="R180" />
        <iomarker fontsize="28" x="320" y="1296" name="clock" orien="R180" />
        <iomarker fontsize="28" x="1920" y="1744" name="hsync" orien="R0" />
        <branch name="count_206">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1632" y="656" type="branch" />
            <wire x2="1632" y1="656" y2="656" x1="1328" />
            <wire x2="1760" y1="656" y2="656" x1="1632" />
            <wire x2="1760" y1="656" y2="1168" x1="1760" />
            <wire x2="1760" y1="1168" y2="1168" x1="1728" />
        </branch>
        <branch name="q1">
            <wire x2="1472" y1="1040" y2="1040" x1="1152" />
        </branch>
        <branch name="q2">
            <wire x2="1472" y1="1104" y2="1104" x1="1152" />
        </branch>
        <branch name="q3">
            <wire x2="1472" y1="1168" y2="1168" x1="1152" />
        </branch>
        <branch name="reset_enable">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="826" y="624" type="branch" />
            <wire x2="640" y1="624" y2="1392" x1="640" />
            <wire x2="768" y1="1392" y2="1392" x1="640" />
            <wire x2="640" y1="1392" y2="2064" x1="640" />
            <wire x2="768" y1="2064" y2="2064" x1="640" />
            <wire x2="1072" y1="624" y2="624" x1="640" />
        </branch>
        <branch name="intack">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1238" y="432" type="branch" />
            <wire x2="1392" y1="432" y2="432" x1="976" />
            <wire x2="1392" y1="432" y2="592" x1="1392" />
            <wire x2="1392" y1="592" y2="592" x1="1328" />
        </branch>
        <instance x="1472" y="2320" name="XLXI_10" orien="R0" />
        <branch name="q7">
            <wire x2="1312" y1="1840" y2="1840" x1="1152" />
            <wire x2="1328" y1="1840" y2="1840" x1="1312" />
            <wire x2="1472" y1="1840" y2="1840" x1="1328" />
            <wire x2="1312" y1="1840" y2="2128" x1="1312" />
            <wire x2="1472" y1="2128" y2="2128" x1="1312" />
            <wire x2="1472" y1="1296" y2="1296" x1="1328" />
            <wire x2="1328" y1="1296" y2="1840" x1="1328" />
        </branch>
        <branch name="q6">
            <wire x2="1280" y1="1776" y2="1776" x1="1152" />
            <wire x2="1296" y1="1776" y2="1776" x1="1280" />
            <wire x2="1472" y1="1776" y2="1776" x1="1296" />
            <wire x2="1280" y1="1776" y2="2192" x1="1280" />
            <wire x2="1472" y1="2192" y2="2192" x1="1280" />
            <wire x2="1472" y1="1232" y2="1232" x1="1296" />
            <wire x2="1296" y1="1232" y2="1776" x1="1296" />
        </branch>
        <branch name="back_porch">
            <wire x2="1920" y1="2128" y2="2128" x1="1728" />
        </branch>
        <iomarker fontsize="28" x="1920" y="2128" name="back_porch" orien="R0" />
        <branch name="q5">
            <wire x2="1408" y1="1712" y2="1712" x1="1152" />
            <wire x2="1472" y1="1712" y2="1712" x1="1408" />
            <wire x2="1408" y1="1712" y2="2000" x1="1408" />
            <wire x2="1472" y1="2000" y2="2000" x1="1408" />
        </branch>
        <branch name="q4">
            <wire x2="1376" y1="1648" y2="1648" x1="1152" />
            <wire x2="1472" y1="1648" y2="1648" x1="1376" />
            <wire x2="1376" y1="1648" y2="2064" x1="1376" />
            <wire x2="1472" y1="2064" y2="2064" x1="1376" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="752" y1="1472" y2="1904" x1="752" />
            <wire x2="768" y1="1904" y2="1904" x1="752" />
            <wire x2="1216" y1="1472" y2="1472" x1="752" />
            <wire x2="1216" y1="1472" y2="2256" x1="1216" />
            <wire x2="1232" y1="2256" y2="2256" x1="1216" />
            <wire x2="1472" y1="2256" y2="2256" x1="1232" />
            <wire x2="1216" y1="1296" y2="1296" x1="1152" />
            <wire x2="1216" y1="1296" y2="1472" x1="1216" />
        </branch>
    </sheet>
</drawing>