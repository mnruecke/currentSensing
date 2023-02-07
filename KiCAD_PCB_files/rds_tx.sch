EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "6CH Current Sensing Module"
Date "2020-08-31"
Rev ""
Comp "University of Würzburg"
Comment1 "Experimental Physics 5 (Biophysics)"
Comment2 "Martin Rückert"
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	1000 7125 1000 7200
Wire Wire Line
	1000 7200 1300 7200
$Comp
L Device:C_Small C2
U 1 1 5EFF2D8E
P 1300 7300
F 0 "C2" H 1392 7346 50  0000 L CNN
F 1 "100n" H 1392 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 1300 7300 50  0001 C CNN
F 3 "~" H 1300 7300 50  0001 C CNN
	1    1300 7300
	1    0    0    -1  
$EndComp
Connection ~ 1300 7200
$Comp
L Device:C_Small C3
U 1 1 5EFF3105
P 1650 7300
F 0 "C3" H 1742 7346 50  0000 L CNN
F 1 "100n" H 1742 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 1650 7300 50  0001 C CNN
F 3 "~" H 1650 7300 50  0001 C CNN
	1    1650 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 7400 1300 7400
Connection ~ 1300 7400
Text Notes 725  5375 0    118  ~ 24
Power
Wire Wire Line
	1300 7200 1650 7200
Wire Wire Line
	1300 7400 1650 7400
Wire Wire Line
	6250 6475 6500 6475
$Comp
L Connector:Screw_Terminal_01x02 J11
U 1 1 5F40D945
P 6050 6475
F 0 "J11" H 5968 6692 50  0000 C CNN
F 1 "LiPo_Akku" H 5968 6601 50  0000 C CNN
F 2 "mps_footprints:screw_conn_2" H 6050 6475 50  0001 C CNN
F 3 "~" H 6050 6475 50  0001 C CNN
	1    6050 6475
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x26_Female J4
U 1 1 5F535290
P 2625 2450
F 0 "J4" H 2475 3775 50  0000 L CNN
F 1 "PSoC rhs" V 2675 2025 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x26_P2.54mm_Vertical" H 2625 2450 50  0001 C CNN
F 3 "~" H 2625 2450 50  0001 C CNN
	1    2625 2450
	-1   0    0    -1  
$EndComp
Wire Notes Line
	2200 3875 2625 3875
Text Notes 2150 4000 0    60   ~ 0
20,32 mm
Wire Notes Line
	2200 3800 2200 3900
Wire Notes Line
	2625 3800 2625 3900
Text Notes 2225 3675 0    60   ~ 0
GND
Text Notes 2225 3775 0    60   ~ 0
VDD
Text Notes 2475 3775 0    60   ~ 0
2.0
Text Notes 2225 1275 0    60   ~ 0
GND
Text Notes 2425 1275 0    60   ~ 0
VDD
Text Notes 2400 1375 0    60   ~ 0
GND
Text Notes 2225 1375 0    60   ~ 0
3.0
Text Notes 2450 1475 0    60   ~ 0
1.7
Text Notes 2450 1575 0    60   ~ 0
1.6
Text Notes 2450 1675 0    60   ~ 0
1.5
Text Notes 2200 2175 0    60   ~ 0
15.0
Text Notes 2200 2275 0    60   ~ 0
15.1
$Comp
L Connector:Conn_01x26_Female J3
U 1 1 5F5230DB
P 2200 2450
F 0 "J3" H 2050 3775 50  0000 L CNN
F 1 "PSoC lhs" V 2250 2000 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x26_P2.54mm_Vertical" H 2200 2450 50  0001 C CNN
F 3 "~" H 2200 2450 50  0001 C CNN
	1    2200 2450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x26_Female J2
U 1 1 5F5245D0
P 1950 2400
F 0 "J2" H 1825 3725 50  0000 L CNN
F 1 "board space lhs" V 1425 1950 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x26_P2.54mm_Vertical" H 1950 2400 50  0001 C CNN
F 3 "~" H 1950 2400 50  0001 C CNN
	1    1950 2400
	1    0    0    -1  
$EndComp
Text Notes 4650 6500 0    60   ~ 0
+
Wire Wire Line
	5275 6475 5275 6375
Wire Wire Line
	4975 6475 5275 6475
Wire Wire Line
	5275 6575 5275 6700
Wire Wire Line
	4975 6575 5275 6575
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5EFC8893
P 4775 6475
F 0 "J1" H 4883 6656 50  0000 C CNN
F 1 "LiPo_Akku" H 4883 6565 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4775 6475 50  0001 C CNN
F 3 "~" H 4775 6475 50  0001 C CNN
	1    4775 6475
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 7400 3175 7400
Wire Wire Line
	2900 7200 3175 7200
$Comp
L Device:C_Small C25
U 1 1 5F5377F8
P 3175 7300
F 0 "C25" H 3267 7346 50  0000 L CNN
F 1 "100n" H 3267 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3175 7300 50  0001 C CNN
F 3 "~" H 3175 7300 50  0001 C CNN
	1    3175 7300
	1    0    0    -1  
$EndComp
Text Notes 1075 7125 0    60   ~ 0
PSoC, BLE\n
Wire Wire Line
	6500 6575 6500 6700
Wire Wire Line
	6250 6575 6500 6575
Wire Wire Line
	6500 6475 6500 6375
Wire Wire Line
	2000 1250 1750 1200
Connection ~ 1750 1200
Wire Wire Line
	1750 1200 1500 1200
Wire Wire Line
	2000 3650 1750 3600
Connection ~ 1750 3600
Wire Wire Line
	2000 3750 1750 3700
Connection ~ 1750 3700
Wire Wire Line
	1750 3700 1500 3700
Wire Wire Line
	1250 3600 1750 3600
Wire Wire Line
	2825 1250 3075 1200
Wire Wire Line
	2825 1350 3075 1300
Wire Wire Line
	2000 1350 1750 1300
Wire Wire Line
	2000 1450 1750 1400
Wire Wire Line
	2000 1550 1750 1500
Wire Wire Line
	2000 1650 1750 1600
Wire Wire Line
	2000 1750 1750 1700
Wire Wire Line
	2000 1850 1750 1800
Wire Wire Line
	2000 1950 1750 1900
Wire Wire Line
	2000 2050 1750 2000
Wire Wire Line
	2000 2150 1750 2100
Wire Wire Line
	2000 2250 1750 2200
Wire Wire Line
	2000 2350 1750 2300
Wire Wire Line
	2000 2450 1750 2400
Wire Wire Line
	2000 2550 1750 2500
Wire Wire Line
	2000 2650 1750 2600
Wire Wire Line
	2000 2750 1750 2700
Wire Wire Line
	2000 2850 1750 2800
Wire Wire Line
	2000 2950 1750 2900
Wire Wire Line
	2000 3050 1750 3000
Wire Wire Line
	2000 3150 1750 3100
Wire Wire Line
	2000 3250 1750 3200
Wire Wire Line
	2000 3350 1750 3300
Wire Wire Line
	2000 3450 1750 3400
Wire Wire Line
	2000 3550 1750 3500
Wire Wire Line
	3075 1400 2825 1450
Wire Wire Line
	3075 1500 2825 1550
Wire Wire Line
	3075 1600 2825 1650
Wire Wire Line
	3075 1700 2825 1750
Wire Wire Line
	3075 1800 2825 1850
Wire Wire Line
	3075 1900 2825 1950
Wire Wire Line
	3075 2000 2825 2050
Wire Wire Line
	3075 2100 2825 2150
Wire Wire Line
	3075 2300 2825 2350
Wire Wire Line
	3075 2400 2825 2450
Wire Wire Line
	3075 2500 2825 2550
Wire Wire Line
	3075 2600 2825 2650
Wire Wire Line
	3075 2700 2825 2750
Wire Wire Line
	3075 2800 2825 2850
Wire Wire Line
	3075 2900 2825 2950
Wire Wire Line
	3075 3000 2825 3050
Wire Wire Line
	3075 3100 2825 3150
Wire Wire Line
	3075 3200 2825 3250
Wire Wire Line
	3075 3300 2825 3350
Wire Wire Line
	3075 3400 2825 3450
Wire Wire Line
	3075 3500 2825 3550
Wire Wire Line
	3075 3600 2825 3650
Wire Wire Line
	3075 3700 2825 3750
$Comp
L Connector:Conn_01x04_Female J6
U 1 1 5F83EEBA
P 3725 1300
F 0 "J6" H 3753 1276 50  0000 L CNN
F 1 "BLE" H 3753 1185 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3725 1300 50  0001 C CNN
F 3 "~" H 3725 1300 50  0001 C CNN
	1    3725 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3075 1200 3250 1200
Wire Wire Line
	3250 1050 3250 1200
Wire Wire Line
	3425 1075 3425 1300
Connection ~ 3425 1300
Wire Wire Line
	3425 1300 3525 1300
