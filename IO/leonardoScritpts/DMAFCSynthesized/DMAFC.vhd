
-- 
-- Definition of  FCDMA
-- 
--      Fri Apr 19 16:29:08 2019
--      
--      LeonardoSpectrum Level 3, 2018a.2
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity InverseMux_16 is
   port (
      dataIn : IN std_logic_vector (15 DOWNTO 0) ;
      sel : IN std_logic_vector (2 DOWNTO 0) ;
      en : IN std_logic ;
      rst : IN std_logic ;
      dataOut1 : OUT std_logic_vector (15 DOWNTO 0) ;
      dataOut2 : OUT std_logic_vector (15 DOWNTO 0) ;
      dataOut3 : OUT std_logic_vector (15 DOWNTO 0) ;
      dataOut4 : OUT std_logic_vector (15 DOWNTO 0) ;
      dataOut5 : OUT std_logic_vector (15 DOWNTO 0)) ;
end InverseMux_16 ;

architecture InverseMuxArchitecture of InverseMux_16 is
   signal nx48, nx92, nx134, nx178, nx1182, nx1184, nx1186, nx1188, nx1236, 
      nx1238, nx1260, nx1336, nx1344, nx1352, nx1364, nx1366, nx1368, nx1370, 
      nx1372, nx1374, nx1376, nx1378, nx1380, nx1382, nx1384, nx1386, nx1388, 
      nx1390, nx1392, nx1394, nx1396, nx1398: std_logic ;

