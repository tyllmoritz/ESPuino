EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Tonuino-ESP32-I2S Lolin32"
Date "2020-12-06"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
NoConn ~ 6700 4350
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 5F383CD1
P 3200 5050
F 0 "J1" H 3308 5331 50  0001 C CNN
F 1 "Neopixel" H 3000 5050 50  0000 C CNN
F 2 "Connector_JST:JST_PH_B3B-PH-K_1x03_P2.00mm_Vertical" H 3200 5050 50  0001 C CNN
F 3 "~" H 3200 5050 50  0001 C CNN
	1    3200 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5F38CB65
P 8600 3050
F 0 "R3" V 8393 3050 50  0000 C CNN
F 1 "100k" V 8484 3050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 8530 3050 50  0001 C CNN
F 3 "~" H 8600 3050 50  0001 C CNN
	1    8600 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	8350 3050 8350 3250
Connection ~ 8350 3050
Wire Wire Line
	8350 3050 8450 3050
$Comp
L Transistor_FET:IRF540N Q1
U 1 1 5F38EA94
P 8800 4050
F 0 "Q1" H 9004 4096 50  0000 L CNN
F 1 "IRF530NPbF" H 9004 4005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 9050 3975 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 8800 4050 50  0001 L CNN
	1    8800 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5F39389B
P 8250 4050
F 0 "R1" V 8043 4050 50  0000 C CNN
F 1 "1k" V 8134 4050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 8180 4050 50  0001 C CNN
F 3 "~" H 8250 4050 50  0001 C CNN
	1    8250 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	8350 3250 9200 3250
Wire Wire Line
	8900 3050 8750 3050
$Comp
L Device:Q_PMOS_GDS Q2
U 1 1 5F387CF3
P 9100 3050
F 0 "Q2" H 9305 3096 50  0000 L CNN
F 1 "NDP6020P" H 9305 3005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 9300 3150 50  0001 C CNN
F 3 "~" H 9100 3050 50  0001 C CNN
	1    9100 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 4450 8900 4250
Wire Wire Line
	8900 3850 8900 3050
Connection ~ 8900 3050
$Comp
L Device:R R2
U 1 1 5F394A4D
P 8500 4250
F 0 "R2" H 8570 4296 50  0000 L CNN
F 1 "10k" H 8570 4205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 8430 4250 50  0001 C CNN
F 3 "~" H 8500 4250 50  0001 C CNN
	1    8500 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4450 8500 4400
Wire Wire Line
	8400 4050 8500 4050
Connection ~ 8500 4450
Wire Wire Line
	8500 4450 8900 4450
Wire Wire Line
	8500 4100 8500 4050
Connection ~ 8500 4050
Wire Wire Line
	8500 4050 8600 4050
$Comp
L Connector:Conn_01x05_Male J3
U 1 1 5F3AB17E
P 4850 2100
F 0 "J3" H 4600 2200 50  0001 C CNN
F 1 "RotEncoder" V 4750 2100 50  0000 C CNN
F 2 "Connector_JST:JST_PH_B5B-PH-K_1x05_P2.00mm_Vertical" H 4850 2100 50  0001 C CNN
F 3 "~" H 4850 2100 50  0001 C CNN
	1    4850 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 2750 4950 2750
Wire Wire Line
	4950 2750 4950 2300
NoConn ~ 5200 2950
NoConn ~ 5200 3050
NoConn ~ 6700 2850
NoConn ~ 6700 2950
NoConn ~ 6700 3950
Wire Wire Line
	6700 4050 8100 4050
Wire Wire Line
	6700 3050 8350 3050
NoConn ~ 5200 4150
$Comp
L symbols:Lolin32 U1
U 1 1 5F3628D0
P 5700 3700
F 0 "U1" H 5950 4897 60  0000 C CNN
F 1 "Wemos Lolin32" H 5950 4791 60  0000 C CNN
F 2 "Module:Lolin32" H 5550 3550 60  0001 C CNN
F 3 "" H 5550 3550 60  0001 C CNN
	1    5700 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J2
