
-- 
-- Definition of  Adder4Values
-- 
--      Wed Apr 10 17:31:39 2019
--      
--      LeonardoSpectrum Level 3, 2018a.2
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity NBitAdder_16 is
   port (
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      carryIn : IN std_logic ;
      sum : OUT std_logic_vector (15 DOWNTO 0) ;
      carryOut : OUT std_logic) ;
end NBitAdder_16 ;

architecture NBitAdderArch_unfold_2161 of NBitAdder_16 is
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
end NBitAdderArch_unfold_2161 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity Adder4Values is
   port (
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      c : IN std_logic_vector (15 DOWNTO 0) ;
      d : IN std_logic_vector (15 DOWNTO 0) ;
      sum : OUT std_logic_vector (15 DOWNTO 0)) ;
end Adder4Values ;

architecture Adder4ValuesArch of Adder4Values is
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
      sum2_7, sum2_6, sum2_5, sum2_4, sum2_3, sum2_2, sum2_1, sum2_0, GND: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (2 downto 0 );

begin
   sum1Map : NBitAdder_16 port map ( a(15)=>a(15), a(14)=>a(14), a(13)=>
      a(13), a(12)=>a(12), a(11)=>a(11), a(10)=>a(10), a(9)=>a(9), a(8)=>
      a(8), a(7)=>a(7), a(6)=>a(6), a(5)=>a(5), a(4)=>a(4), a(3)=>a(3), a(2)
      =>a(2), a(1)=>a(1), a(0)=>a(0), b(15)=>b(15), b(14)=>b(14), b(13)=>
      b(13), b(12)=>b(12), b(11)=>b(11), b(10)=>b(10), b(9)=>b(9), b(8)=>
      b(8), b(7)=>b(7), b(6)=>b(6), b(5)=>b(5), b(4)=>b(4), b(3)=>b(3), b(2)
      =>b(2), b(1)=>b(1), b(0)=>b(0), carryIn=>GND, sum(15)=>sum1_15, 
      sum(14)=>sum1_14, sum(13)=>sum1_13, sum(12)=>sum1_12, sum(11)=>sum1_11, 
      sum(10)=>sum1_10, sum(9)=>sum1_9, sum(8)=>sum1_8, sum(7)=>sum1_7, 
      sum(6)=>sum1_6, sum(5)=>sum1_5, sum(4)=>sum1_4, sum(3)=>sum1_3, sum(2)
      =>sum1_2, sum(1)=>sum1_1, sum(0)=>sum1_0, carryOut=>DANGLING(0));
   sum2Map : NBitAdder_16 port map ( a(15)=>c(15), a(14)=>c(14), a(13)=>
      c(13), a(12)=>c(12), a(11)=>c(11), a(10)=>c(10), a(9)=>c(9), a(8)=>
      c(8), a(7)=>c(7), a(6)=>c(6), a(5)=>c(5), a(4)=>c(4), a(3)=>c(3), a(2)
      =>c(2), a(1)=>c(1), a(0)=>c(0), b(15)=>d(15), b(14)=>d(14), b(13)=>
      d(13), b(12)=>d(12), b(11)=>d(11), b(10)=>d(10), b(9)=>d(9), b(8)=>
      d(8), b(7)=>d(7), b(6)=>d(6), b(5)=>d(5), b(4)=>d(4), b(3)=>d(3), b(2)
      =>d(2), b(1)=>d(1), b(0)=>d(0), carryIn=>GND, sum(15)=>sum2_15, 
      sum(14)=>sum2_14, sum(13)=>sum2_13, sum(12)=>sum2_12, sum(11)=>sum2_11, 
      sum(10)=>sum2_10, sum(9)=>sum2_9, sum(8)=>sum2_8, sum(7)=>sum2_7, 
      sum(6)=>sum2_6, sum(5)=>sum2_5, sum(4)=>sum2_4, sum(3)=>sum2_3, sum(2)
      =>sum2_2, sum(1)=>sum2_1, sum(0)=>sum2_0, carryOut=>DANGLING(1));
   sumFinalMap : NBitAdder_16 port map ( a(15)=>sum1_15, a(14)=>sum1_14, 
      a(13)=>sum1_13, a(12)=>sum1_12, a(11)=>sum1_11, a(10)=>sum1_10, a(9)=>
      sum1_9, a(8)=>sum1_8, a(7)=>sum1_7, a(6)=>sum1_6, a(5)=>sum1_5, a(4)=>
      sum1_4, a(3)=>sum1_3, a(2)=>sum1_2, a(1)=>sum1_1, a(0)=>sum1_0, b(15)
      =>sum2_15, b(14)=>sum2_14, b(13)=>sum2_13, b(12)=>sum2_12, b(11)=>
      sum2_11, b(10)=>sum2_10, b(9)=>sum2_9, b(8)=>sum2_8, b(7)=>sum2_7, 
      b(6)=>sum2_6, b(5)=>sum2_5, b(4)=>sum2_4, b(3)=>sum2_3, b(2)=>sum2_2, 
      b(1)=>sum2_1, b(0)=>sum2_0, carryIn=>GND, sum(15)=>sum(15), sum(14)=>
      sum(14), sum(13)=>sum(13), sum(12)=>sum(12), sum(11)=>sum(11), sum(10)
      =>sum(10), sum(9)=>sum(9), sum(8)=>sum(8), sum(7)=>sum(7), sum(6)=>
      sum(6), sum(5)=>sum(5), sum(4)=>sum(4), sum(3)=>sum(3), sum(2)=>sum(2), 
      sum(1)=>sum(1), sum(0)=>sum(0), carryOut=>DANGLING(2));
   ix147 : fake_gnd port map ( Y=>GND);
end Adder4ValuesArch ;