$Comp
L Device:Crystal Y1
U 1 1 5F8B6C0B
P 1350 4550
F 0 "Y1" V 1396 4419 50  0000 R CNN
F 1 "18 MHz" V 1350 4950 50  0000 R CNN
F 2 "mps_footprints:ABLS_Crystal_18MHz_SMD" H 1350 4550 50  0001 C CNN
F 3 "~" H 1350 4550 50  0001 C CNN
	1    1350 4550
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5F8B94B2
P 1200 4700
F 0 "C4" H 1292 4746 50  0000 L CNN
F 1 "18p" H 1292 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1200 4700 50  0001 C CNN
F 3 "~" H 1200 4700 50  0001 C CNN
	1    1200 4700
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5F8B9F51
P 1200 4400
F 0 "C1" H 1325 4625 50  0000 L CNN
F 1 "18p" H 1300 4525 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1200 4400 50  0001 C CNN
F 3 "~" H 1200 4400 50  0001 C CNN
	1    1200 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1300 4700 1350 4700
Wire Wire Line
	2025 4500 1575 4500
Wire Wire Line
	1350 4400 1575 4400
Wire Wire Line
	1575 4400 1575 4500
Wire Wire Line
	1575 4600 2025 4600
Wire Wire Line
	1300 4400 1350 4400
Connection ~ 1350 4400
Text Notes 2450 1775 0    60   ~ 0
1.4
Text Notes 2450 1875 0    60   ~ 12
1.3
Text Notes 2450 1975 0    60   ~ 0
1.2
Text Notes 2450 2075 0    60   ~ 12
1.1
Text Notes 2450 2175 0    60   ~ 12
1.0
Text Notes 2450 3075 0    60   ~ 0
2.7
Text Notes 2400 2975 0    60   ~ 0
12.7
Text Notes 2425 2275 0    60   ~ 0
12.0
Wire Wire Line
	3075 2200 2825 2250
Connection ~ 3075 1500
Connection ~ 3075 1400
Connection ~ 3075 1300
Connection ~ 3075 1200
$Comp
L Connector:Conn_01x26_Female J5
U 1 1 5F535296
P 2875 2400
F 0 "J5" H 2725 3725 50  0000 L CNN
F 1 "board space rhs" V 3250 1925 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x26_P2.54mm_Vertical" H 2875 2400 50  0001 C CNN
F 3 "~" H 2875 2400 50  0001 C CNN
	1    2875 2400
	-1   0    0    -1  
$EndComp
Text Notes 1900 850  0    118  ~ 24
PSoC
Text Notes 3875 4650 0    118  ~ 24
Connectors
$Comp
L power:+5V #PWR05
U 1 1 6088D279
P 1000 7125
F 0 "#PWR05" H 1000 6975 50  0001 C CNN
F 1 "+5V" H 1015 7298 50  0000 C CNN
F 2 "" H 1000 7125 50  0001 C CNN
F 3 "" H 1000 7125 50  0001 C CNN
	1    1000 7125
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 6088F2E6
P 1500 3700
F 0 "#PWR04" H 1500 3550 50  0001 C CNN
F 1 "+5V" V 1515 3828 50  0000 L CNN
F 2 "" H 1500 3700 50  0001 C CNN
F 3 "" H 1500 3700 50  0001 C CNN
	1    1500 3700
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 60894036
P 3250 1050
F 0 "#PWR016" H 3250 900 50  0001 C CNN
F 1 "+5V" H 3265 1223 50  0000 C CNN
F 2 "" H 3250 1050 50  0001 C CNN
F 3 "" H 3250 1050 50  0001 C CNN
	1    3250 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3175 7200 3475 7200
$Comp
L Device:C_Small C10
U 1 1 608CF42E
P 3475 7300
F 0 "C10" H 3567 7346 50  0000 L CNN
F 1 "100n" H 3567 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3475 7300 50  0001 C CNN
F 3 "~" H 3475 7300 50  0001 C CNN
	1    3475 7300
	1    0    0    -1  
$EndComp
Connection ~ 3475 7200
$Comp
L Device:C_Small C11
U 1 1 608CF435
P 3825 7300
F 0 "C11" H 3917 7346 50  0000 L CNN
F 1 "100n" H 3917 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3825 7300 50  0001 C CNN
F 3 "~" H 3825 7300 50  0001 C CNN
	1    3825 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3175 7400 3475 7400
Connection ~ 3475 7400
Wire Wire Line
	3475 7200 3825 7200
Wire Wire Line
	3475 7400 3825 7400
Connection ~ 3825 7400
Connection ~ 3825 7200
Wire Wire Line
	3825 7400 4100 7400
Wire Wire Line
	3825 7200 4100 7200
$Comp
L Device:C_Small C12
U 1 1 608CF443
P 4100 7300
F 0 "C12" H 4192 7346 50  0000 L CNN
F 1 "100n" H 4192 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4100 7300 50  0001 C CNN
F 3 "~" H 4100 7300 50  0001 C CNN
	1    4100 7300
	1    0    0    -1  
$EndComp
Connection ~ 3175 7200
Connection ~ 3175 7400
$Comp
L power:+5V #PWR047
U 1 1 6090114B
P 5275 6375
F 0 "#PWR047" H 5275 6225 50  0001 C CNN
F 1 "+5V" H 5290 6548 50  0000 C CNN
F 2 "" H 5275 6375 50  0001 C CNN
F 3 "" H 5275 6375 50  0001 C CNN
	1    5275 6375
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR051
U 1 1 60901885
P 6500 6375
F 0 "#PWR051" H 6500 6225 50  0001 C CNN
F 1 "+5V" H 6515 6548 50  0000 C CNN
F 2 "" H 6500 6375 50  0001 C CNN
F 3 "" H 6500 6375 50  0001 C CNN
	1    6500 6375
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR048
U 1 1 60939980
P 5275 6700
F 0 "#PWR048" H 5275 6450 50  0001 C CNN
F 1 "GND" H 5280 6527 50  0000 C CNN
F 2 "" H 5275 6700 50  0001 C CNN
F 3 "" H 5275 6700 50  0001 C CNN
	1    5275 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 609C5F36
P 1250 3600
F 0 "#PWR03" H 1250 3350 50  0001 C CNN
F 1 "GND" V 1255 3472 50  0000 R CNN
F 2 "" H 1250 3600 50  0001 C CNN
F 3 "" H 1250 3600 50  0001 C CNN
	1    1250 3600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 609C75E8
P 1100 4700
F 0 "#PWR02" H 1100 4450 50  0001 C CNN
F 1 "GND" H 1105 4527 50  0000 C CNN
F 2 "" H 1100 4700 50  0001 C CNN
F 3 "" H 1100 4700 50  0001 C CNN
	1    1100 4700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 609C8292
P 1100 4400
F 0 "#PWR01" H 1100 4150 50  0001 C CNN
F 1 "GND" H 1105 4227 50  0000 C CNN
F 2 "" H 1100 4400 50  0001 C CNN
F 3 "" H 1100 4400 50  0001 C CNN
	1    1100 4400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 609DDE3A
P 1000 7400
F 0 "#PWR06" H 1000 7150 50  0001 C CNN
F 1 "GND" H 1005 7227 50  0000 C CNN
F 2 "" H 1000 7400 50  0001 C CNN
F 3 "" H 1000 7400 50  0001 C CNN
	1    1000 7400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR052
U 1 1 60AC98F7
P 6500 6700
F 0 "#PWR052" H 6500 6450 50  0001 C CNN
F 1 "GND" H 6505 6527 50  0000 C CNN
F 2 "" H 6500 6700 50  0001 C CNN
F 3 "" H 6500 6700 50  0001 C CNN
	1    6500 6700
	1    0    0    -1  
$EndComp
Connection ~ 1750 2700
Connection ~ 1750 2800
Connection ~ 1750 3200
Connection ~ 1750 3300
Connection ~ 1750 1300
Connection ~ 1750 1400
Connection ~ 1750 1600
Connection ~ 1750 1700
Connection ~ 1750 1800
Connection ~ 1750 1900
Text Notes 2475 3675 0    60   ~ 12
2.1
Text Notes 2475 3575 0    60   ~ 12
2.2
Text Notes 3100 3550 0    60   ~ 0
SW
Text Notes 3100 3650 0    60   ~ 0
LED
$Comp
L Device:CP_Small C8
U 1 1 60BDBA44
P 1000 7300
F 0 "C8" H 1088 7346 50  0000 L CNN
F 1 "100u" H 1088 7255 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_10x12.5" H 1000 7300 50  0001 C CNN
F 3 "~" H 1000 7300 50  0001 C CNN
	1    1000 7300
	1    0    0    -1  
$EndComp
Connection ~ 1000 7200
Connection ~ 1000 7400
Wire Wire Line
	4100 7400 4375 7400
Wire Wire Line
	4100 7200 4375 7200
$Comp
L Device:C_Small C20
U 1 1 60D48300
P 4375 7300
F 0 "C20" H 4467 7346 50  0000 L CNN
F 1 "100n" H 4467 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4375 7300 50  0001 C CNN
F 3 "~" H 4375 7300 50  0001 C CNN
	1    4375 7300
	1    0    0    -1  
$EndComp
Connection ~ 4100 7200
Connection ~ 4100 7400
$Comp
L power:GND #PWR0113
U 1 1 62461005
P 1500 1200
F 0 "#PWR0113" H 1500 950 50  0001 C CNN
F 1 "GND" H 1505 1027 50  0000 C CNN
F 2 "" H 1500 1200 50  0001 C CNN
F 3 "" H 1500 1200 50  0001 C CNN
	1    1500 1200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 62467ADB
P 3425 1075
F 0 "#PWR0114" H 3425 825 50  0001 C CNN
F 1 "GND" H 3430 902 50  0000 C CNN
F 2 "" H 3425 1075 50  0001 C CNN
F 3 "" H 3425 1075 50  0001 C CNN
	1    3425 1075
	-1   0    0    1   