U 1 1 5FA627D9
P 3150 4450
F 0 "J2" H 3200 4767 50  0000 C CNN
F 1 "to-Headphone" H 3050 4700 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x03_P2.54mm_Vertical" H 3150 4450 50  0001 C CNN
F 3 "~" H 3150 4450 50  0001 C CNN
	1    3150 4450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Female J8
U 1 1 5FAB5A2D
P 5900 5950
F 0 "J8" V 5746 6198 50  0000 L CNN
F 1 "uSD-Reader" V 5950 5650 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 5900 5950 50  0001 C CNN
F 3 "~" H 5900 5950 50  0001 C CNN
	1    5900 5950
	0    1    1    0   
$EndComp
Text GLabel 5200 3550 0    50   Output ~ 0
DIN
Text GLabel 5200 3650 0    50   Output ~ 0
LRC
Text GLabel 5200 3750 0    50   Output ~ 0
BCLK
Text GLabel 2950 4350 0    50   Input ~ 0
DIN
Text GLabel 2950 4450 0    50   Input ~ 0
BCLK
Text GLabel 2950 4550 0    50   Input ~ 0
LRC
Text GLabel 6700 4150 2    50   Input ~ 0
MISO_SD
Text GLabel 6700 4650 2    50   Output ~ 0
CS_SD
Text GLabel 6000 5750 1    50   Output ~ 0
MISO_SD
Text GLabel 5700 5750 1    50   Input ~ 0
CS_SD
Text GLabel 5200 3850 0    50   Output ~ 0
SCK_SD
Text GLabel 5900 5750 1    50   Input ~ 0
SCK_SD
Text GLabel 5200 4050 0    50   Output ~ 0
MOSI_SD
Text GLabel 5800 5750 1    50   Input ~ 0
MOSI_SD
Text GLabel 7750 1850 3    50   Output ~ 0
MISO_RFID
Text GLabel 6700 3550 2    50   Input ~ 0
MISO_RFID
Text GLabel 6700 3650 2    50   Output ~ 0
MOSI_RFID
Text GLabel 7550 1850 3    50   Input ~ 0
MOSI_RFID
Text GLabel 6700 3750 2    50   Output ~ 0
SCK_RFID
Text GLabel 7450 1850 3    50   Input ~ 0
SCK_RFID
Text GLabel 6700 3250 2    50   Output ~ 0
CS_RFID
Text GLabel 7350 1850 3    50   Input ~ 0
CS_RFID
Text GLabel 8400 5450 1    50   Output ~ 0
BUT_PREV
Text GLabel 7650 5450 1    50   Output ~ 0
BUT_NEXT
Text GLabel 5200 3350 0    50   Input ~ 0
ROTENC_CLR
Text GLabel 4750 2300 3    50   Output ~ 0
ROTENC_CLR
Text GLabel 5200 3450 0    50   Input ~ 0
ROTENC_DT
Text GLabel 4650 2300 3    50   Output ~ 0
ROTENC_DT
Text GLabel 5200 3150 0    50   Input ~ 0
ROTENC_BUT
Text GLabel 4850 2300 3    50   Output ~ 0
ROTENC_BUT
Text GLabel 6700 4250 2    50   Input ~ 0
BUT_NEXT
Text GLabel 5200 3950 0    50   Output ~ 0
NEO_DI
Text GLabel 3400 5050 2    50   Input ~ 0
NEO_DI
$Comp
L Connector:Conn_01x07_Female J7
U 1 1 5FB729C6
P 3200 2600
F 0 "J7" H 3092 2075 50  0000 C CNN
F 1 "MAX98357a" H 3092 2166 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x07_P2.54mm_Vertical" H 3200 2600 50  0001 C CNN
F 3 "~" H 3200 2600 50  0001 C CNN
	1    3200 2600
	-1   0    0    1   
$EndComp
Text GLabel 3400 2300 2    50   Input ~ 0
LRC
Text GLabel 3400 2400 2    50   Input ~ 0
BCLK
Text GLabel 3400 2500 2    50   Input ~ 0
DIN
$Comp
L Device:R R4
U 1 1 5F4442CD
P 4150 2750
F 0 "R4" V 4100 2900 50  0000 C CNN
F 1 "100k" V 4150 2750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4080 2750 50  0001 C CNN
F 3 "~" H 4150 2750 50  0001 C CNN
	1    4150 2750
	1    0    0    -1  
