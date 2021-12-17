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
L SKEDD-converterboard-rescue:uart_client_2.54-Jitter_Components J2
U 1 1 603F5DEC
P 5250 4550
F 0 "J2" H 5317 5215 50  0000 C CNN
F 1 "uart_client_2.54" H 5317 5124 50  0000 C CNN
F 2 "Connector_Molex:Molex_PicoBlade_53261-0471_1x04-1MP_P1.25mm_Horizontal" H 5350 5400 50  0001 C CNN
F 3 "" H 5350 5400 50  0001 C CNN
F 4 "53261-0471" H 5250 4550 50  0001 C CNN "MPN"
F 5 "Molex" H 5250 4550 50  0001 C CNN "Manufacturer"
	1    5250 4550
	-1   0    0    -1  
$EndComp
$Comp
L Jitter_Components:swd_with_uart_client J3
U 1 1 603F6716
P 6650 3600
F 0 "J3" H 7078 4021 50  0000 L CNN
F 1 "DNI" H 7078 3930 50  0001 L CNN
F 2 "Jitter_Footprints:WR-WST_REDFIT-6-pins_490107670612" H 6900 4550 50  0001 C CNN
F 3 "https://www.we-online.de/katalog/datasheet/490107670612.pdf" H 6900 4550 50  0001 C CNN
	1    6650 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_ARM_JTAG_SWD_10 J1
U 1 1 603FEAD9
P 4300 3350
F 0 "J1" H 3857 3396 50  0000 R CNN
F 1 "Conn_ARM_JTAG_SWD_10" H 3857 3305 50  0000 R CNN
F 2 "Jitter_Footprints:connector_jtag_10pin-female-mirrored" H 4300 3350 50  0001 C CNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.ddi0314h/DDI0314H_coresight_components_trm.pdf" V 3950 2100 50  0001 C CNN
F 4 "FLE-105-01-G-DV" H 4300 3350 50  0001 C CNN "MPN"
F 5 "Samtec" H 4300 3350 50  0001 C CNN "Manufacturer"
	1    4300 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4100 4200 3950
Wire Wire Line
	4300 3950 4300 4100
Wire Wire Line
	4300 4100 4200 4100
Connection ~ 4300 4100
$Comp
L power:GND #PWR01
U 1 1 60405353
P 6850 3800
F 0 "#PWR01" H 6850 3550 50  0001 C CNN
F 1 "GND" H 6855 3627 50  0000 C CNN
F 2 "" H 6850 3800 50  0001 C CNN
F 3 "" H 6850 3800 50  0001 C CNN
	1    6850 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3350 4800 3350
Wire Wire Line
	4800 3250 6550 3250
Text Label 4800 3050 0    50   ~ 0
RESET
Wire Wire Line
	5400 2450 5400 3450
Wire Wire Line
	5400 3450 4800 3450
$Comp
L power:+3.3V #PWR02
U 1 1 60409D02
P 5750 2050
F 0 "#PWR02" H 5750 1900 50  0001 C CNN
F 1 "+3.3V" H 5765 2223 50  0000 C CNN
F 2 "" H 5750 2050 50  0001 C CNN
F 3 "" H 5750 2050 50  0001 C CNN
	1    5750 2050
	1    0    0    -1  
$EndComp
Text Label 6250 2350 0    50   ~ 0
RESET
Text Label 6250 2450 0    50   ~ 0
SWO
Wire Wire Line
	4300 2750 4300 2050
Wire Wire Line
	5750 2050 5750 4150
Connection ~ 5750 2050
Wire Wire Line
	6850 2050 6850 2750
Wire Wire Line
	5750 2050 6850 2050
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 603FFE29
P 6750 2350
F 0 "J4" H 7050 2200 50  0000 R CNN
F 1 "DNI" H 7350 2500 50  0001 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6750 2350 50  0001 C CNN
F 3 "~" H 6750 2350 50  0001 C CNN
	1    6750 2350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6550 2350 6250 2350
Wire Wire Line
	6550 2450 5400 2450
Wire Wire Line
	5750 4150 5350 4150
Wire Wire Line
	5350 4250 6150 4250
Wire Wire Line
	5350 4350 6250 4350
Wire Wire Line
	5500 4450 5500 4550
Wire Wire Line
	5350 4450 5500 4450
Wire Wire Line
	6850 3700 6850 3800
Text Label 5000 3350 0    50   ~ 0
SWIO
Text Label 5000 3250 0    50   ~ 0
SWDCLK
Text Label 5000 3450 0    50   ~ 0
SWO
Text Label 5450 4250 0    50   ~ 0
Tx-host-viewpoint
Text Label 5450 4350 0    50   ~ 0
Rx-host-viewpoint
Wire Wire Line
	6150 4250 6150 2950
Wire Wire Line
	6250 3050 6250 4350
Wire Wire Line
	6550 3050 6250 3050
Wire Wire Line
	6150 2950 6550 2950
$Comp
L power:GND #PWR0101
U 1 1 61BC6F7D
P 4300 4100
F 0 "#PWR0101" H 4300 3850 50  0001 C CNN
F 1 "GND" H 4305 3927 50  0000 C CNN
F 2 "" H 4300 4100 50  0001 C CNN
F 3 "" H 4300 4100 50  0001 C CNN
	1    4300 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 61BC772C
P 5500 4550
F 0 "#PWR0102" H 5500 4300 50  0001 C CNN
F 1 "GND" H 5505 4377 50  0000 C CNN
F 2 "" H 5500 4550 50  0001 C CNN
F 3 "" H 5500 4550 50  0001 C CNN
	1    5500 4550
	1    0    0    -1  
$EndComp
Text Notes 5650 4650 0    50   ~ 0
Mates with cable assembly\n15134-0400
NoConn ~ 4800 3550
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 61BC8634
P 4300 2050
F 0 "#FLG0101" H 4300 2125 50  0001 C CNN
F 1 "PWR_FLAG" H 4300 2223 50  0000 C CNN
F 2 "" H 4300 2050 50  0001 C CNN
F 3 "~" H 4300 2050 50  0001 C CNN
	1    4300 2050
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 61BC8AEB
P 4200 4100
F 0 "#FLG0102" H 4200 4175 50  0001 C CNN
F 1 "PWR_FLAG" V 4200 4227 50  0000 L CNN
F 2 "" H 4200 4100 50  0001 C CNN
F 3 "~" H 4200 4100 50  0001 C CNN
	1    4200 4100
	0    -1   -1   0   
$EndComp
Connection ~ 4200 4100
Connection ~ 4300 2050
Wire Wire Line
	4300 2050 5750 2050
$EndSCHEMATC