$EndComp
Connection ~ 3075 3400
$Comp
L CY8CKIT-059_PSoC_5LP:MCA1101 U33
U 1 1 62980DCA
P 6650 1100
F 0 "U33" H 6650 1597 60  0000 C CNN
F 1 "MCA1101" H 6650 1491 60  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x12.8mm_P1.27mm" H 6650 1100 60  0001 C CNN
F 3 "" H 6650 1100 60  0001 C CNN
	1    6650 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1250 7800 1250
Wire Wire Line
	7000 1150 7800 1150
$Comp
L power:GND #PWR08
U 1 1 609DF197
P 5925 7325
F 0 "#PWR08" H 5925 7075 50  0001 C CNN
F 1 "GND" H 5930 7152 50  0000 C CNN
F 2 "" H 5925 7325 50  0001 C CNN
F 3 "" H 5925 7325 50  0001 C CNN
	1    5925 7325
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5F65866D
P 5925 7325
F 0 "#FLG01" H 5925 7400 50  0001 C CNN
F 1 "PWR_FLAG" H 5900 7500 50  0000 C CNN
F 2 "" H 5925 7325 50  0001 C CNN
F 3 "~" H 5925 7325 50  0001 C CNN
	1    5925 7325
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Female J70
U 1 1 60BD858B
P 5575 1550
F 0 "J70" V 5513 1262 50  0000 R CNN
F 1 "IP_Adjust_A1" V 5625 1850 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 5575 1550 50  0001 C CNN
F 3 "~" H 5575 1550 50  0001 C CNN
	1    5575 1550
	0    -1   1    0   
$EndComp
$Comp
L Connector:Conn_01x05_Female J71
U 1 1 60CA8AA7
P 5575 850
F 0 "J71" V 5513 562 50  0000 R CNN
F 1 "IN_Adjust_A1" V 5625 1150 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 5575 850 50  0001 C CNN
F 3 "~" H 5575 850 50  0001 C CNN
	1    5575 850 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5375 1350 5475 1350
Connection ~ 5475 1350
Wire Wire Line
	5475 1350 5575 1350
Connection ~ 5575 1350
Wire Wire Line
	5575 1350 5675 1350
Connection ~ 5675 1350
Wire Wire Line
	5675 1350 5775 1350
Connection ~ 5775 1350
Wire Wire Line
	5775 1350 6300 1350
Connection ~ 6300 950 
Wire Wire Line
	6300 950  6300 1050
Connection ~ 6300 1050
Wire Wire Line
	6300 1050 6300 1150
Wire Wire Line
	5375 1050 5475 1050
Connection ~ 5475 1050
Wire Wire Line
	5475 1050 5575 1050
Connection ~ 5575 1050
Wire Wire Line
	5575 1050 5675 1050
Connection ~ 5675 1050
Wire Wire Line
	5675 1050 5775 1050
Connection ~ 5775 1050
Wire Wire Line
	5775 1050 6300 1050
Connection ~ 6300 1350
Wire Wire Line
	6300 1350 6300 1250
Connection ~ 6300 1450
Wire Wire Line
	6300 1450 6300 1550
Wire Wire Line
	6300 1350 6300 1450
Wire Wire Line
	6300 850  6300 950 
NoConn ~ 7000 1550
NoConn ~ 7000 850 
$Comp
L power:GND #PWR07
U 1 1 612E3E97
P 7000 950
F 0 "#PWR07" H 7000 700 50  0001 C CNN
F 1 "GND" V 7005 822 50  0000 R CNN
F 2 "" H 7000 950 50  0001 C CNN
F 3 "" H 7000 950 50  0001 C CNN
	1    7000 950 
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR022
U 1 1 612E47AD
P 7000 1050
F 0 "#PWR022" H 7000 800 50  0001 C CNN
F 1 "GND" V 7005 922 50  0000 R CNN
F 2 "" H 7000 1050 50  0001 C CNN
F 3 "" H 7000 1050 50  0001 C CNN
	1    7000 1050
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR025
U 1 1 612E48CB
P 7000 1350
F 0 "#PWR025" H 7000 1100 50  0001 C CNN
F 1 "GND" V 7005 1222 50  0000 R CNN
F 2 "" H 7000 1350 50  0001 C CNN
F 3 "" H 7000 1350 50  0001 C CNN
	1    7000 1350
	0    -1   1    0   
$EndComp
Text Label 7800 1250 2    60   ~ 0
ISenseP_A1
Text Label 7800 1150 2    60   ~ 0
ISenseN_A1
$Comp
L CY8CKIT-059_PSoC_5LP:MCA1101 U34
U 1 1 61433086
P 6675 2225
F 0 "U34" H 6675 2722 60  0000 C CNN
F 1 "MCA1101" H 6675 2616 60  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x12.8mm_P1.27mm" H 6675 2225 60  0001 C CNN
F 3 "" H 6675 2225 60  0001 C CNN
	1    6675 2225
	1    0    0    -1  
$EndComp
Wire Wire Line
	7025 2375 7825 2375
Wire Wire Line
	7025 2275 7825 2275
Connection ~ 6325 2075
Wire Wire Line
	6325 2075 6325 2175
Connection ~ 6325 2175
Wire Wire Line
	6325 2175 6325 2275
Connection ~ 6325 2475
Wire Wire Line
	6325 2475 6325 2375
Connection ~ 6325 2575
Wire Wire Line
	6325 2575 6325 2675
Wire Wire Line
	6325 2475 6325 2575
Wire Wire Line
	6325 1975 6325 2075
NoConn ~ 7025 2675
NoConn ~ 7025 1975
$Comp
L power:GND #PWR035
U 1 1 614330C8
P 7025 2075
F 0 "#PWR035" H 7025 1825 50  0001 C CNN
F 1 "GND" V 7030 1947 50  0000 R CNN
F 2 "" H 7025 2075 50  0001 C CNN
F 3 "" H 7025 2075 50  0001 C CNN
	1    7025 2075
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR038
U 1 1 614330CE
P 7025 2175
F 0 "#PWR038" H 7025 1925 50  0001 C CNN
F 1 "GND" V 7030 2047 50  0000 R CNN
F 2 "" H 7025 2175 50  0001 C CNN
F 3 "" H 7025 2175 50  0001 C CNN
	1    7025 2175
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR040
U 1 1 614330D4
P 7025 2475
F 0 "#PWR040" H 7025 2225 50  0001 C CNN
F 1 "GND" V 7030 2347 50  0000 R CNN
F 2 "" H 7025 2475 50  0001 C CNN
F 3 "" H 7025 2475 50  0001 C CNN
	1    7025 2475
	0    -1   1    0   
$EndComp
Text Label 7825 2375 2    60   ~ 0
ISenseP_B1
Text Label 7825 2275 2    60   ~ 0
ISenseN_B1
$Comp
L CY8CKIT-059_PSoC_5LP:MCA1101 U35
U 1 1 614AD32E
P 9925 1125
F 0 "U35" H 9925 1622 60  0000 C CNN
F 1 "MCA1101" H 9925 1516 60  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x12.8mm_P1.27mm" H 9925 1125 60  0001 C CNN
F 3 "" H 9925 1125 60  0001 C CNN
	1    9925 1125
	1    0    0    -1  
$EndComp
Wire Wire Line
	10275 1275 11075 1275
Wire Wire Line
	10275 1175 11075 1175
$Comp
L Connector:Conn_01x05_Female J74
U 1 1 614AD33C
P 8850 1575
F 0 "J74" V 8788 1287 50  0000 R CNN
F 1 "IP_Adjust_A2" V 8900 1875 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 8850 1575 50  0001 C CNN
F 3 "~" H 8850 1575 50  0001 C CNN
	1    8850 1575
	0    -1   1    0   
$EndComp
Wire Wire Line
	8650 1375 8750 1375
Connection ~ 8750 1375
Wire Wire Line
	8750 1375 8850 1375
Connection ~ 8850 1375
Wire Wire Line
	8850 1375 8950 1375
Connection ~ 8950 1375
Wire Wire Line
	8950 1375 9050 1375
Connection ~ 9050 1375
Wire Wire Line
	9050 1375 9575 1375
Connection ~ 9575 975 
Wire Wire Line
	9575 975  9575 1075
Connection ~ 9575 1075
Wire Wire Line
	9575 1075 9575 1175
Connection ~ 9575 1375
Wire Wire Line
	9575 1375 9575 1275
Connection ~ 9575 1475
Wire Wire Line
	9575 1475 9575 1575
Wire Wire Line
	9575 1375 9575 1475
Wire Wire Line
	9575 875  9575 975 
NoConn ~ 10275 1575
NoConn ~ 10275 875 
$Comp
L power:GND #PWR063
U 1 1 614AD370
P 10275 975
F 0 "#PWR063" H 10275 725 50  0001 C CNN
F 1 "GND" V 10280 847 50  0000 R CNN
F 2 "" H 10275 975 50  0001 C CNN
F 3 "" H 10275 975 50  0001 C CNN
	1    10275 975 
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR064
U 1 1 614AD376
P 10275 1075
F 0 "#PWR064" H 10275 825 50  0001 C CNN
F 1 "GND" V 10280 947 50  0000 R CNN
F 2 "" H 10275 1075 50  0001 C CNN
F 3 "" H 10275 1075 50  0001 C CNN
	1    10275 1075
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR065
U 1 1 614AD37C
P 10275 1375
F 0 "#PWR065" H 10275 1125 50  0001 C CNN
F 1 "GND" V 10280 1247 50  0000 R CNN
F 2 "" H 10275 1375 50  0001 C CNN
F 3 "" H 10275 1375 50  0001 C CNN
	1    10275 1375
	0    -1   1    0   
