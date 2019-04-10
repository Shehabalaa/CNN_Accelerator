
-- 
-- Definition of  CNNAdders
-- 
--      Wed Apr 10 17:11:31 2019
--      
--      LeonardoSpectrum Level 3, 2018a.2
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NBitAdder_16 is
   port (
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      carryIn : IN std_logic ;
      sum : OUT std_logic_vector (15 DOWNTO 0) ;
      carryOut : OUT std_logic) ;
end NBitAdder_16 ;

architecture NBitAdderArch_unfold_2263 of NBitAdder_16 is
   signal nx2, nx8, nx10, nx18, nx24, nx26, nx34, nx40, nx42, nx50, nx56, 
      nx58, nx66, nx72, nx74, nx82, nx88, nx90, nx98, nx104, nx106, nx114, 
      nx85, nx89, nx93, nx99, nx101, nx103, nx107, nx111, nx115, nx121, 
      nx123, nx125, nx129, nx133, nx137, nx143, nx145, nx147, nx151, nx154, 
      nx157, nx161, nx163, nx165, nx168, nx171, nx174, nx178, nx180, nx182, 
      nx185, nx188, nx191, nx195, nx197, nx199, nx202, nx205, nx208, nx212, 
      nx214, nx216, nx219, nx222, nx225: std_logic ;

begin
   ix42 : fake_gnd port map ( Y=>carryOut);
   ix151 : xnor2 port map ( Y=>sum(0), A0=>b(0), A1=>nx85);
   ix86 : inv01 port map ( Y=>nx85, A=>a(0));
   ix145 : xnor2 port map ( Y=>sum(1), A0=>nx89, A1=>nx2);
   ix90 : nand02 port map ( Y=>nx89, A0=>b(0), A1=>a(0));
   ix3 : xnor2 port map ( Y=>nx2, A0=>a(1), A1=>nx93);
   ix94 : inv01 port map ( Y=>nx93, A=>b(1));
   ix143 : xnor2 port map ( Y=>sum(2), A0=>nx8, A1=>nx103);
   ix9 : oai22 port map ( Y=>nx8, A0=>nx89, A1=>nx99, B0=>nx93, B1=>nx101);
   ix100 : xnor2 port map ( Y=>nx99, A0=>a(1), A1=>b(1));
   ix102 : inv01 port map ( Y=>nx101, A=>a(1));
   ix104 : xnor2 port map ( Y=>nx103, A0=>a(2), A1=>b(2));
   ix141 : xnor2 port map ( Y=>sum(3), A0=>nx107, A1=>nx18);
   ix108 : aoi22 port map ( Y=>nx107, A0=>b(2), A1=>a(2), B0=>nx8, B1=>nx10
   );
   ix11 : xnor2 port map ( Y=>nx10, A0=>a(2), A1=>nx111);
   ix112 : inv01 port map ( Y=>nx111, A=>b(2));
   ix19 : xnor2 port map ( Y=>nx18, A0=>a(3), A1=>nx115);
   ix116 : inv01 port map ( Y=>nx115, A=>b(3));
   ix139 : xnor2 port map ( Y=>sum(4), A0=>nx24, A1=>nx125);
   ix25 : oai21 port map ( Y=>nx24, A0=>nx107, A1=>nx121, B0=>nx123);
   ix122 : xnor2 port map ( Y=>nx121, A0=>a(3), A1=>b(3));
   ix124 : nand02 port map ( Y=>nx123, A0=>b(3), A1=>a(3));
   ix126 : xnor2 port map ( Y=>nx125, A0=>a(4), A1=>b(4));
   ix137 : xnor2 port map ( Y=>sum(5), A0=>nx129, A1=>nx34);
   ix130 : aoi22 port map ( Y=>nx129, A0=>b(4), A1=>a(4), B0=>nx24, B1=>nx26
   );
   ix27 : xnor2 port map ( Y=>nx26, A0=>a(4), A1=>nx133);
   ix134 : inv01 port map ( Y=>nx133, A=>b(4));
   ix35 : xnor2 port map ( Y=>nx34, A0=>a(5), A1=>nx137);
   ix138 : inv01 port map ( Y=>nx137, A=>b(5));
   ix135 : xnor2 port map ( Y=>sum(6), A0=>nx40, A1=>nx147);
   ix41 : oai21 port map ( Y=>nx40, A0=>nx129, A1=>nx143, B0=>nx145);
   ix144 : xnor2 port map ( Y=>nx143, A0=>a(5), A1=>b(5));
   ix146 : nand02 port map ( Y=>nx145, A0=>b(5), A1=>a(5));
   ix148 : xnor2 port map ( Y=>nx147, A0=>a(6), A1=>b(6));
   ix133 : xnor2 port map ( Y=>sum(7), A0=>nx151, A1=>nx50);
   ix152 : aoi22 port map ( Y=>nx151, A0=>b(6), A1=>a(6), B0=>nx40, B1=>nx42
   );
   ix43 : xnor2 port map ( Y=>nx42, A0=>a(6), A1=>nx154);
   ix155 : inv01 port map ( Y=>nx154, A=>b(6));
   ix51 : xnor2 port map ( Y=>nx50, A0=>a(7), A1=>nx157);
   ix158 : inv01 port map ( Y=>nx157, A=>b(7));
   ix131 : xnor2 port map ( Y=>sum(8), A0=>nx56, A1=>nx165);
   ix57 : oai21 port map ( Y=>nx56, A0=>nx151, A1=>nx161, B0=>nx163);
   ix162 : xnor2 port map ( Y=>nx161, A0=>a(7), A1=>b(7));
   ix164 : nand02 port map ( Y=>nx163, A0=>b(7), A1=>a(7));
   ix166 : xnor2 port map ( Y=>nx165, A0=>a(8), A1=>b(8));
   ix129 : xnor2 port map ( Y=>sum(9), A0=>nx168, A1=>nx66);
   ix169 : aoi22 port map ( Y=>nx168, A0=>b(8), A1=>a(8), B0=>nx56, B1=>nx58
   );
   ix59 : xnor2 port map ( Y=>nx58, A0=>a(8), A1=>nx171);
   ix172 : inv01 port map ( Y=>nx171, A=>b(8));
   ix67 : xnor2 port map ( Y=>nx66, A0=>a(9), A1=>nx174);
   ix175 : inv01 port map ( Y=>nx174, A=>b(9));
   ix127 : xnor2 port map ( Y=>sum(10), A0=>nx72, A1=>nx182);
   ix73 : oai21 port map ( Y=>nx72, A0=>nx168, A1=>nx178, B0=>nx180);
   ix179 : xnor2 port map ( Y=>nx178, A0=>a(9), A1=>b(9));
   ix181 : nand02 port map ( Y=>nx180, A0=>b(9), A1=>a(9));
   ix183 : xnor2 port map ( Y=>nx182, A0=>a(10), A1=>b(10));
   ix125 : xnor2 port map ( Y=>sum(11), A0=>nx185, A1=>nx82);
   ix186 : aoi22 port map ( Y=>nx185, A0=>b(10), A1=>a(10), B0=>nx72, B1=>
      nx74);
   ix75 : xnor2 port map ( Y=>nx74, A0=>a(10), A1=>nx188);
   ix189 : inv01 port map ( Y=>nx188, A=>b(10));
   ix83 : xnor2 port map ( Y=>nx82, A0=>a(11), A1=>nx191);
   ix192 : inv01 port map ( Y=>nx191, A=>b(11));
   ix123 : xnor2 port map ( Y=>sum(12), A0=>nx88, A1=>nx199);
   ix89 : oai21 port map ( Y=>nx88, A0=>nx185, A1=>nx195, B0=>nx197);
   ix196 : xnor2 port map ( Y=>nx195, A0=>a(11), A1=>b(11));
   ix198 : nand02 port map ( Y=>nx197, A0=>b(11), A1=>a(11));
   ix200 : xnor2 port map ( Y=>nx199, A0=>a(12), A1=>b(12));
   ix121 : xnor2 port map ( Y=>sum(13), A0=>nx202, A1=>nx98);
   ix203 : aoi22 port map ( Y=>nx202, A0=>b(12), A1=>a(12), B0=>nx88, B1=>
      nx90);
   ix91 : xnor2 port map ( Y=>nx90, A0=>a(12), A1=>nx205);
   ix206 : inv01 port map ( Y=>nx205, A=>b(12));
   ix99 : xnor2 port map ( Y=>nx98, A0=>a(13), A1=>nx208);
   ix209 : inv01 port map ( Y=>nx208, A=>b(13));
   ix119 : xnor2 port map ( Y=>sum(14), A0=>nx104, A1=>nx216);
   ix105 : oai21 port map ( Y=>nx104, A0=>nx202, A1=>nx212, B0=>nx214);
   ix213 : xnor2 port map ( Y=>nx212, A0=>a(13), A1=>b(13));
   ix215 : nand02 port map ( Y=>nx214, A0=>b(13), A1=>a(13));
   ix217 : xnor2 port map ( Y=>nx216, A0=>a(14), A1=>b(14));
   ix117 : xnor2 port map ( Y=>sum(15), A0=>nx219, A1=>nx114);
   ix220 : aoi22 port map ( Y=>nx219, A0=>b(14), A1=>a(14), B0=>nx104, B1=>
      nx106);
   ix107 : xnor2 port map ( Y=>nx106, A0=>a(14), A1=>nx222);
   ix223 : inv01 port map ( Y=>nx222, A=>b(14));
   ix115 : xnor2 port map ( Y=>nx114, A0=>a(15), A1=>nx225);
   ix226 : inv01 port map ( Y=>nx225, A=>b(15));
