
-- 
-- Definition of  IO
-- 
--      Fri Apr 19 15:54:57 2019
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
      nx704, nx706, nx708, nx710, nx712, nx714, nx716, nx718: std_logic ;

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
   ix396 : mux21_ni port map ( Y=>nx395, A0=>Q_0_EXMPLR, A1=>D(0), S0=>nx706
   );
   ix11 : oai21 port map ( Y=>nx10, A0=>D(0), A1=>nx662, B0=>nx652);
   ix566 : aoi21 port map ( Y=>nx565, A0=>nx706, A1=>load, B0=>rst);
   reg_Q_1 : dffsr_ni port map ( Q=>Q_1_EXMPLR, QB=>OPEN, D=>nx405, CLK=>clk, 
      S=>nx26, R=>nx22);
   ix406 : mux21_ni port map ( Y=>nx405, A0=>Q_1_EXMPLR, A1=>D(1), S0=>nx706
   );
   ix23 : oai21 port map ( Y=>nx22, A0=>D(1), A1=>nx662, B0=>nx652);
   reg_Q_2 : dffsr_ni port map ( Q=>Q_2_EXMPLR, QB=>OPEN, D=>nx415, CLK=>clk, 
      S=>nx38, R=>nx34);
   ix416 : mux21_ni port map ( Y=>nx415, A0=>Q_2_EXMPLR, A1=>D(2), S0=>nx706
   );
   ix35 : oai21 port map ( Y=>nx34, A0=>D(2), A1=>nx662, B0=>nx652);
   reg_Q_3 : dffsr_ni port map ( Q=>Q_3_EXMPLR, QB=>OPEN, D=>nx425, CLK=>clk, 
      S=>nx50, R=>nx46);
   ix426 : mux21_ni port map ( Y=>nx425, A0=>Q_3_EXMPLR, A1=>D(3), S0=>nx706
   );
   ix47 : oai21 port map ( Y=>nx46, A0=>D(3), A1=>nx662, B0=>nx654);
   reg_Q_4 : dffsr_ni port map ( Q=>Q_4_EXMPLR, QB=>OPEN, D=>nx435, CLK=>clk, 
      S=>nx62, R=>nx58);
   ix436 : mux21_ni port map ( Y=>nx435, A0=>Q_4_EXMPLR, A1=>D(4), S0=>nx706
   );
   ix59 : oai21 port map ( Y=>nx58, A0=>D(4), A1=>nx662, B0=>nx654);
   reg_Q_5 : dffsr_ni port map ( Q=>Q_5_EXMPLR, QB=>OPEN, D=>nx445, CLK=>clk, 
      S=>nx74, R=>nx70);
   ix446 : mux21_ni port map ( Y=>nx445, A0=>Q_5_EXMPLR, A1=>D(5), S0=>nx706
   );
   ix71 : oai21 port map ( Y=>nx70, A0=>D(5), A1=>nx662, B0=>nx654);
   reg_Q_6 : dffsr_ni port map ( Q=>Q_6_EXMPLR, QB=>OPEN, D=>nx455, CLK=>clk, 
      S=>nx86, R=>nx82);
   ix456 : mux21_ni port map ( Y=>nx455, A0=>Q_6_EXMPLR, A1=>D(6), S0=>nx708
   );
   ix83 : oai21 port map ( Y=>nx82, A0=>D(6), A1=>nx662, B0=>nx654);
   reg_Q_7 : dffsr_ni port map ( Q=>Q_7_EXMPLR, QB=>OPEN, D=>nx465, CLK=>clk, 
      S=>nx98, R=>nx94);
   ix466 : mux21_ni port map ( Y=>nx465, A0=>Q_7_EXMPLR, A1=>D(7), S0=>nx708
   );
   ix95 : oai21 port map ( Y=>nx94, A0=>D(7), A1=>nx664, B0=>nx656);
   reg_Q_8 : dffsr_ni port map ( Q=>Q_8_EXMPLR, QB=>OPEN, D=>nx475, CLK=>clk, 
      S=>nx110, R=>nx106);
   ix476 : mux21_ni port map ( Y=>nx475, A0=>Q_8_EXMPLR, A1=>D(8), S0=>nx708
   );
   ix107 : oai21 port map ( Y=>nx106, A0=>D(8), A1=>nx664, B0=>nx656);
   reg_Q_9 : dffsr_ni port map ( Q=>Q_9_EXMPLR, QB=>OPEN, D=>nx485, CLK=>clk, 
      S=>nx122, R=>nx118);
   ix486 : mux21_ni port map ( Y=>nx485, A0=>Q_9_EXMPLR, A1=>D(9), S0=>nx708
   );
   ix119 : oai21 port map ( Y=>nx118, A0=>D(9), A1=>nx664, B0=>nx656);
   reg_Q_10 : dffsr_ni port map ( Q=>Q_10_EXMPLR, QB=>OPEN, D=>nx495, CLK=>
      clk, S=>nx134, R=>nx130);
   ix496 : mux21_ni port map ( Y=>nx495, A0=>Q_10_EXMPLR, A1=>D(10), S0=>
      nx708);
   ix131 : oai21 port map ( Y=>nx130, A0=>D(10), A1=>nx664, B0=>nx658);
   reg_Q_11 : dffsr_ni port map ( Q=>Q_11_EXMPLR, QB=>OPEN, D=>nx505, CLK=>
      clk, S=>nx146, R=>nx142);
   ix506 : mux21_ni port map ( Y=>nx505, A0=>Q_11_EXMPLR, A1=>D(11), S0=>
      nx708);
   ix143 : oai21 port map ( Y=>nx142, A0=>D(11), A1=>nx664, B0=>nx658);
   reg_Q_12 : dffsr_ni port map ( Q=>Q_12_EXMPLR, QB=>OPEN, D=>nx515, CLK=>
      clk, S=>nx158, R=>nx154);
   ix516 : mux21_ni port map ( Y=>nx515, A0=>Q_12_EXMPLR, A1=>D(12), S0=>
      nx708);
   ix155 : oai21 port map ( Y=>nx154, A0=>D(12), A1=>nx664, B0=>nx658);
   reg_Q_13 : dffsr_ni port map ( Q=>Q_13_EXMPLR, QB=>OPEN, D=>nx525, CLK=>
      clk, S=>nx170, R=>nx166);
   ix526 : mux21_ni port map ( Y=>nx525, A0=>Q_13_EXMPLR, A1=>D(13), S0=>
      nx710);
   ix167 : oai21 port map ( Y=>nx166, A0=>D(13), A1=>nx664, B0=>nx658);
   reg_Q_14 : dffsr_ni port map ( Q=>Q_14_EXMPLR, QB=>OPEN, D=>nx535, CLK=>
      clk, S=>nx182, R=>nx178);
   ix536 : mux21_ni port map ( Y=>nx535, A0=>Q_14_EXMPLR, A1=>D(14), S0=>
      nx710);
   ix179 : oai21 port map ( Y=>nx178, A0=>D(14), A1=>nx714, B0=>nx660);
   reg_Q_15 : dffsr_ni port map ( Q=>Q_15_EXMPLR, QB=>OPEN, D=>nx545, CLK=>
      clk, S=>nx194, R=>nx190);
   ix546 : mux21_ni port map ( Y=>nx545, A0=>Q_15_EXMPLR, A1=>D(15), S0=>
      nx710);
   ix191 : oai21 port map ( Y=>nx190, A0=>D(15), A1=>nx714, B0=>nx660);
   ix3 : inv02 port map ( Y=>nx2, A=>nx565);
   ix651 : inv02 port map ( Y=>nx652, A=>rst);
   ix653 : inv02 port map ( Y=>nx654, A=>rst);
   ix655 : inv02 port map ( Y=>nx656, A=>rst);
   ix657 : inv02 port map ( Y=>nx658, A=>rst);
   ix659 : inv02 port map ( Y=>nx660, A=>rst);
   ix661 : inv02 port map ( Y=>nx662, A=>nx2);
   ix663 : inv02 port map ( Y=>nx664, A=>nx2);
   ix15 : nor03_2x port map ( Y=>nx14, A0=>nx714, A1=>nx672, A2=>rst);
   ix671 : inv01 port map ( Y=>nx672, A=>D(0));
   ix27 : nor03_2x port map ( Y=>nx26, A0=>nx714, A1=>nx674, A2=>rst);
   ix673 : inv01 port map ( Y=>nx674, A=>D(1));
   ix39 : nor03_2x port map ( Y=>nx38, A0=>nx714, A1=>nx676, A2=>rst);
   ix675 : inv01 port map ( Y=>nx676, A=>D(2));
   ix51 : nor03_2x port map ( Y=>nx50, A0=>nx714, A1=>nx678, A2=>rst);
   ix677 : inv01 port map ( Y=>nx678, A=>D(3));
   ix63 : nor03_2x port map ( Y=>nx62, A0=>nx714, A1=>nx680, A2=>rst);
   ix679 : inv01 port map ( Y=>nx680, A=>D(4));
   ix75 : nor03_2x port map ( Y=>nx74, A0=>nx716, A1=>nx682, A2=>rst);
   ix681 : inv01 port map ( Y=>nx682, A=>D(5));
   ix87 : nor03_2x port map ( Y=>nx86, A0=>nx716, A1=>nx684, A2=>rst);
   ix683 : inv01 port map ( Y=>nx684, A=>D(6));
   ix99 : nor03_2x port map ( Y=>nx98, A0=>nx716, A1=>nx686, A2=>rst);
   ix685 : inv01 port map ( Y=>nx686, A=>D(7));
   ix111 : nor03_2x port map ( Y=>nx110, A0=>nx716, A1=>nx688, A2=>rst);
   ix687 : inv01 port map ( Y=>nx688, A=>D(8));
   ix123 : nor03_2x port map ( Y=>nx122, A0=>nx716, A1=>nx690, A2=>rst);
   ix689 : inv01 port map ( Y=>nx690, A=>D(9));
   ix135 : nor03_2x port map ( Y=>nx134, A0=>nx716, A1=>nx692, A2=>rst);
   ix691 : inv01 port map ( Y=>nx692, A=>D(10));
   ix147 : nor03_2x port map ( Y=>nx146, A0=>nx716, A1=>nx694, A2=>rst);
   ix693 : inv01 port map ( Y=>nx694, A=>D(11));
   ix159 : nor03_2x port map ( Y=>nx158, A0=>nx718, A1=>nx696, A2=>rst);
   ix695 : inv01 port map ( Y=>nx696, A=>D(12));
   ix171 : nor03_2x port map ( Y=>nx170, A0=>nx718, A1=>nx698, A2=>rst);
   ix697 : inv01 port map ( Y=>nx698, A=>D(13));
   ix183 : nor03_2x port map ( Y=>nx182, A0=>nx712, A1=>nx700, A2=>rst);
   ix699 : inv01 port map ( Y=>nx700, A=>D(14));
   ix195 : nor03_2x port map ( Y=>nx194, A0=>nx712, A1=>nx702, A2=>rst);
   ix701 : inv01 port map ( Y=>nx702, A=>D(15));
   ix703 : inv01 port map ( Y=>nx704, A=>en);
   ix705 : inv02 port map ( Y=>nx706, A=>nx704);
   ix707 : inv02 port map ( Y=>nx708, A=>nx704);
   ix709 : inv02 port map ( Y=>nx710, A=>nx704);
   ix711 : inv01 port map ( Y=>nx712, A=>nx2);
   ix713 : inv04 port map ( Y=>nx714, A=>nx2);
   ix715 : inv04 port map ( Y=>nx716, A=>nx2);
   ix717 : inv04 port map ( Y=>nx718, A=>nx2);
end RegWithLoadArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity DownCounterAsyncLoad_16 is
   port (
      loadData : IN std_logic_vector (15 DOWNTO 0) ;
      en : IN std_logic ;
      load : IN std_logic ;
      rst : IN std_logic ;
      clk : IN std_logic ;
      counterOutput : OUT std_logic_vector (15 DOWNTO 0)) ;
end DownCounterAsyncLoad_16 ;

architecture DownCounterAsyncLoadArch of DownCounterAsyncLoad_16 is
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
      counterInput_1, counterInput_0, nx14, nx18, nx30, nx36, nx48, nx54, 
      nx66, nx72, nx84, nx90, nx102, nx108, nx120, nx126, nx138, nx144, 
      nx156, nx162, nx174, nx180, nx192, nx198, nx210, nx216, nx228, nx234, 
      nx246, nx252, nx262, nx137, nx224, nx227, nx229, nx231: std_logic ;

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
      clk=>clk, rst=>rst, load=>nx227, Q(15)=>counterOutput_15_EXMPLR, Q(14)
      =>counterOutput_14_EXMPLR, Q(13)=>counterOutput_13_EXMPLR, Q(12)=>
      counterOutput_12_EXMPLR, Q(11)=>counterOutput_11_EXMPLR, Q(10)=>
      counterOutput_10_EXMPLR, Q(9)=>counterOutput_9_EXMPLR, Q(8)=>
      counterOutput_8_EXMPLR, Q(7)=>counterOutput_7_EXMPLR, Q(6)=>
      counterOutput_6_EXMPLR, Q(5)=>counterOutput_5_EXMPLR, Q(4)=>
      counterOutput_4_EXMPLR, Q(3)=>counterOutput_3_EXMPLR, Q(2)=>
      counterOutput_2_EXMPLR, Q(1)=>counterOutput_1_EXMPLR, Q(0)=>
      counterOutput_0_EXMPLR);
   ix9 : oai21 port map ( Y=>counterInput_0, A0=>nx227, A1=>
      counterOutput_0_EXMPLR, B0=>nx137);
   ix138 : nand02 port map ( Y=>nx137, A0=>loadData(0), A1=>nx227);
   ix27 : mux21_ni port map ( Y=>counterInput_1, A0=>nx18, A1=>loadData(1), 
      S0=>nx227);
   ix19 : xnor2 port map ( Y=>nx18, A0=>counterOutput_1_EXMPLR, A1=>
      counterOutput_0_EXMPLR);
   ix45 : mux21_ni port map ( Y=>counterInput_2, A0=>nx36, A1=>loadData(2), 
      S0=>nx227);
   ix37 : xor2 port map ( Y=>nx36, A0=>counterOutput_2_EXMPLR, A1=>nx14);
   ix15 : nor02_2x port map ( Y=>nx14, A0=>counterOutput_1_EXMPLR, A1=>
      counterOutput_0_EXMPLR);
   ix63 : mux21_ni port map ( Y=>counterInput_3, A0=>nx54, A1=>loadData(3), 
      S0=>nx227);
   ix55 : xor2 port map ( Y=>nx54, A0=>counterOutput_3_EXMPLR, A1=>nx30);
   ix31 : nor03_2x port map ( Y=>nx30, A0=>counterOutput_2_EXMPLR, A1=>
      counterOutput_1_EXMPLR, A2=>counterOutput_0_EXMPLR);
   ix81 : mux21_ni port map ( Y=>counterInput_4, A0=>nx72, A1=>loadData(4), 
      S0=>nx227);
   ix73 : xor2 port map ( Y=>nx72, A0=>counterOutput_4_EXMPLR, A1=>nx48);
   ix49 : nor04 port map ( Y=>nx48, A0=>counterOutput_3_EXMPLR, A1=>
      counterOutput_2_EXMPLR, A2=>counterOutput_1_EXMPLR, A3=>
      counterOutput_0_EXMPLR);
   ix99 : mux21_ni port map ( Y=>counterInput_5, A0=>nx90, A1=>loadData(5), 
      S0=>nx229);
   ix91 : xor2 port map ( Y=>nx90, A0=>counterOutput_5_EXMPLR, A1=>nx66);
   ix67 : nor02ii port map ( Y=>nx66, A0=>counterOutput_4_EXMPLR, A1=>nx48);
   ix117 : mux21_ni port map ( Y=>counterInput_6, A0=>nx108, A1=>loadData(6), 
      S0=>nx229);
   ix109 : xor2 port map ( Y=>nx108, A0=>counterOutput_6_EXMPLR, A1=>nx84);
   ix88 : nor02ii port map ( Y=>nx84, A0=>counterOutput_5_EXMPLR, A1=>nx66);
   ix135 : mux21_ni port map ( Y=>counterInput_7, A0=>nx126, A1=>loadData(7), 
      S0=>nx229);
   ix127 : xor2 port map ( Y=>nx126, A0=>counterOutput_7_EXMPLR, A1=>nx102);
   ix103 : nor02ii port map ( Y=>nx102, A0=>counterOutput_6_EXMPLR, A1=>nx84
   );
   ix153 : mux21_ni port map ( Y=>counterInput_8, A0=>nx144, A1=>loadData(8), 
      S0=>nx229);
   ix145 : xor2 port map ( Y=>nx144, A0=>counterOutput_8_EXMPLR, A1=>nx120);
   ix121 : nor02ii port map ( Y=>nx120, A0=>counterOutput_7_EXMPLR, A1=>
      nx102);
   ix171 : mux21_ni port map ( Y=>counterInput_9, A0=>nx162, A1=>loadData(9), 
      S0=>nx229);
   ix163 : xor2 port map ( Y=>nx162, A0=>counterOutput_9_EXMPLR, A1=>nx138);
   ix139 : nor02ii port map ( Y=>nx138, A0=>counterOutput_8_EXMPLR, A1=>
      nx120);
   ix189 : mux21_ni port map ( Y=>counterInput_10, A0=>nx180, A1=>
      loadData(10), S0=>nx229);
   ix181 : xor2 port map ( Y=>nx180, A0=>counterOutput_10_EXMPLR, A1=>nx156
   );
   ix157 : nor02ii port map ( Y=>nx156, A0=>counterOutput_9_EXMPLR, A1=>
      nx138);
   ix207 : mux21_ni port map ( Y=>counterInput_11, A0=>nx198, A1=>
      loadData(11), S0=>nx229);
   ix199 : xor2 port map ( Y=>nx198, A0=>counterOutput_11_EXMPLR, A1=>nx174
   );
   ix175 : nor02ii port map ( Y=>nx174, A0=>counterOutput_10_EXMPLR, A1=>
      nx156);
   ix225 : mux21_ni port map ( Y=>counterInput_12, A0=>nx216, A1=>
      loadData(12), S0=>nx231);
   ix217 : xor2 port map ( Y=>nx216, A0=>counterOutput_12_EXMPLR, A1=>nx192
   );
   ix193 : nor02ii port map ( Y=>nx192, A0=>counterOutput_11_EXMPLR, A1=>
      nx174);
   ix243 : mux21_ni port map ( Y=>counterInput_13, A0=>nx234, A1=>
      loadData(13), S0=>nx231);
   ix235 : xor2 port map ( Y=>nx234, A0=>counterOutput_13_EXMPLR, A1=>nx210
   );
   ix211 : nor02ii port map ( Y=>nx210, A0=>counterOutput_12_EXMPLR, A1=>
      nx192);
   ix261 : mux21_ni port map ( Y=>counterInput_14, A0=>nx252, A1=>
      loadData(14), S0=>nx231);
   ix253 : xor2 port map ( Y=>nx252, A0=>counterOutput_14_EXMPLR, A1=>nx228
   );
   ix229 : nor02ii port map ( Y=>nx228, A0=>counterOutput_13_EXMPLR, A1=>
      nx210);
   ix271 : mux21_ni port map ( Y=>counterInput_15, A0=>nx262, A1=>
      loadData(15), S0=>nx231);
   ix263 : xor2 port map ( Y=>nx262, A0=>counterOutput_15_EXMPLR, A1=>nx246
   );
   ix247 : nor02ii port map ( Y=>nx246, A0=>counterOutput_14_EXMPLR, A1=>
      nx228);
   ix223 : inv01 port map ( Y=>nx224, A=>load);
   ix226 : inv02 port map ( Y=>nx227, A=>nx224);
   ix228 : inv02 port map ( Y=>nx229, A=>nx224);
   ix230 : inv02 port map ( Y=>nx231, A=>nx224);
end DownCounterAsyncLoadArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity IOInterface_16_4 is
   port (
      Din : IN std_logic_vector (15 DOWNTO 0) ;
      INTR : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      globalCounterEnable : IN std_logic ;
      globalCounterLoad : IN std_logic ;
      zeroState : OUT std_logic ;
      Q : INOUT std_logic_vector (15 DOWNTO 0) ;
      result : OUT std_logic_vector (3 DOWNTO 0)) ;
end IOInterface_16_4 ;

architecture IOInterfaceArch of IOInterface_16_4 is
   component DownCounterAsyncLoad_16
      port (
         loadData : IN std_logic_vector (15 DOWNTO 0) ;
         en : IN std_logic ;
         load : IN std_logic ;
         rst : IN std_logic ;
         clk : IN std_logic ;
         counterOutput : OUT std_logic_vector (15 DOWNTO 0)) ;
   
   end component ;
   signal myGlobalCounterEnable, globalCounterOutput_15, 
      globalCounterOutput_14, globalCounterOutput_13, globalCounterOutput_12, 
      globalCounterOutput_11, globalCounterOutput_10, globalCounterOutput_9, 
      globalCounterOutput_8, globalCounterOutput_7, globalCounterOutput_6, 
      globalCounterOutput_5, globalCounterOutput_4, globalCounterOutput_3, 
      globalCounterOutput_2, globalCounterOutput_1, globalCounterOutput_0, 
      zeros_15, nx12, nx26, nx42, nx56, nx193, nx203, nx213, nx223, nx233, 
      nx243, nx253, nx263, nx273, nx283, nx293, nx303, nx313, nx323, nx333, 
      nx343, nx349: std_logic ;

