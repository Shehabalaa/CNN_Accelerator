
-- 
-- Definition of  RegFile
-- 
--      Wed Apr 10 18:03:36 2019
--      
--      LeonardoSpectrum Level 3, 2018a.2
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RegUnit_8_16 is
   port (
      filterBus : IN std_logic_vector (7 DOWNTO 0) ;
      windowBus : IN std_logic_vector (15 DOWNTO 0) ;
      regPage1NextUnit : IN std_logic_vector (15 DOWNTO 0) ;
      regPage2NextUnit : IN std_logic_vector (15 DOWNTO 0) ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      enableRegPage1 : IN std_logic ;
      enableRegPage2 : IN std_logic ;
      enableRegFilter : IN std_logic ;
      page1ReadBusOrPage2 : IN std_logic ;
      page2ReadBusOrPage1 : IN std_logic ;
      pageTurn : IN std_logic ;
      outRegPage : OUT std_logic_vector (15 DOWNTO 0) ;
      outputRegPage1 : OUT std_logic_vector (15 DOWNTO 0) ;
      outputRegPage2 : OUT std_logic_vector (15 DOWNTO 0) ;
      outFilter : OUT std_logic_vector (7 DOWNTO 0)) ;
end RegUnit_8_16 ;

architecture RegUnitArch_unfold_2792 of RegUnit_8_16 is
   signal outFilter_7_EXMPLR, outFilter_6_EXMPLR, outFilter_5_EXMPLR, 
      outFilter_4_EXMPLR, outFilter_3_EXMPLR, outFilter_2_EXMPLR, 
      outFilter_1_EXMPLR, outFilter_0_EXMPLR, regPage1Map_GND0, 
      outputRegPage1_0_EXMPLR, outputRegPage2_0_EXMPLR, 
      outputRegPage1_1_EXMPLR, outputRegPage2_1_EXMPLR, 
      outputRegPage1_2_EXMPLR, outputRegPage2_2_EXMPLR, 
      outputRegPage1_3_EXMPLR, outputRegPage2_3_EXMPLR, 
      outputRegPage1_4_EXMPLR, outputRegPage2_4_EXMPLR, 
      outputRegPage1_5_EXMPLR, outputRegPage2_5_EXMPLR, 
      outputRegPage1_6_EXMPLR, outputRegPage2_6_EXMPLR, 
      outputRegPage1_7_EXMPLR, outputRegPage2_7_EXMPLR, 
      outputRegPage1_8_EXMPLR, outputRegPage2_8_EXMPLR, 
      outputRegPage1_9_EXMPLR, outputRegPage2_9_EXMPLR, 
      outputRegPage1_10_EXMPLR, outputRegPage2_10_EXMPLR, 
      outputRegPage1_11_EXMPLR, outputRegPage2_11_EXMPLR, 
      outputRegPage1_12_EXMPLR, outputRegPage2_12_EXMPLR, 
      outputRegPage1_13_EXMPLR, outputRegPage2_13_EXMPLR, 
      outputRegPage1_14_EXMPLR, outputRegPage2_14_EXMPLR, 
      outputRegPage1_15_EXMPLR, outputRegPage2_15_EXMPLR, nx133, nx143, 
      nx153, nx163, nx173, nx183, nx193, nx203, nx213, nx223, nx233, nx243, 
      nx253, nx263, nx273, nx283, nx293, nx303, nx313, nx323, nx333, nx343, 
      nx353, nx363, nx373, nx383, nx393, nx403, nx413, nx423, nx433, nx443, 
      nx453, nx463, nx473, nx483, nx493, nx503, nx513, nx523, nx535, nx539, 
      nx544, nx546, nx551, nx553, nx558, nx560, nx565, nx567, nx572, nx574, 
      nx579, nx581, nx586, nx588, nx592, nx595, nx597, nx599, nx602, nx605, 
      nx607, nx609, nx613, nx616, nx618, nx621, nx624, nx626, nx630, nx633, 
      nx635, nx638, nx641, nx643, nx647, nx650, nx652, nx655, nx658, nx660, 
      nx664, nx667, nx669, nx672, nx675, nx677, nx681, nx684, nx686, nx689, 
      nx692, nx694, nx698, nx701, nx703, nx706, nx709, nx711, nx715, nx718, 
      nx720, nx723, nx726, nx728, nx732, nx735, nx737, nx740, nx743, nx745, 
      nx749, nx752, nx754, nx757, nx760, nx762, nx766, nx769, nx771, nx774, 
      nx777, nx779, nx783, nx786, nx788, nx791, nx794, nx796, nx800, nx803, 
      nx805, nx808, nx811, nx813, nx817, nx820, nx822, nx825, nx828, nx830, 
      nx834, nx837, nx839, nx842, nx845, nx847, nx851, nx854, nx856, nx859, 
      nx862, nx864, nx874, nx876, nx878, nx880, nx882, nx884, nx886, nx888, 
      nx890, nx892, nx894, nx896, nx898, nx904, nx906, nx908, nx910: 
   std_logic ;

begin
   outputRegPage1(15) <= regPage1Map_GND0 ;
   outputRegPage1(14) <= regPage1Map_GND0 ;
   outputRegPage1(13) <= regPage1Map_GND0 ;
   outputRegPage1(12) <= regPage1Map_GND0 ;
   outputRegPage1(11) <= regPage1Map_GND0 ;
   outputRegPage1(10) <= regPage1Map_GND0 ;
   outputRegPage1(9) <= regPage1Map_GND0 ;
   outputRegPage1(8) <= regPage1Map_GND0 ;
   outputRegPage1(7) <= regPage1Map_GND0 ;
   outputRegPage1(6) <= regPage1Map_GND0 ;
   outputRegPage1(5) <= regPage1Map_GND0 ;
   outputRegPage1(4) <= regPage1Map_GND0 ;
   outputRegPage1(3) <= regPage1Map_GND0 ;
   outputRegPage1(2) <= regPage1Map_GND0 ;
   outputRegPage1(1) <= regPage1Map_GND0 ;
   outputRegPage1(0) <= regPage1Map_GND0 ;
   outputRegPage2(15) <= regPage1Map_GND0 ;
   outputRegPage2(14) <= regPage1Map_GND0 ;
   outputRegPage2(13) <= regPage1Map_GND0 ;
   outputRegPage2(12) <= regPage1Map_GND0 ;
   outputRegPage2(11) <= regPage1Map_GND0 ;
   outputRegPage2(10) <= regPage1Map_GND0 ;
   outputRegPage2(9) <= regPage1Map_GND0 ;
   outputRegPage2(8) <= regPage1Map_GND0 ;
   outputRegPage2(7) <= regPage1Map_GND0 ;
   outputRegPage2(6) <= regPage1Map_GND0 ;
   outputRegPage2(5) <= regPage1Map_GND0 ;
   outputRegPage2(4) <= regPage1Map_GND0 ;
   outputRegPage2(3) <= regPage1Map_GND0 ;
   outputRegPage2(2) <= regPage1Map_GND0 ;
   outputRegPage2(1) <= regPage1Map_GND0 ;
   outputRegPage2(0) <= regPage1Map_GND0 ;
   outFilter(7) <= outFilter_7_EXMPLR ;
   outFilter(6) <= outFilter_6_EXMPLR ;
   outFilter(5) <= outFilter_5_EXMPLR ;
   outFilter(4) <= outFilter_4_EXMPLR ;
   outFilter(3) <= outFilter_3_EXMPLR ;
   outFilter(2) <= outFilter_2_EXMPLR ;
   outFilter(1) <= outFilter_1_EXMPLR ;
   outFilter(0) <= outFilter_0_EXMPLR ;
   ix54 : fake_gnd port map ( Y=>regPage1Map_GND0);
   regFilterMap_reg_Q_0 : dffr port map ( Q=>outFilter_0_EXMPLR, QB=>OPEN, D
      =>nx453, CLK=>clk, R=>rst);
   ix454 : nand02 port map ( Y=>nx453, A0=>nx535, A1=>nx539);
   ix536 : nand02 port map ( Y=>nx535, A0=>outFilter_0_EXMPLR, A1=>nx908);
   ix540 : nand02 port map ( Y=>nx539, A0=>filterBus(0), A1=>nx904);
   regFilterMap_reg_Q_1 : dffr port map ( Q=>outFilter_1_EXMPLR, QB=>OPEN, D
      =>nx463, CLK=>clk, R=>rst);
   ix464 : nand02 port map ( Y=>nx463, A0=>nx544, A1=>nx546);
   ix545 : nand02 port map ( Y=>nx544, A0=>outFilter_1_EXMPLR, A1=>nx908);
   ix547 : nand02 port map ( Y=>nx546, A0=>filterBus(1), A1=>nx904);
   regFilterMap_reg_Q_2 : dffr port map ( Q=>outFilter_2_EXMPLR, QB=>OPEN, D
      =>nx473, CLK=>clk, R=>rst);
   ix474 : nand02 port map ( Y=>nx473, A0=>nx551, A1=>nx553);
   ix552 : nand02 port map ( Y=>nx551, A0=>outFilter_2_EXMPLR, A1=>nx908);
   ix554 : nand02 port map ( Y=>nx553, A0=>filterBus(2), A1=>nx904);
   regFilterMap_reg_Q_3 : dffr port map ( Q=>outFilter_3_EXMPLR, QB=>OPEN, D
      =>nx483, CLK=>clk, R=>rst);
   ix484 : nand02 port map ( Y=>nx483, A0=>nx558, A1=>nx560);
   ix559 : nand02 port map ( Y=>nx558, A0=>outFilter_3_EXMPLR, A1=>nx908);
   ix561 : nand02 port map ( Y=>nx560, A0=>filterBus(3), A1=>nx904);
   regFilterMap_reg_Q_4 : dffr port map ( Q=>outFilter_4_EXMPLR, QB=>OPEN, D
      =>nx493, CLK=>clk, R=>rst);
   ix494 : nand02 port map ( Y=>nx493, A0=>nx565, A1=>nx567);
   ix566 : nand02 port map ( Y=>nx565, A0=>outFilter_4_EXMPLR, A1=>nx908);
   ix568 : nand02 port map ( Y=>nx567, A0=>filterBus(4), A1=>nx904);
   regFilterMap_reg_Q_5 : dffr port map ( Q=>outFilter_5_EXMPLR, QB=>OPEN, D
      =>nx503, CLK=>clk, R=>rst);
   ix504 : nand02 port map ( Y=>nx503, A0=>nx572, A1=>nx574);
   ix573 : nand02 port map ( Y=>nx572, A0=>outFilter_5_EXMPLR, A1=>nx908);
   ix575 : nand02 port map ( Y=>nx574, A0=>filterBus(5), A1=>nx904);
   regFilterMap_reg_Q_6 : dffr port map ( Q=>outFilter_6_EXMPLR, QB=>OPEN, D
      =>nx513, CLK=>clk, R=>rst);
   ix514 : nand02 port map ( Y=>nx513, A0=>nx579, A1=>nx581);
   ix580 : nand02 port map ( Y=>nx579, A0=>outFilter_6_EXMPLR, A1=>nx908);
   ix582 : nand02 port map ( Y=>nx581, A0=>filterBus(6), A1=>nx904);
   regFilterMap_reg_Q_7 : dffr port map ( Q=>outFilter_7_EXMPLR, QB=>OPEN, D
      =>nx523, CLK=>clk, R=>rst);
   ix524 : nand02 port map ( Y=>nx523, A0=>nx586, A1=>nx588);
   ix587 : nand02 port map ( Y=>nx586, A0=>outFilter_7_EXMPLR, A1=>nx874);
   ix589 : nand02 port map ( Y=>nx588, A0=>filterBus(7), A1=>nx906);
   ix33 : mux21 port map ( Y=>outRegPage(0), A0=>nx592, A1=>nx602, S0=>
      pageTurn);
   ix134 : oai21 port map ( Y=>nx133, A0=>nx595, A1=>nx878, B0=>nx599);
   ix596 : mux21 port map ( Y=>nx595, A0=>windowBus(0), A1=>
      regPage2NextUnit(0), S0=>page1ReadBusOrPage2);
   ix598 : nor02_2x port map ( Y=>nx597, A0=>enableRegPage1, A1=>
      page1ReadBusOrPage2);
   ix600 : nand02 port map ( Y=>nx599, A0=>outputRegPage1_0_EXMPLR, A1=>
      nx878);
   regPage1Map_reg_Q_0 : dffr port map ( Q=>outputRegPage1_0_EXMPLR, QB=>
      nx592, D=>nx133, CLK=>clk, R=>rst);
   ix144 : oai21 port map ( Y=>nx143, A0=>nx605, A1=>nx890, B0=>nx609);
   ix606 : mux21 port map ( Y=>nx605, A0=>windowBus(0), A1=>
      regPage1NextUnit(0), S0=>page2ReadBusOrPage1);
   ix608 : nor02_2x port map ( Y=>nx607, A0=>enableRegPage2, A1=>
      page2ReadBusOrPage1);
   ix610 : nand02 port map ( Y=>nx609, A0=>outputRegPage2_0_EXMPLR, A1=>
      nx890);
   regPage2Map_reg_Q_0 : dffr port map ( Q=>outputRegPage2_0_EXMPLR, QB=>
      nx602, D=>nx143, CLK=>clk, R=>rst);
   ix61 : mux21 port map ( Y=>outRegPage(1), A0=>nx613, A1=>nx621, S0=>
      pageTurn);
   ix154 : oai21 port map ( Y=>nx153, A0=>nx616, A1=>nx878, B0=>nx618);
   ix617 : mux21 port map ( Y=>nx616, A0=>windowBus(1), A1=>
      regPage2NextUnit(1), S0=>page1ReadBusOrPage2);
   ix619 : nand02 port map ( Y=>nx618, A0=>outputRegPage1_1_EXMPLR, A1=>
      nx878);
   regPage1Map_reg_Q_1 : dffr port map ( Q=>outputRegPage1_1_EXMPLR, QB=>
      nx613, D=>nx153, CLK=>clk, R=>rst);
   ix164 : oai21 port map ( Y=>nx163, A0=>nx624, A1=>nx890, B0=>nx626);
   ix625 : mux21 port map ( Y=>nx624, A0=>windowBus(1), A1=>
      regPage1NextUnit(1), S0=>page2ReadBusOrPage1);
   ix627 : nand02 port map ( Y=>nx626, A0=>outputRegPage2_1_EXMPLR, A1=>
      nx890);
   regPage2Map_reg_Q_1 : dffr port map ( Q=>outputRegPage2_1_EXMPLR, QB=>
      nx621, D=>nx163, CLK=>clk, R=>rst);
   ix89 : mux21 port map ( Y=>outRegPage(2), A0=>nx630, A1=>nx638, S0=>
      pageTurn);
   ix174 : oai21 port map ( Y=>nx173, A0=>nx633, A1=>nx878, B0=>nx635);
   ix634 : mux21 port map ( Y=>nx633, A0=>windowBus(2), A1=>
      regPage2NextUnit(2), S0=>page1ReadBusOrPage2);
   ix636 : nand02 port map ( Y=>nx635, A0=>outputRegPage1_2_EXMPLR, A1=>
      nx878);
   regPage1Map_reg_Q_2 : dffr port map ( Q=>outputRegPage1_2_EXMPLR, QB=>
      nx630, D=>nx173, CLK=>clk, R=>rst);
   ix184 : oai21 port map ( Y=>nx183, A0=>nx641, A1=>nx890, B0=>nx643);
   ix642 : mux21 port map ( Y=>nx641, A0=>windowBus(2), A1=>
      regPage1NextUnit(2), S0=>page2ReadBusOrPage1);
   ix644 : nand02 port map ( Y=>nx643, A0=>outputRegPage2_2_EXMPLR, A1=>
      nx890);
   regPage2Map_reg_Q_2 : dffr port map ( Q=>outputRegPage2_2_EXMPLR, QB=>
      nx638, D=>nx183, CLK=>clk, R=>rst);
   ix117 : mux21 port map ( Y=>outRegPage(3), A0=>nx647, A1=>nx655, S0=>
      pageTurn);
   ix194 : oai21 port map ( Y=>nx193, A0=>nx650, A1=>nx878, B0=>nx652);
   ix651 : mux21 port map ( Y=>nx650, A0=>windowBus(3), A1=>
      regPage2NextUnit(3), S0=>page1ReadBusOrPage2);
   ix653 : nand02 port map ( Y=>nx652, A0=>outputRegPage1_3_EXMPLR, A1=>
      nx880);
   regPage1Map_reg_Q_3 : dffr port map ( Q=>outputRegPage1_3_EXMPLR, QB=>
      nx647, D=>nx193, CLK=>clk, R=>rst);
   ix204 : oai21 port map ( Y=>nx203, A0=>nx658, A1=>nx890, B0=>nx660);
   ix659 : mux21 port map ( Y=>nx658, A0=>windowBus(3), A1=>
      regPage1NextUnit(3), S0=>page2ReadBusOrPage1);
   ix661 : nand02 port map ( Y=>nx660, A0=>outputRegPage2_3_EXMPLR, A1=>
      nx892);
   regPage2Map_reg_Q_3 : dffr port map ( Q=>outputRegPage2_3_EXMPLR, QB=>
      nx655, D=>nx203, CLK=>clk, R=>rst);
   ix145 : mux21 port map ( Y=>outRegPage(4), A0=>nx664, A1=>nx672, S0=>
      pageTurn);
   ix214 : oai21 port map ( Y=>nx213, A0=>nx667, A1=>nx880, B0=>nx669);
   ix668 : mux21 port map ( Y=>nx667, A0=>windowBus(4), A1=>
      regPage2NextUnit(4), S0=>page1ReadBusOrPage2);
   ix670 : nand02 port map ( Y=>nx669, A0=>outputRegPage1_4_EXMPLR, A1=>
      nx880);
   regPage1Map_reg_Q_4 : dffr port map ( Q=>outputRegPage1_4_EXMPLR, QB=>
      nx664, D=>nx213, CLK=>clk, R=>rst);
   ix224 : oai21 port map ( Y=>nx223, A0=>nx675, A1=>nx892, B0=>nx677);
   ix676 : mux21 port map ( Y=>nx675, A0=>windowBus(4), A1=>
      regPage1NextUnit(4), S0=>page2ReadBusOrPage1);
   ix678 : nand02 port map ( Y=>nx677, A0=>outputRegPage2_4_EXMPLR, A1=>
      nx892);
   regPage2Map_reg_Q_4 : dffr port map ( Q=>outputRegPage2_4_EXMPLR, QB=>
      nx672, D=>nx223, CLK=>clk, R=>rst);
   ix173 : mux21 port map ( Y=>outRegPage(5), A0=>nx681, A1=>nx689, S0=>
      pageTurn);
   ix234 : oai21 port map ( Y=>nx233, A0=>nx684, A1=>nx880, B0=>nx686);
   ix685 : mux21 port map ( Y=>nx684, A0=>windowBus(5), A1=>
      regPage2NextUnit(5), S0=>page1ReadBusOrPage2);
   ix687 : nand02 port map ( Y=>nx686, A0=>outputRegPage1_5_EXMPLR, A1=>
      nx880);
   regPage1Map_reg_Q_5 : dffr port map ( Q=>outputRegPage1_5_EXMPLR, QB=>
      nx681, D=>nx233, CLK=>clk, R=>rst);
   ix244 : oai21 port map ( Y=>nx243, A0=>nx692, A1=>nx892, B0=>nx694);
   ix693 : mux21 port map ( Y=>nx692, A0=>windowBus(5), A1=>
      regPage1NextUnit(5), S0=>page2ReadBusOrPage1);
   ix695 : nand02 port map ( Y=>nx694, A0=>outputRegPage2_5_EXMPLR, A1=>
      nx892);
   regPage2Map_reg_Q_5 : dffr port map ( Q=>outputRegPage2_5_EXMPLR, QB=>
      nx689, D=>nx243, CLK=>clk, R=>rst);
   ix201 : mux21 port map ( Y=>outRegPage(6), A0=>nx698, A1=>nx706, S0=>
      pageTurn);
   ix254 : oai21 port map ( Y=>nx253, A0=>nx701, A1=>nx880, B0=>nx703);
   ix702 : mux21 port map ( Y=>nx701, A0=>windowBus(6), A1=>
      regPage2NextUnit(6), S0=>page1ReadBusOrPage2);
   ix704 : nand02 port map ( Y=>nx703, A0=>outputRegPage1_6_EXMPLR, A1=>
      nx880);
   regPage1Map_reg_Q_6 : dffr port map ( Q=>outputRegPage1_6_EXMPLR, QB=>
      nx698, D=>nx253, CLK=>clk, R=>rst);
   ix264 : oai21 port map ( Y=>nx263, A0=>nx709, A1=>nx892, B0=>nx711);
   ix710 : mux21 port map ( Y=>nx709, A0=>windowBus(6), A1=>
      regPage1NextUnit(6), S0=>page2ReadBusOrPage1);
   ix712 : nand02 port map ( Y=>nx711, A0=>outputRegPage2_6_EXMPLR, A1=>
      nx892);
   regPage2Map_reg_Q_6 : dffr port map ( Q=>outputRegPage2_6_EXMPLR, QB=>
      nx706, D=>nx263, CLK=>clk, R=>rst);
   ix229 : mux21 port map ( Y=>outRegPage(7), A0=>nx715, A1=>nx723, S0=>
      pageTurn);
   ix274 : oai21 port map ( Y=>nx273, A0=>nx718, A1=>nx882, B0=>nx720);
   ix719 : mux21 port map ( Y=>nx718, A0=>windowBus(7), A1=>
      regPage2NextUnit(7), S0=>page1ReadBusOrPage2);
   ix721 : nand02 port map ( Y=>nx720, A0=>outputRegPage1_7_EXMPLR, A1=>
      nx882);
   regPage1Map_reg_Q_7 : dffr port map ( Q=>outputRegPage1_7_EXMPLR, QB=>
      nx715, D=>nx273, CLK=>clk, R=>rst);
   ix284 : oai21 port map ( Y=>nx283, A0=>nx726, A1=>nx894, B0=>nx728);
   ix727 : mux21 port map ( Y=>nx726, A0=>windowBus(7), A1=>
      regPage1NextUnit(7), S0=>page2ReadBusOrPage1);
   ix729 : nand02 port map ( Y=>nx728, A0=>outputRegPage2_7_EXMPLR, A1=>
      nx894);
   regPage2Map_reg_Q_7 : dffr port map ( Q=>outputRegPage2_7_EXMPLR, QB=>
      nx723, D=>nx283, CLK=>clk, R=>rst);
   ix257 : mux21 port map ( Y=>outRegPage(8), A0=>nx732, A1=>nx740, S0=>
      pageTurn);
   ix294 : oai21 port map ( Y=>nx293, A0=>nx735, A1=>nx882, B0=>nx737);
   ix736 : mux21 port map ( Y=>nx735, A0=>windowBus(8), A1=>
      regPage2NextUnit(8), S0=>page1ReadBusOrPage2);
   ix738 : nand02 port map ( Y=>nx737, A0=>outputRegPage1_8_EXMPLR, A1=>
      nx882);
   regPage1Map_reg_Q_8 : dffr port map ( Q=>outputRegPage1_8_EXMPLR, QB=>
      nx732, D=>nx293, CLK=>clk, R=>rst);
   ix304 : oai21 port map ( Y=>nx303, A0=>nx743, A1=>nx894, B0=>nx745);
   ix744 : mux21 port map ( Y=>nx743, A0=>windowBus(8), A1=>
      regPage1NextUnit(8), S0=>page2ReadBusOrPage1);
   ix746 : nand02 port map ( Y=>nx745, A0=>outputRegPage2_8_EXMPLR, A1=>
      nx894);
   regPage2Map_reg_Q_8 : dffr port map ( Q=>outputRegPage2_8_EXMPLR, QB=>
      nx740, D=>nx303, CLK=>clk, R=>rst);
   ix285 : mux21 port map ( Y=>outRegPage(9), A0=>nx749, A1=>nx757, S0=>
      pageTurn);
   ix314 : oai21 port map ( Y=>nx313, A0=>nx752, A1=>nx882, B0=>nx754);
   ix753 : mux21 port map ( Y=>nx752, A0=>windowBus(9), A1=>
      regPage2NextUnit(9), S0=>page1ReadBusOrPage2);
   ix755 : nand02 port map ( Y=>nx754, A0=>outputRegPage1_9_EXMPLR, A1=>
      nx882);
   regPage1Map_reg_Q_9 : dffr port map ( Q=>outputRegPage1_9_EXMPLR, QB=>
      nx749, D=>nx313, CLK=>clk, R=>rst);
   ix324 : oai21 port map ( Y=>nx323, A0=>nx760, A1=>nx894, B0=>nx762);
   ix761 : mux21 port map ( Y=>nx760, A0=>windowBus(9), A1=>
      regPage1NextUnit(9), S0=>page2ReadBusOrPage1);
   ix763 : nand02 port map ( Y=>nx762, A0=>outputRegPage2_9_EXMPLR, A1=>
      nx894);
   regPage2Map_reg_Q_9 : dffr port map ( Q=>outputRegPage2_9_EXMPLR, QB=>
      nx757, D=>nx323, CLK=>clk, R=>rst);
   ix313 : mux21 port map ( Y=>outRegPage(10), A0=>nx766, A1=>nx774, S0=>
      pageTurn);
   ix334 : oai21 port map ( Y=>nx333, A0=>nx769, A1=>nx882, B0=>nx771);
   ix770 : mux21 port map ( Y=>nx769, A0=>windowBus(10), A1=>
      regPage2NextUnit(10), S0=>page1ReadBusOrPage2);
   ix772 : nand02 port map ( Y=>nx771, A0=>outputRegPage1_10_EXMPLR, A1=>
      nx884);
   regPage1Map_reg_Q_10 : dffr port map ( Q=>outputRegPage1_10_EXMPLR, QB=>
      nx766, D=>nx333, CLK=>clk, R=>rst);
   ix344 : oai21 port map ( Y=>nx343, A0=>nx777, A1=>nx894, B0=>nx779);
   ix778 : mux21 port map ( Y=>nx777, A0=>windowBus(10), A1=>
      regPage1NextUnit(10), S0=>page2ReadBusOrPage1);
   ix780 : nand02 port map ( Y=>nx779, A0=>outputRegPage2_10_EXMPLR, A1=>
      nx896);
   regPage2Map_reg_Q_10 : dffr port map ( Q=>outputRegPage2_10_EXMPLR, QB=>
      nx774, D=>nx343, CLK=>clk, R=>rst);
   ix341 : mux21 port map ( Y=>outRegPage(11), A0=>nx783, A1=>nx791, S0=>
      pageTurn);
   ix354 : oai21 port map ( Y=>nx353, A0=>nx786, A1=>nx884, B0=>nx788);
   ix787 : mux21 port map ( Y=>nx786, A0=>windowBus(11), A1=>
      regPage2NextUnit(11), S0=>page1ReadBusOrPage2);
   ix789 : nand02 port map ( Y=>nx788, A0=>outputRegPage1_11_EXMPLR, A1=>
      nx884);
   regPage1Map_reg_Q_11 : dffr port map ( Q=>outputRegPage1_11_EXMPLR, QB=>
      nx783, D=>nx353, CLK=>clk, R=>rst);
   ix364 : oai21 port map ( Y=>nx363, A0=>nx794, A1=>nx896, B0=>nx796);
   ix795 : mux21 port map ( Y=>nx794, A0=>windowBus(11), A1=>
      regPage1NextUnit(11), S0=>page2ReadBusOrPage1);
   ix797 : nand02 port map ( Y=>nx796, A0=>outputRegPage2_11_EXMPLR, A1=>
      nx896);
   regPage2Map_reg_Q_11 : dffr port map ( Q=>outputRegPage2_11_EXMPLR, QB=>
      nx791, D=>nx363, CLK=>clk, R=>rst);
   ix369 : mux21 port map ( Y=>outRegPage(12), A0=>nx800, A1=>nx808, S0=>
      pageTurn);
   ix374 : oai21 port map ( Y=>nx373, A0=>nx803, A1=>nx884, B0=>nx805);
   ix804 : mux21 port map ( Y=>nx803, A0=>windowBus(12), A1=>
      regPage2NextUnit(12), S0=>page1ReadBusOrPage2);
   ix806 : nand02 port map ( Y=>nx805, A0=>outputRegPage1_12_EXMPLR, A1=>
      nx884);
   regPage1Map_reg_Q_12 : dffr port map ( Q=>outputRegPage1_12_EXMPLR, QB=>
      nx800, D=>nx373, CLK=>clk, R=>rst);
   ix384 : oai21 port map ( Y=>nx383, A0=>nx811, A1=>nx896, B0=>nx813);
   ix812 : mux21 port map ( Y=>nx811, A0=>windowBus(12), A1=>
      regPage1NextUnit(12), S0=>page2ReadBusOrPage1);
   ix814 : nand02 port map ( Y=>nx813, A0=>outputRegPage2_12_EXMPLR, A1=>
      nx896);
   regPage2Map_reg_Q_12 : dffr port map ( Q=>outputRegPage2_12_EXMPLR, QB=>
      nx808, D=>nx383, CLK=>clk, R=>rst);
   ix397 : mux21 port map ( Y=>outRegPage(13), A0=>nx817, A1=>nx825, S0=>
      pageTurn);
   ix394 : oai21 port map ( Y=>nx393, A0=>nx820, A1=>nx884, B0=>nx822);
   ix821 : mux21 port map ( Y=>nx820, A0=>windowBus(13), A1=>
      regPage2NextUnit(13), S0=>page1ReadBusOrPage2);
   ix823 : nand02 port map ( Y=>nx822, A0=>outputRegPage1_13_EXMPLR, A1=>
      nx884);
   regPage1Map_reg_Q_13 : dffr port map ( Q=>outputRegPage1_13_EXMPLR, QB=>
      nx817, D=>nx393, CLK=>clk, R=>rst);
   ix404 : oai21 port map ( Y=>nx403, A0=>nx828, A1=>nx896, B0=>nx830);
   ix829 : mux21 port map ( Y=>nx828, A0=>windowBus(13), A1=>
      regPage1NextUnit(13), S0=>page2ReadBusOrPage1);
   ix831 : nand02 port map ( Y=>nx830, A0=>outputRegPage2_13_EXMPLR, A1=>
      nx896);
   regPage2Map_reg_Q_13 : dffr port map ( Q=>outputRegPage2_13_EXMPLR, QB=>
      nx825, D=>nx403, CLK=>clk, R=>rst);
   ix425 : mux21 port map ( Y=>outRegPage(14), A0=>nx834, A1=>nx842, S0=>
      pageTurn);
   ix414 : oai21 port map ( Y=>nx413, A0=>nx837, A1=>nx886, B0=>nx839);
   ix838 : mux21 port map ( Y=>nx837, A0=>windowBus(14), A1=>
      regPage2NextUnit(14), S0=>page1ReadBusOrPage2);
   ix840 : nand02 port map ( Y=>nx839, A0=>outputRegPage1_14_EXMPLR, A1=>
      nx886);
   regPage1Map_reg_Q_14 : dffr port map ( Q=>outputRegPage1_14_EXMPLR, QB=>
      nx834, D=>nx413, CLK=>clk, R=>rst);
   ix424 : oai21 port map ( Y=>nx423, A0=>nx845, A1=>nx898, B0=>nx847);
   ix846 : mux21 port map ( Y=>nx845, A0=>windowBus(14), A1=>
      regPage1NextUnit(14), S0=>page2ReadBusOrPage1);
   ix848 : nand02 port map ( Y=>nx847, A0=>outputRegPage2_14_EXMPLR, A1=>
      nx898);
   regPage2Map_reg_Q_14 : dffr port map ( Q=>outputRegPage2_14_EXMPLR, QB=>
      nx842, D=>nx423, CLK=>clk, R=>rst);
   ix453 : mux21 port map ( Y=>outRegPage(15), A0=>nx851, A1=>nx859, S0=>
      pageTurn);
   ix434 : oai21 port map ( Y=>nx433, A0=>nx854, A1=>nx886, B0=>nx856);
   ix855 : mux21 port map ( Y=>nx854, A0=>windowBus(15), A1=>
      regPage2NextUnit(15), S0=>page1ReadBusOrPage2);
   ix857 : nand02 port map ( Y=>nx856, A0=>outputRegPage1_15_EXMPLR, A1=>
      nx886);
   regPage1Map_reg_Q_15 : dffr port map ( Q=>outputRegPage1_15_EXMPLR, QB=>
      nx851, D=>nx433, CLK=>clk, R=>rst);
   ix444 : oai21 port map ( Y=>nx443, A0=>nx862, A1=>nx898, B0=>nx864);
   ix863 : mux21 port map ( Y=>nx862, A0=>windowBus(15), A1=>
      regPage1NextUnit(15), S0=>page2ReadBusOrPage1);
   ix865 : nand02 port map ( Y=>nx864, A0=>outputRegPage2_15_EXMPLR, A1=>
      nx898);
   regPage2Map_reg_Q_15 : dffr port map ( Q=>outputRegPage2_15_EXMPLR, QB=>
      nx859, D=>nx443, CLK=>clk, R=>rst);
   ix873 : inv01 port map ( Y=>nx874, A=>nx906);
   ix875 : inv01 port map ( Y=>nx876, A=>nx597);
   ix877 : inv02 port map ( Y=>nx878, A=>nx876);
   ix879 : inv02 port map ( Y=>nx880, A=>nx876);
   ix881 : inv02 port map ( Y=>nx882, A=>nx876);
   ix883 : inv02 port map ( Y=>nx884, A=>nx876);
   ix885 : inv02 port map ( Y=>nx886, A=>nx876);
   ix887 : inv01 port map ( Y=>nx888, A=>nx607);
   ix889 : inv02 port map ( Y=>nx890, A=>nx888);
   ix891 : inv02 port map ( Y=>nx892, A=>nx888);
   ix893 : inv02 port map ( Y=>nx894, A=>nx888);
   ix895 : inv02 port map ( Y=>nx896, A=>nx888);
   ix897 : inv02 port map ( Y=>nx898, A=>nx888);
   ix903 : inv02 port map ( Y=>nx904, A=>nx910);
   ix905 : inv02 port map ( Y=>nx906, A=>nx910);
   ix907 : inv02 port map ( Y=>nx908, A=>enableRegFilter);
   ix909 : inv02 port map ( Y=>nx910, A=>enableRegFilter);
end RegUnitArch_unfold_2792 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RegUnit_8_16_unfolded2 is
   port (
      filterBus : IN std_logic_vector (7 DOWNTO 0) ;
      windowBus : IN std_logic_vector (15 DOWNTO 0) ;
      regPage1NextUnit : IN std_logic_vector (15 DOWNTO 0) ;
      regPage2NextUnit : IN std_logic_vector (15 DOWNTO 0) ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      enableRegPage1 : IN std_logic ;
      enableRegPage2 : IN std_logic ;
      enableRegFilter : IN std_logic ;
      page1ReadBusOrPage2 : IN std_logic ;
      page2ReadBusOrPage1 : IN std_logic ;
      pageTurn : IN std_logic ;
      outRegPage : OUT std_logic_vector (15 DOWNTO 0) ;
      outputRegPage1 : OUT std_logic_vector (15 DOWNTO 0) ;
      outputRegPage2 : OUT std_logic_vector (15 DOWNTO 0) ;
      outFilter : OUT std_logic_vector (7 DOWNTO 0)) ;
end RegUnit_8_16_unfolded2 ;

architecture RegUnitArch_xmplrcopy of RegUnit_8_16_unfolded2 is
   signal outputRegPage1_15_EXMPLR, outputRegPage1_14_EXMPLR, 
      outputRegPage1_13_EXMPLR, outputRegPage1_12_EXMPLR, 
      outputRegPage1_11_EXMPLR, outputRegPage1_10_EXMPLR, 
      outputRegPage1_9_EXMPLR, outputRegPage1_8_EXMPLR, 
      outputRegPage1_7_EXMPLR, outputRegPage1_6_EXMPLR, 
      outputRegPage1_5_EXMPLR, outputRegPage1_4_EXMPLR, 
      outputRegPage1_3_EXMPLR, outputRegPage1_2_EXMPLR, 
      outputRegPage1_1_EXMPLR, outputRegPage1_0_EXMPLR, 
      outputRegPage2_15_EXMPLR, outputRegPage2_14_EXMPLR, 
      outputRegPage2_13_EXMPLR, outputRegPage2_12_EXMPLR, 
      outputRegPage2_11_EXMPLR, outputRegPage2_10_EXMPLR, 
      outputRegPage2_9_EXMPLR, outputRegPage2_8_EXMPLR, 
      outputRegPage2_7_EXMPLR, outputRegPage2_6_EXMPLR, 
      outputRegPage2_5_EXMPLR, outputRegPage2_4_EXMPLR, 
      outputRegPage2_3_EXMPLR, outputRegPage2_2_EXMPLR, 
      outputRegPage2_1_EXMPLR, outputRegPage2_0_EXMPLR, outFilter_7_EXMPLR, 
      outFilter_6_EXMPLR, outFilter_5_EXMPLR, outFilter_4_EXMPLR, 
      outFilter_3_EXMPLR, outFilter_2_EXMPLR, outFilter_1_EXMPLR, 
      outFilter_0_EXMPLR, nx345, nx355, nx365, nx375, nx385, nx395, nx405, 
      nx415, nx425, nx435, nx445, nx455, nx465, nx475, nx485, nx495, nx505, 
      nx515, nx525, nx535, nx545, nx555, nx565, nx575, nx585, nx595, nx605, 
      nx615, nx625, nx635, nx645, nx655, nx665, nx675, nx685, nx695, nx705, 
      nx715, nx725, nx735, nx747, nx751, nx756, nx758, nx763, nx765, nx770, 
      nx772, nx777, nx779, nx784, nx786, nx791, nx793, nx798, nx800, nx805, 
      nx807, nx809, nx811, nx814, nx816, nx818, nx821, nx823, nx825, nx828, 
      nx830, nx832, nx835, nx837, nx839, nx842, nx844, nx846, nx849, nx851, 
      nx853, nx856, nx858, nx860, nx863, nx865, nx867, nx870, nx872, nx874, 
      nx877, nx879, nx881, nx884, nx886, nx888, nx891, nx893, nx895, nx898, 
      nx900, nx902, nx905, nx907, nx909, nx912, nx914, nx916, nx919, nx921, 
      nx923, nx925, nx928, nx930, nx932, nx935, nx937, nx939, nx942, nx944, 
      nx946, nx949, nx951, nx953, nx956, nx958, nx960, nx963, nx965, nx967, 
      nx970, nx972, nx974, nx977, nx979, nx981, nx984, nx986, nx988, nx991, 
      nx993, nx995, nx998, nx1000, nx1002, nx1005, nx1007, nx1009, nx1012, 
      nx1014, nx1016, nx1019, nx1021, nx1023, nx1026, nx1028, nx1030, nx1054, 
      nx1056, nx1058, nx1060, nx1062, nx1064, nx1066, nx1068, nx1070, nx1072, 
      nx1074, nx1076, nx1078, nx1084, nx1086, nx1088, nx1090: std_logic ;

