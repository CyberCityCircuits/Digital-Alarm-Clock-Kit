EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:Arduino_Nano_Every A1
U 1 1 609BF0B1
P 1950 2050
F 0 "A1" H 1950 961 50  0000 C CNN
F 1 "Arduino_Nano_Every" H 1950 870 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 1950 2050 50  0001 C CIN
F 3 "https://content.arduino.cc/assets/NANOEveryV3.0_sch.pdf" H 1950 2050 50  0001 C CNN
	1    1950 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:Speaker LS1
U 1 1 609C0E0A
P 4450 900
F 0 "LS1" H 4620 896 50  0000 L CNN
F 1 "Speaker" H 4620 805 50  0000 L CNN
F 2 "CCC_Schematic_Footprints:Speaker_Large_Fuet" H 4450 700 50  0001 C CNN
F 3 "~" H 4440 850 50  0001 C CNN
	1    4450 900 
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J1
U 1 1 609C13ED
P 4500 1600
F 0 "J1" H 4528 1576 50  0000 L CNN
F 1 "Conn_01x04_Female" H 4528 1485 50  0000 L CNN
F 2 "CCC-Parts-Library:TM1637-4-Digit-Display" H 4500 1600 50  0001 C CNN
F 3 "~" H 4500 1600 50  0001 C CNN
	1    4500 1600
	1    0    0    -1  
$EndComp
Text Notes 4350 2250 0    50   ~ 0
Top to Bottom\n1 - CLK\n2 - Data (DI)\n3 - 5V\n4 - Ground
Text GLabel 4200 1500 0    50   Input ~ 0
Disp_CLK
Text GLabel 4200 1600 0    50   Input ~ 0
Disp_DI
Text GLabel 4200 1700 0    50   Input ~ 0
5V+
Text GLabel 4200 1800 0    50   Input ~ 0
GND
Wire Wire Line
	4300 1800 4200 1800
Wire Wire Line
	4200 1700 4300 1700
Wire Wire Line
	4300 1600 4200 1600
Wire Wire Line
	4200 1500 4300 1500
Wire Wire Line
	4250 1000 4150 1000
Wire Wire Line
	4250 900  4150 900 
Text GLabel 2150 950  1    50   Input ~ 0
5V+
Text GLabel 1350 3100 0    50   Input ~ 0
GND
Wire Wire Line
	2150 950  2150 1050
Wire Wire Line
	1950 3100 1950 3050
Wire Wire Line
	1350 3100 1950 3100
Text GLabel 1350 1250 0    50   Input ~ 0
TX
Wire Wire Line
	1450 1250 1350 1250
Text GLabel 1350 1350 0    50   Input ~ 0
RX
Wire Wire Line
	1450 1350 1350 1350
Text GLabel 1350 1550 0    50   Input ~ 0
D02
Wire Wire Line
	1450 1550 1350 1550
Text GLabel 1350 1650 0    50   Input ~ 0
D03
Wire Wire Line
	1450 1650 1350 1650
Text GLabel 1350 1750 0    50   Input ~ 0
D04
Wire Wire Line
	1450 1750 1350 1750
Text GLabel 1350 1850 0    50   Input ~ 0
D05
Wire Wire Line
	1450 1850 1350 1850
Text GLabel 1350 1950 0    50   Input ~ 0
D06
Wire Wire Line
	1450 1950 1350 1950
Text GLabel 1350 2050 0    50   Input ~ 0
D07
Wire Wire Line
	1450 2050 1350 2050
Text GLabel 1350 2150 0    50   Input ~ 0
D08
Wire Wire Line
	1450 2150 1350 2150
Text GLabel 1350 2250 0    50   Input ~ 0
D09
Wire Wire Line
	1450 2250 1350 2250
Text GLabel 1350 2350 0    50   Input ~ 0
D10
Wire Wire Line
	1450 2350 1350 2350
Text GLabel 2550 1850 2    50   Input ~ 0
AREF
Wire Wire Line
	2450 1850 2550 1850
Text GLabel 2550 2050 2    50   Input ~ 0
A0
Wire Wire Line
	2450 2050 2550 2050
Text GLabel 2550 2150 2    50   Input ~ 0
A1
Wire Wire Line
	2450 2150 2550 2150
