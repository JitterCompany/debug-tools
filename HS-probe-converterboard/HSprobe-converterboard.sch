EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "HS-probe-converter to SKEDD uart+SWD"
Date "2021-12-17"
Rev "2"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2950 3950 2700 3950
Wire Wire Line
	2950 4150 2250 4150
Wire Wire Line
	2950 4450 2250 4450
Wire Wire Line
	2950 4550 2250 4550
Wire Wire Line
	3450 4550 4150 4550
Wire Wire Line
	3450 4450 4150 4450
Wire Wire Line
	3450 4250 4150 4250
Wire Wire Line
	3450 4150 4150 4150
Wire Wire Line
	3450 4050 4150 4050
Wire Wire Line
	3450 3950 3750 3950
Text Label 4150 4450 2    50   ~ 0
Reset
Text Label 4150 4350 2    50   ~ 0
TDI
Text Label 4150 4250 2    50   ~ 0
SWO_TDO
Text Label 2250 4450 0    50   ~ 0
GND_detect
Text Label 2600 4250 0    50   ~ 0
5V_key
$Comp
L power:GND #PWR02
U 1 1 61A2077E
P 2250 4150
F 0 "#PWR02" H 2250 3900 50  0001 C CNN
F 1 "GND" H 2255 3977 50  0000 C CNN
F 2 "" H 2250 4150 50  0001 C CNN
F 3 "" H 2250 4150 50  0001 C CNN
	1    2250 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 4250 2600 4250
Text Label 2250 4550 0    50   ~ 0
Tx-host-viewpoint
Text Label 4150 4550 2    50   ~ 0
Rx-host-viewpoint
Text Label 4150 4150 2    50   ~ 0
SWDCLK
Text Label 4150 4050 2    50   ~ 0
SWIO
Wire Wire Line
	8500 3400 8500 3450
Wire Wire Line
	8200 4050 7750 4050
Wire Wire Line
	7400 3650 8200 3650
Wire Wire Line
	7400 3750 8200 3750
Text Label 7400 3750 0    50   ~ 0
Rx-host-viewpoint
Text Label 7400 3650 0    50   ~ 0
Tx-host-viewpoint
Text Label 7750 3950 0    50   ~ 0
SWDCLK
Text Label 7750 4050 0    50   ~ 0
SWIO
Wire Wire Line
	8500 4400 8500 4500
$Comp
L power:+3.3V #PWR08
U 1 1 60409D02
P 8500 3400
F 0 "#PWR08" H 8500 3250 50  0001 C CNN
F 1 "+3.3V" H 8515 3573 50  0000 C CNN
F 2 "" H 8500 3400 50  0001 C CNN
F 3 "" H 8500 3400 50  0001 C CNN
	1    8500 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3950 8200 3950
$Comp
L power:GND #PWR09
U 1 1 60405353
P 8500 4500
F 0 "#PWR09" H 8500 4250 50  0001 C CNN
F 1 "GND" H 8505 4327 50  0000 C CNN
F 2 "" H 8500 4500 50  0001 C CNN
F 3 "" H 8500 4500 50  0001 C CNN
	1    8500 4500
	1    0    0    -1  
$EndComp
$Comp
L Jitter_Components:swd_with_uart_client J3
U 1 1 603F6716
P 8300 4300
F 0 "J3" H 8728 4721 50  0000 L CNN
F 1 "DNI" H 8728 4630 50  0001 L CNN
F 2 "Jitter_Footprints:WR-WST_REDFIT-6-pins_490107670612-adapter_to_pcb" H 8550 5250 50  0001 C CNN
F 3 "https://www.we-online.de/katalog/datasheet/490107670612.pdf" H 8550 5250 50  0001 C CNN
	1    8300 4300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J1
