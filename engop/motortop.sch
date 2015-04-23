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
        <signal name="XLXN_3" />
        <signal name="led(7:0)" />
        <port polarity="Input" name="clkusb" />
        <port polarity="Input" name="data" />
        <port polarity="Output" name="motor1" />
        <port polarity="Output" name="motor2" />
        <port polarity="Output" name="motor3" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="led(7:0)" />
        <blockdef name="controller">
            <timestamp>2015-4-17T23:4:47</timestamp>
            <line x2="0" y1="288" y2="288" x1="64" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="256" x="64" y="-64" height="384" />
        </blockdef>
        <blockdef name="keyboardtest">
            <timestamp>2015-4-4T2:18:58</timestamp>
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-128" height="256" />
        </blockdef>
        <block symbolname="keyboardtest" name="XLXI_2">
            <blockpin signalname="clkusb" name="clk" />
            <blockpin signalname="data" name="data" />
            <blockpin signalname="XLXN_3" name="released" />
            <blockpin signalname="led(7:0)" name="led(7:0)" />
        </block>
        <block symbolname="controller" name="XLXI_3">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="led(7:0)" name="data(7:0)" />
            <blockpin signalname="motor1" name="motor1" />
            <blockpin signalname="motor2" name="motor2" />
            <blockpin signalname="motor3" name="motor3" />
            <blockpin signalname="XLXN_3" name="released" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="512" y="1104" name="XLXI_2" orien="R0">
        </instance>
        <branch name="clkusb">
            <wire x2="512" y1="1136" y2="1136" x1="480" />
        </branch>
        <iomarker fontsize="28" x="480" y="1136" name="clkusb" orien="R180" />
        <branch name="data">
            <wire x2="512" y1="1072" y2="1072" x1="480" />
        </branch>
        <iomarker fontsize="28" x="480" y="1072" name="data" orien="R180" />
        <branch name="motor1">
            <wire x2="1504" y1="1104" y2="1104" x1="1488" />
            <wire x2="1520" y1="1104" y2="1104" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1520" y="1104" name="motor1" orien="R0" />
        <branch name="motor2">
            <wire x2="1504" y1="1168" y2="1168" x1="1488" />
            <wire x2="1520" y1="1168" y2="1168" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1520" y="1168" name="motor2" orien="R0" />
        <branch name="motor3">
            <wire x2="1504" y1="1232" y2="1232" x1="1488" />
            <wire x2="1520" y1="1232" y2="1232" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1520" y="1232" name="motor3" orien="R0" />
        <iomarker fontsize="28" x="1072" y="1296" name="clk" orien="R180" />
        <branch name="clk">
            <wire x2="1088" y1="1296" y2="1296" x1="1072" />
            <wire x2="1104" y1="1296" y2="1296" x1="1088" />
        </branch>
        <instance x="1104" y="1072" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_3">
            <wire x2="960" y1="1200" y2="1200" x1="896" />
            <wire x2="960" y1="1200" y2="1360" x1="960" />
            <wire x2="1104" y1="1360" y2="1360" x1="960" />
        </branch>
        <branch name="led(7:0)">
            <wire x2="992" y1="1008" y2="1008" x1="896" />
            <wire x2="992" y1="1008" y2="1104" x1="992" />
            <wire x2="1104" y1="1104" y2="1104" x1="992" />
            <wire x2="992" y1="1104" y2="1104" x1="944" />
            <wire x2="944" y1="1104" y2="1392" x1="944" />
            <wire x2="992" y1="1392" y2="1392" x1="944" />
            <wire x2="992" y1="1392" y2="1536" x1="992" />
            <wire x2="1120" y1="1536" y2="1536" x1="992" />
        </branch>
        <iomarker fontsize="28" x="1120" y="1536" name="led(7:0)" orien="R0" />
    </sheet>
</drawing>