Text GLabel 2550 2250 2    50   Input ~ 0
A2
Wire Wire Line
	2450 2250 2550 2250
Text GLabel 2550 2350 2    50   Input ~ 0
A3
Wire Wire Line
	2450 2350 2550 2350
Text GLabel 2550 2450 2    50   Input ~ 0
SDA
Wire Wire Line
	2450 2450 2550 2450
Text GLabel 2550 2550 2    50   Input ~ 0
SCL
Wire Wire Line
	2450 2550 2550 2550
Text GLabel 2550 2650 2    50   Input ~ 0
A6
Wire Wire Line
	2450 2650 2550 2650
Text GLabel 2550 2750 2    50   Input ~ 0
A7
Wire Wire Line
	2450 2750 2550 2750
Text GLabel 2550 1450 2    50   Input ~ 0
RESET
Wire Wire Line
	2450 1450 2550 1450
Text GLabel 2550 1550 2    50   Input ~ 0
RESET
Wire Wire Line
	2450 1550 2550 1550
Text GLabel 1350 2550 0    50   Input ~ 0
MOSI
Wire Wire Line
	1450 2550 1350 2550
Text GLabel 1350 2650 0    50   Input ~ 0
MISO
Wire Wire Line
	1450 2650 1350 2650
Text GLabel 1350 2750 0    50   Input ~ 0
SCK
Wire Wire Line
	1450 2750 1350 2750
Text GLabel 10450 4100 2    50   Input ~ 0
AREF
Text GLabel 10450 3200 2    50   Input ~ 0
A0
Text GLabel 10450 3300 2    50   Input ~ 0
A1
Text GLabel 10450 3400 2    50   Input ~ 0
A2
Text GLabel 10450 3500 2    50   Input ~ 0
A3
Text GLabel 10450 3600 2    50   Input ~ 0
SDA
Text GLabel 10450 3700 2    50   Input ~ 0
SCL
Text GLabel 10450 3800 2    50   Input ~ 0
A6_DNU
Text GLabel 10450 3900 2    50   Input ~ 0
A7_DNU
Text GLabel 10450 4000 2    50   Input ~ 0
RESET
Text GLabel 10450 3100 2    50   Input ~ 0
GND
Text GLabel 10450 1700 2    50   Input ~ 0
TX
Text GLabel 10450 1800 2    50   Input ~ 0
RX
Text GLabel 10450 1900 2    50   Input ~ 0
D02
Text GLabel 10450 2000 2    50   Input ~ 0
D03
Text GLabel 10450 2100 2    50   Input ~ 0
D04
Text GLabel 10450 2200 2    50   Input ~ 0
D05
Text GLabel 10450 2300 2    50   Input ~ 0
D06
Text GLabel 10450 2400 2    50   Input ~ 0
D07
Text GLabel 10450 2500 2    50   Input ~ 0
D08
Text GLabel 10450 2600 2    50   Input ~ 0
D09
Text GLabel 10450 2700 2    50   Input ~ 0
D10
Text GLabel 10450 2800 2    50   Input ~ 0
MOSI
Text GLabel 10450 2900 2    50   Input ~ 0
MISO
Text GLabel 10450 3000 2    50   Input ~ 0
SCK
$Comp
L Switch:SW_Push SW1
U 1 1 609CFD10
P 6750 3400
F 0 "SW1" H 6750 3685 50  0000 C CNN
F 1 "SW_Push" H 6750 3594 50  0000 C CNN
F 2 "CCC_Schematic_Footprints:Schematic - Push Button 6.5x4.5" H 6750 3600 50  0001 C CNN
F 3 "~" H 6750 3600 50  0001 C CNN
	1    6750 3400
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 609D03B5
P 6750 3800
F 0 "SW2" H 6750 4085 50  0000 C CNN
F 1 "SW_Push" H 6750 3994 50  0000 C CNN
F 2 "CCC_Schematic_Footprints:Schematic - Push Button 6.5x4.5" H 6750 4000 50  0001 C CNN
F 3 "~" H 6750 4000 50  0001 C CNN
	1    6750 3800
	1    0    0    -1  