$EndComp
Text GLabel 3450 4550 2    50   Output ~ 0
HEADPHONE
Text GLabel 3400 2700 2    50   Input ~ 0
HEADPHONE
Wire Wire Line
	3400 2600 4150 2600
Wire Wire Line
	3400 2900 3750 2900
Text GLabel 9200 2550 1    50   Output ~ 0
SW_POWER3.3
Wire Wire Line
	9200 2850 9200 2550
Text GLabel 7950 1850 3    50   Input ~ 0
SW_POWER3.3
Text GLabel 3750 2950 3    50   Input ~ 0
SW_POWER3.3
Wire Wire Line
	3750 2950 3750 2900
Connection ~ 3750 2900
Wire Wire Line
	3750 2900 4150 2900
Text GLabel 3450 4350 2    50   Input ~ 0
SW_POWER3.3
Text GLabel 3400 4950 2    50   Input ~ 0
SW_POWER3.3
Text GLabel 5600 5750 1    50   Input ~ 0
SW_POWER3.3
$Comp
L Mechanical:MountingHole H1
U 1 1 5FBB2FEE
P 1350 6400
F 0 "H1" H 1450 6446 50  0000 L CNN
F 1 "MountingHole" H 1450 6355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1350 6400 50  0001 C CNN
F 3 "~" H 1350 6400 50  0001 C CNN
	1    1350 6400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5FBB529A
P 1350 7000
F 0 "H4" H 1450 7046 50  0000 L CNN
F 1 "MountingHole" H 1450 6955 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1350 7000 50  0001 C CNN
F 3 "~" H 1350 7000 50  0001 C CNN
	1    1350 7000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5FBB5614
P 1350 6800
F 0 "H3" H 1450 6846 50  0000 L CNN
F 1 "MountingHole" H 1450 6755 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1350 6800 50  0001 C CNN
F 3 "~" H 1350 6800 50  0001 C CNN
	1    1350 6800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5FBB599F
P 1350 6600
F 0 "H2" H 1450 6646 50  0000 L CNN
F 1 "MountingHole" H 1450 6555 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1350 6600 50  0001 C CNN
F 3 "~" H 1350 6600 50  0001 C CNN
	1    1350 6600
	1    0    0    -1  
$EndComp
Text GLabel 6700 3850 2    50   Input ~ 0
BUT_PPLAY
Text GLabel 6700 4550 2    50   Input ~ 0
BUT_PREV
Wire Wire Line
	3450 4450 4050 4450
Wire Wire Line
	4600 4450 4600 4250
Wire Wire Line
	4600 4250 5200 4250
NoConn ~ 6700 2750
Wire Wire Line
	3400 5150 4600 5150
Connection ~ 4600 4450
Wire Wire Line
	6100 5750 6100 5650
Wire Wire Line
	3400 2800 4050 2800
Wire Wire Line
	4050 2800 4050 3000
Connection ~ 4050 4450
Wire Wire Line
	4050 4450 4600 4450
Wire Wire Line
	4050 3000 4400 3000
Wire Wire Line
	5050 3000 5050 2300
Connection ~ 4050 3000
Wire Wire Line
	4050 3000 4050 4450
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5FC64B4B
P 7850 5450
F 0 "J4" H 7930 5442 50  0000 L CNN
F 1 "Next-Bt" H 7450 5900 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B2B-PH-K_1x02_P2.00mm_Vertical" H 7850 5450 50  0001 C CNN
F 3 "~" H 7850 5450 50  0001 C CNN
	1    7850 5450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J9
U 1 1 5FC643C0
P 9250 5450
F 0 "J9" H 9330 5442 50  0000 L CNN
F 1 "PPlay-Bt" H 8850 5950 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B2B-PH-K_1x02_P2.00mm_Vertical" H 9250 5450 50  0001 C CNN
F 3 "~" H 9250 5450 50  0001 C CNN
	1    9250 5450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 5FC5C1DC