begin
   outputRegPage1(15) <= outputRegPage1_15_EXMPLR ;
   outputRegPage1(14) <= outputRegPage1_14_EXMPLR ;
   outputRegPage1(13) <= outputRegPage1_13_EXMPLR ;
   outputRegPage1(12) <= outputRegPage1_12_EXMPLR ;
   outputRegPage1(11) <= outputRegPage1_11_EXMPLR ;
   outputRegPage1(10) <= outputRegPage1_10_EXMPLR ;
   outputRegPage1(9) <= outputRegPage1_9_EXMPLR ;
   outputRegPage1(8) <= outputRegPage1_8_EXMPLR ;
   outputRegPage1(7) <= outputRegPage1_7_EXMPLR ;
   outputRegPage1(6) <= outputRegPage1_6_EXMPLR ;
   outputRegPage1(5) <= outputRegPage1_5_EXMPLR ;
   outputRegPage1(4) <= outputRegPage1_4_EXMPLR ;
   outputRegPage1(3) <= outputRegPage1_3_EXMPLR ;
   outputRegPage1(2) <= outputRegPage1_2_EXMPLR ;
   outputRegPage1(1) <= outputRegPage1_1_EXMPLR ;
   outputRegPage1(0) <= outputRegPage1_0_EXMPLR ;
   outputRegPage2(15) <= outputRegPage2_15_EXMPLR ;
   outputRegPage2(14) <= outputRegPage2_14_EXMPLR ;
   outputRegPage2(13) <= outputRegPage2_13_EXMPLR ;
   outputRegPage2(12) <= outputRegPage2_12_EXMPLR ;
   outputRegPage2(11) <= outputRegPage2_11_EXMPLR ;
   outputRegPage2(10) <= outputRegPage2_10_EXMPLR ;
   outputRegPage2(9) <= outputRegPage2_9_EXMPLR ;
   outputRegPage2(8) <= outputRegPage2_8_EXMPLR ;
   outputRegPage2(7) <= outputRegPage2_7_EXMPLR ;
   outputRegPage2(6) <= outputRegPage2_6_EXMPLR ;
   outputRegPage2(5) <= outputRegPage2_5_EXMPLR ;
   outputRegPage2(4) <= outputRegPage2_4_EXMPLR ;
   outputRegPage2(3) <= outputRegPage2_3_EXMPLR ;
   outputRegPage2(2) <= outputRegPage2_2_EXMPLR ;
   outputRegPage2(1) <= outputRegPage2_1_EXMPLR ;
   outputRegPage2(0) <= outputRegPage2_0_EXMPLR ;
   outFilter(7) <= outFilter_7_EXMPLR ;
   outFilter(6) <= outFilter_6_EXMPLR ;
   outFilter(5) <= outFilter_5_EXMPLR ;
   outFilter(4) <= outFilter_4_EXMPLR ;
   outFilter(3) <= outFilter_3_EXMPLR ;
   outFilter(2) <= outFilter_2_EXMPLR ;
   outFilter(1) <= outFilter_1_EXMPLR ;
   outFilter(0) <= outFilter_0_EXMPLR ;
   regFilterMap_reg_Q_0 : dffr port map ( Q=>outFilter_0_EXMPLR, QB=>OPEN, D
      =>nx665, CLK=>clk, R=>rst);
   ix666 : nand02 port map ( Y=>nx665, A0=>nx747, A1=>nx751);
   ix748 : nand02 port map ( Y=>nx747, A0=>outFilter_0_EXMPLR, A1=>nx1088);
   ix752 : nand02 port map ( Y=>nx751, A0=>filterBus(0), A1=>nx1084);
   regFilterMap_reg_Q_1 : dffr port map ( Q=>outFilter_1_EXMPLR, QB=>OPEN, D
      =>nx675, CLK=>clk, R=>rst);
   ix676 : nand02 port map ( Y=>nx675, A0=>nx756, A1=>nx758);
   ix757 : nand02 port map ( Y=>nx756, A0=>outFilter_1_EXMPLR, A1=>nx1088);
   ix759 : nand02 port map ( Y=>nx758, A0=>filterBus(1), A1=>nx1084);
   regFilterMap_reg_Q_2 : dffr port map ( Q=>outFilter_2_EXMPLR, QB=>OPEN, D
      =>nx685, CLK=>clk, R=>rst);
   ix686 : nand02 port map ( Y=>nx685, A0=>nx763, A1=>nx765);
   ix764 : nand02 port map ( Y=>nx763, A0=>outFilter_2_EXMPLR, A1=>nx1088);
   ix766 : nand02 port map ( Y=>nx765, A0=>filterBus(2), A1=>nx1084);
   regFilterMap_reg_Q_3 : dffr port map ( Q=>outFilter_3_EXMPLR, QB=>OPEN, D
      =>nx695, CLK=>clk, R=>rst);
   ix696 : nand02 port map ( Y=>nx695, A0=>nx770, A1=>nx772);
   ix771 : nand02 port map ( Y=>nx770, A0=>outFilter_3_EXMPLR, A1=>nx1088);
   ix773 : nand02 port map ( Y=>nx772, A0=>filterBus(3), A1=>nx1084);
   regFilterMap_reg_Q_4 : dffr port map ( Q=>outFilter_4_EXMPLR, QB=>OPEN, D
      =>nx705, CLK=>clk, R=>rst);
   ix706 : nand02 port map ( Y=>nx705, A0=>nx777, A1=>nx779);
   ix778 : nand02 port map ( Y=>nx777, A0=>outFilter_4_EXMPLR, A1=>nx1088);
   ix780 : nand02 port map ( Y=>nx779, A0=>filterBus(4), A1=>nx1084);
   regFilterMap_reg_Q_5 : dffr port map ( Q=>outFilter_5_EXMPLR, QB=>OPEN, D
      =>nx715, CLK=>clk, R=>rst);
   ix716 : nand02 port map ( Y=>nx715, A0=>nx784, A1=>nx786);
   ix785 : nand02 port map ( Y=>nx784, A0=>outFilter_5_EXMPLR, A1=>nx1088);
   ix787 : nand02 port map ( Y=>nx786, A0=>filterBus(5), A1=>nx1084);
   regFilterMap_reg_Q_6 : dffr port map ( Q=>outFilter_6_EXMPLR, QB=>OPEN, D
      =>nx725, CLK=>clk, R=>rst);
   ix726 : nand02 port map ( Y=>nx725, A0=>nx791, A1=>nx793);
   ix792 : nand02 port map ( Y=>nx791, A0=>outFilter_6_EXMPLR, A1=>nx1088);
   ix794 : nand02 port map ( Y=>nx793, A0=>filterBus(6), A1=>nx1084);
   regFilterMap_reg_Q_7 : dffr port map ( Q=>outFilter_7_EXMPLR, QB=>OPEN, D
      =>nx735, CLK=>clk, R=>rst);
   ix736 : nand02 port map ( Y=>nx735, A0=>nx798, A1=>nx800);
   ix799 : nand02 port map ( Y=>nx798, A0=>outFilter_7_EXMPLR, A1=>nx1054);
   ix801 : nand02 port map ( Y=>nx800, A0=>filterBus(7), A1=>nx1086);
   regPage2Map_reg_Q_0 : dffr port map ( Q=>outputRegPage2_0_EXMPLR, QB=>
      nx811, D=>nx355, CLK=>clk, R=>rst);
   ix356 : oai21 port map ( Y=>nx355, A0=>nx805, A1=>nx1058, B0=>nx809);
   ix806 : mux21 port map ( Y=>nx805, A0=>windowBus(0), A1=>
      regPage1NextUnit(0), S0=>page2ReadBusOrPage1);
   ix808 : nor02_2x port map ( Y=>nx807, A0=>enableRegPage2, A1=>
      page2ReadBusOrPage1);
   ix810 : nand02 port map ( Y=>nx809, A0=>outputRegPage2_0_EXMPLR, A1=>
      nx1058);
   regPage2Map_reg_Q_1 : dffr port map ( Q=>outputRegPage2_1_EXMPLR, QB=>
      nx818, D=>nx375, CLK=>clk, R=>rst);
   ix376 : oai21 port map ( Y=>nx375, A0=>nx814, A1=>nx1058, B0=>nx816);
   ix815 : mux21 port map ( Y=>nx814, A0=>windowBus(1), A1=>
      regPage1NextUnit(1), S0=>page2ReadBusOrPage1);
   ix817 : nand02 port map ( Y=>nx816, A0=>outputRegPage2_1_EXMPLR, A1=>
      nx1058);
   regPage2Map_reg_Q_2 : dffr port map ( Q=>outputRegPage2_2_EXMPLR, QB=>
      nx825, D=>nx395, CLK=>clk, R=>rst);
   ix396 : oai21 port map ( Y=>nx395, A0=>nx821, A1=>nx1058, B0=>nx823);
   ix822 : mux21 port map ( Y=>nx821, A0=>windowBus(2), A1=>
      regPage1NextUnit(2), S0=>page2ReadBusOrPage1);
   ix824 : nand02 port map ( Y=>nx823, A0=>outputRegPage2_2_EXMPLR, A1=>
      nx1058);
   regPage2Map_reg_Q_3 : dffr port map ( Q=>outputRegPage2_3_EXMPLR, QB=>
      nx832, D=>nx415, CLK=>clk, R=>rst);
   ix416 : oai21 port map ( Y=>nx415, A0=>nx828, A1=>nx1058, B0=>nx830);
   ix829 : mux21 port map ( Y=>nx828, A0=>windowBus(3), A1=>
      regPage1NextUnit(3), S0=>page2ReadBusOrPage1);
   ix831 : nand02 port map ( Y=>nx830, A0=>outputRegPage2_3_EXMPLR, A1=>
      nx1060);
   regPage2Map_reg_Q_4 : dffr port map ( Q=>outputRegPage2_4_EXMPLR, QB=>
      nx839, D=>nx435, CLK=>clk, R=>rst);
   ix436 : oai21 port map ( Y=>nx435, A0=>nx835, A1=>nx1060, B0=>nx837);
   ix836 : mux21 port map ( Y=>nx835, A0=>windowBus(4), A1=>
      regPage1NextUnit(4), S0=>page2ReadBusOrPage1);
   ix838 : nand02 port map ( Y=>nx837, A0=>outputRegPage2_4_EXMPLR, A1=>
      nx1060);
   regPage2Map_reg_Q_5 : dffr port map ( Q=>outputRegPage2_5_EXMPLR, QB=>
      nx846, D=>nx455, CLK=>clk, R=>rst);
   ix456 : oai21 port map ( Y=>nx455, A0=>nx842, A1=>nx1060, B0=>nx844);
   ix843 : mux21 port map ( Y=>nx842, A0=>windowBus(5), A1=>
      regPage1NextUnit(5), S0=>page2ReadBusOrPage1);
   ix845 : nand02 port map ( Y=>nx844, A0=>outputRegPage2_5_EXMPLR, A1=>
      nx1060);
   regPage2Map_reg_Q_6 : dffr port map ( Q=>outputRegPage2_6_EXMPLR, QB=>
      nx853, D=>nx475, CLK=>clk, R=>rst);
   ix476 : oai21 port map ( Y=>nx475, A0=>nx849, A1=>nx1060, B0=>nx851);
   ix850 : mux21 port map ( Y=>nx849, A0=>windowBus(6), A1=>
      regPage1NextUnit(6), S0=>page2ReadBusOrPage1);
   ix852 : nand02 port map ( Y=>nx851, A0=>outputRegPage2_6_EXMPLR, A1=>
      nx1060);
   regPage2Map_reg_Q_7 : dffr port map ( Q=>outputRegPage2_7_EXMPLR, QB=>
      nx860, D=>nx495, CLK=>clk, R=>rst);
   ix496 : oai21 port map ( Y=>nx495, A0=>nx856, A1=>nx1062, B0=>nx858);
   ix857 : mux21 port map ( Y=>nx856, A0=>windowBus(7), A1=>
      regPage1NextUnit(7), S0=>page2ReadBusOrPage1);
   ix859 : nand02 port map ( Y=>nx858, A0=>outputRegPage2_7_EXMPLR, A1=>
      nx1062);
   regPage2Map_reg_Q_8 : dffr port map ( Q=>outputRegPage2_8_EXMPLR, QB=>
      nx867, D=>nx515, CLK=>clk, R=>rst);
   ix516 : oai21 port map ( Y=>nx515, A0=>nx863, A1=>nx1062, B0=>nx865);
   ix864 : mux21 port map ( Y=>nx863, A0=>windowBus(8), A1=>
      regPage1NextUnit(8), S0=>page2ReadBusOrPage1);
   ix866 : nand02 port map ( Y=>nx865, A0=>outputRegPage2_8_EXMPLR, A1=>
      nx1062);
   regPage2Map_reg_Q_9 : dffr port map ( Q=>outputRegPage2_9_EXMPLR, QB=>
      nx874, D=>nx535, CLK=>clk, R=>rst);
   ix536 : oai21 port map ( Y=>nx535, A0=>nx870, A1=>nx1062, B0=>nx872);
   ix871 : mux21 port map ( Y=>nx870, A0=>windowBus(9), A1=>
      regPage1NextUnit(9), S0=>page2ReadBusOrPage1);
   ix873 : nand02 port map ( Y=>nx872, A0=>outputRegPage2_9_EXMPLR, A1=>
      nx1062);
   regPage2Map_reg_Q_10 : dffr port map ( Q=>outputRegPage2_10_EXMPLR, QB=>
      nx881, D=>nx555, CLK=>clk, R=>rst);
   ix556 : oai21 port map ( Y=>nx555, A0=>nx877, A1=>nx1062, B0=>nx879);
   ix878 : mux21 port map ( Y=>nx877, A0=>windowBus(10), A1=>
      regPage1NextUnit(10), S0=>page2ReadBusOrPage1);
   ix880 : nand02 port map ( Y=>nx879, A0=>outputRegPage2_10_EXMPLR, A1=>
      nx1064);
   regPage2Map_reg_Q_11 : dffr port map ( Q=>outputRegPage2_11_EXMPLR, QB=>
      nx888, D=>nx575, CLK=>clk, R=>rst);
   ix576 : oai21 port map ( Y=>nx575, A0=>nx884, A1=>nx1064, B0=>nx886);
   ix885 : mux21 port map ( Y=>nx884, A0=>windowBus(11), A1=>
      regPage1NextUnit(11), S0=>page2ReadBusOrPage1);
   ix887 : nand02 port map ( Y=>nx886, A0=>outputRegPage2_11_EXMPLR, A1=>
      nx1064);
   regPage2Map_reg_Q_12 : dffr port map ( Q=>outputRegPage2_12_EXMPLR, QB=>
      nx895, D=>nx595, CLK=>clk, R=>rst);
   ix596 : oai21 port map ( Y=>nx595, A0=>nx891, A1=>nx1064, B0=>nx893);
   ix892 : mux21 port map ( Y=>nx891, A0=>windowBus(12), A1=>
      regPage1NextUnit(12), S0=>page2ReadBusOrPage1);
   ix894 : nand02 port map ( Y=>nx893, A0=>outputRegPage2_12_EXMPLR, A1=>
      nx1064);
   regPage2Map_reg_Q_13 : dffr port map ( Q=>outputRegPage2_13_EXMPLR, QB=>
      nx902, D=>nx615, CLK=>clk, R=>rst);
   ix616 : oai21 port map ( Y=>nx615, A0=>nx898, A1=>nx1064, B0=>nx900);
   ix899 : mux21 port map ( Y=>nx898, A0=>windowBus(13), A1=>
      regPage1NextUnit(13), S0=>page2ReadBusOrPage1);
   ix901 : nand02 port map ( Y=>nx900, A0=>outputRegPage2_13_EXMPLR, A1=>
      nx1064);
   regPage2Map_reg_Q_14 : dffr port map ( Q=>outputRegPage2_14_EXMPLR, QB=>
      nx909, D=>nx635, CLK=>clk, R=>rst);
   ix636 : oai21 port map ( Y=>nx635, A0=>nx905, A1=>nx1066, B0=>nx907);
   ix906 : mux21 port map ( Y=>nx905, A0=>windowBus(14), A1=>
      regPage1NextUnit(14), S0=>page2ReadBusOrPage1);
   ix908 : nand02 port map ( Y=>nx907, A0=>outputRegPage2_14_EXMPLR, A1=>
      nx1066);
   regPage2Map_reg_Q_15 : dffr port map ( Q=>outputRegPage2_15_EXMPLR, QB=>
      nx916, D=>nx655, CLK=>clk, R=>rst);
   ix656 : oai21 port map ( Y=>nx655, A0=>nx912, A1=>nx1066, B0=>nx914);
   ix913 : mux21 port map ( Y=>nx912, A0=>windowBus(15), A1=>
      regPage1NextUnit(15), S0=>page2ReadBusOrPage1);
   ix915 : nand02 port map ( Y=>nx914, A0=>outputRegPage2_15_EXMPLR, A1=>
      nx1066);
   regPage1Map_reg_Q_0 : dffr port map ( Q=>outputRegPage1_0_EXMPLR, QB=>
      nx925, D=>nx345, CLK=>clk, R=>rst);
   ix346 : oai21 port map ( Y=>nx345, A0=>nx919, A1=>nx1070, B0=>nx923);
   ix920 : mux21 port map ( Y=>nx919, A0=>windowBus(0), A1=>
      regPage2NextUnit(0), S0=>page1ReadBusOrPage2);
   ix922 : nor02_2x port map ( Y=>nx921, A0=>enableRegPage1, A1=>
      page1ReadBusOrPage2);
   ix924 : nand02 port map ( Y=>nx923, A0=>outputRegPage1_0_EXMPLR, A1=>
      nx1070);
   regPage1Map_reg_Q_1 : dffr port map ( Q=>outputRegPage1_1_EXMPLR, QB=>
      nx932, D=>nx365, CLK=>clk, R=>rst);
   ix366 : oai21 port map ( Y=>nx365, A0=>nx928, A1=>nx1070, B0=>nx930);
   ix929 : mux21 port map ( Y=>nx928, A0=>windowBus(1), A1=>
      regPage2NextUnit(1), S0=>page1ReadBusOrPage2);
   ix931 : nand02 port map ( Y=>nx930, A0=>outputRegPage1_1_EXMPLR, A1=>
      nx1070);
   regPage1Map_reg_Q_2 : dffr port map ( Q=>outputRegPage1_2_EXMPLR, QB=>
      nx939, D=>nx385, CLK=>clk, R=>rst);
   ix386 : oai21 port map ( Y=>nx385, A0=>nx935, A1=>nx1070, B0=>nx937);
   ix936 : mux21 port map ( Y=>nx935, A0=>windowBus(2), A1=>
      regPage2NextUnit(2), S0=>page1ReadBusOrPage2);
   ix938 : nand02 port map ( Y=>nx937, A0=>outputRegPage1_2_EXMPLR, A1=>
      nx1070);
   regPage1Map_reg_Q_3 : dffr port map ( Q=>outputRegPage1_3_EXMPLR, QB=>
      nx946, D=>nx405, CLK=>clk, R=>rst);
   ix406 : oai21 port map ( Y=>nx405, A0=>nx942, A1=>nx1070, B0=>nx944);
   ix943 : mux21 port map ( Y=>nx942, A0=>windowBus(3), A1=>
      regPage2NextUnit(3), S0=>page1ReadBusOrPage2);
   ix945 : nand02 port map ( Y=>nx944, A0=>outputRegPage1_3_EXMPLR, A1=>
      nx1072);
   regPage1Map_reg_Q_4 : dffr port map ( Q=>outputRegPage1_4_EXMPLR, QB=>
      nx953, D=>nx425, CLK=>clk, R=>rst);
   ix426 : oai21 port map ( Y=>nx425, A0=>nx949, A1=>nx1072, B0=>nx951);
   ix950 : mux21 port map ( Y=>nx949, A0=>windowBus(4), A1=>
      regPage2NextUnit(4), S0=>page1ReadBusOrPage2);
   ix952 : nand02 port map ( Y=>nx951, A0=>outputRegPage1_4_EXMPLR, A1=>
      nx1072);
   regPage1Map_reg_Q_5 : dffr port map ( Q=>outputRegPage1_5_EXMPLR, QB=>
      nx960, D=>nx445, CLK=>clk, R=>rst);
   ix446 : oai21 port map ( Y=>nx445, A0=>nx956, A1=>nx1072, B0=>nx958);
   ix957 : mux21 port map ( Y=>nx956, A0=>windowBus(5), A1=>
      regPage2NextUnit(5), S0=>page1ReadBusOrPage2);
   ix959 : nand02 port map ( Y=>nx958, A0=>outputRegPage1_5_EXMPLR, A1=>
      nx1072);
   regPage1Map_reg_Q_6 : dffr port map ( Q=>outputRegPage1_6_EXMPLR, QB=>
      nx967, D=>nx465, CLK=>clk, R=>rst);
   ix466 : oai21 port map ( Y=>nx465, A0=>nx963, A1=>nx1072, B0=>nx965);
   ix964 : mux21 port map ( Y=>nx963, A0=>windowBus(6), A1=>
      regPage2NextUnit(6), S0=>page1ReadBusOrPage2);
   ix966 : nand02 port map ( Y=>nx965, A0=>outputRegPage1_6_EXMPLR, A1=>
      nx1072);
   regPage1Map_reg_Q_7 : dffr port map ( Q=>outputRegPage1_7_EXMPLR, QB=>
      nx974, D=>nx485, CLK=>clk, R=>rst);
   ix486 : oai21 port map ( Y=>nx485, A0=>nx970, A1=>nx1074, B0=>nx972);
   ix971 : mux21 port map ( Y=>nx970, A0=>windowBus(7), A1=>
      regPage2NextUnit(7), S0=>page1ReadBusOrPage2);
   ix973 : nand02 port map ( Y=>nx972, A0=>outputRegPage1_7_EXMPLR, A1=>
      nx1074);
   regPage1Map_reg_Q_8 : dffr port map ( Q=>outputRegPage1_8_EXMPLR, QB=>
      nx981, D=>nx505, CLK=>clk, R=>rst);
   ix506 : oai21 port map ( Y=>nx505, A0=>nx977, A1=>nx1074, B0=>nx979);
   ix978 : mux21 port map ( Y=>nx977, A0=>windowBus(8), A1=>
      regPage2NextUnit(8), S0=>page1ReadBusOrPage2);
   ix980 : nand02 port map ( Y=>nx979, A0=>outputRegPage1_8_EXMPLR, A1=>
      nx1074);
   regPage1Map_reg_Q_9 : dffr port map ( Q=>outputRegPage1_9_EXMPLR, QB=>
      nx988, D=>nx525, CLK=>clk, R=>rst);
   ix526 : oai21 port map ( Y=>nx525, A0=>nx984, A1=>nx1074, B0=>nx986);
   ix985 : mux21 port map ( Y=>nx984, A0=>windowBus(9), A1=>
      regPage2NextUnit(9), S0=>page1ReadBusOrPage2);
   ix987 : nand02 port map ( Y=>nx986, A0=>outputRegPage1_9_EXMPLR, A1=>
      nx1074);
   regPage1Map_reg_Q_10 : dffr port map ( Q=>outputRegPage1_10_EXMPLR, QB=>
      nx995, D=>nx545, CLK=>clk, R=>rst);
   ix546 : oai21 port map ( Y=>nx545, A0=>nx991, A1=>nx1074, B0=>nx993);
   ix992 : mux21 port map ( Y=>nx991, A0=>windowBus(10), A1=>
      regPage2NextUnit(10), S0=>page1ReadBusOrPage2);
   ix994 : nand02 port map ( Y=>nx993, A0=>outputRegPage1_10_EXMPLR, A1=>
      nx1076);
   regPage1Map_reg_Q_11 : dffr port map ( Q=>outputRegPage1_11_EXMPLR, QB=>
      nx1002, D=>nx565, CLK=>clk, R=>rst);
   ix566 : oai21 port map ( Y=>nx565, A0=>nx998, A1=>nx1076, B0=>nx1000);
   ix999 : mux21 port map ( Y=>nx998, A0=>windowBus(11), A1=>
      regPage2NextUnit(11), S0=>page1ReadBusOrPage2);
   ix1001 : nand02 port map ( Y=>nx1000, A0=>outputRegPage1_11_EXMPLR, A1=>
      nx1076);
   regPage1Map_reg_Q_12 : dffr port map ( Q=>outputRegPage1_12_EXMPLR, QB=>
      nx1009, D=>nx585, CLK=>clk, R=>rst);
   ix586 : oai21 port map ( Y=>nx585, A0=>nx1005, A1=>nx1076, B0=>nx1007);
   ix1006 : mux21 port map ( Y=>nx1005, A0=>windowBus(12), A1=>
      regPage2NextUnit(12), S0=>page1ReadBusOrPage2);
   ix1008 : nand02 port map ( Y=>nx1007, A0=>outputRegPage1_12_EXMPLR, A1=>
      nx1076);
   regPage1Map_reg_Q_13 : dffr port map ( Q=>outputRegPage1_13_EXMPLR, QB=>
      nx1016, D=>nx605, CLK=>clk, R=>rst);
   ix606 : oai21 port map ( Y=>nx605, A0=>nx1012, A1=>nx1076, B0=>nx1014);
   ix1013 : mux21 port map ( Y=>nx1012, A0=>windowBus(13), A1=>
      regPage2NextUnit(13), S0=>page1ReadBusOrPage2);
   ix1015 : nand02 port map ( Y=>nx1014, A0=>outputRegPage1_13_EXMPLR, A1=>
      nx1076);
   regPage1Map_reg_Q_14 : dffr port map ( Q=>outputRegPage1_14_EXMPLR, QB=>
      nx1023, D=>nx625, CLK=>clk, R=>rst);
   ix626 : oai21 port map ( Y=>nx625, A0=>nx1019, A1=>nx1078, B0=>nx1021);
   ix1020 : mux21 port map ( Y=>nx1019, A0=>windowBus(14), A1=>
      regPage2NextUnit(14), S0=>page1ReadBusOrPage2);
   ix1022 : nand02 port map ( Y=>nx1021, A0=>outputRegPage1_14_EXMPLR, A1=>
      nx1078);
   regPage1Map_reg_Q_15 : dffr port map ( Q=>outputRegPage1_15_EXMPLR, QB=>
      nx1030, D=>nx645, CLK=>clk, R=>rst);
   ix646 : oai21 port map ( Y=>nx645, A0=>nx1026, A1=>nx1078, B0=>nx1028);
   ix1027 : mux21 port map ( Y=>nx1026, A0=>windowBus(15), A1=>
      regPage2NextUnit(15), S0=>page1ReadBusOrPage2);
   ix1029 : nand02 port map ( Y=>nx1028, A0=>outputRegPage1_15_EXMPLR, A1=>
      nx1078);
   ix33 : mux21 port map ( Y=>outRegPage(0), A0=>nx925, A1=>nx811, S0=>
      pageTurn);
   ix61 : mux21 port map ( Y=>outRegPage(1), A0=>nx932, A1=>nx818, S0=>
      pageTurn);
   ix89 : mux21 port map ( Y=>outRegPage(2), A0=>nx939, A1=>nx825, S0=>
      pageTurn);
   ix117 : mux21 port map ( Y=>outRegPage(3), A0=>nx946, A1=>nx832, S0=>
      pageTurn);
   ix145 : mux21 port map ( Y=>outRegPage(4), A0=>nx953, A1=>nx839, S0=>
      pageTurn);
   ix173 : mux21 port map ( Y=>outRegPage(5), A0=>nx960, A1=>nx846, S0=>
      pageTurn);
   ix201 : mux21 port map ( Y=>outRegPage(6), A0=>nx967, A1=>nx853, S0=>
      pageTurn);
   ix229 : mux21 port map ( Y=>outRegPage(7), A0=>nx974, A1=>nx860, S0=>
      pageTurn);
   ix257 : mux21 port map ( Y=>outRegPage(8), A0=>nx981, A1=>nx867, S0=>
      pageTurn);
   ix285 : mux21 port map ( Y=>outRegPage(9), A0=>nx988, A1=>nx874, S0=>
      pageTurn);
   ix313 : mux21 port map ( Y=>outRegPage(10), A0=>nx995, A1=>nx881, S0=>
      pageTurn);
   ix341 : mux21 port map ( Y=>outRegPage(11), A0=>nx1002, A1=>nx888, S0=>
      pageTurn);
   ix369 : mux21 port map ( Y=>outRegPage(12), A0=>nx1009, A1=>nx895, S0=>
      pageTurn);
   ix397 : mux21 port map ( Y=>outRegPage(13), A0=>nx1016, A1=>nx902, S0=>
      pageTurn);
   ix425 : mux21 port map ( Y=>outRegPage(14), A0=>nx1023, A1=>nx909, S0=>
      pageTurn);
   ix453 : mux21 port map ( Y=>outRegPage(15), A0=>nx1030, A1=>nx916, S0=>
      pageTurn);
   ix1053 : inv01 port map ( Y=>nx1054, A=>nx1086);
   ix1055 : inv01 port map ( Y=>nx1056, A=>nx807);
   ix1057 : inv02 port map ( Y=>nx1058, A=>nx1056);
   ix1059 : inv02 port map ( Y=>nx1060, A=>nx1056);
   ix1061 : inv02 port map ( Y=>nx1062, A=>nx1056);
   ix1063 : inv02 port map ( Y=>nx1064, A=>nx1056);
   ix1065 : inv02 port map ( Y=>nx1066, A=>nx1056);
   ix1067 : inv01 port map ( Y=>nx1068, A=>nx921);
   ix1069 : inv02 port map ( Y=>nx1070, A=>nx1068);
   ix1071 : inv02 port map ( Y=>nx1072, A=>nx1068);
   ix1073 : inv02 port map ( Y=>nx1074, A=>nx1068);
   ix1075 : inv02 port map ( Y=>nx1076, A=>nx1068);
   ix1077 : inv02 port map ( Y=>nx1078, A=>nx1068);
   ix1083 : inv02 port map ( Y=>nx1084, A=>nx1090);
   ix1085 : inv02 port map ( Y=>nx1086, A=>nx1090);
   ix1087 : inv02 port map ( Y=>nx1088, A=>enableRegFilter);
   ix1089 : inv02 port map ( Y=>nx1090, A=>enableRegFilter);
end RegUnitArch_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RegUnit_8_16_unfolded3 is
   port (
      filterBus : IN std_logic_vector (7 DOWNTO 0) ;
      windowBus : IN std_logic_vector (15 DOWNTO 0) ;
      regPage1NextUnit : IN std_logic_vector (15 DOWNTO 0) ;
      regPage2NextUnit : IN std_logic_vector (15 DOWNTO 0) ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      enableRegPage1 : IN std_logic ;
      enableRegPage2 : IN std_logic ;
      enableRegFilter : IN std_logic ;
      page1ReadBusOrPage2 : IN std_logic ;
      page2ReadBusOrPage1 : IN std_logic ;
      pageTurn : IN std_logic ;
      outRegPage : OUT std_logic_vector (15 DOWNTO 0) ;
      outputRegPage1 : OUT std_logic_vector (15 DOWNTO 0) ;
      outputRegPage2 : OUT std_logic_vector (15 DOWNTO 0) ;
      outFilter : OUT std_logic_vector (7 DOWNTO 0)) ;
end RegUnit_8_16_unfolded3 ;

architecture RegUnitArch_unfold_2792_2_xmplrcopy of RegUnit_8_16_unfolded3
    is
   signal outputRegPage1_15_EXMPLR, outputRegPage1_14_EXMPLR, 
      outputRegPage1_13_EXMPLR, outputRegPage1_12_EXMPLR, 
      outputRegPage1_11_EXMPLR, outputRegPage1_10_EXMPLR, 
      outputRegPage1_9_EXMPLR, outputRegPage1_8_EXMPLR, 
      outputRegPage1_7_EXMPLR, outputRegPage1_6_EXMPLR, 
      outputRegPage1_5_EXMPLR, outputRegPage1_4_EXMPLR, 
      outputRegPage1_3_EXMPLR, outputRegPage1_2_EXMPLR, 
      outputRegPage1_1_EXMPLR, outputRegPage1_0_EXMPLR, 
      outputRegPage2_15_EXMPLR, outputRegPage2_14_EXMPLR, 
      outputRegPage2_13_EXMPLR, outputRegPage2_12_EXMPLR, 
      outputRegPage2_11_EXMPLR, outputRegPage2_10_EXMPLR, 
      outputRegPage2_9_EXMPLR, outputRegPage2_8_EXMPLR, 
      outputRegPage2_7_EXMPLR, outputRegPage2_6_EXMPLR, 
      outputRegPage2_5_EXMPLR, outputRegPage2_4_EXMPLR, 
      outputRegPage2_3_EXMPLR, outputRegPage2_2_EXMPLR, 
      outputRegPage2_1_EXMPLR, outputRegPage2_0_EXMPLR, outFilter_7_EXMPLR, 
      outFilter_6_EXMPLR, outFilter_5_EXMPLR, outFilter_4_EXMPLR, 
      outFilter_3_EXMPLR, outFilter_2_EXMPLR, outFilter_1_EXMPLR, 
      outFilter_0_EXMPLR, nx133, nx143, nx153, nx163, nx173, nx183, nx193, 
      nx203, nx213, nx223, nx233, nx243, nx253, nx263, nx273, nx283, nx293, 
      nx303, nx313, nx323, nx333, nx343, nx353, nx363, nx373, nx383, nx393, 
      nx403, nx413, nx423, nx433, nx443, nx453, nx463, nx473, nx483, nx493, 
      nx503, nx513, nx523, nx535, nx539, nx544, nx546, nx551, nx553, nx558, 
      nx560, nx565, nx567, nx572, nx574, nx579, nx581, nx586, nx588, nx593, 
      nx595, nx597, nx599, nx601, nx604, nx606, nx608, nx611, nx613, nx615, 
      nx618, nx620, nx622, nx625, nx627, nx629, nx632, nx634, nx636, nx639, 
      nx641, nx643, nx646, nx648, nx650, nx653, nx655, nx657, nx660, nx662, 
      nx664, nx667, nx669, nx671, nx674, nx676, nx678, nx681, nx683, nx685, 
      nx688, nx690, nx692, nx695, nx697, nx699, nx702, nx704, nx706, nx709, 
      nx711, nx713, nx715, nx717, nx720, nx722, nx724, nx727, nx729, nx731, 
      nx734, nx736, nx738, nx741, nx743, nx745, nx748, nx750, nx752, nx755, 
      nx757, nx759, nx762, nx764, nx766, nx769, nx771, nx773, nx776, nx778, 
      nx780, nx783, nx785, nx787, nx790, nx792, nx794, nx797, nx799, nx801, 
      nx804, nx806, nx808, nx811, nx813, nx815, nx818, nx820, nx822, nx846, 
      nx848, nx850, nx852, nx854, nx856, nx858, nx860, nx862, nx868, nx870, 
      nx872, nx874, nx876, nx878, nx880, nx882, nx884, nx886, nx888, nx890: 
   std_logic ;