begin
   GlobalCounter : DownCounterAsyncLoad_16 port map ( loadData(15)=>Din(15), 
      loadData(14)=>Din(14), loadData(13)=>Din(13), loadData(12)=>Din(12), 
      loadData(11)=>Din(11), loadData(10)=>Din(10), loadData(9)=>Din(9), 
      loadData(8)=>Din(8), loadData(7)=>Din(7), loadData(6)=>Din(6), 
      loadData(5)=>Din(5), loadData(4)=>Din(4), loadData(3)=>Din(3), 
      loadData(2)=>Din(2), loadData(1)=>Din(1), loadData(0)=>Din(0), en=>
      myGlobalCounterEnable, load=>globalCounterLoad, rst=>rst, clk=>clk, 
      counterOutput(15)=>globalCounterOutput_15, counterOutput(14)=>
      globalCounterOutput_14, counterOutput(13)=>globalCounterOutput_13, 
      counterOutput(12)=>globalCounterOutput_12, counterOutput(11)=>
      globalCounterOutput_11, counterOutput(10)=>globalCounterOutput_10, 
      counterOutput(9)=>globalCounterOutput_9, counterOutput(8)=>
      globalCounterOutput_8, counterOutput(7)=>globalCounterOutput_7, 
      counterOutput(6)=>globalCounterOutput_6, counterOutput(5)=>
      globalCounterOutput_5, counterOutput(4)=>globalCounterOutput_4, 
      counterOutput(3)=>globalCounterOutput_3, counterOutput(2)=>
      globalCounterOutput_2, counterOutput(1)=>globalCounterOutput_1, 
      counterOutput(0)=>globalCounterOutput_0);
   ix350 : fake_vcc port map ( Y=>nx349);
   ix133 : fake_gnd port map ( Y=>zeros_15);
   ix61 : and04 port map ( Y=>zeroState, A0=>nx12, A1=>nx26, A2=>nx42, A3=>
      nx56);
   ix13 : nor04 port map ( Y=>nx12, A0=>globalCounterOutput_15, A1=>
      globalCounterOutput_14, A2=>globalCounterOutput_13, A3=>
      globalCounterOutput_12);
   ix27 : nor04 port map ( Y=>nx26, A0=>globalCounterOutput_11, A1=>
      globalCounterOutput_10, A2=>globalCounterOutput_9, A3=>
      globalCounterOutput_8);
   ix43 : nor04 port map ( Y=>nx42, A0=>globalCounterOutput_7, A1=>
      globalCounterOutput_6, A2=>globalCounterOutput_5, A3=>
      globalCounterOutput_4);
   ix57 : nor04 port map ( Y=>nx56, A0=>globalCounterOutput_3, A1=>
      globalCounterOutput_2, A2=>globalCounterOutput_1, A3=>
      globalCounterOutput_0);
   ix97 : or02 port map ( Y=>myGlobalCounterEnable, A0=>globalCounterEnable, 
      A1=>globalCounterLoad);
   tri_result_0 : tri01 port map ( Y=>result(0), A=>nx349, E=>zeros_15);
   tri_result_1 : tri01 port map ( Y=>result(1), A=>nx349, E=>zeros_15);
   tri_result_2 : tri01 port map ( Y=>result(2), A=>nx349, E=>zeros_15);
   tri_result_3 : tri01 port map ( Y=>result(3), A=>nx349, E=>zeros_15);
   DataReg_reg_Q_0 : dffr port map ( Q=>Q(0), QB=>OPEN, D=>nx193, CLK=>clk, 
      R=>rst);
   ix194 : mux21_ni port map ( Y=>nx193, A0=>Q(0), A1=>Din(0), S0=>INTR);
   DataReg_reg_Q_1 : dffr port map ( Q=>Q(1), QB=>OPEN, D=>nx203, CLK=>clk, 
      R=>rst);
   ix204 : mux21_ni port map ( Y=>nx203, A0=>Q(1), A1=>Din(1), S0=>INTR);
   DataReg_reg_Q_2 : dffr port map ( Q=>Q(2), QB=>OPEN, D=>nx213, CLK=>clk, 
      R=>rst);
   ix214 : mux21_ni port map ( Y=>nx213, A0=>Q(2), A1=>Din(2), S0=>INTR);
   DataReg_reg_Q_3 : dffr port map ( Q=>Q(3), QB=>OPEN, D=>nx223, CLK=>clk, 
      R=>rst);
   ix224 : mux21_ni port map ( Y=>nx223, A0=>Q(3), A1=>Din(3), S0=>INTR);
   DataReg_reg_Q_4 : dffr port map ( Q=>Q(4), QB=>OPEN, D=>nx233, CLK=>clk, 
      R=>rst);
   ix234 : mux21_ni port map ( Y=>nx233, A0=>Q(4), A1=>Din(4), S0=>INTR);
   DataReg_reg_Q_5 : dffr port map ( Q=>Q(5), QB=>OPEN, D=>nx243, CLK=>clk, 
      R=>rst);
   ix244 : mux21_ni port map ( Y=>nx243, A0=>Q(5), A1=>Din(5), S0=>INTR);
   DataReg_reg_Q_6 : dffr port map ( Q=>Q(6), QB=>OPEN, D=>nx253, CLK=>clk, 
      R=>rst);
   ix254 : mux21_ni port map ( Y=>nx253, A0=>Q(6), A1=>Din(6), S0=>INTR);
   DataReg_reg_Q_7 : dffr port map ( Q=>Q(7), QB=>OPEN, D=>nx263, CLK=>clk, 
      R=>rst);
   ix264 : mux21_ni port map ( Y=>nx263, A0=>Q(7), A1=>Din(7), S0=>INTR);
   DataReg_reg_Q_8 : dffr port map ( Q=>Q(8), QB=>OPEN, D=>nx273, CLK=>clk, 
      R=>rst);
   ix274 : mux21_ni port map ( Y=>nx273, A0=>Q(8), A1=>Din(8), S0=>INTR);
   DataReg_reg_Q_9 : dffr port map ( Q=>Q(9), QB=>OPEN, D=>nx283, CLK=>clk, 
      R=>rst);
   ix284 : mux21_ni port map ( Y=>nx283, A0=>Q(9), A1=>Din(9), S0=>INTR);
   DataReg_reg_Q_10 : dffr port map ( Q=>Q(10), QB=>OPEN, D=>nx293, CLK=>clk, 
      R=>rst);
   ix294 : mux21_ni port map ( Y=>nx293, A0=>Q(10), A1=>Din(10), S0=>INTR);
   DataReg_reg_Q_11 : dffr port map ( Q=>Q(11), QB=>OPEN, D=>nx303, CLK=>clk, 
      R=>rst);
   ix304 : mux21_ni port map ( Y=>nx303, A0=>Q(11), A1=>Din(11), S0=>INTR);
   DataReg_reg_Q_12 : dffr port map ( Q=>Q(12), QB=>OPEN, D=>nx313, CLK=>clk, 
      R=>rst);
   ix314 : mux21_ni port map ( Y=>nx313, A0=>Q(12), A1=>Din(12), S0=>INTR);
   DataReg_reg_Q_13 : dffr port map ( Q=>Q(13), QB=>OPEN, D=>nx323, CLK=>clk, 
      R=>rst);
   ix324 : mux21_ni port map ( Y=>nx323, A0=>Q(13), A1=>Din(13), S0=>INTR);
   DataReg_reg_Q_14 : dffr port map ( Q=>Q(14), QB=>OPEN, D=>nx333, CLK=>clk, 
      R=>rst);
   ix334 : mux21_ni port map ( Y=>nx333, A0=>Q(14), A1=>Din(14), S0=>INTR);
   DataReg_reg_Q_15 : dffr port map ( Q=>Q(15), QB=>OPEN, D=>nx343, CLK=>clk, 
      R=>rst);
   ix344 : mux21_ni port map ( Y=>nx343, A0=>Q(15), A1=>Din(15), S0=>INTR);

end IOInterfaceArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity IO is
   port (
      Din : IN std_logic_vector (15 DOWNTO 0) ;
      doneDMAFC : IN std_logic ;
      doneDMACNN : IN std_logic ;
      doneDMAImage : IN std_logic ;
      INTR : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      processing : IN std_logic ;
      imageOrCNN : IN std_logic ;
      decompZeroState : IN std_logic ;
      doneWithPhase : OUT std_logic ;
      CNNCounterEnable : OUT std_logic ;
      CNNRegisterEnable : OUT std_logic ;
      imageCounterEnable : OUT std_logic ;
      decompDecrementorEnable : OUT std_logic ;
      imageRegisterEnable : OUT std_logic ;
      busy : OUT std_logic ;
      toCNN : OUT std_logic ;
      toFC : OUT std_logic ;
      INTRDelayed : INOUT std_logic ;
      imageLoad : INOUT std_logic ;
      interfaceOutput : INOUT std_logic_vector (15 DOWNTO 0) ;
      result : OUT std_logic_vector (3 DOWNTO 0)) ;
end IO ;

architecture IOArch of IO is
   component IOInterface_16_4
      port (
         Din : IN std_logic_vector (15 DOWNTO 0) ;
         INTR : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         globalCounterEnable : IN std_logic ;
         globalCounterLoad : IN std_logic ;
         zeroState : OUT std_logic ;
         Q : INOUT std_logic_vector (15 DOWNTO 0) ;
         result : OUT std_logic_vector (3 DOWNTO 0)) ;
   end component ;
   signal doneWithPhase_EXMPLR, busy_EXMPLR, globalCounterEnable, zeroState, 
      globalCounterLoad, Controller_stateCounterQ_0, nx18, 
      Controller_CNNOrFC, nx24, nx44, Controller_busyFFQ, nx56, nx134, nx144, 
      nx160, nx164, nx167, nx169, nx171, nx173, nx176, nx188, nx199, nx201: 
   std_logic ;