$EndComp
Text Label 11075 1275 2    60   ~ 0
ISenseP_A2
Text Label 11075 1175 2    60   ~ 0
ISenseN_A2
$Comp
L CY8CKIT-059_PSoC_5LP:MCA1101 U36
U 1 1 614AD38A
P 9950 2250
F 0 "U36" H 9950 2747 60  0000 C CNN
F 1 "MCA1101" H 9950 2641 60  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x12.8mm_P1.27mm" H 9950 2250 60  0001 C CNN
F 3 "" H 9950 2250 60  0001 C CNN
	1    9950 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 2400 11100 2400
Wire Wire Line
	10300 2300 11100 2300
Connection ~ 9600 2100
Wire Wire Line
	9600 2100 9600 2200
Connection ~ 9600 2200
Wire Wire Line
	9600 2200 9600 2300
Connection ~ 9600 2500
Wire Wire Line
	9600 2500 9600 2400
Connection ~ 9600 2600
Wire Wire Line
	9600 2600 9600 2700
Wire Wire Line
	9600 2500 9600 2600
Wire Wire Line
	9600 2000 9600 2100
NoConn ~ 10300 2700
NoConn ~ 10300 2000
$Comp
L power:GND #PWR093
U 1 1 614AD3CC
P 10300 2100
F 0 "#PWR093" H 10300 1850 50  0001 C CNN
F 1 "GND" V 10305 1972 50  0000 R CNN
F 2 "" H 10300 2100 50  0001 C CNN
F 3 "" H 10300 2100 50  0001 C CNN
	1    10300 2100
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR096
U 1 1 614AD3D2
P 10300 2200
F 0 "#PWR096" H 10300 1950 50  0001 C CNN
F 1 "GND" V 10305 2072 50  0000 R CNN
F 2 "" H 10300 2200 50  0001 C CNN
F 3 "" H 10300 2200 50  0001 C CNN
	1    10300 2200
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR099
U 1 1 614AD3D8
P 10300 2500
F 0 "#PWR099" H 10300 2250 50  0001 C CNN
F 1 "GND" V 10305 2372 50  0000 R CNN
F 2 "" H 10300 2500 50  0001 C CNN
F 3 "" H 10300 2500 50  0001 C CNN
	1    10300 2500
	0    -1   1    0   
$EndComp
Text Label 11100 2400 2    60   ~ 0
ISenseP_B2
Text Label 11100 2300 2    60   ~ 0
ISenseN_B2
$Comp
L Connector:Conn_01x05_Female J73
U 1 1 6152E1AC
P 5625 1975
F 0 "J73" V 5563 1687 50  0000 R CNN
F 1 "IN_Adjust_B1" V 5675 2275 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 5625 1975 50  0001 C CNN
F 3 "~" H 5625 1975 50  0001 C CNN
	1    5625 1975
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5825 2175 6325 2175
$Comp
L Connector:Conn_01x05_Female J77
U 1 1 6152EB3F
P 8925 2000
F 0 "J77" V 8863 1712 50  0000 R CNN
F 1 "IN_Adjust_B2" V 8975 2300 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 8925 2000 50  0001 C CNN
F 3 "~" H 8925 2000 50  0001 C CNN
	1    8925 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9125 2200 9600 2200
$Comp
L Connector:Conn_01x05_Female J72
U 1 1 6152F676
P 5625 2675
F 0 "J72" V 5563 2387 50  0000 R CNN
F 1 "IP_Adjust_B1" V 5675 2975 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 5625 2675 50  0001 C CNN
F 3 "~" H 5625 2675 50  0001 C CNN
	1    5625 2675
	0    -1   1    0   
$EndComp
Wire Wire Line
	5825 2475 6325 2475
$Comp
L Connector:Conn_01x05_Female J76
U 1 1 615A5D0F
P 8925 2700
F 0 "J76" V 8863 2412 50  0000 R CNN
F 1 "IP_Adjust_B2" V 8975 3000 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 8925 2700 50  0001 C CNN
F 3 "~" H 8925 2700 50  0001 C CNN
	1    8925 2700
	0    -1   1    0   
$EndComp
Wire Wire Line
	9125 2500 9600 2500
Wire Wire Line
	5425 2475 5525 2475
Connection ~ 5825 2475
Connection ~ 5525 2475
Wire Wire Line
	5525 2475 5625 2475
Connection ~ 5625 2475
Wire Wire Line
	5625 2475 5725 2475
Connection ~ 5725 2475
Wire Wire Line
	5725 2475 5825 2475
Wire Wire Line
	5425 2175 5525 2175
Connection ~ 5825 2175
Connection ~ 5525 2175
Wire Wire Line
	5525 2175 5625 2175
Connection ~ 5625 2175
Wire Wire Line
	5625 2175 5725 2175
Connection ~ 5725 2175
Wire Wire Line
	5725 2175 5825 2175
$Comp
L Connector:Conn_01x05_Female J75
U 1 1 61699851
P 8850 875
F 0 "J75" V 8788 587 50  0000 R CNN
F 1 "IN_Adjust_A2" V 8900 1175 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 8850 875 50  0001 C CNN
F 3 "~" H 8850 875 50  0001 C CNN
	1    8850 875 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9050 1075 9575 1075
Wire Wire Line
	8650 1075 8750 1075
Connection ~ 9050 1075
Connection ~ 8750 1075
Wire Wire Line
	8750 1075 8850 1075
Connection ~ 8850 1075
Wire Wire Line
	8850 1075 8950 1075
Connection ~ 8950 1075
Wire Wire Line
	8950 1075 9050 1075
Wire Wire Line
	8725 2500 8825 2500
Connection ~ 9125 2500
Connection ~ 8825 2500
Wire Wire Line
	8825 2500 8925 2500
Connection ~ 8925 2500
Wire Wire Line
	8925 2500 9025 2500
Connection ~ 9025 2500
Wire Wire Line
	9025 2500 9125 2500
Wire Wire Line
	8725 2200 8825 2200
Connection ~ 9125 2200
Connection ~ 8825 2200
Wire Wire Line
	8825 2200 8925 2200
Connection ~ 8925 2200
Wire Wire Line
	8925 2200 9025 2200
Connection ~ 9025 2200
Wire Wire Line
	9025 2200 9125 2200
Connection ~ 1350 4700
Wire Wire Line
	1575 4700 1350 4700
Wire Wire Line
	1575 4600 1575 4700
Text Notes 2225 2075 0    60   ~ 0
3.7
Text Notes 2225 1600 0    60   ~ 12
3.2
Text Notes 2225 3575 0    60   ~ 0
RST
Text Notes 2225 3475 0    60   ~ 0
0.7
Text Notes 2225 3375 0    60   ~ 0
0.6\n
Text Notes 2225 3375 0    60   ~ 0
0.5\n\n
Text Notes 2200 3200 0    60   ~ 12
0.4\n
Text Notes 2200 3100 0    60   ~ 12
0.3
Text Notes 2200 3000 0    60   ~ 12
0.2
Text Notes 2225 3000 0    60   ~ 0
0.1\n\n
Text Notes 2200 2875 0    60   ~ 0
0.0\n\n
Text Notes 2200 2375 0    60   ~ 12
15.2
Text Notes 2200 2475 0    60   ~ 12
15.3
Text Notes 2200 2575 0    60   ~ 12
15.4
Text Label 2025 4600 2    60   ~ 0
XTALp
Text Label 2025 4500 2    60   ~ 0
XTALn
Text Label 1350 2200 0    60   ~ 0
XTALp
Text Label 1350 2100 0    60   ~ 0
XTALn
Text Label 800  1300 0    60   ~ 0
ISenseP_A1
Text Label 800  1400 0    60   ~ 0
ISenseN_A1
Text Label 875  1600 0    60   ~ 0
ISenseP_A2
Text Label 875  1700 0    60   ~ 0
ISenseN_A2
Text Notes 2200 2700 0    60   ~ 0
15.5
Text Label 925  1800 0    60   ~ 0
ISenseP_B1
Text Label 925  1900 0    60   ~ 0
ISenseN_B1
Text Label 875  2700 0    60   ~ 0
ISenseP_B2
Text Label 875  2800 0    60   ~ 0
ISenseN_B2
Wire Wire Line
	875  3300 1750 3300
Wire Wire Line
	875  3200 1750 3200
Wire Wire Line
	875  2800 1750 2800
Wire Wire Line
	875  2700 1750 2700
Wire Wire Line
	925  1900 1750 1900
Wire Wire Line
	925  1800 1750 1800
Wire Wire Line
	875  1700 1750 1700
Wire Wire Line
	875  1600 1750 1600
Wire Wire Line
	800  1400 1750 1400
Wire Wire Line
	800  1300 1750 1300
Wire Wire Line
	1350 2100 1750 2100
Connection ~ 1750 2100
Wire Wire Line
	1350 2200 1750 2200
