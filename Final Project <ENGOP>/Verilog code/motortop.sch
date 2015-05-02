<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clkusb" />
        <signal name="data" />
        <signal name="motor1" />
        <signal name="motor2" />
        <signal name="motor3" />
        <signal name="clk" />
        <signal name="XLXN_4(1:0)" />
        <signal name="motor4" />
        <signal name="motor5" />
        <signal name="motor6" />
        <signal name="motor7" />
        <signal name="motor8" />
        <signal name="motor9" />
        <signal name="motor10" />
        <signal name="wheel1" />
        <signal name="wheel2" />
        <signal name="wheel3" />
        <signal name="wheel4" />
        <signal name="wheel5" />
        <signal name="wheel6" />
        <signal name="wheel7" />
        <signal name="wheel8" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_11(7:0)" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13(1:0)" />
        <signal name="XLXN_14(7:0)" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16(1:0)" />
        <signal name="led(7:0)" />
        <port polarity="Input" name="clkusb" />
        <port polarity="Input" name="data" />
        <port polarity="Output" name="motor1" />
        <port polarity="Output" name="motor2" />
        <port polarity="Output" name="motor3" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="motor4" />
        <port polarity="Output" name="motor5" />
        <port polarity="Output" name="motor6" />
        <port polarity="Output" name="motor7" />
        <port polarity="Output" name="motor8" />
        <port polarity="Output" name="motor9" />
        <port polarity="Output" name="motor10" />
        <port polarity="Output" name="wheel1" />
        <port polarity="Output" name="wheel2" />
        <port polarity="Output" name="wheel3" />
        <port polarity="Output" name="wheel4" />
        <port polarity="Output" name="wheel5" />
        <port polarity="Output" name="wheel6" />
        <port polarity="Output" name="wheel7" />
        <port polarity="Output" name="wheel8" />
        <port polarity="Output" name="led(7:0)" />
        <blockdef name="controller">
            <timestamp>2015-4-25T18:41:6</timestamp>
            <line x2="384" y1="736" y2="736" x1="320" />
            <line x2="384" y1="800" y2="800" x1="320" />
            <line x2="384" y1="864" y2="864" x1="320" />
            <line x2="384" y1="928" y2="928" x1="320" />
            <line x2="384" y1="992" y2="992" x1="320" />
            <line x2="384" y1="1056" y2="1056" x1="320" />
            <line x2="384" y1="1120" y2="1120" x1="320" />
            <line x2="384" y1="1184" y2="1184" x1="320" />
            <line x2="384" y1="1248" y2="1248" x1="320" />
            <line x2="384" y1="1312" y2="1312" x1="320" />
            <line x2="384" y1="416" y2="416" x1="320" />
            <line x2="384" y1="480" y2="480" x1="320" />
            <line x2="384" y1="544" y2="544" x1="320" />
            <line x2="384" y1="608" y2="608" x1="320" />
            <line x2="384" y1="672" y2="672" x1="320" />
            <rect width="64" x="0" y="340" height="24" />
            <line x2="0" y1="352" y2="352" x1="64" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="256" x="64" y="-64" height="1408" />
        </blockdef>
        <blockdef name="keyboardtest">
            <timestamp>2015-4-19T20:11:52</timestamp>
            <rect width="64" x="320" y="148" height="24" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-128" height="320" />
        </blockdef>
        <block symbolname="keyboardtest" name="XLXI_2">
            <blockpin signalname="clkusb" name="clk" />
            <blockpin signalname="data" name="data" />
            <blockpin signalname="led(7:0)" name="led(7:0)" />
            <blockpin signalname="XLXN_4(1:0)" name="released(1:0)" />
        </block>
        <block symbolname="controller" name="XLXI_3">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="led(7:0)" name="data(7:0)" />
            <blockpin signalname="XLXN_4(1:0)" name="released(1:0)" />
            <blockpin signalname="motor1" name="motor1" />
            <blockpin signalname="motor2" name="motor2" />
            <blockpin signalname="motor3" name="motor3" />
            <blockpin signalname="motor4" name="motor4" />
            <blockpin signalname="motor5" name="motor5" />
            <blockpin signalname="motor6" name="motor6" />
            <blockpin signalname="motor7" name="motor7" />
            <blockpin signalname="motor8" name="motor8" />
            <blockpin signalname="motor9" name="motor9" />
            <blockpin signalname="motor10" name="motor10" />
            <blockpin signalname="wheel1" name="wheel1" />
            <blockpin signalname="wheel2" name="wheel2" />
            <blockpin signalname="wheel3" name="wheel3" />
            <blockpin signalname="wheel4" name="wheel4" />
            <blockpin signalname="wheel5" name="wheel5" />
            <blockpin signalname="wheel6" name="wheel6" />
            <blockpin signalname="wheel7" name="wheel7" />
            <blockpin signalname="wheel8" name="wheel8" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="motor1">
            <wire x2="1504" y1="1072" y2="1072" x1="1488" />
            <wire x2="1504" y1="1072" y2="1104" x1="1504" />
            <wire x2="1520" y1="1104" y2="1104" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1520" y="1104" name="motor1" orien="R0" />
        <branch name="motor2">
            <wire x2="1504" y1="1136" y2="1136" x1="1488" />
            <wire x2="1504" y1="1136" y2="1168" x1="1504" />
            <wire x2="1520" y1="1168" y2="1168" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1520" y="1168" name="motor2" orien="R0" />
        <branch name="motor3">
            <wire x2="1504" y1="1200" y2="1200" x1="1488" />
            <wire x2="1504" y1="1200" y2="1232" x1="1504" />
            <wire x2="1520" y1="1232" y2="1232" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1520" y="1232" name="motor3" orien="R0" />
        <iomarker fontsize="28" x="1072" y="1296" name="clk" orien="R180" />
        <branch name="motor4">
            <wire x2="1504" y1="1456" y2="1456" x1="1488" />
            <wire x2="1504" y1="1456" y2="1488" x1="1504" />
            <wire x2="1520" y1="1488" y2="1488" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1520" y="1488" name="motor4" orien="R0" />
        <branch name="motor5">
            <wire x2="1504" y1="1520" y2="1520" x1="1488" />
            <wire x2="1504" y1="1520" y2="1552" x1="1504" />
            <wire x2="1520" y1="1552" y2="1552" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1520" y="1552" name="motor5" orien="R0" />
        <branch name="motor6">
            <wire x2="1504" y1="1584" y2="1584" x1="1488" />
            <wire x2="1504" y1="1584" y2="1616" x1="1504" />
            <wire x2="1520" y1="1616" y2="1616" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1520" y="1616" name="motor6" orien="R0" />
        <branch name="motor7">
            <wire x2="1504" y1="1648" y2="1648" x1="1488" />
            <wire x2="1504" y1="1648" y2="1680" x1="1504" />
            <wire x2="1520" y1="1680" y2="1680" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1520" y="1680" name="motor7" orien="R0" />
        <branch name="motor8">
            <wire x2="1504" y1="1712" y2="1712" x1="1488" />
            <wire x2="1504" y1="1712" y2="1744" x1="1504" />
            <wire x2="1520" y1="1744" y2="1744" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1520" y="1744" name="motor8" orien="R0" />
        <branch name="motor9">
            <wire x2="1504" y1="1776" y2="1776" x1="1488" />
            <wire x2="1504" y1="1776" y2="1808" x1="1504" />
            <wire x2="1520" y1="1808" y2="1808" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1520" y="1808" name="motor9" orien="R0" />
        <branch name="motor10">
            <wire x2="1504" y1="1840" y2="1840" x1="1488" />
            <wire x2="1504" y1="1840" y2="1872" x1="1504" />
            <wire x2="1520" y1="1872" y2="1872" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1520" y="1872" name="motor10" orien="R0" />
        <branch name="wheel2">
            <wire x2="1504" y1="1968" y2="1968" x1="1488" />
            <wire x2="1504" y1="1968" y2="2000" x1="1504" />
            <wire x2="1520" y1="2000" y2="2000" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1520" y="2000" name="wheel2" orien="R0" />
        <branch name="wheel3">
            <wire x2="1504" y1="2032" y2="2032" x1="1488" />
            <wire x2="1504" y1="2032" y2="2064" x1="1504" />
            <wire x2="1520" y1="2064" y2="2064" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1520" y="2064" name="wheel3" orien="R0" />
        <branch name="wheel4">
            <wire x2="1504" y1="2096" y2="2096" x1="1488" />
            <wire x2="1504" y1="2096" y2="2128" x1="1504" />
            <wire x2="1520" y1="2128" y2="2128" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1520" y="2128" name="wheel4" orien="R0" />
        <branch name="wheel5">
            <wire x2="1504" y1="2160" y2="2160" x1="1488" />
            <wire x2="1504" y1="2160" y2="2192" x1="1504" />
            <wire x2="1520" y1="2192" y2="2192" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1520" y="2192" name="wheel5" orien="R0" />
        <branch name="wheel6">
            <wire x2="1504" y1="2224" y2="2224" x1="1488" />
            <wire x2="1504" y1="2224" y2="2256" x1="1504" />
            <wire x2="1520" y1="2256" y2="2256" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1520" y="2256" name="wheel6" orien="R0" />
        <branch name="wheel7">
            <wire x2="1504" y1="2288" y2="2288" x1="1488" />
            <wire x2="1504" y1="2288" y2="2320" x1="1504" />
            <wire x2="1520" y1="2320" y2="2320" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1520" y="2320" name="wheel7" orien="R0" />
        <branch name="wheel8">
            <wire x2="1504" y1="2352" y2="2352" x1="1488" />
            <wire x2="1504" y1="2352" y2="2384" x1="1504" />
            <wire x2="1520" y1="2384" y2="2384" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1520" y="2384" name="wheel8" orien="R0" />
        <branch name="wheel1">
            <wire x2="1504" y1="1904" y2="1904" x1="1488" />
            <wire x2="1504" y1="1904" y2="1936" x1="1504" />
            <wire x2="1520" y1="1936" y2="1936" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1520" y="1936" name="wheel1" orien="R0" />
        <iomarker fontsize="28" x="480" y="1072" name="data" orien="R180" />
        <iomarker fontsize="28" x="480" y="1136" name="clkusb" orien="R180" />
        <branch name="clkusb">
            <wire x2="496" y1="1136" y2="1136" x1="480" />
            <wire x2="512" y1="1136" y2="1136" x1="496" />
        </branch>
        <branch name="data">
            <wire x2="496" y1="1072" y2="1072" x1="480" />
            <wire x2="512" y1="1072" y2="1072" x1="496" />
        </branch>
        <instance x="512" y="1104" name="XLXI_2" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1136" y="784" name="led(7:0)" orien="R0" />
        <branch name="XLXN_4(1:0)">
            <wire x2="912" y1="1264" y2="1264" x1="896" />
            <wire x2="912" y1="1264" y2="1392" x1="912" />
            <wire x2="1104" y1="1392" y2="1392" x1="912" />
        </branch>
        <branch name="clk">
            <wire x2="1088" y1="1296" y2="1296" x1="1072" />
            <wire x2="1088" y1="1264" y2="1296" x1="1088" />
            <wire x2="1104" y1="1264" y2="1264" x1="1088" />
        </branch>
        <branch name="led(7:0)">
            <wire x2="992" y1="1008" y2="1008" x1="896" />
            <wire x2="992" y1="1008" y2="1072" x1="992" />
            <wire x2="1104" y1="1072" y2="1072" x1="992" />
            <wire x2="1136" y1="784" y2="784" x1="992" />
            <wire x2="992" y1="784" y2="1008" x1="992" />
        </branch>
        <instance x="1104" y="1040" name="XLXI_3" orien="R0">
        </instance>
    </sheet>
</drawing>