P 8600 5450
F 0 "J6" H 8680 5442 50  0000 L CNN
F 1 "Prev-Bt" H 8250 5900 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B2B-PH-K_1x02_P2.00mm_Vertical" H 8600 5450 50  0001 C CNN
F 3 "~" H 8600 5450 50  0001 C CNN
	1    8600 5450
	1    0    0    -1  
$EndComp
Text GLabel 9050 5450 1    50   Output ~ 0
BUT_PPLAY
Wire Wire Line
	9050 5650 9050 5550
Wire Wire Line
	8400 5650 8400 5550
Connection ~ 8400 5650
Wire Wire Line
	8400 5650 9050 5650
Wire Wire Line
	7650 5650 7650 5550
Connection ~ 7650 5650
Wire Wire Line
	7650 5650 8400 5650
$Comp
L power:GND #PWR0101
U 1 1 5FC7313F
P 4400 3000
F 0 "#PWR0101" H 4400 2750 50  0001 C CNN
F 1 "GND" H 4405 2827 50  0000 C CNN
F 2 "" H 4400 3000 50  0001 C CNN
F 3 "" H 4400 3000 50  0001 C CNN
	1    4400 3000
	1    0    0    -1  
$EndComp
Connection ~ 4400 3000
Wire Wire Line
	4400 3000 5050 3000
Text GLabel 3900 2600 1    50   Input ~ 0
GAIN
Text GLabel 6700 3150 2    50   Input ~ 0
HEADPHONE
$Comp
L Connector_Generic:Conn_01x03 J5
U 1 1 5FB195EC
P 7450 1650
F 0 "J5" V 7450 1900 50  0000 R CNN
F 1 "RFID1" V 7550 1750 50  0000 R CNN
F 2 "Connector_JST:JST_PH_B3B-PH-K_1x03_P2.00mm_Vertical" H 7450 1650 50  0001 C CNN
F 3 "~" H 7450 1650 50  0001 C CNN
	1    7450 1650
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J10
U 1 1 5FB1A8D3
P 7850 1650
F 0 "J10" V 7814 1462 50  0000 R CNN
F 1 "RFID2" V 7950 1750 50  0000 R CNN
F 2 "Connector_JST:JST_PH_B3B-PH-K_1x03_P2.00mm_Vertical" H 7850 1650 50  0001 C CNN
F 3 "~" H 7850 1650 50  0001 C CNN
	1    7850 1650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5FB1D75B
P 7850 1850
F 0 "#PWR0102" H 7850 1600 50  0001 C CNN
F 1 "GND" H 7855 1677 50  0000 C CNN
F 2 "" H 7850 1850 50  0001 C CNN
F 3 "" H 7850 1850 50  0001 C CNN
	1    7850 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5FB2C4E1
P 6900 3350
F 0 "#PWR0103" H 6900 3100 50  0001 C CNN
F 1 "GND" H 6905 3177 50  0000 C CNN
F 2 "" H 6900 3350 50  0001 C CNN
F 3 "" H 6900 3350 50  0001 C CNN
	1    6900 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 5650 6550 5650
Wire Wire Line
	6700 4450 7250 4450
$Comp
L power:GND #PWR0104
U 1 1 5FB2E14A
P 7250 4450
F 0 "#PWR0104" H 7250 4200 50  0001 C CNN
F 1 "GND" H 7255 4277 50  0000 C CNN
F 2 "" H 7250 4450 50  0001 C CNN
F 3 "" H 7250 4450 50  0001 C CNN
	1    7250 4450
	1    0    0    -1  
$EndComp
Connection ~ 7250 4450
Wire Wire Line
	7250 4450 8500 4450
Wire Wire Line
	4600 4450 4600 5150
$Comp
L power:GND #PWR0105
U 1 1 5FB31345
P 6550 5650
F 0 "#PWR0105" H 6550 5400 50  0001 C CNN
F 1 "GND" H 6555 5477 50  0000 C CNN
F 2 "" H 6550 5650 50  0001 C CNN
F 3 "" H 6550 5650 50  0001 C CNN
	1    6550 5650
	1    0    0    -1  