$EndComp
Text Notes 7400 4250 0    50   ~ 0
Set Time On/Off
Text Notes 7300 3450 0    50   ~ 0
Set Time - Hours
Text Notes 7350 3850 0    50   ~ 0
Set Time - Minutes
$Comp
L CCC-Parts-Library:DFPlayer U1
U 1 1 606EFFC8
P 3600 5550
F 0 "U1" H 3600 5825 50  0000 C CNN
F 1 "DFPlayer" H 3600 5734 50  0000 C CNN
F 2 "CCC-Parts-Library:DFPlayer_V2" H 3600 5850 50  0001 C CNN
F 3 "" H 3600 5850 50  0001 C CNN
	1    3600 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 606F0D0A
P 1500 5900
F 0 "R1" H 1570 5946 50  0000 L CNN
F 1 "1000" H 1570 5855 50  0000 L CNN
F 2 "CCC_Schematic_Footprints:Schematic - Resistor 10.00mm" V 1430 5900 50  0001 C CNN
F 3 "~" H 1500 5900 50  0001 C CNN
	1    1500 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 606F3C86
P 1900 5900
F 0 "R2" H 1970 5946 50  0000 L CNN
F 1 "1000" H 1970 5855 50  0000 L CNN
F 2 "CCC_Schematic_Footprints:Schematic - Resistor 10.00mm" V 1830 5900 50  0001 C CNN
F 3 "~" H 1900 5900 50  0001 C CNN
	1    1900 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 5700 1900 5750
Text GLabel 2850 6100 0    50   Input ~ 0
GND
Text GLabel 2850 5800 0    50   Input ~ 0
Phono_Out_R
Text GLabel 2850 5900 0    50   Input ~ 0
Phono_Out_L
Wire Wire Line
	2850 5900 3150 5900
Wire Wire Line
	2850 5800 3150 5800
Text GLabel 2850 6000 0    50   Input ~ 0
Speaker_Out_1
Wire Wire Line
	2850 6000 3150 6000
Text GLabel 2850 6200 0    50   Input ~ 0
Speaker_Out_2
Wire Wire Line
	2850 6200 3150 6200
Text GLabel 1350 6300 0    50   Input ~ 0
DFPLAYER_RX
Text GLabel 1350 6400 0    50   Input ~ 0
DFPLAYER_TX
$Comp
L Device:R_POT RV1
U 1 1 60744D02
P 9600 5700
F 0 "RV1" H 9531 5746 50  0000 R CNN
F 1 "R_POT" H 9531 5655 50  0000 R CNN
F 2 "CCC-Parts-Library:Potentiometer_Alps_RK09L_Single_Vertical" H 9600 5700 50  0001 C CNN
F 3 "~" H 9600 5700 50  0001 C CNN
	1    9600 5700
	-1   0    0    -1  
$EndComp
Text GLabel 9300 5950 0    50   Input ~ 0
GND
Text GLabel 9300 5700 0    50   Input ~ 0
Volume_Control
Wire Wire Line
	9300 5400 9600 5400
Wire Wire Line
	9600 5400 9600 5550
Wire Wire Line
	9600 5850 9600 5950
Wire Wire Line
	9600 5950 9300 5950
Wire Wire Line
	9450 5700 9300 5700
Wire Wire Line
	1350 6400 1900 6400
Wire Wire Line
	1900 6400 1900 6050
Wire Wire Line
	2850 6100 3150 6100
Text GLabel 4350 6100 2    50   Input ~ 0
GND
Wire Wire Line
	4350 6100 4050 6100
Text GLabel 2850 5500 0    50   Input ~ 0
5V+
Wire Wire Line
	2850 5500 3150 5500
Wire Wire Line
	1350 6300 1500 6300
Wire Wire Line
	1500 6300 1500 6050
Wire Wire Line
	1500 5750 1500 5600
Text Notes 9700 6100 0    50   ~ 0
ALPS Alpine\nRK09K1130D79\nLCSC C2687329
Wire Wire Line
	1900 5700 3150 5700
Wire Wire Line
	1500 5600 3150 5600