Connection ~ 1750 2200
$Comp
L mouseLib_v1:ECE5 U37
U 1 1 610D971E
P 1425 6025
F 0 "U37" H 1425 6372 60  0000 C CNN
F 1 "ECE5" H 1425 6266 60  0000 C CNN
F 2 "mouseLib_v1:ECE5" H 1425 6025 60  0001 C CNN
F 3 "" H 1425 6025 60  0001 C CNN
	1    1425 6025
	1    0    0    -1  
$EndComp
Wire Wire Line
	1775 6125 2075 6125
$Comp
L power:GND #PWR0140
U 1 1 61238DE3
P 2400 6425
F 0 "#PWR0140" H 2400 6175 50  0001 C CNN
F 1 "GND" V 2405 6297 50  0000 R CNN
F 2 "" H 2400 6425 50  0001 C CNN
F 3 "" H 2400 6425 50  0001 C CNN
	1    2400 6425
	-1   0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7805 U38
U 1 1 61253FF3
P 2400 6125
F 0 "U38" H 2400 6367 50  0000 C CNN
F 1 "L7805" H 2400 6276 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2425 5975 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 2400 6075 50  0001 C CNN
	1    2400 6125
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0141
U 1 1 61274E5C
P 2700 6125
F 0 "#PWR0141" H 2700 5975 50  0001 C CNN
F 1 "+5V" V 2715 6253 50  0000 L CNN
F 2 "" H 2700 6125 50  0001 C CNN
F 3 "" H 2700 6125 50  0001 C CNN
	1    2700 6125
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0139
U 1 1 612849FA
P 1775 6025
F 0 "#PWR0139" H 1775 5775 50  0001 C CNN
F 1 "GND" V 1780 5897 50  0000 R CNN
F 2 "" H 1775 6025 50  0001 C CNN
F 3 "" H 1775 6025 50  0001 C CNN
	1    1775 6025
	0    -1   1    0   
$EndComp
NoConn ~ 1775 5925
Text Label 1075 6125 2    60   ~ 0
ACN
Text Label 1075 5925 2    60   ~ 0
ACL
Text Label 5850 1350 0    60   ~ 0
senseA1+
Text Label 5850 1050 0    60   ~ 0
senseA1-
Text Label 5875 2475 0    60   ~ 0
senseB1+
Text Label 5875 2175 0    60   ~ 0
senseB1-
Text Label 9100 1375 0    60   ~ 0
senseA2+
Text Label 9100 1075 0    60   ~ 0
senseA2-
Text Label 9150 2200 0    60   ~ 0
senseB2-
Text Label 9150 2500 0    60   ~ 0
senseB2+
$Comp
L mouseLib_v1:RAC03 U39
U 1 1 60DB3B8D
P 1425 6575
F 0 "U39" H 1425 6872 60  0000 C CNN
F 1 "RAC03" H 1425 6766 60  0000 C CNN
F 2 "mouseLib_v1:ACDC_RAC03" H 1425 6575 60  0001 C CNN
F 3 "" H 1425 6575 60  0001 C CNN
	1    1425 6575
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0146
U 1 1 60DB42A2
P 1775 6525
F 0 "#PWR0146" H 1775 6275 50  0001 C CNN
F 1 "GND" V 1780 6397 50  0000 R CNN
F 2 "" H 1775 6525 50  0001 C CNN
F 3 "" H 1775 6525 50  0001 C CNN
	1    1775 6525
	0    -1   1    0   
$EndComp
Text Label 1075 6525 2    60   ~ 0
ACL
Text Label 1075 6625 2    60   ~ 0
ACN
Wire Wire Line
	1775 6625 2075 6625
Wire Wire Line
	2075 6625 2075 6125
Connection ~ 2075 6125
Wire Wire Line
	2075 6125 2100 6125
$Comp
L CY8CKIT-059_PSoC_5LP:MCA1101 U2
U 1 1 614B0233
P 6700 3350
F 0 "U2" H 6700 3847 60  0000 C CNN
F 1 "MCA1101" H 6700 3741 60  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x12.8mm_P1.27mm" H 6700 3350 60  0001 C CNN
F 3 "" H 6700 3350 60  0001 C CNN
	1    6700 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3500 7850 3500
Wire Wire Line
	7050 3400 7850 3400
Connection ~ 6350 3200
Wire Wire Line
	6350 3200 6350 3300
Connection ~ 6350 3300
Wire Wire Line
	6350 3300 6350 3400
Connection ~ 6350 3600
Wire Wire Line
	6350 3600 6350 3500
Connection ~ 6350 3700
Wire Wire Line
	6350 3700 6350 3800
Wire Wire Line
	6350 3600 6350 3700
Wire Wire Line
	6350 3100 6350 3200
NoConn ~ 7050 3800
NoConn ~ 7050 3100
$Comp
L power:GND #PWR0101
U 1 1 614B0253
P 7050 3200
F 0 "#PWR0101" H 7050 2950 50  0001 C CNN
F 1 "GND" V 7055 3072 50  0000 R CNN
F 2 "" H 7050 3200 50  0001 C CNN
F 3 "" H 7050 3200 50  0001 C CNN
	1    7050 3200
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 614B0259
P 7050 3300
F 0 "#PWR0102" H 7050 3050 50  0001 C CNN
F 1 "GND" V 7055 3172 50  0000 R CNN
F 2 "" H 7050 3300 50  0001 C CNN
F 3 "" H 7050 3300 50  0001 C CNN
	1    7050 3300
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 614B025F
P 7050 3600
F 0 "#PWR0103" H 7050 3350 50  0001 C CNN
F 1 "GND" V 7055 3472 50  0000 R CNN
F 2 "" H 7050 3600 50  0001 C CNN
F 3 "" H 7050 3600 50  0001 C CNN
	1    7050 3600
	0    -1   1    0   
$EndComp
Text Label 7850 3500 2    60   ~ 0
ISenseP_C1
Text Label 7850 3400 2    60   ~ 0
ISenseN_C1
$Comp
L CY8CKIT-059_PSoC_5LP:MCA1101 U3
U 1 1 614B026D
P 9975 3375
F 0 "U3" H 9975 3872 60  0000 C CNN
F 1 "MCA1101" H 9975 3766 60  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x12.8mm_P1.27mm" H 9975 3375 60  0001 C CNN
F 3 "" H 9975 3375 60  0001 C CNN
	1    9975 3375
	1    0    0    -1  
$EndComp
Wire Wire Line
	10325 3525 11125 3525
Wire Wire Line
	10325 3425 11125 3425
Connection ~ 9625 3225
Wire Wire Line
	9625 3225 9625 3325
Connection ~ 9625 3325
Wire Wire Line
	9625 3325 9625 3425
Connection ~ 9625 3625
Wire Wire Line
	9625 3625 9625 3525
Connection ~ 9625 3725
Wire Wire Line
	9625 3725 9625 3825
Wire Wire Line
	9625 3625 9625 3725
Wire Wire Line
	9625 3125 9625 3225
NoConn ~ 10325 3825
NoConn ~ 10325 3125
$Comp
L power:GND #PWR0104
U 1 1 614B028D
P 10325 3225
F 0 "#PWR0104" H 10325 2975 50  0001 C CNN
F 1 "GND" V 10330 3097 50  0000 R CNN
F 2 "" H 10325 3225 50  0001 C CNN
F 3 "" H 10325 3225 50  0001 C CNN
	1    10325 3225
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 614B0293
P 10325 3325
F 0 "#PWR0105" H 10325 3075 50  0001 C CNN
F 1 "GND" V 10330 3197 50  0000 R CNN
F 2 "" H 10325 3325 50  0001 C CNN
F 3 "" H 10325 3325 50  0001 C CNN
	1    10325 3325
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 614B0299
P 10325 3625
F 0 "#PWR0106" H 10325 3375 50  0001 C CNN
F 1 "GND" V 10330 3497 50  0000 R CNN
F 2 "" H 10325 3625 50  0001 C CNN
F 3 "" H 10325 3625 50  0001 C CNN
	1    10325 3625
	0    -1   1    0   
$EndComp
Text Label 11125 3525 2    60   ~ 0
ISenseP_C2
Text Label 11125 3425 2    60   ~ 0
ISenseN_C2
$Comp
L Connector:Conn_01x05_Female J15
U 1 1 614B02AB
P 5650 3100
F 0 "J15" V 5588 2812 50  0000 R CNN
F 1 "IN_Adjust_C1" V 5700 3400 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 5650 3100 50  0001 C CNN
F 3 "~" H 5650 3100 50  0001 C CNN
	1    5650 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5850 3300 6350 3300
$Comp
L Connector:Conn_01x05_Female J14
U 1 1 614B02B9
P 5650 3800
F 0 "J14" V 5588 3512 50  0000 R CNN
F 1 "IP_Adjust_C1" V 5700 4100 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 5650 3800 50  0001 C CNN
F 3 "~" H 5650 3800 50  0001 C CNN
	1    5650 3800
	0    -1   1    0   
$EndComp
Wire Wire Line
	5850 3600 6350 3600
Wire Wire Line
	5450 3600 5550 3600
Connection ~ 5850 3600
Connection ~ 5550 3600
Wire Wire Line
	5550 3600 5650 3600
Connection ~ 5650 3600
Wire Wire Line
	5650 3600 5750 3600
Connection ~ 5750 3600
Wire Wire Line
	5750 3600 5850 3600
Wire Wire Line
	5450 3300 5550 3300