begin
   outputRegPage1(15) <= outputRegPage1_15_EXMPLR ;
   outputRegPage1(14) <= outputRegPage1_14_EXMPLR ;
   outputRegPage1(13) <= outputRegPage1_13_EXMPLR ;
   outputRegPage1(12) <= outputRegPage1_12_EXMPLR ;
   outputRegPage1(11) <= outputRegPage1_11_EXMPLR ;
   outputRegPage1(10) <= outputRegPage1_10_EXMPLR ;
   outputRegPage1(9) <= outputRegPage1_9_EXMPLR ;
   outputRegPage1(8) <= outputRegPage1_8_EXMPLR ;
   outputRegPage1(7) <= outputRegPage1_7_EXMPLR ;
   outputRegPage1(6) <= outputRegPage1_6_EXMPLR ;
   outputRegPage1(5) <= outputRegPage1_5_EXMPLR ;
   outputRegPage1(4) <= outputRegPage1_4_EXMPLR ;
   outputRegPage1(3) <= outputRegPage1_3_EXMPLR ;
   outputRegPage1(2) <= outputRegPage1_2_EXMPLR ;
   outputRegPage1(1) <= outputRegPage1_1_EXMPLR ;
   outputRegPage1(0) <= outputRegPage1_0_EXMPLR ;
   outputRegPage2(15) <= outputRegPage2_15_EXMPLR ;
   outputRegPage2(14) <= outputRegPage2_14_EXMPLR ;
   outputRegPage2(13) <= outputRegPage2_13_EXMPLR ;
   outputRegPage2(12) <= outputRegPage2_12_EXMPLR ;
   outputRegPage2(11) <= outputRegPage2_11_EXMPLR ;
   outputRegPage2(10) <= outputRegPage2_10_EXMPLR ;
   outputRegPage2(9) <= outputRegPage2_9_EXMPLR ;
   outputRegPage2(8) <= outputRegPage2_8_EXMPLR ;
   outputRegPage2(7) <= outputRegPage2_7_EXMPLR ;
   outputRegPage2(6) <= outputRegPage2_6_EXMPLR ;
   outputRegPage2(5) <= outputRegPage2_5_EXMPLR ;
   outputRegPage2(4) <= outputRegPage2_4_EXMPLR ;
   outputRegPage2(3) <= outputRegPage2_3_EXMPLR ;
   outputRegPage2(2) <= outputRegPage2_2_EXMPLR ;
   outputRegPage2(1) <= outputRegPage2_1_EXMPLR ;
   outputRegPage2(0) <= outputRegPage2_0_EXMPLR ;
   outFilter(7) <= outFilter_7_EXMPLR ;
   outFilter(6) <= outFilter_6_EXMPLR ;
   outFilter(5) <= outFilter_5_EXMPLR ;
   outFilter(4) <= outFilter_4_EXMPLR ;
   outFilter(3) <= outFilter_3_EXMPLR ;
   outFilter(2) <= outFilter_2_EXMPLR ;
   outFilter(1) <= outFilter_1_EXMPLR ;
   outFilter(0) <= outFilter_0_EXMPLR ;
   regFilterMap_reg_Q_0 : dffr port map ( Q=>outFilter_0_EXMPLR, QB=>OPEN, D
      =>nx453, CLK=>clk, R=>rst);
   ix454 : nand02 port map ( Y=>nx453, A0=>nx535, A1=>nx539);
   ix536 : nand02 port map ( Y=>nx535, A0=>outFilter_0_EXMPLR, A1=>nx888);
   ix540 : nand02 port map ( Y=>nx539, A0=>filterBus(0), A1=>nx884);
   regFilterMap_reg_Q_1 : dffr port map ( Q=>outFilter_1_EXMPLR, QB=>OPEN, D
      =>nx463, CLK=>clk, R=>rst);
   ix464 : nand02 port map ( Y=>nx463, A0=>nx544, A1=>nx546);
   ix545 : nand02 port map ( Y=>nx544, A0=>outFilter_1_EXMPLR, A1=>nx888);
   ix547 : nand02 port map ( Y=>nx546, A0=>filterBus(1), A1=>nx884);
   regFilterMap_reg_Q_2 : dffr port map ( Q=>outFilter_2_EXMPLR, QB=>OPEN, D
      =>nx473, CLK=>clk, R=>rst);
   ix474 : nand02 port map ( Y=>nx473, A0=>nx551, A1=>nx553);
   ix552 : nand02 port map ( Y=>nx551, A0=>outFilter_2_EXMPLR, A1=>nx888);
   ix554 : nand02 port map ( Y=>nx553, A0=>filterBus(2), A1=>nx884);
   regFilterMap_reg_Q_3 : dffr port map ( Q=>outFilter_3_EXMPLR, QB=>OPEN, D
      =>nx483, CLK=>clk, R=>rst);
   ix484 : nand02 port map ( Y=>nx483, A0=>nx558, A1=>nx560);
   ix559 : nand02 port map ( Y=>nx558, A0=>outFilter_3_EXMPLR, A1=>nx888);
   ix561 : nand02 port map ( Y=>nx560, A0=>filterBus(3), A1=>nx884);
   regFilterMap_reg_Q_4 : dffr port map ( Q=>outFilter_4_EXMPLR, QB=>OPEN, D
      =>nx493, CLK=>clk, R=>rst);
   ix494 : nand02 port map ( Y=>nx493, A0=>nx565, A1=>nx567);
   ix566 : nand02 port map ( Y=>nx565, A0=>outFilter_4_EXMPLR, A1=>nx888);
   ix568 : nand02 port map ( Y=>nx567, A0=>filterBus(4), A1=>nx884);
   regFilterMap_reg_Q_5 : dffr port map ( Q=>outFilter_5_EXMPLR, QB=>OPEN, D
      =>nx503, CLK=>clk, R=>rst);
   ix504 : nand02 port map ( Y=>nx503, A0=>nx572, A1=>nx574);
   ix573 : nand02 port map ( Y=>nx572, A0=>outFilter_5_EXMPLR, A1=>nx888);
   ix575 : nand02 port map ( Y=>nx574, A0=>filterBus(5), A1=>nx884);
   regFilterMap_reg_Q_6 : dffr port map ( Q=>outFilter_6_EXMPLR, QB=>OPEN, D
      =>nx513, CLK=>clk, R=>rst);
   ix514 : nand02 port map ( Y=>nx513, A0=>nx579, A1=>nx581);
   ix580 : nand02 port map ( Y=>nx579, A0=>outFilter_6_EXMPLR, A1=>nx888);
   ix582 : nand02 port map ( Y=>nx581, A0=>filterBus(6), A1=>nx884);
   regFilterMap_reg_Q_7 : dffr port map ( Q=>outFilter_7_EXMPLR, QB=>OPEN, D
      =>nx523, CLK=>clk, R=>rst);
   ix524 : nand02 port map ( Y=>nx523, A0=>nx586, A1=>nx588);
   ix587 : nand02 port map ( Y=>nx586, A0=>outFilter_7_EXMPLR, A1=>nx846);
   ix589 : nand02 port map ( Y=>nx588, A0=>filterBus(7), A1=>nx886);
   regPage2Map_reg_Q_0 : dffr port map ( Q=>outputRegPage2_0_EXMPLR, QB=>
      nx601, D=>nx143, CLK=>clk, R=>rst);
   ix144 : nand02 port map ( Y=>nx143, A0=>nx593, A1=>nx597);
   ix594 : nand02 port map ( Y=>nx593, A0=>outputRegPage2_0_EXMPLR, A1=>
      nx848);
   ix596 : nor02_2x port map ( Y=>nx595, A0=>nx878, A1=>page2ReadBusOrPage1
   );
   ix598 : nand03 port map ( Y=>nx597, A0=>windowBus(0), A1=>nx852, A2=>
      nx878);
   ix600 : inv01 port map ( Y=>nx599, A=>page2ReadBusOrPage1);
   regPage2Map_reg_Q_1 : dffr port map ( Q=>outputRegPage2_1_EXMPLR, QB=>
      nx608, D=>nx163, CLK=>clk, R=>rst);
   ix164 : nand02 port map ( Y=>nx163, A0=>nx604, A1=>nx606);
   ix605 : nand02 port map ( Y=>nx604, A0=>outputRegPage2_1_EXMPLR, A1=>
      nx848);
   ix607 : nand03 port map ( Y=>nx606, A0=>windowBus(1), A1=>nx852, A2=>
      nx878);
   regPage2Map_reg_Q_2 : dffr port map ( Q=>outputRegPage2_2_EXMPLR, QB=>
      nx615, D=>nx183, CLK=>clk, R=>rst);
   ix184 : nand02 port map ( Y=>nx183, A0=>nx611, A1=>nx613);
   ix612 : nand02 port map ( Y=>nx611, A0=>outputRegPage2_2_EXMPLR, A1=>
      nx848);
   ix614 : nand03 port map ( Y=>nx613, A0=>windowBus(2), A1=>nx852, A2=>
      nx878);
   regPage2Map_reg_Q_3 : dffr port map ( Q=>outputRegPage2_3_EXMPLR, QB=>
      nx622, D=>nx203, CLK=>clk, R=>rst);
   ix204 : nand02 port map ( Y=>nx203, A0=>nx618, A1=>nx620);
   ix619 : nand02 port map ( Y=>nx618, A0=>outputRegPage2_3_EXMPLR, A1=>
      nx848);
   ix621 : nand03 port map ( Y=>nx620, A0=>windowBus(3), A1=>nx852, A2=>
      nx878);
   regPage2Map_reg_Q_4 : dffr port map ( Q=>outputRegPage2_4_EXMPLR, QB=>
      nx629, D=>nx223, CLK=>clk, R=>rst);
   ix224 : nand02 port map ( Y=>nx223, A0=>nx625, A1=>nx627);
   ix626 : nand02 port map ( Y=>nx625, A0=>outputRegPage2_4_EXMPLR, A1=>
      nx848);
   ix628 : nand03 port map ( Y=>nx627, A0=>windowBus(4), A1=>nx852, A2=>
      nx878);
   regPage2Map_reg_Q_5 : dffr port map ( Q=>outputRegPage2_5_EXMPLR, QB=>
      nx636, D=>nx243, CLK=>clk, R=>rst);
   ix244 : nand02 port map ( Y=>nx243, A0=>nx632, A1=>nx634);
   ix633 : nand02 port map ( Y=>nx632, A0=>outputRegPage2_5_EXMPLR, A1=>
      nx848);
   ix635 : nand03 port map ( Y=>nx634, A0=>windowBus(5), A1=>nx852, A2=>
      nx878);
   regPage2Map_reg_Q_6 : dffr port map ( Q=>outputRegPage2_6_EXMPLR, QB=>
      nx643, D=>nx263, CLK=>clk, R=>rst);
   ix264 : nand02 port map ( Y=>nx263, A0=>nx639, A1=>nx641);
   ix640 : nand02 port map ( Y=>nx639, A0=>outputRegPage2_6_EXMPLR, A1=>
      nx848);
   ix642 : nand03 port map ( Y=>nx641, A0=>windowBus(6), A1=>nx854, A2=>
      nx880);
   regPage2Map_reg_Q_7 : dffr port map ( Q=>outputRegPage2_7_EXMPLR, QB=>
      nx650, D=>nx283, CLK=>clk, R=>rst);
   ix284 : nand02 port map ( Y=>nx283, A0=>nx646, A1=>nx648);
   ix647 : nand02 port map ( Y=>nx646, A0=>outputRegPage2_7_EXMPLR, A1=>
      nx850);
   ix649 : nand03 port map ( Y=>nx648, A0=>windowBus(7), A1=>nx854, A2=>
      nx880);
   regPage2Map_reg_Q_8 : dffr port map ( Q=>outputRegPage2_8_EXMPLR, QB=>
      nx657, D=>nx303, CLK=>clk, R=>rst);
   ix304 : nand02 port map ( Y=>nx303, A0=>nx653, A1=>nx655);
   ix654 : nand02 port map ( Y=>nx653, A0=>outputRegPage2_8_EXMPLR, A1=>
      nx850);
   ix656 : nand03 port map ( Y=>nx655, A0=>windowBus(8), A1=>nx854, A2=>
      nx880);
   regPage2Map_reg_Q_9 : dffr port map ( Q=>outputRegPage2_9_EXMPLR, QB=>
      nx664, D=>nx323, CLK=>clk, R=>rst);
   ix324 : nand02 port map ( Y=>nx323, A0=>nx660, A1=>nx662);
   ix661 : nand02 port map ( Y=>nx660, A0=>outputRegPage2_9_EXMPLR, A1=>
      nx850);
   ix663 : nand03 port map ( Y=>nx662, A0=>windowBus(9), A1=>nx854, A2=>
      nx880);
   regPage2Map_reg_Q_10 : dffr port map ( Q=>outputRegPage2_10_EXMPLR, QB=>
      nx671, D=>nx343, CLK=>clk, R=>rst);
   ix344 : nand02 port map ( Y=>nx343, A0=>nx667, A1=>nx669);
   ix668 : nand02 port map ( Y=>nx667, A0=>outputRegPage2_10_EXMPLR, A1=>
      nx850);
   ix670 : nand03 port map ( Y=>nx669, A0=>windowBus(10), A1=>nx854, A2=>
      nx880);
   regPage2Map_reg_Q_11 : dffr port map ( Q=>outputRegPage2_11_EXMPLR, QB=>
      nx678, D=>nx363, CLK=>clk, R=>rst);
   ix364 : nand02 port map ( Y=>nx363, A0=>nx674, A1=>nx676);
   ix675 : nand02 port map ( Y=>nx674, A0=>outputRegPage2_11_EXMPLR, A1=>
      nx850);
   ix677 : nand03 port map ( Y=>nx676, A0=>windowBus(11), A1=>nx854, A2=>
      nx880);
   regPage2Map_reg_Q_12 : dffr port map ( Q=>outputRegPage2_12_EXMPLR, QB=>
      nx685, D=>nx383, CLK=>clk, R=>rst);
   ix384 : nand02 port map ( Y=>nx383, A0=>nx681, A1=>nx683);
   ix682 : nand02 port map ( Y=>nx681, A0=>outputRegPage2_12_EXMPLR, A1=>
      nx850);
   ix684 : nand03 port map ( Y=>nx683, A0=>windowBus(12), A1=>nx599, A2=>
      nx880);
   regPage2Map_reg_Q_13 : dffr port map ( Q=>outputRegPage2_13_EXMPLR, QB=>
      nx692, D=>nx403, CLK=>clk, R=>rst);
   ix404 : nand02 port map ( Y=>nx403, A0=>nx688, A1=>nx690);
   ix689 : nand02 port map ( Y=>nx688, A0=>outputRegPage2_13_EXMPLR, A1=>
      nx850);
   ix691 : nand03 port map ( Y=>nx690, A0=>windowBus(13), A1=>nx599, A2=>
      nx882);
   regPage2Map_reg_Q_14 : dffr port map ( Q=>outputRegPage2_14_EXMPLR, QB=>
      nx699, D=>nx423, CLK=>clk, R=>rst);
   ix424 : nand02 port map ( Y=>nx423, A0=>nx695, A1=>nx697);
   ix696 : nand02 port map ( Y=>nx695, A0=>outputRegPage2_14_EXMPLR, A1=>
      nx595);
   ix698 : nand03 port map ( Y=>nx697, A0=>windowBus(14), A1=>nx599, A2=>
      nx882);
   regPage2Map_reg_Q_15 : dffr port map ( Q=>outputRegPage2_15_EXMPLR, QB=>
      nx706, D=>nx443, CLK=>clk, R=>rst);
   ix444 : nand02 port map ( Y=>nx443, A0=>nx702, A1=>nx704);
   ix703 : nand02 port map ( Y=>nx702, A0=>outputRegPage2_15_EXMPLR, A1=>
      nx595);
   ix705 : nand03 port map ( Y=>nx704, A0=>windowBus(15), A1=>nx599, A2=>
      nx882);
   regPage1Map_reg_Q_0 : dffr port map ( Q=>outputRegPage1_0_EXMPLR, QB=>
      nx717, D=>nx133, CLK=>clk, R=>rst);
   ix134 : nand02 port map ( Y=>nx133, A0=>nx709, A1=>nx713);
   ix710 : nand02 port map ( Y=>nx709, A0=>outputRegPage1_0_EXMPLR, A1=>
      nx856);
   ix712 : nor02_2x port map ( Y=>nx711, A0=>nx870, A1=>page1ReadBusOrPage2
   );
   ix714 : nand03 port map ( Y=>nx713, A0=>windowBus(0), A1=>nx860, A2=>
      nx870);
   ix716 : inv01 port map ( Y=>nx715, A=>page1ReadBusOrPage2);
   regPage1Map_reg_Q_1 : dffr port map ( Q=>outputRegPage1_1_EXMPLR, QB=>
      nx724, D=>nx153, CLK=>clk, R=>rst);
   ix154 : nand02 port map ( Y=>nx153, A0=>nx720, A1=>nx722);
   ix721 : nand02 port map ( Y=>nx720, A0=>outputRegPage1_1_EXMPLR, A1=>
      nx856);
   ix723 : nand03 port map ( Y=>nx722, A0=>windowBus(1), A1=>nx860, A2=>
      nx870);
   regPage1Map_reg_Q_2 : dffr port map ( Q=>outputRegPage1_2_EXMPLR, QB=>
      nx731, D=>nx173, CLK=>clk, R=>rst);
   ix174 : nand02 port map ( Y=>nx173, A0=>nx727, A1=>nx729);
   ix728 : nand02 port map ( Y=>nx727, A0=>outputRegPage1_2_EXMPLR, A1=>
      nx856);
   ix730 : nand03 port map ( Y=>nx729, A0=>windowBus(2), A1=>nx860, A2=>
      nx870);
   regPage1Map_reg_Q_3 : dffr port map ( Q=>outputRegPage1_3_EXMPLR, QB=>
      nx738, D=>nx193, CLK=>clk, R=>rst);
   ix194 : nand02 port map ( Y=>nx193, A0=>nx734, A1=>nx736);
   ix735 : nand02 port map ( Y=>nx734, A0=>outputRegPage1_3_EXMPLR, A1=>
      nx856);
   ix737 : nand03 port map ( Y=>nx736, A0=>windowBus(3), A1=>nx860, A2=>
      nx870);
   regPage1Map_reg_Q_4 : dffr port map ( Q=>outputRegPage1_4_EXMPLR, QB=>
      nx745, D=>nx213, CLK=>clk, R=>rst);
   ix214 : nand02 port map ( Y=>nx213, A0=>nx741, A1=>nx743);
   ix742 : nand02 port map ( Y=>nx741, A0=>outputRegPage1_4_EXMPLR, A1=>
      nx856);
   ix744 : nand03 port map ( Y=>nx743, A0=>windowBus(4), A1=>nx860, A2=>
      nx870);
   regPage1Map_reg_Q_5 : dffr port map ( Q=>outputRegPage1_5_EXMPLR, QB=>
      nx752, D=>nx233, CLK=>clk, R=>rst);
   ix234 : nand02 port map ( Y=>nx233, A0=>nx748, A1=>nx750);
   ix749 : nand02 port map ( Y=>nx748, A0=>outputRegPage1_5_EXMPLR, A1=>
      nx856);
   ix751 : nand03 port map ( Y=>nx750, A0=>windowBus(5), A1=>nx860, A2=>
      nx870);
   regPage1Map_reg_Q_6 : dffr port map ( Q=>outputRegPage1_6_EXMPLR, QB=>
      nx759, D=>nx253, CLK=>clk, R=>rst);
   ix254 : nand02 port map ( Y=>nx253, A0=>nx755, A1=>nx757);
   ix756 : nand02 port map ( Y=>nx755, A0=>outputRegPage1_6_EXMPLR, A1=>
      nx856);
   ix758 : nand03 port map ( Y=>nx757, A0=>windowBus(6), A1=>nx862, A2=>
      nx872);
   regPage1Map_reg_Q_7 : dffr port map ( Q=>outputRegPage1_7_EXMPLR, QB=>
      nx766, D=>nx273, CLK=>clk, R=>rst);
   ix274 : nand02 port map ( Y=>nx273, A0=>nx762, A1=>nx764);
   ix763 : nand02 port map ( Y=>nx762, A0=>outputRegPage1_7_EXMPLR, A1=>
      nx858);
   ix765 : nand03 port map ( Y=>nx764, A0=>windowBus(7), A1=>nx862, A2=>
      nx872);
   regPage1Map_reg_Q_8 : dffr port map ( Q=>outputRegPage1_8_EXMPLR, QB=>
      nx773, D=>nx293, CLK=>clk, R=>rst);
   ix294 : nand02 port map ( Y=>nx293, A0=>nx769, A1=>nx771);
   ix770 : nand02 port map ( Y=>nx769, A0=>outputRegPage1_8_EXMPLR, A1=>
      nx858);
   ix772 : nand03 port map ( Y=>nx771, A0=>windowBus(8), A1=>nx862, A2=>
      nx872);
   regPage1Map_reg_Q_9 : dffr port map ( Q=>outputRegPage1_9_EXMPLR, QB=>
      nx780, D=>nx313, CLK=>clk, R=>rst);
   ix314 : nand02 port map ( Y=>nx313, A0=>nx776, A1=>nx778);
   ix777 : nand02 port map ( Y=>nx776, A0=>outputRegPage1_9_EXMPLR, A1=>
      nx858);
   ix779 : nand03 port map ( Y=>nx778, A0=>windowBus(9), A1=>nx862, A2=>
      nx872);
   regPage1Map_reg_Q_10 : dffr port map ( Q=>outputRegPage1_10_EXMPLR, QB=>
      nx787, D=>nx333, CLK=>clk, R=>rst);
   ix334 : nand02 port map ( Y=>nx333, A0=>nx783, A1=>nx785);
   ix784 : nand02 port map ( Y=>nx783, A0=>outputRegPage1_10_EXMPLR, A1=>
      nx858);
   ix786 : nand03 port map ( Y=>nx785, A0=>windowBus(10), A1=>nx862, A2=>
      nx872);
   regPage1Map_reg_Q_11 : dffr port map ( Q=>outputRegPage1_11_EXMPLR, QB=>
      nx794, D=>nx353, CLK=>clk, R=>rst);
   ix354 : nand02 port map ( Y=>nx353, A0=>nx790, A1=>nx792);
   ix791 : nand02 port map ( Y=>nx790, A0=>outputRegPage1_11_EXMPLR, A1=>
      nx858);
   ix793 : nand03 port map ( Y=>nx792, A0=>windowBus(11), A1=>nx862, A2=>
      nx872);
   regPage1Map_reg_Q_12 : dffr port map ( Q=>outputRegPage1_12_EXMPLR, QB=>
      nx801, D=>nx373, CLK=>clk, R=>rst);
   ix374 : nand02 port map ( Y=>nx373, A0=>nx797, A1=>nx799);
   ix798 : nand02 port map ( Y=>nx797, A0=>outputRegPage1_12_EXMPLR, A1=>
      nx858);
   ix800 : nand03 port map ( Y=>nx799, A0=>windowBus(12), A1=>nx715, A2=>
      nx872);
   regPage1Map_reg_Q_13 : dffr port map ( Q=>outputRegPage1_13_EXMPLR, QB=>
      nx808, D=>nx393, CLK=>clk, R=>rst);
   ix394 : nand02 port map ( Y=>nx393, A0=>nx804, A1=>nx806);
   ix805 : nand02 port map ( Y=>nx804, A0=>outputRegPage1_13_EXMPLR, A1=>
      nx858);
   ix807 : nand03 port map ( Y=>nx806, A0=>windowBus(13), A1=>nx715, A2=>
      nx874);
   regPage1Map_reg_Q_14 : dffr port map ( Q=>outputRegPage1_14_EXMPLR, QB=>
      nx815, D=>nx413, CLK=>clk, R=>rst);
   ix414 : nand02 port map ( Y=>nx413, A0=>nx811, A1=>nx813);
   ix812 : nand02 port map ( Y=>nx811, A0=>outputRegPage1_14_EXMPLR, A1=>
      nx711);
   ix814 : nand03 port map ( Y=>nx813, A0=>windowBus(14), A1=>nx715, A2=>
      nx874);
   regPage1Map_reg_Q_15 : dffr port map ( Q=>outputRegPage1_15_EXMPLR, QB=>
      nx822, D=>nx433, CLK=>clk, R=>rst);
   ix434 : nand02 port map ( Y=>nx433, A0=>nx818, A1=>nx820);
   ix819 : nand02 port map ( Y=>nx818, A0=>outputRegPage1_15_EXMPLR, A1=>
      nx711);
   ix821 : nand03 port map ( Y=>nx820, A0=>windowBus(15), A1=>nx715, A2=>
      nx874);
   ix25 : mux21 port map ( Y=>outRegPage(0), A0=>nx717, A1=>nx601, S0=>
      pageTurn);
   ix45 : mux21 port map ( Y=>outRegPage(1), A0=>nx724, A1=>nx608, S0=>
      pageTurn);
   ix65 : mux21 port map ( Y=>outRegPage(2), A0=>nx731, A1=>nx615, S0=>
      pageTurn);
   ix85 : mux21 port map ( Y=>outRegPage(3), A0=>nx738, A1=>nx622, S0=>
      pageTurn);
   ix105 : mux21 port map ( Y=>outRegPage(4), A0=>nx745, A1=>nx629, S0=>
      pageTurn);
   ix125 : mux21 port map ( Y=>outRegPage(5), A0=>nx752, A1=>nx636, S0=>
      pageTurn);
   ix145 : mux21 port map ( Y=>outRegPage(6), A0=>nx759, A1=>nx643, S0=>
      pageTurn);
   ix165 : mux21 port map ( Y=>outRegPage(7), A0=>nx766, A1=>nx650, S0=>
      pageTurn);
   ix185 : mux21 port map ( Y=>outRegPage(8), A0=>nx773, A1=>nx657, S0=>
      pageTurn);
   ix205 : mux21 port map ( Y=>outRegPage(9), A0=>nx780, A1=>nx664, S0=>
      pageTurn);
   ix225 : mux21 port map ( Y=>outRegPage(10), A0=>nx787, A1=>nx671, S0=>
      pageTurn);
   ix245 : mux21 port map ( Y=>outRegPage(11), A0=>nx794, A1=>nx678, S0=>
      pageTurn);
   ix265 : mux21 port map ( Y=>outRegPage(12), A0=>nx801, A1=>nx685, S0=>
      pageTurn);
   ix285 : mux21 port map ( Y=>outRegPage(13), A0=>nx808, A1=>nx692, S0=>
      pageTurn);
   ix305 : mux21 port map ( Y=>outRegPage(14), A0=>nx815, A1=>nx699, S0=>
      pageTurn);
   ix325 : mux21 port map ( Y=>outRegPage(15), A0=>nx822, A1=>nx706, S0=>
      pageTurn);
   ix845 : inv01 port map ( Y=>nx846, A=>nx886);
   ix847 : nor02_2x port map ( Y=>nx848, A0=>nx882, A1=>page2ReadBusOrPage1
   );
   ix849 : nor02_2x port map ( Y=>nx850, A0=>nx882, A1=>page2ReadBusOrPage1
   );
   ix851 : inv01 port map ( Y=>nx852, A=>page2ReadBusOrPage1);
   ix853 : inv01 port map ( Y=>nx854, A=>page2ReadBusOrPage1);
   ix855 : nor02_2x port map ( Y=>nx856, A0=>nx874, A1=>page1ReadBusOrPage2
   );
   ix857 : nor02_2x port map ( Y=>nx858, A0=>nx874, A1=>page1ReadBusOrPage2
   );
   ix859 : inv01 port map ( Y=>nx860, A=>page1ReadBusOrPage2);
   ix861 : inv01 port map ( Y=>nx862, A=>page1ReadBusOrPage2);
   ix867 : inv01 port map ( Y=>nx868, A=>enableRegPage1);
   ix869 : inv02 port map ( Y=>nx870, A=>nx868);
   ix871 : inv02 port map ( Y=>nx872, A=>nx868);
   ix873 : inv02 port map ( Y=>nx874, A=>nx868);
   ix875 : inv01 port map ( Y=>nx876, A=>enableRegPage2);
   ix877 : inv02 port map ( Y=>nx878, A=>nx876);
   ix879 : inv02 port map ( Y=>nx880, A=>nx876);
   ix881 : inv02 port map ( Y=>nx882, A=>nx876);
   ix883 : inv02 port map ( Y=>nx884, A=>nx890);
   ix885 : inv02 port map ( Y=>nx886, A=>nx890);
   ix887 : inv02 port map ( Y=>nx888, A=>enableRegFilter);
   ix889 : inv02 port map ( Y=>nx890, A=>enableRegFilter);