end NBitAdderArch_unfold_2263 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CNNAdders is
   port (
      inputs_0_15 : IN std_logic ;
      inputs_0_14 : IN std_logic ;
      inputs_0_13 : IN std_logic ;
      inputs_0_12 : IN std_logic ;
      inputs_0_11 : IN std_logic ;
      inputs_0_10 : IN std_logic ;
      inputs_0_9 : IN std_logic ;
      inputs_0_8 : IN std_logic ;
      inputs_0_7 : IN std_logic ;
      inputs_0_6 : IN std_logic ;
      inputs_0_5 : IN std_logic ;
      inputs_0_4 : IN std_logic ;
      inputs_0_3 : IN std_logic ;
      inputs_0_2 : IN std_logic ;
      inputs_0_1 : IN std_logic ;
      inputs_0_0 : IN std_logic ;
      inputs_1_15 : IN std_logic ;
      inputs_1_14 : IN std_logic ;
      inputs_1_13 : IN std_logic ;
      inputs_1_12 : IN std_logic ;
      inputs_1_11 : IN std_logic ;
      inputs_1_10 : IN std_logic ;
      inputs_1_9 : IN std_logic ;
      inputs_1_8 : IN std_logic ;
      inputs_1_7 : IN std_logic ;
      inputs_1_6 : IN std_logic ;
      inputs_1_5 : IN std_logic ;
      inputs_1_4 : IN std_logic ;
      inputs_1_3 : IN std_logic ;
      inputs_1_2 : IN std_logic ;
      inputs_1_1 : IN std_logic ;
      inputs_1_0 : IN std_logic ;
      inputs_2_15 : IN std_logic ;
      inputs_2_14 : IN std_logic ;
      inputs_2_13 : IN std_logic ;
      inputs_2_12 : IN std_logic ;
      inputs_2_11 : IN std_logic ;
      inputs_2_10 : IN std_logic ;
      inputs_2_9 : IN std_logic ;
      inputs_2_8 : IN std_logic ;
      inputs_2_7 : IN std_logic ;
      inputs_2_6 : IN std_logic ;
      inputs_2_5 : IN std_logic ;
      inputs_2_4 : IN std_logic ;
      inputs_2_3 : IN std_logic ;
      inputs_2_2 : IN std_logic ;
      inputs_2_1 : IN std_logic ;
      inputs_2_0 : IN std_logic ;
      inputs_3_15 : IN std_logic ;
      inputs_3_14 : IN std_logic ;
      inputs_3_13 : IN std_logic ;
      inputs_3_12 : IN std_logic ;
      inputs_3_11 : IN std_logic ;
      inputs_3_10 : IN std_logic ;
      inputs_3_9 : IN std_logic ;
      inputs_3_8 : IN std_logic ;
      inputs_3_7 : IN std_logic ;
      inputs_3_6 : IN std_logic ;
      inputs_3_5 : IN std_logic ;
      inputs_3_4 : IN std_logic ;
      inputs_3_3 : IN std_logic ;
      inputs_3_2 : IN std_logic ;
      inputs_3_1 : IN std_logic ;
      inputs_3_0 : IN std_logic ;
      inputs_4_15 : IN std_logic ;
      inputs_4_14 : IN std_logic ;
      inputs_4_13 : IN std_logic ;
      inputs_4_12 : IN std_logic ;
      inputs_4_11 : IN std_logic ;
      inputs_4_10 : IN std_logic ;
      inputs_4_9 : IN std_logic ;
      inputs_4_8 : IN std_logic ;
      inputs_4_7 : IN std_logic ;
      inputs_4_6 : IN std_logic ;
      inputs_4_5 : IN std_logic ;
      inputs_4_4 : IN std_logic ;
      inputs_4_3 : IN std_logic ;
      inputs_4_2 : IN std_logic ;
      inputs_4_1 : IN std_logic ;
      inputs_4_0 : IN std_logic ;
      inputs_5_15 : IN std_logic ;
      inputs_5_14 : IN std_logic ;
      inputs_5_13 : IN std_logic ;
      inputs_5_12 : IN std_logic ;
      inputs_5_11 : IN std_logic ;
      inputs_5_10 : IN std_logic ;
      inputs_5_9 : IN std_logic ;
      inputs_5_8 : IN std_logic ;
      inputs_5_7 : IN std_logic ;
      inputs_5_6 : IN std_logic ;
      inputs_5_5 : IN std_logic ;
      inputs_5_4 : IN std_logic ;
      inputs_5_3 : IN std_logic ;
      inputs_5_2 : IN std_logic ;
      inputs_5_1 : IN std_logic ;
      inputs_5_0 : IN std_logic ;
      inputs_6_15 : IN std_logic ;
      inputs_6_14 : IN std_logic ;
      inputs_6_13 : IN std_logic ;
      inputs_6_12 : IN std_logic ;
      inputs_6_11 : IN std_logic ;
      inputs_6_10 : IN std_logic ;
      inputs_6_9 : IN std_logic ;
      inputs_6_8 : IN std_logic ;
      inputs_6_7 : IN std_logic ;
      inputs_6_6 : IN std_logic ;
      inputs_6_5 : IN std_logic ;
      inputs_6_4 : IN std_logic ;
      inputs_6_3 : IN std_logic ;
      inputs_6_2 : IN std_logic ;
      inputs_6_1 : IN std_logic ;
      inputs_6_0 : IN std_logic ;
      inputs_7_15 : IN std_logic ;
      inputs_7_14 : IN std_logic ;
      inputs_7_13 : IN std_logic ;
      inputs_7_12 : IN std_logic ;
      inputs_7_11 : IN std_logic ;
      inputs_7_10 : IN std_logic ;
      inputs_7_9 : IN std_logic ;
      inputs_7_8 : IN std_logic ;
      inputs_7_7 : IN std_logic ;
      inputs_7_6 : IN std_logic ;
      inputs_7_5 : IN std_logic ;
      inputs_7_4 : IN std_logic ;
      inputs_7_3 : IN std_logic ;
      inputs_7_2 : IN std_logic ;
      inputs_7_1 : IN std_logic ;
      inputs_7_0 : IN std_logic ;
      inputs_8_15 : IN std_logic ;
      inputs_8_14 : IN std_logic ;
      inputs_8_13 : IN std_logic ;
      inputs_8_12 : IN std_logic ;
      inputs_8_11 : IN std_logic ;
      inputs_8_10 : IN std_logic ;
      inputs_8_9 : IN std_logic ;
      inputs_8_8 : IN std_logic ;
      inputs_8_7 : IN std_logic ;
      inputs_8_6 : IN std_logic ;
      inputs_8_5 : IN std_logic ;
      inputs_8_4 : IN std_logic ;
      inputs_8_3 : IN std_logic ;
      inputs_8_2 : IN std_logic ;
      inputs_8_1 : IN std_logic ;
      inputs_8_0 : IN std_logic ;
      inputs_9_15 : IN std_logic ;
      inputs_9_14 : IN std_logic ;
      inputs_9_13 : IN std_logic ;
      inputs_9_12 : IN std_logic ;
      inputs_9_11 : IN std_logic ;
      inputs_9_10 : IN std_logic ;
      inputs_9_9 : IN std_logic ;
      inputs_9_8 : IN std_logic ;
      inputs_9_7 : IN std_logic ;
      inputs_9_6 : IN std_logic ;
      inputs_9_5 : IN std_logic ;
      inputs_9_4 : IN std_logic ;
      inputs_9_3 : IN std_logic ;
      inputs_9_2 : IN std_logic ;
      inputs_9_1 : IN std_logic ;
      inputs_9_0 : IN std_logic ;
      inputs_10_15 : IN std_logic ;
      inputs_10_14 : IN std_logic ;
      inputs_10_13 : IN std_logic ;
      inputs_10_12 : IN std_logic ;
      inputs_10_11 : IN std_logic ;
      inputs_10_10 : IN std_logic ;
      inputs_10_9 : IN std_logic ;
      inputs_10_8 : IN std_logic ;
      inputs_10_7 : IN std_logic ;
      inputs_10_6 : IN std_logic ;
      inputs_10_5 : IN std_logic ;
      inputs_10_4 : IN std_logic ;
      inputs_10_3 : IN std_logic ;
      inputs_10_2 : IN std_logic ;
      inputs_10_1 : IN std_logic ;
      inputs_10_0 : IN std_logic ;
      inputs_11_15 : IN std_logic ;
      inputs_11_14 : IN std_logic ;
      inputs_11_13 : IN std_logic ;
      inputs_11_12 : IN std_logic ;
      inputs_11_11 : IN std_logic ;
      inputs_11_10 : IN std_logic ;
      inputs_11_9 : IN std_logic ;
      inputs_11_8 : IN std_logic ;
      inputs_11_7 : IN std_logic ;
      inputs_11_6 : IN std_logic ;
      inputs_11_5 : IN std_logic ;
      inputs_11_4 : IN std_logic ;
      inputs_11_3 : IN std_logic ;
      inputs_11_2 : IN std_logic ;
      inputs_11_1 : IN std_logic ;
      inputs_11_0 : IN std_logic ;
      inputs_12_15 : IN std_logic ;
      inputs_12_14 : IN std_logic ;
      inputs_12_13 : IN std_logic ;
      inputs_12_12 : IN std_logic ;
      inputs_12_11 : IN std_logic ;
      inputs_12_10 : IN std_logic ;
      inputs_12_9 : IN std_logic ;
      inputs_12_8 : IN std_logic ;
      inputs_12_7 : IN std_logic ;
      inputs_12_6 : IN std_logic ;
      inputs_12_5 : IN std_logic ;
      inputs_12_4 : IN std_logic ;
      inputs_12_3 : IN std_logic ;
      inputs_12_2 : IN std_logic ;
      inputs_12_1 : IN std_logic ;
      inputs_12_0 : IN std_logic ;
      inputs_13_15 : IN std_logic ;
      inputs_13_14 : IN std_logic ;
      inputs_13_13 : IN std_logic ;
      inputs_13_12 : IN std_logic ;
      inputs_13_11 : IN std_logic ;
      inputs_13_10 : IN std_logic ;
      inputs_13_9 : IN std_logic ;
      inputs_13_8 : IN std_logic ;
      inputs_13_7 : IN std_logic ;
      inputs_13_6 : IN std_logic ;
      inputs_13_5 : IN std_logic ;
      inputs_13_4 : IN std_logic ;
      inputs_13_3 : IN std_logic ;
      inputs_13_2 : IN std_logic ;
      inputs_13_1 : IN std_logic ;
      inputs_13_0 : IN std_logic ;
      inputs_14_15 : IN std_logic ;
      inputs_14_14 : IN std_logic ;
      inputs_14_13 : IN std_logic ;
      inputs_14_12 : IN std_logic ;
      inputs_14_11 : IN std_logic ;
      inputs_14_10 : IN std_logic ;
      inputs_14_9 : IN std_logic ;
      inputs_14_8 : IN std_logic ;
      inputs_14_7 : IN std_logic ;
      inputs_14_6 : IN std_logic ;
      inputs_14_5 : IN std_logic ;
      inputs_14_4 : IN std_logic ;
      inputs_14_3 : IN std_logic ;
      inputs_14_2 : IN std_logic ;
      inputs_14_1 : IN std_logic ;
      inputs_14_0 : IN std_logic ;
      inputs_15_15 : IN std_logic ;
      inputs_15_14 : IN std_logic ;
      inputs_15_13 : IN std_logic ;
      inputs_15_12 : IN std_logic ;
      inputs_15_11 : IN std_logic ;
      inputs_15_10 : IN std_logic ;
      inputs_15_9 : IN std_logic ;
      inputs_15_8 : IN std_logic ;
      inputs_15_7 : IN std_logic ;
      inputs_15_6 : IN std_logic ;
      inputs_15_5 : IN std_logic ;
      inputs_15_4 : IN std_logic ;
      inputs_15_3 : IN std_logic ;
      inputs_15_2 : IN std_logic ;
      inputs_15_1 : IN std_logic ;
      inputs_15_0 : IN std_logic ;
      inputs_16_15 : IN std_logic ;
      inputs_16_14 : IN std_logic ;
      inputs_16_13 : IN std_logic ;
      inputs_16_12 : IN std_logic ;
      inputs_16_11 : IN std_logic ;
      inputs_16_10 : IN std_logic ;
      inputs_16_9 : IN std_logic ;
      inputs_16_8 : IN std_logic ;
      inputs_16_7 : IN std_logic ;
      inputs_16_6 : IN std_logic ;
      inputs_16_5 : IN std_logic ;
      inputs_16_4 : IN std_logic ;
      inputs_16_3 : IN std_logic ;
      inputs_16_2 : IN std_logic ;
      inputs_16_1 : IN std_logic ;
      inputs_16_0 : IN std_logic ;
      inputs_17_15 : IN std_logic ;
      inputs_17_14 : IN std_logic ;
      inputs_17_13 : IN std_logic ;
      inputs_17_12 : IN std_logic ;
      inputs_17_11 : IN std_logic ;
      inputs_17_10 : IN std_logic ;
      inputs_17_9 : IN std_logic ;
      inputs_17_8 : IN std_logic ;
      inputs_17_7 : IN std_logic ;
      inputs_17_6 : IN std_logic ;
      inputs_17_5 : IN std_logic ;
      inputs_17_4 : IN std_logic ;
      inputs_17_3 : IN std_logic ;
      inputs_17_2 : IN std_logic ;
      inputs_17_1 : IN std_logic ;
      inputs_17_0 : IN std_logic ;
      inputs_18_15 : IN std_logic ;
      inputs_18_14 : IN std_logic ;
      inputs_18_13 : IN std_logic ;
      inputs_18_12 : IN std_logic ;
      inputs_18_11 : IN std_logic ;
      inputs_18_10 : IN std_logic ;
      inputs_18_9 : IN std_logic ;
      inputs_18_8 : IN std_logic ;
      inputs_18_7 : IN std_logic ;
      inputs_18_6 : IN std_logic ;
      inputs_18_5 : IN std_logic ;
      inputs_18_4 : IN std_logic ;
      inputs_18_3 : IN std_logic ;
      inputs_18_2 : IN std_logic ;
      inputs_18_1 : IN std_logic ;
      inputs_18_0 : IN std_logic ;
      inputs_19_15 : IN std_logic ;
      inputs_19_14 : IN std_logic ;
      inputs_19_13 : IN std_logic ;
      inputs_19_12 : IN std_logic ;
      inputs_19_11 : IN std_logic ;
      inputs_19_10 : IN std_logic ;
      inputs_19_9 : IN std_logic ;
      inputs_19_8 : IN std_logic ;
      inputs_19_7 : IN std_logic ;
      inputs_19_6 : IN std_logic ;
      inputs_19_5 : IN std_logic ;
      inputs_19_4 : IN std_logic ;
      inputs_19_3 : IN std_logic ;
      inputs_19_2 : IN std_logic ;
      inputs_19_1 : IN std_logic ;
      inputs_19_0 : IN std_logic ;
      inputs_20_15 : IN std_logic ;
      inputs_20_14 : IN std_logic ;
      inputs_20_13 : IN std_logic ;
      inputs_20_12 : IN std_logic ;
      inputs_20_11 : IN std_logic ;
      inputs_20_10 : IN std_logic ;
      inputs_20_9 : IN std_logic ;
      inputs_20_8 : IN std_logic ;
      inputs_20_7 : IN std_logic ;
      inputs_20_6 : IN std_logic ;
      inputs_20_5 : IN std_logic ;
      inputs_20_4 : IN std_logic ;
      inputs_20_3 : IN std_logic ;
      inputs_20_2 : IN std_logic ;
      inputs_20_1 : IN std_logic ;
      inputs_20_0 : IN std_logic ;
      inputs_21_15 : IN std_logic ;
      inputs_21_14 : IN std_logic ;
      inputs_21_13 : IN std_logic ;
      inputs_21_12 : IN std_logic ;
      inputs_21_11 : IN std_logic ;
      inputs_21_10 : IN std_logic ;
      inputs_21_9 : IN std_logic ;
      inputs_21_8 : IN std_logic ;
      inputs_21_7 : IN std_logic ;
      inputs_21_6 : IN std_logic ;
      inputs_21_5 : IN std_logic ;
      inputs_21_4 : IN std_logic ;
      inputs_21_3 : IN std_logic ;
      inputs_21_2 : IN std_logic ;
      inputs_21_1 : IN std_logic ;
      inputs_21_0 : IN std_logic ;
      inputs_22_15 : IN std_logic ;
      inputs_22_14 : IN std_logic ;
      inputs_22_13 : IN std_logic ;
      inputs_22_12 : IN std_logic ;
      inputs_22_11 : IN std_logic ;
      inputs_22_10 : IN std_logic ;
      inputs_22_9 : IN std_logic ;
      inputs_22_8 : IN std_logic ;
      inputs_22_7 : IN std_logic ;
      inputs_22_6 : IN std_logic ;
      inputs_22_5 : IN std_logic ;
      inputs_22_4 : IN std_logic ;
      inputs_22_3 : IN std_logic ;
      inputs_22_2 : IN std_logic ;
      inputs_22_1 : IN std_logic ;
      inputs_22_0 : IN std_logic ;
      inputs_23_15 : IN std_logic ;
      inputs_23_14 : IN std_logic ;
      inputs_23_13 : IN std_logic ;
      inputs_23_12 : IN std_logic ;
      inputs_23_11 : IN std_logic ;
      inputs_23_10 : IN std_logic ;
      inputs_23_9 : IN std_logic ;
      inputs_23_8 : IN std_logic ;
      inputs_23_7 : IN std_logic ;
      inputs_23_6 : IN std_logic ;
      inputs_23_5 : IN std_logic ;
      inputs_23_4 : IN std_logic ;
      inputs_23_3 : IN std_logic ;
      inputs_23_2 : IN std_logic ;
      inputs_23_1 : IN std_logic ;
      inputs_23_0 : IN std_logic ;
      inputs_24_15 : IN std_logic ;
      inputs_24_14 : IN std_logic ;
      inputs_24_13 : IN std_logic ;
      inputs_24_12 : IN std_logic ;
      inputs_24_11 : IN std_logic ;
      inputs_24_10 : IN std_logic ;
      inputs_24_9 : IN std_logic ;
      inputs_24_8 : IN std_logic ;
      inputs_24_7 : IN std_logic ;
      inputs_24_6 : IN std_logic ;
      inputs_24_5 : IN std_logic ;
      inputs_24_4 : IN std_logic ;
      inputs_24_3 : IN std_logic ;
      inputs_24_2 : IN std_logic ;
      inputs_24_1 : IN std_logic ;
      inputs_24_0 : IN std_logic ;
      filterType : IN std_logic ;
      finalSum : OUT std_logic_vector (15 DOWNTO 0)) ;