begin
   ix1183 : and02 port map ( Y=>nx1182, A0=>nx1184, A1=>rst);
   ix1185 : nand04 port map ( Y=>nx1184, A0=>nx1186, A1=>nx1188, A2=>sel(2), 
      A3=>en);
   ix1187 : inv01 port map ( Y=>nx1186, A=>sel(1));
   ix1189 : inv01 port map ( Y=>nx1188, A=>sel(0));
   ix1237 : and02 port map ( Y=>nx1236, A0=>nx1238, A1=>rst);
   ix1239 : nand03 port map ( Y=>nx1238, A0=>nx48, A1=>sel(1), A2=>sel(0));
   ix49 : nor02ii port map ( Y=>nx48, A0=>sel(2), A1=>en);
   ix1261 : inv01 port map ( Y=>nx1260, A=>rst);
   ix179 : nor02_2x port map ( Y=>nx178, A0=>sel(1), A1=>sel(0));
   ix15 : and02 port map ( Y=>dataOut5(0), A0=>dataIn(0), A1=>nx1364);
   ix17 : and02 port map ( Y=>dataOut5(1), A0=>dataIn(1), A1=>nx1364);
   ix19 : and02 port map ( Y=>dataOut5(2), A0=>dataIn(2), A1=>nx1364);
   ix21 : and02 port map ( Y=>dataOut5(3), A0=>dataIn(3), A1=>nx1364);
   ix23 : and02 port map ( Y=>dataOut5(4), A0=>dataIn(4), A1=>nx1364);
   ix25 : and02 port map ( Y=>dataOut5(5), A0=>dataIn(5), A1=>nx1364);
   ix27 : and02 port map ( Y=>dataOut5(6), A0=>dataIn(6), A1=>nx1364);
   ix29 : and02 port map ( Y=>dataOut5(7), A0=>dataIn(7), A1=>nx1366);
   ix31 : and02 port map ( Y=>dataOut5(8), A0=>dataIn(8), A1=>nx1366);
   ix33 : and02 port map ( Y=>dataOut5(9), A0=>dataIn(9), A1=>nx1366);
   ix35 : and02 port map ( Y=>dataOut5(10), A0=>dataIn(10), A1=>nx1366);
   ix37 : and02 port map ( Y=>dataOut5(11), A0=>dataIn(11), A1=>nx1366);
   ix39 : and02 port map ( Y=>dataOut5(12), A0=>dataIn(12), A1=>nx1366);
   ix41 : and02 port map ( Y=>dataOut5(13), A0=>dataIn(13), A1=>nx1366);
   ix43 : and02 port map ( Y=>dataOut5(14), A0=>dataIn(14), A1=>nx1368);
   ix45 : and02 port map ( Y=>dataOut5(15), A0=>dataIn(15), A1=>nx1368);
   ix59 : and02 port map ( Y=>dataOut4(0), A0=>dataIn(0), A1=>nx1370);
   ix61 : and02 port map ( Y=>dataOut4(1), A0=>dataIn(1), A1=>nx1370);
   ix63 : and02 port map ( Y=>dataOut4(2), A0=>dataIn(2), A1=>nx1370);
   ix65 : and02 port map ( Y=>dataOut4(3), A0=>dataIn(3), A1=>nx1370);
   ix67 : and02 port map ( Y=>dataOut4(4), A0=>dataIn(4), A1=>nx1370);
   ix69 : and02 port map ( Y=>dataOut4(5), A0=>dataIn(5), A1=>nx1370);
   ix71 : and02 port map ( Y=>dataOut4(6), A0=>dataIn(6), A1=>nx1370);
   ix73 : and02 port map ( Y=>dataOut4(7), A0=>dataIn(7), A1=>nx1372);
   ix75 : and02 port map ( Y=>dataOut4(8), A0=>dataIn(8), A1=>nx1372);
   ix77 : and02 port map ( Y=>dataOut4(9), A0=>dataIn(9), A1=>nx1372);
   ix79 : and02 port map ( Y=>dataOut4(10), A0=>dataIn(10), A1=>nx1372);
   ix81 : and02 port map ( Y=>dataOut4(11), A0=>dataIn(11), A1=>nx1372);
   ix83 : and02 port map ( Y=>dataOut4(12), A0=>dataIn(12), A1=>nx1372);
   ix85 : and02 port map ( Y=>dataOut4(13), A0=>dataIn(13), A1=>nx1372);
   ix87 : and02 port map ( Y=>dataOut4(14), A0=>dataIn(14), A1=>nx1374);
   ix89 : and02 port map ( Y=>dataOut4(15), A0=>dataIn(15), A1=>nx1374);
   ix101 : and02 port map ( Y=>dataOut3(0), A0=>dataIn(0), A1=>nx1378);
   ix1258 : ao21 port map ( Y=>nx1336, A0=>nx48, A1=>nx92, B0=>nx1260);
   ix93 : nor02ii port map ( Y=>nx92, A0=>sel(0), A1=>sel(1));
   ix103 : and02 port map ( Y=>dataOut3(1), A0=>dataIn(1), A1=>nx1378);
   ix105 : and02 port map ( Y=>dataOut3(2), A0=>dataIn(2), A1=>nx1378);
   ix107 : and02 port map ( Y=>dataOut3(3), A0=>dataIn(3), A1=>nx1378);
   ix109 : and02 port map ( Y=>dataOut3(4), A0=>dataIn(4), A1=>nx1378);
   ix111 : and02 port map ( Y=>dataOut3(5), A0=>dataIn(5), A1=>nx1378);
   ix113 : and02 port map ( Y=>dataOut3(6), A0=>dataIn(6), A1=>nx1378);
   ix115 : and02 port map ( Y=>dataOut3(7), A0=>dataIn(7), A1=>nx1380);
   ix117 : and02 port map ( Y=>dataOut3(8), A0=>dataIn(8), A1=>nx1380);
   ix119 : and02 port map ( Y=>dataOut3(9), A0=>dataIn(9), A1=>nx1380);
   ix121 : and02 port map ( Y=>dataOut3(10), A0=>dataIn(10), A1=>nx1380);
   ix123 : and02 port map ( Y=>dataOut3(11), A0=>dataIn(11), A1=>nx1380);
   ix125 : and02 port map ( Y=>dataOut3(12), A0=>dataIn(12), A1=>nx1380);
   ix127 : and02 port map ( Y=>dataOut3(13), A0=>dataIn(13), A1=>nx1380);
   ix129 : and02 port map ( Y=>dataOut3(14), A0=>dataIn(14), A1=>nx1382);
   ix131 : and02 port map ( Y=>dataOut3(15), A0=>dataIn(15), A1=>nx1382);
   ix143 : and02 port map ( Y=>dataOut2(0), A0=>dataIn(0), A1=>nx1386);
   ix1279 : ao21 port map ( Y=>nx1344, A0=>nx48, A1=>nx134, B0=>nx1260);
   ix135 : nor02ii port map ( Y=>nx134, A0=>sel(1), A1=>sel(0));
   ix145 : and02 port map ( Y=>dataOut2(1), A0=>dataIn(1), A1=>nx1386);
   ix147 : and02 port map ( Y=>dataOut2(2), A0=>dataIn(2), A1=>nx1386);
   ix149 : and02 port map ( Y=>dataOut2(3), A0=>dataIn(3), A1=>nx1386);
   ix151 : and02 port map ( Y=>dataOut2(4), A0=>dataIn(4), A1=>nx1386);
   ix153 : and02 port map ( Y=>dataOut2(5), A0=>dataIn(5), A1=>nx1386);
   ix155 : and02 port map ( Y=>dataOut2(6), A0=>dataIn(6), A1=>nx1386);
   ix157 : and02 port map ( Y=>dataOut2(7), A0=>dataIn(7), A1=>nx1388);
   ix159 : and02 port map ( Y=>dataOut2(8), A0=>dataIn(8), A1=>nx1388);
   ix161 : and02 port map ( Y=>dataOut2(9), A0=>dataIn(9), A1=>nx1388);
   ix163 : and02 port map ( Y=>dataOut2(10), A0=>dataIn(10), A1=>nx1388);
   ix165 : and02 port map ( Y=>dataOut2(11), A0=>dataIn(11), A1=>nx1388);
   ix167 : and02 port map ( Y=>dataOut2(12), A0=>dataIn(12), A1=>nx1388);
   ix169 : and02 port map ( Y=>dataOut2(13), A0=>dataIn(13), A1=>nx1388);
   ix171 : and02 port map ( Y=>dataOut2(14), A0=>dataIn(14), A1=>nx1390);
   ix173 : and02 port map ( Y=>dataOut2(15), A0=>dataIn(15), A1=>nx1390);
   ix187 : and02 port map ( Y=>dataOut1(0), A0=>dataIn(0), A1=>nx1394);
   ix1298 : ao21 port map ( Y=>nx1352, A0=>nx48, A1=>nx178, B0=>nx1260);
   ix189 : and02 port map ( Y=>dataOut1(1), A0=>dataIn(1), A1=>nx1394);
   ix191 : and02 port map ( Y=>dataOut1(2), A0=>dataIn(2), A1=>nx1394);
   ix193 : and02 port map ( Y=>dataOut1(3), A0=>dataIn(3), A1=>nx1394);
   ix195 : and02 port map ( Y=>dataOut1(4), A0=>dataIn(4), A1=>nx1394);
   ix197 : and02 port map ( Y=>dataOut1(5), A0=>dataIn(5), A1=>nx1394);
   ix199 : and02 port map ( Y=>dataOut1(6), A0=>dataIn(6), A1=>nx1394);
   ix201 : and02 port map ( Y=>dataOut1(7), A0=>dataIn(7), A1=>nx1396);
   ix203 : and02 port map ( Y=>dataOut1(8), A0=>dataIn(8), A1=>nx1396);
   ix205 : and02 port map ( Y=>dataOut1(9), A0=>dataIn(9), A1=>nx1396);
   ix207 : and02 port map ( Y=>dataOut1(10), A0=>dataIn(10), A1=>nx1396);
   ix209 : and02 port map ( Y=>dataOut1(11), A0=>dataIn(11), A1=>nx1396);
   ix211 : and02 port map ( Y=>dataOut1(12), A0=>dataIn(12), A1=>nx1396);
   ix213 : and02 port map ( Y=>dataOut1(13), A0=>dataIn(13), A1=>nx1396);
   ix215 : and02 port map ( Y=>dataOut1(14), A0=>dataIn(14), A1=>nx1398);
   ix217 : and02 port map ( Y=>dataOut1(15), A0=>dataIn(15), A1=>nx1398);
   ix1363 : inv02 port map ( Y=>nx1364, A=>nx1182);
   ix1365 : inv02 port map ( Y=>nx1366, A=>nx1182);
   ix1367 : inv02 port map ( Y=>nx1368, A=>nx1182);
   ix1369 : inv02 port map ( Y=>nx1370, A=>nx1236);
   ix1371 : inv02 port map ( Y=>nx1372, A=>nx1236);
   ix1373 : inv02 port map ( Y=>nx1374, A=>nx1236);
   ix1375 : inv01 port map ( Y=>nx1376, A=>nx1336);
   ix1377 : inv02 port map ( Y=>nx1378, A=>nx1376);
   ix1379 : inv02 port map ( Y=>nx1380, A=>nx1376);
   ix1381 : inv02 port map ( Y=>nx1382, A=>nx1376);
   ix1383 : inv01 port map ( Y=>nx1384, A=>nx1344);
   ix1385 : inv02 port map ( Y=>nx1386, A=>nx1384);
   ix1387 : inv02 port map ( Y=>nx1388, A=>nx1384);
   ix1389 : inv02 port map ( Y=>nx1390, A=>nx1384);
   ix1391 : inv01 port map ( Y=>nx1392, A=>nx1352);
   ix1393 : inv02 port map ( Y=>nx1394, A=>nx1392);
   ix1395 : inv02 port map ( Y=>nx1396, A=>nx1392);
   ix1397 : inv02 port map ( Y=>nx1398, A=>nx1392);
