
-- 
-- Definition of  DMAImage
-- 
--      Fri Apr 19 16:12:27 2019
--      
--      LeonardoSpectrum Level 3, 2018a.2
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity RegWithLoad_16 is
   port (
      D : IN std_logic_vector (15 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      load : IN std_logic ;
      Q : OUT std_logic_vector (15 DOWNTO 0)) ;
end RegWithLoad_16 ;

architecture RegWithLoadArch of RegWithLoad_16 is
   signal Q_15_EXMPLR, Q_14_EXMPLR, Q_13_EXMPLR, Q_12_EXMPLR, Q_11_EXMPLR, 
      Q_10_EXMPLR, Q_9_EXMPLR, Q_8_EXMPLR, Q_7_EXMPLR, Q_6_EXMPLR, 
      Q_5_EXMPLR, Q_4_EXMPLR, Q_3_EXMPLR, Q_2_EXMPLR, Q_1_EXMPLR, Q_0_EXMPLR, 
      nx2, nx10, nx14, nx22, nx26, nx34, nx38, nx46, nx50, nx58, nx62, nx70, 
      nx74, nx82, nx86, nx94, nx98, nx106, nx110, nx118, nx122, nx130, nx134, 
      nx142, nx146, nx154, nx158, nx166, nx170, nx178, nx182, nx190, nx194, 
      nx395, nx405, nx415, nx425, nx435, nx445, nx455, nx465, nx475, nx485, 
      nx495, nx505, nx515, nx525, nx535, nx545, nx565, nx652, nx654, nx656, 
      nx658, nx660, nx662, nx664, nx672, nx674, nx676, nx678, nx680, nx682, 
      nx684, nx686, nx688, nx690, nx692, nx694, nx696, nx698, nx700, nx702, 
      nx704, nx706, nx708, nx710: std_logic ;

begin
   Q(15) <= Q_15_EXMPLR ;
   Q(14) <= Q_14_EXMPLR ;
   Q(13) <= Q_13_EXMPLR ;
   Q(12) <= Q_12_EXMPLR ;
   Q(11) <= Q_11_EXMPLR ;
   Q(10) <= Q_10_EXMPLR ;
   Q(9) <= Q_9_EXMPLR ;
   Q(8) <= Q_8_EXMPLR ;
   Q(7) <= Q_7_EXMPLR ;
   Q(6) <= Q_6_EXMPLR ;
   Q(5) <= Q_5_EXMPLR ;
   Q(4) <= Q_4_EXMPLR ;
   Q(3) <= Q_3_EXMPLR ;
   Q(2) <= Q_2_EXMPLR ;
   Q(1) <= Q_1_EXMPLR ;
   Q(0) <= Q_0_EXMPLR ;
   reg_Q_0 : dffsr_ni port map ( Q=>Q_0_EXMPLR, QB=>OPEN, D=>nx395, CLK=>clk, 
      S=>nx14, R=>nx10);
   ix396 : mux21_ni port map ( Y=>nx395, A0=>Q_0_EXMPLR, A1=>D(0), S0=>en);
   ix11 : oai21 port map ( Y=>nx10, A0=>D(0), A1=>nx662, B0=>nx652);
   ix566 : aoi21 port map ( Y=>nx565, A0=>en, A1=>load, B0=>rst);
   reg_Q_1 : dffsr_ni port map ( Q=>Q_1_EXMPLR, QB=>OPEN, D=>nx405, CLK=>clk, 
      S=>nx26, R=>nx22);
   ix406 : mux21_ni port map ( Y=>nx405, A0=>Q_1_EXMPLR, A1=>D(1), S0=>en);
   ix23 : oai21 port map ( Y=>nx22, A0=>D(1), A1=>nx662, B0=>nx652);
   reg_Q_2 : dffsr_ni port map ( Q=>Q_2_EXMPLR, QB=>OPEN, D=>nx415, CLK=>clk, 
      S=>nx38, R=>nx34);
   ix416 : mux21_ni port map ( Y=>nx415, A0=>Q_2_EXMPLR, A1=>D(2), S0=>en);
   ix35 : oai21 port map ( Y=>nx34, A0=>D(2), A1=>nx662, B0=>nx652);
   reg_Q_3 : dffsr_ni port map ( Q=>Q_3_EXMPLR, QB=>OPEN, D=>nx425, CLK=>clk, 
      S=>nx50, R=>nx46);
   ix426 : mux21_ni port map ( Y=>nx425, A0=>Q_3_EXMPLR, A1=>D(3), S0=>en);
   ix47 : oai21 port map ( Y=>nx46, A0=>D(3), A1=>nx662, B0=>nx654);
   reg_Q_4 : dffsr_ni port map ( Q=>Q_4_EXMPLR, QB=>OPEN, D=>nx435, CLK=>clk, 
      S=>nx62, R=>nx58);
   ix436 : mux21_ni port map ( Y=>nx435, A0=>Q_4_EXMPLR, A1=>D(4), S0=>en);
   ix59 : oai21 port map ( Y=>nx58, A0=>D(4), A1=>nx662, B0=>nx654);
   reg_Q_5 : dffsr_ni port map ( Q=>Q_5_EXMPLR, QB=>OPEN, D=>nx445, CLK=>clk, 
      S=>nx74, R=>nx70);
   ix446 : mux21_ni port map ( Y=>nx445, A0=>Q_5_EXMPLR, A1=>D(5), S0=>en);
   ix71 : oai21 port map ( Y=>nx70, A0=>D(5), A1=>nx662, B0=>nx654);
   reg_Q_6 : dffsr_ni port map ( Q=>Q_6_EXMPLR, QB=>OPEN, D=>nx455, CLK=>clk, 
      S=>nx86, R=>nx82);
   ix456 : mux21_ni port map ( Y=>nx455, A0=>Q_6_EXMPLR, A1=>D(6), S0=>en);
   ix83 : oai21 port map ( Y=>nx82, A0=>D(6), A1=>nx662, B0=>nx654);
   reg_Q_7 : dffsr_ni port map ( Q=>Q_7_EXMPLR, QB=>OPEN, D=>nx465, CLK=>clk, 
      S=>nx98, R=>nx94);
   ix466 : mux21_ni port map ( Y=>nx465, A0=>Q_7_EXMPLR, A1=>D(7), S0=>en);
   ix95 : oai21 port map ( Y=>nx94, A0=>D(7), A1=>nx664, B0=>nx656);
   reg_Q_8 : dffsr_ni port map ( Q=>Q_8_EXMPLR, QB=>OPEN, D=>nx475, CLK=>clk, 
      S=>nx110, R=>nx106);
   ix476 : mux21_ni port map ( Y=>nx475, A0=>Q_8_EXMPLR, A1=>D(8), S0=>en);
   ix107 : oai21 port map ( Y=>nx106, A0=>D(8), A1=>nx664, B0=>nx656);
   reg_Q_9 : dffsr_ni port map ( Q=>Q_9_EXMPLR, QB=>OPEN, D=>nx485, CLK=>clk, 
      S=>nx122, R=>nx118);
   ix486 : mux21_ni port map ( Y=>nx485, A0=>Q_9_EXMPLR, A1=>D(9), S0=>en);
   ix119 : oai21 port map ( Y=>nx118, A0=>D(9), A1=>nx664, B0=>nx656);
   reg_Q_10 : dffsr_ni port map ( Q=>Q_10_EXMPLR, QB=>OPEN, D=>nx495, CLK=>
      clk, S=>nx134, R=>nx130);
   ix496 : mux21_ni port map ( Y=>nx495, A0=>Q_10_EXMPLR, A1=>D(10), S0=>en
   );
   ix131 : oai21 port map ( Y=>nx130, A0=>D(10), A1=>nx664, B0=>nx658);
   reg_Q_11 : dffsr_ni port map ( Q=>Q_11_EXMPLR, QB=>OPEN, D=>nx505, CLK=>
      clk, S=>nx146, R=>nx142);
   ix506 : mux21_ni port map ( Y=>nx505, A0=>Q_11_EXMPLR, A1=>D(11), S0=>en
   );
   ix143 : oai21 port map ( Y=>nx142, A0=>D(11), A1=>nx664, B0=>nx658);
   reg_Q_12 : dffsr_ni port map ( Q=>Q_12_EXMPLR, QB=>OPEN, D=>nx515, CLK=>
      clk, S=>nx158, R=>nx154);
   ix516 : mux21_ni port map ( Y=>nx515, A0=>Q_12_EXMPLR, A1=>D(12), S0=>en
   );
   ix155 : oai21 port map ( Y=>nx154, A0=>D(12), A1=>nx664, B0=>nx658);
   reg_Q_13 : dffsr_ni port map ( Q=>Q_13_EXMPLR, QB=>OPEN, D=>nx525, CLK=>
      clk, S=>nx170, R=>nx166);
   ix526 : mux21_ni port map ( Y=>nx525, A0=>Q_13_EXMPLR, A1=>D(13), S0=>en
   );
   ix167 : oai21 port map ( Y=>nx166, A0=>D(13), A1=>nx664, B0=>nx658);
   reg_Q_14 : dffsr_ni port map ( Q=>Q_14_EXMPLR, QB=>OPEN, D=>nx535, CLK=>
      clk, S=>nx182, R=>nx178);
   ix536 : mux21_ni port map ( Y=>nx535, A0=>Q_14_EXMPLR, A1=>D(14), S0=>en
   );
   ix179 : oai21 port map ( Y=>nx178, A0=>D(14), A1=>nx706, B0=>nx660);
   reg_Q_15 : dffsr_ni port map ( Q=>Q_15_EXMPLR, QB=>OPEN, D=>nx545, CLK=>
      clk, S=>nx194, R=>nx190);
   ix546 : mux21_ni port map ( Y=>nx545, A0=>Q_15_EXMPLR, A1=>D(15), S0=>en
   );
   ix191 : oai21 port map ( Y=>nx190, A0=>D(15), A1=>nx706, B0=>nx660);
   ix3 : inv02 port map ( Y=>nx2, A=>nx565);
   ix651 : inv02 port map ( Y=>nx652, A=>rst);
   ix653 : inv02 port map ( Y=>nx654, A=>rst);
   ix655 : inv02 port map ( Y=>nx656, A=>rst);
   ix657 : inv02 port map ( Y=>nx658, A=>rst);
   ix659 : inv02 port map ( Y=>nx660, A=>rst);
   ix661 : inv02 port map ( Y=>nx662, A=>nx2);
   ix663 : inv02 port map ( Y=>nx664, A=>nx2);
   ix15 : nor03_2x port map ( Y=>nx14, A0=>nx706, A1=>nx672, A2=>rst);
   ix671 : inv01 port map ( Y=>nx672, A=>D(0));
   ix27 : nor03_2x port map ( Y=>nx26, A0=>nx706, A1=>nx674, A2=>rst);
   ix673 : inv01 port map ( Y=>nx674, A=>D(1));
   ix39 : nor03_2x port map ( Y=>nx38, A0=>nx706, A1=>nx676, A2=>rst);
   ix675 : inv01 port map ( Y=>nx676, A=>D(2));
   ix51 : nor03_2x port map ( Y=>nx50, A0=>nx706, A1=>nx678, A2=>rst);
   ix677 : inv01 port map ( Y=>nx678, A=>D(3));
   ix63 : nor03_2x port map ( Y=>nx62, A0=>nx706, A1=>nx680, A2=>rst);
   ix679 : inv01 port map ( Y=>nx680, A=>D(4));
   ix75 : nor03_2x port map ( Y=>nx74, A0=>nx708, A1=>nx682, A2=>rst);
   ix681 : inv01 port map ( Y=>nx682, A=>D(5));
   ix87 : nor03_2x port map ( Y=>nx86, A0=>nx708, A1=>nx684, A2=>rst);
   ix683 : inv01 port map ( Y=>nx684, A=>D(6));
   ix99 : nor03_2x port map ( Y=>nx98, A0=>nx708, A1=>nx686, A2=>rst);
   ix685 : inv01 port map ( Y=>nx686, A=>D(7));
   ix111 : nor03_2x port map ( Y=>nx110, A0=>nx708, A1=>nx688, A2=>rst);
   ix687 : inv01 port map ( Y=>nx688, A=>D(8));
   ix123 : nor03_2x port map ( Y=>nx122, A0=>nx708, A1=>nx690, A2=>rst);
   ix689 : inv01 port map ( Y=>nx690, A=>D(9));
   ix135 : nor03_2x port map ( Y=>nx134, A0=>nx708, A1=>nx692, A2=>rst);
   ix691 : inv01 port map ( Y=>nx692, A=>D(10));
   ix147 : nor03_2x port map ( Y=>nx146, A0=>nx708, A1=>nx694, A2=>rst);
   ix693 : inv01 port map ( Y=>nx694, A=>D(11));
   ix159 : nor03_2x port map ( Y=>nx158, A0=>nx710, A1=>nx696, A2=>rst);
   ix695 : inv01 port map ( Y=>nx696, A=>D(12));
   ix171 : nor03_2x port map ( Y=>nx170, A0=>nx710, A1=>nx698, A2=>rst);
   ix697 : inv01 port map ( Y=>nx698, A=>D(13));
   ix183 : nor03_2x port map ( Y=>nx182, A0=>nx704, A1=>nx700, A2=>rst);
   ix699 : inv01 port map ( Y=>nx700, A=>D(14));
   ix195 : nor03_2x port map ( Y=>nx194, A0=>nx704, A1=>nx702, A2=>rst);
   ix701 : inv01 port map ( Y=>nx702, A=>D(15));
   ix703 : inv01 port map ( Y=>nx704, A=>nx2);
   ix705 : inv04 port map ( Y=>nx706, A=>nx2);
   ix707 : inv04 port map ( Y=>nx708, A=>nx2);
   ix709 : inv04 port map ( Y=>nx710, A=>nx2);
end RegWithLoadArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity UpCounterAsyncLoad_16 is
   port (
      loadData : IN std_logic_vector (15 DOWNTO 0) ;
      en : IN std_logic ;
      load : IN std_logic ;
      rst : IN std_logic ;
      clk : IN std_logic ;
      counterOutput : OUT std_logic_vector (15 DOWNTO 0)) ;
end UpCounterAsyncLoad_16 ;

architecture UpCounterAsyncLoad_unfold_2844 of UpCounterAsyncLoad_16 is
   component RegWithLoad_16
      port (
         D : IN std_logic_vector (15 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         load : IN std_logic ;
         Q : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   signal counterOutput_15_EXMPLR, counterOutput_14_EXMPLR, 
      counterOutput_13_EXMPLR, counterOutput_12_EXMPLR, 
      counterOutput_11_EXMPLR, counterOutput_10_EXMPLR, 
      counterOutput_9_EXMPLR, counterOutput_8_EXMPLR, counterOutput_7_EXMPLR, 
      counterOutput_6_EXMPLR, counterOutput_5_EXMPLR, counterOutput_4_EXMPLR, 
      counterOutput_3_EXMPLR, counterOutput_2_EXMPLR, counterOutput_1_EXMPLR, 
      counterOutput_0_EXMPLR, counterInput_15, counterInput_14, 
      counterInput_13, counterInput_12, counterInput_11, counterInput_10, 
      counterInput_9, counterInput_8, counterInput_7, counterInput_6, 
      counterInput_5, counterInput_4, counterInput_3, counterInput_2, 
      counterInput_1, counterInput_0, nx2, nx4, nx6, nx8, nx10, nx12, nx14, 
      nx16, nx20, nx32, nx44, nx56, nx68, nx94, nx100, nx116, nx130, nx144, 
      nx158, nx172, nx186, nx200, nx214, nx59, nx71, nx79, nx81, nx87, nx89, 
      nx97, nx105, nx107, nx113, nx121, nx123, nx129, nx135, nx137, nx141, 
      nx147, nx149, nx154, nx161, nx163, nx168: std_logic ;

begin
   counterOutput(15) <= counterOutput_15_EXMPLR ;
   counterOutput(14) <= counterOutput_14_EXMPLR ;
   counterOutput(13) <= counterOutput_13_EXMPLR ;
   counterOutput(12) <= counterOutput_12_EXMPLR ;
   counterOutput(11) <= counterOutput_11_EXMPLR ;
   counterOutput(10) <= counterOutput_10_EXMPLR ;
   counterOutput(9) <= counterOutput_9_EXMPLR ;
   counterOutput(8) <= counterOutput_8_EXMPLR ;
   counterOutput(7) <= counterOutput_7_EXMPLR ;
   counterOutput(6) <= counterOutput_6_EXMPLR ;
   counterOutput(5) <= counterOutput_5_EXMPLR ;
   counterOutput(4) <= counterOutput_4_EXMPLR ;
   counterOutput(3) <= counterOutput_3_EXMPLR ;
   counterOutput(2) <= counterOutput_2_EXMPLR ;
   counterOutput(1) <= counterOutput_1_EXMPLR ;
   counterOutput(0) <= counterOutput_0_EXMPLR ;
   counterReg : RegWithLoad_16 port map ( D(15)=>counterInput_15, D(14)=>
      counterInput_14, D(13)=>counterInput_13, D(12)=>counterInput_12, D(11)
      =>counterInput_11, D(10)=>counterInput_10, D(9)=>counterInput_9, D(8)
      =>counterInput_8, D(7)=>counterInput_7, D(6)=>counterInput_6, D(5)=>
      counterInput_5, D(4)=>counterInput_4, D(3)=>counterInput_3, D(2)=>
      counterInput_2, D(1)=>counterInput_1, D(0)=>counterInput_0, en=>en, 
      clk=>clk, rst=>rst, load=>load, Q(15)=>counterOutput_15_EXMPLR, Q(14)
      =>counterOutput_14_EXMPLR, Q(13)=>counterOutput_13_EXMPLR, Q(12)=>
      counterOutput_12_EXMPLR, Q(11)=>counterOutput_11_EXMPLR, Q(10)=>
      counterOutput_10_EXMPLR, Q(9)=>counterOutput_9_EXMPLR, Q(8)=>
      counterOutput_8_EXMPLR, Q(7)=>counterOutput_7_EXMPLR, Q(6)=>
      counterOutput_6_EXMPLR, Q(5)=>counterOutput_5_EXMPLR, Q(4)=>
      counterOutput_4_EXMPLR, Q(3)=>counterOutput_3_EXMPLR, Q(2)=>
      counterOutput_2_EXMPLR, Q(1)=>counterOutput_1_EXMPLR, Q(0)=>
      counterOutput_0_EXMPLR);
   ix93 : oai21 port map ( Y=>counterInput_0, A0=>load, A1=>
      counterOutput_0_EXMPLR, B0=>nx59);
   ix60 : nand02 port map ( Y=>nx59, A0=>loadData(0), A1=>load);
   ix107 : ao22 port map ( Y=>counterInput_1, A0=>loadData(1), A1=>load, B0
      =>nx94, B1=>nx100);
   ix95 : or02 port map ( Y=>nx94, A0=>counterOutput_0_EXMPLR, A1=>
      counterOutput_1_EXMPLR);
   ix101 : aoi21 port map ( Y=>nx100, A0=>counterOutput_1_EXMPLR, A1=>
      counterOutput_0_EXMPLR, B0=>load);
   ix121 : ao21 port map ( Y=>counterInput_2, A0=>loadData(2), A1=>load, B0
      =>nx116);
   ix117 : nor03_2x port map ( Y=>nx116, A0=>nx71, A1=>load, A2=>nx2);
   ix72 : aoi21 port map ( Y=>nx71, A0=>counterOutput_1_EXMPLR, A1=>
      counterOutput_0_EXMPLR, B0=>counterOutput_2_EXMPLR);
   ix135 : ao21 port map ( Y=>counterInput_3, A0=>loadData(3), A1=>load, B0
      =>nx130);
   ix131 : nor03_2x port map ( Y=>nx130, A0=>nx79, A1=>load, A2=>nx4);
   ix80 : nor02ii port map ( Y=>nx79, A0=>counterOutput_3_EXMPLR, A1=>nx81);
   ix82 : nand03 port map ( Y=>nx81, A0=>counterOutput_2_EXMPLR, A1=>
      counterOutput_1_EXMPLR, A2=>counterOutput_0_EXMPLR);
   ix149 : ao21 port map ( Y=>counterInput_4, A0=>loadData(4), A1=>load, B0
      =>nx144);
   ix145 : nor03_2x port map ( Y=>nx144, A0=>nx87, A1=>load, A2=>nx6);
   ix88 : nor02ii port map ( Y=>nx87, A0=>counterOutput_4_EXMPLR, A1=>nx89);
   ix90 : nand04 port map ( Y=>nx89, A0=>counterOutput_3_EXMPLR, A1=>
      counterOutput_2_EXMPLR, A2=>counterOutput_1_EXMPLR, A3=>
      counterOutput_0_EXMPLR);
   ix7 : nor02ii port map ( Y=>nx6, A0=>nx89, A1=>counterOutput_4_EXMPLR);
   ix163 : ao21 port map ( Y=>counterInput_5, A0=>loadData(5), A1=>load, B0
      =>nx158);
   ix159 : nor03_2x port map ( Y=>nx158, A0=>nx97, A1=>load, A2=>nx8);
   ix98 : nor02_2x port map ( Y=>nx97, A0=>nx6, A1=>counterOutput_5_EXMPLR);
   ix177 : ao21 port map ( Y=>counterInput_6, A0=>loadData(6), A1=>load, B0
      =>nx172);
   ix173 : nor03_2x port map ( Y=>nx172, A0=>nx105, A1=>load, A2=>nx10);
   ix106 : nor02ii port map ( Y=>nx105, A0=>counterOutput_6_EXMPLR, A1=>
      nx107);
   ix108 : nand02 port map ( Y=>nx107, A0=>counterOutput_5_EXMPLR, A1=>nx6);
   ix11 : nor02ii port map ( Y=>nx10, A0=>nx107, A1=>counterOutput_6_EXMPLR
   );
   ix191 : ao21 port map ( Y=>counterInput_7, A0=>loadData(7), A1=>load, B0
      =>nx186);
   ix187 : nor03_2x port map ( Y=>nx186, A0=>nx113, A1=>load, A2=>nx12);
   ix114 : nor02_2x port map ( Y=>nx113, A0=>nx10, A1=>
      counterOutput_7_EXMPLR);
   ix205 : ao21 port map ( Y=>counterInput_8, A0=>loadData(8), A1=>load, B0
      =>nx200);
   ix201 : nor03_2x port map ( Y=>nx200, A0=>nx121, A1=>load, A2=>nx14);
   ix122 : nor02ii port map ( Y=>nx121, A0=>counterOutput_8_EXMPLR, A1=>
      nx123);
   ix124 : nand02 port map ( Y=>nx123, A0=>counterOutput_7_EXMPLR, A1=>nx10
   );
   ix15 : nor02ii port map ( Y=>nx14, A0=>nx123, A1=>counterOutput_8_EXMPLR
   );
   ix219 : ao21 port map ( Y=>counterInput_9, A0=>load, A1=>loadData(9), B0
      =>nx214);
   ix215 : nor03_2x port map ( Y=>nx214, A0=>nx129, A1=>load, A2=>nx16);
   ix130 : nor02_2x port map ( Y=>nx129, A0=>nx14, A1=>
      counterOutput_9_EXMPLR);
   ix29 : nor03_2x port map ( Y=>counterInput_10, A0=>nx135, A1=>load, A2=>
      nx20);
   ix136 : nor02ii port map ( Y=>nx135, A0=>counterOutput_10_EXMPLR, A1=>
      nx137);
   ix138 : nand02 port map ( Y=>nx137, A0=>counterOutput_9_EXMPLR, A1=>nx14
   );
   ix21 : nor02ii port map ( Y=>nx20, A0=>nx137, A1=>counterOutput_10_EXMPLR
   );
   ix41 : nor03_2x port map ( Y=>counterInput_11, A0=>nx141, A1=>load, A2=>
      nx32);
   ix142 : nor02_2x port map ( Y=>nx141, A0=>nx20, A1=>
      counterOutput_11_EXMPLR);
   ix53 : nor03_2x port map ( Y=>counterInput_12, A0=>nx147, A1=>load, A2=>
      nx44);
   ix148 : nor02ii port map ( Y=>nx147, A0=>counterOutput_12_EXMPLR, A1=>
      nx149);
   ix150 : nand02 port map ( Y=>nx149, A0=>counterOutput_11_EXMPLR, A1=>nx20
   );
   ix45 : nor02ii port map ( Y=>nx44, A0=>nx149, A1=>counterOutput_12_EXMPLR
   );
   ix65 : nor03_2x port map ( Y=>counterInput_13, A0=>nx154, A1=>load, A2=>
      nx56);
   ix156 : nor02_2x port map ( Y=>nx154, A0=>nx44, A1=>
      counterOutput_13_EXMPLR);
   ix77 : nor03_2x port map ( Y=>counterInput_14, A0=>nx161, A1=>load, A2=>
      nx68);
   ix162 : nor02ii port map ( Y=>nx161, A0=>counterOutput_14_EXMPLR, A1=>
      nx163);
   ix164 : nand02 port map ( Y=>nx163, A0=>counterOutput_13_EXMPLR, A1=>nx44
   );
   ix69 : nor02ii port map ( Y=>nx68, A0=>nx163, A1=>counterOutput_14_EXMPLR
   );
   ix83 : nor02_2x port map ( Y=>counterInput_15, A0=>load, A1=>nx168);
   ix170 : xnor2 port map ( Y=>nx168, A0=>counterOutput_15_EXMPLR, A1=>nx68
   );
   ix57 : inv01 port map ( Y=>nx56, A=>nx163);
   ix33 : inv01 port map ( Y=>nx32, A=>nx149);
   ix17 : inv01 port map ( Y=>nx16, A=>nx137);
   ix13 : inv01 port map ( Y=>nx12, A=>nx123);
   ix9 : inv01 port map ( Y=>nx8, A=>nx107);
   ix5 : inv01 port map ( Y=>nx4, A=>nx89);
   ix3 : inv01 port map ( Y=>nx2, A=>nx81);
end UpCounterAsyncLoad_unfold_2844 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity DMAImage is
   port (
      dataIn : IN std_logic_vector (7 DOWNTO 0) ;
      addressIn : IN std_logic_vector (9 DOWNTO 0) ;
      clk : IN std_logic ;
      enableImageCounter : IN std_logic ;
      enableImageRegister : IN std_logic ;
      rst : IN std_logic ;
      intrDelayed : IN std_logic ;
      dataOut : OUT std_logic_vector (15 DOWNTO 0) ;
      addressOut : OUT std_logic_vector (15 DOWNTO 0)) ;
end DMAImage ;

architecture DMAImage of DMAImage is
   component UpCounterAsyncLoad_16
      port (
         loadData : IN std_logic_vector (15 DOWNTO 0) ;
         en : IN std_logic ;
         load : IN std_logic ;
         rst : IN std_logic ;
         clk : IN std_logic ;
         counterOutput : OUT std_logic_vector (15 DOWNTO 0)) ;
   
   end component ;
   signal dataOut_7_EXMPLR, dataOut_6_EXMPLR, dataOut_5_EXMPLR, 
      dataOut_4_EXMPLR, dataOut_3_EXMPLR, dataOut_2_EXMPLR, dataOut_1_EXMPLR, 
      dataOut_0_EXMPLR, dataOut_15_EXMPLR, nx108, nx118, nx128, nx138, nx148, 
      nx158, nx168, nx178: std_logic ;

begin
   dataOut(15) <= dataOut_15_EXMPLR ;
   dataOut(14) <= dataOut_15_EXMPLR ;
   dataOut(13) <= dataOut_15_EXMPLR ;
   dataOut(12) <= dataOut_15_EXMPLR ;
   dataOut(11) <= dataOut_15_EXMPLR ;
   dataOut(10) <= dataOut_15_EXMPLR ;
   dataOut(9) <= dataOut_15_EXMPLR ;
   dataOut(8) <= dataOut_15_EXMPLR ;
   dataOut(7) <= dataOut_7_EXMPLR ;
   dataOut(6) <= dataOut_6_EXMPLR ;
   dataOut(5) <= dataOut_5_EXMPLR ;
   dataOut(4) <= dataOut_4_EXMPLR ;
   dataOut(3) <= dataOut_3_EXMPLR ;
   dataOut(2) <= dataOut_2_EXMPLR ;
   dataOut(1) <= dataOut_1_EXMPLR ;
   dataOut(0) <= dataOut_0_EXMPLR ;
   addressCounter : UpCounterAsyncLoad_16 port map ( loadData(15)=>
      dataOut_15_EXMPLR, loadData(14)=>dataOut_15_EXMPLR, loadData(13)=>
      dataOut_15_EXMPLR, loadData(12)=>dataOut_15_EXMPLR, loadData(11)=>
      dataOut_15_EXMPLR, loadData(10)=>dataOut_15_EXMPLR, loadData(9)=>
      addressIn(9), loadData(8)=>addressIn(8), loadData(7)=>addressIn(7), 
      loadData(6)=>addressIn(6), loadData(5)=>addressIn(5), loadData(4)=>
      addressIn(4), loadData(3)=>addressIn(3), loadData(2)=>addressIn(2), 
      loadData(1)=>addressIn(1), loadData(0)=>addressIn(0), en=>
      enableImageCounter, load=>intrDelayed, rst=>rst, clk=>clk, 
      counterOutput(15)=>addressOut(15), counterOutput(14)=>addressOut(14), 
      counterOutput(13)=>addressOut(13), counterOutput(12)=>addressOut(12), 
      counterOutput(11)=>addressOut(11), counterOutput(10)=>addressOut(10), 
      counterOutput(9)=>addressOut(9), counterOutput(8)=>addressOut(8), 
      counterOutput(7)=>addressOut(7), counterOutput(6)=>addressOut(6), 
      counterOutput(5)=>addressOut(5), counterOutput(4)=>addressOut(4), 
      counterOutput(3)=>addressOut(3), counterOutput(2)=>addressOut(2), 
      counterOutput(1)=>addressOut(1), counterOutput(0)=>addressOut(0));
   ix82 : fake_gnd port map ( Y=>dataOut_15_EXMPLR);
   MyReg_reg_Q_0 : dffr port map ( Q=>dataOut_0_EXMPLR, QB=>OPEN, D=>nx108, 
      CLK=>clk, R=>rst);
   ix109 : mux21_ni port map ( Y=>nx108, A0=>dataOut_0_EXMPLR, A1=>dataIn(0), 
      S0=>enableImageRegister);
   MyReg_reg_Q_1 : dffr port map ( Q=>dataOut_1_EXMPLR, QB=>OPEN, D=>nx118, 
      CLK=>clk, R=>rst);
   ix119 : mux21_ni port map ( Y=>nx118, A0=>dataOut_1_EXMPLR, A1=>dataIn(1), 
      S0=>enableImageRegister);
   MyReg_reg_Q_2 : dffr port map ( Q=>dataOut_2_EXMPLR, QB=>OPEN, D=>nx128, 
      CLK=>clk, R=>rst);
   ix129 : mux21_ni port map ( Y=>nx128, A0=>dataOut_2_EXMPLR, A1=>dataIn(2), 
      S0=>enableImageRegister);
   MyReg_reg_Q_3 : dffr port map ( Q=>dataOut_3_EXMPLR, QB=>OPEN, D=>nx138, 
      CLK=>clk, R=>rst);
   ix139 : mux21_ni port map ( Y=>nx138, A0=>dataOut_3_EXMPLR, A1=>dataIn(3), 
      S0=>enableImageRegister);
   MyReg_reg_Q_4 : dffr port map ( Q=>dataOut_4_EXMPLR, QB=>OPEN, D=>nx148, 
      CLK=>clk, R=>rst);
   ix149 : mux21_ni port map ( Y=>nx148, A0=>dataOut_4_EXMPLR, A1=>dataIn(4), 
      S0=>enableImageRegister);
   MyReg_reg_Q_5 : dffr port map ( Q=>dataOut_5_EXMPLR, QB=>OPEN, D=>nx158, 
      CLK=>clk, R=>rst);
   ix159 : mux21_ni port map ( Y=>nx158, A0=>dataOut_5_EXMPLR, A1=>dataIn(5), 
      S0=>enableImageRegister);
   MyReg_reg_Q_6 : dffr port map ( Q=>dataOut_6_EXMPLR, QB=>OPEN, D=>nx168, 
      CLK=>clk, R=>rst);
   ix169 : mux21_ni port map ( Y=>nx168, A0=>dataOut_6_EXMPLR, A1=>dataIn(6), 
      S0=>enableImageRegister);
   MyReg_reg_Q_7 : dffr port map ( Q=>dataOut_7_EXMPLR, QB=>OPEN, D=>nx178, 
      CLK=>clk, R=>rst);
   ix179 : mux21_ni port map ( Y=>nx178, A0=>dataOut_7_EXMPLR, A1=>dataIn(7), 
      S0=>enableImageRegister);
end DMAImage ;


