<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Mreq" />
        <signal name="Ramcs" />
        <signal name="a14" />
        <signal name="stretch" />
        <signal name="Romcs" />
        <signal name="XLXN_9" />
        <signal name="XLXN_13" />
        <signal name="XLXN_15" />
        <port polarity="Input" name="Mreq" />
        <port polarity="Output" name="Ramcs" />
        <port polarity="Input" name="a14" />
        <port polarity="Input" name="stretch" />
        <port polarity="Output" name="Romcs" />
        <blockdef name="nand2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <blockdef name="or2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="32" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="44" cy="-64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
        </blockdef>
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <block symbolname="or2b1" name="XLXI_21">
            <blockpin signalname="Mreq" name="I0" />
            <blockpin signalname="stretch" name="I1" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="nand2b1" name="XLXI_22">
            <blockpin signalname="a14" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="Romcs" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_23">
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="a14" name="I1" />
            <blockpin signalname="Ramcs" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="a14">
            <wire x2="960" y1="432" y2="432" x1="880" />
            <wire x2="960" y1="432" y2="496" x1="960" />
            <wire x2="1040" y1="496" y2="496" x1="960" />
            <wire x2="960" y1="496" y2="704" x1="960" />
            <wire x2="1040" y1="704" y2="704" x1="960" />
        </branch>
        <branch name="Romcs">
            <wire x2="1440" y1="736" y2="736" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="1440" y="736" name="Romcs" orien="R0" />
        <branch name="Ramcs">
            <wire x2="1440" y1="528" y2="528" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="1440" y="528" name="Ramcs" orien="R0" />
        <instance x="1040" y="624" name="XLXI_23" orien="R0" />
        <instance x="1040" y="640" name="XLXI_22" orien="M180" />
        <iomarker fontsize="28" x="880" y="432" name="a14" orien="R180" />
        <instance x="592" y="464" name="XLXI_21" orien="M180" />
        <branch name="XLXN_9">
            <wire x2="880" y1="560" y2="560" x1="848" />
            <wire x2="1040" y1="560" y2="560" x1="880" />
            <wire x2="880" y1="560" y2="768" x1="880" />
            <wire x2="1040" y1="768" y2="768" x1="880" />
        </branch>
        <iomarker fontsize="28" x="400" y="528" name="Mreq" orien="R180" />
        <branch name="Mreq">
            <wire x2="592" y1="528" y2="528" x1="400" />
        </branch>
        <iomarker fontsize="28" x="400" y="592" name="stretch" orien="R180" />
        <branch name="stretch">
            <wire x2="592" y1="592" y2="592" x1="400" />
        </branch>
    </sheet>
</drawing>