Text GLabel 10300 2800 0    50   Input ~ 0
DFPLAYER_RX
Text GLabel 10300 2900 0    50   Input ~ 0
DFPLAYER_TX
Text GLabel 10300 3200 0    50   Input ~ 0
Volume_Control
Text GLabel 9300 5400 0    50   Input ~ 0
5V+
Text GLabel 10300 2000 0    50   Input ~ 0
Disp_CLK
Text GLabel 10300 1900 0    50   Input ~ 0
Disp_DI
Text GLabel 10300 4550 0    50   Input ~ 0
SPKR+
Text GLabel 10450 4550 2    50   Input ~ 0
Speaker_Out_1
Text GLabel 10450 4650 2    50   Input ~ 0
Speaker_Out_2
Text GLabel 10450 4200 2    50   Input ~ 0
5V+
Text GLabel 10450 4300 2    50   Input ~ 0
GND
Text GLabel 10300 4650 0    50   Input ~ 0
SPKR-
Text GLabel 4150 1000 0    50   Input ~ 0
SPKR+
Text GLabel 4150 900  0    50   Input ~ 0
SPKR-
Wire Wire Line
	10300 4550 10450 4550
Wire Wire Line
	10450 4650 10300 4650
Text GLabel 6350 4200 0    50   Input ~ 0
SET_ALARM
Wire Wire Line
	6350 4200 6450 4200
Text GLabel 7150 4200 2    50   Input ~ 0
GND
Wire Wire Line
	7150 4200 7050 4200
Text GLabel 10300 2300 0    50   Input ~ 0
SET_ALARM
Text GLabel 6350 4300 0    50   Input ~ 0
ALARM_EN
Wire Wire Line
	6350 4300 6450 4300
Text GLabel 7150 4300 2    50   Input ~ 0
GND
Wire Wire Line
	7150 4300 7050 4300
Text GLabel 10300 2400 0    50   Input ~ 0
ALARM_EN
Text GLabel 6450 3400 0    50   Input ~ 0
HOURS
Text GLabel 6450 3800 0    50   Input ~ 0
MINUTES
Wire Wire Line
	6450 3400 6550 3400
Wire Wire Line
	6450 3800 6550 3800
Text GLabel 7050 3400 2    50   Input ~ 0
GND
Wire Wire Line
	7050 3400 6950 3400
Text GLabel 7050 3800 2    50   Input ~ 0
GND
Wire Wire Line
	7050 3800 6950 3800
Text GLabel 10300 2600 0    50   Input ~ 0
HOURS
Text GLabel 10300 2500 0    50   Input ~ 0
MINUTES
$Comp
L Device:LED D1
U 1 1 60A5C3F2
P 3400 4850
F 0 "D1" H 3393 4595 50  0000 C CNN
F 1 "LED" H 3393 4686 50  0000 C CNN
F 2 "CCC_Schematic_Footprints:Schematic - LED 5mm(2.56P) 003" H 3400 4850 50  0001 C CNN
F 3 "~" H 3400 4850 50  0001 C CNN
	1    3400 4850
	-1   0    0    1   
$EndComp
Text GLabel 4100 4850 2    50   Input ~ 0
GND
Wire Wire Line
	3650 4850 3550 4850
Text GLabel 3150 4850 0    50   Input ~ 0
BLINK
Wire Wire Line
	3150 4850 3250 4850
$Comp
L Device:R R3
U 1 1 60A63BE7
P 3800 4850
F 0 "R3" V 3593 4850 50  0000 C CNN
F 1 "1K" V 3684 4850 50  0000 C CNN
F 2 "CCC_Schematic_Footprints:Schematic - Resistor 10.00mm" V 3730 4850 50  0001 C CNN
F 3 "~" H 3800 4850 50  0001 C CNN
	1    3800 4850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3950 4850 4100 4850
Text Notes 2850 4500 0    50   ~ 0
SOLID ON - ALARM ENABLED\nFLASHING ON - ALARM SET POSITION
Wire Wire Line
	10300 1900 10450 1900
Wire Wire Line
	10300 2000 10450 2000
Wire Wire Line
	10300 1700 10450 1700
Wire Wire Line
	10300 1800 10450 1800
Wire Wire Line
	10300 2100 10450 2100
Wire Wire Line
	10300 2200 10450 2200
Wire Wire Line
	10300 2300 10450 2300
Wire Wire Line
	10300 2400 10450 2400
Wire Wire Line
	10300 2500 10450 2500
Wire Wire Line
	10300 2600 10450 2600
Wire Wire Line
	10300 2900 10450 2900
Wire Wire Line
	10300 3000 10450 3000