end CNNAdders ;

architecture CNNAddersArch of CNNAdders is
   component NBitAdder_16
      port (
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         carryIn : IN std_logic ;
         sum : OUT std_logic_vector (15 DOWNTO 0) ;
         carryOut : OUT std_logic) ;
   end component ;
   signal sum1_15, sum1_14, sum1_13, sum1_12, sum1_11, sum1_10, sum1_9, 
      sum1_8, sum1_7, sum1_6, sum1_5, sum1_4, sum1_3, sum1_2, sum1_1, sum1_0, 
      sum2_15, sum2_14, sum2_13, sum2_12, sum2_11, sum2_10, sum2_9, sum2_8, 
      sum2_7, sum2_6, sum2_5, sum2_4, sum2_3, sum2_2, sum2_1, sum2_0, 
      sum3_15, sum3_14, sum3_13, sum3_12, sum3_11, sum3_10, sum3_9, sum3_8, 
      sum3_7, sum3_6, sum3_5, sum3_4, sum3_3, sum3_2, sum3_1, sum3_0, 
      sum3Filter_15, sum3Filter_14, sum3Filter_13, sum3Filter_12, 
      sum3Filter_11, sum3Filter_10, sum3Filter_9, sum3Filter_8, sum3Filter_7, 
      sum3Filter_6, sum3Filter_5, sum3Filter_4, sum3Filter_3, sum3Filter_2, 
      sum3Filter_1, sum3Filter_0, sum4_15, sum4_14, sum4_13, sum4_12, 
      sum4_11, sum4_10, sum4_9, sum4_8, sum4_7, sum4_6, sum4_5, sum4_4, 
      sum4_3, sum4_2, sum4_1, sum4_0, totalSum_15, totalSum_14, totalSum_13, 
      totalSum_12, totalSum_11, totalSum_10, totalSum_9, totalSum_8, 
      totalSum_7, totalSum_6, totalSum_5, totalSum_4, totalSum_3, totalSum_2, 
      totalSum_1, totalSum_0, sum1Map_sum1_15_dup_0, sum1Map_sum1_14_dup_0, 
      sum1Map_sum1_13_dup_0, sum1Map_sum1_12_dup_0, sum1Map_sum1_11_dup_0, 
      sum1Map_sum1_10_dup_0, sum1Map_sum1_9_dup_0, sum1Map_sum1_8_dup_0, 
      sum1Map_sum1_7_dup_0, sum1Map_sum1_6_dup_0, sum1Map_sum1_5_dup_0, 
      sum1Map_sum1_4_dup_0, sum1Map_sum1_3_dup_0, sum1Map_sum1_2_dup_0, 
      sum1Map_sum1_1_dup_0, sum1Map_sum1_0_dup_0, sum1Map_sum2_15_dup_0, 
      sum1Map_sum2_14_dup_0, sum1Map_sum2_13_dup_0, sum1Map_sum2_12_dup_0, 
      sum1Map_sum2_11_dup_0, sum1Map_sum2_10_dup_0, sum1Map_sum2_9_dup_0, 
      sum1Map_sum2_8_dup_0, sum1Map_sum2_7_dup_0, sum1Map_sum2_6_dup_0, 
      sum1Map_sum2_5_dup_0, sum1Map_sum2_4_dup_0, sum1Map_sum2_3_dup_0, 
      sum1Map_sum2_2_dup_0, sum1Map_sum2_1_dup_0, sum1Map_sum2_0_dup_0, 
      sum1Map_sum1Map_sum1_15, sum1Map_sum1Map_sum1_14, 
      sum1Map_sum1Map_sum1_13, sum1Map_sum1Map_sum1_12, 
      sum1Map_sum1Map_sum1_11, sum1Map_sum1Map_sum1_10, 
      sum1Map_sum1Map_sum1_9, sum1Map_sum1Map_sum1_8, sum1Map_sum1Map_sum1_7, 
      sum1Map_sum1Map_sum1_6, sum1Map_sum1Map_sum1_5, sum1Map_sum1Map_sum1_4, 
      sum1Map_sum1Map_sum1_3, sum1Map_sum1Map_sum1_2, sum1Map_sum1Map_sum1_1, 
      sum1Map_sum1Map_sum1_0, sum1Map_sum1Map_sum2_15, 
      sum1Map_sum1Map_sum2_14, sum1Map_sum1Map_sum2_13, 
      sum1Map_sum1Map_sum2_12, sum1Map_sum1Map_sum2_11, 
      sum1Map_sum1Map_sum2_10, sum1Map_sum1Map_sum2_9, 
      sum1Map_sum1Map_sum2_8, sum1Map_sum1Map_sum2_7, sum1Map_sum1Map_sum2_6, 
      sum1Map_sum1Map_sum2_5, sum1Map_sum1Map_sum2_4, sum1Map_sum1Map_sum2_3, 
      sum1Map_sum1Map_sum2_2, sum1Map_sum1Map_sum2_1, sum1Map_sum1Map_sum2_0, 
      sum1Map_sum2Map_sum1_15, sum1Map_sum2Map_sum1_14, 
      sum1Map_sum2Map_sum1_13, sum1Map_sum2Map_sum1_12, 
      sum1Map_sum2Map_sum1_11, sum1Map_sum2Map_sum1_10, 
      sum1Map_sum2Map_sum1_9, sum1Map_sum2Map_sum1_8, sum1Map_sum2Map_sum1_7, 
      sum1Map_sum2Map_sum1_6, sum1Map_sum2Map_sum1_5, sum1Map_sum2Map_sum1_4, 
      sum1Map_sum2Map_sum1_3, sum1Map_sum2Map_sum1_2, sum1Map_sum2Map_sum1_1, 
      sum1Map_sum2Map_sum1_0, sum1Map_sum2Map_sum2_15, 
      sum1Map_sum2Map_sum2_14, sum1Map_sum2Map_sum2_13, 
      sum1Map_sum2Map_sum2_12, sum1Map_sum2Map_sum2_11, 
      sum1Map_sum2Map_sum2_10, sum1Map_sum2Map_sum2_9, 
      sum1Map_sum2Map_sum2_8, sum1Map_sum2Map_sum2_7, sum1Map_sum2Map_sum2_6, 
      sum1Map_sum2Map_sum2_5, sum1Map_sum2Map_sum2_4, sum1Map_sum2Map_sum2_3, 
      sum1Map_sum2Map_sum2_2, sum1Map_sum2Map_sum2_1, sum1Map_sum2Map_sum2_0, 
      sum2Map_sum1_15_dup_0, sum2Map_sum1_14_dup_0, sum2Map_sum1_13_dup_0, 
      sum2Map_sum1_12_dup_0, sum2Map_sum1_11_dup_0, sum2Map_sum1_10_dup_0, 
      sum2Map_sum1_9_dup_0, sum2Map_sum1_8_dup_0, sum2Map_sum1_7_dup_0, 
      sum2Map_sum1_6_dup_0, sum2Map_sum1_5_dup_0, sum2Map_sum1_4_dup_0, 
      sum2Map_sum1_3_dup_0, sum2Map_sum1_2_dup_0, sum2Map_sum1_1_dup_0, 
      sum2Map_sum1_0_dup_0, sum2Map_sum2_15_dup_0, sum2Map_sum2_14_dup_0, 
      sum2Map_sum2_13_dup_0, sum2Map_sum2_12_dup_0, sum2Map_sum2_11_dup_0, 
      sum2Map_sum2_10_dup_0, sum2Map_sum2_9_dup_0, sum2Map_sum2_8_dup_0, 
      sum2Map_sum2_7_dup_0, sum2Map_sum2_6_dup_0, sum2Map_sum2_5_dup_0, 
      sum2Map_sum2_4_dup_0, sum2Map_sum2_3_dup_0, sum2Map_sum2_2_dup_0, 
      sum2Map_sum2_1_dup_0, sum2Map_sum2_0_dup_0, sum2Map_sum1Map_sum1_15, 
      sum2Map_sum1Map_sum1_14, sum2Map_sum1Map_sum1_13, 
      sum2Map_sum1Map_sum1_12, sum2Map_sum1Map_sum1_11, 
      sum2Map_sum1Map_sum1_10, sum2Map_sum1Map_sum1_9, 
      sum2Map_sum1Map_sum1_8, sum2Map_sum1Map_sum1_7, sum2Map_sum1Map_sum1_6, 
      sum2Map_sum1Map_sum1_5, sum2Map_sum1Map_sum1_4, sum2Map_sum1Map_sum1_3, 
      sum2Map_sum1Map_sum1_2, sum2Map_sum1Map_sum1_1, sum2Map_sum1Map_sum1_0, 
      sum2Map_sum1Map_sum2_15, sum2Map_sum1Map_sum2_14, 
      sum2Map_sum1Map_sum2_13, sum2Map_sum1Map_sum2_12, 
      sum2Map_sum1Map_sum2_11, sum2Map_sum1Map_sum2_10, 
      sum2Map_sum1Map_sum2_9, sum2Map_sum1Map_sum2_8, sum2Map_sum1Map_sum2_7, 
      sum2Map_sum1Map_sum2_6, sum2Map_sum1Map_sum2_5, sum2Map_sum1Map_sum2_4, 
      sum2Map_sum1Map_sum2_3, sum2Map_sum1Map_sum2_2, sum2Map_sum1Map_sum2_1, 
      sum2Map_sum1Map_sum2_0, sum2Map_sum2Map_sum1_15, 
      sum2Map_sum2Map_sum1_14, sum2Map_sum2Map_sum1_13, 
      sum2Map_sum2Map_sum1_12, sum2Map_sum2Map_sum1_11, 
      sum2Map_sum2Map_sum1_10, sum2Map_sum2Map_sum1_9, 
      sum2Map_sum2Map_sum1_8, sum2Map_sum2Map_sum1_7, sum2Map_sum2Map_sum1_6, 
      sum2Map_sum2Map_sum1_5, sum2Map_sum2Map_sum1_4, sum2Map_sum2Map_sum1_3, 
      sum2Map_sum2Map_sum1_2, sum2Map_sum2Map_sum1_1, sum2Map_sum2Map_sum1_0, 
      sum2Map_sum2Map_sum2_15, sum2Map_sum2Map_sum2_14, 
      sum2Map_sum2Map_sum2_13, sum2Map_sum2Map_sum2_12, 
      sum2Map_sum2Map_sum2_11, sum2Map_sum2Map_sum2_10, 
      sum2Map_sum2Map_sum2_9, sum2Map_sum2Map_sum2_8, sum2Map_sum2Map_sum2_7, 
      sum2Map_sum2Map_sum2_6, sum2Map_sum2Map_sum2_5, sum2Map_sum2Map_sum2_4, 
      sum2Map_sum2Map_sum2_3, sum2Map_sum2Map_sum2_2, sum2Map_sum2Map_sum2_1, 
      sum2Map_sum2Map_sum2_0, sum3Map_sum1_15, sum3Map_sum1_14, 
      sum3Map_sum1_13, sum3Map_sum1_12, sum3Map_sum1_11, sum3Map_sum1_10, 
      sum3Map_sum1_9, sum3Map_sum1_8, sum3Map_sum1_7, sum3Map_sum1_6, 
      sum3Map_sum1_5, sum3Map_sum1_4, sum3Map_sum1_3, sum3Map_sum1_2, 
      sum3Map_sum1_1, sum3Map_sum1_0, sum3Map_sum2_15, sum3Map_sum2_14, 
      sum3Map_sum2_13, sum3Map_sum2_12, sum3Map_sum2_11, sum3Map_sum2_10, 
      sum3Map_sum2_9, sum3Map_sum2_8, sum3Map_sum2_7, sum3Map_sum2_6, 
      sum3Map_sum2_5, sum3Map_sum2_4, sum3Map_sum2_3, sum3Map_sum2_2, 
      sum3Map_sum2_1, sum3Map_sum2_0, sum3Map_sum1Map_sum1_15, 
      sum3Map_sum1Map_sum1_14, sum3Map_sum1Map_sum1_13, 
      sum3Map_sum1Map_sum1_12, sum3Map_sum1Map_sum1_11, 
      sum3Map_sum1Map_sum1_10, sum3Map_sum1Map_sum1_9, 
      sum3Map_sum1Map_sum1_8, sum3Map_sum1Map_sum1_7, sum3Map_sum1Map_sum1_6, 
      sum3Map_sum1Map_sum1_5, sum3Map_sum1Map_sum1_4, sum3Map_sum1Map_sum1_3, 
      sum3Map_sum1Map_sum1_2, sum3Map_sum1Map_sum1_1, sum3Map_sum1Map_sum1_0, 
      sum3Map_sum1Map_sum2_15, sum3Map_sum1Map_sum2_14, 
      sum3Map_sum1Map_sum2_13, sum3Map_sum1Map_sum2_12, 
      sum3Map_sum1Map_sum2_11, sum3Map_sum1Map_sum2_10, 
      sum3Map_sum1Map_sum2_9, sum3Map_sum1Map_sum2_8, sum3Map_sum1Map_sum2_7, 
      sum3Map_sum1Map_sum2_6, sum3Map_sum1Map_sum2_5, sum3Map_sum1Map_sum2_4, 
      sum3Map_sum1Map_sum2_3, sum3Map_sum1Map_sum2_2, sum3Map_sum1Map_sum2_1, 
      sum3Map_sum1Map_sum2_0, sum3Map_sum2Map_sum1_15, 
      sum3Map_sum2Map_sum1_14, sum3Map_sum2Map_sum1_13, 
      sum3Map_sum2Map_sum1_12, sum3Map_sum2Map_sum1_11, 
      sum3Map_sum2Map_sum1_10, sum3Map_sum2Map_sum1_9, 
      sum3Map_sum2Map_sum1_8, sum3Map_sum2Map_sum1_7, sum3Map_sum2Map_sum1_6, 
      sum3Map_sum2Map_sum1_5, sum3Map_sum2Map_sum1_4, sum3Map_sum2Map_sum1_3, 
      sum3Map_sum2Map_sum1_2, sum3Map_sum2Map_sum1_1, sum3Map_sum2Map_sum1_0, 
      sum3Map_sum2Map_sum2_15, sum3Map_sum2Map_sum2_14, 
      sum3Map_sum2Map_sum2_13, sum3Map_sum2Map_sum2_12, 
      sum3Map_sum2Map_sum2_11, sum3Map_sum2Map_sum2_10, 
      sum3Map_sum2Map_sum2_9, sum3Map_sum2Map_sum2_8, sum3Map_sum2Map_sum2_7, 
      sum3Map_sum2Map_sum2_6, sum3Map_sum2Map_sum2_5, sum3Map_sum2Map_sum2_4, 
      sum3Map_sum2Map_sum2_3, sum3Map_sum2Map_sum2_2, sum3Map_sum2Map_sum2_1, 
      sum3Map_sum2Map_sum2_0, GND, nx670, nx672, nx677, nx679, nx682, nx684, 
      nx687, nx689, nx692, nx694, nx697, nx699, nx702, nx704, nx707, nx709, 
      nx712, nx714, nx717, nx719, nx722, nx724, nx727, nx729, nx732, nx734, 
      nx737, nx739, nx742, nx744, nx747, nx749, nx756, nx758, nx760: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (23 downto 0 );

