<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clock" />
        <signal name="serial_in" />
        <signal name="load_enable" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="XLXN_77" />
        <signal name="XLXN_79" />
        <signal name="XLXN_81" />
        <signal name="XLXN_83" />
        <signal name="XLXN_85" />
        <signal name="XLXN_87" />
        <signal name="serial_out" />
        <signal name="XLXN_89" />
        <signal name="invert" />
        <signal name="A" />
        <signal name="XLXN_92" />
        <signal name="XLXN_94" />
        <signal name="XLXN_96" />
        <signal name="XLXN_98" />
        <signal name="XLXN_100" />
        <signal name="XLXN_102" />
        <signal name="XLXN_105" />
        <signal name="B" />
        <signal name="C" />
        <signal name="D" />
        <signal name="E" />
        <signal name="F" />
        <signal name="G" />
        <signal name="H" />
        <port polarity="Input" name="clock" />
        <port polarity="Input" name="serial_in" />
        <port polarity="Input" name="load_enable" />
        <port polarity="Output" name="serial_out" />
        <port polarity="Input" name="invert" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="D" />
        <port polarity="Input" name="E" />
        <port polarity="Input" name="F" />
        <port polarity="Input" name="G" />
        <port polarity="Input" name="H" />
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
        <blockdef name="fdsr">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-352" y2="-352" x1="0" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-352" y2="-352" x1="192" />
            <line x2="192" y1="-320" y2="-352" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <blockdef name="and2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <block symbolname="fdsr" name="XLXI_11">
            <blockpin signalname="clock" name="C" />
            <blockpin signalname="serial_in" name="D" />
            <blockpin signalname="XLXN_25" name="R" />
            <blockpin signalname="XLXN_24" name="S" />
            <blockpin signalname="XLXN_26" name="Q" />
        </block>
        <block symbolname="fdsr" name="XLXI_19">
            <blockpin signalname="clock" name="C" />
            <blockpin signalname="XLXN_26" name="D" />
            <blockpin signalname="XLXN_32" name="R" />
            <blockpin signalname="XLXN_31" name="S" />
            <blockpin signalname="XLXN_77" name="Q" />
        </block>
        <block symbolname="fdsr" name="XLXI_22">
            <blockpin signalname="clock" name="C" />
            <blockpin signalname="XLXN_77" name="D" />
            <blockpin signalname="XLXN_35" name="R" />
            <blockpin signalname="XLXN_34" name="S" />
            <blockpin signalname="XLXN_79" name="Q" />
        </block>
        <block symbolname="fdsr" name="XLXI_23">
            <blockpin signalname="clock" name="C" />
            <blockpin signalname="XLXN_79" name="D" />
            <blockpin signalname="XLXN_37" name="R" />
            <blockpin signalname="XLXN_36" name="S" />
            <blockpin signalname="XLXN_81" name="Q" />
        </block>
        <block symbolname="fdsr" name="XLXI_24">
            <blockpin signalname="clock" name="C" />
            <blockpin signalname="XLXN_81" name="D" />
            <blockpin signalname="XLXN_39" name="R" />
            <blockpin signalname="XLXN_38" name="S" />
            <blockpin signalname="XLXN_83" name="Q" />
        </block>
        <block symbolname="fdsr" name="XLXI_25">
            <blockpin signalname="clock" name="C" />
            <blockpin signalname="XLXN_83" name="D" />
            <blockpin signalname="XLXN_41" name="R" />
            <blockpin signalname="XLXN_40" name="S" />
            <blockpin signalname="XLXN_85" name="Q" />
        </block>
        <block symbolname="fdsr" name="XLXI_26">
            <blockpin signalname="clock" name="C" />
            <blockpin signalname="XLXN_85" name="D" />
            <blockpin signalname="XLXN_43" name="R" />
            <blockpin signalname="XLXN_42" name="S" />
            <blockpin signalname="XLXN_87" name="Q" />
        </block>
        <block symbolname="fdsr" name="XLXI_27">
            <blockpin signalname="clock" name="C" />
            <blockpin signalname="XLXN_87" name="D" />
            <blockpin signalname="XLXN_45" name="R" />
            <blockpin signalname="XLXN_44" name="S" />
            <blockpin signalname="serial_out" name="Q" />
        </block>
        <block symbolname="xor2" name="XLXI_40">
            <blockpin signalname="invert" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_89" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_41">
            <blockpin signalname="invert" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_92" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_42">
            <blockpin signalname="invert" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_94" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_43">
            <blockpin signalname="invert" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="XLXN_96" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_44">
            <blockpin signalname="invert" name="I0" />
            <blockpin signalname="E" name="I1" />
            <blockpin signalname="XLXN_98" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_45">
            <blockpin signalname="invert" name="I0" />
            <blockpin signalname="F" name="I1" />
            <blockpin signalname="XLXN_100" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_46">
            <blockpin signalname="invert" name="I0" />
            <blockpin signalname="G" name="I1" />
            <blockpin signalname="XLXN_102" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_47">
            <blockpin signalname="invert" name="I0" />
            <blockpin signalname="H" name="I1" />
            <blockpin signalname="XLXN_105" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_48">
            <blockpin signalname="XLXN_89" name="I0" />
            <blockpin signalname="load_enable" name="I1" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_49">
            <blockpin signalname="XLXN_89" name="I0" />
            <blockpin signalname="load_enable" name="I1" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_50">
            <blockpin signalname="XLXN_92" name="I0" />
            <blockpin signalname="load_enable" name="I1" />
            <blockpin signalname="XLXN_31" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_51">
            <blockpin signalname="XLXN_94" name="I0" />
            <blockpin signalname="load_enable" name="I1" />
            <blockpin signalname="XLXN_34" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_52">
            <blockpin signalname="XLXN_96" name="I0" />
            <blockpin signalname="load_enable" name="I1" />
            <blockpin signalname="XLXN_36" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_53">
            <blockpin signalname="XLXN_98" name="I0" />
            <blockpin signalname="load_enable" name="I1" />
            <blockpin signalname="XLXN_38" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_54">
            <blockpin signalname="XLXN_100" name="I0" />
            <blockpin signalname="load_enable" name="I1" />
            <blockpin signalname="XLXN_40" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_55">
            <blockpin signalname="XLXN_102" name="I0" />
            <blockpin signalname="load_enable" name="I1" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_56">
            <blockpin signalname="XLXN_105" name="I0" />
            <blockpin signalname="load_enable" name="I1" />
            <blockpin signalname="XLXN_44" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_57">
            <blockpin signalname="XLXN_92" name="I0" />
            <blockpin signalname="load_enable" name="I1" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_58">
            <blockpin signalname="XLXN_94" name="I0" />
            <blockpin signalname="load_enable" name="I1" />
            <blockpin signalname="XLXN_35" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_59">
            <blockpin signalname="XLXN_96" name="I0" />
            <blockpin signalname="load_enable" name="I1" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_60">
            <blockpin signalname="XLXN_98" name="I0" />
            <blockpin signalname="load_enable" name="I1" />
            <blockpin signalname="XLXN_39" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_61">
            <blockpin signalname="XLXN_100" name="I0" />
            <blockpin signalname="load_enable" name="I1" />
            <blockpin signalname="XLXN_41" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_62">
            <blockpin signalname="XLXN_102" name="I0" />
            <blockpin signalname="load_enable" name="I1" />
            <blockpin signalname="XLXN_43" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_63">
            <blockpin signalname="XLXN_105" name="I0" />
            <blockpin signalname="load_enable" name="I1" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <instance x="1616" y="880" name="XLXI_11" orien="R0" />
        <branch name="serial_in">
            <wire x2="1584" y1="208" y2="208" x1="1360" />
            <wire x2="1584" y1="208" y2="624" x1="1584" />
            <wire x2="1616" y1="624" y2="624" x1="1584" />
        </branch>
        <branch name="load_enable">
            <wire x2="1152" y1="496" y2="496" x1="960" />
            <wire x2="1216" y1="496" y2="496" x1="1152" />
            <wire x2="1152" y1="496" y2="816" x1="1152" />
            <wire x2="1216" y1="816" y2="816" x1="1152" />
            <wire x2="1152" y1="816" y2="1056" x1="1152" />
            <wire x2="1216" y1="1056" y2="1056" x1="1152" />
            <wire x2="1152" y1="1056" y2="1376" x1="1152" />
            <wire x2="1216" y1="1376" y2="1376" x1="1152" />
            <wire x2="1152" y1="1376" y2="1616" x1="1152" />
            <wire x2="1216" y1="1616" y2="1616" x1="1152" />
            <wire x2="1152" y1="1616" y2="1936" x1="1152" />
            <wire x2="1216" y1="1936" y2="1936" x1="1152" />
            <wire x2="1152" y1="1936" y2="2176" x1="1152" />
            <wire x2="1216" y1="2176" y2="2176" x1="1152" />
            <wire x2="1152" y1="2176" y2="2496" x1="1152" />
            <wire x2="1216" y1="2496" y2="2496" x1="1152" />
            <wire x2="1152" y1="2496" y2="2736" x1="1152" />
            <wire x2="1216" y1="2736" y2="2736" x1="1152" />
            <wire x2="1152" y1="2736" y2="3056" x1="1152" />
            <wire x2="1216" y1="3056" y2="3056" x1="1152" />
            <wire x2="1152" y1="3056" y2="3296" x1="1152" />
            <wire x2="1216" y1="3296" y2="3296" x1="1152" />
            <wire x2="1152" y1="3296" y2="3616" x1="1152" />
            <wire x2="1216" y1="3616" y2="3616" x1="1152" />
            <wire x2="1152" y1="3616" y2="3856" x1="1152" />
            <wire x2="1216" y1="3856" y2="3856" x1="1152" />
            <wire x2="1152" y1="3856" y2="4176" x1="1152" />
            <wire x2="1216" y1="4176" y2="4176" x1="1152" />
            <wire x2="1152" y1="4176" y2="4416" x1="1152" />
            <wire x2="1216" y1="4416" y2="4416" x1="1152" />
            <wire x2="1152" y1="4416" y2="4736" x1="1152" />
            <wire x2="1216" y1="4736" y2="4736" x1="1152" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="1616" y1="528" y2="528" x1="1472" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="1616" y1="848" y2="848" x1="1472" />
        </branch>
        <instance x="1616" y="1440" name="XLXI_19" orien="R0" />
        <branch name="XLXN_26">
            <wire x2="1584" y1="960" y2="1184" x1="1584" />
            <wire x2="1616" y1="1184" y2="1184" x1="1584" />
            <wire x2="2032" y1="960" y2="960" x1="1584" />
            <wire x2="2032" y1="624" y2="624" x1="2000" />
            <wire x2="2032" y1="624" y2="960" x1="2032" />
        </branch>
        <branch name="XLXN_31">
            <wire x2="1616" y1="1088" y2="1088" x1="1472" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="1616" y1="1408" y2="1408" x1="1472" />
        </branch>
        <instance x="1616" y="2000" name="XLXI_22" orien="R0" />
        <instance x="1616" y="2560" name="XLXI_23" orien="R0" />
        <instance x="1616" y="3120" name="XLXI_24" orien="R0" />
        <instance x="1616" y="3680" name="XLXI_25" orien="R0" />
        <instance x="1616" y="4240" name="XLXI_26" orien="R0" />
        <instance x="1616" y="4800" name="XLXI_27" orien="R0" />
        <branch name="XLXN_34">
            <wire x2="1616" y1="1648" y2="1648" x1="1472" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="1616" y1="1968" y2="1968" x1="1472" />
        </branch>
        <branch name="XLXN_36">
            <wire x2="1616" y1="2208" y2="2208" x1="1472" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="1616" y1="2528" y2="2528" x1="1472" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="1616" y1="2768" y2="2768" x1="1472" />
        </branch>
        <branch name="XLXN_39">
            <wire x2="1616" y1="3088" y2="3088" x1="1472" />
        </branch>
        <branch name="XLXN_40">
            <wire x2="1616" y1="3328" y2="3328" x1="1472" />
        </branch>
        <branch name="XLXN_41">
            <wire x2="1616" y1="3648" y2="3648" x1="1472" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="1616" y1="3888" y2="3888" x1="1472" />
        </branch>
        <branch name="XLXN_43">
            <wire x2="1616" y1="4208" y2="4208" x1="1472" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="1616" y1="4448" y2="4448" x1="1472" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="1616" y1="4768" y2="4768" x1="1472" />
        </branch>
        <branch name="XLXN_77">
            <wire x2="2032" y1="1520" y2="1520" x1="1584" />
            <wire x2="1584" y1="1520" y2="1744" x1="1584" />
            <wire x2="1616" y1="1744" y2="1744" x1="1584" />
            <wire x2="2032" y1="1184" y2="1184" x1="2000" />
            <wire x2="2032" y1="1184" y2="1520" x1="2032" />
        </branch>
        <branch name="XLXN_79">
            <wire x2="2032" y1="2080" y2="2080" x1="1584" />
            <wire x2="1584" y1="2080" y2="2304" x1="1584" />
            <wire x2="1616" y1="2304" y2="2304" x1="1584" />
            <wire x2="2032" y1="1744" y2="1744" x1="2000" />
            <wire x2="2032" y1="1744" y2="2080" x1="2032" />
        </branch>
        <branch name="XLXN_81">
            <wire x2="2032" y1="2640" y2="2640" x1="1584" />
            <wire x2="1584" y1="2640" y2="2864" x1="1584" />
            <wire x2="1616" y1="2864" y2="2864" x1="1584" />
            <wire x2="2032" y1="2304" y2="2304" x1="2000" />
            <wire x2="2032" y1="2304" y2="2640" x1="2032" />
        </branch>
        <branch name="XLXN_83">
            <wire x2="2032" y1="3200" y2="3200" x1="1584" />
            <wire x2="1584" y1="3200" y2="3424" x1="1584" />
            <wire x2="1616" y1="3424" y2="3424" x1="1584" />
            <wire x2="2032" y1="2864" y2="2864" x1="2000" />
            <wire x2="2032" y1="2864" y2="3200" x1="2032" />
        </branch>
        <branch name="XLXN_85">
            <wire x2="2032" y1="3760" y2="3760" x1="1584" />
            <wire x2="1584" y1="3760" y2="3984" x1="1584" />
            <wire x2="1616" y1="3984" y2="3984" x1="1584" />
            <wire x2="2032" y1="3424" y2="3424" x1="2000" />
            <wire x2="2032" y1="3424" y2="3760" x1="2032" />
        </branch>
        <branch name="XLXN_87">
            <wire x2="2032" y1="4320" y2="4320" x1="1584" />
            <wire x2="1584" y1="4320" y2="4544" x1="1584" />
            <wire x2="1616" y1="4544" y2="4544" x1="1584" />
            <wire x2="2032" y1="3984" y2="3984" x1="2000" />
            <wire x2="2032" y1="3984" y2="4320" x1="2032" />
        </branch>
        <branch name="serial_out">
            <wire x2="2160" y1="4544" y2="4544" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2160" y="4544" name="serial_out" orien="R0" />
        <branch name="clock">
            <wire x2="1536" y1="336" y2="336" x1="1200" />
            <wire x2="1536" y1="336" y2="752" x1="1536" />
            <wire x2="1536" y1="752" y2="1312" x1="1536" />
            <wire x2="1536" y1="1312" y2="1872" x1="1536" />
            <wire x2="1536" y1="1872" y2="2432" x1="1536" />
            <wire x2="1536" y1="2432" y2="2992" x1="1536" />
            <wire x2="1536" y1="2992" y2="3552" x1="1536" />
            <wire x2="1536" y1="3552" y2="4112" x1="1536" />
            <wire x2="1536" y1="4112" y2="4672" x1="1536" />
            <wire x2="1616" y1="4672" y2="4672" x1="1536" />
            <wire x2="1616" y1="4112" y2="4112" x1="1536" />
            <wire x2="1616" y1="3552" y2="3552" x1="1536" />
            <wire x2="1616" y1="2992" y2="2992" x1="1536" />
            <wire x2="1616" y1="2432" y2="2432" x1="1536" />
            <wire x2="1616" y1="1872" y2="1872" x1="1536" />
            <wire x2="1616" y1="1312" y2="1312" x1="1536" />
            <wire x2="1616" y1="752" y2="752" x1="1536" />
        </branch>
        <iomarker fontsize="28" x="1360" y="208" name="serial_in" orien="R180" />
        <iomarker fontsize="28" x="1200" y="336" name="clock" orien="R180" />
        <iomarker fontsize="28" x="960" y="496" name="load_enable" orien="R180" />
        <branch name="XLXN_89">
            <wire x2="1040" y1="720" y2="720" x1="1008" />
            <wire x2="1184" y1="720" y2="720" x1="1040" />
            <wire x2="1184" y1="720" y2="848" x1="1184" />
            <wire x2="1184" y1="848" y2="880" x1="1184" />
            <wire x2="1216" y1="880" y2="880" x1="1184" />
            <wire x2="1216" y1="560" y2="560" x1="1184" />
            <wire x2="1184" y1="560" y2="720" x1="1184" />
        </branch>
        <instance x="752" y="816" name="XLXI_40" orien="R0" />
        <branch name="invert">
            <wire x2="720" y1="4880" y2="4880" x1="480" />
            <wire x2="752" y1="752" y2="752" x1="720" />
            <wire x2="720" y1="752" y2="832" x1="720" />
            <wire x2="720" y1="832" y2="1312" x1="720" />
            <wire x2="752" y1="1312" y2="1312" x1="720" />
            <wire x2="720" y1="1312" y2="1872" x1="720" />
            <wire x2="752" y1="1872" y2="1872" x1="720" />
            <wire x2="720" y1="1872" y2="2432" x1="720" />
            <wire x2="752" y1="2432" y2="2432" x1="720" />
            <wire x2="720" y1="2432" y2="2992" x1="720" />
            <wire x2="752" y1="2992" y2="2992" x1="720" />
            <wire x2="720" y1="2992" y2="3552" x1="720" />
            <wire x2="752" y1="3552" y2="3552" x1="720" />
            <wire x2="720" y1="3552" y2="4112" x1="720" />
            <wire x2="752" y1="4112" y2="4112" x1="720" />
            <wire x2="720" y1="4112" y2="4672" x1="720" />
            <wire x2="752" y1="4672" y2="4672" x1="720" />
            <wire x2="720" y1="4672" y2="4880" x1="720" />
        </branch>
        <branch name="A">
            <wire x2="752" y1="688" y2="688" x1="560" />
        </branch>
        <iomarker fontsize="28" x="560" y="688" name="A" orien="R180" />
        <branch name="XLXN_92">
            <wire x2="1072" y1="1280" y2="1280" x1="1008" />
            <wire x2="1184" y1="1280" y2="1280" x1="1072" />
            <wire x2="1184" y1="1280" y2="1440" x1="1184" />
            <wire x2="1216" y1="1440" y2="1440" x1="1184" />
            <wire x2="1216" y1="1120" y2="1120" x1="1184" />
            <wire x2="1184" y1="1120" y2="1184" x1="1184" />
            <wire x2="1184" y1="1184" y2="1280" x1="1184" />
        </branch>
        <branch name="XLXN_94">
            <wire x2="1088" y1="1840" y2="1840" x1="1008" />
            <wire x2="1184" y1="1840" y2="1840" x1="1088" />
            <wire x2="1184" y1="1840" y2="2000" x1="1184" />
            <wire x2="1216" y1="2000" y2="2000" x1="1184" />
            <wire x2="1216" y1="1680" y2="1680" x1="1184" />
            <wire x2="1184" y1="1680" y2="1792" x1="1184" />
            <wire x2="1184" y1="1792" y2="1840" x1="1184" />
        </branch>
        <branch name="XLXN_96">
            <wire x2="1104" y1="2400" y2="2400" x1="1008" />
            <wire x2="1184" y1="2400" y2="2400" x1="1104" />
            <wire x2="1184" y1="2400" y2="2560" x1="1184" />
            <wire x2="1216" y1="2560" y2="2560" x1="1184" />
            <wire x2="1216" y1="2240" y2="2240" x1="1184" />
            <wire x2="1184" y1="2240" y2="2384" x1="1184" />
            <wire x2="1184" y1="2384" y2="2400" x1="1184" />
        </branch>
        <branch name="XLXN_98">
            <wire x2="1104" y1="2960" y2="2960" x1="1008" />
            <wire x2="1184" y1="2960" y2="2960" x1="1104" />
            <wire x2="1184" y1="2960" y2="3120" x1="1184" />
            <wire x2="1216" y1="3120" y2="3120" x1="1184" />
            <wire x2="1216" y1="2800" y2="2800" x1="1184" />
            <wire x2="1184" y1="2800" y2="2928" x1="1184" />
            <wire x2="1184" y1="2928" y2="2960" x1="1184" />
        </branch>
        <branch name="XLXN_100">
            <wire x2="1104" y1="3520" y2="3520" x1="1008" />
            <wire x2="1184" y1="3520" y2="3520" x1="1104" />
            <wire x2="1184" y1="3520" y2="3680" x1="1184" />
            <wire x2="1216" y1="3680" y2="3680" x1="1184" />
            <wire x2="1216" y1="3360" y2="3360" x1="1184" />
            <wire x2="1184" y1="3360" y2="3504" x1="1184" />
            <wire x2="1184" y1="3504" y2="3520" x1="1184" />
        </branch>
        <branch name="XLXN_102">
            <wire x2="1104" y1="4080" y2="4080" x1="1008" />
            <wire x2="1184" y1="4080" y2="4080" x1="1104" />
            <wire x2="1184" y1="4080" y2="4240" x1="1184" />
            <wire x2="1216" y1="4240" y2="4240" x1="1184" />
            <wire x2="1216" y1="3920" y2="3920" x1="1184" />
            <wire x2="1184" y1="3920" y2="4016" x1="1184" />
            <wire x2="1184" y1="4016" y2="4080" x1="1184" />
        </branch>
        <branch name="XLXN_105">
            <wire x2="1104" y1="4640" y2="4640" x1="1008" />
            <wire x2="1184" y1="4640" y2="4640" x1="1104" />
            <wire x2="1184" y1="4640" y2="4800" x1="1184" />
            <wire x2="1216" y1="4800" y2="4800" x1="1184" />
            <wire x2="1216" y1="4480" y2="4480" x1="1184" />
            <wire x2="1184" y1="4480" y2="4592" x1="1184" />
            <wire x2="1184" y1="4592" y2="4640" x1="1184" />
        </branch>
        <instance x="752" y="1376" name="XLXI_41" orien="R0" />
        <instance x="752" y="1936" name="XLXI_42" orien="R0" />
        <instance x="752" y="2496" name="XLXI_43" orien="R0" />
        <instance x="752" y="3056" name="XLXI_44" orien="R0" />
        <instance x="752" y="3616" name="XLXI_45" orien="R0" />
        <instance x="752" y="4176" name="XLXI_46" orien="R0" />
        <instance x="752" y="4736" name="XLXI_47" orien="R0" />
        <iomarker fontsize="28" x="480" y="4880" name="invert" orien="R180" />
        <branch name="B">
            <wire x2="752" y1="1248" y2="1248" x1="560" />
        </branch>
        <branch name="C">
            <wire x2="752" y1="1808" y2="1808" x1="560" />
        </branch>
        <branch name="D">
            <wire x2="752" y1="2368" y2="2368" x1="560" />
        </branch>
        <branch name="E">
            <wire x2="752" y1="2928" y2="2928" x1="560" />
        </branch>
        <branch name="F">
            <wire x2="752" y1="3488" y2="3488" x1="560" />
        </branch>
        <branch name="G">
            <wire x2="752" y1="4048" y2="4048" x1="560" />
        </branch>
        <branch name="H">
            <wire x2="752" y1="4608" y2="4608" x1="560" />
        </branch>
        <iomarker fontsize="28" x="560" y="1248" name="B" orien="R180" />
        <iomarker fontsize="28" x="560" y="1808" name="C" orien="R180" />
        <iomarker fontsize="28" x="560" y="2368" name="D" orien="R180" />
        <iomarker fontsize="28" x="560" y="2928" name="E" orien="R180" />
        <iomarker fontsize="28" x="560" y="3488" name="F" orien="R180" />
        <iomarker fontsize="28" x="560" y="4048" name="G" orien="R180" />
        <iomarker fontsize="28" x="560" y="4608" name="H" orien="R180" />
        <instance x="1216" y="624" name="XLXI_48" orien="R0" />
        <instance x="1216" y="944" name="XLXI_49" orien="R0" />
        <instance x="1216" y="1184" name="XLXI_50" orien="R0" />
        <instance x="1216" y="1744" name="XLXI_51" orien="R0" />
        <instance x="1216" y="2304" name="XLXI_52" orien="R0" />
        <instance x="1216" y="2864" name="XLXI_53" orien="R0" />
        <instance x="1216" y="3424" name="XLXI_54" orien="R0" />
        <instance x="1216" y="3984" name="XLXI_55" orien="R0" />
        <instance x="1216" y="4544" name="XLXI_56" orien="R0" />
        <instance x="1216" y="1504" name="XLXI_57" orien="R0" />
        <instance x="1216" y="2064" name="XLXI_58" orien="R0" />
        <instance x="1216" y="2624" name="XLXI_59" orien="R0" />
        <instance x="1216" y="3184" name="XLXI_60" orien="R0" />
        <instance x="1216" y="3744" name="XLXI_61" orien="R0" />
        <instance x="1216" y="4304" name="XLXI_62" orien="R0" />
        <instance x="1216" y="4864" name="XLXI_63" orien="R0" />
    </sheet>
</drawing>