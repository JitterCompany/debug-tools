EESchema Schematic File Version 4
LIBS:Breakout_JLink-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Breakout for JLink Base Compact"
Date "2022-07-06"
Rev "V. 1.0"
Comp "Jitter"
Comment1 "MvG"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J4
U 1 1 62C55DDD
P 8550 3700
F 0 "J4" H 8600 4317 50  0000 C CNN
F 1 "Conn_02x10_Odd_Even" H 8600 4226 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x10_P2.54mm_Vertical" H 8550 3700 50  0001 C CNN
F 3 "~" H 8550 3700 50  0001 C CNN
	1    8550 3700
	1    0    0    -1  
$EndComp
$Comp
L Jitter_Components:swd_with_uart_client J2
U 1 1 62C55EB2
P 6600 4450
F 0 "J2" H 7027 4871 50  0000 L CNN
F 1 "swd_with_uart_client" H 7027 4780 50  0000 L CNN
F 2 "Jitter_Footprints:WR-WST_REDFIT-6-pins_490107670612" H 6850 5400 50  0001 C CNN
F 3 "https://www.we-online.de/katalog/datasheet/490107670612.pdf" H 6850 5400 50  0001 C CNN
	1    6600 4450
	0    1    1    0   
$EndComp
Text Label 6950 3200 1    50   ~ 0
GND
Text Label 8850 3400 0    50   ~ 0
GND
Text Label 8850 3500 0    50   ~ 0
GND
Text Label 8850 3600 0    50   ~ 0
GND
Text Label 8850 3700 0    50   ~ 0
GND
Text Label 8850 3800 0    50   ~ 0
GND
Text Label 6500 4650 2    50   ~ 0
GND
Text Label 6100 3450 0    50   ~ 0
GND
NoConn ~ 8850 3300
NoConn ~ 8350 3400
$Comp
L Jitter_Components:uart_client_2.54 J1
U 1 1 62C59888
P 6000 3350
F 0 "J1" H 6669 3646 50  0000 L CNN
F 1 "uart_client_2.54" H 6669 3555 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6100 4200 50  0001 C CNN
F 3 "" H 6100 4200 50  0001 C CNN
	1    6000 3350
	-1   0    0    1   
$EndComp
NoConn ~ 8350 3800
NoConn ~ 8850 3900
NoConn ~ 8850 4000
NoConn ~ 8850 4100
NoConn ~ 8850 4200
Text Label 8350 4000 2    50   ~ 0
nRESET
Text Label 8350 3900 2    50   ~ 0
SWO
Text Label 7150 3000 3    50   ~ 0
SWO
Text Label 7250 3000 3    50   ~ 0
nRESET
Text Label 8350 4200 2    50   ~ 0
5v
Text Label 7050 3000 3    50   ~ 0
5v
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 62C5A863
P 7150 2800
F 0 "J3" V 7210 2940 50  0000 L CNN
F 1 "Conn_01x04_Male" V 7301 2940 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7150 2800 50  0001 C CNN
F 3 "~" H 7150 2800 50  0001 C CNN
	1    7150 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 3200 6950 3000
Wire Wire Line
	8350 3500 7250 3500
Wire Wire Line
	6850 4350 6850 3600
Wire Wire Line
	6950 4350 6950 3700
Wire Wire Line
	6950 3700 8350 3700
Wire Wire Line
	8350 3300 7450 3300
Wire Wire Line
	6100 3750 7450 3750
Connection ~ 7450 3750
Wire Wire Line
	7450 3750 7450 4650
Wire Wire Line
	7150 4100 7150 4350
Wire Wire Line
	7150 4100 8350 4100
Wire Wire Line
	6850 3600 8350 3600
Wire Wire Line
	7250 3500 7250 3650
Wire Wire Line
	6100 3550 7150 3550
Wire Wire Line
	7150 3550 7150 4100
Connection ~ 7150 4100
Text Label 7450 3300 0    50   ~ 0
VTref
Wire Wire Line
	7450 3300 7450 3750
Wire Wire Line
	7250 3650 6100 3650
Connection ~ 7250 3650
Wire Wire Line
	7250 3650 7250 4350
Text Label 7800 4100 0    50   ~ 0
RxJLink
Text Label 7800 3500 0    50   ~ 0
TXJLink
$EndSCHEMATC