Wire Wire Line
	10300 2700 10450 2700
Wire Wire Line
	10300 2800 10450 2800
Wire Wire Line
	10300 3100 10450 3100
Wire Wire Line
	10300 3200 10450 3200
Wire Wire Line
	10300 3300 10450 3300
Wire Wire Line
	10300 3400 10450 3400
Wire Wire Line
	10300 3500 10450 3500
Wire Wire Line
	10300 3600 10450 3600
Wire Wire Line
	10300 4200 10450 4200
Wire Wire Line
	10300 4300 10450 4300
Wire Wire Line
	10300 3700 10450 3700
Wire Wire Line
	10300 3800 10450 3800
Wire Wire Line
	10300 3900 10450 3900
Wire Wire Line
	10300 4000 10450 4000
Wire Wire Line
	10300 4100 10450 4100
Text GLabel 10300 3000 0    50   Input ~ 0
BLINK
$Comp
L Device:Crystal Y1
U 1 1 60A4E9F2
P 6700 1800
F 0 "Y1" V 6654 1931 50  0000 L CNN
F 1 "Crystal" V 6745 1931 50  0000 L CNN
F 2 "Crystal:Crystal_C26-LF_D2.1mm_L6.5mm_Horizontal" H 6700 1800 50  0001 C CNN
F 3 "~" H 6700 1800 50  0001 C CNN
	1    6700 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 1600 6700 1600
Wire Wire Line
	6700 1600 6700 1650
Wire Wire Line
	6700 1950 7150 1950
Wire Wire Line
	7150 1950 7150 1700
Text GLabel 7150 2050 0    50   Input ~ 0
GND
Wire Wire Line
	7650 2050 7650 1900
Wire Wire Line
	7150 2050 7650 2050
Text GLabel 7000 1300 0    50   Input ~ 0
RTC_SCL
Wire Wire Line
	7000 1300 7150 1300
Wire Wire Line
	8300 1500 8150 1500
Text GLabel 7000 1000 0    50   Input ~ 0
5V+
Wire Wire Line
	7550 1000 7550 1100
$Comp
L Device:Battery_Cell BT1
U 1 1 60A7C71F
P 8000 950
F 0 "BT1" V 8255 1000 50  0000 C CNN
F 1 "Battery_Cell" V 8164 1000 50  0000 C CNN
F 2 "CCC_Schematic_Footprints:Schematic - Battery CR2032" V 8000 1010 50  0001 C CNN
F 3 "~" V 8000 1010 50  0001 C CNN
	1    8000 950 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7650 1100 7650 950 
Wire Wire Line
	7650 950  7800 950 
Text GLabel 8300 950  2    50   Input ~ 0
GND
Wire Wire Line
	8300 950  8100 950 
Text GLabel 7000 1400 0    50   Input ~ 0
RTC_SDA
Wire Wire Line
	7000 1400 7150 1400
Text GLabel 8300 1500 2    50   Input ~ 0
RTC_SQW_OUT
$Comp
L Timer_RTC:DS1307+ U2
U 1 1 60AA443C
P 7650 1500
F 0 "U2" H 7800 1950 50  0000 L CNN
F 1 "DS1307+" H 7800 1850 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 7650 1000 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DS1307.pdf" H 7650 1300 50  0001 C CNN
	1    7650 1500
	1    0    0    -1  
$EndComp
Text GLabel 10300 2700 0    50   Input ~ 0
RTC_SQW_OUT
Text GLabel 10300 3700 0    50   Input ~ 0
RTC_SCL
Text GLabel 10300 3600 0    50   Input ~ 0
RTC_SDA
Text Notes 6550 1950 2    50   ~ 0
Citizen\nCFS-20632768DZFB\n32.768 kHz 12.5pF\nLCSC - C100098\n2mm x 6mm
Text Notes 7400 4350 0    50   ~ 0
Alarm Switch
$Comp
L Switch:SW_Push SW3
U 1 1 60AE4BEB
P 4350 2800
F 0 "SW3" H 4350 3085 50  0000 C CNN
F 1 "SW_Push" H 4350 2994 50  0000 C CNN
F 2 "CCC_Schematic_Footprints:Schematic - Push Button 6.5x4.5" H 4350 3000 50  0001 C CNN
F 3 "~" H 4350 3000 50  0001 C CNN
	1    4350 2800
	1    0    0    -1  