begin
   sum3FilterMap : NBitAdder_16 port map ( a(15)=>sum1_15, a(14)=>sum1_14, 
      a(13)=>sum1_13, a(12)=>sum1_12, a(11)=>sum1_11, a(10)=>sum1_10, a(9)=>
      sum1_9, a(8)=>sum1_8, a(7)=>sum1_7, a(6)=>sum1_6, a(5)=>sum1_5, a(4)=>
      sum1_4, a(3)=>sum1_3, a(2)=>sum1_2, a(1)=>sum1_1, a(0)=>sum1_0, b(15)
      =>inputs_8_15, b(14)=>inputs_8_14, b(13)=>inputs_8_13, b(12)=>
      inputs_8_12, b(11)=>inputs_8_11, b(10)=>inputs_8_10, b(9)=>inputs_8_9, 
      b(8)=>inputs_8_8, b(7)=>inputs_8_7, b(6)=>inputs_8_6, b(5)=>inputs_8_5, 
      b(4)=>inputs_8_4, b(3)=>inputs_8_3, b(2)=>inputs_8_2, b(1)=>inputs_8_1, 
      b(0)=>inputs_8_0, carryIn=>GND, sum(15)=>sum3Filter_15, sum(14)=>
      sum3Filter_14, sum(13)=>sum3Filter_13, sum(12)=>sum3Filter_12, sum(11)
      =>sum3Filter_11, sum(10)=>sum3Filter_10, sum(9)=>sum3Filter_9, sum(8)
      =>sum3Filter_8, sum(7)=>sum3Filter_7, sum(6)=>sum3Filter_6, sum(5)=>
      sum3Filter_5, sum(4)=>sum3Filter_4, sum(3)=>sum3Filter_3, sum(2)=>
      sum3Filter_2, sum(1)=>sum3Filter_1, sum(0)=>sum3Filter_0, carryOut=>
      DANGLING(0));
   sumRestMap : NBitAdder_16 port map ( a(15)=>sum2_15, a(14)=>sum2_14, 
      a(13)=>sum2_13, a(12)=>sum2_12, a(11)=>sum2_11, a(10)=>sum2_10, a(9)=>
      sum2_9, a(8)=>sum2_8, a(7)=>sum2_7, a(6)=>sum2_6, a(5)=>sum2_5, a(4)=>
      sum2_4, a(3)=>sum2_3, a(2)=>sum2_2, a(1)=>sum2_1, a(0)=>sum2_0, b(15)
      =>sum3_15, b(14)=>sum3_14, b(13)=>sum3_13, b(12)=>sum3_12, b(11)=>
      sum3_11, b(10)=>sum3_10, b(9)=>sum3_9, b(8)=>sum3_8, b(7)=>sum3_7, 
      b(6)=>sum3_6, b(5)=>sum3_5, b(4)=>sum3_4, b(3)=>sum3_3, b(2)=>sum3_2, 
      b(1)=>sum3_1, b(0)=>sum3_0, carryIn=>GND, sum(15)=>sum4_15, sum(14)=>
      sum4_14, sum(13)=>sum4_13, sum(12)=>sum4_12, sum(11)=>sum4_11, sum(10)
      =>sum4_10, sum(9)=>sum4_9, sum(8)=>sum4_8, sum(7)=>sum4_7, sum(6)=>
      sum4_6, sum(5)=>sum4_5, sum(4)=>sum4_4, sum(3)=>sum4_3, sum(2)=>sum4_2, 
      sum(1)=>sum4_1, sum(0)=>sum4_0, carryOut=>DANGLING(1));
   sumFinalMap : NBitAdder_16 port map ( a(15)=>sum3Filter_15, a(14)=>
      sum3Filter_14, a(13)=>sum3Filter_13, a(12)=>sum3Filter_12, a(11)=>
      sum3Filter_11, a(10)=>sum3Filter_10, a(9)=>sum3Filter_9, a(8)=>
      sum3Filter_8, a(7)=>sum3Filter_7, a(6)=>sum3Filter_6, a(5)=>
      sum3Filter_5, a(4)=>sum3Filter_4, a(3)=>sum3Filter_3, a(2)=>
      sum3Filter_2, a(1)=>sum3Filter_1, a(0)=>sum3Filter_0, b(15)=>sum4_15, 
      b(14)=>sum4_14, b(13)=>sum4_13, b(12)=>sum4_12, b(11)=>sum4_11, b(10)
      =>sum4_10, b(9)=>sum4_9, b(8)=>sum4_8, b(7)=>sum4_7, b(6)=>sum4_6, 
      b(5)=>sum4_5, b(4)=>sum4_4, b(3)=>sum4_3, b(2)=>sum4_2, b(1)=>sum4_1, 
      b(0)=>sum4_0, carryIn=>GND, sum(15)=>totalSum_15, sum(14)=>totalSum_14, 
      sum(13)=>totalSum_13, sum(12)=>totalSum_12, sum(11)=>totalSum_11, 
      sum(10)=>totalSum_10, sum(9)=>totalSum_9, sum(8)=>totalSum_8, sum(7)=>
      totalSum_7, sum(6)=>totalSum_6, sum(5)=>totalSum_5, sum(4)=>totalSum_4, 
      sum(3)=>totalSum_3, sum(2)=>totalSum_2, sum(1)=>totalSum_1, sum(0)=>
      totalSum_0, carryOut=>DANGLING(2));
   sum1Map_sumFinalMap_dup_0 : NBitAdder_16 port map ( a(15)=>
      sum1Map_sum1_15_dup_0, a(14)=>sum1Map_sum1_14_dup_0, a(13)=>
      sum1Map_sum1_13_dup_0, a(12)=>sum1Map_sum1_12_dup_0, a(11)=>
      sum1Map_sum1_11_dup_0, a(10)=>sum1Map_sum1_10_dup_0, a(9)=>
      sum1Map_sum1_9_dup_0, a(8)=>sum1Map_sum1_8_dup_0, a(7)=>
      sum1Map_sum1_7_dup_0, a(6)=>sum1Map_sum1_6_dup_0, a(5)=>
      sum1Map_sum1_5_dup_0, a(4)=>sum1Map_sum1_4_dup_0, a(3)=>
      sum1Map_sum1_3_dup_0, a(2)=>sum1Map_sum1_2_dup_0, a(1)=>
      sum1Map_sum1_1_dup_0, a(0)=>sum1Map_sum1_0_dup_0, b(15)=>
      sum1Map_sum2_15_dup_0, b(14)=>sum1Map_sum2_14_dup_0, b(13)=>
      sum1Map_sum2_13_dup_0, b(12)=>sum1Map_sum2_12_dup_0, b(11)=>
      sum1Map_sum2_11_dup_0, b(10)=>sum1Map_sum2_10_dup_0, b(9)=>
      sum1Map_sum2_9_dup_0, b(8)=>sum1Map_sum2_8_dup_0, b(7)=>
      sum1Map_sum2_7_dup_0, b(6)=>sum1Map_sum2_6_dup_0, b(5)=>
      sum1Map_sum2_5_dup_0, b(4)=>sum1Map_sum2_4_dup_0, b(3)=>
      sum1Map_sum2_3_dup_0, b(2)=>sum1Map_sum2_2_dup_0, b(1)=>
      sum1Map_sum2_1_dup_0, b(0)=>sum1Map_sum2_0_dup_0, carryIn=>GND, 
      sum(15)=>sum1_15, sum(14)=>sum1_14, sum(13)=>sum1_13, sum(12)=>sum1_12, 
      sum(11)=>sum1_11, sum(10)=>sum1_10, sum(9)=>sum1_9, sum(8)=>sum1_8, 
      sum(7)=>sum1_7, sum(6)=>sum1_6, sum(5)=>sum1_5, sum(4)=>sum1_4, sum(3)
      =>sum1_3, sum(2)=>sum1_2, sum(1)=>sum1_1, sum(0)=>sum1_0, carryOut=>
      DANGLING(3));
   sum1Map_sum1Map_sum1Map : NBitAdder_16 port map ( a(15)=>inputs_0_15, 
      a(14)=>inputs_0_14, a(13)=>inputs_0_13, a(12)=>inputs_0_12, a(11)=>
      inputs_0_11, a(10)=>inputs_0_10, a(9)=>inputs_0_9, a(8)=>inputs_0_8, 
      a(7)=>inputs_0_7, a(6)=>inputs_0_6, a(5)=>inputs_0_5, a(4)=>inputs_0_4, 
      a(3)=>inputs_0_3, a(2)=>inputs_0_2, a(1)=>inputs_0_1, a(0)=>inputs_0_0, 
      b(15)=>inputs_1_15, b(14)=>inputs_1_14, b(13)=>inputs_1_13, b(12)=>
      inputs_1_12, b(11)=>inputs_1_11, b(10)=>inputs_1_10, b(9)=>inputs_1_9, 
      b(8)=>inputs_1_8, b(7)=>inputs_1_7, b(6)=>inputs_1_6, b(5)=>inputs_1_5, 
      b(4)=>inputs_1_4, b(3)=>inputs_1_3, b(2)=>inputs_1_2, b(1)=>inputs_1_1, 
      b(0)=>inputs_1_0, carryIn=>GND, sum(15)=>sum1Map_sum1Map_sum1_15, 
      sum(14)=>sum1Map_sum1Map_sum1_14, sum(13)=>sum1Map_sum1Map_sum1_13, 
      sum(12)=>sum1Map_sum1Map_sum1_12, sum(11)=>sum1Map_sum1Map_sum1_11, 
      sum(10)=>sum1Map_sum1Map_sum1_10, sum(9)=>sum1Map_sum1Map_sum1_9, 
      sum(8)=>sum1Map_sum1Map_sum1_8, sum(7)=>sum1Map_sum1Map_sum1_7, sum(6)
      =>sum1Map_sum1Map_sum1_6, sum(5)=>sum1Map_sum1Map_sum1_5, sum(4)=>
      sum1Map_sum1Map_sum1_4, sum(3)=>sum1Map_sum1Map_sum1_3, sum(2)=>
      sum1Map_sum1Map_sum1_2, sum(1)=>sum1Map_sum1Map_sum1_1, sum(0)=>
      sum1Map_sum1Map_sum1_0, carryOut=>DANGLING(4));
   sum1Map_sum1Map_sum2Map : NBitAdder_16 port map ( a(15)=>inputs_2_15, 
      a(14)=>inputs_2_14, a(13)=>inputs_2_13, a(12)=>inputs_2_12, a(11)=>
      inputs_2_11, a(10)=>inputs_2_10, a(9)=>inputs_2_9, a(8)=>inputs_2_8, 
      a(7)=>inputs_2_7, a(6)=>inputs_2_6, a(5)=>inputs_2_5, a(4)=>inputs_2_4, 
      a(3)=>inputs_2_3, a(2)=>inputs_2_2, a(1)=>inputs_2_1, a(0)=>inputs_2_0, 
      b(15)=>inputs_3_15, b(14)=>inputs_3_14, b(13)=>inputs_3_13, b(12)=>
      inputs_3_12, b(11)=>inputs_3_11, b(10)=>inputs_3_10, b(9)=>inputs_3_9, 
      b(8)=>inputs_3_8, b(7)=>inputs_3_7, b(6)=>inputs_3_6, b(5)=>inputs_3_5, 
      b(4)=>inputs_3_4, b(3)=>inputs_3_3, b(2)=>inputs_3_2, b(1)=>inputs_3_1, 
      b(0)=>inputs_3_0, carryIn=>GND, sum(15)=>sum1Map_sum1Map_sum2_15, 
      sum(14)=>sum1Map_sum1Map_sum2_14, sum(13)=>sum1Map_sum1Map_sum2_13, 
      sum(12)=>sum1Map_sum1Map_sum2_12, sum(11)=>sum1Map_sum1Map_sum2_11, 
      sum(10)=>sum1Map_sum1Map_sum2_10, sum(9)=>sum1Map_sum1Map_sum2_9, 
      sum(8)=>sum1Map_sum1Map_sum2_8, sum(7)=>sum1Map_sum1Map_sum2_7, sum(6)
      =>sum1Map_sum1Map_sum2_6, sum(5)=>sum1Map_sum1Map_sum2_5, sum(4)=>
      sum1Map_sum1Map_sum2_4, sum(3)=>sum1Map_sum1Map_sum2_3, sum(2)=>
      sum1Map_sum1Map_sum2_2, sum(1)=>sum1Map_sum1Map_sum2_1, sum(0)=>
      sum1Map_sum1Map_sum2_0, carryOut=>DANGLING(5));
   sum1Map_sum1Map_sumFinalMap : NBitAdder_16 port map ( a(15)=>
      sum1Map_sum1Map_sum1_15, a(14)=>sum1Map_sum1Map_sum1_14, a(13)=>
      sum1Map_sum1Map_sum1_13, a(12)=>sum1Map_sum1Map_sum1_12, a(11)=>
      sum1Map_sum1Map_sum1_11, a(10)=>sum1Map_sum1Map_sum1_10, a(9)=>
      sum1Map_sum1Map_sum1_9, a(8)=>sum1Map_sum1Map_sum1_8, a(7)=>
      sum1Map_sum1Map_sum1_7, a(6)=>sum1Map_sum1Map_sum1_6, a(5)=>
      sum1Map_sum1Map_sum1_5, a(4)=>sum1Map_sum1Map_sum1_4, a(3)=>
      sum1Map_sum1Map_sum1_3, a(2)=>sum1Map_sum1Map_sum1_2, a(1)=>
      sum1Map_sum1Map_sum1_1, a(0)=>sum1Map_sum1Map_sum1_0, b(15)=>
      sum1Map_sum1Map_sum2_15, b(14)=>sum1Map_sum1Map_sum2_14, b(13)=>
      sum1Map_sum1Map_sum2_13, b(12)=>sum1Map_sum1Map_sum2_12, b(11)=>
      sum1Map_sum1Map_sum2_11, b(10)=>sum1Map_sum1Map_sum2_10, b(9)=>
      sum1Map_sum1Map_sum2_9, b(8)=>sum1Map_sum1Map_sum2_8, b(7)=>
      sum1Map_sum1Map_sum2_7, b(6)=>sum1Map_sum1Map_sum2_6, b(5)=>
      sum1Map_sum1Map_sum2_5, b(4)=>sum1Map_sum1Map_sum2_4, b(3)=>
      sum1Map_sum1Map_sum2_3, b(2)=>sum1Map_sum1Map_sum2_2, b(1)=>
      sum1Map_sum1Map_sum2_1, b(0)=>sum1Map_sum1Map_sum2_0, carryIn=>GND, 
      sum(15)=>sum1Map_sum1_15_dup_0, sum(14)=>sum1Map_sum1_14_dup_0, 
      sum(13)=>sum1Map_sum1_13_dup_0, sum(12)=>sum1Map_sum1_12_dup_0, 
      sum(11)=>sum1Map_sum1_11_dup_0, sum(10)=>sum1Map_sum1_10_dup_0, sum(9)
      =>sum1Map_sum1_9_dup_0, sum(8)=>sum1Map_sum1_8_dup_0, sum(7)=>
      sum1Map_sum1_7_dup_0, sum(6)=>sum1Map_sum1_6_dup_0, sum(5)=>
      sum1Map_sum1_5_dup_0, sum(4)=>sum1Map_sum1_4_dup_0, sum(3)=>
      sum1Map_sum1_3_dup_0, sum(2)=>sum1Map_sum1_2_dup_0, sum(1)=>
      sum1Map_sum1_1_dup_0, sum(0)=>sum1Map_sum1_0_dup_0, carryOut=>DANGLING
      (6));
   sum1Map_sum2Map_sum1Map : NBitAdder_16 port map ( a(15)=>inputs_4_15, 
      a(14)=>inputs_4_14, a(13)=>inputs_4_13, a(12)=>inputs_4_12, a(11)=>
      inputs_4_11, a(10)=>inputs_4_10, a(9)=>inputs_4_9, a(8)=>inputs_4_8, 
      a(7)=>inputs_4_7, a(6)=>inputs_4_6, a(5)=>inputs_4_5, a(4)=>inputs_4_4, 
      a(3)=>inputs_4_3, a(2)=>inputs_4_2, a(1)=>inputs_4_1, a(0)=>inputs_4_0, 
      b(15)=>inputs_5_15, b(14)=>inputs_5_14, b(13)=>inputs_5_13, b(12)=>
      inputs_5_12, b(11)=>inputs_5_11, b(10)=>inputs_5_10, b(9)=>inputs_5_9, 
      b(8)=>inputs_5_8, b(7)=>inputs_5_7, b(6)=>inputs_5_6, b(5)=>inputs_5_5, 
      b(4)=>inputs_5_4, b(3)=>inputs_5_3, b(2)=>inputs_5_2, b(1)=>inputs_5_1, 
      b(0)=>inputs_5_0, carryIn=>GND, sum(15)=>sum1Map_sum2Map_sum1_15, 
      sum(14)=>sum1Map_sum2Map_sum1_14, sum(13)=>sum1Map_sum2Map_sum1_13, 
      sum(12)=>sum1Map_sum2Map_sum1_12, sum(11)=>sum1Map_sum2Map_sum1_11, 
      sum(10)=>sum1Map_sum2Map_sum1_10, sum(9)=>sum1Map_sum2Map_sum1_9, 
      sum(8)=>sum1Map_sum2Map_sum1_8, sum(7)=>sum1Map_sum2Map_sum1_7, sum(6)
      =>sum1Map_sum2Map_sum1_6, sum(5)=>sum1Map_sum2Map_sum1_5, sum(4)=>
      sum1Map_sum2Map_sum1_4, sum(3)=>sum1Map_sum2Map_sum1_3, sum(2)=>
      sum1Map_sum2Map_sum1_2, sum(1)=>sum1Map_sum2Map_sum1_1, sum(0)=>
      sum1Map_sum2Map_sum1_0, carryOut=>DANGLING(7));
   sum1Map_sum2Map_sum2Map : NBitAdder_16 port map ( a(15)=>inputs_6_15, 
      a(14)=>inputs_6_14, a(13)=>inputs_6_13, a(12)=>inputs_6_12, a(11)=>
      inputs_6_11, a(10)=>inputs_6_10, a(9)=>inputs_6_9, a(8)=>inputs_6_8, 
      a(7)=>inputs_6_7, a(6)=>inputs_6_6, a(5)=>inputs_6_5, a(4)=>inputs_6_4, 
      a(3)=>inputs_6_3, a(2)=>inputs_6_2, a(1)=>inputs_6_1, a(0)=>inputs_6_0, 
      b(15)=>inputs_7_15, b(14)=>inputs_7_14, b(13)=>inputs_7_13, b(12)=>
      inputs_7_12, b(11)=>inputs_7_11, b(10)=>inputs_7_10, b(9)=>inputs_7_9, 
      b(8)=>inputs_7_8, b(7)=>inputs_7_7, b(6)=>inputs_7_6, b(5)=>inputs_7_5, 
      b(4)=>inputs_7_4, b(3)=>inputs_7_3, b(2)=>inputs_7_2, b(1)=>inputs_7_1, 
      b(0)=>inputs_7_0, carryIn=>GND, sum(15)=>sum1Map_sum2Map_sum2_15, 
      sum(14)=>sum1Map_sum2Map_sum2_14, sum(13)=>sum1Map_sum2Map_sum2_13, 
      sum(12)=>sum1Map_sum2Map_sum2_12, sum(11)=>sum1Map_sum2Map_sum2_11, 
      sum(10)=>sum1Map_sum2Map_sum2_10, sum(9)=>sum1Map_sum2Map_sum2_9, 
      sum(8)=>sum1Map_sum2Map_sum2_8, sum(7)=>sum1Map_sum2Map_sum2_7, sum(6)
      =>sum1Map_sum2Map_sum2_6, sum(5)=>sum1Map_sum2Map_sum2_5, sum(4)=>
      sum1Map_sum2Map_sum2_4, sum(3)=>sum1Map_sum2Map_sum2_3, sum(2)=>
      sum1Map_sum2Map_sum2_2, sum(1)=>sum1Map_sum2Map_sum2_1, sum(0)=>
      sum1Map_sum2Map_sum2_0, carryOut=>DANGLING(8));
   sum1Map_sum2Map_sumFinalMap : NBitAdder_16 port map ( a(15)=>
      sum1Map_sum2Map_sum1_15, a(14)=>sum1Map_sum2Map_sum1_14, a(13)=>
      sum1Map_sum2Map_sum1_13, a(12)=>sum1Map_sum2Map_sum1_12, a(11)=>
      sum1Map_sum2Map_sum1_11, a(10)=>sum1Map_sum2Map_sum1_10, a(9)=>
      sum1Map_sum2Map_sum1_9, a(8)=>sum1Map_sum2Map_sum1_8, a(7)=>
      sum1Map_sum2Map_sum1_7, a(6)=>sum1Map_sum2Map_sum1_6, a(5)=>
      sum1Map_sum2Map_sum1_5, a(4)=>sum1Map_sum2Map_sum1_4, a(3)=>
      sum1Map_sum2Map_sum1_3, a(2)=>sum1Map_sum2Map_sum1_2, a(1)=>
      sum1Map_sum2Map_sum1_1, a(0)=>sum1Map_sum2Map_sum1_0, b(15)=>
      sum1Map_sum2Map_sum2_15, b(14)=>sum1Map_sum2Map_sum2_14, b(13)=>
      sum1Map_sum2Map_sum2_13, b(12)=>sum1Map_sum2Map_sum2_12, b(11)=>
      sum1Map_sum2Map_sum2_11, b(10)=>sum1Map_sum2Map_sum2_10, b(9)=>
      sum1Map_sum2Map_sum2_9, b(8)=>sum1Map_sum2Map_sum2_8, b(7)=>
      sum1Map_sum2Map_sum2_7, b(6)=>sum1Map_sum2Map_sum2_6, b(5)=>
      sum1Map_sum2Map_sum2_5, b(4)=>sum1Map_sum2Map_sum2_4, b(3)=>
      sum1Map_sum2Map_sum2_3, b(2)=>sum1Map_sum2Map_sum2_2, b(1)=>
      sum1Map_sum2Map_sum2_1, b(0)=>sum1Map_sum2Map_sum2_0, carryIn=>GND, 
      sum(15)=>sum1Map_sum2_15_dup_0, sum(14)=>sum1Map_sum2_14_dup_0, 
      sum(13)=>sum1Map_sum2_13_dup_0, sum(12)=>sum1Map_sum2_12_dup_0, 
      sum(11)=>sum1Map_sum2_11_dup_0, sum(10)=>sum1Map_sum2_10_dup_0, sum(9)
      =>sum1Map_sum2_9_dup_0, sum(8)=>sum1Map_sum2_8_dup_0, sum(7)=>
      sum1Map_sum2_7_dup_0, sum(6)=>sum1Map_sum2_6_dup_0, sum(5)=>
      sum1Map_sum2_5_dup_0, sum(4)=>sum1Map_sum2_4_dup_0, sum(3)=>
      sum1Map_sum2_3_dup_0, sum(2)=>sum1Map_sum2_2_dup_0, sum(1)=>
      sum1Map_sum2_1_dup_0, sum(0)=>sum1Map_sum2_0_dup_0, carryOut=>DANGLING
      (9));
   sum2Map_sumFinalMap_dup_0 : NBitAdder_16 port map ( a(15)=>
      sum2Map_sum1_15_dup_0, a(14)=>sum2Map_sum1_14_dup_0, a(13)=>
      sum2Map_sum1_13_dup_0, a(12)=>sum2Map_sum1_12_dup_0, a(11)=>
      sum2Map_sum1_11_dup_0, a(10)=>sum2Map_sum1_10_dup_0, a(9)=>
      sum2Map_sum1_9_dup_0, a(8)=>sum2Map_sum1_8_dup_0, a(7)=>
      sum2Map_sum1_7_dup_0, a(6)=>sum2Map_sum1_6_dup_0, a(5)=>
      sum2Map_sum1_5_dup_0, a(4)=>sum2Map_sum1_4_dup_0, a(3)=>
      sum2Map_sum1_3_dup_0, a(2)=>sum2Map_sum1_2_dup_0, a(1)=>
      sum2Map_sum1_1_dup_0, a(0)=>sum2Map_sum1_0_dup_0, b(15)=>
      sum2Map_sum2_15_dup_0, b(14)=>sum2Map_sum2_14_dup_0, b(13)=>
      sum2Map_sum2_13_dup_0, b(12)=>sum2Map_sum2_12_dup_0, b(11)=>
      sum2Map_sum2_11_dup_0, b(10)=>sum2Map_sum2_10_dup_0, b(9)=>
      sum2Map_sum2_9_dup_0, b(8)=>sum2Map_sum2_8_dup_0, b(7)=>
      sum2Map_sum2_7_dup_0, b(6)=>sum2Map_sum2_6_dup_0, b(5)=>
      sum2Map_sum2_5_dup_0, b(4)=>sum2Map_sum2_4_dup_0, b(3)=>
      sum2Map_sum2_3_dup_0, b(2)=>sum2Map_sum2_2_dup_0, b(1)=>
      sum2Map_sum2_1_dup_0, b(0)=>sum2Map_sum2_0_dup_0, carryIn=>GND, 
      sum(15)=>sum2_15, sum(14)=>sum2_14, sum(13)=>sum2_13, sum(12)=>sum2_12, 
      sum(11)=>sum2_11, sum(10)=>sum2_10, sum(9)=>sum2_9, sum(8)=>sum2_8, 
      sum(7)=>sum2_7, sum(6)=>sum2_6, sum(5)=>sum2_5, sum(4)=>sum2_4, sum(3)
      =>sum2_3, sum(2)=>sum2_2, sum(1)=>sum2_1, sum(0)=>sum2_0, carryOut=>
      DANGLING(10));
   sum2Map_sum1Map_sum1Map : NBitAdder_16 port map ( a(15)=>inputs_9_15, 
      a(14)=>inputs_9_14, a(13)=>inputs_9_13, a(12)=>inputs_9_12, a(11)=>
      inputs_9_11, a(10)=>inputs_9_10, a(9)=>inputs_9_9, a(8)=>inputs_9_8, 
      a(7)=>inputs_9_7, a(6)=>inputs_9_6, a(5)=>inputs_9_5, a(4)=>inputs_9_4, 
      a(3)=>inputs_9_3, a(2)=>inputs_9_2, a(1)=>inputs_9_1, a(0)=>inputs_9_0, 
      b(15)=>inputs_10_15, b(14)=>inputs_10_14, b(13)=>inputs_10_13, b(12)=>
      inputs_10_12, b(11)=>inputs_10_11, b(10)=>inputs_10_10, b(9)=>
      inputs_10_9, b(8)=>inputs_10_8, b(7)=>inputs_10_7, b(6)=>inputs_10_6, 
      b(5)=>inputs_10_5, b(4)=>inputs_10_4, b(3)=>inputs_10_3, b(2)=>
      inputs_10_2, b(1)=>inputs_10_1, b(0)=>inputs_10_0, carryIn=>GND, 
      sum(15)=>sum2Map_sum1Map_sum1_15, sum(14)=>sum2Map_sum1Map_sum1_14, 
      sum(13)=>sum2Map_sum1Map_sum1_13, sum(12)=>sum2Map_sum1Map_sum1_12, 
      sum(11)=>sum2Map_sum1Map_sum1_11, sum(10)=>sum2Map_sum1Map_sum1_10, 
      sum(9)=>sum2Map_sum1Map_sum1_9, sum(8)=>sum2Map_sum1Map_sum1_8, sum(7)
      =>sum2Map_sum1Map_sum1_7, sum(6)=>sum2Map_sum1Map_sum1_6, sum(5)=>
      sum2Map_sum1Map_sum1_5, sum(4)=>sum2Map_sum1Map_sum1_4, sum(3)=>
      sum2Map_sum1Map_sum1_3, sum(2)=>sum2Map_sum1Map_sum1_2, sum(1)=>
      sum2Map_sum1Map_sum1_1, sum(0)=>sum2Map_sum1Map_sum1_0, carryOut=>
      DANGLING(11));
   sum2Map_sum1Map_sum2Map : NBitAdder_16 port map ( a(15)=>inputs_11_15, 
      a(14)=>inputs_11_14, a(13)=>inputs_11_13, a(12)=>inputs_11_12, a(11)=>
      inputs_11_11, a(10)=>inputs_11_10, a(9)=>inputs_11_9, a(8)=>
      inputs_11_8, a(7)=>inputs_11_7, a(6)=>inputs_11_6, a(5)=>inputs_11_5, 
      a(4)=>inputs_11_4, a(3)=>inputs_11_3, a(2)=>inputs_11_2, a(1)=>
      inputs_11_1, a(0)=>inputs_11_0, b(15)=>inputs_12_15, b(14)=>
      inputs_12_14, b(13)=>inputs_12_13, b(12)=>inputs_12_12, b(11)=>
      inputs_12_11, b(10)=>inputs_12_10, b(9)=>inputs_12_9, b(8)=>
      inputs_12_8, b(7)=>inputs_12_7, b(6)=>inputs_12_6, b(5)=>inputs_12_5, 
      b(4)=>inputs_12_4, b(3)=>inputs_12_3, b(2)=>inputs_12_2, b(1)=>
      inputs_12_1, b(0)=>inputs_12_0, carryIn=>GND, sum(15)=>
      sum2Map_sum1Map_sum2_15, sum(14)=>sum2Map_sum1Map_sum2_14, sum(13)=>
      sum2Map_sum1Map_sum2_13, sum(12)=>sum2Map_sum1Map_sum2_12, sum(11)=>
      sum2Map_sum1Map_sum2_11, sum(10)=>sum2Map_sum1Map_sum2_10, sum(9)=>
      sum2Map_sum1Map_sum2_9, sum(8)=>sum2Map_sum1Map_sum2_8, sum(7)=>
      sum2Map_sum1Map_sum2_7, sum(6)=>sum2Map_sum1Map_sum2_6, sum(5)=>
      sum2Map_sum1Map_sum2_5, sum(4)=>sum2Map_sum1Map_sum2_4, sum(3)=>
      sum2Map_sum1Map_sum2_3, sum(2)=>sum2Map_sum1Map_sum2_2, sum(1)=>
      sum2Map_sum1Map_sum2_1, sum(0)=>sum2Map_sum1Map_sum2_0, carryOut=>
      DANGLING(12));
   sum2Map_sum1Map_sumFinalMap : NBitAdder_16 port map ( a(15)=>
      sum2Map_sum1Map_sum1_15, a(14)=>sum2Map_sum1Map_sum1_14, a(13)=>
      sum2Map_sum1Map_sum1_13, a(12)=>sum2Map_sum1Map_sum1_12, a(11)=>
      sum2Map_sum1Map_sum1_11, a(10)=>sum2Map_sum1Map_sum1_10, a(9)=>
      sum2Map_sum1Map_sum1_9, a(8)=>sum2Map_sum1Map_sum1_8, a(7)=>
      sum2Map_sum1Map_sum1_7, a(6)=>sum2Map_sum1Map_sum1_6, a(5)=>
      sum2Map_sum1Map_sum1_5, a(4)=>sum2Map_sum1Map_sum1_4, a(3)=>
      sum2Map_sum1Map_sum1_3, a(2)=>sum2Map_sum1Map_sum1_2, a(1)=>
      sum2Map_sum1Map_sum1_1, a(0)=>sum2Map_sum1Map_sum1_0, b(15)=>
      sum2Map_sum1Map_sum2_15, b(14)=>sum2Map_sum1Map_sum2_14, b(13)=>
      sum2Map_sum1Map_sum2_13, b(12)=>sum2Map_sum1Map_sum2_12, b(11)=>
      sum2Map_sum1Map_sum2_11, b(10)=>sum2Map_sum1Map_sum2_10, b(9)=>
      sum2Map_sum1Map_sum2_9, b(8)=>sum2Map_sum1Map_sum2_8, b(7)=>
      sum2Map_sum1Map_sum2_7, b(6)=>sum2Map_sum1Map_sum2_6, b(5)=>
      sum2Map_sum1Map_sum2_5, b(4)=>sum2Map_sum1Map_sum2_4, b(3)=>
      sum2Map_sum1Map_sum2_3, b(2)=>sum2Map_sum1Map_sum2_2, b(1)=>
      sum2Map_sum1Map_sum2_1, b(0)=>sum2Map_sum1Map_sum2_0, carryIn=>GND, 
      sum(15)=>sum2Map_sum1_15_dup_0, sum(14)=>sum2Map_sum1_14_dup_0, 
      sum(13)=>sum2Map_sum1_13_dup_0, sum(12)=>sum2Map_sum1_12_dup_0, 
      sum(11)=>sum2Map_sum1_11_dup_0, sum(10)=>sum2Map_sum1_10_dup_0, sum(9)
      =>sum2Map_sum1_9_dup_0, sum(8)=>sum2Map_sum1_8_dup_0, sum(7)=>
      sum2Map_sum1_7_dup_0, sum(6)=>sum2Map_sum1_6_dup_0, sum(5)=>
      sum2Map_sum1_5_dup_0, sum(4)=>sum2Map_sum1_4_dup_0, sum(3)=>
      sum2Map_sum1_3_dup_0, sum(2)=>sum2Map_sum1_2_dup_0, sum(1)=>
      sum2Map_sum1_1_dup_0, sum(0)=>sum2Map_sum1_0_dup_0, carryOut=>DANGLING
      (13));
   sum2Map_sum2Map_sum1Map : NBitAdder_16 port map ( a(15)=>inputs_13_15, 
      a(14)=>inputs_13_14, a(13)=>inputs_13_13, a(12)=>inputs_13_12, a(11)=>
      inputs_13_11, a(10)=>inputs_13_10, a(9)=>inputs_13_9, a(8)=>
      inputs_13_8, a(7)=>inputs_13_7, a(6)=>inputs_13_6, a(5)=>inputs_13_5, 
      a(4)=>inputs_13_4, a(3)=>inputs_13_3, a(2)=>inputs_13_2, a(1)=>
      inputs_13_1, a(0)=>inputs_13_0, b(15)=>inputs_14_15, b(14)=>
      inputs_14_14, b(13)=>inputs_14_13, b(12)=>inputs_14_12, b(11)=>
      inputs_14_11, b(10)=>inputs_14_10, b(9)=>inputs_14_9, b(8)=>
      inputs_14_8, b(7)=>inputs_14_7, b(6)=>inputs_14_6, b(5)=>inputs_14_5, 
      b(4)=>inputs_14_4, b(3)=>inputs_14_3, b(2)=>inputs_14_2, b(1)=>
      inputs_14_1, b(0)=>inputs_14_0, carryIn=>GND, sum(15)=>
      sum2Map_sum2Map_sum1_15, sum(14)=>sum2Map_sum2Map_sum1_14, sum(13)=>
      sum2Map_sum2Map_sum1_13, sum(12)=>sum2Map_sum2Map_sum1_12, sum(11)=>
      sum2Map_sum2Map_sum1_11, sum(10)=>sum2Map_sum2Map_sum1_10, sum(9)=>
      sum2Map_sum2Map_sum1_9, sum(8)=>sum2Map_sum2Map_sum1_8, sum(7)=>
      sum2Map_sum2Map_sum1_7, sum(6)=>sum2Map_sum2Map_sum1_6, sum(5)=>
      sum2Map_sum2Map_sum1_5, sum(4)=>sum2Map_sum2Map_sum1_4, sum(3)=>
      sum2Map_sum2Map_sum1_3, sum(2)=>sum2Map_sum2Map_sum1_2, sum(1)=>
      sum2Map_sum2Map_sum1_1, sum(0)=>sum2Map_sum2Map_sum1_0, carryOut=>
      DANGLING(14));
   sum2Map_sum2Map_sum2Map : NBitAdder_16 port map ( a(15)=>inputs_15_15, 
      a(14)=>inputs_15_14, a(13)=>inputs_15_13, a(12)=>inputs_15_12, a(11)=>
      inputs_15_11, a(10)=>inputs_15_10, a(9)=>inputs_15_9, a(8)=>
      inputs_15_8, a(7)=>inputs_15_7, a(6)=>inputs_15_6, a(5)=>inputs_15_5, 
      a(4)=>inputs_15_4, a(3)=>inputs_15_3, a(2)=>inputs_15_2, a(1)=>
      inputs_15_1, a(0)=>inputs_15_0, b(15)=>inputs_16_15, b(14)=>
      inputs_16_14, b(13)=>inputs_16_13, b(12)=>inputs_16_12, b(11)=>
      inputs_16_11, b(10)=>inputs_16_10, b(9)=>inputs_16_9, b(8)=>
      inputs_16_8, b(7)=>inputs_16_7, b(6)=>inputs_16_6, b(5)=>inputs_16_5, 
      b(4)=>inputs_16_4, b(3)=>inputs_16_3, b(2)=>inputs_16_2, b(1)=>
      inputs_16_1, b(0)=>inputs_16_0, carryIn=>GND, sum(15)=>
      sum2Map_sum2Map_sum2_15, sum(14)=>sum2Map_sum2Map_sum2_14, sum(13)=>
      sum2Map_sum2Map_sum2_13, sum(12)=>sum2Map_sum2Map_sum2_12, sum(11)=>
      sum2Map_sum2Map_sum2_11, sum(10)=>sum2Map_sum2Map_sum2_10, sum(9)=>
      sum2Map_sum2Map_sum2_9, sum(8)=>sum2Map_sum2Map_sum2_8, sum(7)=>
      sum2Map_sum2Map_sum2_7, sum(6)=>sum2Map_sum2Map_sum2_6, sum(5)=>
      sum2Map_sum2Map_sum2_5, sum(4)=>sum2Map_sum2Map_sum2_4, sum(3)=>
      sum2Map_sum2Map_sum2_3, sum(2)=>sum2Map_sum2Map_sum2_2, sum(1)=>
      sum2Map_sum2Map_sum2_1, sum(0)=>sum2Map_sum2Map_sum2_0, carryOut=>
      DANGLING(15));
   sum2Map_sum2Map_sumFinalMap : NBitAdder_16 port map ( a(15)=>
      sum2Map_sum2Map_sum1_15, a(14)=>sum2Map_sum2Map_sum1_14, a(13)=>
      sum2Map_sum2Map_sum1_13, a(12)=>sum2Map_sum2Map_sum1_12, a(11)=>
      sum2Map_sum2Map_sum1_11, a(10)=>sum2Map_sum2Map_sum1_10, a(9)=>
      sum2Map_sum2Map_sum1_9, a(8)=>sum2Map_sum2Map_sum1_8, a(7)=>
      sum2Map_sum2Map_sum1_7, a(6)=>sum2Map_sum2Map_sum1_6, a(5)=>
      sum2Map_sum2Map_sum1_5, a(4)=>sum2Map_sum2Map_sum1_4, a(3)=>
      sum2Map_sum2Map_sum1_3, a(2)=>sum2Map_sum2Map_sum1_2, a(1)=>
      sum2Map_sum2Map_sum1_1, a(0)=>sum2Map_sum2Map_sum1_0, b(15)=>
      sum2Map_sum2Map_sum2_15, b(14)=>sum2Map_sum2Map_sum2_14, b(13)=>
      sum2Map_sum2Map_sum2_13, b(12)=>sum2Map_sum2Map_sum2_12, b(11)=>
      sum2Map_sum2Map_sum2_11, b(10)=>sum2Map_sum2Map_sum2_10, b(9)=>
      sum2Map_sum2Map_sum2_9, b(8)=>sum2Map_sum2Map_sum2_8, b(7)=>
      sum2Map_sum2Map_sum2_7, b(6)=>sum2Map_sum2Map_sum2_6, b(5)=>
      sum2Map_sum2Map_sum2_5, b(4)=>sum2Map_sum2Map_sum2_4, b(3)=>
      sum2Map_sum2Map_sum2_3, b(2)=>sum2Map_sum2Map_sum2_2, b(1)=>
      sum2Map_sum2Map_sum2_1, b(0)=>sum2Map_sum2Map_sum2_0, carryIn=>GND, 
      sum(15)=>sum2Map_sum2_15_dup_0, sum(14)=>sum2Map_sum2_14_dup_0, 
      sum(13)=>sum2Map_sum2_13_dup_0, sum(12)=>sum2Map_sum2_12_dup_0, 
      sum(11)=>sum2Map_sum2_11_dup_0, sum(10)=>sum2Map_sum2_10_dup_0, sum(9)
      =>sum2Map_sum2_9_dup_0, sum(8)=>sum2Map_sum2_8_dup_0, sum(7)=>
      sum2Map_sum2_7_dup_0, sum(6)=>sum2Map_sum2_6_dup_0, sum(5)=>
      sum2Map_sum2_5_dup_0, sum(4)=>sum2Map_sum2_4_dup_0, sum(3)=>
      sum2Map_sum2_3_dup_0, sum(2)=>sum2Map_sum2_2_dup_0, sum(1)=>
      sum2Map_sum2_1_dup_0, sum(0)=>sum2Map_sum2_0_dup_0, carryOut=>DANGLING
      (16));
   sum3Map_sumFinalMap : NBitAdder_16 port map ( a(15)=>sum3Map_sum1_15, 
      a(14)=>sum3Map_sum1_14, a(13)=>sum3Map_sum1_13, a(12)=>sum3Map_sum1_12, 
      a(11)=>sum3Map_sum1_11, a(10)=>sum3Map_sum1_10, a(9)=>sum3Map_sum1_9, 
      a(8)=>sum3Map_sum1_8, a(7)=>sum3Map_sum1_7, a(6)=>sum3Map_sum1_6, a(5)
      =>sum3Map_sum1_5, a(4)=>sum3Map_sum1_4, a(3)=>sum3Map_sum1_3, a(2)=>
      sum3Map_sum1_2, a(1)=>sum3Map_sum1_1, a(0)=>sum3Map_sum1_0, b(15)=>
      sum3Map_sum2_15, b(14)=>sum3Map_sum2_14, b(13)=>sum3Map_sum2_13, b(12)
      =>sum3Map_sum2_12, b(11)=>sum3Map_sum2_11, b(10)=>sum3Map_sum2_10, 
      b(9)=>sum3Map_sum2_9, b(8)=>sum3Map_sum2_8, b(7)=>sum3Map_sum2_7, b(6)
      =>sum3Map_sum2_6, b(5)=>sum3Map_sum2_5, b(4)=>sum3Map_sum2_4, b(3)=>
      sum3Map_sum2_3, b(2)=>sum3Map_sum2_2, b(1)=>sum3Map_sum2_1, b(0)=>
      sum3Map_sum2_0, carryIn=>GND, sum(15)=>sum3_15, sum(14)=>sum3_14, 
      sum(13)=>sum3_13, sum(12)=>sum3_12, sum(11)=>sum3_11, sum(10)=>sum3_10, 
      sum(9)=>sum3_9, sum(8)=>sum3_8, sum(7)=>sum3_7, sum(6)=>sum3_6, sum(5)
      =>sum3_5, sum(4)=>sum3_4, sum(3)=>sum3_3, sum(2)=>sum3_2, sum(1)=>
      sum3_1, sum(0)=>sum3_0, carryOut=>DANGLING(17));
   sum3Map_sum1Map_sum1Map : NBitAdder_16 port map ( a(15)=>inputs_17_15, 
      a(14)=>inputs_17_14, a(13)=>inputs_17_13, a(12)=>inputs_17_12, a(11)=>
      inputs_17_11, a(10)=>inputs_17_10, a(9)=>inputs_17_9, a(8)=>
      inputs_17_8, a(7)=>inputs_17_7, a(6)=>inputs_17_6, a(5)=>inputs_17_5, 
      a(4)=>inputs_17_4, a(3)=>inputs_17_3, a(2)=>inputs_17_2, a(1)=>
      inputs_17_1, a(0)=>inputs_17_0, b(15)=>inputs_18_15, b(14)=>
      inputs_18_14, b(13)=>inputs_18_13, b(12)=>inputs_18_12, b(11)=>
      inputs_18_11, b(10)=>inputs_18_10, b(9)=>inputs_18_9, b(8)=>
      inputs_18_8, b(7)=>inputs_18_7, b(6)=>inputs_18_6, b(5)=>inputs_18_5, 
      b(4)=>inputs_18_4, b(3)=>inputs_18_3, b(2)=>inputs_18_2, b(1)=>
      inputs_18_1, b(0)=>inputs_18_0, carryIn=>GND, sum(15)=>
      sum3Map_sum1Map_sum1_15, sum(14)=>sum3Map_sum1Map_sum1_14, sum(13)=>
      sum3Map_sum1Map_sum1_13, sum(12)=>sum3Map_sum1Map_sum1_12, sum(11)=>
      sum3Map_sum1Map_sum1_11, sum(10)=>sum3Map_sum1Map_sum1_10, sum(9)=>
      sum3Map_sum1Map_sum1_9, sum(8)=>sum3Map_sum1Map_sum1_8, sum(7)=>
      sum3Map_sum1Map_sum1_7, sum(6)=>sum3Map_sum1Map_sum1_6, sum(5)=>
      sum3Map_sum1Map_sum1_5, sum(4)=>sum3Map_sum1Map_sum1_4, sum(3)=>
      sum3Map_sum1Map_sum1_3, sum(2)=>sum3Map_sum1Map_sum1_2, sum(1)=>
      sum3Map_sum1Map_sum1_1, sum(0)=>sum3Map_sum1Map_sum1_0, carryOut=>
      DANGLING(18));
   sum3Map_sum1Map_sum2Map : NBitAdder_16 port map ( a(15)=>inputs_19_15, 
      a(14)=>inputs_19_14, a(13)=>inputs_19_13, a(12)=>inputs_19_12, a(11)=>
      inputs_19_11, a(10)=>inputs_19_10, a(9)=>inputs_19_9, a(8)=>
      inputs_19_8, a(7)=>inputs_19_7, a(6)=>inputs_19_6, a(5)=>inputs_19_5, 
      a(4)=>inputs_19_4, a(3)=>inputs_19_3, a(2)=>inputs_19_2, a(1)=>
      inputs_19_1, a(0)=>inputs_19_0, b(15)=>inputs_20_15, b(14)=>
      inputs_20_14, b(13)=>inputs_20_13, b(12)=>inputs_20_12, b(11)=>
      inputs_20_11, b(10)=>inputs_20_10, b(9)=>inputs_20_9, b(8)=>
      inputs_20_8, b(7)=>inputs_20_7, b(6)=>inputs_20_6, b(5)=>inputs_20_5, 
      b(4)=>inputs_20_4, b(3)=>inputs_20_3, b(2)=>inputs_20_2, b(1)=>
      inputs_20_1, b(0)=>inputs_20_0, carryIn=>GND, sum(15)=>
      sum3Map_sum1Map_sum2_15, sum(14)=>sum3Map_sum1Map_sum2_14, sum(13)=>
      sum3Map_sum1Map_sum2_13, sum(12)=>sum3Map_sum1Map_sum2_12, sum(11)=>
      sum3Map_sum1Map_sum2_11, sum(10)=>sum3Map_sum1Map_sum2_10, sum(9)=>
      sum3Map_sum1Map_sum2_9, sum(8)=>sum3Map_sum1Map_sum2_8, sum(7)=>
      sum3Map_sum1Map_sum2_7, sum(6)=>sum3Map_sum1Map_sum2_6, sum(5)=>
      sum3Map_sum1Map_sum2_5, sum(4)=>sum3Map_sum1Map_sum2_4, sum(3)=>
      sum3Map_sum1Map_sum2_3, sum(2)=>sum3Map_sum1Map_sum2_2, sum(1)=>
      sum3Map_sum1Map_sum2_1, sum(0)=>sum3Map_sum1Map_sum2_0, carryOut=>
      DANGLING(19));
   sum3Map_sum1Map_sumFinalMap : NBitAdder_16 port map ( a(15)=>
      sum3Map_sum1Map_sum1_15, a(14)=>sum3Map_sum1Map_sum1_14, a(13)=>
      sum3Map_sum1Map_sum1_13, a(12)=>sum3Map_sum1Map_sum1_12, a(11)=>
      sum3Map_sum1Map_sum1_11, a(10)=>sum3Map_sum1Map_sum1_10, a(9)=>
      sum3Map_sum1Map_sum1_9, a(8)=>sum3Map_sum1Map_sum1_8, a(7)=>
      sum3Map_sum1Map_sum1_7, a(6)=>sum3Map_sum1Map_sum1_6, a(5)=>
      sum3Map_sum1Map_sum1_5, a(4)=>sum3Map_sum1Map_sum1_4, a(3)=>
      sum3Map_sum1Map_sum1_3, a(2)=>sum3Map_sum1Map_sum1_2, a(1)=>
      sum3Map_sum1Map_sum1_1, a(0)=>sum3Map_sum1Map_sum1_0, b(15)=>
      sum3Map_sum1Map_sum2_15, b(14)=>sum3Map_sum1Map_sum2_14, b(13)=>
      sum3Map_sum1Map_sum2_13, b(12)=>sum3Map_sum1Map_sum2_12, b(11)=>
      sum3Map_sum1Map_sum2_11, b(10)=>sum3Map_sum1Map_sum2_10, b(9)=>
      sum3Map_sum1Map_sum2_9, b(8)=>sum3Map_sum1Map_sum2_8, b(7)=>
      sum3Map_sum1Map_sum2_7, b(6)=>sum3Map_sum1Map_sum2_6, b(5)=>
      sum3Map_sum1Map_sum2_5, b(4)=>sum3Map_sum1Map_sum2_4, b(3)=>
      sum3Map_sum1Map_sum2_3, b(2)=>sum3Map_sum1Map_sum2_2, b(1)=>
      sum3Map_sum1Map_sum2_1, b(0)=>sum3Map_sum1Map_sum2_0, carryIn=>GND, 
      sum(15)=>sum3Map_sum1_15, sum(14)=>sum3Map_sum1_14, sum(13)=>
      sum3Map_sum1_13, sum(12)=>sum3Map_sum1_12, sum(11)=>sum3Map_sum1_11, 
      sum(10)=>sum3Map_sum1_10, sum(9)=>sum3Map_sum1_9, sum(8)=>
      sum3Map_sum1_8, sum(7)=>sum3Map_sum1_7, sum(6)=>sum3Map_sum1_6, sum(5)
      =>sum3Map_sum1_5, sum(4)=>sum3Map_sum1_4, sum(3)=>sum3Map_sum1_3, 
      sum(2)=>sum3Map_sum1_2, sum(1)=>sum3Map_sum1_1, sum(0)=>sum3Map_sum1_0, 
      carryOut=>DANGLING(20));
   sum3Map_sum2Map_sum1Map : NBitAdder_16 port map ( a(15)=>inputs_21_15, 
      a(14)=>inputs_21_14, a(13)=>inputs_21_13, a(12)=>inputs_21_12, a(11)=>
      inputs_21_11, a(10)=>inputs_21_10, a(9)=>inputs_21_9, a(8)=>
      inputs_21_8, a(7)=>inputs_21_7, a(6)=>inputs_21_6, a(5)=>inputs_21_5, 
      a(4)=>inputs_21_4, a(3)=>inputs_21_3, a(2)=>inputs_21_2, a(1)=>
      inputs_21_1, a(0)=>inputs_21_0, b(15)=>inputs_22_15, b(14)=>
      inputs_22_14, b(13)=>inputs_22_13, b(12)=>inputs_22_12, b(11)=>
      inputs_22_11, b(10)=>inputs_22_10, b(9)=>inputs_22_9, b(8)=>
      inputs_22_8, b(7)=>inputs_22_7, b(6)=>inputs_22_6, b(5)=>inputs_22_5, 
      b(4)=>inputs_22_4, b(3)=>inputs_22_3, b(2)=>inputs_22_2, b(1)=>
      inputs_22_1, b(0)=>inputs_22_0, carryIn=>GND, sum(15)=>
      sum3Map_sum2Map_sum1_15, sum(14)=>sum3Map_sum2Map_sum1_14, sum(13)=>
      sum3Map_sum2Map_sum1_13, sum(12)=>sum3Map_sum2Map_sum1_12, sum(11)=>
      sum3Map_sum2Map_sum1_11, sum(10)=>sum3Map_sum2Map_sum1_10, sum(9)=>
      sum3Map_sum2Map_sum1_9, sum(8)=>sum3Map_sum2Map_sum1_8, sum(7)=>
      sum3Map_sum2Map_sum1_7, sum(6)=>sum3Map_sum2Map_sum1_6, sum(5)=>
      sum3Map_sum2Map_sum1_5, sum(4)=>sum3Map_sum2Map_sum1_4, sum(3)=>
      sum3Map_sum2Map_sum1_3, sum(2)=>sum3Map_sum2Map_sum1_2, sum(1)=>
      sum3Map_sum2Map_sum1_1, sum(0)=>sum3Map_sum2Map_sum1_0, carryOut=>
      DANGLING(21));
   sum3Map_sum2Map_sum2Map : NBitAdder_16 port map ( a(15)=>inputs_23_15, 
      a(14)=>inputs_23_14, a(13)=>inputs_23_13, a(12)=>inputs_23_12, a(11)=>
      inputs_23_11, a(10)=>inputs_23_10, a(9)=>inputs_23_9, a(8)=>
      inputs_23_8, a(7)=>inputs_23_7, a(6)=>inputs_23_6, a(5)=>inputs_23_5, 
      a(4)=>inputs_23_4, a(3)=>inputs_23_3, a(2)=>inputs_23_2, a(1)=>
      inputs_23_1, a(0)=>inputs_23_0, b(15)=>inputs_24_15, b(14)=>
      inputs_24_14, b(13)=>inputs_24_13, b(12)=>inputs_24_12, b(11)=>
      inputs_24_11, b(10)=>inputs_24_10, b(9)=>inputs_24_9, b(8)=>
      inputs_24_8, b(7)=>inputs_24_7, b(6)=>inputs_24_6, b(5)=>inputs_24_5, 
      b(4)=>inputs_24_4, b(3)=>inputs_24_3, b(2)=>inputs_24_2, b(1)=>
      inputs_24_1, b(0)=>inputs_24_0, carryIn=>GND, sum(15)=>
      sum3Map_sum2Map_sum2_15, sum(14)=>sum3Map_sum2Map_sum2_14, sum(13)=>
      sum3Map_sum2Map_sum2_13, sum(12)=>sum3Map_sum2Map_sum2_12, sum(11)=>
      sum3Map_sum2Map_sum2_11, sum(10)=>sum3Map_sum2Map_sum2_10, sum(9)=>
      sum3Map_sum2Map_sum2_9, sum(8)=>sum3Map_sum2Map_sum2_8, sum(7)=>
      sum3Map_sum2Map_sum2_7, sum(6)=>sum3Map_sum2Map_sum2_6, sum(5)=>
      sum3Map_sum2Map_sum2_5, sum(4)=>sum3Map_sum2Map_sum2_4, sum(3)=>
      sum3Map_sum2Map_sum2_3, sum(2)=>sum3Map_sum2Map_sum2_2, sum(1)=>
      sum3Map_sum2Map_sum2_1, sum(0)=>sum3Map_sum2Map_sum2_0, carryOut=>
      DANGLING(22));
   sum3Map_sum2Map_sumFinalMap : NBitAdder_16 port map ( a(15)=>
      sum3Map_sum2Map_sum1_15, a(14)=>sum3Map_sum2Map_sum1_14, a(13)=>
      sum3Map_sum2Map_sum1_13, a(12)=>sum3Map_sum2Map_sum1_12, a(11)=>
      sum3Map_sum2Map_sum1_11, a(10)=>sum3Map_sum2Map_sum1_10, a(9)=>
      sum3Map_sum2Map_sum1_9, a(8)=>sum3Map_sum2Map_sum1_8, a(7)=>
      sum3Map_sum2Map_sum1_7, a(6)=>sum3Map_sum2Map_sum1_6, a(5)=>
      sum3Map_sum2Map_sum1_5, a(4)=>sum3Map_sum2Map_sum1_4, a(3)=>
      sum3Map_sum2Map_sum1_3, a(2)=>sum3Map_sum2Map_sum1_2, a(1)=>
      sum3Map_sum2Map_sum1_1, a(0)=>sum3Map_sum2Map_sum1_0, b(15)=>
      sum3Map_sum2Map_sum2_15, b(14)=>sum3Map_sum2Map_sum2_14, b(13)=>
      sum3Map_sum2Map_sum2_13, b(12)=>sum3Map_sum2Map_sum2_12, b(11)=>
      sum3Map_sum2Map_sum2_11, b(10)=>sum3Map_sum2Map_sum2_10, b(9)=>
      sum3Map_sum2Map_sum2_9, b(8)=>sum3Map_sum2Map_sum2_8, b(7)=>
      sum3Map_sum2Map_sum2_7, b(6)=>sum3Map_sum2Map_sum2_6, b(5)=>
      sum3Map_sum2Map_sum2_5, b(4)=>sum3Map_sum2Map_sum2_4, b(3)=>
      sum3Map_sum2Map_sum2_3, b(2)=>sum3Map_sum2Map_sum2_2, b(1)=>
      sum3Map_sum2Map_sum2_1, b(0)=>sum3Map_sum2Map_sum2_0, carryIn=>GND, 
      sum(15)=>sum3Map_sum2_15, sum(14)=>sum3Map_sum2_14, sum(13)=>
      sum3Map_sum2_13, sum(12)=>sum3Map_sum2_12, sum(11)=>sum3Map_sum2_11, 
      sum(10)=>sum3Map_sum2_10, sum(9)=>sum3Map_sum2_9, sum(8)=>
      sum3Map_sum2_8, sum(7)=>sum3Map_sum2_7, sum(6)=>sum3Map_sum2_6, sum(5)
      =>sum3Map_sum2_5, sum(4)=>sum3Map_sum2_4, sum(3)=>sum3Map_sum2_3, 
      sum(2)=>sum3Map_sum2_2, sum(1)=>sum3Map_sum2_1, sum(0)=>sum3Map_sum2_0, 
      carryOut=>DANGLING(23));
   ix629 : fake_gnd port map ( Y=>GND);
   ix7 : nand02 port map ( Y=>finalSum(0), A0=>nx670, A1=>nx672);
   ix671 : nand02 port map ( Y=>nx670, A0=>totalSum_0, A1=>filterType);
   ix673 : nand02 port map ( Y=>nx672, A0=>sum3Filter_0, A1=>nx756);
   ix15 : nand02 port map ( Y=>finalSum(1), A0=>nx677, A1=>nx679);
   ix678 : nand02 port map ( Y=>nx677, A0=>totalSum_1, A1=>filterType);
   ix680 : nand02 port map ( Y=>nx679, A0=>sum3Filter_1, A1=>nx756);
   ix23 : nand02 port map ( Y=>finalSum(2), A0=>nx682, A1=>nx684);
   ix683 : nand02 port map ( Y=>nx682, A0=>totalSum_2, A1=>filterType);
   ix685 : nand02 port map ( Y=>nx684, A0=>sum3Filter_2, A1=>nx756);
   ix31 : nand02 port map ( Y=>finalSum(3), A0=>nx687, A1=>nx689);
   ix688 : nand02 port map ( Y=>nx687, A0=>totalSum_3, A1=>filterType);
   ix690 : nand02 port map ( Y=>nx689, A0=>sum3Filter_3, A1=>nx756);
   ix39 : nand02 port map ( Y=>finalSum(4), A0=>nx692, A1=>nx694);
   ix693 : nand02 port map ( Y=>nx692, A0=>totalSum_4, A1=>filterType);
   ix695 : nand02 port map ( Y=>nx694, A0=>sum3Filter_4, A1=>nx756);
   ix47 : nand02 port map ( Y=>finalSum(5), A0=>nx697, A1=>nx699);
   ix698 : nand02 port map ( Y=>nx697, A0=>totalSum_5, A1=>filterType);
   ix700 : nand02 port map ( Y=>nx699, A0=>sum3Filter_5, A1=>nx756);
   ix55 : nand02 port map ( Y=>finalSum(6), A0=>nx702, A1=>nx704);
   ix703 : nand02 port map ( Y=>nx702, A0=>totalSum_6, A1=>filterType);
   ix705 : nand02 port map ( Y=>nx704, A0=>sum3Filter_6, A1=>nx756);
   ix63 : nand02 port map ( Y=>finalSum(7), A0=>nx707, A1=>nx709);
   ix708 : nand02 port map ( Y=>nx707, A0=>totalSum_7, A1=>filterType);
   ix710 : nand02 port map ( Y=>nx709, A0=>sum3Filter_7, A1=>nx758);
   ix71 : nand02 port map ( Y=>finalSum(8), A0=>nx712, A1=>nx714);
   ix713 : nand02 port map ( Y=>nx712, A0=>totalSum_8, A1=>filterType);
   ix715 : nand02 port map ( Y=>nx714, A0=>sum3Filter_8, A1=>nx758);
   ix79 : nand02 port map ( Y=>finalSum(9), A0=>nx717, A1=>nx719);
   ix718 : nand02 port map ( Y=>nx717, A0=>totalSum_9, A1=>filterType);
   ix720 : nand02 port map ( Y=>nx719, A0=>sum3Filter_9, A1=>nx758);
   ix87 : nand02 port map ( Y=>finalSum(10), A0=>nx722, A1=>nx724);
   ix723 : nand02 port map ( Y=>nx722, A0=>totalSum_10, A1=>filterType);
   ix725 : nand02 port map ( Y=>nx724, A0=>sum3Filter_10, A1=>nx758);
   ix95 : nand02 port map ( Y=>finalSum(11), A0=>nx727, A1=>nx729);
   ix728 : nand02 port map ( Y=>nx727, A0=>totalSum_11, A1=>filterType);
   ix730 : nand02 port map ( Y=>nx729, A0=>sum3Filter_11, A1=>nx758);
   ix103 : nand02 port map ( Y=>finalSum(12), A0=>nx732, A1=>nx734);
   ix733 : nand02 port map ( Y=>nx732, A0=>totalSum_12, A1=>filterType);
   ix735 : nand02 port map ( Y=>nx734, A0=>sum3Filter_12, A1=>nx758);
   ix111 : nand02 port map ( Y=>finalSum(13), A0=>nx737, A1=>nx739);
   ix738 : nand02 port map ( Y=>nx737, A0=>totalSum_13, A1=>filterType);
   ix740 : nand02 port map ( Y=>nx739, A0=>sum3Filter_13, A1=>nx758);
   ix119 : nand02 port map ( Y=>finalSum(14), A0=>nx742, A1=>nx744);
   ix743 : nand02 port map ( Y=>nx742, A0=>totalSum_14, A1=>filterType);
   ix745 : nand02 port map ( Y=>nx744, A0=>sum3Filter_14, A1=>nx760);
   ix127 : nand02 port map ( Y=>finalSum(15), A0=>nx747, A1=>nx749);
   ix748 : nand02 port map ( Y=>nx747, A0=>filterType, A1=>totalSum_15);
   ix750 : nand02 port map ( Y=>nx749, A0=>nx760, A1=>sum3Filter_15);
   ix755 : inv02 port map ( Y=>nx756, A=>filterType);
   ix757 : inv02 port map ( Y=>nx758, A=>filterType);
   ix759 : inv02 port map ( Y=>nx760, A=>filterType);
end CNNAddersArch ;

