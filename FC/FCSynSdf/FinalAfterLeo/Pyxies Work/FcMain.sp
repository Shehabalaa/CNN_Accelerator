* SPICE NETLIST
***************************************

.SUBCKT nwell_contact
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT inv01 A Y GND VDD
** N=4 EP=4 IP=1 FDC=2
M0 Y A GND GND N L=4e-07 W=1e-06 AD=1.1e-12 AS=1.1e-12 $X=11500 $Y=26000 $D=1
M1 Y A VDD VDD P L=4e-07 W=1.8e-06 AD=1.58e-12 AS=1.58e-12 $X=11500 $Y=80000 $D=0
.ENDS
***************************************
.SUBCKT nand02 Y GND VDD
** N=6 EP=3 IP=2 FDC=4
M0 6 A1 GND GND N L=4e-07 W=2e-06 AD=1.2e-12 AS=2.2e-12 $X=11500 $Y=26000 $D=1
M1 Y A0 6 GND N L=4e-07 W=2e-06 AD=2.2e-12 AS=1.2e-12 $X=16500 $Y=26000 $D=1
M2 Y A1 VDD VDD P L=4e-07 W=2.4e-06 AD=2.88e-12 AS=2.44e-12 $X=11500 $Y=77000 $D=0
M3 VDD A0 Y VDD P L=4e-07 W=2.4e-06 AD=2.44e-12 AS=2.88e-12 $X=19500 $Y=77000 $D=0
.ENDS
***************************************
.SUBCKT ao21 A1 A0 B0 Y GND VDD
** N=9 EP=6 IP=3 FDC=8
M0 9 A1 GND GND N L=4e-07 W=2e-06 AD=1.2e-12 AS=2.2e-12 $X=11500 $Y=26000 $D=1
M1 8 A0 9 GND N L=4e-07 W=2e-06 AD=2.4e-12 AS=1.2e-12 $X=16500 $Y=26000 $D=1
M2 GND B0 8 GND N L=4e-07 W=1e-06 AD=1.2e-12 AS=2.4e-12 $X=25000 $Y=31000 $D=1
M3 Y 8 GND GND N L=4e-07 W=1e-06 AD=1.1e-12 AS=1.2e-12 $X=33000 $Y=31000 $D=1
M4 VDD A1 7 VDD P L=4e-07 W=2.6e-06 AD=3.12e-12 AS=2.56e-12 $X=11500 $Y=76000 $D=0
M5 7 A0 VDD VDD P L=4e-07 W=2.6e-06 AD=3.12e-12 AS=3.12e-12 $X=19500 $Y=76000 $D=0
M6 8 B0 7 VDD P L=4e-07 W=2.6e-06 AD=2.56e-12 AS=3.12e-12 $X=27500 $Y=76000 $D=0
M7 Y 8 VDD VDD P L=4e-07 W=1.8e-06 AD=1.58e-12 AS=1.58e-12 $X=43500 $Y=80000 $D=0
.ENDS
***************************************
.SUBCKT nand03 A0 Y A1 A2 VDD GND
** N=8 EP=6 IP=2 FDC=6
M0 7 A0 Y GND N L=4e-07 W=3e-06 AD=1.8e-12 AS=3.3e-12 $X=14500 $Y=26500 $D=1
M1 8 A1 7 GND N L=4e-07 W=3e-06 AD=1.8e-12 AS=1.8e-12 $X=19500 $Y=26500 $D=1
M2 GND A2 8 GND N L=4e-07 W=3e-06 AD=3.3e-12 AS=1.8e-12 $X=24500 $Y=26500 $D=1
M3 Y A0 VDD VDD P L=4e-07 W=3e-06 AD=3.6e-12 AS=3.3e-12 $X=11500 $Y=74000 $D=0
M4 VDD A1 Y VDD P L=4e-07 W=3e-06 AD=3.6e-12 AS=3.6e-12 $X=19500 $Y=74000 $D=0
M5 Y A2 VDD VDD P L=4e-07 W=3e-06 AD=3.3e-12 AS=3.6e-12 $X=27500 $Y=74000 $D=0
.ENDS
***************************************
.SUBCKT nor02ii Y A0 A1 VDD GND
** N=7 EP=5 IP=0 FDC=6
M0 Y A0 GND GND N L=4e-07 W=1e-06 AD=1.2e-12 AS=1.1e-12 $X=11500 $Y=36000 $D=1
M1 GND 6 Y GND N L=4e-07 W=1e-06 AD=1.2e-12 AS=1.2e-12 $X=19500 $Y=36000 $D=1
M2 6 A1 GND GND N L=4e-07 W=1e-06 AD=1.1e-12 AS=1.2e-12 $X=27500 $Y=36000 $D=1
M3 7 A0 Y VDD P L=4e-07 W=2.6e-06 AD=1.56e-12 AS=2.56e-12 $X=11500 $Y=65000 $D=0
M4 VDD 6 7 VDD P L=4e-07 W=2.6e-06 AD=3.22e-12 AS=1.56e-12 $X=16500 $Y=65000 $D=0
M5 6 A1 VDD VDD P L=4e-07 W=1.8e-06 AD=1.58e-12 AS=3.22e-12 $X=25000 $Y=65000 $D=0
.ENDS
***************************************
.SUBCKT ao22 B1 B0 A0 A1 Y GND VDD
** N=11 EP=7 IP=3 FDC=10
M0 10 B1 GND GND N L=4e-07 W=2e-06 AD=1.2e-12 AS=2.2e-12 $X=11500 $Y=26000 $D=1
M1 8 B0 10 GND N L=4e-07 W=2e-06 AD=2.4e-12 AS=1.2e-12 $X=16500 $Y=26000 $D=1
M2 11 A0 8 GND N L=4e-07 W=2e-06 AD=1.2e-12 AS=2.4e-12 $X=24500 $Y=26000 $D=1
M3 GND A1 11 GND N L=4e-07 W=2e-06 AD=2.4e-12 AS=1.2e-12 $X=29500 $Y=26000 $D=1
M4 Y 8 GND GND N L=4e-07 W=1e-06 AD=1.1e-12 AS=2.4e-12 $X=38000 $Y=31000 $D=1
M5 8 B1 9 VDD P L=4e-07 W=2.6e-06 AD=3.12e-12 AS=2.56e-12 $X=11500 $Y=76000 $D=0
M6 9 B0 8 VDD P L=4e-07 W=2.6e-06 AD=3.12e-12 AS=3.12e-12 $X=19500 $Y=76000 $D=0
M7 VDD A0 9 VDD P L=4e-07 W=2.6e-06 AD=3.12e-12 AS=3.12e-12 $X=27500 $Y=76000 $D=0
M8 9 A1 VDD VDD P L=4e-07 W=2.6e-06 AD=2.56e-12 AS=3.12e-12 $X=35500 $Y=76000 $D=0
M9 Y 8 VDD VDD P L=4e-07 W=1.8e-06 AD=1.58e-12 AS=1.58e-12 $X=51500 $Y=80000 $D=0
.ENDS
***************************************
.SUBCKT nor04 Y A3 A2 A1 A0 GND VDD
** N=10 EP=7 IP=3 FDC=8
M0 GND A3 Y GND N L=4e-07 W=2e-06 AD=2.4e-12 AS=2.2e-12 $X=11500 $Y=21000 $D=1
M1 Y A2 GND GND N L=4e-07 W=2e-06 AD=2.4e-12 AS=2.4e-12 $X=19500 $Y=21000 $D=1
M2 GND A1 Y GND N L=4e-07 W=2e-06 AD=2.4e-12 AS=2.4e-12 $X=27500 $Y=21000 $D=1
M3 Y A0 GND GND N L=4e-07 W=2e-06 AD=2.2e-12 AS=2.4e-12 $X=35500 $Y=21000 $D=1
M4 8 A3 Y VDD P L=4e-07 W=7.2e-06 AD=4.32e-12 AS=7.82e-12 $X=17500 $Y=69000 $D=0
M5 9 A2 8 VDD P L=4e-07 W=7.2e-06 AD=4.32e-12 AS=4.32e-12 $X=22500 $Y=69000 $D=0
M6 10 A1 9 VDD P L=4e-07 W=7.2e-06 AD=4.32e-12 AS=4.32e-12 $X=27500 $Y=69000 $D=0
M7 VDD A0 10 VDD P L=4e-07 W=7.2e-06 AD=7.82e-12 AS=4.32e-12 $X=32500 $Y=69000 $D=0
.ENDS
***************************************
.SUBCKT nor03_2x A0 A1 A2 Y VDD GND
** N=8 EP=6 IP=0 FDC=6
M0 Y A0 GND GND N L=4e-07 W=2.2e-06 AD=2.64e-12 AS=2.68e-12 $X=11500 $Y=18000 $D=1
M1 GND A1 Y GND N L=4e-07 W=2.2e-06 AD=2.96e-12 AS=2.64e-12 $X=19500 $Y=18000 $D=1
M2 Y A2 GND GND N L=4e-07 W=2.2e-06 AD=2.32e-12 AS=2.96e-12 $X=27500 $Y=18000 $D=1
M3 7 A0 VDD VDD P L=4e-07 W=8e-06 AD=4.8e-12 AS=9.16e-12 $X=11500 $Y=62000 $D=0
M4 8 A1 7 VDD P L=4e-07 W=8e-06 AD=4.8e-12 AS=4.8e-12 $X=16500 $Y=62000 $D=0
M5 Y A2 8 VDD P L=4e-07 W=8e-06 AD=8.8e-12 AS=4.8e-12 $X=21500 $Y=62000 $D=0
.ENDS
***************************************
.SUBCKT or03 Y A2 A1 A0 GND VDD
** N=9 EP=6 IP=2 FDC=8
M0 GND 7 Y GND N L=4e-07 W=1e-06 AD=1.32e-12 AS=1.1e-12 $X=13500 $Y=26000 $D=1
M1 7 A2 GND GND N L=4e-07 W=1.2e-06 AD=1.44e-12 AS=1.32e-12 $X=21500 $Y=25000 $D=1
M2 GND A1 7 GND N L=4e-07 W=1.2e-06 AD=1.44e-12 AS=1.44e-12 $X=29500 $Y=25000 $D=1
M3 7 A0 GND GND N L=4e-07 W=1.2e-06 AD=1.22e-12 AS=1.44e-12 $X=37500 $Y=25000 $D=1
M4 VDD 7 Y VDD P L=4e-07 W=1.8e-06 AD=1.58e-12 AS=1.58e-12 $X=11500 $Y=80000 $D=0
M5 8 A2 7 VDD P L=4e-07 W=5.4e-06 AD=3.24e-12 AS=5.74e-12 $X=27500 $Y=73000 $D=0
M6 9 A1 8 VDD P L=4e-07 W=5.4e-06 AD=3.24e-12 AS=3.24e-12 $X=32500 $Y=73000 $D=0
M7 VDD A0 9 VDD P L=4e-07 W=5.4e-06 AD=5.74e-12 AS=3.24e-12 $X=37500 $Y=73000 $D=0
.ENDS
***************************************
.SUBCKT dffr D CLK R QB Q GND VDD
** N=23 EP=7 IP=9 FDC=34
M0 16 D GND GND N L=4e-07 W=3e-06 AD=1.8e-12 AS=3.3e-12 $X=11500 $Y=26000 $D=1
M1 8 12 16 GND N L=4e-07 W=3e-06 AD=3.5e-12 AS=1.8e-12 $X=16500 $Y=26000 $D=1
M2 17 11 8 GND N L=4e-07 W=1e-06 AD=6e-13 AS=3.5e-12 $X=25000 $Y=31000 $D=1
M3 GND 9 17 GND N L=4e-07 W=1e-06 AD=2.4e-12 AS=6e-13 $X=30000 $Y=31000 $D=1
M4 9 8 GND GND N L=4e-07 W=2e-06 AD=2.4e-12 AS=2.4e-12 $X=38500 $Y=26000 $D=1
M5 GND R 9 GND N L=4e-07 W=2e-06 AD=2.4e-12 AS=2.4e-12 $X=46500 $Y=26000 $D=1
M6 10 9 GND GND N L=4e-07 W=1e-06 AD=1.1e-12 AS=2.4e-12 $X=55000 $Y=31000 $D=1
M7 GND 12 11 GND N L=4e-07 W=2e-06 AD=2.4e-12 AS=2.2e-12 $X=76000 $Y=31000 $D=1
M8 12 CLK GND GND N L=4e-07 W=2e-06 AD=2.2e-12 AS=2.4e-12 $X=84000 $Y=31000 $D=1
M9 18 10 GND GND N L=4e-07 W=3e-06 AD=1.8e-12 AS=3.3e-12 $X=100000 $Y=26000 $D=1
M10 13 11 18 GND N L=4e-07 W=3e-06 AD=3.5e-12 AS=1.8e-12 $X=105000 $Y=26000 $D=1
M11 14 12 13 GND N L=4e-07 W=1e-06 AD=1.1e-12 AS=3.5e-12 $X=113500 $Y=26000 $D=1
M12 14 R GND GND N L=4e-07 W=1e-06 AD=1.2e-12 AS=1.1e-12 $X=130500 $Y=26000 $D=1
M13 GND 15 14 GND N L=4e-07 W=1e-06 AD=1.2e-12 AS=1.2e-12 $X=138500 $Y=26000 $D=1
M14 15 13 GND GND N L=4e-07 W=1e-06 AD=1.1e-12 AS=1.2e-12 $X=146500 $Y=26000 $D=1
M15 GND 13 QB GND N L=4e-07 W=2e-06 AD=2.4e-12 AS=2.2e-12 $X=162500 $Y=31000 $D=1
M16 Q QB GND GND N L=4e-07 W=2e-06 AD=2.2e-12 AS=2.4e-12 $X=170500 $Y=31000 $D=1
M17 19 11 VDD VDD P L=4e-07 W=5.4e-06 AD=3.24e-12 AS=5.74e-12 $X=11500 $Y=62000 $D=0
M18 8 D 19 VDD P L=4e-07 W=5.4e-06 AD=6.14e-12 AS=3.24e-12 $X=16500 $Y=62000 $D=0
M19 20 12 8 VDD P L=4e-07 W=1e-06 AD=6e-13 AS=6.14e-12 $X=25000 $Y=62000 $D=0
M20 VDD 9 20 VDD P L=4e-07 W=1e-06 AD=1.1e-12 AS=6e-13 $X=30000 $Y=62000 $D=0
M21 21 8 9 VDD P L=4e-07 W=2.4e-06 AD=1.44e-12 AS=2.44e-12 $X=46000 $Y=62000 $D=0
M22 VDD R 21 VDD P L=4e-07 W=2.4e-06 AD=3e-12 AS=1.44e-12 $X=51000 $Y=62000 $D=0
M23 10 9 VDD VDD P L=4e-07 W=1.8e-06 AD=1.58e-12 AS=3e-12 $X=59500 $Y=62000 $D=0
M24 VDD 12 11 VDD P L=4e-07 W=3.6e-06 AD=4.32e-12 AS=3.66e-12 $X=76000 $Y=62000 $D=0
M25 12 CLK VDD VDD P L=4e-07 W=3.6e-06 AD=3.66e-12 AS=4.32e-12 $X=84000 $Y=62000 $D=0
M26 22 10 VDD VDD P L=4e-07 W=5.4e-06 AD=3.24e-12 AS=5.74e-12 $X=100000 $Y=53000 $D=0
M27 13 12 22 VDD P L=4e-07 W=5.4e-06 AD=6.14e-12 AS=3.24e-12 $X=105000 $Y=53000 $D=0
M28 14 11 13 VDD P L=4e-07 W=1e-06 AD=1.2e-12 AS=6.14e-12 $X=113500 $Y=68000 $D=0
M29 23 R 14 VDD P L=4e-07 W=1e-06 AD=6e-13 AS=1.2e-12 $X=121500 $Y=68000 $D=0
M30 VDD 15 23 VDD P L=4e-07 W=1e-06 AD=1.2e-12 AS=6e-13 $X=126500 $Y=68000 $D=0
M31 15 13 VDD VDD P L=4e-07 W=1e-06 AD=1.1e-12 AS=1.2e-12 $X=134500 $Y=68000 $D=0
M32 VDD 13 QB VDD P L=4e-07 W=3.6e-06 AD=4.32e-12 AS=3.66e-12 $X=162500 $Y=62000 $D=0
M33 Q QB VDD VDD P L=4e-07 W=3.6e-06 AD=3.66e-12 AS=4.32e-12 $X=170500 $Y=62000 $D=0
.ENDS
***************************************
.SUBCKT or02 A1 A0 Y VDD GND
** N=7 EP=5 IP=2 FDC=6
M0 6 A1 GND GND N L=4e-07 W=1e-06 AD=1.2e-12 AS=1.1e-12 $X=11500 $Y=26000 $D=1
M1 GND A0 6 GND N L=4e-07 W=1e-06 AD=1.2e-12 AS=1.2e-12 $X=19500 $Y=26000 $D=1
M2 Y 6 GND GND N L=4e-07 W=1e-06 AD=1.1e-12 AS=1.2e-12 $X=27500 $Y=26000 $D=1
M3 7 A1 6 VDD P L=4e-07 W=2.6e-06 AD=1.56e-12 AS=2.56e-12 $X=11500 $Y=76000 $D=0
M4 VDD A0 7 VDD P L=4e-07 W=2.6e-06 AD=3.22e-12 AS=1.56e-12 $X=16500 $Y=76000 $D=0
M5 Y 6 VDD VDD P L=4e-07 W=1.8e-06 AD=1.58e-12 AS=3.22e-12 $X=25000 $Y=76000 $D=0
.ENDS
***************************************
.SUBCKT oai21 B0 A0 Y A1 GND VDD
** N=8 EP=6 IP=2 FDC=6
M0 7 B0 GND GND N L=4e-07 W=2e-06 AD=2.4e-12 AS=2.2e-12 $X=11500 $Y=26000 $D=1
M1 Y A0 7 GND N L=4e-07 W=2e-06 AD=2.4e-12 AS=2.4e-12 $X=19500 $Y=26000 $D=1
M2 7 A1 Y GND N L=4e-07 W=2e-06 AD=2.2e-12 AS=2.4e-12 $X=27500 $Y=26000 $D=1
M3 VDD B0 Y VDD P L=4e-07 W=2.4e-06 AD=5.76e-12 AS=2.44e-12 $X=11500 $Y=65000 $D=0
M4 8 A0 VDD VDD P L=4e-07 W=4.8e-06 AD=2.88e-12 AS=5.76e-12 $X=20000 $Y=65000 $D=0
M5 Y A1 8 VDD P L=4e-07 W=4.8e-06 AD=4.88e-12 AS=2.88e-12 $X=25000 $Y=65000 $D=0
.ENDS
***************************************
.SUBCKT dffs_ni D S CLK Q GND VDD
** N=24 EP=6 IP=0 FDC=36
M0 17 13 GND GND N L=4e-07 W=3e-06 AD=1.8e-12 AS=3.3e-12 $X=11500 $Y=26000 $D=1
M1 8 D 17 GND N L=4e-07 W=3e-06 AD=3.5e-12 AS=1.8e-12 $X=16500 $Y=26000 $D=1
M2 18 9 8 GND N L=4e-07 W=1e-06 AD=6e-13 AS=3.5e-12 $X=25000 $Y=36000 $D=1
M3 GND 12 18 GND N L=4e-07 W=1e-06 AD=2.4e-12 AS=6e-13 $X=30000 $Y=36000 $D=1
M4 19 10 GND GND N L=4e-07 W=2e-06 AD=1.2e-12 AS=2.4e-12 $X=38500 $Y=31000 $D=1
M5 9 8 19 GND N L=4e-07 W=2e-06 AD=2.2e-12 AS=1.2e-12 $X=43500 $Y=31000 $D=1
M6 GND S 10 GND N L=4e-07 W=2e-06 AD=2.4e-12 AS=2.2e-12 $X=62500 $Y=31000 $D=1
M7 11 9 GND GND N L=4e-07 W=2e-06 AD=2.2e-12 AS=2.4e-12 $X=70500 $Y=31000 $D=1
M8 GND 13 12 GND N L=4e-07 W=2e-06 AD=2.4e-12 AS=2.2e-12 $X=86500 $Y=31000 $D=1
M9 13 CLK GND GND N L=4e-07 W=2e-06 AD=2.2e-12 AS=2.4e-12 $X=94500 $Y=31000 $D=1
M10 20 12 GND GND N L=4e-07 W=3e-06 AD=1.8e-12 AS=3.3e-12 $X=116000 $Y=26000 $D=1
M11 14 11 20 GND N L=4e-07 W=3e-06 AD=3.5e-12 AS=1.8e-12 $X=121000 $Y=26000 $D=1
M12 15 13 14 GND N L=4e-07 W=1e-06 AD=1.2e-12 AS=3.5e-12 $X=129500 $Y=36000 $D=1
M13 21 10 15 GND N L=4e-07 W=1e-06 AD=6e-13 AS=1.2e-12 $X=137500 $Y=36000 $D=1
M14 GND 16 21 GND N L=4e-07 W=1e-06 AD=1.2e-12 AS=6e-13 $X=142500 $Y=36000 $D=1
M15 16 14 GND GND N L=4e-07 W=1e-06 AD=1.1e-12 AS=1.2e-12 $X=150500 $Y=36000 $D=1
M16 GND QB Q GND N L=4e-07 W=2e-06 AD=2.4e-12 AS=2.2e-12 $X=170000 $Y=31000 $D=1
M17 QB 14 GND GND N L=4e-07 W=2e-06 AD=2.2e-12 AS=2.4e-12 $X=178000 $Y=31000 $D=1
M18 22 12 VDD VDD P L=4e-07 W=5.4e-06 AD=3.24e-12 AS=5.74e-12 $X=11500 $Y=62000 $D=0
M19 8 D 22 VDD P L=4e-07 W=5.4e-06 AD=5.94e-12 AS=3.24e-12 $X=16500 $Y=62000 $D=0
M20 23 9 8 VDD P L=4e-07 W=1e-06 AD=6e-13 AS=5.94e-12 $X=25000 $Y=69000 $D=0
M21 VDD 13 23 VDD P L=4e-07 W=1e-06 AD=2.64e-12 AS=6e-13 $X=30000 $Y=69000 $D=0
M22 9 10 VDD VDD P L=4e-07 W=2.4e-06 AD=2.88e-12 AS=2.64e-12 $X=38500 $Y=62000 $D=0
M23 VDD 8 9 VDD P L=4e-07 W=2.4e-06 AD=2.44e-12 AS=2.88e-12 $X=46500 $Y=62000 $D=0
M24 VDD S 10 VDD P L=4e-07 W=3.6e-06 AD=4.32e-12 AS=3.66e-12 $X=62500 $Y=63000 $D=0
M25 11 9 VDD VDD P L=4e-07 W=3.6e-06 AD=3.66e-12 AS=4.32e-12 $X=70500 $Y=63000 $D=0
M26 VDD 13 12 VDD P L=4e-07 W=3.6e-06 AD=4.32e-12 AS=3.66e-12 $X=86500 $Y=63000 $D=0
M27 13 CLK VDD VDD P L=4e-07 W=3.6e-06 AD=3.66e-12 AS=4.32e-12 $X=94500 $Y=63000 $D=0
M28 14 12 15 VDD P L=4e-07 W=1e-06 AD=6.14e-12 AS=1.1e-12 $X=116000 $Y=62000 $D=0
M29 24 11 14 VDD P L=4e-07 W=5.4e-06 AD=3.24e-12 AS=6.14e-12 $X=124500 $Y=62000 $D=0
M30 VDD 13 24 VDD P L=4e-07 W=5.4e-06 AD=6.14e-12 AS=3.24e-12 $X=129500 $Y=62000 $D=0
M31 15 10 VDD VDD P L=4e-07 W=1e-06 AD=1.2e-12 AS=6.14e-12 $X=138000 $Y=62000 $D=0
M32 VDD 16 15 VDD P L=4e-07 W=1e-06 AD=1.2e-12 AS=1.2e-12 $X=146000 $Y=62000 $D=0
M33 16 14 VDD VDD P L=4e-07 W=1e-06 AD=1.1e-12 AS=1.2e-12 $X=154000 $Y=62000 $D=0
M34 VDD QB Q VDD P L=4e-07 W=3.6e-06 AD=4.32e-12 AS=3.66e-12 $X=170000 $Y=62000 $D=0
M35 QB 14 VDD VDD P L=4e-07 W=3.6e-06 AD=3.66e-12 AS=4.32e-12 $X=178000 $Y=62000 $D=0
.ENDS
***************************************
.SUBCKT buf02 Y A GND VDD
** N=5 EP=4 IP=1 FDC=4
M0 GND 5 Y GND N L=4e-07 W=2e-06 AD=2.4e-12 AS=2.2e-12 $X=11500 $Y=26000 $D=1
M1 5 A GND GND N L=4e-07 W=1e-06 AD=1.1e-12 AS=2.4e-12 $X=20000 $Y=31000 $D=1
M2 VDD 5 Y VDD P L=4e-07 W=3.6e-06 AD=4.32e-12 AS=3.66e-12 $X=11500 $Y=71000 $D=0
M3 5 A VDD VDD P L=4e-07 W=1.8e-06 AD=1.58e-12 AS=4.32e-12 $X=20000 $Y=71000 $D=0
.ENDS
***************************************
.SUBCKT and02 A0 A1 Y GND VDD
** N=7 EP=5 IP=2 FDC=6
M0 7 A0 6 GND N L=4e-07 W=2e-06 AD=1.2e-12 AS=2.2e-12 $X=14500 $Y=26000 $D=1
M1 GND A1 7 GND N L=4e-07 W=2e-06 AD=2.4e-12 AS=1.2e-12 $X=19500 $Y=26000 $D=1
M2 Y 6 GND GND N L=4e-07 W=1e-06 AD=1.1e-12 AS=2.4e-12 $X=28000 $Y=31000 $D=1
M3 6 A0 VDD VDD P L=4e-07 W=2.4e-06 AD=2.88e-12 AS=2.44e-12 $X=11500 $Y=77000 $D=0
M4 VDD A1 6 VDD P L=4e-07 W=2.4e-06 AD=3e-12 AS=2.88e-12 $X=19500 $Y=77000 $D=0
M5 Y 6 VDD VDD P L=4e-07 W=1.8e-06 AD=1.58e-12 AS=3e-12 $X=28000 $Y=77000 $D=0
.ENDS
***************************************
.SUBCKT inv02 A Y GND VDD
** N=4 EP=4 IP=1 FDC=2
M0 Y A GND GND N L=4e-07 W=2e-06 AD=2.2e-12 AS=2.2e-12 $X=11500 $Y=26000 $D=1
M1 Y A VDD VDD P L=4e-07 W=3.6e-06 AD=3.66e-12 AS=3.66e-12 $X=11500 $Y=71000 $D=0
.ENDS
***************************************
.SUBCKT nand04 A0 Y A1 A2 A3 GND VDD
** N=10 EP=7 IP=2 FDC=8
M0 8 A0 Y GND N L=4e-07 W=4e-06 AD=2.4e-12 AS=4.4e-12 $X=11500 $Y=28000 $D=1
M1 9 A1 8 GND N L=4e-07 W=4e-06 AD=2.4e-12 AS=2.4e-12 $X=16500 $Y=28000 $D=1
M2 10 A2 9 GND N L=4e-07 W=4e-06 AD=2.4e-12 AS=2.4e-12 $X=21500 $Y=28000 $D=1
M3 GND A3 10 GND N L=4e-07 W=4e-06 AD=4.4e-12 AS=2.4e-12 $X=26500 $Y=28000 $D=1
M4 Y A0 VDD VDD P L=4e-07 W=4e-06 AD=4.8e-12 AS=4.4e-12 $X=11500 $Y=79500 $D=0
M5 VDD A1 Y VDD P L=4e-07 W=4e-06 AD=4.8e-12 AS=4.8e-12 $X=19500 $Y=79500 $D=0
M6 Y A2 VDD VDD P L=4e-07 W=4e-06 AD=4.8e-12 AS=4.8e-12 $X=27500 $Y=79500 $D=0
M7 VDD A3 Y VDD P L=4e-07 W=4e-06 AD=4.4e-12 AS=4.8e-12 $X=35500 $Y=79500 $D=0
.ENDS
***************************************
.SUBCKT FcMain
** N=389 EP=0 IP=611 FDC=762
X0 49 279 276 277 inv01 $T=177000 232000 1 180 $X=152000 $Y=232000
X1 280 54 276 277 inv01 $T=152000 400000 0 0 $X=152000 $Y=400000
X2 50 281 276 277 inv01 $T=177000 568000 1 180 $X=152000 $Y=568000
X3 52 282 276 277 inv01 $T=177000 736000 1 180 $X=152000 $Y=736000
X4 48 283 276 277 inv01 $T=177000 904000 1 180 $X=152000 $Y=904000
X5 48 284 276 277 inv01 $T=177000 1072000 1 180 $X=152000 $Y=1072000
X6 60 285 276 277 inv01 $T=209000 232000 1 180 $X=184000 $Y=232000
X7 49 286 276 277 inv01 $T=184000 400000 0 0 $X=184000 $Y=400000
X8 50 287 276 277 inv01 $T=184000 568000 0 0 $X=184000 $Y=568000
X9 52 288 276 277 inv01 $T=184000 736000 0 0 $X=184000 $Y=736000
X10 48 289 276 277 inv01 $T=209000 904000 1 180 $X=184000 $Y=904000
X11 58 290 276 277 inv01 $T=209000 1072000 1 180 $X=184000 $Y=1072000
X12 291 49 276 277 inv01 $T=216000 232000 0 0 $X=216000 $Y=232000
X13 49 292 276 277 inv01 $T=216000 400000 0 0 $X=216000 $Y=400000
X14 50 293 276 277 inv01 $T=216000 568000 0 0 $X=216000 $Y=568000
X15 294 52 276 277 inv01 $T=216000 736000 0 0 $X=216000 $Y=736000
X16 48 295 276 277 inv01 $T=241000 904000 1 180 $X=216000 $Y=904000
X17 296 48 276 277 inv01 $T=216000 1072000 0 0 $X=216000 $Y=1072000
X18 60 297 276 277 inv01 $T=248000 232000 0 0 $X=248000 $Y=232000
X19 49 298 276 277 inv01 $T=248000 400000 0 0 $X=248000 $Y=400000
X20 50 299 276 277 inv01 $T=273000 568000 1 180 $X=248000 $Y=568000
X21 52 300 276 277 inv01 $T=273000 736000 1 180 $X=248000 $Y=736000
X22 58 301 276 277 inv01 $T=273000 1072000 1 180 $X=248000 $Y=1072000
X23 54 302 276 277 inv01 $T=305000 400000 1 180 $X=280000 $Y=400000
X24 56 303 276 277 inv01 $T=305000 568000 1 180 $X=280000 $Y=568000
X25 52 304 276 277 inv01 $T=280000 736000 0 0 $X=280000 $Y=736000
X26 58 305 276 277 inv01 $T=280000 1072000 0 0 $X=280000 $Y=1072000
X27 306 61 276 277 inv01 $T=296000 904000 0 0 $X=296000 $Y=904000
X28 54 307 276 277 inv01 $T=312000 400000 0 0 $X=312000 $Y=400000
X29 56 308 276 277 inv01 $T=312000 568000 0 0 $X=312000 $Y=568000
X30 56 309 276 277 inv01 $T=337000 736000 1 180 $X=312000 $Y=736000
X31 61 310 276 277 inv01 $T=328000 904000 0 0 $X=328000 $Y=904000
X32 311 62 276 277 inv01 $T=328000 1072000 0 0 $X=328000 $Y=1072000
X33 60 312 276 277 inv01 $T=336000 232000 0 0 $X=336000 $Y=232000
X34 54 313 276 277 inv01 $T=344000 400000 0 0 $X=344000 $Y=400000
X35 59 314 276 277 inv01 $T=369000 568000 1 180 $X=344000 $Y=568000
X36 56 315 276 277 inv01 $T=369000 736000 1 180 $X=344000 $Y=736000
X37 61 316 276 277 inv01 $T=360000 904000 0 0 $X=360000 $Y=904000
X38 317 58 276 277 inv01 $T=360000 1072000 0 0 $X=360000 $Y=1072000
X39 60 318 276 277 inv01 $T=368000 232000 0 0 $X=368000 $Y=232000
X40 63 319 276 277 inv01 $T=401000 64000 1 180 $X=376000 $Y=64000
X41 54 320 276 277 inv01 $T=376000 400000 0 0 $X=376000 $Y=400000
X42 59 321 276 277 inv01 $T=376000 568000 0 0 $X=376000 $Y=568000
X43 322 56 276 277 inv01 $T=384000 736000 0 0 $X=384000 $Y=736000
X44 61 323 276 277 inv01 $T=417000 904000 1 180 $X=392000 $Y=904000
X45 58 324 276 277 inv01 $T=392000 1072000 0 0 $X=392000 $Y=1072000
X46 63 325 276 277 inv01 $T=408000 64000 0 0 $X=408000 $Y=64000
X47 326 60 276 277 inv01 $T=408000 232000 0 0 $X=408000 $Y=232000
X48 67 327 276 277 inv01 $T=433000 400000 1 180 $X=408000 $Y=400000
X49 59 328 276 277 inv01 $T=433000 568000 1 180 $X=408000 $Y=568000
X50 59 329 276 277 inv01 $T=416000 736000 0 0 $X=416000 $Y=736000
X51 61 330 276 277 inv01 $T=424000 904000 0 0 $X=424000 $Y=904000
X52 62 331 276 277 inv01 $T=424000 1072000 0 0 $X=424000 $Y=1072000
X53 63 332 276 277 inv01 $T=465000 64000 1 180 $X=440000 $Y=64000
X54 66 333 276 277 inv01 $T=465000 232000 1 180 $X=440000 $Y=232000
X55 67 334 276 277 inv01 $T=465000 400000 1 180 $X=440000 $Y=400000
X56 335 50 276 277 inv01 $T=448000 568000 0 0 $X=448000 $Y=568000
X57 336 59 276 277 inv01 $T=448000 736000 0 0 $X=448000 $Y=736000
X58 62 337 276 277 inv01 $T=481000 1072000 1 180 $X=456000 $Y=1072000
X59 66 338 276 277 inv01 $T=472000 232000 0 0 $X=472000 $Y=232000
X60 67 339 276 277 inv01 $T=497000 400000 1 180 $X=472000 $Y=400000
X61 64 340 276 277 inv01 $T=505000 736000 1 180 $X=480000 $Y=736000
X62 341 63 276 277 inv01 $T=488000 64000 0 0 $X=488000 $Y=64000
X63 64 342 276 277 inv01 $T=513000 904000 1 180 $X=488000 $Y=904000
X64 62 343 276 277 inv01 $T=488000 1072000 0 0 $X=488000 $Y=1072000
X65 66 344 276 277 inv01 $T=529000 232000 1 180 $X=504000 $Y=232000
X66 64 345 276 277 inv01 $T=512000 736000 0 0 $X=512000 $Y=736000
X67 63 346 276 277 inv01 $T=520000 64000 0 0 $X=520000 $Y=64000
X68 347 67 276 277 inv01 $T=520000 400000 0 0 $X=520000 $Y=400000
X69 64 348 276 277 inv01 $T=545000 904000 1 180 $X=520000 $Y=904000
X70 62 349 276 277 inv01 $T=520000 1072000 0 0 $X=520000 $Y=1072000
X71 350 66 276 277 inv01 $T=536000 232000 0 0 $X=536000 $Y=232000
X72 351 64 276 277 inv01 $T=544000 736000 0 0 $X=544000 $Y=736000
X73 66 352 276 277 inv01 $T=552000 64000 0 0 $X=552000 $Y=64000
X74 67 353 276 277 inv01 $T=552000 400000 0 0 $X=552000 $Y=400000
X75 71 354 276 277 inv01 $T=577000 904000 1 180 $X=552000 $Y=904000
X76 355 71 276 277 inv01 $T=552000 1072000 0 0 $X=552000 $Y=1072000
X77 356 65 276 277 inv01 $T=584000 400000 0 0 $X=584000 $Y=400000
X78 71 357 276 277 inv01 $T=584000 904000 0 0 $X=584000 $Y=904000
X79 71 358 276 277 inv01 $T=616000 904000 0 0 $X=616000 $Y=904000
X80 71 359 276 277 inv01 $T=648000 904000 0 0 $X=648000 $Y=904000
X81 72 75 276 277 inv01 $T=664000 64000 0 0 $X=664000 $Y=64000
X82 10 360 276 277 inv01 $T=664000 568000 0 0 $X=664000 $Y=568000
X83 94 92 276 277 inv01 $T=969000 904000 1 180 $X=944000 $Y=904000
X84 8 12 276 277 inv01 $T=1033000 64000 1 180 $X=1008000 $Y=64000
X85 13 278 276 277 inv01 $T=1104000 232000 0 0 $X=1104000 $Y=232000
X86 99 100 276 277 inv01 $T=1129000 736000 1 180 $X=1104000 $Y=736000
X87 99 276 277 nand02 $T=1080000 568000 0 0 $X=1080000 $Y=568000
X88 77 75 6 70 276 277 ao21 $T=600000 64000 0 0 $X=600000 $Y=64000
X89 97 8 11 101 276 277 ao21 $T=1072000 64000 0 0 $X=1072000 $Y=64000
X90 99 13 8 81 277 276 nand03 $T=1097000 232000 1 180 $X=1056000 $Y=232000
X91 99 98 14 8 277 276 nand03 $T=1097000 736000 1 180 $X=1056000 $Y=736000
X92 76 79 8 277 276 nor02ii $T=696000 568000 0 0 $X=696000 $Y=568000
X93 86 84 88 277 276 nor02ii $T=904000 1072000 0 0 $X=904000 $Y=1072000
X94 96 98 9 277 276 nor02ii $T=1032000 568000 0 0 $X=1032000 $Y=568000
X95 1 65 72 77 73 276 277 ao22 $T=616000 400000 0 0 $X=616000 $Y=400000
X96 13 81 12 97 91 276 277 ao22 $T=1049000 232000 1 180 $X=984000 $Y=232000
X97 95 5 9 98 102 276 277 ao22 $T=1024000 904000 0 0 $X=1024000 $Y=904000
X98 55 361 362 363 364 276 277 nor04 $T=152000 64000 0 0 $X=152000 $Y=64000
X99 53 365 366 367 368 276 277 nor04 $T=208000 64000 0 0 $X=208000 $Y=64000
X100 51 369 370 371 372 276 277 nor04 $T=264000 64000 0 0 $X=264000 $Y=64000
X101 57 373 374 375 376 276 277 nor04 $T=320000 64000 0 0 $X=320000 $Y=64000
X102 88 100 94 8 14 276 277 nor04 $T=1000000 736000 0 0 $X=1000000 $Y=736000
X103 85 84 88 83 277 276 nor03_2x $T=897000 1072000 1 180 $X=856000 $Y=1072000
X104 92 14 8 85 277 276 nor03_2x $T=937000 904000 1 180 $X=896000 $Y=904000
X105 92 14 8 95 277 276 nor03_2x $T=976000 904000 0 0 $X=976000 $Y=904000
X106 90 93 9 81 276 277 or03 $T=976000 568000 0 0 $X=976000 $Y=568000
X107 70 10 7 377 77 276 277 dffr $T=568000 232000 0 0 $X=568000 $Y=232000
X108 74 10 7 84 5 276 277 dffr $T=672000 1072000 0 0 $X=672000 $Y=1072000
X109 73 10 7 378 1 276 277 dffr $T=712000 400000 0 0 $X=712000 $Y=400000
X110 86 10 7 379 6 276 277 dffr $T=712000 904000 0 0 $X=712000 $Y=904000
X111 96 10 7 380 89 276 277 dffr $T=792000 568000 0 0 $X=792000 $Y=568000
X112 91 10 7 381 81 276 277 dffr $T=984000 232000 1 180 $X=800000 $Y=232000
X113 82 10 7 79 93 276 277 dffr $T=816000 736000 0 0 $X=816000 $Y=736000
X114 101 10 7 382 97 276 277 dffr $T=824000 64000 0 0 $X=824000 $Y=64000
X115 278 10 7 383 87 276 277 dffr $T=1128000 400000 1 180 $X=944000 $Y=400000
X116 102 10 7 384 9 276 277 dffr $T=1136000 1072000 1 180 $X=952000 $Y=1072000
X117 3 83 74 277 276 or02 $T=600000 1072000 0 0 $X=600000 $Y=1072000
X118 3 11 385 277 276 or02 $T=712000 64000 0 0 $X=712000 $Y=64000
X119 87 81 386 277 276 or02 $T=752000 232000 0 0 $X=752000 $Y=232000
X120 87 89 3 277 276 or02 $T=896000 400000 0 0 $X=896000 $Y=400000
X121 68 80 78 1 276 277 oai21 $T=576000 568000 0 0 $X=576000 $Y=568000
X122 78 8 82 79 276 277 oai21 $T=744000 568000 0 0 $X=744000 $Y=568000
X123 69 7 10 80 276 277 dffs_ni $T=624000 736000 0 0 $X=624000 $Y=736000
X124 11 76 276 277 buf02 $T=624000 568000 0 0 $X=624000 $Y=568000
X125 2 4 387 276 277 and02 $T=248000 904000 0 0 $X=248000 $Y=904000
X126 65 80 69 276 277 and02 $T=576000 736000 0 0 $X=576000 $Y=736000
X127 65 388 276 277 inv02 $T=480000 568000 0 0 $X=480000 $Y=568000
X128 65 68 276 277 inv02 $T=512000 568000 0 0 $X=512000 $Y=568000
X129 65 389 276 277 inv02 $T=544000 568000 0 0 $X=544000 $Y=568000
X130 57 94 55 53 51 276 277 nand04 $T=329000 232000 1 180 $X=280000 $Y=232000
.ENDS
***************************************