Connection ~ 5850 3300
Connection ~ 5550 3300
Wire Wire Line
	5550 3300 5650 3300
Connection ~ 5650 3300
Wire Wire Line
	5650 3300 5750 3300
Connection ~ 5750 3300
Wire Wire Line
	5750 3300 5850 3300
Text Label 5900 3600 0    60   ~ 0
senseC1+
Text Label 5900 3300 0    60   ~ 0
senseC1-
Text Label 875  3200 0    60   ~ 0
ISenseP_C1
Text Label 875  3300 0    60   ~ 0
ISenseN_C1
Text Label 3725 3300 2    60   ~ 0
ISenseP_C2
Text Label 3725 3400 2    60   ~ 0
ISenseN_C2
Wire Wire Line
	3075 1300 3425 1300
Wire Wire Line
	3075 1400 3525 1400
Wire Wire Line
	3075 1500 3525 1500
$Comp
L CY8CKIT-059_PSoC_5LP:XC6227 U1
U 1 1 619568F0
P 2675 5225
F 0 "U1" H 2675 5622 60  0000 C CNN
F 1 "XC6227" H 2675 5516 60  0000 C CNN
F 2 "mouseLib_v1:LDO_3p3V_XC6227" H 2575 5175 60  0001 C CNN
F 3 "" H 2575 5175 60  0001 C CNN
	1    2675 5225
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 61958D36
P 2675 5575
F 0 "#PWR0107" H 2675 5325 50  0001 C CNN
F 1 "GND" V 2680 5447 50  0000 R CNN
F 2 "" H 2675 5575 50  0001 C CNN
F 3 "" H 2675 5575 50  0001 C CNN
	1    2675 5575
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 6195A546
P 2125 5075
F 0 "#PWR0108" H 2125 4925 50  0001 C CNN
F 1 "+5V" V 2140 5203 50  0000 L CNN
F 2 "" H 2125 5075 50  0001 C CNN
F 3 "" H 2125 5075 50  0001 C CNN
	1    2125 5075
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2125 5075 2175 5075
Wire Wire Line
	2225 5175 2175 5175
Wire Wire Line
	2175 5175 2175 5075
Connection ~ 2175 5075
Wire Wire Line
	2175 5075 2225 5075
NoConn ~ 3125 5175
$Comp
L power:+3.3V #PWR0109
U 1 1 6199099B
P 3125 5075
F 0 "#PWR0109" H 3125 4925 50  0001 C CNN
F 1 "+3.3V" V 3140 5203 50  0000 L CNN
F 2 "" H 3125 5075 50  0001 C CNN
F 3 "" H 3125 5075 50  0001 C CNN
	1    3125 5075
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 61994196
P 5525 7325
F 0 "#FLG0102" H 5525 7400 50  0001 C CNN
F 1 "PWR_FLAG" H 5500 7500 50  0000 C CNN
F 2 "" H 5525 7325 50  0001 C CNN
F 3 "~" H 5525 7325 50  0001 C CNN
	1    5525 7325
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0110
U 1 1 619948CB
P 5525 7325
F 0 "#PWR0110" H 5525 7175 50  0001 C CNN
F 1 "+3.3V" H 5540 7498 50  0000 C CNN
F 2 "" H 5525 7325 50  0001 C CNN
F 3 "" H 5525 7325 50  0001 C CNN
	1    5525 7325
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0111
U 1 1 6199558A
P 2900 7200
F 0 "#PWR0111" H 2900 7050 50  0001 C CNN
F 1 "+3.3V" H 2915 7373 50  0000 C CNN
F 2 "" H 2900 7200 50  0001 C CNN
F 3 "" H 2900 7200 50  0001 C CNN
	1    2900 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 61995F63
P 2900 7400
F 0 "#PWR0112" H 2900 7150 50  0001 C CNN
F 1 "GND" H 2905 7227 50  0000 C CNN
F 2 "" H 2900 7400 50  0001 C CNN
F 3 "" H 2900 7400 50  0001 C CNN
	1    2900 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 619CBAF3
P 2900 7300
F 0 "C5" H 2992 7346 50  0000 L CNN
F 1 "100n" H 2992 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 2900 7300 50  0001 C CNN
F 3 "~" H 2900 7300 50  0001 C CNN
	1    2900 7300
	1    0    0    -1  
$EndComp
Connection ~ 2900 7200
Connection ~ 2900 7400
Text Notes 3200 7125 0    60   ~ 0
6x MCA1101\n
Wire Wire Line
	3075 3300 3725 3300
Connection ~ 3075 3300
Wire Wire Line
	3075 3400 3725 3400
Connection ~ 3250 1200
Wire Wire Line
	3250 1200 3525 1200
$Comp
L power:+3.3V #PWR0115
U 1 1 61AAEFE6
P 7050 3700
F 0 "#PWR0115" H 7050 3550 50  0001 C CNN
F 1 "+3.3V" V 7065 3828 50  0000 L CNN
F 2 "" H 7050 3700 50  0001 C CNN
F 3 "" H 7050 3700 50  0001 C CNN
	1    7050 3700
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0116
U 1 1 61AB0F4E
P 10325 3725
F 0 "#PWR0116" H 10325 3575 50  0001 C CNN
F 1 "+3.3V" V 10340 3853 50  0000 L CNN
F 2 "" H 10325 3725 50  0001 C CNN
F 3 "" H 10325 3725 50  0001 C CNN
	1    10325 3725
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0117
U 1 1 61AB283E
P 10300 2600
F 0 "#PWR0117" H 10300 2450 50  0001 C CNN
F 1 "+3.3V" V 10315 2728 50  0000 L CNN
F 2 "" H 10300 2600 50  0001 C CNN
F 3 "" H 10300 2600 50  0001 C CNN
	1    10300 2600
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0118
U 1 1 61AB3E02
P 10275 1475
F 0 "#PWR0118" H 10275 1325 50  0001 C CNN
F 1 "+3.3V" V 10290 1603 50  0000 L CNN
F 2 "" H 10275 1475 50  0001 C CNN
F 3 "" H 10275 1475 50  0001 C CNN
	1    10275 1475
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0119
U 1 1 61AB5858
P 7000 1450
F 0 "#PWR0119" H 7000 1300 50  0001 C CNN
F 1 "+3.3V" V 7015 1578 50  0000 L CNN
F 2 "" H 7000 1450 50  0001 C CNN
F 3 "" H 7000 1450 50  0001 C CNN
	1    7000 1450
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0120
U 1 1 61AC183A
P 7025 2575
F 0 "#PWR0120" H 7025 2425 50  0001 C CNN
F 1 "+3.3V" V 7040 2703 50  0000 L CNN
F 2 "" H 7025 2575 50  0001 C CNN
F 3 "" H 7025 2575 50  0001 C CNN
	1    7025 2575
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J7
U 1 1 61B0F4F7
P 4950 1450
F 0 "J7" H 4868 1667 50  0000 C CNN
F 1 "IP_A1" H 4868 1576 50  0000 C CNN
F 2 "mps_footprints:screw_conn_2" H 4950 1450 50  0001 C CNN
F 3 "~" H 4950 1450 50  0001 C CNN
	1    4950 1450
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J8
U 1 1 61B154AA
P 4950 1050
F 0 "J8" H 4868 1267 50  0000 C CNN
F 1 "IN_A1" H 4868 1176 50  0000 C CNN
F 2 "mps_footprints:screw_conn_2" H 4950 1050 50  0001 C CNN
F 3 "~" H 4950 1050 50  0001 C CNN
	1    4950 1050
	-1   0    0    1   
$EndComp
Wire Wire Line
	5150 1350 5375 1350
Connection ~ 5375 1350
Wire Wire Line
	5150 1050 5375 1050
Connection ~ 5375 1050
Wire Wire Line
	5150 1450 5150 1350
Connection ~ 5150 1350
Wire Wire Line
	5150 950  5150 1050
Connection ~ 5150 1050
$Comp
L Connector:Screw_Terminal_01x02 J9
U 1 1 61B568B3
P 5000 2575
F 0 "J9" H 4918 2792 50  0000 C CNN
F 1 "IP_B1" H 4918 2701 50  0000 C CNN
F 2 "mps_footprints:screw_conn_2" H 5000 2575 50  0001 C CNN
F 3 "~" H 5000 2575 50  0001 C CNN
	1    5000 2575
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J10
U 1 1 61B568B9
P 5000 2175
F 0 "J10" H 4918 2392 50  0000 C CNN
F 1 "IN_B1" H 4918 2301 50  0000 C CNN
F 2 "mps_footprints:screw_conn_2" H 5000 2175 50  0001 C CNN
F 3 "~" H 5000 2175 50  0001 C CNN
	1    5000 2175
	-1   0    0    1   
$EndComp
Wire Wire Line
	5200 2475 5425 2475
Wire Wire Line
	5200 2175 5425 2175
Wire Wire Line
	5200 2575 5200 2475
Connection ~ 5200 2475
Wire Wire Line
	5200 2075 5200 2175