begin
   doneWithPhase <= doneWithPhase_EXMPLR ;
   CNNCounterEnable <= imageLoad ;
   CNNRegisterEnable <= imageLoad ;
   decompDecrementorEnable <= imageLoad ;
   imageRegisterEnable <= imageLoad ;
   busy <= busy_EXMPLR ;
   Interface : IOInterface_16_4 port map ( Din(15)=>Din(15), Din(14)=>
      Din(14), Din(13)=>Din(13), Din(12)=>Din(12), Din(11)=>Din(11), Din(10)
      =>Din(10), Din(9)=>Din(9), Din(8)=>Din(8), Din(7)=>Din(7), Din(6)=>
      Din(6), Din(5)=>Din(5), Din(4)=>Din(4), Din(3)=>Din(3), Din(2)=>Din(2), 
      Din(1)=>Din(1), Din(0)=>Din(0), INTR=>INTR, clk=>clk, rst=>rst, 
      globalCounterEnable=>globalCounterEnable, globalCounterLoad=>
      globalCounterLoad, zeroState=>zeroState, Q(15)=>interfaceOutput(15), 
      Q(14)=>interfaceOutput(14), Q(13)=>interfaceOutput(13), Q(12)=>
      interfaceOutput(12), Q(11)=>interfaceOutput(11), Q(10)=>
      interfaceOutput(10), Q(9)=>interfaceOutput(9), Q(8)=>
      interfaceOutput(8), Q(7)=>interfaceOutput(7), Q(6)=>interfaceOutput(6), 
      Q(5)=>interfaceOutput(5), Q(4)=>interfaceOutput(4), Q(3)=>
      interfaceOutput(3), Q(2)=>interfaceOutput(2), Q(1)=>interfaceOutput(1), 
      Q(0)=>interfaceOutput(0), result(3)=>result(3), result(2)=>result(2), 
      result(1)=>result(1), result(0)=>result(0));
   ix117 : fake_gnd port map ( Y=>imageLoad);
   ix39 : and02 port map ( Y=>globalCounterLoad, A0=>zeroState, A1=>INTR);
   Controller_INTRFF1_reg_Q : dffr port map ( Q=>INTRDelayed, QB=>nx160, D=>
      nx44, CLK=>clk, R=>rst);
   ix45 : nor02ii port map ( Y=>nx44, A0=>zeroState, A1=>INTR);
   Controller_stateCounter_counterReg_reg_Q_0 : dffr port map ( Q=>
      Controller_stateCounterQ_0, QB=>nx173, D=>nx134, CLK=>clk, R=>rst);
   ix165 : nand02 port map ( Y=>nx164, A0=>imageOrCNN, A1=>
      doneWithPhase_EXMPLR);
   ix168 : inv01 port map ( Y=>nx167, A=>zeroState);
   ix170 : nor02ii port map ( Y=>nx169, A0=>doneDMACNN, A1=>nx171);
   ix172 : aoi21 port map ( Y=>nx171, A0=>decompZeroState, A1=>doneDMAImage, 
      B0=>doneDMAFC);
   ix19 : nand02 port map ( Y=>nx18, A0=>nx176, A1=>imageOrCNN);
   Controller_imageLatcher_reg_Q : dffr port map ( Q=>OPEN, QB=>nx176, D=>
      nx18, CLK=>clk, R=>rst);
   Controller_stateCounter_counterReg_reg_Q_1 : dffr port map ( Q=>
      Controller_CNNOrFC, QB=>OPEN, D=>nx144, CLK=>clk, R=>rst);
   ix145 : mux21_ni port map ( Y=>nx144, A0=>nx24, A1=>Controller_CNNOrFC, 
      S0=>nx164);
   ix37 : nor02ii port map ( Y=>toCNN, A0=>Controller_CNNOrFC, A1=>
      doneDMAImage);
   ix63 : or02 port map ( Y=>busy_EXMPLR, A0=>Controller_busyFFQ, A1=>INTR);
   Controller_busyFF_reg_Q : dffr port map ( Q=>Controller_busyFFQ, QB=>OPEN, 
      D=>busy_EXMPLR, CLK=>clk, R=>nx56);
   ix57 : nand02 port map ( Y=>nx56, A0=>nx169, A1=>nx167);
   ix55 : aoi21 port map ( Y=>imageCounterEnable, A0=>nx160, A1=>nx188, B0=>
      zeroState);
   ix189 : inv01 port map ( Y=>nx188, A=>doneDMAImage);
   ix41 : nand02 port map ( Y=>globalCounterEnable, A0=>nx199, A1=>nx169);
   ix198 : inv01 port map ( Y=>nx199, A=>globalCounterLoad);
   ix33 : nor03_2x port map ( Y=>toFC, A0=>nx173, A1=>nx176, A2=>nx201);
   ix200 : inv01 port map ( Y=>nx201, A=>Controller_CNNOrFC);
   ix135 : xor2 port map ( Y=>nx134, A0=>nx173, A1=>nx164);
   ix7 : nor02ii port map ( Y=>doneWithPhase_EXMPLR, A0=>nx169, A1=>
      zeroState);
   ix25 : xor2 port map ( Y=>nx24, A0=>Controller_CNNOrFC, A1=>
      Controller_stateCounterQ_0);
end IOArch ;