U 1 1 61A3634E
P 3150 4250
F 0 "J1" H 3200 4767 50  0000 C CNN
F 1 "FLE-107-01-G-DV" H 3200 4676 50  0000 C CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_2x07_P1.27mm_Vertical_SMD" H 3150 4250 50  0001 C CNN
F 3 "~" H 3150 4250 50  0001 C CNN
F 4 "FLE-107-01-G-DV" H 3150 4250 50  0001 C CNN "MPN"
F 5 "Samtec" H 3150 4250 50  0001 C CNN "Manufacturer"
	1    3150 4250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR04
U 1 1 61A3B3A8
P 3750 3800
F 0 "#PWR04" H 3750 3650 50  0001 C CNN
F 1 "+3.3V" H 3765 3973 50  0000 C CNN
F 2 "" H 3750 3800 50  0001 C CNN
F 3 "" H 3750 3800 50  0001 C CNN
	1    3750 3800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 61A3BB7F
P 2150 4050
F 0 "#PWR01" H 2150 3900 50  0001 C CNN
F 1 "+3.3V" H 2165 4223 50  0000 C CNN
F 2 "" H 2150 4050 50  0001 C CNN
F 3 "" H 2150 4050 50  0001 C CNN
	1    2150 4050
	1    0    0    -1  
$EndComp
$Comp
L power:+5P #PWR03
U 1 1 61A3CA18
P 2700 3800
F 0 "#PWR03" H 2700 3650 50  0001 C CNN
F 1 "+5P" H 2715 3973 50  0000 C CNN
F 2 "" H 2700 3800 50  0001 C CNN
F 3 "" H 2700 3800 50  0001 C CNN
	1    2700 3800
	1    0    0    -1  
$EndComp
Text Label 5150 4150 0    50   ~ 0
Rx-host-viewpoint
Text Label 5150 4250 0    50   ~ 0
Tx-host-viewpoint
Text Label 5150 4350 0    50   ~ 0
Reset
Text Label 5150 3950 0    50   ~ 0
TDI
Text Label 5150 3750 0    50   ~ 0
SWO_TDO
Text Label 5150 3650 0    50   ~ 0
SWDCLK
Text Label 5150 3550 0    50   ~ 0
SWIO
$Comp
L power:+3.3V #PWR05
U 1 1 61A3F0EE
P 5600 3350
F 0 "#PWR05" H 5600 3200 50  0001 C CNN
F 1 "+3.3V" H 5615 3523 50  0000 C CNN
F 2 "" H 5600 3350 50  0001 C CNN
F 3 "" H 5600 3350 50  0001 C CNN
	1    5600 3350
	1    0    0    -1  
$EndComp
Text Label 5150 4050 0    50   ~ 0
GND_detect
$Comp
L power:+5P #PWR06
U 1 1 61A415CE
P 5350 3450
F 0 "#PWR06" H 5350 3300 50  0001 C CNN
F 1 "+5P" H 5365 3623 50  0000 C CNN
F 2 "" H 5350 3450 50  0001 C CNN
F 3 "" H 5350 3450 50  0001 C CNN
	1    5350 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x12_Male J2
U 1 1 61A41CE6
P 6100 3950
F 0 "J2" H 6072 3832 50  0000 R CNN
F 1 "Conn_01x12_Male" H 6072 3923 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 6100 3950 50  0001 C CNN
F 3 "~" H 6100 3950 50  0001 C CNN
	1    6100 3950
	-1   0    0    1   
$EndComp
Text Label 5150 3850 0    50   ~ 0
5V_key
Wire Wire Line
	5900 4350 5150 4350
Wire Wire Line
	5150 4250 5900 4250
Wire Wire Line
	5900 4150 5150 4150
Wire Wire Line
	5900 4050 5150 4050
Wire Wire Line
	5900 3950 5150 3950
Wire Wire Line
	5900 3850 5150 3850
Wire Wire Line
	5900 3750 5150 3750
Wire Wire Line
	5900 3650 5150 3650
Wire Wire Line
	5900 3550 5150 3550
Wire Wire Line
	5900 3450 5350 3450
Wire Wire Line
	5900 3350 5600 3350