Connection ~ 5200 2175
$Comp
L Connector:Screw_Terminal_01x02 J12
U 1 1 61B6480B
P 5025 3700
F 0 "J12" H 4943 3917 50  0000 C CNN
F 1 "IP_C1" H 4943 3826 50  0000 C CNN
F 2 "mps_footprints:screw_conn_2" H 5025 3700 50  0001 C CNN
F 3 "~" H 5025 3700 50  0001 C CNN
	1    5025 3700
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J13
U 1 1 61B64811
P 5025 3300
F 0 "J13" H 4943 3517 50  0000 C CNN
F 1 "IN_C1" H 4943 3426 50  0000 C CNN
F 2 "mps_footprints:screw_conn_2" H 5025 3300 50  0001 C CNN
F 3 "~" H 5025 3300 50  0001 C CNN
	1    5025 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5225 3600 5450 3600
Wire Wire Line
	5225 3300 5450 3300
Wire Wire Line
	5225 3700 5225 3600
Connection ~ 5225 3600
Wire Wire Line
	5225 3200 5225 3300
Connection ~ 5225 3300
$Comp
L Connector:Screw_Terminal_01x02 J17
U 1 1 61B73ABD
P 8225 1475
F 0 "J17" H 8143 1692 50  0000 C CNN
F 1 "IP_A2" H 8143 1601 50  0000 C CNN
F 2 "mps_footprints:screw_conn_2" H 8225 1475 50  0001 C CNN
F 3 "~" H 8225 1475 50  0001 C CNN
	1    8225 1475
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J18
U 1 1 61B73AC3
P 8225 1075
F 0 "J18" H 8143 1292 50  0000 C CNN
F 1 "IN_A2" H 8143 1201 50  0000 C CNN
F 2 "mps_footprints:screw_conn_2" H 8225 1075 50  0001 C CNN
F 3 "~" H 8225 1075 50  0001 C CNN
	1    8225 1075
	-1   0    0    1   
$EndComp
Wire Wire Line
	8425 1375 8650 1375
Wire Wire Line
	8425 1075 8650 1075
Wire Wire Line
	8425 1475 8425 1375
Connection ~ 8425 1375
Wire Wire Line
	8425 975  8425 1075
Connection ~ 8425 1075
Connection ~ 8650 1375
Connection ~ 8650 1075
$Comp
L Connector:Screw_Terminal_01x02 J19
U 1 1 61B93D53
P 8300 2600
F 0 "J19" H 8218 2817 50  0000 C CNN
F 1 "IP_B2" H 8218 2726 50  0000 C CNN
F 2 "mps_footprints:screw_conn_2" H 8300 2600 50  0001 C CNN
F 3 "~" H 8300 2600 50  0001 C CNN
	1    8300 2600
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J20
U 1 1 61B93D59
P 8300 2200
F 0 "J20" H 8218 2417 50  0000 C CNN
F 1 "IN_B2" H 8218 2326 50  0000 C CNN
F 2 "mps_footprints:screw_conn_2" H 8300 2200 50  0001 C CNN
F 3 "~" H 8300 2200 50  0001 C CNN
	1    8300 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	8500 2500 8725 2500
Wire Wire Line
	8500 2200 8725 2200
Wire Wire Line
	8500 2600 8500 2500
Connection ~ 8500 2500
Wire Wire Line
	8500 2100 8500 2200
Connection ~ 8500 2200
$Comp
L power:+5V #PWR0121
U 1 1 61C2FDE9
P 7275 6000
F 0 "#PWR0121" H 7275 5850 50  0001 C CNN
F 1 "+5V" V 7290 6128 50  0000 L CNN
F 2 "" H 7275 6000 50  0001 C CNN
F 3 "" H 7275 6000 50  0001 C CNN
	1    7275 6000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 61C2C299
P 7775 6000
F 0 "#PWR0122" H 7775 5750 50  0001 C CNN
F 1 "GND" V 7780 5872 50  0000 R CNN
F 2 "" H 7775 6000 50  0001 C CNN
F 3 "" H 7775 6000 50  0001 C CNN
	1    7775 6000
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J16
U 1 1 61C228CE
P 7475 5800
F 0 "J16" H 7525 6217 50  0000 C CNN
F 1 "CurrentSensing" H 7525 6126 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 7475 5800 50  0001 C CNN
F 3 "~" H 7475 5800 50  0001 C CNN
	1    7475 5800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0123
U 1 1 61CB2B13
P 8700 6000
F 0 "#PWR0123" H 8700 5850 50  0001 C CNN
F 1 "+5V" V 8715 6128 50  0000 L CNN
F 2 "" H 8700 6000 50  0001 C CNN
F 3 "" H 8700 6000 50  0001 C CNN
	1    8700 6000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 61CB2B19
P 9200 6000
F 0 "#PWR0124" H 9200 5750 50  0001 C CNN
F 1 "GND" V 9205 5872 50  0000 R CNN
F 2 "" H 9200 6000 50  0001 C CNN
F 3 "" H 9200 6000 50  0001 C CNN
	1    9200 6000
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J25
U 1 1 61CB2B1F
P 8900 5800
F 0 "J25" H 8950 6217 50  0000 C CNN
F 1 "GPIO_Block" H 8950 6126 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 8900 5800 50  0001 C CNN
F 3 "~" H 8900 5800 50  0001 C CNN
	1    8900 5800
	1    0    0    -1  
$EndComp
Text Label 9200 5600 0    60   ~ 0
P12.1
Text Label 9200 5700 0    60   ~ 0
P12.3
Text Label 9200 5800 0    60   ~ 0
P12.5
Text Label 9200 5900 0    60   ~ 0
P12.7
Text Label 8700 5700 2    60   ~ 0
P12.2
Text Label 8700 5800 2    60   ~ 0
P12.4
Text Label 8700 5900 2    60   ~ 0
P12.6
Text Label 8700 5600 2    60   ~ 0
P12.0
Text Label 3075 2300 0    60   ~ 0
P12.1
Text Label 3075 2500 0    60   ~ 0
P12.3
Text Label 3075 2700 0    60   ~ 0
P12.5
Text Label 3075 2900 0    60   ~ 0
P12.7
Text Label 3075 2400 0    60   ~ 0
P12.2
Text Label 3075 2600 0    60   ~ 0
P12.4
Text Label 3075 2800 0    60   ~ 0
P12.6
Text Label 3075 2200 0    60   ~ 0
P12.0
Text Label 7275 5700 2    60   ~ 0
ISenseP_A1
Text Label 7275 5800 2    60   ~ 0
ISenseP_B1
Text Label 7275 5900 2    60   ~ 0
ISenseP_C1
Text Label 7775 5900 0    60   ~ 0
ISenseP_C2
Text Label 7775 5800 0    60   ~ 0
ISenseP_B2
Text Label 3725 3100 2    60   ~ 0
sig1
Text Label 3725 3200 2    60   ~ 0
sig2
Wire Wire Line
	3075 3100 3725 3100
Wire Wire Line
	3075 3200 3725 3200
Text Label 7775 5700 0    60   ~ 0
ISenseP_A2
Text Label 7775 5600 0    60   ~ 0
sig2
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 61E5C546
P 9775 5975
F 0 "H1" H 9875 6024 50  0000 L CNN
F 1 "Mounting" H 9875 5933 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 9775 5975 50  0001 C CNN
F 3 "~" H 9775 5975 50  0001 C CNN
	1    9775 5975
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 61E95622
P 10075 5975
F 0 "H2" H 10175 6024 50  0000 L CNN
F 1 "Mounting" H 10175 5933 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 10075 5975 50  0001 C CNN
F 3 "~" H 10075 5975 50  0001 C CNN
	1    10075 5975
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 61E95628
P 10075 6075
F 0 "#PWR0126" H 10075 5825 50  0001 C CNN
F 1 "GND" V 10080 5947 50  0000 R CNN
F 2 "" H 10075 6075 50  0001 C CNN
F 3 "" H 10075 6075 50  0001 C CNN
	1    10075 6075
	-1   0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 61EA78BD
P 10375 5975
F 0 "H3" H 10475 6024 50  0000 L CNN
F 1 "Mounting" H 10475 5933 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 10375 5975 50  0001 C CNN
F 3 "~" H 10375 5975 50  0001 C CNN
	1    10375 5975
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 61EA78C3
P 10375 6075
F 0 "#PWR0127" H 10375 5825 50  0001 C CNN
F 1 "GND" V 10380 5947 50  0000 R CNN
F 2 "" H 10375 6075 50  0001 C CNN
F 3 "" H 10375 6075 50  0001 C CNN
	1    10375 6075
	-1   0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 61EA78C9
P 10675 5975
F 0 "H4" H 10775 6024 50  0000 L CNN
F 1 "Mounting" H 10775 5933 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 10675 5975 50  0001 C CNN
F 3 "~" H 10675 5975 50  0001 C CNN
	1    10675 5975
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 61EA78CF
P 10675 6075
F 0 "#PWR0128" H 10675 5825 50  0001 C CNN
F 1 "GND" V 10680 5947 50  0000 R CNN
F 2 "" H 10675 6075 50  0001 C CNN
F 3 "" H 10675 6075 50  0001 C CNN
	1    10675 6075
	-1   0    0    -1  
$EndComp
Text Label 7275 5600 2    60   ~ 0
sig1
$Comp
L Connector:Screw_Terminal_01x02 J26
U 1 1 6204CA39
P 4125 6500
F 0 "J26" H 4043 6717 50  0000 C CNN
F 1 "PWR_230V" H 4043 6626 50  0000 C CNN
F 2 "mps_footprints:screw_conn_2" H 4125 6500 50  0001 C CNN
F 3 "~" H 4125 6500 50  0001 C CNN
	1    4125 6500
	-1   0    0    -1  