end RegUnitArch_unfold_2792_2_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RegFile is
   port (
      filterBus : IN std_logic_vector (39 DOWNTO 0) ;
      windowBus : IN std_logic_vector (79 DOWNTO 0) ;
      decoderRow : IN std_logic_vector (2 DOWNTO 0) ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      enablePage1Read : IN std_logic ;
      enablePage2Read : IN std_logic ;
      enableFilterRead : IN std_logic ;
      shift2To1 : IN std_logic ;
      shift1To2 : IN std_logic ;
      pageTurn : IN std_logic ;
      pagesOuts_0_15 : OUT std_logic ;
      pagesOuts_0_14 : OUT std_logic ;
      pagesOuts_0_13 : OUT std_logic ;
      pagesOuts_0_12 : OUT std_logic ;
      pagesOuts_0_11 : OUT std_logic ;
      pagesOuts_0_10 : OUT std_logic ;
      pagesOuts_0_9 : OUT std_logic ;
      pagesOuts_0_8 : OUT std_logic ;
      pagesOuts_0_7 : OUT std_logic ;
      pagesOuts_0_6 : OUT std_logic ;
      pagesOuts_0_5 : OUT std_logic ;
      pagesOuts_0_4 : OUT std_logic ;
      pagesOuts_0_3 : OUT std_logic ;
      pagesOuts_0_2 : OUT std_logic ;
      pagesOuts_0_1 : OUT std_logic ;
      pagesOuts_0_0 : OUT std_logic ;
      pagesOuts_1_15 : OUT std_logic ;
      pagesOuts_1_14 : OUT std_logic ;
      pagesOuts_1_13 : OUT std_logic ;
      pagesOuts_1_12 : OUT std_logic ;
      pagesOuts_1_11 : OUT std_logic ;
      pagesOuts_1_10 : OUT std_logic ;
      pagesOuts_1_9 : OUT std_logic ;
      pagesOuts_1_8 : OUT std_logic ;
      pagesOuts_1_7 : OUT std_logic ;
      pagesOuts_1_6 : OUT std_logic ;
      pagesOuts_1_5 : OUT std_logic ;
      pagesOuts_1_4 : OUT std_logic ;
      pagesOuts_1_3 : OUT std_logic ;
      pagesOuts_1_2 : OUT std_logic ;
      pagesOuts_1_1 : OUT std_logic ;
      pagesOuts_1_0 : OUT std_logic ;
      pagesOuts_2_15 : OUT std_logic ;
      pagesOuts_2_14 : OUT std_logic ;
      pagesOuts_2_13 : OUT std_logic ;
      pagesOuts_2_12 : OUT std_logic ;
      pagesOuts_2_11 : OUT std_logic ;
      pagesOuts_2_10 : OUT std_logic ;
      pagesOuts_2_9 : OUT std_logic ;
      pagesOuts_2_8 : OUT std_logic ;
      pagesOuts_2_7 : OUT std_logic ;
      pagesOuts_2_6 : OUT std_logic ;
      pagesOuts_2_5 : OUT std_logic ;
      pagesOuts_2_4 : OUT std_logic ;
      pagesOuts_2_3 : OUT std_logic ;
      pagesOuts_2_2 : OUT std_logic ;
      pagesOuts_2_1 : OUT std_logic ;
      pagesOuts_2_0 : OUT std_logic ;
      pagesOuts_3_15 : OUT std_logic ;
      pagesOuts_3_14 : OUT std_logic ;
      pagesOuts_3_13 : OUT std_logic ;
      pagesOuts_3_12 : OUT std_logic ;
      pagesOuts_3_11 : OUT std_logic ;
      pagesOuts_3_10 : OUT std_logic ;
      pagesOuts_3_9 : OUT std_logic ;
      pagesOuts_3_8 : OUT std_logic ;
      pagesOuts_3_7 : OUT std_logic ;
      pagesOuts_3_6 : OUT std_logic ;
      pagesOuts_3_5 : OUT std_logic ;
      pagesOuts_3_4 : OUT std_logic ;
      pagesOuts_3_3 : OUT std_logic ;
      pagesOuts_3_2 : OUT std_logic ;
      pagesOuts_3_1 : OUT std_logic ;
      pagesOuts_3_0 : OUT std_logic ;
      pagesOuts_4_15 : OUT std_logic ;
      pagesOuts_4_14 : OUT std_logic ;
      pagesOuts_4_13 : OUT std_logic ;
      pagesOuts_4_12 : OUT std_logic ;
      pagesOuts_4_11 : OUT std_logic ;
      pagesOuts_4_10 : OUT std_logic ;
      pagesOuts_4_9 : OUT std_logic ;
      pagesOuts_4_8 : OUT std_logic ;
      pagesOuts_4_7 : OUT std_logic ;
      pagesOuts_4_6 : OUT std_logic ;
      pagesOuts_4_5 : OUT std_logic ;
      pagesOuts_4_4 : OUT std_logic ;
      pagesOuts_4_3 : OUT std_logic ;
      pagesOuts_4_2 : OUT std_logic ;
      pagesOuts_4_1 : OUT std_logic ;
      pagesOuts_4_0 : OUT std_logic ;
      pagesOuts_5_15 : OUT std_logic ;
      pagesOuts_5_14 : OUT std_logic ;
      pagesOuts_5_13 : OUT std_logic ;
      pagesOuts_5_12 : OUT std_logic ;
      pagesOuts_5_11 : OUT std_logic ;
      pagesOuts_5_10 : OUT std_logic ;
      pagesOuts_5_9 : OUT std_logic ;
      pagesOuts_5_8 : OUT std_logic ;
      pagesOuts_5_7 : OUT std_logic ;
      pagesOuts_5_6 : OUT std_logic ;
      pagesOuts_5_5 : OUT std_logic ;
      pagesOuts_5_4 : OUT std_logic ;
      pagesOuts_5_3 : OUT std_logic ;
      pagesOuts_5_2 : OUT std_logic ;
      pagesOuts_5_1 : OUT std_logic ;
      pagesOuts_5_0 : OUT std_logic ;
      pagesOuts_6_15 : OUT std_logic ;
      pagesOuts_6_14 : OUT std_logic ;
      pagesOuts_6_13 : OUT std_logic ;
      pagesOuts_6_12 : OUT std_logic ;
      pagesOuts_6_11 : OUT std_logic ;
      pagesOuts_6_10 : OUT std_logic ;
      pagesOuts_6_9 : OUT std_logic ;
      pagesOuts_6_8 : OUT std_logic ;
      pagesOuts_6_7 : OUT std_logic ;
      pagesOuts_6_6 : OUT std_logic ;
      pagesOuts_6_5 : OUT std_logic ;
      pagesOuts_6_4 : OUT std_logic ;
      pagesOuts_6_3 : OUT std_logic ;
      pagesOuts_6_2 : OUT std_logic ;
      pagesOuts_6_1 : OUT std_logic ;
      pagesOuts_6_0 : OUT std_logic ;
      pagesOuts_7_15 : OUT std_logic ;
      pagesOuts_7_14 : OUT std_logic ;
      pagesOuts_7_13 : OUT std_logic ;
      pagesOuts_7_12 : OUT std_logic ;
      pagesOuts_7_11 : OUT std_logic ;
      pagesOuts_7_10 : OUT std_logic ;
      pagesOuts_7_9 : OUT std_logic ;
      pagesOuts_7_8 : OUT std_logic ;
      pagesOuts_7_7 : OUT std_logic ;
      pagesOuts_7_6 : OUT std_logic ;
      pagesOuts_7_5 : OUT std_logic ;
      pagesOuts_7_4 : OUT std_logic ;
      pagesOuts_7_3 : OUT std_logic ;
      pagesOuts_7_2 : OUT std_logic ;
      pagesOuts_7_1 : OUT std_logic ;
      pagesOuts_7_0 : OUT std_logic ;
      pagesOuts_8_15 : OUT std_logic ;
      pagesOuts_8_14 : OUT std_logic ;
      pagesOuts_8_13 : OUT std_logic ;
      pagesOuts_8_12 : OUT std_logic ;
      pagesOuts_8_11 : OUT std_logic ;
      pagesOuts_8_10 : OUT std_logic ;
      pagesOuts_8_9 : OUT std_logic ;
      pagesOuts_8_8 : OUT std_logic ;
      pagesOuts_8_7 : OUT std_logic ;
      pagesOuts_8_6 : OUT std_logic ;
      pagesOuts_8_5 : OUT std_logic ;
      pagesOuts_8_4 : OUT std_logic ;
      pagesOuts_8_3 : OUT std_logic ;
      pagesOuts_8_2 : OUT std_logic ;
      pagesOuts_8_1 : OUT std_logic ;
      pagesOuts_8_0 : OUT std_logic ;
      pagesOuts_9_15 : OUT std_logic ;
      pagesOuts_9_14 : OUT std_logic ;
      pagesOuts_9_13 : OUT std_logic ;
      pagesOuts_9_12 : OUT std_logic ;
      pagesOuts_9_11 : OUT std_logic ;
      pagesOuts_9_10 : OUT std_logic ;
      pagesOuts_9_9 : OUT std_logic ;
      pagesOuts_9_8 : OUT std_logic ;
      pagesOuts_9_7 : OUT std_logic ;
      pagesOuts_9_6 : OUT std_logic ;
      pagesOuts_9_5 : OUT std_logic ;
      pagesOuts_9_4 : OUT std_logic ;
      pagesOuts_9_3 : OUT std_logic ;
      pagesOuts_9_2 : OUT std_logic ;
      pagesOuts_9_1 : OUT std_logic ;
      pagesOuts_9_0 : OUT std_logic ;
      pagesOuts_10_15 : OUT std_logic ;
      pagesOuts_10_14 : OUT std_logic ;
      pagesOuts_10_13 : OUT std_logic ;
      pagesOuts_10_12 : OUT std_logic ;
      pagesOuts_10_11 : OUT std_logic ;
      pagesOuts_10_10 : OUT std_logic ;
      pagesOuts_10_9 : OUT std_logic ;
      pagesOuts_10_8 : OUT std_logic ;
      pagesOuts_10_7 : OUT std_logic ;
      pagesOuts_10_6 : OUT std_logic ;
      pagesOuts_10_5 : OUT std_logic ;
      pagesOuts_10_4 : OUT std_logic ;
      pagesOuts_10_3 : OUT std_logic ;
      pagesOuts_10_2 : OUT std_logic ;
      pagesOuts_10_1 : OUT std_logic ;
      pagesOuts_10_0 : OUT std_logic ;
      pagesOuts_11_15 : OUT std_logic ;
      pagesOuts_11_14 : OUT std_logic ;
      pagesOuts_11_13 : OUT std_logic ;
      pagesOuts_11_12 : OUT std_logic ;
      pagesOuts_11_11 : OUT std_logic ;
      pagesOuts_11_10 : OUT std_logic ;
      pagesOuts_11_9 : OUT std_logic ;
      pagesOuts_11_8 : OUT std_logic ;
      pagesOuts_11_7 : OUT std_logic ;
      pagesOuts_11_6 : OUT std_logic ;
      pagesOuts_11_5 : OUT std_logic ;
      pagesOuts_11_4 : OUT std_logic ;
      pagesOuts_11_3 : OUT std_logic ;
      pagesOuts_11_2 : OUT std_logic ;
      pagesOuts_11_1 : OUT std_logic ;
      pagesOuts_11_0 : OUT std_logic ;
      pagesOuts_12_15 : OUT std_logic ;
      pagesOuts_12_14 : OUT std_logic ;
      pagesOuts_12_13 : OUT std_logic ;
      pagesOuts_12_12 : OUT std_logic ;
      pagesOuts_12_11 : OUT std_logic ;
      pagesOuts_12_10 : OUT std_logic ;
      pagesOuts_12_9 : OUT std_logic ;
      pagesOuts_12_8 : OUT std_logic ;
      pagesOuts_12_7 : OUT std_logic ;
      pagesOuts_12_6 : OUT std_logic ;
      pagesOuts_12_5 : OUT std_logic ;
      pagesOuts_12_4 : OUT std_logic ;
      pagesOuts_12_3 : OUT std_logic ;
      pagesOuts_12_2 : OUT std_logic ;
      pagesOuts_12_1 : OUT std_logic ;
      pagesOuts_12_0 : OUT std_logic ;
      pagesOuts_13_15 : OUT std_logic ;
      pagesOuts_13_14 : OUT std_logic ;
      pagesOuts_13_13 : OUT std_logic ;
      pagesOuts_13_12 : OUT std_logic ;
      pagesOuts_13_11 : OUT std_logic ;
      pagesOuts_13_10 : OUT std_logic ;
      pagesOuts_13_9 : OUT std_logic ;
      pagesOuts_13_8 : OUT std_logic ;
      pagesOuts_13_7 : OUT std_logic ;
      pagesOuts_13_6 : OUT std_logic ;
      pagesOuts_13_5 : OUT std_logic ;
      pagesOuts_13_4 : OUT std_logic ;
      pagesOuts_13_3 : OUT std_logic ;
      pagesOuts_13_2 : OUT std_logic ;
      pagesOuts_13_1 : OUT std_logic ;
      pagesOuts_13_0 : OUT std_logic ;
      pagesOuts_14_15 : OUT std_logic ;
      pagesOuts_14_14 : OUT std_logic ;
      pagesOuts_14_13 : OUT std_logic ;
      pagesOuts_14_12 : OUT std_logic ;
      pagesOuts_14_11 : OUT std_logic ;
      pagesOuts_14_10 : OUT std_logic ;
      pagesOuts_14_9 : OUT std_logic ;
      pagesOuts_14_8 : OUT std_logic ;
      pagesOuts_14_7 : OUT std_logic ;
      pagesOuts_14_6 : OUT std_logic ;
      pagesOuts_14_5 : OUT std_logic ;
      pagesOuts_14_4 : OUT std_logic ;
      pagesOuts_14_3 : OUT std_logic ;
      pagesOuts_14_2 : OUT std_logic ;
      pagesOuts_14_1 : OUT std_logic ;
      pagesOuts_14_0 : OUT std_logic ;
      pagesOuts_15_15 : OUT std_logic ;
      pagesOuts_15_14 : OUT std_logic ;
      pagesOuts_15_13 : OUT std_logic ;
      pagesOuts_15_12 : OUT std_logic ;
      pagesOuts_15_11 : OUT std_logic ;
      pagesOuts_15_10 : OUT std_logic ;
      pagesOuts_15_9 : OUT std_logic ;
      pagesOuts_15_8 : OUT std_logic ;
      pagesOuts_15_7 : OUT std_logic ;
      pagesOuts_15_6 : OUT std_logic ;
      pagesOuts_15_5 : OUT std_logic ;
      pagesOuts_15_4 : OUT std_logic ;
      pagesOuts_15_3 : OUT std_logic ;
      pagesOuts_15_2 : OUT std_logic ;
      pagesOuts_15_1 : OUT std_logic ;
      pagesOuts_15_0 : OUT std_logic ;
      pagesOuts_16_15 : OUT std_logic ;
      pagesOuts_16_14 : OUT std_logic ;
      pagesOuts_16_13 : OUT std_logic ;
      pagesOuts_16_12 : OUT std_logic ;
      pagesOuts_16_11 : OUT std_logic ;
      pagesOuts_16_10 : OUT std_logic ;
      pagesOuts_16_9 : OUT std_logic ;
      pagesOuts_16_8 : OUT std_logic ;
      pagesOuts_16_7 : OUT std_logic ;
      pagesOuts_16_6 : OUT std_logic ;
      pagesOuts_16_5 : OUT std_logic ;
      pagesOuts_16_4 : OUT std_logic ;
      pagesOuts_16_3 : OUT std_logic ;
      pagesOuts_16_2 : OUT std_logic ;
      pagesOuts_16_1 : OUT std_logic ;
      pagesOuts_16_0 : OUT std_logic ;
      pagesOuts_17_15 : OUT std_logic ;
      pagesOuts_17_14 : OUT std_logic ;
      pagesOuts_17_13 : OUT std_logic ;
      pagesOuts_17_12 : OUT std_logic ;
      pagesOuts_17_11 : OUT std_logic ;
      pagesOuts_17_10 : OUT std_logic ;
      pagesOuts_17_9 : OUT std_logic ;
      pagesOuts_17_8 : OUT std_logic ;
      pagesOuts_17_7 : OUT std_logic ;
      pagesOuts_17_6 : OUT std_logic ;
      pagesOuts_17_5 : OUT std_logic ;
      pagesOuts_17_4 : OUT std_logic ;
      pagesOuts_17_3 : OUT std_logic ;
      pagesOuts_17_2 : OUT std_logic ;
      pagesOuts_17_1 : OUT std_logic ;
      pagesOuts_17_0 : OUT std_logic ;
      pagesOuts_18_15 : OUT std_logic ;
      pagesOuts_18_14 : OUT std_logic ;
      pagesOuts_18_13 : OUT std_logic ;
      pagesOuts_18_12 : OUT std_logic ;
      pagesOuts_18_11 : OUT std_logic ;
      pagesOuts_18_10 : OUT std_logic ;
      pagesOuts_18_9 : OUT std_logic ;
      pagesOuts_18_8 : OUT std_logic ;
      pagesOuts_18_7 : OUT std_logic ;
      pagesOuts_18_6 : OUT std_logic ;
      pagesOuts_18_5 : OUT std_logic ;
      pagesOuts_18_4 : OUT std_logic ;
      pagesOuts_18_3 : OUT std_logic ;
      pagesOuts_18_2 : OUT std_logic ;
      pagesOuts_18_1 : OUT std_logic ;
      pagesOuts_18_0 : OUT std_logic ;
      pagesOuts_19_15 : OUT std_logic ;
      pagesOuts_19_14 : OUT std_logic ;
      pagesOuts_19_13 : OUT std_logic ;
      pagesOuts_19_12 : OUT std_logic ;
      pagesOuts_19_11 : OUT std_logic ;
      pagesOuts_19_10 : OUT std_logic ;
      pagesOuts_19_9 : OUT std_logic ;
      pagesOuts_19_8 : OUT std_logic ;
      pagesOuts_19_7 : OUT std_logic ;
      pagesOuts_19_6 : OUT std_logic ;
      pagesOuts_19_5 : OUT std_logic ;
      pagesOuts_19_4 : OUT std_logic ;
      pagesOuts_19_3 : OUT std_logic ;
      pagesOuts_19_2 : OUT std_logic ;
      pagesOuts_19_1 : OUT std_logic ;
      pagesOuts_19_0 : OUT std_logic ;
      pagesOuts_20_15 : OUT std_logic ;
      pagesOuts_20_14 : OUT std_logic ;
      pagesOuts_20_13 : OUT std_logic ;
      pagesOuts_20_12 : OUT std_logic ;
      pagesOuts_20_11 : OUT std_logic ;
      pagesOuts_20_10 : OUT std_logic ;
      pagesOuts_20_9 : OUT std_logic ;
      pagesOuts_20_8 : OUT std_logic ;
      pagesOuts_20_7 : OUT std_logic ;
      pagesOuts_20_6 : OUT std_logic ;
      pagesOuts_20_5 : OUT std_logic ;
      pagesOuts_20_4 : OUT std_logic ;
      pagesOuts_20_3 : OUT std_logic ;
      pagesOuts_20_2 : OUT std_logic ;
      pagesOuts_20_1 : OUT std_logic ;
      pagesOuts_20_0 : OUT std_logic ;
      pagesOuts_21_15 : OUT std_logic ;
      pagesOuts_21_14 : OUT std_logic ;
      pagesOuts_21_13 : OUT std_logic ;
      pagesOuts_21_12 : OUT std_logic ;
      pagesOuts_21_11 : OUT std_logic ;
      pagesOuts_21_10 : OUT std_logic ;
      pagesOuts_21_9 : OUT std_logic ;
      pagesOuts_21_8 : OUT std_logic ;
      pagesOuts_21_7 : OUT std_logic ;
      pagesOuts_21_6 : OUT std_logic ;
      pagesOuts_21_5 : OUT std_logic ;
      pagesOuts_21_4 : OUT std_logic ;
      pagesOuts_21_3 : OUT std_logic ;
      pagesOuts_21_2 : OUT std_logic ;
      pagesOuts_21_1 : OUT std_logic ;
      pagesOuts_21_0 : OUT std_logic ;
      pagesOuts_22_15 : OUT std_logic ;
      pagesOuts_22_14 : OUT std_logic ;
      pagesOuts_22_13 : OUT std_logic ;
      pagesOuts_22_12 : OUT std_logic ;
      pagesOuts_22_11 : OUT std_logic ;
      pagesOuts_22_10 : OUT std_logic ;
      pagesOuts_22_9 : OUT std_logic ;
      pagesOuts_22_8 : OUT std_logic ;
      pagesOuts_22_7 : OUT std_logic ;
      pagesOuts_22_6 : OUT std_logic ;
      pagesOuts_22_5 : OUT std_logic ;
      pagesOuts_22_4 : OUT std_logic ;
      pagesOuts_22_3 : OUT std_logic ;
      pagesOuts_22_2 : OUT std_logic ;
      pagesOuts_22_1 : OUT std_logic ;
      pagesOuts_22_0 : OUT std_logic ;
      pagesOuts_23_15 : OUT std_logic ;
      pagesOuts_23_14 : OUT std_logic ;
      pagesOuts_23_13 : OUT std_logic ;
      pagesOuts_23_12 : OUT std_logic ;
      pagesOuts_23_11 : OUT std_logic ;
      pagesOuts_23_10 : OUT std_logic ;
      pagesOuts_23_9 : OUT std_logic ;
      pagesOuts_23_8 : OUT std_logic ;
      pagesOuts_23_7 : OUT std_logic ;
      pagesOuts_23_6 : OUT std_logic ;
      pagesOuts_23_5 : OUT std_logic ;
      pagesOuts_23_4 : OUT std_logic ;
      pagesOuts_23_3 : OUT std_logic ;
      pagesOuts_23_2 : OUT std_logic ;
      pagesOuts_23_1 : OUT std_logic ;
      pagesOuts_23_0 : OUT std_logic ;
      pagesOuts_24_15 : OUT std_logic ;
      pagesOuts_24_14 : OUT std_logic ;
      pagesOuts_24_13 : OUT std_logic ;
      pagesOuts_24_12 : OUT std_logic ;
      pagesOuts_24_11 : OUT std_logic ;
      pagesOuts_24_10 : OUT std_logic ;
      pagesOuts_24_9 : OUT std_logic ;
      pagesOuts_24_8 : OUT std_logic ;
      pagesOuts_24_7 : OUT std_logic ;
      pagesOuts_24_6 : OUT std_logic ;
      pagesOuts_24_5 : OUT std_logic ;
      pagesOuts_24_4 : OUT std_logic ;
      pagesOuts_24_3 : OUT std_logic ;
      pagesOuts_24_2 : OUT std_logic ;
      pagesOuts_24_1 : OUT std_logic ;
      pagesOuts_24_0 : OUT std_logic ;
      filtersOuts_0_7 : OUT std_logic ;
      filtersOuts_0_6 : OUT std_logic ;
      filtersOuts_0_5 : OUT std_logic ;
      filtersOuts_0_4 : OUT std_logic ;
      filtersOuts_0_3 : OUT std_logic ;
      filtersOuts_0_2 : OUT std_logic ;
      filtersOuts_0_1 : OUT std_logic ;
      filtersOuts_0_0 : OUT std_logic ;
      filtersOuts_1_7 : OUT std_logic ;
      filtersOuts_1_6 : OUT std_logic ;
      filtersOuts_1_5 : OUT std_logic ;
      filtersOuts_1_4 : OUT std_logic ;
      filtersOuts_1_3 : OUT std_logic ;
      filtersOuts_1_2 : OUT std_logic ;
      filtersOuts_1_1 : OUT std_logic ;
      filtersOuts_1_0 : OUT std_logic ;
      filtersOuts_2_7 : OUT std_logic ;
      filtersOuts_2_6 : OUT std_logic ;
      filtersOuts_2_5 : OUT std_logic ;
      filtersOuts_2_4 : OUT std_logic ;
      filtersOuts_2_3 : OUT std_logic ;
      filtersOuts_2_2 : OUT std_logic ;
      filtersOuts_2_1 : OUT std_logic ;
      filtersOuts_2_0 : OUT std_logic ;
      filtersOuts_3_7 : OUT std_logic ;
      filtersOuts_3_6 : OUT std_logic ;
      filtersOuts_3_5 : OUT std_logic ;
      filtersOuts_3_4 : OUT std_logic ;
      filtersOuts_3_3 : OUT std_logic ;
      filtersOuts_3_2 : OUT std_logic ;
      filtersOuts_3_1 : OUT std_logic ;
      filtersOuts_3_0 : OUT std_logic ;
      filtersOuts_4_7 : OUT std_logic ;
      filtersOuts_4_6 : OUT std_logic ;
      filtersOuts_4_5 : OUT std_logic ;
      filtersOuts_4_4 : OUT std_logic ;
      filtersOuts_4_3 : OUT std_logic ;
      filtersOuts_4_2 : OUT std_logic ;
      filtersOuts_4_1 : OUT std_logic ;
      filtersOuts_4_0 : OUT std_logic ;
      filtersOuts_5_7 : OUT std_logic ;
      filtersOuts_5_6 : OUT std_logic ;
      filtersOuts_5_5 : OUT std_logic ;
      filtersOuts_5_4 : OUT std_logic ;
      filtersOuts_5_3 : OUT std_logic ;
      filtersOuts_5_2 : OUT std_logic ;
      filtersOuts_5_1 : OUT std_logic ;
      filtersOuts_5_0 : OUT std_logic ;
      filtersOuts_6_7 : OUT std_logic ;
      filtersOuts_6_6 : OUT std_logic ;
      filtersOuts_6_5 : OUT std_logic ;
      filtersOuts_6_4 : OUT std_logic ;
      filtersOuts_6_3 : OUT std_logic ;
      filtersOuts_6_2 : OUT std_logic ;
      filtersOuts_6_1 : OUT std_logic ;
      filtersOuts_6_0 : OUT std_logic ;
      filtersOuts_7_7 : OUT std_logic ;
      filtersOuts_7_6 : OUT std_logic ;
      filtersOuts_7_5 : OUT std_logic ;
      filtersOuts_7_4 : OUT std_logic ;
      filtersOuts_7_3 : OUT std_logic ;
      filtersOuts_7_2 : OUT std_logic ;
      filtersOuts_7_1 : OUT std_logic ;
      filtersOuts_7_0 : OUT std_logic ;
      filtersOuts_8_7 : OUT std_logic ;
      filtersOuts_8_6 : OUT std_logic ;
      filtersOuts_8_5 : OUT std_logic ;
      filtersOuts_8_4 : OUT std_logic ;
      filtersOuts_8_3 : OUT std_logic ;
      filtersOuts_8_2 : OUT std_logic ;
      filtersOuts_8_1 : OUT std_logic ;
      filtersOuts_8_0 : OUT std_logic ;
      filtersOuts_9_7 : OUT std_logic ;
      filtersOuts_9_6 : OUT std_logic ;
      filtersOuts_9_5 : OUT std_logic ;
      filtersOuts_9_4 : OUT std_logic ;
      filtersOuts_9_3 : OUT std_logic ;
      filtersOuts_9_2 : OUT std_logic ;
      filtersOuts_9_1 : OUT std_logic ;
      filtersOuts_9_0 : OUT std_logic ;
      filtersOuts_10_7 : OUT std_logic ;
      filtersOuts_10_6 : OUT std_logic ;
      filtersOuts_10_5 : OUT std_logic ;
      filtersOuts_10_4 : OUT std_logic ;
      filtersOuts_10_3 : OUT std_logic ;
      filtersOuts_10_2 : OUT std_logic ;
      filtersOuts_10_1 : OUT std_logic ;
      filtersOuts_10_0 : OUT std_logic ;
      filtersOuts_11_7 : OUT std_logic ;
      filtersOuts_11_6 : OUT std_logic ;
      filtersOuts_11_5 : OUT std_logic ;
      filtersOuts_11_4 : OUT std_logic ;
      filtersOuts_11_3 : OUT std_logic ;
      filtersOuts_11_2 : OUT std_logic ;
      filtersOuts_11_1 : OUT std_logic ;
      filtersOuts_11_0 : OUT std_logic ;
      filtersOuts_12_7 : OUT std_logic ;
      filtersOuts_12_6 : OUT std_logic ;
      filtersOuts_12_5 : OUT std_logic ;
      filtersOuts_12_4 : OUT std_logic ;
      filtersOuts_12_3 : OUT std_logic ;
      filtersOuts_12_2 : OUT std_logic ;
      filtersOuts_12_1 : OUT std_logic ;
      filtersOuts_12_0 : OUT std_logic ;
      filtersOuts_13_7 : OUT std_logic ;
      filtersOuts_13_6 : OUT std_logic ;
      filtersOuts_13_5 : OUT std_logic ;
      filtersOuts_13_4 : OUT std_logic ;
      filtersOuts_13_3 : OUT std_logic ;
      filtersOuts_13_2 : OUT std_logic ;
      filtersOuts_13_1 : OUT std_logic ;
      filtersOuts_13_0 : OUT std_logic ;
      filtersOuts_14_7 : OUT std_logic ;
      filtersOuts_14_6 : OUT std_logic ;
      filtersOuts_14_5 : OUT std_logic ;
      filtersOuts_14_4 : OUT std_logic ;
      filtersOuts_14_3 : OUT std_logic ;
      filtersOuts_14_2 : OUT std_logic ;
      filtersOuts_14_1 : OUT std_logic ;
      filtersOuts_14_0 : OUT std_logic ;
      filtersOuts_15_7 : OUT std_logic ;
      filtersOuts_15_6 : OUT std_logic ;
      filtersOuts_15_5 : OUT std_logic ;
      filtersOuts_15_4 : OUT std_logic ;
      filtersOuts_15_3 : OUT std_logic ;
      filtersOuts_15_2 : OUT std_logic ;
      filtersOuts_15_1 : OUT std_logic ;
      filtersOuts_15_0 : OUT std_logic ;
      filtersOuts_16_7 : OUT std_logic ;
      filtersOuts_16_6 : OUT std_logic ;
      filtersOuts_16_5 : OUT std_logic ;
      filtersOuts_16_4 : OUT std_logic ;
      filtersOuts_16_3 : OUT std_logic ;
      filtersOuts_16_2 : OUT std_logic ;
      filtersOuts_16_1 : OUT std_logic ;
      filtersOuts_16_0 : OUT std_logic ;
      filtersOuts_17_7 : OUT std_logic ;
      filtersOuts_17_6 : OUT std_logic ;
      filtersOuts_17_5 : OUT std_logic ;
      filtersOuts_17_4 : OUT std_logic ;
      filtersOuts_17_3 : OUT std_logic ;
      filtersOuts_17_2 : OUT std_logic ;
      filtersOuts_17_1 : OUT std_logic ;
      filtersOuts_17_0 : OUT std_logic ;
      filtersOuts_18_7 : OUT std_logic ;
      filtersOuts_18_6 : OUT std_logic ;
      filtersOuts_18_5 : OUT std_logic ;
      filtersOuts_18_4 : OUT std_logic ;
      filtersOuts_18_3 : OUT std_logic ;
      filtersOuts_18_2 : OUT std_logic ;
      filtersOuts_18_1 : OUT std_logic ;
      filtersOuts_18_0 : OUT std_logic ;
      filtersOuts_19_7 : OUT std_logic ;
      filtersOuts_19_6 : OUT std_logic ;
      filtersOuts_19_5 : OUT std_logic ;
      filtersOuts_19_4 : OUT std_logic ;
      filtersOuts_19_3 : OUT std_logic ;
      filtersOuts_19_2 : OUT std_logic ;
      filtersOuts_19_1 : OUT std_logic ;
      filtersOuts_19_0 : OUT std_logic ;
      filtersOuts_20_7 : OUT std_logic ;
      filtersOuts_20_6 : OUT std_logic ;
      filtersOuts_20_5 : OUT std_logic ;
      filtersOuts_20_4 : OUT std_logic ;
      filtersOuts_20_3 : OUT std_logic ;
      filtersOuts_20_2 : OUT std_logic ;
      filtersOuts_20_1 : OUT std_logic ;
      filtersOuts_20_0 : OUT std_logic ;
      filtersOuts_21_7 : OUT std_logic ;
      filtersOuts_21_6 : OUT std_logic ;
      filtersOuts_21_5 : OUT std_logic ;
      filtersOuts_21_4 : OUT std_logic ;
      filtersOuts_21_3 : OUT std_logic ;
      filtersOuts_21_2 : OUT std_logic ;
      filtersOuts_21_1 : OUT std_logic ;
      filtersOuts_21_0 : OUT std_logic ;
      filtersOuts_22_7 : OUT std_logic ;
      filtersOuts_22_6 : OUT std_logic ;
      filtersOuts_22_5 : OUT std_logic ;
      filtersOuts_22_4 : OUT std_logic ;
      filtersOuts_22_3 : OUT std_logic ;
      filtersOuts_22_2 : OUT std_logic ;
      filtersOuts_22_1 : OUT std_logic ;
      filtersOuts_22_0 : OUT std_logic ;
      filtersOuts_23_7 : OUT std_logic ;
      filtersOuts_23_6 : OUT std_logic ;
      filtersOuts_23_5 : OUT std_logic ;
      filtersOuts_23_4 : OUT std_logic ;
      filtersOuts_23_3 : OUT std_logic ;
      filtersOuts_23_2 : OUT std_logic ;
      filtersOuts_23_1 : OUT std_logic ;
      filtersOuts_23_0 : OUT std_logic ;
      filtersOuts_24_7 : OUT std_logic ;
      filtersOuts_24_6 : OUT std_logic ;
      filtersOuts_24_5 : OUT std_logic ;
      filtersOuts_24_4 : OUT std_logic ;
      filtersOuts_24_3 : OUT std_logic ;
      filtersOuts_24_2 : OUT std_logic ;
      filtersOuts_24_1 : OUT std_logic ;
      filtersOuts_24_0 : OUT std_logic) ;
end RegFile ;

