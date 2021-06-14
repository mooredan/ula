<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Xin" />
        <signal name="Xout" />
        <signal name="clk_6m5" />
        <signal name="clk_3m25" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="clk_3m25_inv" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <port polarity="Input" name="Xin" />
        <port polarity="Output" name="Xout" />
        <port polarity="Output" name="clk_6m5" />
        <port polarity="Output" name="clk_3m25" />
        <port polarity="Output" name="clk_3m25_inv" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <block symbolname="inv" name="osc_13M">
            <blockpin signalname="Xin" name="I" />
            <blockpin signalname="Xout" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_3">
            <blockpin signalname="Xout" name="C" />
            <blockpin signalname="XLXN_20" name="D" />
            <blockpin signalname="clk_6m5" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_5">
            <blockpin signalname="clk_6m5" name="C" />
            <blockpin signalname="clk_3m25_inv" name="D" />
            <blockpin signalname="clk_3m25" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="clk_3m25" name="I" />
            <blockpin signalname="clk_3m25_inv" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="clk_6m5" name="I" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="2720" height="1760">
        <branch name="Xin">
            <wire x2="480" y1="480" y2="480" x1="400" />
        </branch>
        <branch name="Xout">
            <wire x2="720" y1="480" y2="480" x1="704" />
            <wire x2="720" y1="480" y2="624" x1="720" />
            <wire x2="736" y1="624" y2="624" x1="720" />
            <wire x2="1200" y1="480" y2="480" x1="720" />
        </branch>
        <branch name="clk_3m25">
            <wire x2="1600" y1="1088" y2="1088" x1="1584" />
            <wire x2="1600" y1="1088" y2="1200" x1="1600" />
            <wire x2="1616" y1="1200" y2="1200" x1="1600" />
            <wire x2="1920" y1="1088" y2="1088" x1="1600" />
        </branch>
        <instance x="480" y="512" name="osc_13M" orien="R0" />
        <instance x="736" y="496" name="XLXI_3" orien="M180" />
        <iomarker fontsize="28" x="400" y="480" name="Xin" orien="R180" />
        <iomarker fontsize="28" x="1200" y="480" name="Xout" orien="R0" />
        <instance x="1008" y="928" name="XLXI_10" orien="R180" />
        <branch name="XLXN_20">
            <wire x2="736" y1="752" y2="752" x1="720" />
            <wire x2="720" y1="752" y2="960" x1="720" />
            <wire x2="784" y1="960" y2="960" x1="720" />
        </branch>
        <instance x="1200" y="832" name="XLXI_5" orien="M180" />
        <branch name="clk_6m5">
            <wire x2="1152" y1="960" y2="960" x1="1008" />
            <wire x2="1200" y1="960" y2="960" x1="1152" />
            <wire x2="1152" y1="752" y2="752" x1="1120" />
            <wire x2="1152" y1="752" y2="960" x1="1152" />
            <wire x2="1920" y1="752" y2="752" x1="1152" />
        </branch>
        <instance x="1616" y="1232" name="XLXI_9" orien="R0" />
        <branch name="clk_3m25_inv">
            <wire x2="1200" y1="1088" y2="1088" x1="1184" />
            <wire x2="1184" y1="1088" y2="1280" x1="1184" />
            <wire x2="1856" y1="1280" y2="1280" x1="1184" />
            <wire x2="1856" y1="1200" y2="1200" x1="1840" />
            <wire x2="1920" y1="1200" y2="1200" x1="1856" />
            <wire x2="1856" y1="1200" y2="1280" x1="1856" />
        </branch>
        <iomarker fontsize="28" x="1920" y="1200" name="clk_3m25_inv" orien="R0" />
        <iomarker fontsize="28" x="1920" y="1088" name="clk_3m25" orien="R0" />
        <iomarker fontsize="28" x="1920" y="752" name="clk_6m5" orien="R0" />
    </sheet>
</drawing>