$EndComp
Text Label 4325 6500 0    60   ~ 0
ACL
Text Label 4325 6600 0    60   ~ 0
ACN
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 620610BD
P 2075 6625
F 0 "#FLG0103" H 2075 6700 50  0001 C CNN
F 1 "PWR_FLAG" H 2050 6800 50  0000 C CNN
F 2 "" H 2075 6625 50  0001 C CNN
F 3 "~" H 2075 6625 50  0001 C CNN
	1    2075 6625
	-1   0    0    1   
$EndComp
Connection ~ 2075 6625
Connection ~ 8725 2500
Connection ~ 8725 2200
Connection ~ 5450 3600
Connection ~ 5450 3300
Connection ~ 5425 2475
Connection ~ 5425 2175
Connection ~ 8750 3325
Connection ~ 8750 3625
Connection ~ 8525 3325
Wire Wire Line
	8525 3225 8525 3325
Connection ~ 8525 3625
Wire Wire Line
	8525 3725 8525 3625
Wire Wire Line
	8525 3325 8750 3325
Wire Wire Line
	8525 3625 8750 3625
$Comp
L Connector:Screw_Terminal_01x02 J22
U 1 1 61BA2321
P 8325 3325
F 0 "J22" H 8243 3542 50  0000 C CNN
F 1 "IN_C2" H 8243 3451 50  0000 C CNN
F 2 "mps_footprints:screw_conn_2" H 8325 3325 50  0001 C CNN
F 3 "~" H 8325 3325 50  0001 C CNN
	1    8325 3325
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J21
U 1 1 61BA231B
P 8325 3725
F 0 "J21" H 8243 3942 50  0000 C CNN
F 1 "IP_C2" H 8243 3851 50  0000 C CNN
F 2 "mps_footprints:screw_conn_2" H 8325 3725 50  0001 C CNN
F 3 "~" H 8325 3725 50  0001 C CNN
	1    8325 3725
	-1   0    0    1   
$EndComp
Text Label 9175 3625 0    60   ~ 0
senseC2+
Text Label 9175 3325 0    60   ~ 0
senseC2-
Wire Wire Line
	9050 3325 9150 3325
Connection ~ 9050 3325
Wire Wire Line
	8950 3325 9050 3325
Connection ~ 8950 3325
Wire Wire Line
	8850 3325 8950 3325
Connection ~ 8850 3325
Connection ~ 9150 3325
Wire Wire Line
	8750 3325 8850 3325
Wire Wire Line
	9050 3625 9150 3625
Connection ~ 9050 3625
Wire Wire Line
	8950 3625 9050 3625
Connection ~ 8950 3625
Wire Wire Line
	8850 3625 8950 3625
Connection ~ 8850 3625
Connection ~ 9150 3625
Wire Wire Line
	8750 3625 8850 3625
Wire Wire Line
	9150 3625 9625 3625
$Comp
L Connector:Conn_01x05_Female J23
U 1 1 614B02C0
P 8950 3825
F 0 "J23" V 8888 3537 50  0000 R CNN
F 1 "IP_Adjust_C2" V 9000 4125 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 8950 3825 50  0001 C CNN
F 3 "~" H 8950 3825 50  0001 C CNN
	1    8950 3825
	0    -1   1    0   
$EndComp
Wire Wire Line
	9150 3325 9625 3325
$Comp
L Connector:Conn_01x05_Female J24
U 1 1 614B02B2
P 8950 3125
F 0 "J24" V 8888 2837 50  0000 R CNN
F 1 "IN_Adjust_C2" V 9000 3425 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 8950 3125 50  0001 C CNN
F 3 "~" H 8950 3125 50  0001 C CNN
	1    8950 3125
	0    -1   -1   0   
$EndComp
Text Label 4925 5375 1    60   ~ 0
ISenseP_A1
Text Label 4825 5375 1    60   ~ 0
ISenseN_A1
Text Label 4725 5375 1    60   ~ 0
ISenseP_B1
Text Label 4625 5375 1    60   ~ 0
ISenseN_B1
Text Label 4525 5375 1    60   ~ 0
ISenseP_C1
Text Label 4425 5375 1    60   ~ 0
ISenseN_C1
Text Label 4125 5375 1    60   ~ 0
ISenseP_B2
Text Label 4025 5375 1    60   ~ 0
ISenseN_B2
Text Label 4325 5375 1    60   ~ 0
ISenseP_A2
Text Label 4225 5375 1    60   ~ 0
ISenseN_A2
Text Label 3825 5375 1    60   ~ 0
ISenseN_C2
Text Label 3925 5375 1    60   ~ 0
ISenseP_C2
$Comp
L power:GND #PWR0129
U 1 1 62346F28
P 3825 5875
F 0 "#PWR0129" H 3825 5625 50  0001 C CNN
F 1 "GND" V 3830 5747 50  0000 R CNN
F 2 "" H 3825 5875 50  0001 C CNN
F 3 "" H 3825 5875 50  0001 C CNN
	1    3825 5875
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x12_Odd_Even J27
U 1 1 62361D6E
P 4325 5675
F 0 "J27" V 4421 4987 50  0000 R CNN
F 1 "6CH_Sense" V 4330 4987 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x12_P2.54mm_Vertical" H 4325 5675 50  0001 C CNN
F 3 "~" H 4325 5675 50  0001 C CNN
	1    4325 5675
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3825 5875 3925 5875
Connection ~ 3825 5875
Connection ~ 3925 5875
Wire Wire Line
	3925 5875 4025 5875
Connection ~ 4025 5875
Wire Wire Line
	4025 5875 4125 5875
Connection ~ 4125 5875
Wire Wire Line
	4125 5875 4225 5875
Connection ~ 4225 5875
Wire Wire Line
	4225 5875 4325 5875
Connection ~ 4325 5875
Wire Wire Line
	4325 5875 4425 5875
Connection ~ 4425 5875
Wire Wire Line
	4425 5875 4525 5875
Connection ~ 4525 5875
Wire Wire Line
	4525 5875 4625 5875
Connection ~ 4625 5875
Wire Wire Line
	4625 5875 4725 5875
Connection ~ 4725 5875
Wire Wire Line
	4725 5875 4825 5875
Connection ~ 4825 5875
Wire Wire Line
	4825 5875 4925 5875
$Comp
L Device:C_Small C6
U 1 1 623D5ED3
P 2000 7300
F 0 "C6" H 2092 7346 50  0000 L CNN
F 1 "100n" H 2092 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 2000 7300 50  0001 C CNN
F 3 "~" H 2000 7300 50  0001 C CNN
	1    2000 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 7200 2000 7200
Wire Wire Line
	1650 7400 2000 7400
NoConn ~ 9775 6075
$Comp
L Connector:Conn_Coaxial J28
U 1 1 60CAC26E
P 6100 5000
F 0 "J28" V 6337 4929 50  0000 C CNN
F 1 "ACombi" V 6246 4929 50  0000 C CNN
F 2 "Connector_Coaxial:BNC_TEConnectivity_1478204_Vertical" H 6100 5000 50  0001 C CNN
F 3 " ~" H 6100 5000 50  0001 C CNN
	1    6100 5000
	0    -1   -1   0   
$EndComp
Text Label 6725 5200 0    60   ~ 0
Aout+
Text Label 6725 5000 0    60   ~ 0
Aout-
Text Label 3075 1600 0    60   ~ 0
Aout+
Text Label 3075 1700 0    60   ~ 0
Aout-
$Comp
L Device:R_Small R1
U 1 1 61065B4A
P 6625 5000
F 0 "R1" V 6429 5000 50  0000 C CNN
F 1 "0" V 6520 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 6625 5000 50  0001 C CNN
F 3 "~" H 6625 5000 50  0001 C CNN
	1    6625 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 5000 6450 5000
$Comp
L Device:R_Small R2
U 1 1 610A2ADF
P 6625 4700
F 0 "R2" V 6429 4700 50  0000 C CNN
F 1 "0" V 6520 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 6625 4700 50  0001 C CNN
F 3 "~" H 6625 4700 50  0001 C CNN
	1    6625 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	6525 4700 6450 4700
Wire Wire Line
	6450 4700 6450 5000
Connection ~ 6450 5000
Wire Wire Line
	6450 5000 6525 5000
$Comp
L power:GND #PWR09
U 1 1 610B256A
P 6725 4700
F 0 "#PWR09" H 6725 4450 50  0001 C CNN
F 1 "GND" H 6730 4527 50  0000 C CNN
F 2 "" H 6725 4700 50  0001 C CNN
F 3 "" H 6725 4700 50  0001 C CNN
	1    6725 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5750 5000 5750 4700
Wire Wire Line
	5750 4700 6450 4700
Connection ~ 6450 4700
Wire Wire Line
	6100 5200 6725 5200
$Comp
L Connector:Screw_Terminal_01x02 J29
U 1 1 60CB5F64
P 5550 5000
F 0 "J29" H 5468 5217 50  0000 C CNN
F 1 "ACombi" H 5550 5125 50  0000 C CNN
F 2 "mps_footprints:screw_conn_2" H 5550 5000 50  0001 C CNN
F 3 "~" H 5550 5000 50  0001 C CNN
	1    5550 5000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5750 5100 5900 5100
Wire Wire Line
	5900 5100 5900 5200
Wire Wire Line
	5900 5200 6100 5200
Connection ~ 6100 5200
$EndSCHEMATC