end InverseMuxArchitecture ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity Counter_12 is
   port (
      load : IN std_logic_vector (11 DOWNTO 0) ;
      reset : IN std_logic ;
      clk : IN std_logic ;
      isLoad : IN std_logic ;
      count : OUT std_logic_vector (11 DOWNTO 0)) ;
end Counter_12 ;

architecture CounterArch_unfold_1207 of Counter_12 is
   signal count_11_EXMPLR, count_10_EXMPLR, count_9_EXMPLR, count_8_EXMPLR, 
      count_7_EXMPLR, count_6_EXMPLR, count_5_EXMPLR, count_4_EXMPLR, 
      count_3_EXMPLR, count_2_EXMPLR, count_1_EXMPLR, count_0_EXMPLR, nx6, 
      nx16, nx26, nx36, nx46, nx50, nx56, nx66, nx76, nx80, nx86, nx96, 
      nx100, nx106, nx116, nx31, nx37, nx39, nx45, nx47, nx53, nx55, nx61, 
      nx69, nx71, nx77, nx79, nx85, nx93, nx95, nx101, nx109, nx111: 
   std_logic ;

begin
   count(11) <= count_11_EXMPLR ;
   count(10) <= count_10_EXMPLR ;
   count(9) <= count_9_EXMPLR ;
   count(8) <= count_8_EXMPLR ;
   count(7) <= count_7_EXMPLR ;
   count(6) <= count_6_EXMPLR ;
   count(5) <= count_5_EXMPLR ;
   count(4) <= count_4_EXMPLR ;
   count(3) <= count_3_EXMPLR ;
   count(2) <= count_2_EXMPLR ;
   count(1) <= count_1_EXMPLR ;
   count(0) <= count_0_EXMPLR ;
   counterReg_reg_Q_0 : dff port map ( Q=>count_0_EXMPLR, QB=>OPEN, D=>nx6, 
      CLK=>clk);
   ix7 : nor02_2x port map ( Y=>nx6, A0=>reset, A1=>count_0_EXMPLR);
   counterReg_reg_Q_1 : dff port map ( Q=>count_1_EXMPLR, QB=>OPEN, D=>nx16, 
      CLK=>clk);
   ix17 : nor02_2x port map ( Y=>nx16, A0=>reset, A1=>nx31);
   ix32 : xnor2 port map ( Y=>nx31, A0=>count_1_EXMPLR, A1=>count_0_EXMPLR);
   counterReg_reg_Q_2 : dff port map ( Q=>count_2_EXMPLR, QB=>OPEN, D=>nx26, 
      CLK=>clk);
   ix27 : nor02_2x port map ( Y=>nx26, A0=>reset, A1=>nx37);
   ix38 : xor2 port map ( Y=>nx37, A0=>count_2_EXMPLR, A1=>nx39);
   ix40 : nand02 port map ( Y=>nx39, A0=>count_1_EXMPLR, A1=>count_0_EXMPLR
   );
   counterReg_reg_Q_3 : dff port map ( Q=>count_3_EXMPLR, QB=>OPEN, D=>nx36, 
      CLK=>clk);
   ix37 : nor02_2x port map ( Y=>nx36, A0=>reset, A1=>nx45);
   ix46 : xor2 port map ( Y=>nx45, A0=>count_3_EXMPLR, A1=>nx47);
   ix48 : nand03 port map ( Y=>nx47, A0=>count_2_EXMPLR, A1=>count_1_EXMPLR, 
      A2=>count_0_EXMPLR);
   counterReg_reg_Q_4 : dff port map ( Q=>count_4_EXMPLR, QB=>OPEN, D=>nx46, 
      CLK=>clk);
   ix47 : nor02_2x port map ( Y=>nx46, A0=>reset, A1=>nx53);
   ix54 : xor2 port map ( Y=>nx53, A0=>count_4_EXMPLR, A1=>nx55);
   ix56 : nand04 port map ( Y=>nx55, A0=>count_3_EXMPLR, A1=>count_2_EXMPLR, 
      A2=>count_1_EXMPLR, A3=>count_0_EXMPLR);
   counterReg_reg_Q_5 : dff port map ( Q=>count_5_EXMPLR, QB=>OPEN, D=>nx56, 
      CLK=>clk);
   ix57 : nor02_2x port map ( Y=>nx56, A0=>reset, A1=>nx61);
   ix62 : xnor2 port map ( Y=>nx61, A0=>count_5_EXMPLR, A1=>nx50);
   ix51 : nor02ii port map ( Y=>nx50, A0=>nx55, A1=>count_4_EXMPLR);
   counterReg_reg_Q_6 : dff port map ( Q=>count_6_EXMPLR, QB=>OPEN, D=>nx66, 
      CLK=>clk);
   ix67 : nor02_2x port map ( Y=>nx66, A0=>reset, A1=>nx69);
   ix70 : xor2 port map ( Y=>nx69, A0=>count_6_EXMPLR, A1=>nx71);
   ix72 : nand02 port map ( Y=>nx71, A0=>count_5_EXMPLR, A1=>nx50);
   counterReg_reg_Q_7 : dff port map ( Q=>count_7_EXMPLR, QB=>OPEN, D=>nx76, 
      CLK=>clk);
   ix77 : nor02_2x port map ( Y=>nx76, A0=>reset, A1=>nx77);
   ix78 : xor2 port map ( Y=>nx77, A0=>count_7_EXMPLR, A1=>nx79);
   ix80 : nand03 port map ( Y=>nx79, A0=>count_6_EXMPLR, A1=>count_5_EXMPLR, 
      A2=>nx50);
   counterReg_reg_Q_8 : dff port map ( Q=>count_8_EXMPLR, QB=>OPEN, D=>nx86, 
      CLK=>clk);
   ix87 : nor02_2x port map ( Y=>nx86, A0=>reset, A1=>nx85);
   ix86 : xnor2 port map ( Y=>nx85, A0=>count_8_EXMPLR, A1=>nx80);
   ix81 : nor02ii port map ( Y=>nx80, A0=>nx79, A1=>count_7_EXMPLR);
   counterReg_reg_Q_9 : dff port map ( Q=>count_9_EXMPLR, QB=>OPEN, D=>nx96, 
      CLK=>clk);
   ix97 : nor02_2x port map ( Y=>nx96, A0=>reset, A1=>nx93);
   ix94 : xor2 port map ( Y=>nx93, A0=>count_9_EXMPLR, A1=>nx95);
   ix96 : nand02 port map ( Y=>nx95, A0=>count_8_EXMPLR, A1=>nx80);
   counterReg_reg_Q_10 : dff port map ( Q=>count_10_EXMPLR, QB=>OPEN, D=>
      nx106, CLK=>clk);
   ix107 : nor02_2x port map ( Y=>nx106, A0=>reset, A1=>nx101);
   ix102 : xnor2 port map ( Y=>nx101, A0=>count_10_EXMPLR, A1=>nx100);
   ix101 : nor02ii port map ( Y=>nx100, A0=>nx95, A1=>count_9_EXMPLR);
   counterReg_reg_Q_11 : dff port map ( Q=>count_11_EXMPLR, QB=>OPEN, D=>
      nx116, CLK=>clk);
   ix117 : nor02_2x port map ( Y=>nx116, A0=>reset, A1=>nx109);
   ix110 : xor2 port map ( Y=>nx109, A0=>count_11_EXMPLR, A1=>nx111);
   ix112 : nand02 port map ( Y=>nx111, A0=>count_10_EXMPLR, A1=>nx100);