$EndComp
Text Notes 4950 2850 0    50   ~ 0
Snooze Button
Text GLabel 4050 2800 0    50   Input ~ 0
SNOOZE
Wire Wire Line
	4050 2800 4150 2800
Text GLabel 4650 2800 2    50   Input ~ 0
GND
Wire Wire Line
	4650 2800 4550 2800
Text GLabel 10300 2100 0    50   Input ~ 0
SNOOZE
$Comp
L Switch:SW_Push SW4
U 1 1 60B02A19
P 4350 3150
F 0 "SW4" H 4350 3435 50  0000 C CNN
F 1 "SW_Push" H 4350 3344 50  0000 C CNN
F 2 "CCC_Schematic_Footprints:Schematic - Push Button 6.5x4.5" H 4350 3350 50  0001 C CNN
F 3 "~" H 4350 3350 50  0001 C CNN
	1    4350 3150
	1    0    0    -1  
$EndComp
Text Notes 4950 3200 0    50   ~ 0
Snooze Button
Text GLabel 4050 3150 0    50   Input ~ 0
SNOOZE
Wire Wire Line
	4050 3150 4150 3150
Text GLabel 4650 3150 2    50   Input ~ 0
GND
Wire Wire Line
	4650 3150 4550 3150
$Comp
L Switch:SW_Push SW5
U 1 1 60B07551
P 4350 3500
F 0 "SW5" H 4350 3785 50  0000 C CNN
F 1 "SW_Push" H 4350 3694 50  0000 C CNN
F 2 "CCC_Schematic_Footprints:Schematic - Push Button 6.5x4.5" H 4350 3700 50  0001 C CNN
F 3 "~" H 4350 3700 50  0001 C CNN
	1    4350 3500
	1    0    0    -1  
$EndComp
Text Notes 4950 3550 0    50   ~ 0
Snooze Button
Text GLabel 4050 3500 0    50   Input ~ 0
SNOOZE
Wire Wire Line
	4050 3500 4150 3500
Text GLabel 4650 3500 2    50   Input ~ 0
GND
Wire Wire Line
	4650 3500 4550 3500
$Comp
L Switch:SW_Push SW6
U 1 1 60B0C8EB
P 4350 3850
F 0 "SW6" H 4350 4135 50  0000 C CNN
F 1 "SW_Push" H 4350 4044 50  0000 C CNN
F 2 "CCC_Schematic_Footprints:Schematic - Push Button 6.5x4.5" H 4350 4050 50  0001 C CNN
F 3 "~" H 4350 4050 50  0001 C CNN
	1    4350 3850
	1    0    0    -1  
$EndComp
Text Notes 4950 3900 0    50   ~ 0
Snooze Button
Text GLabel 4050 3850 0    50   Input ~ 0
SNOOZE
Wire Wire Line
	4050 3850 4150 3850
Text GLabel 4650 3850 2    50   Input ~ 0
GND
Wire Wire Line
	4650 3850 4550 3850
$Comp
L Device:C C1
U 1 1 60AD59BF
P 7250 800
F 0 "C1" H 7365 846 50  0000 L CNN
F 1 "0.1uF" H 7365 755 50  0000 L CNN
F 2 "CCC_Schematic_Footprints:Schematic - Capacitor 5.0mm" H 7288 650 50  0001 C CNN
F 3 "~" H 7250 800 50  0001 C CNN
	1    7250 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1000 7250 1000
Text GLabel 7000 600  0    50   Input ~ 0
GND
Wire Wire Line
	7000 600  7250 600 
Wire Wire Line
	7250 600  7250 650 
Wire Wire Line
	7250 950  7250 1000
Connection ~ 7250 1000
Wire Wire Line
	7250 1000 7550 1000
$Comp
L Switch:SW_DIP_x02 SW7
U 1 1 60AD6F2A
P 6750 4300
F 0 "SW7" H 6750 4667 50  0000 C CNN
F 1 "SW_DIP_x02" H 6750 4576 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx02_Slide_6.7x6.64mm_W7.62mm_P2.54mm_LowProfile" H 6750 4300 50  0001 C CNN
F 3 "~" H 6750 4300 50  0001 C CNN
	1    6750 4300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
