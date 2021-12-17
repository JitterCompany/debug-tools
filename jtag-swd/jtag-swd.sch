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
L Connector:Conn_ARM_JTAG_SWD_10 J1
U 1 1 5C179050
P 4650 3650
F 0 "J1" H 4210 3696 50  0000 R CNN
F 1 "Conn_ARM_JTAG_SWD_10" H 4210 3605 50  0000 R CNN
F 2 "Jitter_Footprints:PinSocket_2x05_P1.27mm_Vertical_Mirrored_Y" H 4700 3100 50  0001 L TNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.faqs/attached/13634/cortex_debug_connectors.pdf" V 4300 2400 50  0001 C CNN
F 4 "SFMC-105-01-L-D" H 4650 3650 50  0001 C CNN "MPN"
F 5 "Samtec" H 4650 3650 50  0001 C CNN "Manufacturer"
	1    4650 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 5C1792D1
P 6450 3750
F 0 "J2" H 6423 3630 50  0000 R CNN
F 1 "Conn_01x04_Male" H 6423 3721 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 6450 3750 50  0001 C CNN
F 3 "~" H 6450 3750 50  0001 C CNN
	1    6450 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4650 3050 4650 2950
Wire Wire Line
	4650 2950 5300 2950
Wire Wire Line
	5900 2950 5900 3550
Wire Wire Line
	5900 3550 6250 3550
Wire Wire Line
	4650 4250 5800 4250
Wire Wire Line
	5800 4250 5800 3850
Wire Wire Line
	5800 3850 6250 3850
$Comp
L power:GND #PWR01
U 1 1 5C179976
P 5800 4250
F 0 "#PWR01" H 5800 4000 50  0001 C CNN
F 1 "GND" H 5805 4077 50  0000 C CNN
F 2 "" H 5800 4250 50  0001 C CNN
F 3 "" H 5800 4250 50  0001 C CNN
	1    5800 4250
	1    0    0    -1  
$EndComp
Connection ~ 5800 4250
Wire Wire Line
	5150 3550 5550 3550
Wire Wire Line
	5550 3550 5550 3750
Wire Wire Line
	5550 3750 6250 3750
Wire Wire Line
	5150 3650 6250 3650
Text Label 5250 3550 0    50   ~ 0
SWCLK
Text Label 5700 3650 0    50   ~ 0
SWDIO
$Comp
L power:+3V3 #PWR0101
U 1 1 5C179EDA
P 5300 2950
F 0 "#PWR0101" H 5300 2800 50  0001 C CNN
F 1 "+3V3" H 5315 3123 50  0000 C CNN
F 2 "" H 5300 2950 50  0001 C CNN
F 3 "" H 5300 2950 50  0001 C CNN
	1    5300 2950
	1    0    0    -1  
$EndComp
Connection ~ 5300 2950
Wire Wire Line
	5300 2950 5900 2950
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5C17A25B
P 6450 4150
F 0 "J3" H 6423 4030 50  0000 R CNN
F 1 "Conn_01x02_Male" H 6423 4121 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6450 4150 50  0001 C CNN
F 3 "~" H 6450 4150 50  0001 C CNN
	1    6450 4150
	-1   0    0    1   
$EndComp
Text Label 5150 3350 0    50   ~ 0
RESET
Text Label 6000 4150 0    50   ~ 0
RESET
Wire Wire Line
	5150 3750 5450 3750
Wire Wire Line
	5450 3750 5450 4050
Text Label 6000 4050 0    50   ~ 0
SWO
Wire Wire Line
	5450 4050 6250 4050
Wire Wire Line
	6000 4150 6250 4150
Wire Wire Line
	4550 4250 4650 4250
Connection ~ 4650 4250
NoConn ~ 5150 3850
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 61BCA8CA
P 4650 2950
F 0 "#FLG0101" H 4650 3025 50  0001 C CNN
F 1 "PWR_FLAG" H 4650 3123 50  0000 C CNN
F 2 "" H 4650 2950 50  0001 C CNN
F 3 "~" H 4650 2950 50  0001 C CNN
	1    4650 2950
	1    0    0    -1  
$EndComp
Connection ~ 4650 2950
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 61BCAC7B
P 4550 4250
F 0 "#FLG0102" H 4550 4325 50  0001 C CNN
F 1 "PWR_FLAG" V 4550 4377 50  0000 L CNN
F 2 "" H 4550 4250 50  0001 C CNN
F 3 "~" H 4550 4250 50  0001 C CNN
	1    4550 4250
	0    -1   -1   0   
$EndComp
Connection ~ 4550 4250
$EndSCHEMATC