end CounterArch_unfold_1207 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity FCDMA is
   port (
      dataIn : IN std_logic_vector (15 DOWNTO 0) ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      en : IN std_logic ;
      ramDone : IN std_logic ;
      delayedInt : IN std_logic ;
      address : OUT std_logic_vector (11 DOWNTO 0) ;
      dataOut : OUT std_logic_vector (79 DOWNTO 0) ;
      wrt : OUT std_logic) ;
end FCDMA ;

architecture FCDMAArch of FCDMA is
   component InverseMux_16
      port (
         dataIn : IN std_logic_vector (15 DOWNTO 0) ;
         sel : IN std_logic_vector (2 DOWNTO 0) ;
         en : IN std_logic ;
         rst : IN std_logic ;
         dataOut1 : OUT std_logic_vector (15 DOWNTO 0) ;
         dataOut2 : OUT std_logic_vector (15 DOWNTO 0) ;
         dataOut3 : OUT std_logic_vector (15 DOWNTO 0) ;
         dataOut4 : OUT std_logic_vector (15 DOWNTO 0) ;
         dataOut5 : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   component Counter_12
      port (
         load : IN std_logic_vector (11 DOWNTO 0) ;
         reset : IN std_logic ;
         clk : IN std_logic ;
         isLoad : IN std_logic ;
         count : OUT std_logic_vector (11 DOWNTO 0)) ;
   end component ;
   signal registersIn_0_15, registersIn_0_14, registersIn_0_13, 
      registersIn_0_12, registersIn_0_11, registersIn_0_10, registersIn_0_9, 
      registersIn_0_8, registersIn_0_7, registersIn_0_6, registersIn_0_5, 
      registersIn_0_4, registersIn_0_3, registersIn_0_2, registersIn_0_1, 
      registersIn_0_0, registersIn_1_15, registersIn_1_14, registersIn_1_13, 
      registersIn_1_12, registersIn_1_11, registersIn_1_10, registersIn_1_9, 
      registersIn_1_8, registersIn_1_7, registersIn_1_6, registersIn_1_5, 
      registersIn_1_4, registersIn_1_3, registersIn_1_2, registersIn_1_1, 
      registersIn_1_0, registersIn_2_15, registersIn_2_14, registersIn_2_13, 
      registersIn_2_12, registersIn_2_11, registersIn_2_10, registersIn_2_9, 
      registersIn_2_8, registersIn_2_7, registersIn_2_6, registersIn_2_5, 
      registersIn_2_4, registersIn_2_3, registersIn_2_2, registersIn_2_1, 
      registersIn_2_0, registersIn_3_15, registersIn_3_14, registersIn_3_13, 
      registersIn_3_12, registersIn_3_11, registersIn_3_10, registersIn_3_9, 
      registersIn_3_8, registersIn_3_7, registersIn_3_6, registersIn_3_5, 
      registersIn_3_4, registersIn_3_3, registersIn_3_2, registersIn_3_1, 
      registersIn_3_0, registersIn_4_15, registersIn_4_14, registersIn_4_13, 
      registersIn_4_12, registersIn_4_11, registersIn_4_10, registersIn_4_9, 
      registersIn_4_8, registersIn_4_7, registersIn_4_6, registersIn_4_5, 
      registersIn_4_4, registersIn_4_3, registersIn_4_2, registersIn_4_1, 
      registersIn_4_0, moduloCounterSignal_2, moduloCounterSignal_1, 
      moduloCounterSignal_0, zeros_11, nx1003, nx8, nx26, nx1010, nx1020, 
      nx1030, nx1036, nx1051, nx1053, nx1057, nx1060, nx1062, nx1150, nx1152, 
      nx1154, nx1156, nx1158, nx1160, nx1162, nx1164, nx1166, nx1168, nx1170, 
      nx1172, nx1174, nx1176, nx1178, nx1180, nx1186: std_logic ;

begin
   InverseMux : InverseMux_16 port map ( dataIn(15)=>dataIn(15), dataIn(14)
      =>dataIn(14), dataIn(13)=>dataIn(13), dataIn(12)=>dataIn(12), 
      dataIn(11)=>dataIn(11), dataIn(10)=>dataIn(10), dataIn(9)=>dataIn(9), 
      dataIn(8)=>dataIn(8), dataIn(7)=>dataIn(7), dataIn(6)=>dataIn(6), 
      dataIn(5)=>dataIn(5), dataIn(4)=>dataIn(4), dataIn(3)=>dataIn(3), 
      dataIn(2)=>dataIn(2), dataIn(1)=>dataIn(1), dataIn(0)=>dataIn(0), 
      sel(2)=>moduloCounterSignal_2, sel(1)=>moduloCounterSignal_1, sel(0)=>
      nx1150, en=>en, rst=>rst, dataOut1(15)=>registersIn_0_15, dataOut1(14)
      =>registersIn_0_14, dataOut1(13)=>registersIn_0_13, dataOut1(12)=>
      registersIn_0_12, dataOut1(11)=>registersIn_0_11, dataOut1(10)=>
      registersIn_0_10, dataOut1(9)=>registersIn_0_9, dataOut1(8)=>
      registersIn_0_8, dataOut1(7)=>registersIn_0_7, dataOut1(6)=>
      registersIn_0_6, dataOut1(5)=>registersIn_0_5, dataOut1(4)=>
      registersIn_0_4, dataOut1(3)=>registersIn_0_3, dataOut1(2)=>
      registersIn_0_2, dataOut1(1)=>registersIn_0_1, dataOut1(0)=>
      registersIn_0_0, dataOut2(15)=>registersIn_1_15, dataOut2(14)=>
      registersIn_1_14, dataOut2(13)=>registersIn_1_13, dataOut2(12)=>
      registersIn_1_12, dataOut2(11)=>registersIn_1_11, dataOut2(10)=>
      registersIn_1_10, dataOut2(9)=>registersIn_1_9, dataOut2(8)=>
      registersIn_1_8, dataOut2(7)=>registersIn_1_7, dataOut2(6)=>
      registersIn_1_6, dataOut2(5)=>registersIn_1_5, dataOut2(4)=>
      registersIn_1_4, dataOut2(3)=>registersIn_1_3, dataOut2(2)=>
      registersIn_1_2, dataOut2(1)=>registersIn_1_1, dataOut2(0)=>
      registersIn_1_0, dataOut3(15)=>registersIn_2_15, dataOut3(14)=>
      registersIn_2_14, dataOut3(13)=>registersIn_2_13, dataOut3(12)=>
      registersIn_2_12, dataOut3(11)=>registersIn_2_11, dataOut3(10)=>
      registersIn_2_10, dataOut3(9)=>registersIn_2_9, dataOut3(8)=>
      registersIn_2_8, dataOut3(7)=>registersIn_2_7, dataOut3(6)=>
      registersIn_2_6, dataOut3(5)=>registersIn_2_5, dataOut3(4)=>
      registersIn_2_4, dataOut3(3)=>registersIn_2_3, dataOut3(2)=>
      registersIn_2_2, dataOut3(1)=>registersIn_2_1, dataOut3(0)=>
      registersIn_2_0, dataOut4(15)=>registersIn_3_15, dataOut4(14)=>
      registersIn_3_14, dataOut4(13)=>registersIn_3_13, dataOut4(12)=>
      registersIn_3_12, dataOut4(11)=>registersIn_3_11, dataOut4(10)=>
      registersIn_3_10, dataOut4(9)=>registersIn_3_9, dataOut4(8)=>
      registersIn_3_8, dataOut4(7)=>registersIn_3_7, dataOut4(6)=>
      registersIn_3_6, dataOut4(5)=>registersIn_3_5, dataOut4(4)=>
      registersIn_3_4, dataOut4(3)=>registersIn_3_3, dataOut4(2)=>
      registersIn_3_2, dataOut4(1)=>registersIn_3_1, dataOut4(0)=>
      registersIn_3_0, dataOut5(15)=>registersIn_4_15, dataOut5(14)=>
      registersIn_4_14, dataOut5(13)=>registersIn_4_13, dataOut5(12)=>
      registersIn_4_12, dataOut5(11)=>registersIn_4_11, dataOut5(10)=>
      registersIn_4_10, dataOut5(9)=>registersIn_4_9, dataOut5(8)=>
      registersIn_4_8, dataOut5(7)=>registersIn_4_7, dataOut5(6)=>
      registersIn_4_6, dataOut5(5)=>registersIn_4_5, dataOut5(4)=>
      registersIn_4_4, dataOut5(3)=>registersIn_4_3, dataOut5(2)=>
      registersIn_4_2, dataOut5(1)=>registersIn_4_1, dataOut5(0)=>
      registersIn_4_0);
   MAR : Counter_12 port map ( load(11)=>zeros_11, load(10)=>zeros_11, 
      load(9)=>zeros_11, load(8)=>zeros_11, load(7)=>zeros_11, load(6)=>
      zeros_11, load(5)=>zeros_11, load(4)=>zeros_11, load(3)=>zeros_11, 
      load(2)=>zeros_11, load(1)=>zeros_11, load(0)=>zeros_11, reset=>rst, 
      clk=>clk, isLoad=>zeros_11, count(11)=>address(11), count(10)=>
      address(10), count(9)=>address(9), count(8)=>address(8), count(7)=>
      address(7), count(6)=>address(6), count(5)=>address(5), count(4)=>
      address(4), count(3)=>address(3), count(2)=>address(2), count(1)=>
      address(1), count(0)=>address(0));
   ix1037 : fake_vcc port map ( Y=>nx1036);
   ix836 : fake_gnd port map ( Y=>zeros_11);
   ModuloCounter_counterReg_reg_Q_0 : dffr port map ( Q=>
      moduloCounterSignal_0, QB=>OPEN, D=>nx1010, CLK=>clk, R=>rst);
   ix1031 : mux21_ni port map ( Y=>nx1030, A0=>moduloCounterSignal_1, A1=>
      nx26, S0=>delayedInt);
   ix1021 : oai21 port map ( Y=>nx1020, A0=>nx1051, A1=>delayedInt, B0=>
      nx1053);
   ModuloCounter_counterReg_reg_Q_2 : dffr port map ( Q=>
      moduloCounterSignal_2, QB=>nx1051, D=>nx1020, CLK=>clk, R=>rst);
   ix1054 : nand03 port map ( Y=>nx1053, A0=>nx1178, A1=>nx8, A2=>delayedInt
   );
   ModuloCounter_counterReg_reg_Q_1 : dffr port map ( Q=>
      moduloCounterSignal_1, QB=>nx1057, D=>nx1030, CLK=>clk, R=>rst);
   ix1061 : nand02 port map ( Y=>nx1060, A0=>nx1152, A1=>
      moduloCounterSignal_1);
   tri_wrt : tri01 port map ( Y=>wrt, A=>nx1036, E=>zeros_11);
   lat_dataOut_0 : latch port map ( Q=>dataOut(0), D=>registersIn_0_0, CLK=>
      nx1154);
   lat_dataOut_1 : latch port map ( Q=>dataOut(1), D=>registersIn_0_1, CLK=>
      nx1154);
   lat_dataOut_2 : latch port map ( Q=>dataOut(2), D=>registersIn_0_2, CLK=>
      nx1154);
   lat_dataOut_3 : latch port map ( Q=>dataOut(3), D=>registersIn_0_3, CLK=>
      nx1154);
   lat_dataOut_4 : latch port map ( Q=>dataOut(4), D=>registersIn_0_4, CLK=>
      nx1154);
   lat_dataOut_5 : latch port map ( Q=>dataOut(5), D=>registersIn_0_5, CLK=>
      nx1154);
   lat_dataOut_6 : latch port map ( Q=>dataOut(6), D=>registersIn_0_6, CLK=>
      nx1156);
   lat_dataOut_7 : latch port map ( Q=>dataOut(7), D=>registersIn_0_7, CLK=>
      nx1156);
   lat_dataOut_8 : latch port map ( Q=>dataOut(8), D=>registersIn_0_8, CLK=>
      nx1156);
   lat_dataOut_9 : latch port map ( Q=>dataOut(9), D=>registersIn_0_9, CLK=>
      nx1156);
   lat_dataOut_10 : latch port map ( Q=>dataOut(10), D=>registersIn_0_10, 
      CLK=>nx1156);
   lat_dataOut_11 : latch port map ( Q=>dataOut(11), D=>registersIn_0_11, 
      CLK=>nx1156);
   lat_dataOut_12 : latch port map ( Q=>dataOut(12), D=>registersIn_0_12, 
      CLK=>nx1156);
   lat_dataOut_13 : latch port map ( Q=>dataOut(13), D=>registersIn_0_13, 
      CLK=>nx1158);
   lat_dataOut_14 : latch port map ( Q=>dataOut(14), D=>registersIn_0_14, 
      CLK=>nx1158);
   lat_dataOut_15 : latch port map ( Q=>dataOut(15), D=>registersIn_0_15, 
      CLK=>nx1158);
   lat_dataOut_16 : latch port map ( Q=>dataOut(16), D=>registersIn_1_0, CLK
      =>nx1158);
   lat_dataOut_17 : latch port map ( Q=>dataOut(17), D=>registersIn_1_1, CLK
      =>nx1158);
   lat_dataOut_18 : latch port map ( Q=>dataOut(18), D=>registersIn_1_2, CLK
      =>nx1158);
   lat_dataOut_19 : latch port map ( Q=>dataOut(19), D=>registersIn_1_3, CLK
      =>nx1158);
   lat_dataOut_20 : latch port map ( Q=>dataOut(20), D=>registersIn_1_4, CLK
      =>nx1160);
   lat_dataOut_21 : latch port map ( Q=>dataOut(21), D=>registersIn_1_5, CLK
      =>nx1160);
   lat_dataOut_22 : latch port map ( Q=>dataOut(22), D=>registersIn_1_6, CLK
      =>nx1160);
   lat_dataOut_23 : latch port map ( Q=>dataOut(23), D=>registersIn_1_7, CLK
      =>nx1160);
   lat_dataOut_24 : latch port map ( Q=>dataOut(24), D=>registersIn_1_8, CLK
      =>nx1160);
   lat_dataOut_25 : latch port map ( Q=>dataOut(25), D=>registersIn_1_9, CLK
      =>nx1160);
   lat_dataOut_26 : latch port map ( Q=>dataOut(26), D=>registersIn_1_10, 
      CLK=>nx1160);
   lat_dataOut_27 : latch port map ( Q=>dataOut(27), D=>registersIn_1_11, 
      CLK=>nx1162);
   lat_dataOut_28 : latch port map ( Q=>dataOut(28), D=>registersIn_1_12, 
      CLK=>nx1162);
   lat_dataOut_29 : latch port map ( Q=>dataOut(29), D=>registersIn_1_13, 
      CLK=>nx1162);
   lat_dataOut_30 : latch port map ( Q=>dataOut(30), D=>registersIn_1_14, 
      CLK=>nx1162);
   lat_dataOut_31 : latch port map ( Q=>dataOut(31), D=>registersIn_1_15, 
      CLK=>nx1162);
   lat_dataOut_32 : latch port map ( Q=>dataOut(32), D=>registersIn_2_0, CLK
      =>nx1162);
   lat_dataOut_33 : latch port map ( Q=>dataOut(33), D=>registersIn_2_1, CLK
      =>nx1162);
   lat_dataOut_34 : latch port map ( Q=>dataOut(34), D=>registersIn_2_2, CLK
      =>nx1164);
   lat_dataOut_35 : latch port map ( Q=>dataOut(35), D=>registersIn_2_3, CLK
      =>nx1164);
   lat_dataOut_36 : latch port map ( Q=>dataOut(36), D=>registersIn_2_4, CLK
      =>nx1164);
   lat_dataOut_37 : latch port map ( Q=>dataOut(37), D=>registersIn_2_5, CLK
      =>nx1164);
   lat_dataOut_38 : latch port map ( Q=>dataOut(38), D=>registersIn_2_6, CLK
      =>nx1164);
   lat_dataOut_39 : latch port map ( Q=>dataOut(39), D=>registersIn_2_7, CLK
      =>nx1164);
   lat_dataOut_40 : latch port map ( Q=>dataOut(40), D=>registersIn_2_8, CLK
      =>nx1164);
   lat_dataOut_41 : latch port map ( Q=>dataOut(41), D=>registersIn_2_9, CLK
      =>nx1166);
   lat_dataOut_42 : latch port map ( Q=>dataOut(42), D=>registersIn_2_10, 
      CLK=>nx1166);
   lat_dataOut_43 : latch port map ( Q=>dataOut(43), D=>registersIn_2_11, 
      CLK=>nx1166);
   lat_dataOut_44 : latch port map ( Q=>dataOut(44), D=>registersIn_2_12, 
      CLK=>nx1166);
   lat_dataOut_45 : latch port map ( Q=>dataOut(45), D=>registersIn_2_13, 
      CLK=>nx1166);
   lat_dataOut_46 : latch port map ( Q=>dataOut(46), D=>registersIn_2_14, 
      CLK=>nx1166);
   lat_dataOut_47 : latch port map ( Q=>dataOut(47), D=>registersIn_2_15, 
      CLK=>nx1166);
   lat_dataOut_48 : latch port map ( Q=>dataOut(48), D=>registersIn_3_0, CLK
      =>nx1168);
   lat_dataOut_49 : latch port map ( Q=>dataOut(49), D=>registersIn_3_1, CLK
      =>nx1168);
   lat_dataOut_50 : latch port map ( Q=>dataOut(50), D=>registersIn_3_2, CLK
      =>nx1168);
   lat_dataOut_51 : latch port map ( Q=>dataOut(51), D=>registersIn_3_3, CLK
      =>nx1168);
   lat_dataOut_52 : latch port map ( Q=>dataOut(52), D=>registersIn_3_4, CLK
      =>nx1168);
   lat_dataOut_53 : latch port map ( Q=>dataOut(53), D=>registersIn_3_5, CLK
      =>nx1168);
   lat_dataOut_54 : latch port map ( Q=>dataOut(54), D=>registersIn_3_6, CLK
      =>nx1168);
   lat_dataOut_55 : latch port map ( Q=>dataOut(55), D=>registersIn_3_7, CLK
      =>nx1170);
   lat_dataOut_56 : latch port map ( Q=>dataOut(56), D=>registersIn_3_8, CLK
      =>nx1170);
   lat_dataOut_57 : latch port map ( Q=>dataOut(57), D=>registersIn_3_9, CLK
      =>nx1170);
   lat_dataOut_58 : latch port map ( Q=>dataOut(58), D=>registersIn_3_10, 
      CLK=>nx1170);
   lat_dataOut_59 : latch port map ( Q=>dataOut(59), D=>registersIn_3_11, 
      CLK=>nx1170);
   lat_dataOut_60 : latch port map ( Q=>dataOut(60), D=>registersIn_3_12, 
      CLK=>nx1170);
   lat_dataOut_61 : latch port map ( Q=>dataOut(61), D=>registersIn_3_13, 
      CLK=>nx1170);
   lat_dataOut_62 : latch port map ( Q=>dataOut(62), D=>registersIn_3_14, 
      CLK=>nx1172);
   lat_dataOut_63 : latch port map ( Q=>dataOut(63), D=>registersIn_3_15, 
      CLK=>nx1172);
   lat_dataOut_64 : latch port map ( Q=>dataOut(64), D=>registersIn_4_0, CLK
      =>nx1172);
   lat_dataOut_65 : latch port map ( Q=>dataOut(65), D=>registersIn_4_1, CLK
      =>nx1172);
   lat_dataOut_66 : latch port map ( Q=>dataOut(66), D=>registersIn_4_2, CLK
      =>nx1172);
   lat_dataOut_67 : latch port map ( Q=>dataOut(67), D=>registersIn_4_3, CLK
      =>nx1172);
   lat_dataOut_68 : latch port map ( Q=>dataOut(68), D=>registersIn_4_4, CLK
      =>nx1172);
   lat_dataOut_69 : latch port map ( Q=>dataOut(69), D=>registersIn_4_5, CLK
      =>nx1174);
   lat_dataOut_70 : latch port map ( Q=>dataOut(70), D=>registersIn_4_6, CLK
      =>nx1174);
   lat_dataOut_71 : latch port map ( Q=>dataOut(71), D=>registersIn_4_7, CLK
      =>nx1174);
   lat_dataOut_72 : latch port map ( Q=>dataOut(72), D=>registersIn_4_8, CLK
      =>nx1174);
   lat_dataOut_73 : latch port map ( Q=>dataOut(73), D=>registersIn_4_9, CLK
      =>nx1174);
   lat_dataOut_74 : latch port map ( Q=>dataOut(74), D=>registersIn_4_10, 
      CLK=>nx1174);
   lat_dataOut_75 : latch port map ( Q=>dataOut(75), D=>registersIn_4_11, 
      CLK=>nx1174);
   lat_dataOut_76 : latch port map ( Q=>dataOut(76), D=>registersIn_4_12, 
      CLK=>nx1176);
   lat_dataOut_77 : latch port map ( Q=>dataOut(77), D=>registersIn_4_13, 
      CLK=>nx1176);
   lat_dataOut_78 : latch port map ( Q=>dataOut(78), D=>registersIn_4_14, 
      CLK=>nx1176);
   lat_dataOut_79 : latch port map ( Q=>dataOut(79), D=>registersIn_4_15, 
      CLK=>nx1176);
   ix1149 : buf02 port map ( Y=>nx1150, A=>moduloCounterSignal_0);
   ix1151 : buf02 port map ( Y=>nx1152, A=>moduloCounterSignal_0);
   ix1153 : inv02 port map ( Y=>nx1154, A=>nx1178);
   ix1155 : inv02 port map ( Y=>nx1156, A=>nx1178);
   ix1157 : inv02 port map ( Y=>nx1158, A=>nx1178);
   ix1159 : inv02 port map ( Y=>nx1160, A=>nx1178);
   ix1161 : inv02 port map ( Y=>nx1162, A=>nx1178);
   ix1163 : inv02 port map ( Y=>nx1164, A=>nx1178);
   ix1165 : inv02 port map ( Y=>nx1166, A=>nx1180);
   ix1167 : inv02 port map ( Y=>nx1168, A=>nx1180);
   ix1169 : inv02 port map ( Y=>nx1170, A=>nx1180);
   ix1171 : inv02 port map ( Y=>nx1172, A=>nx1180);
   ix1173 : inv02 port map ( Y=>nx1174, A=>nx1180);
   ix1175 : inv02 port map ( Y=>nx1176, A=>nx1180);
   ix1177 : inv02 port map ( Y=>nx1178, A=>nx1003);
   ix1179 : inv02 port map ( Y=>nx1180, A=>nx1003);
   ix1011 : xor2 port map ( Y=>nx1010, A0=>nx1150, A1=>delayedInt);
   ix27 : nor02ii port map ( Y=>nx26, A0=>nx1062, A1=>nx1178);
   ix1056 : nor03_2x port map ( Y=>nx1003, A0=>nx1051, A1=>nx1186, A2=>
      moduloCounterSignal_1);
   ix1185 : inv01 port map ( Y=>nx1186, A=>nx1150);
   ix9 : xor2 port map ( Y=>nx8, A0=>nx1051, A1=>nx1060);
   ix1063 : xor2 port map ( Y=>nx1062, A0=>nx1152, A1=>nx1057);
end FCDMAArch ;


