<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Xout" />
        <signal name="clk_6m5" />
        <signal name="cpuclk" />
        <signal name="Mreq" />
        <signal name="Iorq" />
        <signal name="M1" />
        <signal name="hsync" />
        <signal name="XLXN_1" />
        <signal name="Wr" />
        <signal name="a1" />
        <signal name="stop_NMI" />
        <signal name="a0" />
        <signal name="start_NMI" />
        <signal name="NMI_on" />
        <signal name="Nmi" />
        <signal name="Rd" />
        <signal name="ioread_fe" />
        <signal name="start_vsync" />
        <signal name="vsync" />
        <signal name="stop_vsync" />
        <signal name="Csync" />
        <signal name="luminance" />
        <signal name="back_porch" />
        <signal name="d0" />
        <signal name="d1" />
        <signal name="d2" />
        <signal name="d3" />
        <signal name="d4" />
        <signal name="d5" />
        <signal name="d6" />
        <signal name="d7" />
        <signal name="a3" />
        <signal name="a4" />
        <signal name="a5" />
        <signal name="a6" />
        <signal name="a7" />
        <signal name="a8" />
        <signal name="video" />
        <signal name="force_NOP" />
        <signal name="m1_cycle_T3" />
        <signal name="m1_cycle_T4" />
        <signal name="char_latch_enable" />
        <signal name="invert" />
        <signal name="forced_NOP_start" />
        <signal name="XLXN_226" />
        <signal name="forced_NOP_cycle" />
        <signal name="forced_NOP_T4" />
        <signal name="load_enable" />
        <signal name="Xin" />
        <signal name="a14" />
        <signal name="Ramcs" />
        <signal name="Romcs" />
        <signal name="XLXN_293" />
        <signal name="XLXN_307" />
        <signal name="Kbd0" />
        <signal name="XLXN_311" />
        <signal name="XLXN_312" />
        <signal name="XLXN_313" />
        <signal name="XLXN_314" />
        <signal name="XLXN_315" />
        <signal name="XLXN_316" />
        <signal name="Kbd1" />
        <signal name="Kbd2" />
        <signal name="Kbd3" />
        <signal name="Kbd4" />
        <signal name="usa_uk" />
        <signal name="tape_in" />
        <signal name="XLXN_368" />
        <signal name="cpuclk_inv" />
        <signal name="m1_cycle" />
        <signal name="rfsh" />
        <signal name="XLXN_430" />
        <signal name="XLXN_431" />
        <signal name="XLXN_432" />
        <signal name="XLXN_433" />
        <signal name="XLXN_434" />
        <signal name="XLXN_435" />
        <signal name="XLXN_438" />
        <signal name="XLXN_448" />
        <signal name="XLXN_449" />
        <signal name="XLXN_450" />
        <signal name="XLXN_451" />
        <signal name="XLXN_452" />
        <signal name="XLXN_453" />
        <signal name="a15" />
        <signal name="Halt" />
        <signal name="XLXN_509" />
        <signal name="XLXN_517" />
        <signal name="XLXN_518" />
        <signal name="XLXN_520" />
        <signal name="a2" />
        <signal name="XLXN_541" />
        <signal name="black_on_white" />
        <signal name="border" />
        <signal name="Invert_screen" />
        <signal name="zx80_zx81" />
        <signal name="XLXN_542" />
        <signal name="XLXN_543" />
        <signal name="XLXN_544" />
        <signal name="XLXN_545" />
        <signal name="XLXN_546" />
        <port polarity="Output" name="Xout" />
        <port polarity="Output" name="cpuclk" />
        <port polarity="Input" name="Mreq" />
        <port polarity="Input" name="Iorq" />
        <port polarity="Input" name="M1" />
        <port polarity="Input" name="Wr" />
        <port polarity="BiDirectional" name="a1" />
        <port polarity="BiDirectional" name="a0" />
        <port polarity="Output" name="Nmi" />
        <port polarity="Input" name="Rd" />
        <port polarity="Output" name="Csync" />
        <port polarity="Output" name="luminance" />
        <port polarity="BiDirectional" name="d0" />
        <port polarity="BiDirectional" name="d1" />
        <port polarity="BiDirectional" name="d2" />
        <port polarity="BiDirectional" name="d3" />
        <port polarity="BiDirectional" name="d4" />
        <port polarity="BiDirectional" name="d5" />
        <port polarity="BiDirectional" name="d6" />
        <port polarity="BiDirectional" name="d7" />
        <port polarity="Output" name="a3" />
        <port polarity="Output" name="a4" />
        <port polarity="Output" name="a5" />
        <port polarity="Output" name="a6" />
        <port polarity="Output" name="a7" />
        <port polarity="Output" name="a8" />
        <port polarity="Input" name="Xin" />
        <port polarity="Input" name="a14" />
        <port polarity="Output" name="Ramcs" />
        <port polarity="Output" name="Romcs" />
        <port polarity="Input" name="Kbd0" />
        <port polarity="Input" name="Kbd1" />
        <port polarity="Input" name="Kbd2" />
        <port polarity="Input" name="Kbd3" />
        <port polarity="Input" name="Kbd4" />
        <port polarity="Input" name="usa_uk" />
        <port polarity="Input" name="tape_in" />
        <port polarity="Output" name="cpuclk_inv" />
        <port polarity="Input" name="a15" />
        <port polarity="Input" name="Halt" />
        <port polarity="Output" name="a2" />
        <port polarity="Input" name="border" />
        <port polarity="Input" name="Invert_screen" />
        <port polarity="Input" name="zx80_zx81" />
        <blockdef name="fdc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="32" y1="-64" y2="-64" x1="96" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="64" />
        </blockdef>
        <blockdef name="and3b3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="40" y1="-192" y2="-192" x1="0" />
            <circle r="12" cx="52" cy="-192" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
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
        <blockdef name="cb4ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-512" height="448" />
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
            <line x2="320" y1="-192" y2="-192" x1="384" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-96" x1="64" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="64" y1="-64" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="fd4ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <rect width="256" x="64" y="-512" height="448" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
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
        <blockdef name="nor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
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
        <blockdef name="and3b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
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
        <blockdef name="bufe">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-96" y2="-96" x1="96" />
            <line x2="96" y1="-48" y2="-96" x1="96" />
            <line x2="64" y1="-96" y2="-96" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="nand3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="216" y1="-128" y2="-128" x1="256" />
            <circle r="12" cx="204" cy="-128" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="xnor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
            <circle r="8" cx="220" cy="-96" />
            <line x2="256" y1="-96" y2="-96" x1="228" />
            <line x2="60" y1="-28" y2="-28" x1="60" />
        </blockdef>
        <blockdef name="clock_gen">
            <timestamp>2012-5-4T23:37:29</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="hsync_gen">
            <timestamp>2012-5-4T23:42:43</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="memory_select">
            <timestamp>2012-5-4T23:51:13</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="piso_register">
            <timestamp>2012-5-4T23:56:5</timestamp>
            <rect width="256" x="64" y="-768" height="768" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-736" y2="-736" x1="320" />
        </blockdef>
        <block symbolname="fdc" name="XLXI_8">
            <blockpin signalname="start_NMI" name="C" />
            <blockpin signalname="stop_NMI" name="CLR" />
            <blockpin signalname="XLXN_1" name="D" />
            <blockpin signalname="NMI_on" name="Q" />
        </block>
        <block symbolname="vcc" name="XLXI_9">
            <blockpin signalname="XLXN_1" name="P" />
        </block>
        <block symbolname="and3b3" name="XLXI_10">
            <blockpin signalname="Iorq" name="I0" />
            <blockpin signalname="a0" name="I1" />
            <blockpin signalname="Wr" name="I2" />
            <blockpin signalname="start_NMI" name="O" />
        </block>
        <block symbolname="and3b3" name="XLXI_11">
            <blockpin signalname="Iorq" name="I0" />
            <blockpin signalname="Wr" name="I1" />
            <blockpin signalname="a1" name="I2" />
            <blockpin signalname="stop_NMI" name="O" />
        </block>
        <block symbolname="and3b3" name="XLXI_13">
            <blockpin signalname="Iorq" name="I0" />
            <blockpin signalname="a0" name="I1" />
            <blockpin signalname="Rd" name="I2" />
            <blockpin signalname="ioread_fe" name="O" />
        </block>
        <block symbolname="and2b2" name="XLXI_15">
            <blockpin signalname="Iorq" name="I0" />
            <blockpin signalname="Wr" name="I1" />
            <blockpin signalname="stop_vsync" name="O" />
        </block>
        <block symbolname="fdc" name="XLXI_16">
            <blockpin signalname="start_vsync" name="C" />
            <blockpin signalname="stop_vsync" name="CLR" />
            <blockpin signalname="XLXN_541" name="D" />
            <blockpin signalname="vsync" name="Q" />
        </block>
        <block symbolname="and2b1" name="XLXI_17">
            <blockpin signalname="NMI_on" name="I0" />
            <blockpin signalname="ioread_fe" name="I1" />
            <blockpin signalname="start_vsync" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_18">
            <blockpin signalname="XLXN_541" name="P" />
        </block>
        <block symbolname="and4b3" name="XLXI_23">
            <blockpin signalname="back_porch" name="I0" />
            <blockpin signalname="hsync" name="I1" />
            <blockpin signalname="vsync" name="I2" />
            <blockpin signalname="video" name="I3" />
            <blockpin signalname="luminance" name="O" />
        </block>
        <block symbolname="cb4ce" name="line_counter">
            <blockpin signalname="hsync" name="C" />
            <blockpin signalname="XLXN_509" name="CE" />
            <blockpin signalname="vsync" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_517" name="Q0" />
            <blockpin signalname="XLXN_518" name="Q1" />
            <blockpin signalname="XLXN_520" name="Q2" />
            <blockpin name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="fd4ce" name="XLXI_88">
            <blockpin signalname="cpuclk_inv" name="C" />
            <blockpin signalname="char_latch_enable" name="CE" />
            <blockpin signalname="XLXN_368" name="CLR" />
            <blockpin signalname="d4" name="D0" />
            <blockpin signalname="d5" name="D1" />
            <blockpin signalname="forced_NOP_start" name="D2" />
            <blockpin signalname="d7" name="D3" />
            <blockpin signalname="XLXN_434" name="Q0" />
            <blockpin signalname="XLXN_435" name="Q1" />
            <blockpin signalname="forced_NOP_cycle" name="Q2" />
            <blockpin signalname="invert" name="Q3" />
        </block>
        <block symbolname="fd4ce" name="XLXI_89">
            <blockpin signalname="cpuclk_inv" name="C" />
            <blockpin signalname="char_latch_enable" name="CE" />
            <blockpin signalname="XLXN_368" name="CLR" />
            <blockpin signalname="d0" name="D0" />
            <blockpin signalname="d1" name="D1" />
            <blockpin signalname="d2" name="D2" />
            <blockpin signalname="d3" name="D3" />
            <blockpin signalname="XLXN_430" name="Q0" />
            <blockpin signalname="XLXN_431" name="Q1" />
            <blockpin signalname="XLXN_432" name="Q2" />
            <blockpin signalname="XLXN_433" name="Q3" />
        </block>
        <block symbolname="fd" name="XLXI_98">
            <blockpin signalname="cpuclk_inv" name="C" />
            <blockpin signalname="m1_cycle" name="D" />
            <blockpin signalname="XLXN_226" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_99">
            <blockpin signalname="cpuclk" name="C" />
            <blockpin signalname="XLXN_226" name="D" />
            <blockpin signalname="m1_cycle_T3" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_100">
            <blockpin signalname="cpuclk" name="C" />
            <blockpin signalname="m1_cycle_T3" name="D" />
            <blockpin signalname="m1_cycle_T4" name="Q" />
        </block>
        <block symbolname="and2" name="XLXI_120">
            <blockpin signalname="forced_NOP_cycle" name="I0" />
            <blockpin signalname="XLXN_226" name="I1" />
            <blockpin signalname="force_NOP" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_123">
            <blockpin signalname="m1_cycle_T4" name="I0" />
            <blockpin signalname="forced_NOP_cycle" name="I1" />
            <blockpin signalname="forced_NOP_T4" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_125">
            <blockpin signalname="vsync" name="I0" />
            <blockpin signalname="hsync" name="I1" />
            <blockpin signalname="Csync" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_130">
            <blockpin signalname="Kbd0" name="I0" />
            <blockpin signalname="ioread_fe" name="I1" />
            <blockpin signalname="XLXN_438" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_131">
            <blockpin signalname="force_NOP" name="I0" />
            <blockpin signalname="XLXN_438" name="I1" />
            <blockpin signalname="XLXN_307" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_140">
            <blockpin signalname="force_NOP" name="I0" />
            <blockpin signalname="XLXN_448" name="I1" />
            <blockpin signalname="XLXN_311" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_141">
            <blockpin signalname="force_NOP" name="I0" />
            <blockpin signalname="XLXN_449" name="I1" />
            <blockpin signalname="XLXN_312" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_142">
            <blockpin signalname="force_NOP" name="I0" />
            <blockpin signalname="XLXN_450" name="I1" />
            <blockpin signalname="XLXN_313" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_143">
            <blockpin signalname="force_NOP" name="I0" />
            <blockpin signalname="XLXN_451" name="I1" />
            <blockpin signalname="XLXN_314" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_144">
            <blockpin signalname="force_NOP" name="I0" />
            <blockpin signalname="XLXN_452" name="I1" />
            <blockpin signalname="XLXN_315" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_146">
            <blockpin signalname="force_NOP" name="I0" />
            <blockpin signalname="XLXN_453" name="I1" />
            <blockpin signalname="XLXN_316" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_147">
            <blockpin signalname="Kbd1" name="I0" />
            <blockpin signalname="ioread_fe" name="I1" />
            <blockpin signalname="XLXN_448" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_148">
            <blockpin signalname="Kbd2" name="I0" />
            <blockpin signalname="ioread_fe" name="I1" />
            <blockpin signalname="XLXN_449" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_149">
            <blockpin signalname="Kbd3" name="I0" />
            <blockpin signalname="ioread_fe" name="I1" />
            <blockpin signalname="XLXN_450" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_150">
            <blockpin signalname="Kbd4" name="I0" />
            <blockpin signalname="ioread_fe" name="I1" />
            <blockpin signalname="XLXN_451" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_152">
            <blockpin signalname="usa_uk" name="I0" />
            <blockpin signalname="ioread_fe" name="I1" />
            <blockpin signalname="XLXN_452" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_153">
            <blockpin signalname="tape_in" name="I0" />
            <blockpin signalname="ioread_fe" name="I1" />
            <blockpin signalname="XLXN_453" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_154">
            <blockpin signalname="XLXN_293" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_156">
            <blockpin signalname="XLXN_368" name="G" />
        </block>
        <block symbolname="bufe" name="XLXI_157">
            <blockpin signalname="XLXN_307" name="E" />
            <blockpin signalname="XLXN_293" name="I" />
            <blockpin signalname="d0" name="O" />
        </block>
        <block symbolname="bufe" name="XLXI_158">
            <blockpin signalname="XLXN_311" name="E" />
            <blockpin signalname="XLXN_293" name="I" />
            <blockpin signalname="d1" name="O" />
        </block>
        <block symbolname="bufe" name="XLXI_159">
            <blockpin signalname="XLXN_312" name="E" />
            <blockpin signalname="XLXN_293" name="I" />
            <blockpin signalname="d2" name="O" />
        </block>
        <block symbolname="bufe" name="XLXI_160">
            <blockpin signalname="XLXN_313" name="E" />
            <blockpin signalname="XLXN_293" name="I" />
            <blockpin signalname="d3" name="O" />
        </block>
        <block symbolname="bufe" name="XLXI_161">
            <blockpin signalname="XLXN_314" name="E" />
            <blockpin signalname="XLXN_293" name="I" />
            <blockpin signalname="d4" name="O" />
        </block>
        <block symbolname="bufe" name="XLXI_162">
            <blockpin signalname="force_NOP" name="E" />
            <blockpin signalname="XLXN_293" name="I" />
            <blockpin signalname="d5" name="O" />
        </block>
        <block symbolname="bufe" name="XLXI_163">
            <blockpin signalname="XLXN_315" name="E" />
            <blockpin signalname="XLXN_293" name="I" />
            <blockpin signalname="d6" name="O" />
        </block>
        <block symbolname="bufe" name="XLXI_164">
            <blockpin signalname="XLXN_316" name="E" />
            <blockpin signalname="XLXN_293" name="I" />
            <blockpin signalname="d7" name="O" />
        </block>
        <block symbolname="and2b2" name="XLXI_170">
            <blockpin signalname="Mreq" name="I0" />
            <blockpin signalname="M1" name="I1" />
            <blockpin signalname="m1_cycle" name="O" />
        </block>
        <block symbolname="bufe" name="XLXI_171">
            <blockpin signalname="rfsh" name="E" />
            <blockpin signalname="XLXN_430" name="I" />
            <blockpin signalname="a3" name="O" />
        </block>
        <block symbolname="bufe" name="XLXI_172">
            <blockpin signalname="rfsh" name="E" />
            <blockpin signalname="XLXN_431" name="I" />
            <blockpin signalname="a4" name="O" />
        </block>
        <block symbolname="bufe" name="XLXI_173">
            <blockpin signalname="rfsh" name="E" />
            <blockpin signalname="XLXN_432" name="I" />
            <blockpin signalname="a5" name="O" />
        </block>
        <block symbolname="bufe" name="XLXI_174">
            <blockpin signalname="rfsh" name="E" />
            <blockpin signalname="XLXN_433" name="I" />
            <blockpin signalname="a6" name="O" />
        </block>
        <block symbolname="bufe" name="XLXI_175">
            <blockpin signalname="rfsh" name="E" />
            <blockpin signalname="XLXN_434" name="I" />
            <blockpin signalname="a7" name="O" />
        </block>
        <block symbolname="bufe" name="XLXI_176">
            <blockpin signalname="rfsh" name="E" />
            <blockpin signalname="XLXN_435" name="I" />
            <blockpin signalname="a8" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_177">
            <blockpin signalname="m1_cycle_T4" name="I0" />
            <blockpin signalname="m1_cycle_T3" name="I1" />
            <blockpin signalname="rfsh" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_179">
            <blockpin signalname="d6" name="I0" />
            <blockpin signalname="a15" name="I1" />
            <blockpin signalname="Halt" name="I2" />
            <blockpin signalname="forced_NOP_start" name="O" />
        </block>
        <block symbolname="and2b2" name="XLXI_180">
            <blockpin signalname="Mreq" name="I0" />
            <blockpin signalname="rfsh" name="I1" />
            <blockpin signalname="char_latch_enable" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_184">
            <blockpin signalname="XLXN_509" name="P" />
        </block>
        <block symbolname="bufe" name="XLXI_185">
            <blockpin signalname="rfsh" name="E" />
            <blockpin signalname="XLXN_517" name="I" />
            <blockpin signalname="a0" name="O" />
        </block>
        <block symbolname="bufe" name="XLXI_186">
            <blockpin signalname="rfsh" name="E" />
            <blockpin signalname="XLXN_518" name="I" />
            <blockpin signalname="a1" name="O" />
        </block>
        <block symbolname="bufe" name="XLXI_187">
            <blockpin signalname="rfsh" name="E" />
            <blockpin signalname="XLXN_520" name="I" />
            <blockpin signalname="a2" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_189">
            <blockpin signalname="forced_NOP_T4" name="I0" />
            <blockpin signalname="Mreq" name="I1" />
            <blockpin signalname="load_enable" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_193">
            <blockpin signalname="NMI_on" name="I0" />
            <blockpin signalname="zx80_zx81" name="I1" />
            <blockpin signalname="hsync" name="I2" />
            <blockpin signalname="Nmi" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_194">
            <blockpin signalname="Invert_screen" name="I0" />
            <blockpin signalname="black_on_white" name="I1" />
            <blockpin signalname="video" name="O" />
        </block>
        <block symbolname="clock_gen" name="clock">
            <blockpin signalname="Xin" name="Xin" />
            <blockpin signalname="Xout" name="Xout" />
            <blockpin signalname="clk_6m5" name="clk_6m5" />
            <blockpin signalname="cpuclk" name="clk_3m25" />
            <blockpin signalname="cpuclk_inv" name="clk_3m25_inv" />
        </block>
        <block symbolname="hsync_gen" name="hsync_sym">
            <blockpin signalname="cpuclk" name="clock" />
            <blockpin signalname="Iorq" name="Iorq" />
            <blockpin signalname="M1" name="M1" />
            <blockpin signalname="hsync" name="hsync" />
            <blockpin signalname="back_porch" name="back_porch" />
        </block>
        <block symbolname="memory_select" name="mem_select">
            <blockpin signalname="Mreq" name="Mreq" />
            <blockpin signalname="a14" name="a14" />
            <blockpin signalname="forced_NOP_T4" name="stretch" />
            <blockpin signalname="Ramcs" name="Ramcs" />
            <blockpin signalname="Romcs" name="Romcs" />
        </block>
        <block symbolname="piso_register" name="video_shifter">
            <blockpin signalname="clk_6m5" name="clock" />
            <blockpin signalname="border" name="serial_in" />
            <blockpin signalname="load_enable" name="load_enable" />
            <blockpin signalname="invert" name="invert" />
            <blockpin signalname="d0" name="A" />
            <blockpin signalname="d1" name="B" />
            <blockpin signalname="d2" name="C" />
            <blockpin signalname="d3" name="D" />
            <blockpin signalname="d4" name="E" />
            <blockpin signalname="d5" name="F" />
            <blockpin signalname="d6" name="G" />
            <blockpin signalname="d7" name="H" />
            <blockpin signalname="black_on_white" name="serial_out" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <branch name="XLXN_1">
            <wire x2="2480" y1="1168" y2="1184" x1="2480" />
            <wire x2="2528" y1="1184" y2="1184" x1="2480" />
        </branch>
        <branch name="start_NMI">
            <wire x2="2528" y1="1312" y2="1312" x1="2336" />
        </branch>
        <branch name="Nmi">
            <wire x2="2800" y1="880" y2="880" x1="2720" />
        </branch>
        <branch name="start_vsync">
            <wire x2="2704" y1="1824" y2="1824" x1="2672" />
        </branch>
        <branch name="stop_vsync">
            <wire x2="2704" y1="1920" y2="1920" x1="2336" />
        </branch>
        <branch name="Csync">
            <wire x2="3680" y1="688" y2="688" x1="3632" />
        </branch>
        <branch name="luminance">
            <wire x2="3680" y1="1168" y2="1168" x1="3632" />
        </branch>
        <branch name="a3">
            <wire x2="2736" y1="2560" y2="2560" x1="2720" />
        </branch>
        <branch name="a4">
            <wire x2="2736" y1="2704" y2="2704" x1="2720" />
        </branch>
        <branch name="a5">
            <wire x2="2736" y1="2848" y2="2848" x1="2720" />
        </branch>
        <branch name="a6">
            <wire x2="2736" y1="2992" y2="2992" x1="2720" />
        </branch>
        <branch name="a7">
            <wire x2="2736" y1="3136" y2="3136" x1="2720" />
        </branch>
        <branch name="a8">
            <wire x2="2736" y1="3280" y2="3280" x1="2720" />
        </branch>
        <iomarker fontsize="28" x="400" y="2240" name="d0" orien="R180" />
        <iomarker fontsize="28" x="400" y="2272" name="d1" orien="R180" />
        <iomarker fontsize="28" x="400" y="2304" name="d2" orien="R180" />
        <iomarker fontsize="28" x="400" y="2336" name="d3" orien="R180" />
        <iomarker fontsize="28" x="400" y="2368" name="d4" orien="R180" />
        <iomarker fontsize="28" x="400" y="2464" name="d7" orien="R180" />
        <iomarker fontsize="28" x="400" y="2400" name="d5" orien="R180" />
        <iomarker fontsize="28" x="400" y="2432" name="d6" orien="R180" />
        <branch name="XLXN_226">
            <wire x2="2256" y1="3872" y2="3872" x1="2240" />
            <wire x2="2256" y1="3872" y2="4064" x1="2256" />
            <wire x2="2272" y1="4064" y2="4064" x1="2256" />
            <wire x2="2256" y1="4064" y2="4064" x1="2240" />
        </branch>
        <branch name="Xin">
            <wire x2="256" y1="1776" y2="1776" x1="240" />
        </branch>
        <iomarker fontsize="28" x="240" y="1776" name="Xin" orien="R180" />
        <branch name="Xout">
            <wire x2="720" y1="1776" y2="1776" x1="640" />
        </branch>
        <branch name="clk_6m5">
            <wire x2="688" y1="1840" y2="1840" x1="640" />
            <wire x2="688" y1="1840" y2="2144" x1="688" />
            <wire x2="3216" y1="2144" y2="2144" x1="688" />
        </branch>
        <branch name="a14">
            <wire x2="3376" y1="3520" y2="3520" x1="3360" />
        </branch>
        <branch name="Ramcs">
            <wire x2="3840" y1="3456" y2="3456" x1="3760" />
        </branch>
        <branch name="Romcs">
            <wire x2="3840" y1="3584" y2="3584" x1="3760" />
        </branch>
        <instance x="800" y="2752" name="XLXI_131" orien="R0" />
        <instance x="800" y="2912" name="XLXI_140" orien="R0" />
        <instance x="800" y="3072" name="XLXI_141" orien="R0" />
        <instance x="800" y="3232" name="XLXI_142" orien="R0" />
        <instance x="800" y="3392" name="XLXI_143" orien="R0" />
        <instance x="800" y="3872" name="XLXI_146" orien="R0" />
        <instance x="800" y="3712" name="XLXI_144" orien="R0" />
        <branch name="XLXN_293">
            <wire x2="1120" y1="2720" y2="2720" x1="1104" />
            <wire x2="1104" y1="2720" y2="2880" x1="1104" />
            <wire x2="1120" y1="2880" y2="2880" x1="1104" />
            <wire x2="1104" y1="2880" y2="3040" x1="1104" />
            <wire x2="1120" y1="3040" y2="3040" x1="1104" />
            <wire x2="1104" y1="3040" y2="3200" x1="1104" />
            <wire x2="1120" y1="3200" y2="3200" x1="1104" />
            <wire x2="1104" y1="3200" y2="3360" x1="1104" />
            <wire x2="1120" y1="3360" y2="3360" x1="1104" />
            <wire x2="1104" y1="3360" y2="3520" x1="1104" />
            <wire x2="1120" y1="3520" y2="3520" x1="1104" />
            <wire x2="1104" y1="3520" y2="3680" x1="1104" />
            <wire x2="1120" y1="3680" y2="3680" x1="1104" />
            <wire x2="1104" y1="3680" y2="3840" x1="1104" />
            <wire x2="1120" y1="3840" y2="3840" x1="1104" />
            <wire x2="1104" y1="3840" y2="3952" x1="1104" />
        </branch>
        <branch name="XLXN_307">
            <wire x2="1120" y1="2656" y2="2656" x1="1056" />
        </branch>
        <branch name="Kbd0">
            <wire x2="496" y1="2656" y2="2656" x1="400" />
        </branch>
        <branch name="XLXN_311">
            <wire x2="1120" y1="2816" y2="2816" x1="1056" />
        </branch>
        <branch name="XLXN_312">
            <wire x2="1120" y1="2976" y2="2976" x1="1056" />
        </branch>
        <branch name="XLXN_313">
            <wire x2="1120" y1="3136" y2="3136" x1="1056" />
        </branch>
        <branch name="XLXN_314">
            <wire x2="1120" y1="3296" y2="3296" x1="1056" />
        </branch>
        <branch name="XLXN_315">
            <wire x2="1120" y1="3616" y2="3616" x1="1056" />
        </branch>
        <branch name="XLXN_316">
            <wire x2="1120" y1="3776" y2="3776" x1="1056" />
        </branch>
        <branch name="Kbd1">
            <wire x2="496" y1="2816" y2="2816" x1="400" />
        </branch>
        <branch name="Kbd2">
            <wire x2="496" y1="2976" y2="2976" x1="400" />
        </branch>
        <branch name="Kbd3">
            <wire x2="496" y1="3136" y2="3136" x1="400" />
        </branch>
        <branch name="Kbd4">
            <wire x2="496" y1="3296" y2="3296" x1="400" />
        </branch>
        <branch name="usa_uk">
            <wire x2="496" y1="3616" y2="3616" x1="400" />
        </branch>
        <branch name="tape_in">
            <wire x2="496" y1="3776" y2="3776" x1="400" />
        </branch>
        <branch name="d1">
            <wire x2="1536" y1="2272" y2="2272" x1="400" />
            <wire x2="1536" y1="2272" y2="2784" x1="1536" />
            <wire x2="1536" y1="2784" y2="2880" x1="1536" />
            <wire x2="1856" y1="2784" y2="2784" x1="1536" />
            <wire x2="3072" y1="2272" y2="2272" x1="1536" />
            <wire x2="3072" y1="2272" y2="2464" x1="3072" />
            <wire x2="3216" y1="2464" y2="2464" x1="3072" />
            <wire x2="1536" y1="2880" y2="2880" x1="1344" />
        </branch>
        <branch name="d2">
            <wire x2="1552" y1="2304" y2="2304" x1="400" />
            <wire x2="1552" y1="2304" y2="2848" x1="1552" />
            <wire x2="1552" y1="2848" y2="3040" x1="1552" />
            <wire x2="1856" y1="2848" y2="2848" x1="1552" />
            <wire x2="3040" y1="2304" y2="2304" x1="1552" />
            <wire x2="3040" y1="2304" y2="2528" x1="3040" />
            <wire x2="3216" y1="2528" y2="2528" x1="3040" />
            <wire x2="1552" y1="3040" y2="3040" x1="1344" />
        </branch>
        <branch name="d3">
            <wire x2="1568" y1="2336" y2="2336" x1="400" />
            <wire x2="1568" y1="2336" y2="2912" x1="1568" />
            <wire x2="1568" y1="2912" y2="3200" x1="1568" />
            <wire x2="1856" y1="2912" y2="2912" x1="1568" />
            <wire x2="3008" y1="2336" y2="2336" x1="1568" />
            <wire x2="3008" y1="2336" y2="2592" x1="3008" />
            <wire x2="3216" y1="2592" y2="2592" x1="3008" />
            <wire x2="1568" y1="3200" y2="3200" x1="1344" />
        </branch>
        <branch name="d4">
            <wire x2="1584" y1="2368" y2="2368" x1="400" />
            <wire x2="1584" y1="2368" y2="3296" x1="1584" />
            <wire x2="1584" y1="3296" y2="3360" x1="1584" />
            <wire x2="1856" y1="3296" y2="3296" x1="1584" />
            <wire x2="2976" y1="2368" y2="2368" x1="1584" />
            <wire x2="2976" y1="2368" y2="2656" x1="2976" />
            <wire x2="3216" y1="2656" y2="2656" x1="2976" />
            <wire x2="1584" y1="3360" y2="3360" x1="1344" />
        </branch>
        <branch name="d5">
            <wire x2="1600" y1="2400" y2="2400" x1="400" />
            <wire x2="1600" y1="2400" y2="3360" x1="1600" />
            <wire x2="1600" y1="3360" y2="3520" x1="1600" />
            <wire x2="1856" y1="3360" y2="3360" x1="1600" />
            <wire x2="2944" y1="2400" y2="2400" x1="1600" />
            <wire x2="2944" y1="2400" y2="2720" x1="2944" />
            <wire x2="3216" y1="2720" y2="2720" x1="2944" />
            <wire x2="1600" y1="3520" y2="3520" x1="1344" />
        </branch>
        <branch name="d7">
            <wire x2="1632" y1="2464" y2="2464" x1="400" />
            <wire x2="1632" y1="2464" y2="3488" x1="1632" />
            <wire x2="1632" y1="3488" y2="3840" x1="1632" />
            <wire x2="1856" y1="3488" y2="3488" x1="1632" />
            <wire x2="2880" y1="2464" y2="2464" x1="1632" />
            <wire x2="2880" y1="2464" y2="2848" x1="2880" />
            <wire x2="3216" y1="2848" y2="2848" x1="2880" />
            <wire x2="1632" y1="3840" y2="3840" x1="1344" />
        </branch>
        <branch name="forced_NOP_cycle">
            <wire x2="2256" y1="3424" y2="3424" x1="2240" />
            <wire x2="2256" y1="3424" y2="3584" x1="2256" />
            <wire x2="2928" y1="3584" y2="3584" x1="2256" />
            <wire x2="2256" y1="3584" y2="3808" x1="2256" />
            <wire x2="2256" y1="3808" y2="3808" x1="2240" />
        </branch>
        <instance x="1856" y="3744" name="XLXI_88" orien="R0" />
        <instance x="1856" y="3168" name="XLXI_89" orien="R0" />
        <instance x="1120" y="2752" name="XLXI_157" orien="R0" />
        <instance x="1120" y="2912" name="XLXI_158" orien="R0" />
        <instance x="1120" y="3072" name="XLXI_159" orien="R0" />
        <instance x="1120" y="3232" name="XLXI_160" orien="R0" />
        <instance x="1120" y="3392" name="XLXI_161" orien="R0" />
        <instance x="1120" y="3552" name="XLXI_162" orien="R0" />
        <instance x="1120" y="3712" name="XLXI_163" orien="R0" />
        <instance x="1120" y="3872" name="XLXI_164" orien="R0" />
        <branch name="cpuclk_inv">
            <wire x2="672" y1="1968" y2="1968" x1="640" />
            <wire x2="672" y1="1968" y2="2160" x1="672" />
            <wire x2="1776" y1="2160" y2="2160" x1="672" />
            <wire x2="1776" y1="2160" y2="3040" x1="1776" />
            <wire x2="1856" y1="3040" y2="3040" x1="1776" />
            <wire x2="1776" y1="3040" y2="3616" x1="1776" />
            <wire x2="1856" y1="3616" y2="3616" x1="1776" />
            <wire x2="1776" y1="3616" y2="4192" x1="1776" />
            <wire x2="1856" y1="4192" y2="4192" x1="1776" />
            <wire x2="720" y1="1968" y2="1968" x1="672" />
        </branch>
        <instance x="2496" y="2528" name="XLXI_171" orien="M180" />
        <instance x="2496" y="2672" name="XLXI_172" orien="M180" />
        <instance x="2496" y="2816" name="XLXI_173" orien="M180" />
        <instance x="2496" y="2960" name="XLXI_174" orien="M180" />
        <instance x="2496" y="3104" name="XLXI_175" orien="M180" />
        <instance x="2496" y="3248" name="XLXI_176" orien="M180" />
        <iomarker fontsize="28" x="2736" y="2560" name="a3" orien="R0" />
        <iomarker fontsize="28" x="2736" y="2704" name="a4" orien="R0" />
        <iomarker fontsize="28" x="2736" y="2848" name="a5" orien="R0" />
        <iomarker fontsize="28" x="2736" y="2992" name="a6" orien="R0" />
        <iomarker fontsize="28" x="2736" y="3136" name="a7" orien="R0" />
        <iomarker fontsize="28" x="2736" y="3280" name="a8" orien="R0" />
        <branch name="XLXN_430">
            <wire x2="2320" y1="2720" y2="2720" x1="2240" />
            <wire x2="2496" y1="2560" y2="2560" x1="2320" />
            <wire x2="2320" y1="2560" y2="2720" x1="2320" />
        </branch>
        <branch name="XLXN_431">
            <wire x2="2368" y1="2784" y2="2784" x1="2240" />
            <wire x2="2496" y1="2704" y2="2704" x1="2368" />
            <wire x2="2368" y1="2704" y2="2784" x1="2368" />
        </branch>
        <branch name="XLXN_432">
            <wire x2="2496" y1="2848" y2="2848" x1="2240" />
        </branch>
        <branch name="XLXN_433">
            <wire x2="2320" y1="2912" y2="2912" x1="2240" />
            <wire x2="2320" y1="2912" y2="2992" x1="2320" />
            <wire x2="2496" y1="2992" y2="2992" x1="2320" />
        </branch>
        <branch name="XLXN_434">
            <wire x2="2320" y1="3296" y2="3296" x1="2240" />
            <wire x2="2496" y1="3136" y2="3136" x1="2320" />
            <wire x2="2320" y1="3136" y2="3296" x1="2320" />
        </branch>
        <branch name="XLXN_435">
            <wire x2="2368" y1="3360" y2="3360" x1="2240" />
            <wire x2="2496" y1="3280" y2="3280" x1="2368" />
            <wire x2="2368" y1="3280" y2="3360" x1="2368" />
        </branch>
        <branch name="force_NOP">
            <wire x2="800" y1="2688" y2="2688" x1="784" />
            <wire x2="784" y1="2688" y2="2848" x1="784" />
            <wire x2="800" y1="2848" y2="2848" x1="784" />
            <wire x2="784" y1="2848" y2="3008" x1="784" />
            <wire x2="800" y1="3008" y2="3008" x1="784" />
            <wire x2="784" y1="3008" y2="3168" x1="784" />
            <wire x2="800" y1="3168" y2="3168" x1="784" />
            <wire x2="784" y1="3168" y2="3328" x1="784" />
            <wire x2="800" y1="3328" y2="3328" x1="784" />
            <wire x2="784" y1="3328" y2="3456" x1="784" />
            <wire x2="784" y1="3456" y2="3648" x1="784" />
            <wire x2="800" y1="3648" y2="3648" x1="784" />
            <wire x2="784" y1="3648" y2="3808" x1="784" />
            <wire x2="800" y1="3808" y2="3808" x1="784" />
            <wire x2="784" y1="3808" y2="3920" x1="784" />
            <wire x2="1872" y1="3920" y2="3920" x1="784" />
            <wire x2="1120" y1="3456" y2="3456" x1="784" />
            <wire x2="1984" y1="3840" y2="3840" x1="1872" />
            <wire x2="1872" y1="3840" y2="3920" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="400" y="2656" name="Kbd0" orien="R180" />
        <instance x="496" y="2720" name="XLXI_130" orien="R0" />
        <branch name="XLXN_438">
            <wire x2="800" y1="2624" y2="2624" x1="752" />
        </branch>
        <instance x="496" y="2880" name="XLXI_147" orien="R0" />
        <iomarker fontsize="28" x="400" y="2816" name="Kbd1" orien="R180" />
        <instance x="496" y="3040" name="XLXI_148" orien="R0" />
        <iomarker fontsize="28" x="400" y="2976" name="Kbd2" orien="R180" />
        <instance x="496" y="3200" name="XLXI_149" orien="R0" />
        <iomarker fontsize="28" x="400" y="3136" name="Kbd3" orien="R180" />
        <instance x="496" y="3360" name="XLXI_150" orien="R0" />
        <iomarker fontsize="28" x="400" y="3296" name="Kbd4" orien="R180" />
        <instance x="496" y="3680" name="XLXI_152" orien="R0" />
        <iomarker fontsize="28" x="400" y="3616" name="usa_uk" orien="R180" />
        <instance x="496" y="3840" name="XLXI_153" orien="R0" />
        <iomarker fontsize="28" x="400" y="3776" name="tape_in" orien="R180" />
        <branch name="XLXN_448">
            <wire x2="800" y1="2784" y2="2784" x1="752" />
        </branch>
        <branch name="XLXN_449">
            <wire x2="800" y1="2944" y2="2944" x1="752" />
        </branch>
        <branch name="XLXN_450">
            <wire x2="800" y1="3104" y2="3104" x1="752" />
        </branch>
        <branch name="XLXN_451">
            <wire x2="800" y1="3264" y2="3264" x1="752" />
        </branch>
        <branch name="XLXN_452">
            <wire x2="800" y1="3584" y2="3584" x1="752" />
        </branch>
        <branch name="XLXN_453">
            <wire x2="800" y1="3744" y2="3744" x1="752" />
        </branch>
        <instance x="1856" y="4320" name="XLXI_98" orien="R0" />
        <instance x="1040" y="4080" name="XLXI_154" orien="R0" />
        <instance x="2240" y="3744" name="XLXI_120" orien="R180" />
        <instance x="2272" y="4320" name="XLXI_99" orien="R0" />
        <instance x="1376" y="4112" name="XLXI_179" orien="M180" />
        <branch name="a15">
            <wire x2="1376" y1="4240" y2="4240" x1="1280" />
        </branch>
        <branch name="Halt">
            <wire x2="1376" y1="4304" y2="4304" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1280" y="4240" name="a15" orien="R180" />
        <iomarker fontsize="28" x="1280" y="4304" name="Halt" orien="R180" />
        <branch name="forced_NOP_start">
            <wire x2="1680" y1="4240" y2="4240" x1="1632" />
            <wire x2="1680" y1="3424" y2="4240" x1="1680" />
            <wire x2="1856" y1="3424" y2="3424" x1="1680" />
        </branch>
        <branch name="d6">
            <wire x2="1616" y1="2432" y2="2432" x1="400" />
            <wire x2="2912" y1="2432" y2="2432" x1="1616" />
            <wire x2="2912" y1="2432" y2="2784" x1="2912" />
            <wire x2="3216" y1="2784" y2="2784" x1="2912" />
            <wire x2="1616" y1="2432" y2="3680" x1="1616" />
            <wire x2="1360" y1="3680" y2="3680" x1="1344" />
            <wire x2="1360" y1="3680" y2="4176" x1="1360" />
            <wire x2="1376" y1="4176" y2="4176" x1="1360" />
            <wire x2="1616" y1="3680" y2="3680" x1="1360" />
        </branch>
        <instance x="1632" y="3280" name="XLXI_156" orien="R0" />
        <branch name="XLXN_368">
            <wire x2="1840" y1="3136" y2="3136" x1="1696" />
            <wire x2="1856" y1="3136" y2="3136" x1="1840" />
            <wire x2="1840" y1="3136" y2="3712" x1="1840" />
            <wire x2="1856" y1="3712" y2="3712" x1="1840" />
            <wire x2="1696" y1="3136" y2="3152" x1="1696" />
        </branch>
        <instance x="2688" y="4320" name="XLXI_100" orien="R0" />
        <instance x="2576" y="3648" name="XLXI_180" orien="R180" />
        <branch name="char_latch_enable">
            <wire x2="1856" y1="2976" y2="2976" x1="1808" />
            <wire x2="1808" y1="2976" y2="3552" x1="1808" />
            <wire x2="1856" y1="3552" y2="3552" x1="1808" />
            <wire x2="1808" y1="3552" y2="3744" x1="1808" />
            <wire x2="2320" y1="3744" y2="3744" x1="1808" />
        </branch>
        <instance x="2896" y="3680" name="XLXI_177" orien="R180" />
        <branch name="m1_cycle_T4">
            <wire x2="2912" y1="3744" y2="3744" x1="2896" />
            <wire x2="3088" y1="3744" y2="3744" x1="2912" />
            <wire x2="3088" y1="3744" y2="4064" x1="3088" />
            <wire x2="2928" y1="3648" y2="3648" x1="2912" />
            <wire x2="2912" y1="3648" y2="3744" x1="2912" />
            <wire x2="3088" y1="4064" y2="4064" x1="3072" />
        </branch>
        <branch name="m1_cycle_T3">
            <wire x2="2672" y1="4064" y2="4064" x1="2656" />
            <wire x2="2688" y1="4064" y2="4064" x1="2672" />
            <wire x2="2672" y1="3888" y2="4064" x1="2672" />
            <wire x2="2912" y1="3888" y2="3888" x1="2672" />
            <wire x2="2912" y1="3808" y2="3808" x1="2896" />
            <wire x2="2912" y1="3808" y2="3888" x1="2912" />
        </branch>
        <instance x="2928" y="3712" name="XLXI_123" orien="R0" />
        <branch name="m1_cycle">
            <wire x2="1392" y1="1952" y2="1952" x1="1248" />
            <wire x2="1392" y1="1952" y2="4064" x1="1392" />
            <wire x2="1856" y1="4064" y2="4064" x1="1392" />
        </branch>
        <instance x="992" y="2048" name="XLXI_170" orien="R0" />
        <instance x="1136" y="1824" name="line_counter" orien="R0" />
        <instance x="1024" y="1616" name="XLXI_184" orien="R0" />
        <branch name="XLXN_509">
            <wire x2="1088" y1="1616" y2="1632" x1="1088" />
            <wire x2="1136" y1="1632" y2="1632" x1="1088" />
        </branch>
        <iomarker fontsize="28" x="400" y="2144" name="Mreq" orien="R180" />
        <iomarker fontsize="28" x="384" y="2096" name="Iorq" orien="R180" />
        <branch name="XLXN_517">
            <wire x2="1632" y1="1376" y2="1376" x1="1520" />
        </branch>
        <branch name="XLXN_518">
            <wire x2="1584" y1="1440" y2="1440" x1="1520" />
            <wire x2="1584" y1="1440" y2="1520" x1="1584" />
            <wire x2="1632" y1="1520" y2="1520" x1="1584" />
        </branch>
        <branch name="Rd">
            <wire x2="2032" y1="960" y2="960" x1="1840" />
            <wire x2="2032" y1="960" y2="1664" x1="2032" />
            <wire x2="2080" y1="1664" y2="1664" x1="2032" />
        </branch>
        <branch name="ioread_fe">
            <wire x2="480" y1="2512" y2="2592" x1="480" />
            <wire x2="496" y1="2592" y2="2592" x1="480" />
            <wire x2="480" y1="2592" y2="2752" x1="480" />
            <wire x2="496" y1="2752" y2="2752" x1="480" />
            <wire x2="480" y1="2752" y2="2912" x1="480" />
            <wire x2="496" y1="2912" y2="2912" x1="480" />
            <wire x2="480" y1="2912" y2="3072" x1="480" />
            <wire x2="496" y1="3072" y2="3072" x1="480" />
            <wire x2="480" y1="3072" y2="3232" x1="480" />
            <wire x2="496" y1="3232" y2="3232" x1="480" />
            <wire x2="480" y1="3232" y2="3552" x1="480" />
            <wire x2="496" y1="3552" y2="3552" x1="480" />
            <wire x2="480" y1="3552" y2="3712" x1="480" />
            <wire x2="496" y1="3712" y2="3712" x1="480" />
            <wire x2="2352" y1="2512" y2="2512" x1="480" />
            <wire x2="2352" y1="1728" y2="1728" x1="2336" />
            <wire x2="2352" y1="1728" y2="1856" x1="2352" />
            <wire x2="2416" y1="1856" y2="1856" x1="2352" />
            <wire x2="2352" y1="1856" y2="2512" x1="2352" />
        </branch>
        <branch name="stop_NMI">
            <wire x2="2352" y1="1520" y2="1520" x1="2336" />
            <wire x2="2352" y1="1408" y2="1520" x1="2352" />
            <wire x2="2528" y1="1408" y2="1408" x1="2352" />
        </branch>
        <branch name="Wr">
            <wire x2="2000" y1="1024" y2="1024" x1="1840" />
            <wire x2="2000" y1="1024" y2="1248" x1="2000" />
            <wire x2="2080" y1="1248" y2="1248" x1="2000" />
            <wire x2="2000" y1="1248" y2="1520" x1="2000" />
            <wire x2="2080" y1="1520" y2="1520" x1="2000" />
            <wire x2="2000" y1="1520" y2="1888" x1="2000" />
            <wire x2="2080" y1="1888" y2="1888" x1="2000" />
        </branch>
        <branch name="rfsh">
            <wire x2="1632" y1="1440" y2="1440" x1="1616" />
            <wire x2="1616" y1="1440" y2="1584" x1="1616" />
            <wire x2="1632" y1="1584" y2="1584" x1="1616" />
            <wire x2="1616" y1="1584" y2="1728" x1="1616" />
            <wire x2="1632" y1="1728" y2="1728" x1="1616" />
            <wire x2="1616" y1="1728" y2="2080" x1="1616" />
            <wire x2="2480" y1="2080" y2="2080" x1="1616" />
            <wire x2="2480" y1="2080" y2="2624" x1="2480" />
            <wire x2="2496" y1="2624" y2="2624" x1="2480" />
            <wire x2="2480" y1="2624" y2="2768" x1="2480" />
            <wire x2="2496" y1="2768" y2="2768" x1="2480" />
            <wire x2="2480" y1="2768" y2="2912" x1="2480" />
            <wire x2="2496" y1="2912" y2="2912" x1="2480" />
            <wire x2="2480" y1="2912" y2="3056" x1="2480" />
            <wire x2="2496" y1="3056" y2="3056" x1="2480" />
            <wire x2="2480" y1="3056" y2="3200" x1="2480" />
            <wire x2="2496" y1="3200" y2="3200" x1="2480" />
            <wire x2="2480" y1="3200" y2="3344" x1="2480" />
            <wire x2="2496" y1="3344" y2="3344" x1="2480" />
            <wire x2="2480" y1="3344" y2="3408" x1="2480" />
            <wire x2="2592" y1="3408" y2="3408" x1="2480" />
            <wire x2="2592" y1="3408" y2="3776" x1="2592" />
            <wire x2="2640" y1="3776" y2="3776" x1="2592" />
            <wire x2="2592" y1="3776" y2="3776" x1="2576" />
        </branch>
        <branch name="a0">
            <wire x2="1968" y1="1120" y2="1120" x1="1840" />
            <wire x2="1968" y1="1120" y2="1312" x1="1968" />
            <wire x2="2080" y1="1312" y2="1312" x1="1968" />
            <wire x2="1968" y1="1312" y2="1376" x1="1968" />
            <wire x2="1968" y1="1376" y2="1728" x1="1968" />
            <wire x2="2080" y1="1728" y2="1728" x1="1968" />
            <wire x2="1968" y1="1376" y2="1376" x1="1856" />
        </branch>
        <branch name="a1">
            <wire x2="1936" y1="1168" y2="1168" x1="1840" />
            <wire x2="1936" y1="1168" y2="1456" x1="1936" />
            <wire x2="2080" y1="1456" y2="1456" x1="1936" />
            <wire x2="1936" y1="1456" y2="1520" x1="1936" />
            <wire x2="1936" y1="1520" y2="1520" x1="1856" />
        </branch>
        <branch name="a2">
            <wire x2="1872" y1="1664" y2="1664" x1="1856" />
        </branch>
        <instance x="2080" y="2016" name="XLXI_15" orien="R0" />
        <instance x="2080" y="1856" name="XLXI_13" orien="R0" />
        <instance x="2080" y="1648" name="XLXI_11" orien="R0" />
        <instance x="2080" y="1440" name="XLXI_10" orien="R0" />
        <iomarker fontsize="28" x="1872" y="1664" name="a2" orien="R0" />
        <instance x="1632" y="1632" name="XLXI_187" orien="M180" />
        <branch name="XLXN_520">
            <wire x2="1552" y1="1504" y2="1504" x1="1520" />
            <wire x2="1552" y1="1504" y2="1664" x1="1552" />
            <wire x2="1632" y1="1664" y2="1664" x1="1552" />
        </branch>
        <instance x="1632" y="1488" name="XLXI_186" orien="M180" />
        <instance x="1632" y="1344" name="XLXI_185" orien="M180" />
        <branch name="XLXN_541">
            <wire x2="2656" y1="1680" y2="1696" x1="2656" />
            <wire x2="2704" y1="1696" y2="1696" x1="2656" />
        </branch>
        <instance x="2528" y="1440" name="XLXI_8" orien="R0" />
        <instance x="2416" y="1728" name="XLXI_17" orien="M180" />
        <instance x="2592" y="1680" name="XLXI_18" orien="R0" />
        <instance x="2704" y="1952" name="XLXI_16" orien="R0" />
        <instance x="2416" y="1168" name="XLXI_9" orien="R0" />
        <iomarker fontsize="28" x="2800" y="880" name="Nmi" orien="R0" />
        <branch name="video">
            <wire x2="3376" y1="1264" y2="1264" x1="3360" />
            <wire x2="3360" y1="1264" y2="1504" x1="3360" />
        </branch>
        <instance x="3376" y="1008" name="XLXI_23" orien="M180" />
        <iomarker fontsize="28" x="1840" y="960" name="Rd" orien="R180" />
        <iomarker fontsize="28" x="1840" y="1024" name="Wr" orien="R180" />
        <iomarker fontsize="28" x="1840" y="1120" name="a0" orien="R180" />
        <iomarker fontsize="28" x="1840" y="1168" name="a1" orien="R180" />
        <instance x="3376" y="784" name="XLXI_125" orien="R0" />
        <iomarker fontsize="28" x="3680" y="688" name="Csync" orien="R0" />
        <instance x="3008" y="3360" name="XLXI_189" orien="R0" />
        <branch name="Mreq">
            <wire x2="560" y1="2144" y2="2144" x1="400" />
            <wire x2="560" y1="2112" y2="2144" x1="560" />
            <wire x2="976" y1="2112" y2="2112" x1="560" />
            <wire x2="2432" y1="2112" y2="2112" x1="976" />
            <wire x2="2432" y1="2112" y2="3456" x1="2432" />
            <wire x2="2640" y1="3456" y2="3456" x1="2432" />
            <wire x2="2640" y1="3456" y2="3712" x1="2640" />
            <wire x2="2944" y1="3456" y2="3456" x1="2640" />
            <wire x2="3376" y1="3456" y2="3456" x1="2944" />
            <wire x2="992" y1="1984" y2="1984" x1="976" />
            <wire x2="976" y1="1984" y2="2112" x1="976" />
            <wire x2="2640" y1="3712" y2="3712" x1="2576" />
            <wire x2="3008" y1="3232" y2="3232" x1="2944" />
            <wire x2="2944" y1="3232" y2="3456" x1="2944" />
        </branch>
        <iomarker fontsize="28" x="3360" y="3520" name="a14" orien="R180" />
        <iomarker fontsize="28" x="3840" y="3456" name="Ramcs" orien="R0" />
        <iomarker fontsize="28" x="3840" y="3584" name="Romcs" orien="R0" />
        <branch name="black_on_white">
            <wire x2="3328" y1="1760" y2="1904" x1="3328" />
            <wire x2="3616" y1="1904" y2="1904" x1="3328" />
            <wire x2="3616" y1="1904" y2="2144" x1="3616" />
            <wire x2="3616" y1="2144" y2="2144" x1="3600" />
        </branch>
        <iomarker fontsize="28" x="720" y="1776" name="Xout" orien="R0" />
        <iomarker fontsize="28" x="720" y="1904" name="cpuclk" orien="R0" />
        <iomarker fontsize="28" x="720" y="1968" name="cpuclk_inv" orien="R0" />
        <iomarker fontsize="28" x="3680" y="1168" name="luminance" orien="R0" />
        <instance x="2464" y="1008" name="XLXI_193" orien="R0" />
        <branch name="NMI_on">
            <wire x2="2400" y1="944" y2="1008" x1="2400" />
            <wire x2="2400" y1="1008" y2="1792" x1="2400" />
            <wire x2="2416" y1="1792" y2="1792" x1="2400" />
            <wire x2="2928" y1="1008" y2="1008" x1="2400" />
            <wire x2="2928" y1="1008" y2="1184" x1="2928" />
            <wire x2="2464" y1="944" y2="944" x1="2400" />
            <wire x2="2928" y1="1184" y2="1184" x1="2912" />
        </branch>
        <branch name="zx80_zx81">
            <wire x2="2464" y1="880" y2="880" x1="2320" />
        </branch>
        <iomarker fontsize="28" x="2320" y="880" name="zx80_zx81" orien="R180" />
        <iomarker fontsize="28" x="3040" y="2192" name="border" orien="R180" />
        <branch name="vsync">
            <wire x2="1136" y1="1792" y2="1792" x1="1120" />
            <wire x2="1120" y1="1792" y2="1840" x1="1120" />
            <wire x2="1488" y1="1840" y2="1840" x1="1120" />
            <wire x2="1488" y1="1840" y2="2064" x1="1488" />
            <wire x2="3104" y1="2064" y2="2064" x1="1488" />
            <wire x2="3104" y1="1696" y2="1696" x1="3088" />
            <wire x2="3104" y1="1696" y2="2064" x1="3104" />
            <wire x2="3200" y1="1200" y2="1200" x1="3104" />
            <wire x2="3376" y1="1200" y2="1200" x1="3200" />
            <wire x2="3104" y1="1200" y2="1696" x1="3104" />
            <wire x2="3376" y1="720" y2="720" x1="3200" />
            <wire x2="3200" y1="720" y2="1200" x1="3200" />
        </branch>
        <instance x="256" y="2000" name="clock" orien="R0">
        </instance>
        <branch name="M1">
            <wire x2="560" y1="1088" y2="1360" x1="560" />
            <wire x2="976" y1="1360" y2="1360" x1="560" />
            <wire x2="976" y1="1360" y2="1472" x1="976" />
            <wire x2="976" y1="1472" y2="1920" x1="976" />
            <wire x2="992" y1="1920" y2="1920" x1="976" />
            <wire x2="576" y1="1088" y2="1088" x1="560" />
            <wire x2="976" y1="1472" y2="1472" x1="880" />
        </branch>
        <instance x="576" y="1120" name="hsync_sym" orien="R0">
        </instance>
        <branch name="hsync">
            <wire x2="1024" y1="960" y2="960" x1="960" />
            <wire x2="1024" y1="960" y2="1696" x1="1024" />
            <wire x2="1136" y1="1696" y2="1696" x1="1024" />
            <wire x2="2400" y1="656" y2="656" x1="1024" />
            <wire x2="3152" y1="656" y2="656" x1="2400" />
            <wire x2="3152" y1="656" y2="1136" x1="3152" />
            <wire x2="3376" y1="1136" y2="1136" x1="3152" />
            <wire x2="3376" y1="656" y2="656" x1="3152" />
            <wire x2="2400" y1="656" y2="816" x1="2400" />
            <wire x2="2464" y1="816" y2="816" x1="2400" />
            <wire x2="1024" y1="656" y2="960" x1="1024" />
        </branch>
        <branch name="back_porch">
            <wire x2="1120" y1="1088" y2="1088" x1="960" />
            <wire x2="3040" y1="720" y2="720" x1="1120" />
            <wire x2="3040" y1="720" y2="1072" x1="3040" />
            <wire x2="3376" y1="1072" y2="1072" x1="3040" />
            <wire x2="1120" y1="720" y2="1088" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="880" y="1472" name="M1" orien="R180" />
        <branch name="Iorq">
            <wire x2="928" y1="2096" y2="2096" x1="384" />
            <wire x2="2064" y1="2096" y2="2096" x1="928" />
            <wire x2="512" y1="1024" y2="1568" x1="512" />
            <wire x2="928" y1="1568" y2="1568" x1="512" />
            <wire x2="928" y1="1568" y2="2096" x1="928" />
            <wire x2="576" y1="1024" y2="1024" x1="512" />
            <wire x2="2080" y1="1376" y2="1376" x1="2064" />
            <wire x2="2064" y1="1376" y2="1584" x1="2064" />
            <wire x2="2080" y1="1584" y2="1584" x1="2064" />
            <wire x2="2064" y1="1584" y2="1792" x1="2064" />
            <wire x2="2080" y1="1792" y2="1792" x1="2064" />
            <wire x2="2064" y1="1792" y2="1952" x1="2064" />
            <wire x2="2080" y1="1952" y2="1952" x1="2064" />
            <wire x2="2064" y1="1952" y2="2096" x1="2064" />
        </branch>
        <branch name="cpuclk">
            <wire x2="464" y1="960" y2="1616" x1="464" />
            <wire x2="656" y1="1616" y2="1616" x1="464" />
            <wire x2="656" y1="1616" y2="1904" x1="656" />
            <wire x2="656" y1="1904" y2="2176" x1="656" />
            <wire x2="1728" y1="2176" y2="2176" x1="656" />
            <wire x2="1728" y1="2176" y2="4320" x1="1728" />
            <wire x2="2256" y1="4320" y2="4320" x1="1728" />
            <wire x2="2672" y1="4320" y2="4320" x1="2256" />
            <wire x2="720" y1="1904" y2="1904" x1="656" />
            <wire x2="576" y1="960" y2="960" x1="464" />
            <wire x2="656" y1="1904" y2="1904" x1="640" />
            <wire x2="2272" y1="4192" y2="4192" x1="2256" />
            <wire x2="2256" y1="4192" y2="4320" x1="2256" />
            <wire x2="2688" y1="4192" y2="4192" x1="2672" />
            <wire x2="2672" y1="4192" y2="4320" x1="2672" />
        </branch>
        <instance x="3376" y="3616" name="mem_select" orien="R0">
        </instance>
        <branch name="forced_NOP_T4">
            <wire x2="3008" y1="3296" y2="3296" x1="2992" />
            <wire x2="2992" y1="3296" y2="3392" x1="2992" />
            <wire x2="3200" y1="3392" y2="3392" x1="2992" />
            <wire x2="3200" y1="3392" y2="3584" x1="3200" />
            <wire x2="3376" y1="3584" y2="3584" x1="3200" />
            <wire x2="3200" y1="3584" y2="3616" x1="3200" />
            <wire x2="3200" y1="3616" y2="3616" x1="3184" />
        </branch>
        <branch name="d0">
            <wire x2="1520" y1="2240" y2="2240" x1="400" />
            <wire x2="1520" y1="2240" y2="2720" x1="1520" />
            <wire x2="1856" y1="2720" y2="2720" x1="1520" />
            <wire x2="3104" y1="2240" y2="2240" x1="1520" />
            <wire x2="3104" y1="2240" y2="2400" x1="3104" />
            <wire x2="3216" y1="2400" y2="2400" x1="3104" />
            <wire x2="1520" y1="2720" y2="2720" x1="1344" />
        </branch>
        <branch name="border">
            <wire x2="3168" y1="2192" y2="2192" x1="3040" />
            <wire x2="3168" y1="2192" y2="2208" x1="3168" />
            <wire x2="3216" y1="2208" y2="2208" x1="3168" />
        </branch>
        <branch name="load_enable">
            <wire x2="3216" y1="2272" y2="2272" x1="3200" />
            <wire x2="3200" y1="2272" y2="3088" x1="3200" />
            <wire x2="3280" y1="3088" y2="3088" x1="3200" />
            <wire x2="3280" y1="3088" y2="3264" x1="3280" />
            <wire x2="3280" y1="3264" y2="3264" x1="3264" />
        </branch>
        <instance x="3216" y="2880" name="video_shifter" orien="R0">
        </instance>
        <branch name="invert">
            <wire x2="2880" y1="3488" y2="3488" x1="2240" />
            <wire x2="3152" y1="2960" y2="2960" x1="2880" />
            <wire x2="2880" y1="2960" y2="3488" x1="2880" />
            <wire x2="3216" y1="2336" y2="2336" x1="3152" />
            <wire x2="3152" y1="2336" y2="2960" x1="3152" />
        </branch>
        <instance x="3456" y="1760" name="XLXI_194" orien="R270" />
        <branch name="Invert_screen">
            <wire x2="3392" y1="1760" y2="1776" x1="3392" />
            <wire x2="3392" y1="1776" y2="1792" x1="3392" />
            <wire x2="3680" y1="1792" y2="1792" x1="3392" />
        </branch>
        <iomarker fontsize="28" x="3680" y="1792" name="Invert_screen" orien="R0" />
    </sheet>
</drawing>