$Comp
L power:GND #PWR07
U 1 1 61A49AF0
P 5600 4450
F 0 "#PWR07" H 5600 4200 50  0001 C CNN
F 1 "GND" H 5605 4277 50  0000 C CNN
F 2 "" H 5600 4450 50  0001 C CNN
F 3 "" H 5600 4450 50  0001 C CNN
	1    5600 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4450 5600 4450
Wire Notes Line
	4750 2800 4750 4850
Wire Notes Line
	4750 4850 6900 4850
Wire Notes Line
	6900 4850 6900 2800
Wire Notes Line
	6900 2800 4750 2800
Text Notes 8150 3050 0    50   ~ 0
SKEDD-connector
Text Notes 4800 2950 0    50   ~ 0
12-pin header with all the outputs of the HS-probe
Text Notes 2550 3100 0    50   ~ 0
14-pin JTAG socket, mirrored
Wire Notes Line
	7100 4850 7100 2850
Wire Notes Line
	7100 2850 9700 2850
Wire Notes Line
	9700 2850 9700 4850
Wire Notes Line
	9700 4850 7100 4850
$Comp
L Jitter_Components:LOGO LOGO1
U 1 1 61A1970E
P 7300 6850
F 0 "LOGO1" H 7378 6896 50  0000 L CNN
F 1 "LOGO" H 7378 6805 50  0000 L CNN
F 2 "Jitter_Logos:Jitter-mini" H 7300 6850 50  0001 C CNN
F 3 "" H 7300 6850 50  0001 C CNN
F 4 "1" H 7300 6850 50  0001 C CNN "DNI"
	1    7300 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 4350 4150 4350
Text Notes 7950 3150 0    50   ~ 0
adapter -> pcb : footprint
Text Notes 2400 3350 0    50   ~ 10
pin 9 used for TDI (pin 10), as shortcut\nTODO: maybe this is not needed anymore\nbecause of the larger pin pitch?
Text Notes 8800 3700 0    50   ~ 0
Mates with\nWurth 490107670612
NoConn ~ 2950 4350
Text Notes 2250 4650 0    31   ~ 0
T_VCP_RX: Target-referred RX
Text Notes 4150 4650 2    31   ~ 0
T_VCP_TX: Target-referred TX
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 61BD062E
P 3850 3800
F 0 "#FLG0101" H 3850 3875 50  0001 C CNN
F 1 "PWR_FLAG" H 4100 3900 50  0000 C CNN
F 2 "" H 3850 3800 50  0001 C CNN
F 3 "~" H 3850 3800 50  0001 C CNN
	1    3850 3800
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 61BD2FDA
P 2600 3800
F 0 "#FLG0102" H 2600 3875 50  0001 C CNN
F 1 "PWR_FLAG" H 2350 3900 50  0000 C CNN
F 2 "" H 2600 3800 50  0001 C CNN
F 3 "~" H 2600 3800 50  0001 C CNN
	1    2600 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 3950 2700 3800
Wire Wire Line
	2600 3800 2700 3800
Connection ~ 2700 3800
Wire Wire Line
	3750 3950 3750 3800
Wire Wire Line
	3850 3800 3750 3800
Connection ~ 3750 3800
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 61BD833A
P 2250 4150
F 0 "#FLG0104" H 2250 4225 50  0001 C CNN
F 1 "PWR_FLAG" V 2250 4450 50  0000 C CNN
F 2 "" H 2250 4150 50  0001 C CNN
F 3 "~" H 2250 4150 50  0001 C CNN
	1    2250 4150
	0    -1   -1   0   
$EndComp
Connection ~ 2250 4150
Wire Notes Line
	1650 4850 4550 4850
Wire Wire Line
	2150 4050 2950 4050
Wire Notes Line
	4550 2800 1650 2800
Wire Notes Line
	1650 2800 1650 4850
Wire Notes Line
	4550 2800 4550 4850
$EndSCHEMATC