$EndComp
Connection ~ 6550 5650
Wire Wire Line
	6550 5650 7650 5650
NoConn ~ 6700 3450
Wire Wire Line
	6900 3350 6700 3350
Text GLabel 5200 3250 0    50   Input ~ 0
VBat
$Comp
L Device:R Rdiv1
U 1 1 5FB7B020
P 2150 2500
F 0 "Rdiv1" V 2050 2500 50  0000 C CNN
F 1 "130k" V 2150 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 2080 2500 50  0001 C CNN
F 3 "~" H 2150 2500 50  0001 C CNN
	1    2150 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R Rdiv2
U 1 1 5FB7B6C4
P 2150 2800
F 0 "Rdiv2" V 2050 2800 50  0000 C CNN
F 1 "390k" V 2150 2800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 2080 2800 50  0001 C CNN
F 3 "~" H 2150 2800 50  0001 C CNN
	1    2150 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 2500 2300 2650
Text GLabel 2450 2650 2    50   Input ~ 0
VBat
Wire Wire Line
	2450 2650 2300 2650
Connection ~ 2300 2650
Wire Wire Line
	2300 2650 2300 2800
Wire Wire Line
	1450 2600 1400 2600
Wire Wire Line
	1350 2700 1400 2700
Wire Wire Line
	1400 2500 1400 2600
Connection ~ 1400 2600
Wire Wire Line
	1400 2600 1350 2600
Wire Wire Line
	1400 2800 1400 2700
Connection ~ 1400 2700
Wire Wire Line
	1400 2700 1450 2700
Text Notes 1300 2600 0    50   ~ 0
+
Text Notes 1300 2750 0    50   ~ 0
-
$Comp
L Connector_Generic:Conn_01x02 J11
U 1 1 5FB80D04
P 1150 2600
F 0 "J11" H 1230 2592 50  0000 L CNN
F 1 "Battery" H 1050 2700 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B2B-PH-K_1x02_P2.00mm_Vertical" H 1150 2600 50  0001 C CNN
F 3 "~" H 1150 2600 50  0001 C CNN
	1    1150 2600
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J12
U 1 1 5FB9B464
P 1650 2700
F 0 "J12" H 1600 2800 50  0000 L CNN
F 1 "toLolin" H 1550 2450 50  0000 L CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x02_P2.00mm_Vertical" H 1650 2700 50  0001 C CNN
F 3 "~" H 1650 2700 50  0001 C CNN
	1    1650 2700
	1    0    0    1   
$EndComp
Wire Wire Line
	2000 2800 1900 2800
Wire Wire Line
	2000 2500 1900 2500
$Comp
L Device:C C1
U 1 1 5FECE190
P 1900 2650
F 0 "C1" H 1900 2850 50  0000 L CNN
F 1 "10uF" H 1900 2400 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 1938 2500 50  0001 C CNN
F 3 "~" H 1900 2650 50  0001 C CNN
	1    1900 2650
	1    0    0    -1  
$EndComp
Connection ~ 1900 2500
Wire Wire Line
	1900 2500 1400 2500
Connection ~ 1900 2800
Wire Wire Line
	1900 2800 1400 2800
$Comp
L Connector:Conn_01x02_Male J13
U 1 1 5FED62A1
P 5650 1650
F 0 "J13" V 5712 1694 50  0000 L CNN
F 1 "Reset" V 5600 1500 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B2B-PH-K_1x02_P2.00mm_Vertical" H 5650 1650 50  0001 C CNN
F 3 "~" H 5650 1650 50  0001 C CNN
	1    5650 1650
	0    1    1    0   
$EndComp
Text GLabel 5200 2850 0    50   Input ~ 0
EN
Text GLabel 5550 1850 3    50   Input ~ 0
EN
$Comp
L power:GND #PWR01
U 1 1 5FED952B
P 5650 1900
F 0 "#PWR01" H 5650 1650 50  0001 C CNN
F 1 "GND" H 5655 1727 50  0000 C CNN
F 2 "" H 5650 1900 50  0001 C CNN
F 3 "" H 5650 1900 50  0001 C CNN
	1    5650 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1900 5650 1850
$EndSCHEMATC