architecture RegFileArch of RegFile is
   component RegUnit_8_16
      port (
         filterBus : IN std_logic_vector (7 DOWNTO 0) ;
         windowBus : IN std_logic_vector (15 DOWNTO 0) ;
         regPage1NextUnit : IN std_logic_vector (15 DOWNTO 0) ;
         regPage2NextUnit : IN std_logic_vector (15 DOWNTO 0) ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         enableRegPage1 : IN std_logic ;
         enableRegPage2 : IN std_logic ;
         enableRegFilter : IN std_logic ;
         page1ReadBusOrPage2 : IN std_logic ;
         page2ReadBusOrPage1 : IN std_logic ;
         pageTurn : IN std_logic ;
         outRegPage : OUT std_logic_vector (15 DOWNTO 0) ;
         outputRegPage1 : OUT std_logic_vector (15 DOWNTO 0) ;
         outputRegPage2 : OUT std_logic_vector (15 DOWNTO 0) ;
         outFilter : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   component RegUnit_8_16_unfolded2
      port (
         filterBus : IN std_logic_vector (7 DOWNTO 0) ;
         windowBus : IN std_logic_vector (15 DOWNTO 0) ;
         regPage1NextUnit : IN std_logic_vector (15 DOWNTO 0) ;
         regPage2NextUnit : IN std_logic_vector (15 DOWNTO 0) ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         enableRegPage1 : IN std_logic ;
         enableRegPage2 : IN std_logic ;
         enableRegFilter : IN std_logic ;
         page1ReadBusOrPage2 : IN std_logic ;
         page2ReadBusOrPage1 : IN std_logic ;
         pageTurn : IN std_logic ;
         outRegPage : OUT std_logic_vector (15 DOWNTO 0) ;
         outputRegPage1 : OUT std_logic_vector (15 DOWNTO 0) ;
         outputRegPage2 : OUT std_logic_vector (15 DOWNTO 0) ;
         outFilter : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   component RegUnit_8_16_unfolded3
      port (
         filterBus : IN std_logic_vector (7 DOWNTO 0) ;
         windowBus : IN std_logic_vector (15 DOWNTO 0) ;
         regPage1NextUnit : IN std_logic_vector (15 DOWNTO 0) ;
         regPage2NextUnit : IN std_logic_vector (15 DOWNTO 0) ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         enableRegPage1 : IN std_logic ;
         enableRegPage2 : IN std_logic ;
         enableRegFilter : IN std_logic ;
         page1ReadBusOrPage2 : IN std_logic ;
         page2ReadBusOrPage1 : IN std_logic ;
         pageTurn : IN std_logic ;
         outRegPage : OUT std_logic_vector (15 DOWNTO 0) ;
         outputRegPage1 : OUT std_logic_vector (15 DOWNTO 0) ;
         outputRegPage2 : OUT std_logic_vector (15 DOWNTO 0) ;
         outFilter : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal page1Out_5_15, page1Out_5_14, page1Out_5_13, page1Out_5_12, 
      page1Out_5_11, page1Out_5_10, page1Out_5_9, page1Out_5_8, page1Out_5_7, 
      page1Out_5_6, page1Out_5_5, page1Out_5_4, page1Out_5_3, page1Out_5_2, 
      page1Out_5_1, page1Out_5_0, page1Out_6_15, page1Out_6_14, 
      page1Out_6_13, page1Out_6_12, page1Out_6_11, page1Out_6_10, 
      page1Out_6_9, page1Out_6_8, page1Out_6_7, page1Out_6_6, page1Out_6_5, 
      page1Out_6_4, page1Out_6_3, page1Out_6_2, page1Out_6_1, page1Out_6_0, 
      page1Out_7_15, page1Out_7_14, page1Out_7_13, page1Out_7_12, 
      page1Out_7_11, page1Out_7_10, page1Out_7_9, page1Out_7_8, page1Out_7_7, 
      page1Out_7_6, page1Out_7_5, page1Out_7_4, page1Out_7_3, page1Out_7_2, 
      page1Out_7_1, page1Out_7_0, page1Out_8_15, page1Out_8_14, 
      page1Out_8_13, page1Out_8_12, page1Out_8_11, page1Out_8_10, 
      page1Out_8_9, page1Out_8_8, page1Out_8_7, page1Out_8_6, page1Out_8_5, 
      page1Out_8_4, page1Out_8_3, page1Out_8_2, page1Out_8_1, page1Out_8_0, 
      page1Out_9_15, page1Out_9_14, page1Out_9_13, page1Out_9_12, 
      page1Out_9_11, page1Out_9_10, page1Out_9_9, page1Out_9_8, page1Out_9_7, 
      page1Out_9_6, page1Out_9_5, page1Out_9_4, page1Out_9_3, page1Out_9_2, 
      page1Out_9_1, page1Out_9_0, page1Out_10_15, page1Out_10_14, 
      page1Out_10_13, page1Out_10_12, page1Out_10_11, page1Out_10_10, 
      page1Out_10_9, page1Out_10_8, page1Out_10_7, page1Out_10_6, 
      page1Out_10_5, page1Out_10_4, page1Out_10_3, page1Out_10_2, 
      page1Out_10_1, page1Out_10_0, page1Out_11_15, page1Out_11_14, 
      page1Out_11_13, page1Out_11_12, page1Out_11_11, page1Out_11_10, 
      page1Out_11_9, page1Out_11_8, page1Out_11_7, page1Out_11_6, 
      page1Out_11_5, page1Out_11_4, page1Out_11_3, page1Out_11_2, 
      page1Out_11_1, page1Out_11_0, page1Out_12_15, page1Out_12_14, 
      page1Out_12_13, page1Out_12_12, page1Out_12_11, page1Out_12_10, 
      page1Out_12_9, page1Out_12_8, page1Out_12_7, page1Out_12_6, 
      page1Out_12_5, page1Out_12_4, page1Out_12_3, page1Out_12_2, 
      page1Out_12_1, page1Out_12_0, page1Out_13_15, page1Out_13_14, 
      page1Out_13_13, page1Out_13_12, page1Out_13_11, page1Out_13_10, 
      page1Out_13_9, page1Out_13_8, page1Out_13_7, page1Out_13_6, 
      page1Out_13_5, page1Out_13_4, page1Out_13_3, page1Out_13_2, 
      page1Out_13_1, page1Out_13_0, page1Out_14_15, page1Out_14_14, 
      page1Out_14_13, page1Out_14_12, page1Out_14_11, page1Out_14_10, 
      page1Out_14_9, page1Out_14_8, page1Out_14_7, page1Out_14_6, 
      page1Out_14_5, page1Out_14_4, page1Out_14_3, page1Out_14_2, 
      page1Out_14_1, page1Out_14_0, page1Out_15_15, page1Out_15_14, 
      page1Out_15_13, page1Out_15_12, page1Out_15_11, page1Out_15_10, 
      page1Out_15_9, page1Out_15_8, page1Out_15_7, page1Out_15_6, 
      page1Out_15_5, page1Out_15_4, page1Out_15_3, page1Out_15_2, 
      page1Out_15_1, page1Out_15_0, page1Out_16_15, page1Out_16_14, 
      page1Out_16_13, page1Out_16_12, page1Out_16_11, page1Out_16_10, 
      page1Out_16_9, page1Out_16_8, page1Out_16_7, page1Out_16_6, 
      page1Out_16_5, page1Out_16_4, page1Out_16_3, page1Out_16_2, 
      page1Out_16_1, page1Out_16_0, page1Out_17_15, page1Out_17_14, 
      page1Out_17_13, page1Out_17_12, page1Out_17_11, page1Out_17_10, 
      page1Out_17_9, page1Out_17_8, page1Out_17_7, page1Out_17_6, 
      page1Out_17_5, page1Out_17_4, page1Out_17_3, page1Out_17_2, 
      page1Out_17_1, page1Out_17_0, page1Out_18_15, page1Out_18_14, 
      page1Out_18_13, page1Out_18_12, page1Out_18_11, page1Out_18_10, 
      page1Out_18_9, page1Out_18_8, page1Out_18_7, page1Out_18_6, 
      page1Out_18_5, page1Out_18_4, page1Out_18_3, page1Out_18_2, 
      page1Out_18_1, page1Out_18_0, page1Out_19_15, page1Out_19_14, 
      page1Out_19_13, page1Out_19_12, page1Out_19_11, page1Out_19_10, 
      page1Out_19_9, page1Out_19_8, page1Out_19_7, page1Out_19_6, 
      page1Out_19_5, page1Out_19_4, page1Out_19_3, page1Out_19_2, 
      page1Out_19_1, page1Out_19_0, page1Out_20_15, page1Out_20_14, 
      page1Out_20_13, page1Out_20_12, page1Out_20_11, page1Out_20_10, 
      page1Out_20_9, page1Out_20_8, page1Out_20_7, page1Out_20_6, 
      page1Out_20_5, page1Out_20_4, page1Out_20_3, page1Out_20_2, 
      page1Out_20_1, page1Out_20_0, page1Out_21_15, page1Out_21_14, 
      page1Out_21_13, page1Out_21_12, page1Out_21_11, page1Out_21_10, 
      page1Out_21_9, page1Out_21_8, page1Out_21_7, page1Out_21_6, 
      page1Out_21_5, page1Out_21_4, page1Out_21_3, page1Out_21_2, 
      page1Out_21_1, page1Out_21_0, page1Out_22_15, page1Out_22_14, 
      page1Out_22_13, page1Out_22_12, page1Out_22_11, page1Out_22_10, 
      page1Out_22_9, page1Out_22_8, page1Out_22_7, page1Out_22_6, 
      page1Out_22_5, page1Out_22_4, page1Out_22_3, page1Out_22_2, 
      page1Out_22_1, page1Out_22_0, page1Out_23_15, page1Out_23_14, 
      page1Out_23_13, page1Out_23_12, page1Out_23_11, page1Out_23_10, 
      page1Out_23_9, page1Out_23_8, page1Out_23_7, page1Out_23_6, 
      page1Out_23_5, page1Out_23_4, page1Out_23_3, page1Out_23_2, 
      page1Out_23_1, page1Out_23_0, page1Out_24_15, page1Out_24_14, 
      page1Out_24_13, page1Out_24_12, page1Out_24_11, page1Out_24_10, 
      page1Out_24_9, page1Out_24_8, page1Out_24_7, page1Out_24_6, 
      page1Out_24_5, page1Out_24_4, page1Out_24_3, page1Out_24_2, 
      page1Out_24_1, page1Out_24_0, page2Out_5_15, page2Out_5_14, 
      page2Out_5_13, page2Out_5_12, page2Out_5_11, page2Out_5_10, 
      page2Out_5_9, page2Out_5_8, page2Out_5_7, page2Out_5_6, page2Out_5_5, 
      page2Out_5_4, page2Out_5_3, page2Out_5_2, page2Out_5_1, page2Out_5_0, 
      page2Out_6_15, page2Out_6_14, page2Out_6_13, page2Out_6_12, 
      page2Out_6_11, page2Out_6_10, page2Out_6_9, page2Out_6_8, page2Out_6_7, 
      page2Out_6_6, page2Out_6_5, page2Out_6_4, page2Out_6_3, page2Out_6_2, 
      page2Out_6_1, page2Out_6_0, page2Out_7_15, page2Out_7_14, 
      page2Out_7_13, page2Out_7_12, page2Out_7_11, page2Out_7_10, 
      page2Out_7_9, page2Out_7_8, page2Out_7_7, page2Out_7_6, page2Out_7_5, 
      page2Out_7_4, page2Out_7_3, page2Out_7_2, page2Out_7_1, page2Out_7_0, 
      page2Out_8_15, page2Out_8_14, page2Out_8_13, page2Out_8_12, 
      page2Out_8_11, page2Out_8_10, page2Out_8_9, page2Out_8_8, page2Out_8_7, 
      page2Out_8_6, page2Out_8_5, page2Out_8_4, page2Out_8_3, page2Out_8_2, 
      page2Out_8_1, page2Out_8_0, page2Out_9_15, page2Out_9_14, 
      page2Out_9_13, page2Out_9_12, page2Out_9_11, page2Out_9_10, 
      page2Out_9_9, page2Out_9_8, page2Out_9_7, page2Out_9_6, page2Out_9_5, 
      page2Out_9_4, page2Out_9_3, page2Out_9_2, page2Out_9_1, page2Out_9_0, 
      page2Out_10_15, page2Out_10_14, page2Out_10_13, page2Out_10_12, 
      page2Out_10_11, page2Out_10_10, page2Out_10_9, page2Out_10_8, 
      page2Out_10_7, page2Out_10_6, page2Out_10_5, page2Out_10_4, 
      page2Out_10_3, page2Out_10_2, page2Out_10_1, page2Out_10_0, 
      page2Out_11_15, page2Out_11_14, page2Out_11_13, page2Out_11_12, 
      page2Out_11_11, page2Out_11_10, page2Out_11_9, page2Out_11_8, 
      page2Out_11_7, page2Out_11_6, page2Out_11_5, page2Out_11_4, 
      page2Out_11_3, page2Out_11_2, page2Out_11_1, page2Out_11_0, 
      page2Out_12_15, page2Out_12_14, page2Out_12_13, page2Out_12_12, 
      page2Out_12_11, page2Out_12_10, page2Out_12_9, page2Out_12_8, 
      page2Out_12_7, page2Out_12_6, page2Out_12_5, page2Out_12_4, 
      page2Out_12_3, page2Out_12_2, page2Out_12_1, page2Out_12_0, 
      page2Out_13_15, page2Out_13_14, page2Out_13_13, page2Out_13_12, 
      page2Out_13_11, page2Out_13_10, page2Out_13_9, page2Out_13_8, 
      page2Out_13_7, page2Out_13_6, page2Out_13_5, page2Out_13_4, 
      page2Out_13_3, page2Out_13_2, page2Out_13_1, page2Out_13_0, 
      page2Out_14_15, page2Out_14_14, page2Out_14_13, page2Out_14_12, 
      page2Out_14_11, page2Out_14_10, page2Out_14_9, page2Out_14_8, 
      page2Out_14_7, page2Out_14_6, page2Out_14_5, page2Out_14_4, 
      page2Out_14_3, page2Out_14_2, page2Out_14_1, page2Out_14_0, 
      page2Out_15_15, page2Out_15_14, page2Out_15_13, page2Out_15_12, 
      page2Out_15_11, page2Out_15_10, page2Out_15_9, page2Out_15_8, 
      page2Out_15_7, page2Out_15_6, page2Out_15_5, page2Out_15_4, 
      page2Out_15_3, page2Out_15_2, page2Out_15_1, page2Out_15_0, 
      page2Out_16_15, page2Out_16_14, page2Out_16_13, page2Out_16_12, 
      page2Out_16_11, page2Out_16_10, page2Out_16_9, page2Out_16_8, 
      page2Out_16_7, page2Out_16_6, page2Out_16_5, page2Out_16_4, 
      page2Out_16_3, page2Out_16_2, page2Out_16_1, page2Out_16_0, 
      page2Out_17_15, page2Out_17_14, page2Out_17_13, page2Out_17_12, 
      page2Out_17_11, page2Out_17_10, page2Out_17_9, page2Out_17_8, 
      page2Out_17_7, page2Out_17_6, page2Out_17_5, page2Out_17_4, 
      page2Out_17_3, page2Out_17_2, page2Out_17_1, page2Out_17_0, 
      page2Out_18_15, page2Out_18_14, page2Out_18_13, page2Out_18_12, 
      page2Out_18_11, page2Out_18_10, page2Out_18_9, page2Out_18_8, 
      page2Out_18_7, page2Out_18_6, page2Out_18_5, page2Out_18_4, 
      page2Out_18_3, page2Out_18_2, page2Out_18_1, page2Out_18_0, 
      page2Out_19_15, page2Out_19_14, page2Out_19_13, page2Out_19_12, 
      page2Out_19_11, page2Out_19_10, page2Out_19_9, page2Out_19_8, 
      page2Out_19_7, page2Out_19_6, page2Out_19_5, page2Out_19_4, 
      page2Out_19_3, page2Out_19_2, page2Out_19_1, page2Out_19_0, 
      page2Out_20_15, page2Out_20_14, page2Out_20_13, page2Out_20_12, 
      page2Out_20_11, page2Out_20_10, page2Out_20_9, page2Out_20_8, 
      page2Out_20_7, page2Out_20_6, page2Out_20_5, page2Out_20_4, 
      page2Out_20_3, page2Out_20_2, page2Out_20_1, page2Out_20_0, 
      page2Out_21_15, page2Out_21_14, page2Out_21_13, page2Out_21_12, 
      page2Out_21_11, page2Out_21_10, page2Out_21_9, page2Out_21_8, 
      page2Out_21_7, page2Out_21_6, page2Out_21_5, page2Out_21_4, 
      page2Out_21_3, page2Out_21_2, page2Out_21_1, page2Out_21_0, 
      page2Out_22_15, page2Out_22_14, page2Out_22_13, page2Out_22_12, 
      page2Out_22_11, page2Out_22_10, page2Out_22_9, page2Out_22_8, 
      page2Out_22_7, page2Out_22_6, page2Out_22_5, page2Out_22_4, 
      page2Out_22_3, page2Out_22_2, page2Out_22_1, page2Out_22_0, 
      page2Out_23_15, page2Out_23_14, page2Out_23_13, page2Out_23_12, 
      page2Out_23_11, page2Out_23_10, page2Out_23_9, page2Out_23_8, 
      page2Out_23_7, page2Out_23_6, page2Out_23_5, page2Out_23_4, 
      page2Out_23_3, page2Out_23_2, page2Out_23_1, page2Out_23_0, 
      page2Out_24_15, page2Out_24_14, page2Out_24_13, page2Out_24_12, 
      page2Out_24_11, page2Out_24_10, page2Out_24_9, page2Out_24_8, 
      page2Out_24_7, page2Out_24_6, page2Out_24_5, page2Out_24_4, 
      page2Out_24_3, page2Out_24_2, page2Out_24_1, page2Out_24_0, 
      page1Enables_0, page1Enables_1, page1Enables_2, page1Enables_3, 
      page1Enables_4, page2Enables_0, page2Enables_1, page2Enables_2, 
      page2Enables_3, page2Enables_4, filterEnables_0, filterEnables_1, 
      filterEnables_2, filterEnables_3, page1Out_25_15, nx4, nx62, nx3429, 
      nx3433, nx3435, nx3438, nx3440, nx3443, nx3445, nx3448, nx3452, nx3455, 
      nx3461, nx3464, nx3478, nx3480, nx3482, nx3484, nx3486, nx3488, nx3490, 
      nx3492, nx3494, nx3496: std_logic ;
   
   signal DANGLING : std_logic_vector (159 downto 0 );

begin
   loop1_0_regRowMap_loop1_0_regUnitMap : RegUnit_8_16 port map ( 
      filterBus(7)=>filterBus(7), filterBus(6)=>filterBus(6), filterBus(5)=>
      filterBus(5), filterBus(4)=>filterBus(4), filterBus(3)=>filterBus(3), 
      filterBus(2)=>filterBus(2), filterBus(1)=>filterBus(1), filterBus(0)=>
      filterBus(0), windowBus(15)=>windowBus(15), windowBus(14)=>
      windowBus(14), windowBus(13)=>windowBus(13), windowBus(12)=>
      windowBus(12), windowBus(11)=>windowBus(11), windowBus(10)=>
      windowBus(10), windowBus(9)=>windowBus(9), windowBus(8)=>windowBus(8), 
      windowBus(7)=>windowBus(7), windowBus(6)=>windowBus(6), windowBus(5)=>
      windowBus(5), windowBus(4)=>windowBus(4), windowBus(3)=>windowBus(3), 
      windowBus(2)=>windowBus(2), windowBus(1)=>windowBus(1), windowBus(0)=>
      windowBus(0), regPage1NextUnit(15)=>page1Out_5_15, 
      regPage1NextUnit(14)=>page1Out_5_14, regPage1NextUnit(13)=>
      page1Out_5_13, regPage1NextUnit(12)=>page1Out_5_12, 
      regPage1NextUnit(11)=>page1Out_5_11, regPage1NextUnit(10)=>
      page1Out_5_10, regPage1NextUnit(9)=>page1Out_5_9, regPage1NextUnit(8)
      =>page1Out_5_8, regPage1NextUnit(7)=>page1Out_5_7, regPage1NextUnit(6)
      =>page1Out_5_6, regPage1NextUnit(5)=>page1Out_5_5, regPage1NextUnit(4)
      =>page1Out_5_4, regPage1NextUnit(3)=>page1Out_5_3, regPage1NextUnit(2)
      =>page1Out_5_2, regPage1NextUnit(1)=>page1Out_5_1, regPage1NextUnit(0)
      =>page1Out_5_0, regPage2NextUnit(15)=>page2Out_5_15, 
      regPage2NextUnit(14)=>page2Out_5_14, regPage2NextUnit(13)=>
      page2Out_5_13, regPage2NextUnit(12)=>page2Out_5_12, 
      regPage2NextUnit(11)=>page2Out_5_11, regPage2NextUnit(10)=>
      page2Out_5_10, regPage2NextUnit(9)=>page2Out_5_9, regPage2NextUnit(8)
      =>page2Out_5_8, regPage2NextUnit(7)=>page2Out_5_7, regPage2NextUnit(6)
      =>page2Out_5_6, regPage2NextUnit(5)=>page2Out_5_5, regPage2NextUnit(4)
      =>page2Out_5_4, regPage2NextUnit(3)=>page2Out_5_3, regPage2NextUnit(2)
      =>page2Out_5_2, regPage2NextUnit(1)=>page2Out_5_1, regPage2NextUnit(0)
      =>page2Out_5_0, clk=>clk, rst=>rst, enableRegPage1=>page1Enables_0, 
      enableRegPage2=>page2Enables_0, enableRegFilter=>nx3478, 
      page1ReadBusOrPage2=>shift2To1, page2ReadBusOrPage1=>shift1To2, 
      pageTurn=>pageTurn, outRegPage(15)=>pagesOuts_0_15, outRegPage(14)=>
      pagesOuts_0_14, outRegPage(13)=>pagesOuts_0_13, outRegPage(12)=>
      pagesOuts_0_12, outRegPage(11)=>pagesOuts_0_11, outRegPage(10)=>
      pagesOuts_0_10, outRegPage(9)=>pagesOuts_0_9, outRegPage(8)=>
      pagesOuts_0_8, outRegPage(7)=>pagesOuts_0_7, outRegPage(6)=>
      pagesOuts_0_6, outRegPage(5)=>pagesOuts_0_5, outRegPage(4)=>
      pagesOuts_0_4, outRegPage(3)=>pagesOuts_0_3, outRegPage(2)=>
      pagesOuts_0_2, outRegPage(1)=>pagesOuts_0_1, outRegPage(0)=>
      pagesOuts_0_0, outputRegPage1(15)=>DANGLING(0), outputRegPage1(14)=>
      DANGLING(1), outputRegPage1(13)=>DANGLING(2), outputRegPage1(12)=>
      DANGLING(3), outputRegPage1(11)=>DANGLING(4), outputRegPage1(10)=>
      DANGLING(5), outputRegPage1(9)=>DANGLING(6), outputRegPage1(8)=>
      DANGLING(7), outputRegPage1(7)=>DANGLING(8), outputRegPage1(6)=>
      DANGLING(9), outputRegPage1(5)=>DANGLING(10), outputRegPage1(4)=>
      DANGLING(11), outputRegPage1(3)=>DANGLING(12), outputRegPage1(2)=>
      DANGLING(13), outputRegPage1(1)=>DANGLING(14), outputRegPage1(0)=>
      DANGLING(15), outputRegPage2(15)=>DANGLING(16), outputRegPage2(14)=>
      DANGLING(17), outputRegPage2(13)=>DANGLING(18), outputRegPage2(12)=>
      DANGLING(19), outputRegPage2(11)=>DANGLING(20), outputRegPage2(10)=>
      DANGLING(21), outputRegPage2(9)=>DANGLING(22), outputRegPage2(8)=>
      DANGLING(23), outputRegPage2(7)=>DANGLING(24), outputRegPage2(6)=>
      DANGLING(25), outputRegPage2(5)=>DANGLING(26), outputRegPage2(4)=>
      DANGLING(27), outputRegPage2(3)=>DANGLING(28), outputRegPage2(2)=>
      DANGLING(29), outputRegPage2(1)=>DANGLING(30), outputRegPage2(0)=>
      DANGLING(31), outFilter(7)=>filtersOuts_0_7, outFilter(6)=>
      filtersOuts_0_6, outFilter(5)=>filtersOuts_0_5, outFilter(4)=>
      filtersOuts_0_4, outFilter(3)=>filtersOuts_0_3, outFilter(2)=>
      filtersOuts_0_2, outFilter(1)=>filtersOuts_0_1, outFilter(0)=>
      filtersOuts_0_0);
   loop1_0_regRowMap_loop1_1_regUnitMap : RegUnit_8_16 port map ( 
      filterBus(7)=>filterBus(15), filterBus(6)=>filterBus(14), filterBus(5)
      =>filterBus(13), filterBus(4)=>filterBus(12), filterBus(3)=>
      filterBus(11), filterBus(2)=>filterBus(10), filterBus(1)=>filterBus(9), 
      filterBus(0)=>filterBus(8), windowBus(15)=>windowBus(31), 
      windowBus(14)=>windowBus(30), windowBus(13)=>windowBus(29), 
      windowBus(12)=>windowBus(28), windowBus(11)=>windowBus(27), 
      windowBus(10)=>windowBus(26), windowBus(9)=>windowBus(25), 
      windowBus(8)=>windowBus(24), windowBus(7)=>windowBus(23), windowBus(6)
      =>windowBus(22), windowBus(5)=>windowBus(21), windowBus(4)=>
      windowBus(20), windowBus(3)=>windowBus(19), windowBus(2)=>
      windowBus(18), windowBus(1)=>windowBus(17), windowBus(0)=>
      windowBus(16), regPage1NextUnit(15)=>page1Out_6_15, 
      regPage1NextUnit(14)=>page1Out_6_14, regPage1NextUnit(13)=>
      page1Out_6_13, regPage1NextUnit(12)=>page1Out_6_12, 
      regPage1NextUnit(11)=>page1Out_6_11, regPage1NextUnit(10)=>
      page1Out_6_10, regPage1NextUnit(9)=>page1Out_6_9, regPage1NextUnit(8)
      =>page1Out_6_8, regPage1NextUnit(7)=>page1Out_6_7, regPage1NextUnit(6)
      =>page1Out_6_6, regPage1NextUnit(5)=>page1Out_6_5, regPage1NextUnit(4)
      =>page1Out_6_4, regPage1NextUnit(3)=>page1Out_6_3, regPage1NextUnit(2)
      =>page1Out_6_2, regPage1NextUnit(1)=>page1Out_6_1, regPage1NextUnit(0)
      =>page1Out_6_0, regPage2NextUnit(15)=>page2Out_6_15, 
      regPage2NextUnit(14)=>page2Out_6_14, regPage2NextUnit(13)=>
      page2Out_6_13, regPage2NextUnit(12)=>page2Out_6_12, 
      regPage2NextUnit(11)=>page2Out_6_11, regPage2NextUnit(10)=>
      page2Out_6_10, regPage2NextUnit(9)=>page2Out_6_9, regPage2NextUnit(8)
      =>page2Out_6_8, regPage2NextUnit(7)=>page2Out_6_7, regPage2NextUnit(6)
      =>page2Out_6_6, regPage2NextUnit(5)=>page2Out_6_5, regPage2NextUnit(4)
      =>page2Out_6_4, regPage2NextUnit(3)=>page2Out_6_3, regPage2NextUnit(2)
      =>page2Out_6_2, regPage2NextUnit(1)=>page2Out_6_1, regPage2NextUnit(0)
      =>page2Out_6_0, clk=>clk, rst=>rst, enableRegPage1=>page1Enables_0, 
      enableRegPage2=>page2Enables_0, enableRegFilter=>nx3478, 
      page1ReadBusOrPage2=>shift2To1, page2ReadBusOrPage1=>shift1To2, 
      pageTurn=>pageTurn, outRegPage(15)=>pagesOuts_1_15, outRegPage(14)=>
      pagesOuts_1_14, outRegPage(13)=>pagesOuts_1_13, outRegPage(12)=>
      pagesOuts_1_12, outRegPage(11)=>pagesOuts_1_11, outRegPage(10)=>
      pagesOuts_1_10, outRegPage(9)=>pagesOuts_1_9, outRegPage(8)=>
      pagesOuts_1_8, outRegPage(7)=>pagesOuts_1_7, outRegPage(6)=>
      pagesOuts_1_6, outRegPage(5)=>pagesOuts_1_5, outRegPage(4)=>
      pagesOuts_1_4, outRegPage(3)=>pagesOuts_1_3, outRegPage(2)=>
      pagesOuts_1_2, outRegPage(1)=>pagesOuts_1_1, outRegPage(0)=>
      pagesOuts_1_0, outputRegPage1(15)=>DANGLING(32), outputRegPage1(14)=>
      DANGLING(33), outputRegPage1(13)=>DANGLING(34), outputRegPage1(12)=>
      DANGLING(35), outputRegPage1(11)=>DANGLING(36), outputRegPage1(10)=>
      DANGLING(37), outputRegPage1(9)=>DANGLING(38), outputRegPage1(8)=>
      DANGLING(39), outputRegPage1(7)=>DANGLING(40), outputRegPage1(6)=>
      DANGLING(41), outputRegPage1(5)=>DANGLING(42), outputRegPage1(4)=>
      DANGLING(43), outputRegPage1(3)=>DANGLING(44), outputRegPage1(2)=>
      DANGLING(45), outputRegPage1(1)=>DANGLING(46), outputRegPage1(0)=>
      DANGLING(47), outputRegPage2(15)=>DANGLING(48), outputRegPage2(14)=>
      DANGLING(49), outputRegPage2(13)=>DANGLING(50), outputRegPage2(12)=>
      DANGLING(51), outputRegPage2(11)=>DANGLING(52), outputRegPage2(10)=>
      DANGLING(53), outputRegPage2(9)=>DANGLING(54), outputRegPage2(8)=>
      DANGLING(55), outputRegPage2(7)=>DANGLING(56), outputRegPage2(6)=>
      DANGLING(57), outputRegPage2(5)=>DANGLING(58), outputRegPage2(4)=>
      DANGLING(59), outputRegPage2(3)=>DANGLING(60), outputRegPage2(2)=>
      DANGLING(61), outputRegPage2(1)=>DANGLING(62), outputRegPage2(0)=>
      DANGLING(63), outFilter(7)=>filtersOuts_1_7, outFilter(6)=>
      filtersOuts_1_6, outFilter(5)=>filtersOuts_1_5, outFilter(4)=>
      filtersOuts_1_4, outFilter(3)=>filtersOuts_1_3, outFilter(2)=>
      filtersOuts_1_2, outFilter(1)=>filtersOuts_1_1, outFilter(0)=>
      filtersOuts_1_0);
   loop1_0_regRowMap_loop1_2_regUnitMap : RegUnit_8_16 port map ( 
      filterBus(7)=>filterBus(23), filterBus(6)=>filterBus(22), filterBus(5)
      =>filterBus(21), filterBus(4)=>filterBus(20), filterBus(3)=>
      filterBus(19), filterBus(2)=>filterBus(18), filterBus(1)=>
      filterBus(17), filterBus(0)=>filterBus(16), windowBus(15)=>
      windowBus(47), windowBus(14)=>windowBus(46), windowBus(13)=>
      windowBus(45), windowBus(12)=>windowBus(44), windowBus(11)=>
      windowBus(43), windowBus(10)=>windowBus(42), windowBus(9)=>
      windowBus(41), windowBus(8)=>windowBus(40), windowBus(7)=>
      windowBus(39), windowBus(6)=>windowBus(38), windowBus(5)=>
      windowBus(37), windowBus(4)=>windowBus(36), windowBus(3)=>
      windowBus(35), windowBus(2)=>windowBus(34), windowBus(1)=>
      windowBus(33), windowBus(0)=>windowBus(32), regPage1NextUnit(15)=>
      page1Out_7_15, regPage1NextUnit(14)=>page1Out_7_14, 
      regPage1NextUnit(13)=>page1Out_7_13, regPage1NextUnit(12)=>
      page1Out_7_12, regPage1NextUnit(11)=>page1Out_7_11, 
      regPage1NextUnit(10)=>page1Out_7_10, regPage1NextUnit(9)=>page1Out_7_9, 
      regPage1NextUnit(8)=>page1Out_7_8, regPage1NextUnit(7)=>page1Out_7_7, 
      regPage1NextUnit(6)=>page1Out_7_6, regPage1NextUnit(5)=>page1Out_7_5, 
      regPage1NextUnit(4)=>page1Out_7_4, regPage1NextUnit(3)=>page1Out_7_3, 
      regPage1NextUnit(2)=>page1Out_7_2, regPage1NextUnit(1)=>page1Out_7_1, 
      regPage1NextUnit(0)=>page1Out_7_0, regPage2NextUnit(15)=>page2Out_7_15, 
      regPage2NextUnit(14)=>page2Out_7_14, regPage2NextUnit(13)=>
      page2Out_7_13, regPage2NextUnit(12)=>page2Out_7_12, 
      regPage2NextUnit(11)=>page2Out_7_11, regPage2NextUnit(10)=>
      page2Out_7_10, regPage2NextUnit(9)=>page2Out_7_9, regPage2NextUnit(8)
      =>page2Out_7_8, regPage2NextUnit(7)=>page2Out_7_7, regPage2NextUnit(6)
      =>page2Out_7_6, regPage2NextUnit(5)=>page2Out_7_5, regPage2NextUnit(4)
      =>page2Out_7_4, regPage2NextUnit(3)=>page2Out_7_3, regPage2NextUnit(2)
      =>page2Out_7_2, regPage2NextUnit(1)=>page2Out_7_1, regPage2NextUnit(0)
      =>page2Out_7_0, clk=>clk, rst=>rst, enableRegPage1=>page1Enables_0, 
      enableRegPage2=>page2Enables_0, enableRegFilter=>nx3478, 
      page1ReadBusOrPage2=>shift2To1, page2ReadBusOrPage1=>shift1To2, 
      pageTurn=>pageTurn, outRegPage(15)=>pagesOuts_2_15, outRegPage(14)=>
      pagesOuts_2_14, outRegPage(13)=>pagesOuts_2_13, outRegPage(12)=>
      pagesOuts_2_12, outRegPage(11)=>pagesOuts_2_11, outRegPage(10)=>
      pagesOuts_2_10, outRegPage(9)=>pagesOuts_2_9, outRegPage(8)=>
      pagesOuts_2_8, outRegPage(7)=>pagesOuts_2_7, outRegPage(6)=>
      pagesOuts_2_6, outRegPage(5)=>pagesOuts_2_5, outRegPage(4)=>
      pagesOuts_2_4, outRegPage(3)=>pagesOuts_2_3, outRegPage(2)=>
      pagesOuts_2_2, outRegPage(1)=>pagesOuts_2_1, outRegPage(0)=>
      pagesOuts_2_0, outputRegPage1(15)=>DANGLING(64), outputRegPage1(14)=>
      DANGLING(65), outputRegPage1(13)=>DANGLING(66), outputRegPage1(12)=>
      DANGLING(67), outputRegPage1(11)=>DANGLING(68), outputRegPage1(10)=>
      DANGLING(69), outputRegPage1(9)=>DANGLING(70), outputRegPage1(8)=>
      DANGLING(71), outputRegPage1(7)=>DANGLING(72), outputRegPage1(6)=>
      DANGLING(73), outputRegPage1(5)=>DANGLING(74), outputRegPage1(4)=>
      DANGLING(75), outputRegPage1(3)=>DANGLING(76), outputRegPage1(2)=>
      DANGLING(77), outputRegPage1(1)=>DANGLING(78), outputRegPage1(0)=>
      DANGLING(79), outputRegPage2(15)=>DANGLING(80), outputRegPage2(14)=>
      DANGLING(81), outputRegPage2(13)=>DANGLING(82), outputRegPage2(12)=>
      DANGLING(83), outputRegPage2(11)=>DANGLING(84), outputRegPage2(10)=>
      DANGLING(85), outputRegPage2(9)=>DANGLING(86), outputRegPage2(8)=>
      DANGLING(87), outputRegPage2(7)=>DANGLING(88), outputRegPage2(6)=>
      DANGLING(89), outputRegPage2(5)=>DANGLING(90), outputRegPage2(4)=>
      DANGLING(91), outputRegPage2(3)=>DANGLING(92), outputRegPage2(2)=>
      DANGLING(93), outputRegPage2(1)=>DANGLING(94), outputRegPage2(0)=>
      DANGLING(95), outFilter(7)=>filtersOuts_2_7, outFilter(6)=>
      filtersOuts_2_6, outFilter(5)=>filtersOuts_2_5, outFilter(4)=>
      filtersOuts_2_4, outFilter(3)=>filtersOuts_2_3, outFilter(2)=>
      filtersOuts_2_2, outFilter(1)=>filtersOuts_2_1, outFilter(0)=>
      filtersOuts_2_0);
   loop1_0_regRowMap_loop1_3_regUnitMap : RegUnit_8_16 port map ( 
      filterBus(7)=>filterBus(31), filterBus(6)=>filterBus(30), filterBus(5)
      =>filterBus(29), filterBus(4)=>filterBus(28), filterBus(3)=>
      filterBus(27), filterBus(2)=>filterBus(26), filterBus(1)=>
      filterBus(25), filterBus(0)=>filterBus(24), windowBus(15)=>
      windowBus(63), windowBus(14)=>windowBus(62), windowBus(13)=>
      windowBus(61), windowBus(12)=>windowBus(60), windowBus(11)=>
      windowBus(59), windowBus(10)=>windowBus(58), windowBus(9)=>
      windowBus(57), windowBus(8)=>windowBus(56), windowBus(7)=>
      windowBus(55), windowBus(6)=>windowBus(54), windowBus(5)=>
      windowBus(53), windowBus(4)=>windowBus(52), windowBus(3)=>
      windowBus(51), windowBus(2)=>windowBus(50), windowBus(1)=>
      windowBus(49), windowBus(0)=>windowBus(48), regPage1NextUnit(15)=>
      page1Out_8_15, regPage1NextUnit(14)=>page1Out_8_14, 
      regPage1NextUnit(13)=>page1Out_8_13, regPage1NextUnit(12)=>
      page1Out_8_12, regPage1NextUnit(11)=>page1Out_8_11, 
      regPage1NextUnit(10)=>page1Out_8_10, regPage1NextUnit(9)=>page1Out_8_9, 
      regPage1NextUnit(8)=>page1Out_8_8, regPage1NextUnit(7)=>page1Out_8_7, 
      regPage1NextUnit(6)=>page1Out_8_6, regPage1NextUnit(5)=>page1Out_8_5, 
      regPage1NextUnit(4)=>page1Out_8_4, regPage1NextUnit(3)=>page1Out_8_3, 
      regPage1NextUnit(2)=>page1Out_8_2, regPage1NextUnit(1)=>page1Out_8_1, 
      regPage1NextUnit(0)=>page1Out_8_0, regPage2NextUnit(15)=>page2Out_8_15, 
      regPage2NextUnit(14)=>page2Out_8_14, regPage2NextUnit(13)=>
      page2Out_8_13, regPage2NextUnit(12)=>page2Out_8_12, 
      regPage2NextUnit(11)=>page2Out_8_11, regPage2NextUnit(10)=>
      page2Out_8_10, regPage2NextUnit(9)=>page2Out_8_9, regPage2NextUnit(8)
      =>page2Out_8_8, regPage2NextUnit(7)=>page2Out_8_7, regPage2NextUnit(6)
      =>page2Out_8_6, regPage2NextUnit(5)=>page2Out_8_5, regPage2NextUnit(4)
      =>page2Out_8_4, regPage2NextUnit(3)=>page2Out_8_3, regPage2NextUnit(2)
      =>page2Out_8_2, regPage2NextUnit(1)=>page2Out_8_1, regPage2NextUnit(0)
      =>page2Out_8_0, clk=>clk, rst=>rst, enableRegPage1=>page1Enables_0, 
      enableRegPage2=>page2Enables_0, enableRegFilter=>nx3480, 
      page1ReadBusOrPage2=>shift2To1, page2ReadBusOrPage1=>shift1To2, 
      pageTurn=>pageTurn, outRegPage(15)=>pagesOuts_15_15, outRegPage(14)=>
      pagesOuts_15_14, outRegPage(13)=>pagesOuts_15_13, outRegPage(12)=>
      pagesOuts_15_12, outRegPage(11)=>pagesOuts_15_11, outRegPage(10)=>
      pagesOuts_15_10, outRegPage(9)=>pagesOuts_15_9, outRegPage(8)=>
      pagesOuts_15_8, outRegPage(7)=>pagesOuts_15_7, outRegPage(6)=>
      pagesOuts_15_6, outRegPage(5)=>pagesOuts_15_5, outRegPage(4)=>
      pagesOuts_15_4, outRegPage(3)=>pagesOuts_15_3, outRegPage(2)=>
      pagesOuts_15_2, outRegPage(1)=>pagesOuts_15_1, outRegPage(0)=>
      pagesOuts_15_0, outputRegPage1(15)=>DANGLING(96), outputRegPage1(14)=>
      DANGLING(97), outputRegPage1(13)=>DANGLING(98), outputRegPage1(12)=>
      DANGLING(99), outputRegPage1(11)=>DANGLING(100), outputRegPage1(10)=>
      DANGLING(101), outputRegPage1(9)=>DANGLING(102), outputRegPage1(8)=>
      DANGLING(103), outputRegPage1(7)=>DANGLING(104), outputRegPage1(6)=>
      DANGLING(105), outputRegPage1(5)=>DANGLING(106), outputRegPage1(4)=>
      DANGLING(107), outputRegPage1(3)=>DANGLING(108), outputRegPage1(2)=>
      DANGLING(109), outputRegPage1(1)=>DANGLING(110), outputRegPage1(0)=>
      DANGLING(111), outputRegPage2(15)=>DANGLING(112), outputRegPage2(14)=>
      DANGLING(113), outputRegPage2(13)=>DANGLING(114), outputRegPage2(12)=>
      DANGLING(115), outputRegPage2(11)=>DANGLING(116), outputRegPage2(10)=>
      DANGLING(117), outputRegPage2(9)=>DANGLING(118), outputRegPage2(8)=>
      DANGLING(119), outputRegPage2(7)=>DANGLING(120), outputRegPage2(6)=>
      DANGLING(121), outputRegPage2(5)=>DANGLING(122), outputRegPage2(4)=>
      DANGLING(123), outputRegPage2(3)=>DANGLING(124), outputRegPage2(2)=>
      DANGLING(125), outputRegPage2(1)=>DANGLING(126), outputRegPage2(0)=>
      DANGLING(127), outFilter(7)=>filtersOuts_15_7, outFilter(6)=>
      filtersOuts_15_6, outFilter(5)=>filtersOuts_15_5, outFilter(4)=>
      filtersOuts_15_4, outFilter(3)=>filtersOuts_15_3, outFilter(2)=>
      filtersOuts_15_2, outFilter(1)=>filtersOuts_15_1, outFilter(0)=>
      filtersOuts_15_0);
   loop1_0_regRowMap_loop1_4_regUnitMap : RegUnit_8_16 port map ( 
      filterBus(7)=>filterBus(39), filterBus(6)=>filterBus(38), filterBus(5)
      =>filterBus(37), filterBus(4)=>filterBus(36), filterBus(3)=>
      filterBus(35), filterBus(2)=>filterBus(34), filterBus(1)=>
      filterBus(33), filterBus(0)=>filterBus(32), windowBus(15)=>
      windowBus(79), windowBus(14)=>windowBus(78), windowBus(13)=>
      windowBus(77), windowBus(12)=>windowBus(76), windowBus(11)=>
      windowBus(75), windowBus(10)=>windowBus(74), windowBus(9)=>
      windowBus(73), windowBus(8)=>windowBus(72), windowBus(7)=>
      windowBus(71), windowBus(6)=>windowBus(70), windowBus(5)=>
      windowBus(69), windowBus(4)=>windowBus(68), windowBus(3)=>
      windowBus(67), windowBus(2)=>windowBus(66), windowBus(1)=>
      windowBus(65), windowBus(0)=>windowBus(64), regPage1NextUnit(15)=>
      page1Out_9_15, regPage1NextUnit(14)=>page1Out_9_14, 
      regPage1NextUnit(13)=>page1Out_9_13, regPage1NextUnit(12)=>
      page1Out_9_12, regPage1NextUnit(11)=>page1Out_9_11, 
      regPage1NextUnit(10)=>page1Out_9_10, regPage1NextUnit(9)=>page1Out_9_9, 
      regPage1NextUnit(8)=>page1Out_9_8, regPage1NextUnit(7)=>page1Out_9_7, 
      regPage1NextUnit(6)=>page1Out_9_6, regPage1NextUnit(5)=>page1Out_9_5, 
      regPage1NextUnit(4)=>page1Out_9_4, regPage1NextUnit(3)=>page1Out_9_3, 
      regPage1NextUnit(2)=>page1Out_9_2, regPage1NextUnit(1)=>page1Out_9_1, 
      regPage1NextUnit(0)=>page1Out_9_0, regPage2NextUnit(15)=>page2Out_9_15, 
      regPage2NextUnit(14)=>page2Out_9_14, regPage2NextUnit(13)=>
      page2Out_9_13, regPage2NextUnit(12)=>page2Out_9_12, 
      regPage2NextUnit(11)=>page2Out_9_11, regPage2NextUnit(10)=>
      page2Out_9_10, regPage2NextUnit(9)=>page2Out_9_9, regPage2NextUnit(8)
      =>page2Out_9_8, regPage2NextUnit(7)=>page2Out_9_7, regPage2NextUnit(6)
      =>page2Out_9_6, regPage2NextUnit(5)=>page2Out_9_5, regPage2NextUnit(4)
      =>page2Out_9_4, regPage2NextUnit(3)=>page2Out_9_3, regPage2NextUnit(2)
      =>page2Out_9_2, regPage2NextUnit(1)=>page2Out_9_1, regPage2NextUnit(0)
      =>page2Out_9_0, clk=>clk, rst=>rst, enableRegPage1=>page1Enables_0, 
      enableRegPage2=>page2Enables_0, enableRegFilter=>nx3480, 
      page1ReadBusOrPage2=>shift2To1, page2ReadBusOrPage1=>shift1To2, 
      pageTurn=>pageTurn, outRegPage(15)=>pagesOuts_16_15, outRegPage(14)=>
      pagesOuts_16_14, outRegPage(13)=>pagesOuts_16_13, outRegPage(12)=>
      pagesOuts_16_12, outRegPage(11)=>pagesOuts_16_11, outRegPage(10)=>
      pagesOuts_16_10, outRegPage(9)=>pagesOuts_16_9, outRegPage(8)=>
      pagesOuts_16_8, outRegPage(7)=>pagesOuts_16_7, outRegPage(6)=>
      pagesOuts_16_6, outRegPage(5)=>pagesOuts_16_5, outRegPage(4)=>
      pagesOuts_16_4, outRegPage(3)=>pagesOuts_16_3, outRegPage(2)=>
      pagesOuts_16_2, outRegPage(1)=>pagesOuts_16_1, outRegPage(0)=>
      pagesOuts_16_0, outputRegPage1(15)=>DANGLING(128), outputRegPage1(14)
      =>DANGLING(129), outputRegPage1(13)=>DANGLING(130), outputRegPage1(12)
      =>DANGLING(131), outputRegPage1(11)=>DANGLING(132), outputRegPage1(10)
      =>DANGLING(133), outputRegPage1(9)=>DANGLING(134), outputRegPage1(8)=>
      DANGLING(135), outputRegPage1(7)=>DANGLING(136), outputRegPage1(6)=>
      DANGLING(137), outputRegPage1(5)=>DANGLING(138), outputRegPage1(4)=>
      DANGLING(139), outputRegPage1(3)=>DANGLING(140), outputRegPage1(2)=>
      DANGLING(141), outputRegPage1(1)=>DANGLING(142), outputRegPage1(0)=>
      DANGLING(143), outputRegPage2(15)=>DANGLING(144), outputRegPage2(14)=>
      DANGLING(145), outputRegPage2(13)=>DANGLING(146), outputRegPage2(12)=>
      DANGLING(147), outputRegPage2(11)=>DANGLING(148), outputRegPage2(10)=>
      DANGLING(149), outputRegPage2(9)=>DANGLING(150), outputRegPage2(8)=>
      DANGLING(151), outputRegPage2(7)=>DANGLING(152), outputRegPage2(6)=>
      DANGLING(153), outputRegPage2(5)=>DANGLING(154), outputRegPage2(4)=>
      DANGLING(155), outputRegPage2(3)=>DANGLING(156), outputRegPage2(2)=>
      DANGLING(157), outputRegPage2(1)=>DANGLING(158), outputRegPage2(0)=>
      DANGLING(159), outFilter(7)=>filtersOuts_16_7, outFilter(6)=>
      filtersOuts_16_6, outFilter(5)=>filtersOuts_16_5, outFilter(4)=>
      filtersOuts_16_4, outFilter(3)=>filtersOuts_16_3, outFilter(2)=>
      filtersOuts_16_2, outFilter(1)=>filtersOuts_16_1, outFilter(0)=>
      filtersOuts_16_0);
   loop1_1_regRowMap_loop1_0_regUnitMap : RegUnit_8_16_unfolded2 port map ( 
      filterBus(7)=>filterBus(7), filterBus(6)=>filterBus(6), filterBus(5)=>
      filterBus(5), filterBus(4)=>filterBus(4), filterBus(3)=>filterBus(3), 
      filterBus(2)=>filterBus(2), filterBus(1)=>filterBus(1), filterBus(0)=>
      filterBus(0), windowBus(15)=>windowBus(15), windowBus(14)=>
      windowBus(14), windowBus(13)=>windowBus(13), windowBus(12)=>
      windowBus(12), windowBus(11)=>windowBus(11), windowBus(10)=>
      windowBus(10), windowBus(9)=>windowBus(9), windowBus(8)=>windowBus(8), 
      windowBus(7)=>windowBus(7), windowBus(6)=>windowBus(6), windowBus(5)=>
      windowBus(5), windowBus(4)=>windowBus(4), windowBus(3)=>windowBus(3), 
      windowBus(2)=>windowBus(2), windowBus(1)=>windowBus(1), windowBus(0)=>
      windowBus(0), regPage1NextUnit(15)=>page1Out_10_15, 
      regPage1NextUnit(14)=>page1Out_10_14, regPage1NextUnit(13)=>
      page1Out_10_13, regPage1NextUnit(12)=>page1Out_10_12, 
      regPage1NextUnit(11)=>page1Out_10_11, regPage1NextUnit(10)=>
      page1Out_10_10, regPage1NextUnit(9)=>page1Out_10_9, 
      regPage1NextUnit(8)=>page1Out_10_8, regPage1NextUnit(7)=>page1Out_10_7, 
      regPage1NextUnit(6)=>page1Out_10_6, regPage1NextUnit(5)=>page1Out_10_5, 
      regPage1NextUnit(4)=>page1Out_10_4, regPage1NextUnit(3)=>page1Out_10_3, 
      regPage1NextUnit(2)=>page1Out_10_2, regPage1NextUnit(1)=>page1Out_10_1, 
      regPage1NextUnit(0)=>page1Out_10_0, regPage2NextUnit(15)=>
      page2Out_10_15, regPage2NextUnit(14)=>page2Out_10_14, 
      regPage2NextUnit(13)=>page2Out_10_13, regPage2NextUnit(12)=>
      page2Out_10_12, regPage2NextUnit(11)=>page2Out_10_11, 
      regPage2NextUnit(10)=>page2Out_10_10, regPage2NextUnit(9)=>
      page2Out_10_9, regPage2NextUnit(8)=>page2Out_10_8, regPage2NextUnit(7)
      =>page2Out_10_7, regPage2NextUnit(6)=>page2Out_10_6, 
      regPage2NextUnit(5)=>page2Out_10_5, regPage2NextUnit(4)=>page2Out_10_4, 
      regPage2NextUnit(3)=>page2Out_10_3, regPage2NextUnit(2)=>page2Out_10_2, 
      regPage2NextUnit(1)=>page2Out_10_1, regPage2NextUnit(0)=>page2Out_10_0, 
      clk=>clk, rst=>rst, enableRegPage1=>page1Enables_1, enableRegPage2=>
      page2Enables_1, enableRegFilter=>nx3482, page1ReadBusOrPage2=>
      shift2To1, page2ReadBusOrPage1=>shift1To2, pageTurn=>pageTurn, 
      outRegPage(15)=>pagesOuts_3_15, outRegPage(14)=>pagesOuts_3_14, 
      outRegPage(13)=>pagesOuts_3_13, outRegPage(12)=>pagesOuts_3_12, 
      outRegPage(11)=>pagesOuts_3_11, outRegPage(10)=>pagesOuts_3_10, 
      outRegPage(9)=>pagesOuts_3_9, outRegPage(8)=>pagesOuts_3_8, 
      outRegPage(7)=>pagesOuts_3_7, outRegPage(6)=>pagesOuts_3_6, 
      outRegPage(5)=>pagesOuts_3_5, outRegPage(4)=>pagesOuts_3_4, 
      outRegPage(3)=>pagesOuts_3_3, outRegPage(2)=>pagesOuts_3_2, 
      outRegPage(1)=>pagesOuts_3_1, outRegPage(0)=>pagesOuts_3_0, 
      outputRegPage1(15)=>page1Out_5_15, outputRegPage1(14)=>page1Out_5_14, 
      outputRegPage1(13)=>page1Out_5_13, outputRegPage1(12)=>page1Out_5_12, 
      outputRegPage1(11)=>page1Out_5_11, outputRegPage1(10)=>page1Out_5_10, 
      outputRegPage1(9)=>page1Out_5_9, outputRegPage1(8)=>page1Out_5_8, 
      outputRegPage1(7)=>page1Out_5_7, outputRegPage1(6)=>page1Out_5_6, 
      outputRegPage1(5)=>page1Out_5_5, outputRegPage1(4)=>page1Out_5_4, 
      outputRegPage1(3)=>page1Out_5_3, outputRegPage1(2)=>page1Out_5_2, 
      outputRegPage1(1)=>page1Out_5_1, outputRegPage1(0)=>page1Out_5_0, 
      outputRegPage2(15)=>page2Out_5_15, outputRegPage2(14)=>page2Out_5_14, 
      outputRegPage2(13)=>page2Out_5_13, outputRegPage2(12)=>page2Out_5_12, 
      outputRegPage2(11)=>page2Out_5_11, outputRegPage2(10)=>page2Out_5_10, 
      outputRegPage2(9)=>page2Out_5_9, outputRegPage2(8)=>page2Out_5_8, 
      outputRegPage2(7)=>page2Out_5_7, outputRegPage2(6)=>page2Out_5_6, 
      outputRegPage2(5)=>page2Out_5_5, outputRegPage2(4)=>page2Out_5_4, 
      outputRegPage2(3)=>page2Out_5_3, outputRegPage2(2)=>page2Out_5_2, 
      outputRegPage2(1)=>page2Out_5_1, outputRegPage2(0)=>page2Out_5_0, 
      outFilter(7)=>filtersOuts_3_7, outFilter(6)=>filtersOuts_3_6, 
      outFilter(5)=>filtersOuts_3_5, outFilter(4)=>filtersOuts_3_4, 
      outFilter(3)=>filtersOuts_3_3, outFilter(2)=>filtersOuts_3_2, 
      outFilter(1)=>filtersOuts_3_1, outFilter(0)=>filtersOuts_3_0);
   loop1_1_regRowMap_loop1_1_regUnitMap : RegUnit_8_16_unfolded2 port map ( 
      filterBus(7)=>filterBus(15), filterBus(6)=>filterBus(14), filterBus(5)
      =>filterBus(13), filterBus(4)=>filterBus(12), filterBus(3)=>
      filterBus(11), filterBus(2)=>filterBus(10), filterBus(1)=>filterBus(9), 
      filterBus(0)=>filterBus(8), windowBus(15)=>windowBus(31), 
      windowBus(14)=>windowBus(30), windowBus(13)=>windowBus(29), 
      windowBus(12)=>windowBus(28), windowBus(11)=>windowBus(27), 
      windowBus(10)=>windowBus(26), windowBus(9)=>windowBus(25), 
      windowBus(8)=>windowBus(24), windowBus(7)=>windowBus(23), windowBus(6)
      =>windowBus(22), windowBus(5)=>windowBus(21), windowBus(4)=>
      windowBus(20), windowBus(3)=>windowBus(19), windowBus(2)=>
      windowBus(18), windowBus(1)=>windowBus(17), windowBus(0)=>
      windowBus(16), regPage1NextUnit(15)=>page1Out_11_15, 
      regPage1NextUnit(14)=>page1Out_11_14, regPage1NextUnit(13)=>
      page1Out_11_13, regPage1NextUnit(12)=>page1Out_11_12, 
      regPage1NextUnit(11)=>page1Out_11_11, regPage1NextUnit(10)=>
      page1Out_11_10, regPage1NextUnit(9)=>page1Out_11_9, 
      regPage1NextUnit(8)=>page1Out_11_8, regPage1NextUnit(7)=>page1Out_11_7, 
      regPage1NextUnit(6)=>page1Out_11_6, regPage1NextUnit(5)=>page1Out_11_5, 
      regPage1NextUnit(4)=>page1Out_11_4, regPage1NextUnit(3)=>page1Out_11_3, 
      regPage1NextUnit(2)=>page1Out_11_2, regPage1NextUnit(1)=>page1Out_11_1, 
      regPage1NextUnit(0)=>page1Out_11_0, regPage2NextUnit(15)=>
      page2Out_11_15, regPage2NextUnit(14)=>page2Out_11_14, 
      regPage2NextUnit(13)=>page2Out_11_13, regPage2NextUnit(12)=>
      page2Out_11_12, regPage2NextUnit(11)=>page2Out_11_11, 
      regPage2NextUnit(10)=>page2Out_11_10, regPage2NextUnit(9)=>
      page2Out_11_9, regPage2NextUnit(8)=>page2Out_11_8, regPage2NextUnit(7)
      =>page2Out_11_7, regPage2NextUnit(6)=>page2Out_11_6, 
      regPage2NextUnit(5)=>page2Out_11_5, regPage2NextUnit(4)=>page2Out_11_4, 
      regPage2NextUnit(3)=>page2Out_11_3, regPage2NextUnit(2)=>page2Out_11_2, 
      regPage2NextUnit(1)=>page2Out_11_1, regPage2NextUnit(0)=>page2Out_11_0, 
      clk=>clk, rst=>rst, enableRegPage1=>page1Enables_1, enableRegPage2=>
      page2Enables_1, enableRegFilter=>nx3482, page1ReadBusOrPage2=>
      shift2To1, page2ReadBusOrPage1=>shift1To2, pageTurn=>pageTurn, 
      outRegPage(15)=>pagesOuts_4_15, outRegPage(14)=>pagesOuts_4_14, 
      outRegPage(13)=>pagesOuts_4_13, outRegPage(12)=>pagesOuts_4_12, 
      outRegPage(11)=>pagesOuts_4_11, outRegPage(10)=>pagesOuts_4_10, 
      outRegPage(9)=>pagesOuts_4_9, outRegPage(8)=>pagesOuts_4_8, 
      outRegPage(7)=>pagesOuts_4_7, outRegPage(6)=>pagesOuts_4_6, 
      outRegPage(5)=>pagesOuts_4_5, outRegPage(4)=>pagesOuts_4_4, 
      outRegPage(3)=>pagesOuts_4_3, outRegPage(2)=>pagesOuts_4_2, 
      outRegPage(1)=>pagesOuts_4_1, outRegPage(0)=>pagesOuts_4_0, 
      outputRegPage1(15)=>page1Out_6_15, outputRegPage1(14)=>page1Out_6_14, 
      outputRegPage1(13)=>page1Out_6_13, outputRegPage1(12)=>page1Out_6_12, 
      outputRegPage1(11)=>page1Out_6_11, outputRegPage1(10)=>page1Out_6_10, 
      outputRegPage1(9)=>page1Out_6_9, outputRegPage1(8)=>page1Out_6_8, 
      outputRegPage1(7)=>page1Out_6_7, outputRegPage1(6)=>page1Out_6_6, 
      outputRegPage1(5)=>page1Out_6_5, outputRegPage1(4)=>page1Out_6_4, 
      outputRegPage1(3)=>page1Out_6_3, outputRegPage1(2)=>page1Out_6_2, 
      outputRegPage1(1)=>page1Out_6_1, outputRegPage1(0)=>page1Out_6_0, 
      outputRegPage2(15)=>page2Out_6_15, outputRegPage2(14)=>page2Out_6_14, 
      outputRegPage2(13)=>page2Out_6_13, outputRegPage2(12)=>page2Out_6_12, 
      outputRegPage2(11)=>page2Out_6_11, outputRegPage2(10)=>page2Out_6_10, 
      outputRegPage2(9)=>page2Out_6_9, outputRegPage2(8)=>page2Out_6_8, 
      outputRegPage2(7)=>page2Out_6_7, outputRegPage2(6)=>page2Out_6_6, 
      outputRegPage2(5)=>page2Out_6_5, outputRegPage2(4)=>page2Out_6_4, 
      outputRegPage2(3)=>page2Out_6_3, outputRegPage2(2)=>page2Out_6_2, 
      outputRegPage2(1)=>page2Out_6_1, outputRegPage2(0)=>page2Out_6_0, 
      outFilter(7)=>filtersOuts_4_7, outFilter(6)=>filtersOuts_4_6, 
      outFilter(5)=>filtersOuts_4_5, outFilter(4)=>filtersOuts_4_4, 
      outFilter(3)=>filtersOuts_4_3, outFilter(2)=>filtersOuts_4_2, 
      outFilter(1)=>filtersOuts_4_1, outFilter(0)=>filtersOuts_4_0);
   loop1_1_regRowMap_loop1_2_regUnitMap : RegUnit_8_16_unfolded2 port map ( 
      filterBus(7)=>filterBus(23), filterBus(6)=>filterBus(22), filterBus(5)
      =>filterBus(21), filterBus(4)=>filterBus(20), filterBus(3)=>
      filterBus(19), filterBus(2)=>filterBus(18), filterBus(1)=>
      filterBus(17), filterBus(0)=>filterBus(16), windowBus(15)=>
      windowBus(47), windowBus(14)=>windowBus(46), windowBus(13)=>
      windowBus(45), windowBus(12)=>windowBus(44), windowBus(11)=>
      windowBus(43), windowBus(10)=>windowBus(42), windowBus(9)=>
      windowBus(41), windowBus(8)=>windowBus(40), windowBus(7)=>
      windowBus(39), windowBus(6)=>windowBus(38), windowBus(5)=>
      windowBus(37), windowBus(4)=>windowBus(36), windowBus(3)=>
      windowBus(35), windowBus(2)=>windowBus(34), windowBus(1)=>
      windowBus(33), windowBus(0)=>windowBus(32), regPage1NextUnit(15)=>
      page1Out_12_15, regPage1NextUnit(14)=>page1Out_12_14, 
      regPage1NextUnit(13)=>page1Out_12_13, regPage1NextUnit(12)=>
      page1Out_12_12, regPage1NextUnit(11)=>page1Out_12_11, 
      regPage1NextUnit(10)=>page1Out_12_10, regPage1NextUnit(9)=>
      page1Out_12_9, regPage1NextUnit(8)=>page1Out_12_8, regPage1NextUnit(7)
      =>page1Out_12_7, regPage1NextUnit(6)=>page1Out_12_6, 
      regPage1NextUnit(5)=>page1Out_12_5, regPage1NextUnit(4)=>page1Out_12_4, 
      regPage1NextUnit(3)=>page1Out_12_3, regPage1NextUnit(2)=>page1Out_12_2, 
      regPage1NextUnit(1)=>page1Out_12_1, regPage1NextUnit(0)=>page1Out_12_0, 
      regPage2NextUnit(15)=>page2Out_12_15, regPage2NextUnit(14)=>
      page2Out_12_14, regPage2NextUnit(13)=>page2Out_12_13, 
      regPage2NextUnit(12)=>page2Out_12_12, regPage2NextUnit(11)=>
      page2Out_12_11, regPage2NextUnit(10)=>page2Out_12_10, 
      regPage2NextUnit(9)=>page2Out_12_9, regPage2NextUnit(8)=>page2Out_12_8, 
      regPage2NextUnit(7)=>page2Out_12_7, regPage2NextUnit(6)=>page2Out_12_6, 
      regPage2NextUnit(5)=>page2Out_12_5, regPage2NextUnit(4)=>page2Out_12_4, 
      regPage2NextUnit(3)=>page2Out_12_3, regPage2NextUnit(2)=>page2Out_12_2, 
      regPage2NextUnit(1)=>page2Out_12_1, regPage2NextUnit(0)=>page2Out_12_0, 
      clk=>clk, rst=>rst, enableRegPage1=>page1Enables_1, enableRegPage2=>
      page2Enables_1, enableRegFilter=>nx3482, page1ReadBusOrPage2=>
      shift2To1, page2ReadBusOrPage1=>shift1To2, pageTurn=>pageTurn, 
      outRegPage(15)=>pagesOuts_5_15, outRegPage(14)=>pagesOuts_5_14, 
      outRegPage(13)=>pagesOuts_5_13, outRegPage(12)=>pagesOuts_5_12, 
      outRegPage(11)=>pagesOuts_5_11, outRegPage(10)=>pagesOuts_5_10, 
      outRegPage(9)=>pagesOuts_5_9, outRegPage(8)=>pagesOuts_5_8, 
      outRegPage(7)=>pagesOuts_5_7, outRegPage(6)=>pagesOuts_5_6, 
      outRegPage(5)=>pagesOuts_5_5, outRegPage(4)=>pagesOuts_5_4, 
      outRegPage(3)=>pagesOuts_5_3, outRegPage(2)=>pagesOuts_5_2, 
      outRegPage(1)=>pagesOuts_5_1, outRegPage(0)=>pagesOuts_5_0, 
      outputRegPage1(15)=>page1Out_7_15, outputRegPage1(14)=>page1Out_7_14, 
      outputRegPage1(13)=>page1Out_7_13, outputRegPage1(12)=>page1Out_7_12, 
      outputRegPage1(11)=>page1Out_7_11, outputRegPage1(10)=>page1Out_7_10, 
      outputRegPage1(9)=>page1Out_7_9, outputRegPage1(8)=>page1Out_7_8, 
      outputRegPage1(7)=>page1Out_7_7, outputRegPage1(6)=>page1Out_7_6, 
      outputRegPage1(5)=>page1Out_7_5, outputRegPage1(4)=>page1Out_7_4, 
      outputRegPage1(3)=>page1Out_7_3, outputRegPage1(2)=>page1Out_7_2, 
      outputRegPage1(1)=>page1Out_7_1, outputRegPage1(0)=>page1Out_7_0, 
      outputRegPage2(15)=>page2Out_7_15, outputRegPage2(14)=>page2Out_7_14, 
      outputRegPage2(13)=>page2Out_7_13, outputRegPage2(12)=>page2Out_7_12, 
      outputRegPage2(11)=>page2Out_7_11, outputRegPage2(10)=>page2Out_7_10, 
      outputRegPage2(9)=>page2Out_7_9, outputRegPage2(8)=>page2Out_7_8, 
      outputRegPage2(7)=>page2Out_7_7, outputRegPage2(6)=>page2Out_7_6, 
      outputRegPage2(5)=>page2Out_7_5, outputRegPage2(4)=>page2Out_7_4, 
      outputRegPage2(3)=>page2Out_7_3, outputRegPage2(2)=>page2Out_7_2, 
      outputRegPage2(1)=>page2Out_7_1, outputRegPage2(0)=>page2Out_7_0, 
      outFilter(7)=>filtersOuts_5_7, outFilter(6)=>filtersOuts_5_6, 
      outFilter(5)=>filtersOuts_5_5, outFilter(4)=>filtersOuts_5_4, 
      outFilter(3)=>filtersOuts_5_3, outFilter(2)=>filtersOuts_5_2, 
      outFilter(1)=>filtersOuts_5_1, outFilter(0)=>filtersOuts_5_0);
   loop1_1_regRowMap_loop1_3_regUnitMap : RegUnit_8_16_unfolded2 port map ( 
      filterBus(7)=>filterBus(31), filterBus(6)=>filterBus(30), filterBus(5)
      =>filterBus(29), filterBus(4)=>filterBus(28), filterBus(3)=>
      filterBus(27), filterBus(2)=>filterBus(26), filterBus(1)=>
      filterBus(25), filterBus(0)=>filterBus(24), windowBus(15)=>
      windowBus(63), windowBus(14)=>windowBus(62), windowBus(13)=>
      windowBus(61), windowBus(12)=>windowBus(60), windowBus(11)=>
      windowBus(59), windowBus(10)=>windowBus(58), windowBus(9)=>
      windowBus(57), windowBus(8)=>windowBus(56), windowBus(7)=>
      windowBus(55), windowBus(6)=>windowBus(54), windowBus(5)=>
      windowBus(53), windowBus(4)=>windowBus(52), windowBus(3)=>
      windowBus(51), windowBus(2)=>windowBus(50), windowBus(1)=>
      windowBus(49), windowBus(0)=>windowBus(48), regPage1NextUnit(15)=>
      page1Out_13_15, regPage1NextUnit(14)=>page1Out_13_14, 
      regPage1NextUnit(13)=>page1Out_13_13, regPage1NextUnit(12)=>
      page1Out_13_12, regPage1NextUnit(11)=>page1Out_13_11, 
      regPage1NextUnit(10)=>page1Out_13_10, regPage1NextUnit(9)=>
      page1Out_13_9, regPage1NextUnit(8)=>page1Out_13_8, regPage1NextUnit(7)
      =>page1Out_13_7, regPage1NextUnit(6)=>page1Out_13_6, 
      regPage1NextUnit(5)=>page1Out_13_5, regPage1NextUnit(4)=>page1Out_13_4, 
      regPage1NextUnit(3)=>page1Out_13_3, regPage1NextUnit(2)=>page1Out_13_2, 
      regPage1NextUnit(1)=>page1Out_13_1, regPage1NextUnit(0)=>page1Out_13_0, 
      regPage2NextUnit(15)=>page2Out_13_15, regPage2NextUnit(14)=>
      page2Out_13_14, regPage2NextUnit(13)=>page2Out_13_13, 
      regPage2NextUnit(12)=>page2Out_13_12, regPage2NextUnit(11)=>
      page2Out_13_11, regPage2NextUnit(10)=>page2Out_13_10, 
      regPage2NextUnit(9)=>page2Out_13_9, regPage2NextUnit(8)=>page2Out_13_8, 
      regPage2NextUnit(7)=>page2Out_13_7, regPage2NextUnit(6)=>page2Out_13_6, 
      regPage2NextUnit(5)=>page2Out_13_5, regPage2NextUnit(4)=>page2Out_13_4, 
      regPage2NextUnit(3)=>page2Out_13_3, regPage2NextUnit(2)=>page2Out_13_2, 
      regPage2NextUnit(1)=>page2Out_13_1, regPage2NextUnit(0)=>page2Out_13_0, 
      clk=>clk, rst=>rst, enableRegPage1=>page1Enables_1, enableRegPage2=>
      page2Enables_1, enableRegFilter=>nx3484, page1ReadBusOrPage2=>
      shift2To1, page2ReadBusOrPage1=>shift1To2, pageTurn=>pageTurn, 
      outRegPage(15)=>pagesOuts_17_15, outRegPage(14)=>pagesOuts_17_14, 
      outRegPage(13)=>pagesOuts_17_13, outRegPage(12)=>pagesOuts_17_12, 
      outRegPage(11)=>pagesOuts_17_11, outRegPage(10)=>pagesOuts_17_10, 
      outRegPage(9)=>pagesOuts_17_9, outRegPage(8)=>pagesOuts_17_8, 
      outRegPage(7)=>pagesOuts_17_7, outRegPage(6)=>pagesOuts_17_6, 
      outRegPage(5)=>pagesOuts_17_5, outRegPage(4)=>pagesOuts_17_4, 
      outRegPage(3)=>pagesOuts_17_3, outRegPage(2)=>pagesOuts_17_2, 
      outRegPage(1)=>pagesOuts_17_1, outRegPage(0)=>pagesOuts_17_0, 
      outputRegPage1(15)=>page1Out_8_15, outputRegPage1(14)=>page1Out_8_14, 
      outputRegPage1(13)=>page1Out_8_13, outputRegPage1(12)=>page1Out_8_12, 
      outputRegPage1(11)=>page1Out_8_11, outputRegPage1(10)=>page1Out_8_10, 
      outputRegPage1(9)=>page1Out_8_9, outputRegPage1(8)=>page1Out_8_8, 
      outputRegPage1(7)=>page1Out_8_7, outputRegPage1(6)=>page1Out_8_6, 
      outputRegPage1(5)=>page1Out_8_5, outputRegPage1(4)=>page1Out_8_4, 
      outputRegPage1(3)=>page1Out_8_3, outputRegPage1(2)=>page1Out_8_2, 
      outputRegPage1(1)=>page1Out_8_1, outputRegPage1(0)=>page1Out_8_0, 
      outputRegPage2(15)=>page2Out_8_15, outputRegPage2(14)=>page2Out_8_14, 
      outputRegPage2(13)=>page2Out_8_13, outputRegPage2(12)=>page2Out_8_12, 
      outputRegPage2(11)=>page2Out_8_11, outputRegPage2(10)=>page2Out_8_10, 
      outputRegPage2(9)=>page2Out_8_9, outputRegPage2(8)=>page2Out_8_8, 
      outputRegPage2(7)=>page2Out_8_7, outputRegPage2(6)=>page2Out_8_6, 
      outputRegPage2(5)=>page2Out_8_5, outputRegPage2(4)=>page2Out_8_4, 
      outputRegPage2(3)=>page2Out_8_3, outputRegPage2(2)=>page2Out_8_2, 
      outputRegPage2(1)=>page2Out_8_1, outputRegPage2(0)=>page2Out_8_0, 
      outFilter(7)=>filtersOuts_17_7, outFilter(6)=>filtersOuts_17_6, 
      outFilter(5)=>filtersOuts_17_5, outFilter(4)=>filtersOuts_17_4, 
      outFilter(3)=>filtersOuts_17_3, outFilter(2)=>filtersOuts_17_2, 
      outFilter(1)=>filtersOuts_17_1, outFilter(0)=>filtersOuts_17_0);
   loop1_1_regRowMap_loop1_4_regUnitMap : RegUnit_8_16_unfolded2 port map ( 
      filterBus(7)=>filterBus(39), filterBus(6)=>filterBus(38), filterBus(5)
      =>filterBus(37), filterBus(4)=>filterBus(36), filterBus(3)=>
      filterBus(35), filterBus(2)=>filterBus(34), filterBus(1)=>
      filterBus(33), filterBus(0)=>filterBus(32), windowBus(15)=>
      windowBus(79), windowBus(14)=>windowBus(78), windowBus(13)=>
      windowBus(77), windowBus(12)=>windowBus(76), windowBus(11)=>
      windowBus(75), windowBus(10)=>windowBus(74), windowBus(9)=>
      windowBus(73), windowBus(8)=>windowBus(72), windowBus(7)=>
      windowBus(71), windowBus(6)=>windowBus(70), windowBus(5)=>
      windowBus(69), windowBus(4)=>windowBus(68), windowBus(3)=>
      windowBus(67), windowBus(2)=>windowBus(66), windowBus(1)=>
      windowBus(65), windowBus(0)=>windowBus(64), regPage1NextUnit(15)=>
      page1Out_14_15, regPage1NextUnit(14)=>page1Out_14_14, 
      regPage1NextUnit(13)=>page1Out_14_13, regPage1NextUnit(12)=>
      page1Out_14_12, regPage1NextUnit(11)=>page1Out_14_11, 
      regPage1NextUnit(10)=>page1Out_14_10, regPage1NextUnit(9)=>
      page1Out_14_9, regPage1NextUnit(8)=>page1Out_14_8, regPage1NextUnit(7)
      =>page1Out_14_7, regPage1NextUnit(6)=>page1Out_14_6, 
      regPage1NextUnit(5)=>page1Out_14_5, regPage1NextUnit(4)=>page1Out_14_4, 
      regPage1NextUnit(3)=>page1Out_14_3, regPage1NextUnit(2)=>page1Out_14_2, 
      regPage1NextUnit(1)=>page1Out_14_1, regPage1NextUnit(0)=>page1Out_14_0, 
      regPage2NextUnit(15)=>page2Out_14_15, regPage2NextUnit(14)=>
      page2Out_14_14, regPage2NextUnit(13)=>page2Out_14_13, 
      regPage2NextUnit(12)=>page2Out_14_12, regPage2NextUnit(11)=>
      page2Out_14_11, regPage2NextUnit(10)=>page2Out_14_10, 
      regPage2NextUnit(9)=>page2Out_14_9, regPage2NextUnit(8)=>page2Out_14_8, 
      regPage2NextUnit(7)=>page2Out_14_7, regPage2NextUnit(6)=>page2Out_14_6, 
      regPage2NextUnit(5)=>page2Out_14_5, regPage2NextUnit(4)=>page2Out_14_4, 
      regPage2NextUnit(3)=>page2Out_14_3, regPage2NextUnit(2)=>page2Out_14_2, 
      regPage2NextUnit(1)=>page2Out_14_1, regPage2NextUnit(0)=>page2Out_14_0, 
      clk=>clk, rst=>rst, enableRegPage1=>page1Enables_1, enableRegPage2=>
      page2Enables_1, enableRegFilter=>nx3484, page1ReadBusOrPage2=>
      shift2To1, page2ReadBusOrPage1=>shift1To2, pageTurn=>pageTurn, 
      outRegPage(15)=>pagesOuts_18_15, outRegPage(14)=>pagesOuts_18_14, 
      outRegPage(13)=>pagesOuts_18_13, outRegPage(12)=>pagesOuts_18_12, 
      outRegPage(11)=>pagesOuts_18_11, outRegPage(10)=>pagesOuts_18_10, 
      outRegPage(9)=>pagesOuts_18_9, outRegPage(8)=>pagesOuts_18_8, 
      outRegPage(7)=>pagesOuts_18_7, outRegPage(6)=>pagesOuts_18_6, 
      outRegPage(5)=>pagesOuts_18_5, outRegPage(4)=>pagesOuts_18_4, 
      outRegPage(3)=>pagesOuts_18_3, outRegPage(2)=>pagesOuts_18_2, 
      outRegPage(1)=>pagesOuts_18_1, outRegPage(0)=>pagesOuts_18_0, 
      outputRegPage1(15)=>page1Out_9_15, outputRegPage1(14)=>page1Out_9_14, 
      outputRegPage1(13)=>page1Out_9_13, outputRegPage1(12)=>page1Out_9_12, 
      outputRegPage1(11)=>page1Out_9_11, outputRegPage1(10)=>page1Out_9_10, 
      outputRegPage1(9)=>page1Out_9_9, outputRegPage1(8)=>page1Out_9_8, 
      outputRegPage1(7)=>page1Out_9_7, outputRegPage1(6)=>page1Out_9_6, 
      outputRegPage1(5)=>page1Out_9_5, outputRegPage1(4)=>page1Out_9_4, 
      outputRegPage1(3)=>page1Out_9_3, outputRegPage1(2)=>page1Out_9_2, 
      outputRegPage1(1)=>page1Out_9_1, outputRegPage1(0)=>page1Out_9_0, 
      outputRegPage2(15)=>page2Out_9_15, outputRegPage2(14)=>page2Out_9_14, 
      outputRegPage2(13)=>page2Out_9_13, outputRegPage2(12)=>page2Out_9_12, 
      outputRegPage2(11)=>page2Out_9_11, outputRegPage2(10)=>page2Out_9_10, 
      outputRegPage2(9)=>page2Out_9_9, outputRegPage2(8)=>page2Out_9_8, 
      outputRegPage2(7)=>page2Out_9_7, outputRegPage2(6)=>page2Out_9_6, 
      outputRegPage2(5)=>page2Out_9_5, outputRegPage2(4)=>page2Out_9_4, 
      outputRegPage2(3)=>page2Out_9_3, outputRegPage2(2)=>page2Out_9_2, 
      outputRegPage2(1)=>page2Out_9_1, outputRegPage2(0)=>page2Out_9_0, 
      outFilter(7)=>filtersOuts_18_7, outFilter(6)=>filtersOuts_18_6, 
      outFilter(5)=>filtersOuts_18_5, outFilter(4)=>filtersOuts_18_4, 
      outFilter(3)=>filtersOuts_18_3, outFilter(2)=>filtersOuts_18_2, 
      outFilter(1)=>filtersOuts_18_1, outFilter(0)=>filtersOuts_18_0);
   loop1_2_regRowMap_loop1_0_regUnitMap : RegUnit_8_16_unfolded2 port map ( 
      filterBus(7)=>filterBus(7), filterBus(6)=>filterBus(6), filterBus(5)=>
      filterBus(5), filterBus(4)=>filterBus(4), filterBus(3)=>filterBus(3), 
      filterBus(2)=>filterBus(2), filterBus(1)=>filterBus(1), filterBus(0)=>
      filterBus(0), windowBus(15)=>windowBus(15), windowBus(14)=>
      windowBus(14), windowBus(13)=>windowBus(13), windowBus(12)=>
      windowBus(12), windowBus(11)=>windowBus(11), windowBus(10)=>
      windowBus(10), windowBus(9)=>windowBus(9), windowBus(8)=>windowBus(8), 
      windowBus(7)=>windowBus(7), windowBus(6)=>windowBus(6), windowBus(5)=>
      windowBus(5), windowBus(4)=>windowBus(4), windowBus(3)=>windowBus(3), 
      windowBus(2)=>windowBus(2), windowBus(1)=>windowBus(1), windowBus(0)=>
      windowBus(0), regPage1NextUnit(15)=>page1Out_15_15, 
      regPage1NextUnit(14)=>page1Out_15_14, regPage1NextUnit(13)=>
      page1Out_15_13, regPage1NextUnit(12)=>page1Out_15_12, 
      regPage1NextUnit(11)=>page1Out_15_11, regPage1NextUnit(10)=>
      page1Out_15_10, regPage1NextUnit(9)=>page1Out_15_9, 
      regPage1NextUnit(8)=>page1Out_15_8, regPage1NextUnit(7)=>page1Out_15_7, 
      regPage1NextUnit(6)=>page1Out_15_6, regPage1NextUnit(5)=>page1Out_15_5, 
      regPage1NextUnit(4)=>page1Out_15_4, regPage1NextUnit(3)=>page1Out_15_3, 
      regPage1NextUnit(2)=>page1Out_15_2, regPage1NextUnit(1)=>page1Out_15_1, 
      regPage1NextUnit(0)=>page1Out_15_0, regPage2NextUnit(15)=>
      page2Out_15_15, regPage2NextUnit(14)=>page2Out_15_14, 
      regPage2NextUnit(13)=>page2Out_15_13, regPage2NextUnit(12)=>
      page2Out_15_12, regPage2NextUnit(11)=>page2Out_15_11, 
      regPage2NextUnit(10)=>page2Out_15_10, regPage2NextUnit(9)=>
      page2Out_15_9, regPage2NextUnit(8)=>page2Out_15_8, regPage2NextUnit(7)
      =>page2Out_15_7, regPage2NextUnit(6)=>page2Out_15_6, 
      regPage2NextUnit(5)=>page2Out_15_5, regPage2NextUnit(4)=>page2Out_15_4, 
      regPage2NextUnit(3)=>page2Out_15_3, regPage2NextUnit(2)=>page2Out_15_2, 
      regPage2NextUnit(1)=>page2Out_15_1, regPage2NextUnit(0)=>page2Out_15_0, 
      clk=>clk, rst=>rst, enableRegPage1=>page1Enables_2, enableRegPage2=>
      page2Enables_2, enableRegFilter=>nx3486, page1ReadBusOrPage2=>
      shift2To1, page2ReadBusOrPage1=>shift1To2, pageTurn=>pageTurn, 
      outRegPage(15)=>pagesOuts_6_15, outRegPage(14)=>pagesOuts_6_14, 
      outRegPage(13)=>pagesOuts_6_13, outRegPage(12)=>pagesOuts_6_12, 
      outRegPage(11)=>pagesOuts_6_11, outRegPage(10)=>pagesOuts_6_10, 
      outRegPage(9)=>pagesOuts_6_9, outRegPage(8)=>pagesOuts_6_8, 
      outRegPage(7)=>pagesOuts_6_7, outRegPage(6)=>pagesOuts_6_6, 
      outRegPage(5)=>pagesOuts_6_5, outRegPage(4)=>pagesOuts_6_4, 
      outRegPage(3)=>pagesOuts_6_3, outRegPage(2)=>pagesOuts_6_2, 
      outRegPage(1)=>pagesOuts_6_1, outRegPage(0)=>pagesOuts_6_0, 
      outputRegPage1(15)=>page1Out_10_15, outputRegPage1(14)=>page1Out_10_14, 
      outputRegPage1(13)=>page1Out_10_13, outputRegPage1(12)=>page1Out_10_12, 
      outputRegPage1(11)=>page1Out_10_11, outputRegPage1(10)=>page1Out_10_10, 
      outputRegPage1(9)=>page1Out_10_9, outputRegPage1(8)=>page1Out_10_8, 
      outputRegPage1(7)=>page1Out_10_7, outputRegPage1(6)=>page1Out_10_6, 
      outputRegPage1(5)=>page1Out_10_5, outputRegPage1(4)=>page1Out_10_4, 
      outputRegPage1(3)=>page1Out_10_3, outputRegPage1(2)=>page1Out_10_2, 
      outputRegPage1(1)=>page1Out_10_1, outputRegPage1(0)=>page1Out_10_0, 
      outputRegPage2(15)=>page2Out_10_15, outputRegPage2(14)=>page2Out_10_14, 
      outputRegPage2(13)=>page2Out_10_13, outputRegPage2(12)=>page2Out_10_12, 
      outputRegPage2(11)=>page2Out_10_11, outputRegPage2(10)=>page2Out_10_10, 
      outputRegPage2(9)=>page2Out_10_9, outputRegPage2(8)=>page2Out_10_8, 
      outputRegPage2(7)=>page2Out_10_7, outputRegPage2(6)=>page2Out_10_6, 
      outputRegPage2(5)=>page2Out_10_5, outputRegPage2(4)=>page2Out_10_4, 
      outputRegPage2(3)=>page2Out_10_3, outputRegPage2(2)=>page2Out_10_2, 
      outputRegPage2(1)=>page2Out_10_1, outputRegPage2(0)=>page2Out_10_0, 
      outFilter(7)=>filtersOuts_6_7, outFilter(6)=>filtersOuts_6_6, 
      outFilter(5)=>filtersOuts_6_5, outFilter(4)=>filtersOuts_6_4, 
      outFilter(3)=>filtersOuts_6_3, outFilter(2)=>filtersOuts_6_2, 
      outFilter(1)=>filtersOuts_6_1, outFilter(0)=>filtersOuts_6_0);
   loop1_2_regRowMap_loop1_1_regUnitMap : RegUnit_8_16_unfolded2 port map ( 
      filterBus(7)=>filterBus(15), filterBus(6)=>filterBus(14), filterBus(5)
      =>filterBus(13), filterBus(4)=>filterBus(12), filterBus(3)=>
      filterBus(11), filterBus(2)=>filterBus(10), filterBus(1)=>filterBus(9), 
      filterBus(0)=>filterBus(8), windowBus(15)=>windowBus(31), 
      windowBus(14)=>windowBus(30), windowBus(13)=>windowBus(29), 
      windowBus(12)=>windowBus(28), windowBus(11)=>windowBus(27), 
      windowBus(10)=>windowBus(26), windowBus(9)=>windowBus(25), 
      windowBus(8)=>windowBus(24), windowBus(7)=>windowBus(23), windowBus(6)
      =>windowBus(22), windowBus(5)=>windowBus(21), windowBus(4)=>
      windowBus(20), windowBus(3)=>windowBus(19), windowBus(2)=>
      windowBus(18), windowBus(1)=>windowBus(17), windowBus(0)=>
      windowBus(16), regPage1NextUnit(15)=>page1Out_16_15, 
      regPage1NextUnit(14)=>page1Out_16_14, regPage1NextUnit(13)=>
      page1Out_16_13, regPage1NextUnit(12)=>page1Out_16_12, 
      regPage1NextUnit(11)=>page1Out_16_11, regPage1NextUnit(10)=>
      page1Out_16_10, regPage1NextUnit(9)=>page1Out_16_9, 
      regPage1NextUnit(8)=>page1Out_16_8, regPage1NextUnit(7)=>page1Out_16_7, 
      regPage1NextUnit(6)=>page1Out_16_6, regPage1NextUnit(5)=>page1Out_16_5, 
      regPage1NextUnit(4)=>page1Out_16_4, regPage1NextUnit(3)=>page1Out_16_3, 
      regPage1NextUnit(2)=>page1Out_16_2, regPage1NextUnit(1)=>page1Out_16_1, 
      regPage1NextUnit(0)=>page1Out_16_0, regPage2NextUnit(15)=>
      page2Out_16_15, regPage2NextUnit(14)=>page2Out_16_14, 
      regPage2NextUnit(13)=>page2Out_16_13, regPage2NextUnit(12)=>
      page2Out_16_12, regPage2NextUnit(11)=>page2Out_16_11, 
      regPage2NextUnit(10)=>page2Out_16_10, regPage2NextUnit(9)=>
      page2Out_16_9, regPage2NextUnit(8)=>page2Out_16_8, regPage2NextUnit(7)
      =>page2Out_16_7, regPage2NextUnit(6)=>page2Out_16_6, 
      regPage2NextUnit(5)=>page2Out_16_5, regPage2NextUnit(4)=>page2Out_16_4, 
      regPage2NextUnit(3)=>page2Out_16_3, regPage2NextUnit(2)=>page2Out_16_2, 
      regPage2NextUnit(1)=>page2Out_16_1, regPage2NextUnit(0)=>page2Out_16_0, 
      clk=>clk, rst=>rst, enableRegPage1=>page1Enables_2, enableRegPage2=>
      page2Enables_2, enableRegFilter=>nx3486, page1ReadBusOrPage2=>
      shift2To1, page2ReadBusOrPage1=>shift1To2, pageTurn=>pageTurn, 
      outRegPage(15)=>pagesOuts_7_15, outRegPage(14)=>pagesOuts_7_14, 
      outRegPage(13)=>pagesOuts_7_13, outRegPage(12)=>pagesOuts_7_12, 
      outRegPage(11)=>pagesOuts_7_11, outRegPage(10)=>pagesOuts_7_10, 
      outRegPage(9)=>pagesOuts_7_9, outRegPage(8)=>pagesOuts_7_8, 
      outRegPage(7)=>pagesOuts_7_7, outRegPage(6)=>pagesOuts_7_6, 
      outRegPage(5)=>pagesOuts_7_5, outRegPage(4)=>pagesOuts_7_4, 
      outRegPage(3)=>pagesOuts_7_3, outRegPage(2)=>pagesOuts_7_2, 
      outRegPage(1)=>pagesOuts_7_1, outRegPage(0)=>pagesOuts_7_0, 
      outputRegPage1(15)=>page1Out_11_15, outputRegPage1(14)=>page1Out_11_14, 
      outputRegPage1(13)=>page1Out_11_13, outputRegPage1(12)=>page1Out_11_12, 
      outputRegPage1(11)=>page1Out_11_11, outputRegPage1(10)=>page1Out_11_10, 
      outputRegPage1(9)=>page1Out_11_9, outputRegPage1(8)=>page1Out_11_8, 
      outputRegPage1(7)=>page1Out_11_7, outputRegPage1(6)=>page1Out_11_6, 
      outputRegPage1(5)=>page1Out_11_5, outputRegPage1(4)=>page1Out_11_4, 
      outputRegPage1(3)=>page1Out_11_3, outputRegPage1(2)=>page1Out_11_2, 
      outputRegPage1(1)=>page1Out_11_1, outputRegPage1(0)=>page1Out_11_0, 
      outputRegPage2(15)=>page2Out_11_15, outputRegPage2(14)=>page2Out_11_14, 
      outputRegPage2(13)=>page2Out_11_13, outputRegPage2(12)=>page2Out_11_12, 
      outputRegPage2(11)=>page2Out_11_11, outputRegPage2(10)=>page2Out_11_10, 
      outputRegPage2(9)=>page2Out_11_9, outputRegPage2(8)=>page2Out_11_8, 
      outputRegPage2(7)=>page2Out_11_7, outputRegPage2(6)=>page2Out_11_6, 
      outputRegPage2(5)=>page2Out_11_5, outputRegPage2(4)=>page2Out_11_4, 
      outputRegPage2(3)=>page2Out_11_3, outputRegPage2(2)=>page2Out_11_2, 
      outputRegPage2(1)=>page2Out_11_1, outputRegPage2(0)=>page2Out_11_0, 
      outFilter(7)=>filtersOuts_7_7, outFilter(6)=>filtersOuts_7_6, 
      outFilter(5)=>filtersOuts_7_5, outFilter(4)=>filtersOuts_7_4, 
      outFilter(3)=>filtersOuts_7_3, outFilter(2)=>filtersOuts_7_2, 
      outFilter(1)=>filtersOuts_7_1, outFilter(0)=>filtersOuts_7_0);
   loop1_2_regRowMap_loop1_2_regUnitMap : RegUnit_8_16_unfolded2 port map ( 
      filterBus(7)=>filterBus(23), filterBus(6)=>filterBus(22), filterBus(5)
      =>filterBus(21), filterBus(4)=>filterBus(20), filterBus(3)=>
      filterBus(19), filterBus(2)=>filterBus(18), filterBus(1)=>
      filterBus(17), filterBus(0)=>filterBus(16), windowBus(15)=>
      windowBus(47), windowBus(14)=>windowBus(46), windowBus(13)=>
      windowBus(45), windowBus(12)=>windowBus(44), windowBus(11)=>
      windowBus(43), windowBus(10)=>windowBus(42), windowBus(9)=>
      windowBus(41), windowBus(8)=>windowBus(40), windowBus(7)=>
      windowBus(39), windowBus(6)=>windowBus(38), windowBus(5)=>
      windowBus(37), windowBus(4)=>windowBus(36), windowBus(3)=>
      windowBus(35), windowBus(2)=>windowBus(34), windowBus(1)=>
      windowBus(33), windowBus(0)=>windowBus(32), regPage1NextUnit(15)=>
      page1Out_17_15, regPage1NextUnit(14)=>page1Out_17_14, 
      regPage1NextUnit(13)=>page1Out_17_13, regPage1NextUnit(12)=>
      page1Out_17_12, regPage1NextUnit(11)=>page1Out_17_11, 
      regPage1NextUnit(10)=>page1Out_17_10, regPage1NextUnit(9)=>
      page1Out_17_9, regPage1NextUnit(8)=>page1Out_17_8, regPage1NextUnit(7)
      =>page1Out_17_7, regPage1NextUnit(6)=>page1Out_17_6, 
      regPage1NextUnit(5)=>page1Out_17_5, regPage1NextUnit(4)=>page1Out_17_4, 
      regPage1NextUnit(3)=>page1Out_17_3, regPage1NextUnit(2)=>page1Out_17_2, 
      regPage1NextUnit(1)=>page1Out_17_1, regPage1NextUnit(0)=>page1Out_17_0, 
      regPage2NextUnit(15)=>page2Out_17_15, regPage2NextUnit(14)=>
      page2Out_17_14, regPage2NextUnit(13)=>page2Out_17_13, 
      regPage2NextUnit(12)=>page2Out_17_12, regPage2NextUnit(11)=>
      page2Out_17_11, regPage2NextUnit(10)=>page2Out_17_10, 
      regPage2NextUnit(9)=>page2Out_17_9, regPage2NextUnit(8)=>page2Out_17_8, 
      regPage2NextUnit(7)=>page2Out_17_7, regPage2NextUnit(6)=>page2Out_17_6, 
      regPage2NextUnit(5)=>page2Out_17_5, regPage2NextUnit(4)=>page2Out_17_4, 
      regPage2NextUnit(3)=>page2Out_17_3, regPage2NextUnit(2)=>page2Out_17_2, 
      regPage2NextUnit(1)=>page2Out_17_1, regPage2NextUnit(0)=>page2Out_17_0, 
      clk=>clk, rst=>rst, enableRegPage1=>page1Enables_2, enableRegPage2=>
      page2Enables_2, enableRegFilter=>nx3486, page1ReadBusOrPage2=>
      shift2To1, page2ReadBusOrPage1=>shift1To2, pageTurn=>pageTurn, 
      outRegPage(15)=>pagesOuts_8_15, outRegPage(14)=>pagesOuts_8_14, 
      outRegPage(13)=>pagesOuts_8_13, outRegPage(12)=>pagesOuts_8_12, 
      outRegPage(11)=>pagesOuts_8_11, outRegPage(10)=>pagesOuts_8_10, 
      outRegPage(9)=>pagesOuts_8_9, outRegPage(8)=>pagesOuts_8_8, 
      outRegPage(7)=>pagesOuts_8_7, outRegPage(6)=>pagesOuts_8_6, 
      outRegPage(5)=>pagesOuts_8_5, outRegPage(4)=>pagesOuts_8_4, 
      outRegPage(3)=>pagesOuts_8_3, outRegPage(2)=>pagesOuts_8_2, 
      outRegPage(1)=>pagesOuts_8_1, outRegPage(0)=>pagesOuts_8_0, 
      outputRegPage1(15)=>page1Out_12_15, outputRegPage1(14)=>page1Out_12_14, 
      outputRegPage1(13)=>page1Out_12_13, outputRegPage1(12)=>page1Out_12_12, 
      outputRegPage1(11)=>page1Out_12_11, outputRegPage1(10)=>page1Out_12_10, 
      outputRegPage1(9)=>page1Out_12_9, outputRegPage1(8)=>page1Out_12_8, 
      outputRegPage1(7)=>page1Out_12_7, outputRegPage1(6)=>page1Out_12_6, 
      outputRegPage1(5)=>page1Out_12_5, outputRegPage1(4)=>page1Out_12_4, 
      outputRegPage1(3)=>page1Out_12_3, outputRegPage1(2)=>page1Out_12_2, 
      outputRegPage1(1)=>page1Out_12_1, outputRegPage1(0)=>page1Out_12_0, 
      outputRegPage2(15)=>page2Out_12_15, outputRegPage2(14)=>page2Out_12_14, 
      outputRegPage2(13)=>page2Out_12_13, outputRegPage2(12)=>page2Out_12_12, 
      outputRegPage2(11)=>page2Out_12_11, outputRegPage2(10)=>page2Out_12_10, 
      outputRegPage2(9)=>page2Out_12_9, outputRegPage2(8)=>page2Out_12_8, 
      outputRegPage2(7)=>page2Out_12_7, outputRegPage2(6)=>page2Out_12_6, 
      outputRegPage2(5)=>page2Out_12_5, outputRegPage2(4)=>page2Out_12_4, 
      outputRegPage2(3)=>page2Out_12_3, outputRegPage2(2)=>page2Out_12_2, 
      outputRegPage2(1)=>page2Out_12_1, outputRegPage2(0)=>page2Out_12_0, 
      outFilter(7)=>filtersOuts_8_7, outFilter(6)=>filtersOuts_8_6, 
      outFilter(5)=>filtersOuts_8_5, outFilter(4)=>filtersOuts_8_4, 
      outFilter(3)=>filtersOuts_8_3, outFilter(2)=>filtersOuts_8_2, 
      outFilter(1)=>filtersOuts_8_1, outFilter(0)=>filtersOuts_8_0);
   loop1_2_regRowMap_loop1_3_regUnitMap : RegUnit_8_16_unfolded2 port map ( 
      filterBus(7)=>filterBus(31), filterBus(6)=>filterBus(30), filterBus(5)
      =>filterBus(29), filterBus(4)=>filterBus(28), filterBus(3)=>
      filterBus(27), filterBus(2)=>filterBus(26), filterBus(1)=>
      filterBus(25), filterBus(0)=>filterBus(24), windowBus(15)=>
      windowBus(63), windowBus(14)=>windowBus(62), windowBus(13)=>
      windowBus(61), windowBus(12)=>windowBus(60), windowBus(11)=>
      windowBus(59), windowBus(10)=>windowBus(58), windowBus(9)=>
      windowBus(57), windowBus(8)=>windowBus(56), windowBus(7)=>
      windowBus(55), windowBus(6)=>windowBus(54), windowBus(5)=>
      windowBus(53), windowBus(4)=>windowBus(52), windowBus(3)=>
      windowBus(51), windowBus(2)=>windowBus(50), windowBus(1)=>
      windowBus(49), windowBus(0)=>windowBus(48), regPage1NextUnit(15)=>
      page1Out_18_15, regPage1NextUnit(14)=>page1Out_18_14, 
      regPage1NextUnit(13)=>page1Out_18_13, regPage1NextUnit(12)=>
      page1Out_18_12, regPage1NextUnit(11)=>page1Out_18_11, 
      regPage1NextUnit(10)=>page1Out_18_10, regPage1NextUnit(9)=>
      page1Out_18_9, regPage1NextUnit(8)=>page1Out_18_8, regPage1NextUnit(7)
      =>page1Out_18_7, regPage1NextUnit(6)=>page1Out_18_6, 
      regPage1NextUnit(5)=>page1Out_18_5, regPage1NextUnit(4)=>page1Out_18_4, 
      regPage1NextUnit(3)=>page1Out_18_3, regPage1NextUnit(2)=>page1Out_18_2, 
      regPage1NextUnit(1)=>page1Out_18_1, regPage1NextUnit(0)=>page1Out_18_0, 
      regPage2NextUnit(15)=>page2Out_18_15, regPage2NextUnit(14)=>
      page2Out_18_14, regPage2NextUnit(13)=>page2Out_18_13, 
      regPage2NextUnit(12)=>page2Out_18_12, regPage2NextUnit(11)=>
      page2Out_18_11, regPage2NextUnit(10)=>page2Out_18_10, 
      regPage2NextUnit(9)=>page2Out_18_9, regPage2NextUnit(8)=>page2Out_18_8, 
      regPage2NextUnit(7)=>page2Out_18_7, regPage2NextUnit(6)=>page2Out_18_6, 
      regPage2NextUnit(5)=>page2Out_18_5, regPage2NextUnit(4)=>page2Out_18_4, 
      regPage2NextUnit(3)=>page2Out_18_3, regPage2NextUnit(2)=>page2Out_18_2, 
      regPage2NextUnit(1)=>page2Out_18_1, regPage2NextUnit(0)=>page2Out_18_0, 
      clk=>clk, rst=>rst, enableRegPage1=>page1Enables_2, enableRegPage2=>
      page2Enables_2, enableRegFilter=>nx3488, page1ReadBusOrPage2=>
      shift2To1, page2ReadBusOrPage1=>shift1To2, pageTurn=>pageTurn, 
      outRegPage(15)=>pagesOuts_19_15, outRegPage(14)=>pagesOuts_19_14, 
      outRegPage(13)=>pagesOuts_19_13, outRegPage(12)=>pagesOuts_19_12, 
      outRegPage(11)=>pagesOuts_19_11, outRegPage(10)=>pagesOuts_19_10, 
      outRegPage(9)=>pagesOuts_19_9, outRegPage(8)=>pagesOuts_19_8, 
      outRegPage(7)=>pagesOuts_19_7, outRegPage(6)=>pagesOuts_19_6, 
      outRegPage(5)=>pagesOuts_19_5, outRegPage(4)=>pagesOuts_19_4, 
      outRegPage(3)=>pagesOuts_19_3, outRegPage(2)=>pagesOuts_19_2, 
      outRegPage(1)=>pagesOuts_19_1, outRegPage(0)=>pagesOuts_19_0, 
      outputRegPage1(15)=>page1Out_13_15, outputRegPage1(14)=>page1Out_13_14, 
      outputRegPage1(13)=>page1Out_13_13, outputRegPage1(12)=>page1Out_13_12, 
      outputRegPage1(11)=>page1Out_13_11, outputRegPage1(10)=>page1Out_13_10, 
      outputRegPage1(9)=>page1Out_13_9, outputRegPage1(8)=>page1Out_13_8, 
      outputRegPage1(7)=>page1Out_13_7, outputRegPage1(6)=>page1Out_13_6, 
      outputRegPage1(5)=>page1Out_13_5, outputRegPage1(4)=>page1Out_13_4, 
      outputRegPage1(3)=>page1Out_13_3, outputRegPage1(2)=>page1Out_13_2, 
      outputRegPage1(1)=>page1Out_13_1, outputRegPage1(0)=>page1Out_13_0, 
      outputRegPage2(15)=>page2Out_13_15, outputRegPage2(14)=>page2Out_13_14, 
      outputRegPage2(13)=>page2Out_13_13, outputRegPage2(12)=>page2Out_13_12, 
      outputRegPage2(11)=>page2Out_13_11, outputRegPage2(10)=>page2Out_13_10, 
      outputRegPage2(9)=>page2Out_13_9, outputRegPage2(8)=>page2Out_13_8, 
      outputRegPage2(7)=>page2Out_13_7, outputRegPage2(6)=>page2Out_13_6, 
      outputRegPage2(5)=>page2Out_13_5, outputRegPage2(4)=>page2Out_13_4, 
      outputRegPage2(3)=>page2Out_13_3, outputRegPage2(2)=>page2Out_13_2, 
      outputRegPage2(1)=>page2Out_13_1, outputRegPage2(0)=>page2Out_13_0, 
      outFilter(7)=>filtersOuts_19_7, outFilter(6)=>filtersOuts_19_6, 
      outFilter(5)=>filtersOuts_19_5, outFilter(4)=>filtersOuts_19_4, 
      outFilter(3)=>filtersOuts_19_3, outFilter(2)=>filtersOuts_19_2, 
      outFilter(1)=>filtersOuts_19_1, outFilter(0)=>filtersOuts_19_0);
   loop1_2_regRowMap_loop1_4_regUnitMap : RegUnit_8_16_unfolded2 port map ( 
      filterBus(7)=>filterBus(39), filterBus(6)=>filterBus(38), filterBus(5)
      =>filterBus(37), filterBus(4)=>filterBus(36), filterBus(3)=>
      filterBus(35), filterBus(2)=>filterBus(34), filterBus(1)=>
      filterBus(33), filterBus(0)=>filterBus(32), windowBus(15)=>
      windowBus(79), windowBus(14)=>windowBus(78), windowBus(13)=>
      windowBus(77), windowBus(12)=>windowBus(76), windowBus(11)=>
      windowBus(75), windowBus(10)=>windowBus(74), windowBus(9)=>
      windowBus(73), windowBus(8)=>windowBus(72), windowBus(7)=>
      windowBus(71), windowBus(6)=>windowBus(70), windowBus(5)=>
      windowBus(69), windowBus(4)=>windowBus(68), windowBus(3)=>
      windowBus(67), windowBus(2)=>windowBus(66), windowBus(1)=>
      windowBus(65), windowBus(0)=>windowBus(64), regPage1NextUnit(15)=>
      page1Out_19_15, regPage1NextUnit(14)=>page1Out_19_14, 
      regPage1NextUnit(13)=>page1Out_19_13, regPage1NextUnit(12)=>
      page1Out_19_12, regPage1NextUnit(11)=>page1Out_19_11, 
      regPage1NextUnit(10)=>page1Out_19_10, regPage1NextUnit(9)=>
      page1Out_19_9, regPage1NextUnit(8)=>page1Out_19_8, regPage1NextUnit(7)
      =>page1Out_19_7, regPage1NextUnit(6)=>page1Out_19_6, 
      regPage1NextUnit(5)=>page1Out_19_5, regPage1NextUnit(4)=>page1Out_19_4, 
      regPage1NextUnit(3)=>page1Out_19_3, regPage1NextUnit(2)=>page1Out_19_2, 
      regPage1NextUnit(1)=>page1Out_19_1, regPage1NextUnit(0)=>page1Out_19_0, 
      regPage2NextUnit(15)=>page2Out_19_15, regPage2NextUnit(14)=>
      page2Out_19_14, regPage2NextUnit(13)=>page2Out_19_13, 
      regPage2NextUnit(12)=>page2Out_19_12, regPage2NextUnit(11)=>
      page2Out_19_11, regPage2NextUnit(10)=>page2Out_19_10, 
      regPage2NextUnit(9)=>page2Out_19_9, regPage2NextUnit(8)=>page2Out_19_8, 
      regPage2NextUnit(7)=>page2Out_19_7, regPage2NextUnit(6)=>page2Out_19_6, 
      regPage2NextUnit(5)=>page2Out_19_5, regPage2NextUnit(4)=>page2Out_19_4, 
      regPage2NextUnit(3)=>page2Out_19_3, regPage2NextUnit(2)=>page2Out_19_2, 
      regPage2NextUnit(1)=>page2Out_19_1, regPage2NextUnit(0)=>page2Out_19_0, 
      clk=>clk, rst=>rst, enableRegPage1=>page1Enables_2, enableRegPage2=>
      page2Enables_2, enableRegFilter=>nx3488, page1ReadBusOrPage2=>
      shift2To1, page2ReadBusOrPage1=>shift1To2, pageTurn=>pageTurn, 
      outRegPage(15)=>pagesOuts_20_15, outRegPage(14)=>pagesOuts_20_14, 
      outRegPage(13)=>pagesOuts_20_13, outRegPage(12)=>pagesOuts_20_12, 
      outRegPage(11)=>pagesOuts_20_11, outRegPage(10)=>pagesOuts_20_10, 
      outRegPage(9)=>pagesOuts_20_9, outRegPage(8)=>pagesOuts_20_8, 
      outRegPage(7)=>pagesOuts_20_7, outRegPage(6)=>pagesOuts_20_6, 
      outRegPage(5)=>pagesOuts_20_5, outRegPage(4)=>pagesOuts_20_4, 
      outRegPage(3)=>pagesOuts_20_3, outRegPage(2)=>pagesOuts_20_2, 
      outRegPage(1)=>pagesOuts_20_1, outRegPage(0)=>pagesOuts_20_0, 
      outputRegPage1(15)=>page1Out_14_15, outputRegPage1(14)=>page1Out_14_14, 
      outputRegPage1(13)=>page1Out_14_13, outputRegPage1(12)=>page1Out_14_12, 
      outputRegPage1(11)=>page1Out_14_11, outputRegPage1(10)=>page1Out_14_10, 
      outputRegPage1(9)=>page1Out_14_9, outputRegPage1(8)=>page1Out_14_8, 
      outputRegPage1(7)=>page1Out_14_7, outputRegPage1(6)=>page1Out_14_6, 
      outputRegPage1(5)=>page1Out_14_5, outputRegPage1(4)=>page1Out_14_4, 
      outputRegPage1(3)=>page1Out_14_3, outputRegPage1(2)=>page1Out_14_2, 
      outputRegPage1(1)=>page1Out_14_1, outputRegPage1(0)=>page1Out_14_0, 
      outputRegPage2(15)=>page2Out_14_15, outputRegPage2(14)=>page2Out_14_14, 
      outputRegPage2(13)=>page2Out_14_13, outputRegPage2(12)=>page2Out_14_12, 
      outputRegPage2(11)=>page2Out_14_11, outputRegPage2(10)=>page2Out_14_10, 
      outputRegPage2(9)=>page2Out_14_9, outputRegPage2(8)=>page2Out_14_8, 
      outputRegPage2(7)=>page2Out_14_7, outputRegPage2(6)=>page2Out_14_6, 
      outputRegPage2(5)=>page2Out_14_5, outputRegPage2(4)=>page2Out_14_4, 
      outputRegPage2(3)=>page2Out_14_3, outputRegPage2(2)=>page2Out_14_2, 
      outputRegPage2(1)=>page2Out_14_1, outputRegPage2(0)=>page2Out_14_0, 
      outFilter(7)=>filtersOuts_20_7, outFilter(6)=>filtersOuts_20_6, 
      outFilter(5)=>filtersOuts_20_5, outFilter(4)=>filtersOuts_20_4, 
      outFilter(3)=>filtersOuts_20_3, outFilter(2)=>filtersOuts_20_2, 
      outFilter(1)=>filtersOuts_20_1, outFilter(0)=>filtersOuts_20_0);
   loop1_3_regRowMap_loop1_0_regUnitMap : RegUnit_8_16_unfolded2 port map ( 
      filterBus(7)=>filterBus(7), filterBus(6)=>filterBus(6), filterBus(5)=>
      filterBus(5), filterBus(4)=>filterBus(4), filterBus(3)=>filterBus(3), 
      filterBus(2)=>filterBus(2), filterBus(1)=>filterBus(1), filterBus(0)=>
      filterBus(0), windowBus(15)=>windowBus(15), windowBus(14)=>
      windowBus(14), windowBus(13)=>windowBus(13), windowBus(12)=>
      windowBus(12), windowBus(11)=>windowBus(11), windowBus(10)=>
      windowBus(10), windowBus(9)=>windowBus(9), windowBus(8)=>windowBus(8), 
      windowBus(7)=>windowBus(7), windowBus(6)=>windowBus(6), windowBus(5)=>
      windowBus(5), windowBus(4)=>windowBus(4), windowBus(3)=>windowBus(3), 
      windowBus(2)=>windowBus(2), windowBus(1)=>windowBus(1), windowBus(0)=>
      windowBus(0), regPage1NextUnit(15)=>page1Out_20_15, 
      regPage1NextUnit(14)=>page1Out_20_14, regPage1NextUnit(13)=>
      page1Out_20_13, regPage1NextUnit(12)=>page1Out_20_12, 
      regPage1NextUnit(11)=>page1Out_20_11, regPage1NextUnit(10)=>
      page1Out_20_10, regPage1NextUnit(9)=>page1Out_20_9, 
      regPage1NextUnit(8)=>page1Out_20_8, regPage1NextUnit(7)=>page1Out_20_7, 
      regPage1NextUnit(6)=>page1Out_20_6, regPage1NextUnit(5)=>page1Out_20_5, 
      regPage1NextUnit(4)=>page1Out_20_4, regPage1NextUnit(3)=>page1Out_20_3, 
      regPage1NextUnit(2)=>page1Out_20_2, regPage1NextUnit(1)=>page1Out_20_1, 
      regPage1NextUnit(0)=>page1Out_20_0, regPage2NextUnit(15)=>
      page2Out_20_15, regPage2NextUnit(14)=>page2Out_20_14, 
      regPage2NextUnit(13)=>page2Out_20_13, regPage2NextUnit(12)=>
      page2Out_20_12, regPage2NextUnit(11)=>page2Out_20_11, 
      regPage2NextUnit(10)=>page2Out_20_10, regPage2NextUnit(9)=>
      page2Out_20_9, regPage2NextUnit(8)=>page2Out_20_8, regPage2NextUnit(7)
      =>page2Out_20_7, regPage2NextUnit(6)=>page2Out_20_6, 
      regPage2NextUnit(5)=>page2Out_20_5, regPage2NextUnit(4)=>page2Out_20_4, 
      regPage2NextUnit(3)=>page2Out_20_3, regPage2NextUnit(2)=>page2Out_20_2, 
      regPage2NextUnit(1)=>page2Out_20_1, regPage2NextUnit(0)=>page2Out_20_0, 
      clk=>clk, rst=>rst, enableRegPage1=>page1Enables_3, enableRegPage2=>
      page2Enables_3, enableRegFilter=>nx3490, page1ReadBusOrPage2=>
      shift2To1, page2ReadBusOrPage1=>shift1To2, pageTurn=>pageTurn, 
      outRegPage(15)=>pagesOuts_9_15, outRegPage(14)=>pagesOuts_9_14, 
      outRegPage(13)=>pagesOuts_9_13, outRegPage(12)=>pagesOuts_9_12, 
      outRegPage(11)=>pagesOuts_9_11, outRegPage(10)=>pagesOuts_9_10, 
      outRegPage(9)=>pagesOuts_9_9, outRegPage(8)=>pagesOuts_9_8, 
      outRegPage(7)=>pagesOuts_9_7, outRegPage(6)=>pagesOuts_9_6, 
      outRegPage(5)=>pagesOuts_9_5, outRegPage(4)=>pagesOuts_9_4, 
      outRegPage(3)=>pagesOuts_9_3, outRegPage(2)=>pagesOuts_9_2, 
      outRegPage(1)=>pagesOuts_9_1, outRegPage(0)=>pagesOuts_9_0, 
      outputRegPage1(15)=>page1Out_15_15, outputRegPage1(14)=>page1Out_15_14, 
      outputRegPage1(13)=>page1Out_15_13, outputRegPage1(12)=>page1Out_15_12, 
      outputRegPage1(11)=>page1Out_15_11, outputRegPage1(10)=>page1Out_15_10, 
      outputRegPage1(9)=>page1Out_15_9, outputRegPage1(8)=>page1Out_15_8, 
      outputRegPage1(7)=>page1Out_15_7, outputRegPage1(6)=>page1Out_15_6, 
      outputRegPage1(5)=>page1Out_15_5, outputRegPage1(4)=>page1Out_15_4, 
      outputRegPage1(3)=>page1Out_15_3, outputRegPage1(2)=>page1Out_15_2, 
      outputRegPage1(1)=>page1Out_15_1, outputRegPage1(0)=>page1Out_15_0, 
      outputRegPage2(15)=>page2Out_15_15, outputRegPage2(14)=>page2Out_15_14, 
      outputRegPage2(13)=>page2Out_15_13, outputRegPage2(12)=>page2Out_15_12, 
      outputRegPage2(11)=>page2Out_15_11, outputRegPage2(10)=>page2Out_15_10, 
      outputRegPage2(9)=>page2Out_15_9, outputRegPage2(8)=>page2Out_15_8, 
      outputRegPage2(7)=>page2Out_15_7, outputRegPage2(6)=>page2Out_15_6, 
      outputRegPage2(5)=>page2Out_15_5, outputRegPage2(4)=>page2Out_15_4, 
      outputRegPage2(3)=>page2Out_15_3, outputRegPage2(2)=>page2Out_15_2, 
      outputRegPage2(1)=>page2Out_15_1, outputRegPage2(0)=>page2Out_15_0, 
      outFilter(7)=>filtersOuts_9_7, outFilter(6)=>filtersOuts_9_6, 
      outFilter(5)=>filtersOuts_9_5, outFilter(4)=>filtersOuts_9_4, 
      outFilter(3)=>filtersOuts_9_3, outFilter(2)=>filtersOuts_9_2, 
      outFilter(1)=>filtersOuts_9_1, outFilter(0)=>filtersOuts_9_0);
   loop1_3_regRowMap_loop1_1_regUnitMap : RegUnit_8_16_unfolded2 port map ( 
      filterBus(7)=>filterBus(15), filterBus(6)=>filterBus(14), filterBus(5)
      =>filterBus(13), filterBus(4)=>filterBus(12), filterBus(3)=>
      filterBus(11), filterBus(2)=>filterBus(10), filterBus(1)=>filterBus(9), 
      filterBus(0)=>filterBus(8), windowBus(15)=>windowBus(31), 
      windowBus(14)=>windowBus(30), windowBus(13)=>windowBus(29), 
      windowBus(12)=>windowBus(28), windowBus(11)=>windowBus(27), 
      windowBus(10)=>windowBus(26), windowBus(9)=>windowBus(25), 
      windowBus(8)=>windowBus(24), windowBus(7)=>windowBus(23), windowBus(6)
      =>windowBus(22), windowBus(5)=>windowBus(21), windowBus(4)=>
      windowBus(20), windowBus(3)=>windowBus(19), windowBus(2)=>
      windowBus(18), windowBus(1)=>windowBus(17), windowBus(0)=>
      windowBus(16), regPage1NextUnit(15)=>page1Out_21_15, 
      regPage1NextUnit(14)=>page1Out_21_14, regPage1NextUnit(13)=>
      page1Out_21_13, regPage1NextUnit(12)=>page1Out_21_12, 
      regPage1NextUnit(11)=>page1Out_21_11, regPage1NextUnit(10)=>
      page1Out_21_10, regPage1NextUnit(9)=>page1Out_21_9, 
      regPage1NextUnit(8)=>page1Out_21_8, regPage1NextUnit(7)=>page1Out_21_7, 
      regPage1NextUnit(6)=>page1Out_21_6, regPage1NextUnit(5)=>page1Out_21_5, 
      regPage1NextUnit(4)=>page1Out_21_4, regPage1NextUnit(3)=>page1Out_21_3, 
      regPage1NextUnit(2)=>page1Out_21_2, regPage1NextUnit(1)=>page1Out_21_1, 
      regPage1NextUnit(0)=>page1Out_21_0, regPage2NextUnit(15)=>
      page2Out_21_15, regPage2NextUnit(14)=>page2Out_21_14, 
      regPage2NextUnit(13)=>page2Out_21_13, regPage2NextUnit(12)=>
      page2Out_21_12, regPage2NextUnit(11)=>page2Out_21_11, 
      regPage2NextUnit(10)=>page2Out_21_10, regPage2NextUnit(9)=>
      page2Out_21_9, regPage2NextUnit(8)=>page2Out_21_8, regPage2NextUnit(7)
      =>page2Out_21_7, regPage2NextUnit(6)=>page2Out_21_6, 
      regPage2NextUnit(5)=>page2Out_21_5, regPage2NextUnit(4)=>page2Out_21_4, 
      regPage2NextUnit(3)=>page2Out_21_3, regPage2NextUnit(2)=>page2Out_21_2, 
      regPage2NextUnit(1)=>page2Out_21_1, regPage2NextUnit(0)=>page2Out_21_0, 
      clk=>clk, rst=>rst, enableRegPage1=>page1Enables_3, enableRegPage2=>
      page2Enables_3, enableRegFilter=>nx3490, page1ReadBusOrPage2=>
      shift2To1, page2ReadBusOrPage1=>shift1To2, pageTurn=>pageTurn, 
      outRegPage(15)=>pagesOuts_10_15, outRegPage(14)=>pagesOuts_10_14, 
      outRegPage(13)=>pagesOuts_10_13, outRegPage(12)=>pagesOuts_10_12, 
      outRegPage(11)=>pagesOuts_10_11, outRegPage(10)=>pagesOuts_10_10, 
      outRegPage(9)=>pagesOuts_10_9, outRegPage(8)=>pagesOuts_10_8, 
      outRegPage(7)=>pagesOuts_10_7, outRegPage(6)=>pagesOuts_10_6, 
      outRegPage(5)=>pagesOuts_10_5, outRegPage(4)=>pagesOuts_10_4, 
      outRegPage(3)=>pagesOuts_10_3, outRegPage(2)=>pagesOuts_10_2, 
      outRegPage(1)=>pagesOuts_10_1, outRegPage(0)=>pagesOuts_10_0, 
      outputRegPage1(15)=>page1Out_16_15, outputRegPage1(14)=>page1Out_16_14, 
      outputRegPage1(13)=>page1Out_16_13, outputRegPage1(12)=>page1Out_16_12, 
      outputRegPage1(11)=>page1Out_16_11, outputRegPage1(10)=>page1Out_16_10, 
      outputRegPage1(9)=>page1Out_16_9, outputRegPage1(8)=>page1Out_16_8, 
      outputRegPage1(7)=>page1Out_16_7, outputRegPage1(6)=>page1Out_16_6, 
      outputRegPage1(5)=>page1Out_16_5, outputRegPage1(4)=>page1Out_16_4, 
      outputRegPage1(3)=>page1Out_16_3, outputRegPage1(2)=>page1Out_16_2, 
      outputRegPage1(1)=>page1Out_16_1, outputRegPage1(0)=>page1Out_16_0, 
      outputRegPage2(15)=>page2Out_16_15, outputRegPage2(14)=>page2Out_16_14, 
      outputRegPage2(13)=>page2Out_16_13, outputRegPage2(12)=>page2Out_16_12, 
      outputRegPage2(11)=>page2Out_16_11, outputRegPage2(10)=>page2Out_16_10, 
      outputRegPage2(9)=>page2Out_16_9, outputRegPage2(8)=>page2Out_16_8, 
      outputRegPage2(7)=>page2Out_16_7, outputRegPage2(6)=>page2Out_16_6, 
      outputRegPage2(5)=>page2Out_16_5, outputRegPage2(4)=>page2Out_16_4, 
      outputRegPage2(3)=>page2Out_16_3, outputRegPage2(2)=>page2Out_16_2, 
      outputRegPage2(1)=>page2Out_16_1, outputRegPage2(0)=>page2Out_16_0, 
      outFilter(7)=>filtersOuts_10_7, outFilter(6)=>filtersOuts_10_6, 
      outFilter(5)=>filtersOuts_10_5, outFilter(4)=>filtersOuts_10_4, 
      outFilter(3)=>filtersOuts_10_3, outFilter(2)=>filtersOuts_10_2, 
      outFilter(1)=>filtersOuts_10_1, outFilter(0)=>filtersOuts_10_0);
   loop1_3_regRowMap_loop1_2_regUnitMap : RegUnit_8_16_unfolded2 port map ( 
      filterBus(7)=>filterBus(23), filterBus(6)=>filterBus(22), filterBus(5)
      =>filterBus(21), filterBus(4)=>filterBus(20), filterBus(3)=>
      filterBus(19), filterBus(2)=>filterBus(18), filterBus(1)=>
      filterBus(17), filterBus(0)=>filterBus(16), windowBus(15)=>
      windowBus(47), windowBus(14)=>windowBus(46), windowBus(13)=>
      windowBus(45), windowBus(12)=>windowBus(44), windowBus(11)=>
      windowBus(43), windowBus(10)=>windowBus(42), windowBus(9)=>
      windowBus(41), windowBus(8)=>windowBus(40), windowBus(7)=>
      windowBus(39), windowBus(6)=>windowBus(38), windowBus(5)=>
      windowBus(37), windowBus(4)=>windowBus(36), windowBus(3)=>
      windowBus(35), windowBus(2)=>windowBus(34), windowBus(1)=>
      windowBus(33), windowBus(0)=>windowBus(32), regPage1NextUnit(15)=>
      page1Out_22_15, regPage1NextUnit(14)=>page1Out_22_14, 
      regPage1NextUnit(13)=>page1Out_22_13, regPage1NextUnit(12)=>
      page1Out_22_12, regPage1NextUnit(11)=>page1Out_22_11, 
      regPage1NextUnit(10)=>page1Out_22_10, regPage1NextUnit(9)=>
      page1Out_22_9, regPage1NextUnit(8)=>page1Out_22_8, regPage1NextUnit(7)
      =>page1Out_22_7, regPage1NextUnit(6)=>page1Out_22_6, 
      regPage1NextUnit(5)=>page1Out_22_5, regPage1NextUnit(4)=>page1Out_22_4, 
      regPage1NextUnit(3)=>page1Out_22_3, regPage1NextUnit(2)=>page1Out_22_2, 
      regPage1NextUnit(1)=>page1Out_22_1, regPage1NextUnit(0)=>page1Out_22_0, 
      regPage2NextUnit(15)=>page2Out_22_15, regPage2NextUnit(14)=>
      page2Out_22_14, regPage2NextUnit(13)=>page2Out_22_13, 
      regPage2NextUnit(12)=>page2Out_22_12, regPage2NextUnit(11)=>
      page2Out_22_11, regPage2NextUnit(10)=>page2Out_22_10, 
      regPage2NextUnit(9)=>page2Out_22_9, regPage2NextUnit(8)=>page2Out_22_8, 
      regPage2NextUnit(7)=>page2Out_22_7, regPage2NextUnit(6)=>page2Out_22_6, 
      regPage2NextUnit(5)=>page2Out_22_5, regPage2NextUnit(4)=>page2Out_22_4, 
      regPage2NextUnit(3)=>page2Out_22_3, regPage2NextUnit(2)=>page2Out_22_2, 
      regPage2NextUnit(1)=>page2Out_22_1, regPage2NextUnit(0)=>page2Out_22_0, 
      clk=>clk, rst=>rst, enableRegPage1=>page1Enables_3, enableRegPage2=>
      page2Enables_3, enableRegFilter=>nx3490, page1ReadBusOrPage2=>
      shift2To1, page2ReadBusOrPage1=>shift1To2, pageTurn=>pageTurn, 
      outRegPage(15)=>pagesOuts_11_15, outRegPage(14)=>pagesOuts_11_14, 
      outRegPage(13)=>pagesOuts_11_13, outRegPage(12)=>pagesOuts_11_12, 
      outRegPage(11)=>pagesOuts_11_11, outRegPage(10)=>pagesOuts_11_10, 
      outRegPage(9)=>pagesOuts_11_9, outRegPage(8)=>pagesOuts_11_8, 
      outRegPage(7)=>pagesOuts_11_7, outRegPage(6)=>pagesOuts_11_6, 
      outRegPage(5)=>pagesOuts_11_5, outRegPage(4)=>pagesOuts_11_4, 
      outRegPage(3)=>pagesOuts_11_3, outRegPage(2)=>pagesOuts_11_2, 
      outRegPage(1)=>pagesOuts_11_1, outRegPage(0)=>pagesOuts_11_0, 
      outputRegPage1(15)=>page1Out_17_15, outputRegPage1(14)=>page1Out_17_14, 
      outputRegPage1(13)=>page1Out_17_13, outputRegPage1(12)=>page1Out_17_12, 
      outputRegPage1(11)=>page1Out_17_11, outputRegPage1(10)=>page1Out_17_10, 
      outputRegPage1(9)=>page1Out_17_9, outputRegPage1(8)=>page1Out_17_8, 
      outputRegPage1(7)=>page1Out_17_7, outputRegPage1(6)=>page1Out_17_6, 
      outputRegPage1(5)=>page1Out_17_5, outputRegPage1(4)=>page1Out_17_4, 
      outputRegPage1(3)=>page1Out_17_3, outputRegPage1(2)=>page1Out_17_2, 
      outputRegPage1(1)=>page1Out_17_1, outputRegPage1(0)=>page1Out_17_0, 
      outputRegPage2(15)=>page2Out_17_15, outputRegPage2(14)=>page2Out_17_14, 
      outputRegPage2(13)=>page2Out_17_13, outputRegPage2(12)=>page2Out_17_12, 
      outputRegPage2(11)=>page2Out_17_11, outputRegPage2(10)=>page2Out_17_10, 
      outputRegPage2(9)=>page2Out_17_9, outputRegPage2(8)=>page2Out_17_8, 
      outputRegPage2(7)=>page2Out_17_7, outputRegPage2(6)=>page2Out_17_6, 
      outputRegPage2(5)=>page2Out_17_5, outputRegPage2(4)=>page2Out_17_4, 
      outputRegPage2(3)=>page2Out_17_3, outputRegPage2(2)=>page2Out_17_2, 
      outputRegPage2(1)=>page2Out_17_1, outputRegPage2(0)=>page2Out_17_0, 
      outFilter(7)=>filtersOuts_11_7, outFilter(6)=>filtersOuts_11_6, 
      outFilter(5)=>filtersOuts_11_5, outFilter(4)=>filtersOuts_11_4, 
      outFilter(3)=>filtersOuts_11_3, outFilter(2)=>filtersOuts_11_2, 
      outFilter(1)=>filtersOuts_11_1, outFilter(0)=>filtersOuts_11_0);
   loop1_3_regRowMap_loop1_3_regUnitMap : RegUnit_8_16_unfolded2 port map ( 
      filterBus(7)=>filterBus(31), filterBus(6)=>filterBus(30), filterBus(5)
      =>filterBus(29), filterBus(4)=>filterBus(28), filterBus(3)=>
      filterBus(27), filterBus(2)=>filterBus(26), filterBus(1)=>
      filterBus(25), filterBus(0)=>filterBus(24), windowBus(15)=>
      windowBus(63), windowBus(14)=>windowBus(62), windowBus(13)=>
      windowBus(61), windowBus(12)=>windowBus(60), windowBus(11)=>
      windowBus(59), windowBus(10)=>windowBus(58), windowBus(9)=>
      windowBus(57), windowBus(8)=>windowBus(56), windowBus(7)=>
      windowBus(55), windowBus(6)=>windowBus(54), windowBus(5)=>
      windowBus(53), windowBus(4)=>windowBus(52), windowBus(3)=>
      windowBus(51), windowBus(2)=>windowBus(50), windowBus(1)=>
      windowBus(49), windowBus(0)=>windowBus(48), regPage1NextUnit(15)=>
      page1Out_23_15, regPage1NextUnit(14)=>page1Out_23_14, 
      regPage1NextUnit(13)=>page1Out_23_13, regPage1NextUnit(12)=>
      page1Out_23_12, regPage1NextUnit(11)=>page1Out_23_11, 
      regPage1NextUnit(10)=>page1Out_23_10, regPage1NextUnit(9)=>
      page1Out_23_9, regPage1NextUnit(8)=>page1Out_23_8, regPage1NextUnit(7)
      =>page1Out_23_7, regPage1NextUnit(6)=>page1Out_23_6, 
      regPage1NextUnit(5)=>page1Out_23_5, regPage1NextUnit(4)=>page1Out_23_4, 
      regPage1NextUnit(3)=>page1Out_23_3, regPage1NextUnit(2)=>page1Out_23_2, 
      regPage1NextUnit(1)=>page1Out_23_1, regPage1NextUnit(0)=>page1Out_23_0, 
      regPage2NextUnit(15)=>page2Out_23_15, regPage2NextUnit(14)=>
      page2Out_23_14, regPage2NextUnit(13)=>page2Out_23_13, 
      regPage2NextUnit(12)=>page2Out_23_12, regPage2NextUnit(11)=>
      page2Out_23_11, regPage2NextUnit(10)=>page2Out_23_10, 
      regPage2NextUnit(9)=>page2Out_23_9, regPage2NextUnit(8)=>page2Out_23_8, 
      regPage2NextUnit(7)=>page2Out_23_7, regPage2NextUnit(6)=>page2Out_23_6, 
      regPage2NextUnit(5)=>page2Out_23_5, regPage2NextUnit(4)=>page2Out_23_4, 
      regPage2NextUnit(3)=>page2Out_23_3, regPage2NextUnit(2)=>page2Out_23_2, 
      regPage2NextUnit(1)=>page2Out_23_1, regPage2NextUnit(0)=>page2Out_23_0, 
      clk=>clk, rst=>rst, enableRegPage1=>page1Enables_3, enableRegPage2=>
      page2Enables_3, enableRegFilter=>nx3492, page1ReadBusOrPage2=>
      shift2To1, page2ReadBusOrPage1=>shift1To2, pageTurn=>pageTurn, 
      outRegPage(15)=>pagesOuts_21_15, outRegPage(14)=>pagesOuts_21_14, 
      outRegPage(13)=>pagesOuts_21_13, outRegPage(12)=>pagesOuts_21_12, 
      outRegPage(11)=>pagesOuts_21_11, outRegPage(10)=>pagesOuts_21_10, 
      outRegPage(9)=>pagesOuts_21_9, outRegPage(8)=>pagesOuts_21_8, 
      outRegPage(7)=>pagesOuts_21_7, outRegPage(6)=>pagesOuts_21_6, 
      outRegPage(5)=>pagesOuts_21_5, outRegPage(4)=>pagesOuts_21_4, 
      outRegPage(3)=>pagesOuts_21_3, outRegPage(2)=>pagesOuts_21_2, 
      outRegPage(1)=>pagesOuts_21_1, outRegPage(0)=>pagesOuts_21_0, 
      outputRegPage1(15)=>page1Out_18_15, outputRegPage1(14)=>page1Out_18_14, 
      outputRegPage1(13)=>page1Out_18_13, outputRegPage1(12)=>page1Out_18_12, 
      outputRegPage1(11)=>page1Out_18_11, outputRegPage1(10)=>page1Out_18_10, 
      outputRegPage1(9)=>page1Out_18_9, outputRegPage1(8)=>page1Out_18_8, 
      outputRegPage1(7)=>page1Out_18_7, outputRegPage1(6)=>page1Out_18_6, 
      outputRegPage1(5)=>page1Out_18_5, outputRegPage1(4)=>page1Out_18_4, 
      outputRegPage1(3)=>page1Out_18_3, outputRegPage1(2)=>page1Out_18_2, 
      outputRegPage1(1)=>page1Out_18_1, outputRegPage1(0)=>page1Out_18_0, 
      outputRegPage2(15)=>page2Out_18_15, outputRegPage2(14)=>page2Out_18_14, 
      outputRegPage2(13)=>page2Out_18_13, outputRegPage2(12)=>page2Out_18_12, 
      outputRegPage2(11)=>page2Out_18_11, outputRegPage2(10)=>page2Out_18_10, 
      outputRegPage2(9)=>page2Out_18_9, outputRegPage2(8)=>page2Out_18_8, 
      outputRegPage2(7)=>page2Out_18_7, outputRegPage2(6)=>page2Out_18_6, 
      outputRegPage2(5)=>page2Out_18_5, outputRegPage2(4)=>page2Out_18_4, 
      outputRegPage2(3)=>page2Out_18_3, outputRegPage2(2)=>page2Out_18_2, 
      outputRegPage2(1)=>page2Out_18_1, outputRegPage2(0)=>page2Out_18_0, 
      outFilter(7)=>filtersOuts_21_7, outFilter(6)=>filtersOuts_21_6, 
      outFilter(5)=>filtersOuts_21_5, outFilter(4)=>filtersOuts_21_4, 
      outFilter(3)=>filtersOuts_21_3, outFilter(2)=>filtersOuts_21_2, 
      outFilter(1)=>filtersOuts_21_1, outFilter(0)=>filtersOuts_21_0);
   loop1_3_regRowMap_loop1_4_regUnitMap : RegUnit_8_16_unfolded2 port map ( 
      filterBus(7)=>filterBus(39), filterBus(6)=>filterBus(38), filterBus(5)
      =>filterBus(37), filterBus(4)=>filterBus(36), filterBus(3)=>
      filterBus(35), filterBus(2)=>filterBus(34), filterBus(1)=>
      filterBus(33), filterBus(0)=>filterBus(32), windowBus(15)=>
      windowBus(79), windowBus(14)=>windowBus(78), windowBus(13)=>
      windowBus(77), windowBus(12)=>windowBus(76), windowBus(11)=>
      windowBus(75), windowBus(10)=>windowBus(74), windowBus(9)=>
      windowBus(73), windowBus(8)=>windowBus(72), windowBus(7)=>
      windowBus(71), windowBus(6)=>windowBus(70), windowBus(5)=>
      windowBus(69), windowBus(4)=>windowBus(68), windowBus(3)=>
      windowBus(67), windowBus(2)=>windowBus(66), windowBus(1)=>
      windowBus(65), windowBus(0)=>windowBus(64), regPage1NextUnit(15)=>
      page1Out_24_15, regPage1NextUnit(14)=>page1Out_24_14, 
      regPage1NextUnit(13)=>page1Out_24_13, regPage1NextUnit(12)=>
      page1Out_24_12, regPage1NextUnit(11)=>page1Out_24_11, 
      regPage1NextUnit(10)=>page1Out_24_10, regPage1NextUnit(9)=>
      page1Out_24_9, regPage1NextUnit(8)=>page1Out_24_8, regPage1NextUnit(7)
      =>page1Out_24_7, regPage1NextUnit(6)=>page1Out_24_6, 
      regPage1NextUnit(5)=>page1Out_24_5, regPage1NextUnit(4)=>page1Out_24_4, 
      regPage1NextUnit(3)=>page1Out_24_3, regPage1NextUnit(2)=>page1Out_24_2, 
      regPage1NextUnit(1)=>page1Out_24_1, regPage1NextUnit(0)=>page1Out_24_0, 
      regPage2NextUnit(15)=>page2Out_24_15, regPage2NextUnit(14)=>
      page2Out_24_14, regPage2NextUnit(13)=>page2Out_24_13, 
      regPage2NextUnit(12)=>page2Out_24_12, regPage2NextUnit(11)=>
      page2Out_24_11, regPage2NextUnit(10)=>page2Out_24_10, 
      regPage2NextUnit(9)=>page2Out_24_9, regPage2NextUnit(8)=>page2Out_24_8, 
      regPage2NextUnit(7)=>page2Out_24_7, regPage2NextUnit(6)=>page2Out_24_6, 
      regPage2NextUnit(5)=>page2Out_24_5, regPage2NextUnit(4)=>page2Out_24_4, 
      regPage2NextUnit(3)=>page2Out_24_3, regPage2NextUnit(2)=>page2Out_24_2, 
      regPage2NextUnit(1)=>page2Out_24_1, regPage2NextUnit(0)=>page2Out_24_0, 
      clk=>clk, rst=>rst, enableRegPage1=>page1Enables_3, enableRegPage2=>
      page2Enables_3, enableRegFilter=>nx3492, page1ReadBusOrPage2=>
      shift2To1, page2ReadBusOrPage1=>shift1To2, pageTurn=>pageTurn, 
      outRegPage(15)=>pagesOuts_22_15, outRegPage(14)=>pagesOuts_22_14, 
      outRegPage(13)=>pagesOuts_22_13, outRegPage(12)=>pagesOuts_22_12, 
      outRegPage(11)=>pagesOuts_22_11, outRegPage(10)=>pagesOuts_22_10, 
      outRegPage(9)=>pagesOuts_22_9, outRegPage(8)=>pagesOuts_22_8, 
      outRegPage(7)=>pagesOuts_22_7, outRegPage(6)=>pagesOuts_22_6, 
      outRegPage(5)=>pagesOuts_22_5, outRegPage(4)=>pagesOuts_22_4, 
      outRegPage(3)=>pagesOuts_22_3, outRegPage(2)=>pagesOuts_22_2, 
      outRegPage(1)=>pagesOuts_22_1, outRegPage(0)=>pagesOuts_22_0, 
      outputRegPage1(15)=>page1Out_19_15, outputRegPage1(14)=>page1Out_19_14, 
      outputRegPage1(13)=>page1Out_19_13, outputRegPage1(12)=>page1Out_19_12, 
      outputRegPage1(11)=>page1Out_19_11, outputRegPage1(10)=>page1Out_19_10, 
      outputRegPage1(9)=>page1Out_19_9, outputRegPage1(8)=>page1Out_19_8, 
      outputRegPage1(7)=>page1Out_19_7, outputRegPage1(6)=>page1Out_19_6, 
      outputRegPage1(5)=>page1Out_19_5, outputRegPage1(4)=>page1Out_19_4, 
      outputRegPage1(3)=>page1Out_19_3, outputRegPage1(2)=>page1Out_19_2, 
      outputRegPage1(1)=>page1Out_19_1, outputRegPage1(0)=>page1Out_19_0, 
      outputRegPage2(15)=>page2Out_19_15, outputRegPage2(14)=>page2Out_19_14, 
      outputRegPage2(13)=>page2Out_19_13, outputRegPage2(12)=>page2Out_19_12, 
      outputRegPage2(11)=>page2Out_19_11, outputRegPage2(10)=>page2Out_19_10, 
      outputRegPage2(9)=>page2Out_19_9, outputRegPage2(8)=>page2Out_19_8, 
      outputRegPage2(7)=>page2Out_19_7, outputRegPage2(6)=>page2Out_19_6, 
      outputRegPage2(5)=>page2Out_19_5, outputRegPage2(4)=>page2Out_19_4, 
      outputRegPage2(3)=>page2Out_19_3, outputRegPage2(2)=>page2Out_19_2, 
      outputRegPage2(1)=>page2Out_19_1, outputRegPage2(0)=>page2Out_19_0, 
      outFilter(7)=>filtersOuts_22_7, outFilter(6)=>filtersOuts_22_6, 
      outFilter(5)=>filtersOuts_22_5, outFilter(4)=>filtersOuts_22_4, 
      outFilter(3)=>filtersOuts_22_3, outFilter(2)=>filtersOuts_22_2, 
      outFilter(1)=>filtersOuts_22_1, outFilter(0)=>filtersOuts_22_0);
   loop1_4_regRowMap_loop1_0_regUnitMap : RegUnit_8_16_unfolded3 port map ( 
      filterBus(7)=>filterBus(7), filterBus(6)=>filterBus(6), filterBus(5)=>
      filterBus(5), filterBus(4)=>filterBus(4), filterBus(3)=>filterBus(3), 
      filterBus(2)=>filterBus(2), filterBus(1)=>filterBus(1), filterBus(0)=>
      filterBus(0), windowBus(15)=>windowBus(15), windowBus(14)=>
      windowBus(14), windowBus(13)=>windowBus(13), windowBus(12)=>
      windowBus(12), windowBus(11)=>windowBus(11), windowBus(10)=>
      windowBus(10), windowBus(9)=>windowBus(9), windowBus(8)=>windowBus(8), 
      windowBus(7)=>windowBus(7), windowBus(6)=>windowBus(6), windowBus(5)=>
      windowBus(5), windowBus(4)=>windowBus(4), windowBus(3)=>windowBus(3), 
      windowBus(2)=>windowBus(2), windowBus(1)=>windowBus(1), windowBus(0)=>
      windowBus(0), regPage1NextUnit(15)=>page1Out_25_15, 
      regPage1NextUnit(14)=>page1Out_25_15, regPage1NextUnit(13)=>
      page1Out_25_15, regPage1NextUnit(12)=>page1Out_25_15, 
      regPage1NextUnit(11)=>page1Out_25_15, regPage1NextUnit(10)=>
      page1Out_25_15, regPage1NextUnit(9)=>page1Out_25_15, 
      regPage1NextUnit(8)=>page1Out_25_15, regPage1NextUnit(7)=>
      page1Out_25_15, regPage1NextUnit(6)=>page1Out_25_15, 
      regPage1NextUnit(5)=>page1Out_25_15, regPage1NextUnit(4)=>
      page1Out_25_15, regPage1NextUnit(3)=>page1Out_25_15, 
      regPage1NextUnit(2)=>page1Out_25_15, regPage1NextUnit(1)=>
      page1Out_25_15, regPage1NextUnit(0)=>page1Out_25_15, 
      regPage2NextUnit(15)=>page1Out_25_15, regPage2NextUnit(14)=>
      page1Out_25_15, regPage2NextUnit(13)=>page1Out_25_15, 
      regPage2NextUnit(12)=>page1Out_25_15, regPage2NextUnit(11)=>
      page1Out_25_15, regPage2NextUnit(10)=>page1Out_25_15, 
      regPage2NextUnit(9)=>page1Out_25_15, regPage2NextUnit(8)=>
      page1Out_25_15, regPage2NextUnit(7)=>page1Out_25_15, 
      regPage2NextUnit(6)=>page1Out_25_15, regPage2NextUnit(5)=>
      page1Out_25_15, regPage2NextUnit(4)=>page1Out_25_15, 
      regPage2NextUnit(3)=>page1Out_25_15, regPage2NextUnit(2)=>
      page1Out_25_15, regPage2NextUnit(1)=>page1Out_25_15, 
      regPage2NextUnit(0)=>page1Out_25_15, clk=>clk, rst=>rst, 
      enableRegPage1=>page1Enables_4, enableRegPage2=>page2Enables_4, 
      enableRegFilter=>nx3494, page1ReadBusOrPage2=>shift2To1, 
      page2ReadBusOrPage1=>shift1To2, pageTurn=>pageTurn, outRegPage(15)=>
      pagesOuts_12_15, outRegPage(14)=>pagesOuts_12_14, outRegPage(13)=>
      pagesOuts_12_13, outRegPage(12)=>pagesOuts_12_12, outRegPage(11)=>
      pagesOuts_12_11, outRegPage(10)=>pagesOuts_12_10, outRegPage(9)=>
      pagesOuts_12_9, outRegPage(8)=>pagesOuts_12_8, outRegPage(7)=>
      pagesOuts_12_7, outRegPage(6)=>pagesOuts_12_6, outRegPage(5)=>
      pagesOuts_12_5, outRegPage(4)=>pagesOuts_12_4, outRegPage(3)=>
      pagesOuts_12_3, outRegPage(2)=>pagesOuts_12_2, outRegPage(1)=>
      pagesOuts_12_1, outRegPage(0)=>pagesOuts_12_0, outputRegPage1(15)=>
      page1Out_20_15, outputRegPage1(14)=>page1Out_20_14, outputRegPage1(13)
      =>page1Out_20_13, outputRegPage1(12)=>page1Out_20_12, 
      outputRegPage1(11)=>page1Out_20_11, outputRegPage1(10)=>page1Out_20_10, 
      outputRegPage1(9)=>page1Out_20_9, outputRegPage1(8)=>page1Out_20_8, 
      outputRegPage1(7)=>page1Out_20_7, outputRegPage1(6)=>page1Out_20_6, 
      outputRegPage1(5)=>page1Out_20_5, outputRegPage1(4)=>page1Out_20_4, 
      outputRegPage1(3)=>page1Out_20_3, outputRegPage1(2)=>page1Out_20_2, 
      outputRegPage1(1)=>page1Out_20_1, outputRegPage1(0)=>page1Out_20_0, 
      outputRegPage2(15)=>page2Out_20_15, outputRegPage2(14)=>page2Out_20_14, 
      outputRegPage2(13)=>page2Out_20_13, outputRegPage2(12)=>page2Out_20_12, 
      outputRegPage2(11)=>page2Out_20_11, outputRegPage2(10)=>page2Out_20_10, 
      outputRegPage2(9)=>page2Out_20_9, outputRegPage2(8)=>page2Out_20_8, 
      outputRegPage2(7)=>page2Out_20_7, outputRegPage2(6)=>page2Out_20_6, 
      outputRegPage2(5)=>page2Out_20_5, outputRegPage2(4)=>page2Out_20_4, 
      outputRegPage2(3)=>page2Out_20_3, outputRegPage2(2)=>page2Out_20_2, 
      outputRegPage2(1)=>page2Out_20_1, outputRegPage2(0)=>page2Out_20_0, 
      outFilter(7)=>filtersOuts_12_7, outFilter(6)=>filtersOuts_12_6, 
      outFilter(5)=>filtersOuts_12_5, outFilter(4)=>filtersOuts_12_4, 
      outFilter(3)=>filtersOuts_12_3, outFilter(2)=>filtersOuts_12_2, 
      outFilter(1)=>filtersOuts_12_1, outFilter(0)=>filtersOuts_12_0);
   loop1_4_regRowMap_loop1_1_regUnitMap : RegUnit_8_16_unfolded3 port map ( 
      filterBus(7)=>filterBus(15), filterBus(6)=>filterBus(14), filterBus(5)
      =>filterBus(13), filterBus(4)=>filterBus(12), filterBus(3)=>
      filterBus(11), filterBus(2)=>filterBus(10), filterBus(1)=>filterBus(9), 
      filterBus(0)=>filterBus(8), windowBus(15)=>windowBus(31), 
      windowBus(14)=>windowBus(30), windowBus(13)=>windowBus(29), 
      windowBus(12)=>windowBus(28), windowBus(11)=>windowBus(27), 
      windowBus(10)=>windowBus(26), windowBus(9)=>windowBus(25), 
      windowBus(8)=>windowBus(24), windowBus(7)=>windowBus(23), windowBus(6)
      =>windowBus(22), windowBus(5)=>windowBus(21), windowBus(4)=>
      windowBus(20), windowBus(3)=>windowBus(19), windowBus(2)=>
      windowBus(18), windowBus(1)=>windowBus(17), windowBus(0)=>
      windowBus(16), regPage1NextUnit(15)=>page1Out_25_15, 
      regPage1NextUnit(14)=>page1Out_25_15, regPage1NextUnit(13)=>
      page1Out_25_15, regPage1NextUnit(12)=>page1Out_25_15, 
      regPage1NextUnit(11)=>page1Out_25_15, regPage1NextUnit(10)=>
      page1Out_25_15, regPage1NextUnit(9)=>page1Out_25_15, 
      regPage1NextUnit(8)=>page1Out_25_15, regPage1NextUnit(7)=>
      page1Out_25_15, regPage1NextUnit(6)=>page1Out_25_15, 
      regPage1NextUnit(5)=>page1Out_25_15, regPage1NextUnit(4)=>
      page1Out_25_15, regPage1NextUnit(3)=>page1Out_25_15, 
      regPage1NextUnit(2)=>page1Out_25_15, regPage1NextUnit(1)=>
      page1Out_25_15, regPage1NextUnit(0)=>page1Out_25_15, 
      regPage2NextUnit(15)=>page1Out_25_15, regPage2NextUnit(14)=>
      page1Out_25_15, regPage2NextUnit(13)=>page1Out_25_15, 
      regPage2NextUnit(12)=>page1Out_25_15, regPage2NextUnit(11)=>
      page1Out_25_15, regPage2NextUnit(10)=>page1Out_25_15, 
      regPage2NextUnit(9)=>page1Out_25_15, regPage2NextUnit(8)=>
      page1Out_25_15, regPage2NextUnit(7)=>page1Out_25_15, 
      regPage2NextUnit(6)=>page1Out_25_15, regPage2NextUnit(5)=>
      page1Out_25_15, regPage2NextUnit(4)=>page1Out_25_15, 
      regPage2NextUnit(3)=>page1Out_25_15, regPage2NextUnit(2)=>
      page1Out_25_15, regPage2NextUnit(1)=>page1Out_25_15, 
      regPage2NextUnit(0)=>page1Out_25_15, clk=>clk, rst=>rst, 
      enableRegPage1=>page1Enables_4, enableRegPage2=>page2Enables_4, 
      enableRegFilter=>nx3494, page1ReadBusOrPage2=>shift2To1, 
      page2ReadBusOrPage1=>shift1To2, pageTurn=>pageTurn, outRegPage(15)=>
      pagesOuts_13_15, outRegPage(14)=>pagesOuts_13_14, outRegPage(13)=>
      pagesOuts_13_13, outRegPage(12)=>pagesOuts_13_12, outRegPage(11)=>
      pagesOuts_13_11, outRegPage(10)=>pagesOuts_13_10, outRegPage(9)=>
      pagesOuts_13_9, outRegPage(8)=>pagesOuts_13_8, outRegPage(7)=>
      pagesOuts_13_7, outRegPage(6)=>pagesOuts_13_6, outRegPage(5)=>
      pagesOuts_13_5, outRegPage(4)=>pagesOuts_13_4, outRegPage(3)=>
      pagesOuts_13_3, outRegPage(2)=>pagesOuts_13_2, outRegPage(1)=>
      pagesOuts_13_1, outRegPage(0)=>pagesOuts_13_0, outputRegPage1(15)=>
      page1Out_21_15, outputRegPage1(14)=>page1Out_21_14, outputRegPage1(13)
      =>page1Out_21_13, outputRegPage1(12)=>page1Out_21_12, 
      outputRegPage1(11)=>page1Out_21_11, outputRegPage1(10)=>page1Out_21_10, 
      outputRegPage1(9)=>page1Out_21_9, outputRegPage1(8)=>page1Out_21_8, 
      outputRegPage1(7)=>page1Out_21_7, outputRegPage1(6)=>page1Out_21_6, 
      outputRegPage1(5)=>page1Out_21_5, outputRegPage1(4)=>page1Out_21_4, 
      outputRegPage1(3)=>page1Out_21_3, outputRegPage1(2)=>page1Out_21_2, 
      outputRegPage1(1)=>page1Out_21_1, outputRegPage1(0)=>page1Out_21_0, 
      outputRegPage2(15)=>page2Out_21_15, outputRegPage2(14)=>page2Out_21_14, 
      outputRegPage2(13)=>page2Out_21_13, outputRegPage2(12)=>page2Out_21_12, 
      outputRegPage2(11)=>page2Out_21_11, outputRegPage2(10)=>page2Out_21_10, 
      outputRegPage2(9)=>page2Out_21_9, outputRegPage2(8)=>page2Out_21_8, 
      outputRegPage2(7)=>page2Out_21_7, outputRegPage2(6)=>page2Out_21_6, 
      outputRegPage2(5)=>page2Out_21_5, outputRegPage2(4)=>page2Out_21_4, 
      outputRegPage2(3)=>page2Out_21_3, outputRegPage2(2)=>page2Out_21_2, 
      outputRegPage2(1)=>page2Out_21_1, outputRegPage2(0)=>page2Out_21_0, 
      outFilter(7)=>filtersOuts_13_7, outFilter(6)=>filtersOuts_13_6, 
      outFilter(5)=>filtersOuts_13_5, outFilter(4)=>filtersOuts_13_4, 
      outFilter(3)=>filtersOuts_13_3, outFilter(2)=>filtersOuts_13_2, 
      outFilter(1)=>filtersOuts_13_1, outFilter(0)=>filtersOuts_13_0);
   loop1_4_regRowMap_loop1_2_regUnitMap : RegUnit_8_16_unfolded3 port map ( 
      filterBus(7)=>filterBus(23), filterBus(6)=>filterBus(22), filterBus(5)
      =>filterBus(21), filterBus(4)=>filterBus(20), filterBus(3)=>
      filterBus(19), filterBus(2)=>filterBus(18), filterBus(1)=>
      filterBus(17), filterBus(0)=>filterBus(16), windowBus(15)=>
      windowBus(47), windowBus(14)=>windowBus(46), windowBus(13)=>
      windowBus(45), windowBus(12)=>windowBus(44), windowBus(11)=>
      windowBus(43), windowBus(10)=>windowBus(42), windowBus(9)=>
      windowBus(41), windowBus(8)=>windowBus(40), windowBus(7)=>
      windowBus(39), windowBus(6)=>windowBus(38), windowBus(5)=>
      windowBus(37), windowBus(4)=>windowBus(36), windowBus(3)=>
      windowBus(35), windowBus(2)=>windowBus(34), windowBus(1)=>
      windowBus(33), windowBus(0)=>windowBus(32), regPage1NextUnit(15)=>
      page1Out_25_15, regPage1NextUnit(14)=>page1Out_25_15, 
      regPage1NextUnit(13)=>page1Out_25_15, regPage1NextUnit(12)=>
      page1Out_25_15, regPage1NextUnit(11)=>page1Out_25_15, 
      regPage1NextUnit(10)=>page1Out_25_15, regPage1NextUnit(9)=>
      page1Out_25_15, regPage1NextUnit(8)=>page1Out_25_15, 
      regPage1NextUnit(7)=>page1Out_25_15, regPage1NextUnit(6)=>
      page1Out_25_15, regPage1NextUnit(5)=>page1Out_25_15, 
      regPage1NextUnit(4)=>page1Out_25_15, regPage1NextUnit(3)=>
      page1Out_25_15, regPage1NextUnit(2)=>page1Out_25_15, 
      regPage1NextUnit(1)=>page1Out_25_15, regPage1NextUnit(0)=>
      page1Out_25_15, regPage2NextUnit(15)=>page1Out_25_15, 
      regPage2NextUnit(14)=>page1Out_25_15, regPage2NextUnit(13)=>
      page1Out_25_15, regPage2NextUnit(12)=>page1Out_25_15, 
      regPage2NextUnit(11)=>page1Out_25_15, regPage2NextUnit(10)=>
      page1Out_25_15, regPage2NextUnit(9)=>page1Out_25_15, 
      regPage2NextUnit(8)=>page1Out_25_15, regPage2NextUnit(7)=>
      page1Out_25_15, regPage2NextUnit(6)=>page1Out_25_15, 
      regPage2NextUnit(5)=>page1Out_25_15, regPage2NextUnit(4)=>
      page1Out_25_15, regPage2NextUnit(3)=>page1Out_25_15, 
      regPage2NextUnit(2)=>page1Out_25_15, regPage2NextUnit(1)=>
      page1Out_25_15, regPage2NextUnit(0)=>page1Out_25_15, clk=>clk, rst=>
      rst, enableRegPage1=>page1Enables_4, enableRegPage2=>page2Enables_4, 
      enableRegFilter=>nx3494, page1ReadBusOrPage2=>shift2To1, 
      page2ReadBusOrPage1=>shift1To2, pageTurn=>pageTurn, outRegPage(15)=>
      pagesOuts_14_15, outRegPage(14)=>pagesOuts_14_14, outRegPage(13)=>
      pagesOuts_14_13, outRegPage(12)=>pagesOuts_14_12, outRegPage(11)=>
      pagesOuts_14_11, outRegPage(10)=>pagesOuts_14_10, outRegPage(9)=>
      pagesOuts_14_9, outRegPage(8)=>pagesOuts_14_8, outRegPage(7)=>
      pagesOuts_14_7, outRegPage(6)=>pagesOuts_14_6, outRegPage(5)=>
      pagesOuts_14_5, outRegPage(4)=>pagesOuts_14_4, outRegPage(3)=>
      pagesOuts_14_3, outRegPage(2)=>pagesOuts_14_2, outRegPage(1)=>
      pagesOuts_14_1, outRegPage(0)=>pagesOuts_14_0, outputRegPage1(15)=>
      page1Out_22_15, outputRegPage1(14)=>page1Out_22_14, outputRegPage1(13)
      =>page1Out_22_13, outputRegPage1(12)=>page1Out_22_12, 
      outputRegPage1(11)=>page1Out_22_11, outputRegPage1(10)=>page1Out_22_10, 
      outputRegPage1(9)=>page1Out_22_9, outputRegPage1(8)=>page1Out_22_8, 
      outputRegPage1(7)=>page1Out_22_7, outputRegPage1(6)=>page1Out_22_6, 
      outputRegPage1(5)=>page1Out_22_5, outputRegPage1(4)=>page1Out_22_4, 
      outputRegPage1(3)=>page1Out_22_3, outputRegPage1(2)=>page1Out_22_2, 
      outputRegPage1(1)=>page1Out_22_1, outputRegPage1(0)=>page1Out_22_0, 
      outputRegPage2(15)=>page2Out_22_15, outputRegPage2(14)=>page2Out_22_14, 
      outputRegPage2(13)=>page2Out_22_13, outputRegPage2(12)=>page2Out_22_12, 
      outputRegPage2(11)=>page2Out_22_11, outputRegPage2(10)=>page2Out_22_10, 
      outputRegPage2(9)=>page2Out_22_9, outputRegPage2(8)=>page2Out_22_8, 
      outputRegPage2(7)=>page2Out_22_7, outputRegPage2(6)=>page2Out_22_6, 
      outputRegPage2(5)=>page2Out_22_5, outputRegPage2(4)=>page2Out_22_4, 
      outputRegPage2(3)=>page2Out_22_3, outputRegPage2(2)=>page2Out_22_2, 
      outputRegPage2(1)=>page2Out_22_1, outputRegPage2(0)=>page2Out_22_0, 
      outFilter(7)=>filtersOuts_14_7, outFilter(6)=>filtersOuts_14_6, 
      outFilter(5)=>filtersOuts_14_5, outFilter(4)=>filtersOuts_14_4, 
      outFilter(3)=>filtersOuts_14_3, outFilter(2)=>filtersOuts_14_2, 
      outFilter(1)=>filtersOuts_14_1, outFilter(0)=>filtersOuts_14_0);
   loop1_4_regRowMap_loop1_3_regUnitMap : RegUnit_8_16_unfolded3 port map ( 
      filterBus(7)=>filterBus(31), filterBus(6)=>filterBus(30), filterBus(5)
      =>filterBus(29), filterBus(4)=>filterBus(28), filterBus(3)=>
      filterBus(27), filterBus(2)=>filterBus(26), filterBus(1)=>
      filterBus(25), filterBus(0)=>filterBus(24), windowBus(15)=>
      windowBus(63), windowBus(14)=>windowBus(62), windowBus(13)=>
      windowBus(61), windowBus(12)=>windowBus(60), windowBus(11)=>
      windowBus(59), windowBus(10)=>windowBus(58), windowBus(9)=>
      windowBus(57), windowBus(8)=>windowBus(56), windowBus(7)=>
      windowBus(55), windowBus(6)=>windowBus(54), windowBus(5)=>
      windowBus(53), windowBus(4)=>windowBus(52), windowBus(3)=>
      windowBus(51), windowBus(2)=>windowBus(50), windowBus(1)=>
      windowBus(49), windowBus(0)=>windowBus(48), regPage1NextUnit(15)=>
      page1Out_25_15, regPage1NextUnit(14)=>page1Out_25_15, 
      regPage1NextUnit(13)=>page1Out_25_15, regPage1NextUnit(12)=>
      page1Out_25_15, regPage1NextUnit(11)=>page1Out_25_15, 
      regPage1NextUnit(10)=>page1Out_25_15, regPage1NextUnit(9)=>
      page1Out_25_15, regPage1NextUnit(8)=>page1Out_25_15, 
      regPage1NextUnit(7)=>page1Out_25_15, regPage1NextUnit(6)=>
      page1Out_25_15, regPage1NextUnit(5)=>page1Out_25_15, 
      regPage1NextUnit(4)=>page1Out_25_15, regPage1NextUnit(3)=>
      page1Out_25_15, regPage1NextUnit(2)=>page1Out_25_15, 
      regPage1NextUnit(1)=>page1Out_25_15, regPage1NextUnit(0)=>
      page1Out_25_15, regPage2NextUnit(15)=>page1Out_25_15, 
      regPage2NextUnit(14)=>page1Out_25_15, regPage2NextUnit(13)=>
      page1Out_25_15, regPage2NextUnit(12)=>page1Out_25_15, 
      regPage2NextUnit(11)=>page1Out_25_15, regPage2NextUnit(10)=>
      page1Out_25_15, regPage2NextUnit(9)=>page1Out_25_15, 
      regPage2NextUnit(8)=>page1Out_25_15, regPage2NextUnit(7)=>
      page1Out_25_15, regPage2NextUnit(6)=>page1Out_25_15, 
      regPage2NextUnit(5)=>page1Out_25_15, regPage2NextUnit(4)=>
      page1Out_25_15, regPage2NextUnit(3)=>page1Out_25_15, 
      regPage2NextUnit(2)=>page1Out_25_15, regPage2NextUnit(1)=>
      page1Out_25_15, regPage2NextUnit(0)=>page1Out_25_15, clk=>clk, rst=>
      rst, enableRegPage1=>page1Enables_4, enableRegPage2=>page2Enables_4, 
      enableRegFilter=>nx3496, page1ReadBusOrPage2=>shift2To1, 
      page2ReadBusOrPage1=>shift1To2, pageTurn=>pageTurn, outRegPage(15)=>
      pagesOuts_23_15, outRegPage(14)=>pagesOuts_23_14, outRegPage(13)=>
      pagesOuts_23_13, outRegPage(12)=>pagesOuts_23_12, outRegPage(11)=>
      pagesOuts_23_11, outRegPage(10)=>pagesOuts_23_10, outRegPage(9)=>
      pagesOuts_23_9, outRegPage(8)=>pagesOuts_23_8, outRegPage(7)=>
      pagesOuts_23_7, outRegPage(6)=>pagesOuts_23_6, outRegPage(5)=>
      pagesOuts_23_5, outRegPage(4)=>pagesOuts_23_4, outRegPage(3)=>
      pagesOuts_23_3, outRegPage(2)=>pagesOuts_23_2, outRegPage(1)=>
      pagesOuts_23_1, outRegPage(0)=>pagesOuts_23_0, outputRegPage1(15)=>
      page1Out_23_15, outputRegPage1(14)=>page1Out_23_14, outputRegPage1(13)
      =>page1Out_23_13, outputRegPage1(12)=>page1Out_23_12, 
      outputRegPage1(11)=>page1Out_23_11, outputRegPage1(10)=>page1Out_23_10, 
      outputRegPage1(9)=>page1Out_23_9, outputRegPage1(8)=>page1Out_23_8, 
      outputRegPage1(7)=>page1Out_23_7, outputRegPage1(6)=>page1Out_23_6, 
      outputRegPage1(5)=>page1Out_23_5, outputRegPage1(4)=>page1Out_23_4, 
      outputRegPage1(3)=>page1Out_23_3, outputRegPage1(2)=>page1Out_23_2, 
      outputRegPage1(1)=>page1Out_23_1, outputRegPage1(0)=>page1Out_23_0, 
      outputRegPage2(15)=>page2Out_23_15, outputRegPage2(14)=>page2Out_23_14, 
      outputRegPage2(13)=>page2Out_23_13, outputRegPage2(12)=>page2Out_23_12, 
      outputRegPage2(11)=>page2Out_23_11, outputRegPage2(10)=>page2Out_23_10, 
      outputRegPage2(9)=>page2Out_23_9, outputRegPage2(8)=>page2Out_23_8, 
      outputRegPage2(7)=>page2Out_23_7, outputRegPage2(6)=>page2Out_23_6, 
      outputRegPage2(5)=>page2Out_23_5, outputRegPage2(4)=>page2Out_23_4, 
      outputRegPage2(3)=>page2Out_23_3, outputRegPage2(2)=>page2Out_23_2, 
      outputRegPage2(1)=>page2Out_23_1, outputRegPage2(0)=>page2Out_23_0, 
      outFilter(7)=>filtersOuts_23_7, outFilter(6)=>filtersOuts_23_6, 
      outFilter(5)=>filtersOuts_23_5, outFilter(4)=>filtersOuts_23_4, 
      outFilter(3)=>filtersOuts_23_3, outFilter(2)=>filtersOuts_23_2, 
      outFilter(1)=>filtersOuts_23_1, outFilter(0)=>filtersOuts_23_0);
   loop1_4_regRowMap_loop1_4_regUnitMap : RegUnit_8_16_unfolded3 port map ( 
      filterBus(7)=>filterBus(39), filterBus(6)=>filterBus(38), filterBus(5)
      =>filterBus(37), filterBus(4)=>filterBus(36), filterBus(3)=>
      filterBus(35), filterBus(2)=>filterBus(34), filterBus(1)=>
      filterBus(33), filterBus(0)=>filterBus(32), windowBus(15)=>
      windowBus(79), windowBus(14)=>windowBus(78), windowBus(13)=>
      windowBus(77), windowBus(12)=>windowBus(76), windowBus(11)=>
      windowBus(75), windowBus(10)=>windowBus(74), windowBus(9)=>
      windowBus(73), windowBus(8)=>windowBus(72), windowBus(7)=>
      windowBus(71), windowBus(6)=>windowBus(70), windowBus(5)=>
      windowBus(69), windowBus(4)=>windowBus(68), windowBus(3)=>
      windowBus(67), windowBus(2)=>windowBus(66), windowBus(1)=>
      windowBus(65), windowBus(0)=>windowBus(64), regPage1NextUnit(15)=>
      page1Out_25_15, regPage1NextUnit(14)=>page1Out_25_15, 
      regPage1NextUnit(13)=>page1Out_25_15, regPage1NextUnit(12)=>
      page1Out_25_15, regPage1NextUnit(11)=>page1Out_25_15, 
      regPage1NextUnit(10)=>page1Out_25_15, regPage1NextUnit(9)=>
      page1Out_25_15, regPage1NextUnit(8)=>page1Out_25_15, 
      regPage1NextUnit(7)=>page1Out_25_15, regPage1NextUnit(6)=>
      page1Out_25_15, regPage1NextUnit(5)=>page1Out_25_15, 
      regPage1NextUnit(4)=>page1Out_25_15, regPage1NextUnit(3)=>
      page1Out_25_15, regPage1NextUnit(2)=>page1Out_25_15, 
      regPage1NextUnit(1)=>page1Out_25_15, regPage1NextUnit(0)=>
      page1Out_25_15, regPage2NextUnit(15)=>page1Out_25_15, 
      regPage2NextUnit(14)=>page1Out_25_15, regPage2NextUnit(13)=>
      page1Out_25_15, regPage2NextUnit(12)=>page1Out_25_15, 
      regPage2NextUnit(11)=>page1Out_25_15, regPage2NextUnit(10)=>
      page1Out_25_15, regPage2NextUnit(9)=>page1Out_25_15, 
      regPage2NextUnit(8)=>page1Out_25_15, regPage2NextUnit(7)=>
      page1Out_25_15, regPage2NextUnit(6)=>page1Out_25_15, 
      regPage2NextUnit(5)=>page1Out_25_15, regPage2NextUnit(4)=>
      page1Out_25_15, regPage2NextUnit(3)=>page1Out_25_15, 
      regPage2NextUnit(2)=>page1Out_25_15, regPage2NextUnit(1)=>
      page1Out_25_15, regPage2NextUnit(0)=>page1Out_25_15, clk=>clk, rst=>
      rst, enableRegPage1=>page1Enables_4, enableRegPage2=>page2Enables_4, 
      enableRegFilter=>nx3496, page1ReadBusOrPage2=>shift2To1, 
      page2ReadBusOrPage1=>shift1To2, pageTurn=>pageTurn, outRegPage(15)=>
      pagesOuts_24_15, outRegPage(14)=>pagesOuts_24_14, outRegPage(13)=>
      pagesOuts_24_13, outRegPage(12)=>pagesOuts_24_12, outRegPage(11)=>
      pagesOuts_24_11, outRegPage(10)=>pagesOuts_24_10, outRegPage(9)=>
      pagesOuts_24_9, outRegPage(8)=>pagesOuts_24_8, outRegPage(7)=>
      pagesOuts_24_7, outRegPage(6)=>pagesOuts_24_6, outRegPage(5)=>
      pagesOuts_24_5, outRegPage(4)=>pagesOuts_24_4, outRegPage(3)=>
      pagesOuts_24_3, outRegPage(2)=>pagesOuts_24_2, outRegPage(1)=>
      pagesOuts_24_1, outRegPage(0)=>pagesOuts_24_0, outputRegPage1(15)=>
      page1Out_24_15, outputRegPage1(14)=>page1Out_24_14, outputRegPage1(13)
      =>page1Out_24_13, outputRegPage1(12)=>page1Out_24_12, 
      outputRegPage1(11)=>page1Out_24_11, outputRegPage1(10)=>page1Out_24_10, 
      outputRegPage1(9)=>page1Out_24_9, outputRegPage1(8)=>page1Out_24_8, 
      outputRegPage1(7)=>page1Out_24_7, outputRegPage1(6)=>page1Out_24_6, 
      outputRegPage1(5)=>page1Out_24_5, outputRegPage1(4)=>page1Out_24_4, 
      outputRegPage1(3)=>page1Out_24_3, outputRegPage1(2)=>page1Out_24_2, 
      outputRegPage1(1)=>page1Out_24_1, outputRegPage1(0)=>page1Out_24_0, 
      outputRegPage2(15)=>page2Out_24_15, outputRegPage2(14)=>page2Out_24_14, 
      outputRegPage2(13)=>page2Out_24_13, outputRegPage2(12)=>page2Out_24_12, 
      outputRegPage2(11)=>page2Out_24_11, outputRegPage2(10)=>page2Out_24_10, 
      outputRegPage2(9)=>page2Out_24_9, outputRegPage2(8)=>page2Out_24_8, 
      outputRegPage2(7)=>page2Out_24_7, outputRegPage2(6)=>page2Out_24_6, 
      outputRegPage2(5)=>page2Out_24_5, outputRegPage2(4)=>page2Out_24_4, 
      outputRegPage2(3)=>page2Out_24_3, outputRegPage2(2)=>page2Out_24_2, 
      outputRegPage2(1)=>page2Out_24_1, outputRegPage2(0)=>page2Out_24_0, 
      outFilter(7)=>filtersOuts_24_7, outFilter(6)=>filtersOuts_24_6, 
      outFilter(5)=>filtersOuts_24_5, outFilter(4)=>filtersOuts_24_4, 
      outFilter(3)=>filtersOuts_24_3, outFilter(2)=>filtersOuts_24_2, 
      outFilter(1)=>filtersOuts_24_1, outFilter(0)=>filtersOuts_24_0);
   ix3415 : fake_gnd port map ( Y=>page1Out_25_15);
   ix3430 : nand03 port map ( Y=>nx3429, A0=>enableFilterRead, A1=>nx4, A2=>
      decoderRow(2));
   ix5 : nor02_2x port map ( Y=>nx4, A0=>decoderRow(1), A1=>decoderRow(0));
   ix29 : nor03_2x port map ( Y=>filterEnables_3, A0=>nx3433, A1=>
      decoderRow(2), A2=>nx3435);
   ix3434 : inv02 port map ( Y=>nx3433, A=>enableFilterRead);
   ix3436 : nand02 port map ( Y=>nx3435, A0=>decoderRow(1), A1=>
      decoderRow(0));
   ix41 : nor03_2x port map ( Y=>filterEnables_2, A0=>nx3433, A1=>
      decoderRow(2), A2=>nx3438);
   ix3439 : nand02 port map ( Y=>nx3438, A0=>decoderRow(1), A1=>nx3440);
   ix3441 : inv01 port map ( Y=>nx3440, A=>decoderRow(0));
   ix53 : nor03_2x port map ( Y=>filterEnables_1, A0=>nx3433, A1=>
      decoderRow(2), A2=>nx3443);
   ix3444 : nand02 port map ( Y=>nx3443, A0=>nx3445, A1=>decoderRow(0));
   ix3446 : inv01 port map ( Y=>nx3445, A=>decoderRow(1));
   ix67 : nor03_2x port map ( Y=>filterEnables_0, A0=>nx3433, A1=>
      decoderRow(2), A2=>nx3448);
   ix3449 : inv01 port map ( Y=>nx3448, A=>nx62);
   ix63 : nor02_2x port map ( Y=>nx62, A0=>decoderRow(1), A1=>decoderRow(0)
   );
   ix17 : inv01 port map ( Y=>page2Enables_4, A=>nx3452);
   ix3453 : nand03 port map ( Y=>nx3452, A0=>enablePage2Read, A1=>nx4, A2=>
      decoderRow(2));
   ix31 : nor03_2x port map ( Y=>page2Enables_3, A0=>nx3455, A1=>
      decoderRow(2), A2=>nx3435);
   ix3456 : inv02 port map ( Y=>nx3455, A=>enablePage2Read);
   ix43 : nor03_2x port map ( Y=>page2Enables_2, A0=>nx3455, A1=>
      decoderRow(2), A2=>nx3438);
   ix55 : nor03_2x port map ( Y=>page2Enables_1, A0=>nx3455, A1=>
      decoderRow(2), A2=>nx3443);
   ix69 : nor03_2x port map ( Y=>page2Enables_0, A0=>nx3455, A1=>
      decoderRow(2), A2=>nx3448);
   ix19 : inv01 port map ( Y=>page1Enables_4, A=>nx3461);
   ix3462 : nand03 port map ( Y=>nx3461, A0=>enablePage1Read, A1=>nx4, A2=>
      decoderRow(2));
   ix33 : nor03_2x port map ( Y=>page1Enables_3, A0=>nx3464, A1=>
      decoderRow(2), A2=>nx3435);
   ix3465 : inv02 port map ( Y=>nx3464, A=>enablePage1Read);
   ix45 : nor03_2x port map ( Y=>page1Enables_2, A0=>nx3464, A1=>
      decoderRow(2), A2=>nx3438);
   ix57 : nor03_2x port map ( Y=>page1Enables_1, A0=>nx3464, A1=>
      decoderRow(2), A2=>nx3443);
   ix71 : nor03_2x port map ( Y=>page1Enables_0, A0=>nx3464, A1=>
      decoderRow(2), A2=>nx3448);
   ix3477 : buf02 port map ( Y=>nx3478, A=>filterEnables_0);
   ix3479 : buf02 port map ( Y=>nx3480, A=>filterEnables_0);
   ix3481 : buf02 port map ( Y=>nx3482, A=>filterEnables_1);
   ix3483 : buf02 port map ( Y=>nx3484, A=>filterEnables_1);
   ix3485 : buf02 port map ( Y=>nx3486, A=>filterEnables_2);
   ix3487 : buf02 port map ( Y=>nx3488, A=>filterEnables_2);
   ix3489 : buf02 port map ( Y=>nx3490, A=>filterEnables_3);
   ix3491 : buf02 port map ( Y=>nx3492, A=>filterEnables_3);
   ix3493 : inv02 port map ( Y=>nx3494, A=>nx3429);
   ix3495 : inv02 port map ( Y=>nx3496, A=>nx3429);
end RegFileArch ;

