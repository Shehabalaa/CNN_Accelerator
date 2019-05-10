
-- 
-- Definition of  FcMain
-- 
--      Fri May 10 02:47:33 2019
--      
--      LeonardoSpectrum Level 3, 2018a.2
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RisingHolderFullCycle is
   port (
      edge : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      f : INOUT std_logic) ;
end RisingHolderFullCycle ;

architecture RisingHolderFullCycleArch of RisingHolderFullCycle is
   signal nx0, d, nx8: std_logic ;

begin
   ix1 : fake_vcc port map ( Y=>nx0);
   reg_f : dffr port map ( Q=>f, QB=>OPEN, D=>nx0, CLK=>edge, R=>nx8);
   ix9 : or02 port map ( Y=>nx8, A0=>d, A1=>rst);
   reg_d : dff port map ( Q=>d, QB=>OPEN, D=>f, CLK=>clk);
end RisingHolderFullCycleArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FullAdder is
   port (
      a : IN std_logic ;
      b : IN std_logic ;
      cin : IN std_logic ;
      s : OUT std_logic ;
      cout : OUT std_logic) ;
end FullAdder ;

architecture FullAdderArch of FullAdder is
   signal nx0, nx69: std_logic ;

begin
   ix7 : ao22 port map ( Y=>cout, A0=>b, A1=>a, B0=>cin, B1=>nx0);
   ix9 : xnor2 port map ( Y=>s, A0=>nx69, A1=>cin);
   ix70 : xnor2 port map ( Y=>nx69, A0=>a, A1=>b);
   ix1 : inv01 port map ( Y=>nx0, A=>nx69);
end FullAdderArch ;

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

architecture NBitAdderArch of NBitAdder_16 is
   component FullAdder
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   signal temp_14, temp_13, temp_12, temp_11, temp_10, temp_9, temp_8, 
      temp_7, temp_6, temp_5, temp_4, temp_3, temp_2, temp_1, temp_0: 
   std_logic ;

begin
   f0 : FullAdder port map ( a=>a(0), b=>b(0), cin=>carryIn, s=>sum(0), cout
      =>temp_0);
   loop1_1_fx : FullAdder port map ( a=>a(1), b=>b(1), cin=>temp_0, s=>
      sum(1), cout=>temp_1);
   loop1_2_fx : FullAdder port map ( a=>a(2), b=>b(2), cin=>temp_1, s=>
      sum(2), cout=>temp_2);
   loop1_3_fx : FullAdder port map ( a=>a(3), b=>b(3), cin=>temp_2, s=>
      sum(3), cout=>temp_3);
   loop1_4_fx : FullAdder port map ( a=>a(4), b=>b(4), cin=>temp_3, s=>
      sum(4), cout=>temp_4);
   loop1_5_fx : FullAdder port map ( a=>a(5), b=>b(5), cin=>temp_4, s=>
      sum(5), cout=>temp_5);
   loop1_6_fx : FullAdder port map ( a=>a(6), b=>b(6), cin=>temp_5, s=>
      sum(6), cout=>temp_6);
   loop1_7_fx : FullAdder port map ( a=>a(7), b=>b(7), cin=>temp_6, s=>
      sum(7), cout=>temp_7);
   loop1_8_fx : FullAdder port map ( a=>a(8), b=>b(8), cin=>temp_7, s=>
      sum(8), cout=>temp_8);
   loop1_9_fx : FullAdder port map ( a=>a(9), b=>b(9), cin=>temp_8, s=>
      sum(9), cout=>temp_9);
   loop1_10_fx : FullAdder port map ( a=>a(10), b=>b(10), cin=>temp_9, s=>
      sum(10), cout=>temp_10);
   loop1_11_fx : FullAdder port map ( a=>a(11), b=>b(11), cin=>temp_10, s=>
      sum(11), cout=>temp_11);
   loop1_12_fx : FullAdder port map ( a=>a(12), b=>b(12), cin=>temp_11, s=>
      sum(12), cout=>temp_12);
   loop1_13_fx : FullAdder port map ( a=>a(13), b=>b(13), cin=>temp_12, s=>
      sum(13), cout=>temp_13);
   loop1_14_fx : FullAdder port map ( a=>a(14), b=>b(14), cin=>temp_13, s=>
      sum(14), cout=>temp_14);
   loop1_15_fx : FullAdder port map ( a=>a(15), b=>b(15), cin=>temp_14, s=>
      sum(15), cout=>carryOut);
end NBitAdderArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CounterUpDown_16 is
   port (
      load : IN std_logic_vector (15 DOWNTO 0) ;
      resetValue : IN std_logic_vector (15 DOWNTO 0) ;
      clk : IN std_logic ;
      en : IN std_logic ;
      rst : IN std_logic ;
      isLoad : IN std_logic ;
      upOrDown : IN std_logic ;
      count : OUT std_logic_vector (15 DOWNTO 0)) ;
end CounterUpDown_16 ;

architecture CounterUpDownArch of CounterUpDown_16 is
   component NBitAdder_16
      port (
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         carryIn : IN std_logic ;
         sum : OUT std_logic_vector (15 DOWNTO 0) ;
         carryOut : OUT std_logic) ;
   end component ;
   signal count_15_EXMPLR, count_14_EXMPLR, count_13_EXMPLR, count_12_EXMPLR, 
      count_11_EXMPLR, count_10_EXMPLR, count_9_EXMPLR, count_8_EXMPLR, 
      count_7_EXMPLR, count_6_EXMPLR, count_5_EXMPLR, count_4_EXMPLR, 
      count_3_EXMPLR, count_2_EXMPLR, count_1_EXMPLR, count_0_EXMPLR, 
      countAdded_15, countAdded_14, countAdded_13, countAdded_12, 
      countAdded_11, countAdded_10, countAdded_9, countAdded_8, countAdded_7, 
      countAdded_6, countAdded_5, countAdded_4, countAdded_3, countAdded_2, 
      countAdded_1, countAdded_0, NOT_upOrDown, nx8, nx10, nx14, nx24, nx26, 
      nx30, nx40, nx42, nx46, nx56, nx58, nx62, nx72, nx74, nx78, nx88, nx90, 
      nx94, nx104, nx106, nx110, nx120, nx122, nx126, nx136, nx138, nx142, 
      nx152, nx154, nx158, nx168, nx170, nx174, nx184, nx186, nx190, nx200, 
      nx202, nx206, nx216, nx218, nx222, nx232, nx234, nx238, nx248, nx250, 
      nx254, nx598, nx608, nx618, nx628, nx638, nx648, nx658, nx668, nx678, 
      nx688, nx698, nx708, nx718, nx728, nx738, nx748, nx765, nx867, nx869, 
      nx881, nx883, nx885, nx887: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   count(15) <= count_15_EXMPLR ;
   count(14) <= count_14_EXMPLR ;
   count(13) <= count_13_EXMPLR ;
   count(12) <= count_12_EXMPLR ;
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
   nextCount : NBitAdder_16 port map ( a(15)=>count_15_EXMPLR, a(14)=>
      count_14_EXMPLR, a(13)=>count_13_EXMPLR, a(12)=>count_12_EXMPLR, a(11)
      =>count_11_EXMPLR, a(10)=>count_10_EXMPLR, a(9)=>count_9_EXMPLR, a(8)
      =>count_8_EXMPLR, a(7)=>count_7_EXMPLR, a(6)=>count_6_EXMPLR, a(5)=>
      count_5_EXMPLR, a(4)=>count_4_EXMPLR, a(3)=>count_3_EXMPLR, a(2)=>
      count_2_EXMPLR, a(1)=>count_1_EXMPLR, a(0)=>count_0_EXMPLR, b(15)=>
      upOrDown, b(14)=>upOrDown, b(13)=>upOrDown, b(12)=>upOrDown, b(11)=>
      upOrDown, b(10)=>upOrDown, b(9)=>upOrDown, b(8)=>upOrDown, b(7)=>
      upOrDown, b(6)=>upOrDown, b(5)=>upOrDown, b(4)=>upOrDown, b(3)=>
      upOrDown, b(2)=>upOrDown, b(1)=>upOrDown, b(0)=>upOrDown, carryIn=>
      NOT_upOrDown, sum(15)=>countAdded_15, sum(14)=>countAdded_14, sum(13)
      =>countAdded_13, sum(12)=>countAdded_12, sum(11)=>countAdded_11, 
      sum(10)=>countAdded_10, sum(9)=>countAdded_9, sum(8)=>countAdded_8, 
      sum(7)=>countAdded_7, sum(6)=>countAdded_6, sum(5)=>countAdded_5, 
      sum(4)=>countAdded_4, sum(3)=>countAdded_3, sum(2)=>countAdded_2, 
      sum(1)=>countAdded_1, sum(0)=>countAdded_0, carryOut=>DANGLING(0));
   ix761 : inv01 port map ( Y=>NOT_upOrDown, A=>upOrDown);
   reg_currentCount_0 : dffsr_ni port map ( Q=>count_0_EXMPLR, QB=>OPEN, D=>
      nx598, CLK=>clk, S=>nx10, R=>nx14);
   ix599 : mux21_ni port map ( Y=>nx598, A0=>nx8, A1=>count_0_EXMPLR, S0=>
      nx867);
   ix9 : mux21_ni port map ( Y=>nx8, A0=>load(0), A1=>countAdded_0, S0=>
      nx883);
   ix766 : nor02_2x port map ( Y=>nx765, A0=>nx883, A1=>isLoad);
   ix11 : and02 port map ( Y=>nx10, A0=>resetValue(0), A1=>rst);
   reg_currentCount_1 : dffsr_ni port map ( Q=>count_1_EXMPLR, QB=>OPEN, D=>
      nx608, CLK=>clk, S=>nx26, R=>nx30);
   ix609 : mux21_ni port map ( Y=>nx608, A0=>nx24, A1=>count_1_EXMPLR, S0=>
      nx867);
   ix25 : mux21_ni port map ( Y=>nx24, A0=>load(1), A1=>countAdded_1, S0=>
      nx883);
   ix27 : and02 port map ( Y=>nx26, A0=>resetValue(1), A1=>rst);
   reg_currentCount_2 : dffsr_ni port map ( Q=>count_2_EXMPLR, QB=>OPEN, D=>
      nx618, CLK=>clk, S=>nx42, R=>nx46);
   ix619 : mux21_ni port map ( Y=>nx618, A0=>nx40, A1=>count_2_EXMPLR, S0=>
      nx867);
   ix41 : mux21_ni port map ( Y=>nx40, A0=>load(2), A1=>countAdded_2, S0=>
      nx883);
   ix43 : and02 port map ( Y=>nx42, A0=>resetValue(2), A1=>rst);
   reg_currentCount_3 : dffsr_ni port map ( Q=>count_3_EXMPLR, QB=>OPEN, D=>
      nx628, CLK=>clk, S=>nx58, R=>nx62);
   ix629 : mux21_ni port map ( Y=>nx628, A0=>nx56, A1=>count_3_EXMPLR, S0=>
      nx867);
   ix57 : mux21_ni port map ( Y=>nx56, A0=>load(3), A1=>countAdded_3, S0=>
      nx883);
   ix59 : and02 port map ( Y=>nx58, A0=>resetValue(3), A1=>rst);
   reg_currentCount_4 : dffsr_ni port map ( Q=>count_4_EXMPLR, QB=>OPEN, D=>
      nx638, CLK=>clk, S=>nx74, R=>nx78);
   ix639 : mux21_ni port map ( Y=>nx638, A0=>nx72, A1=>count_4_EXMPLR, S0=>
      nx867);
   ix73 : mux21_ni port map ( Y=>nx72, A0=>load(4), A1=>countAdded_4, S0=>
      nx883);
   ix75 : and02 port map ( Y=>nx74, A0=>resetValue(4), A1=>rst);
   reg_currentCount_5 : dffsr_ni port map ( Q=>count_5_EXMPLR, QB=>OPEN, D=>
      nx648, CLK=>clk, S=>nx90, R=>nx94);
   ix649 : mux21_ni port map ( Y=>nx648, A0=>nx88, A1=>count_5_EXMPLR, S0=>
      nx867);
   ix89 : mux21_ni port map ( Y=>nx88, A0=>load(5), A1=>countAdded_5, S0=>
      nx883);
   ix91 : and02 port map ( Y=>nx90, A0=>resetValue(5), A1=>rst);
   reg_currentCount_6 : dffsr_ni port map ( Q=>count_6_EXMPLR, QB=>OPEN, D=>
      nx658, CLK=>clk, S=>nx106, R=>nx110);
   ix659 : mux21_ni port map ( Y=>nx658, A0=>nx104, A1=>count_6_EXMPLR, S0=>
      nx869);
   ix105 : mux21_ni port map ( Y=>nx104, A0=>load(6), A1=>countAdded_6, S0=>
      nx885);
   ix107 : and02 port map ( Y=>nx106, A0=>resetValue(6), A1=>rst);
   reg_currentCount_7 : dffsr_ni port map ( Q=>count_7_EXMPLR, QB=>OPEN, D=>
      nx668, CLK=>clk, S=>nx122, R=>nx126);
   ix669 : mux21_ni port map ( Y=>nx668, A0=>nx120, A1=>count_7_EXMPLR, S0=>
      nx869);
   ix121 : mux21_ni port map ( Y=>nx120, A0=>load(7), A1=>countAdded_7, S0=>
      nx885);
   ix123 : and02 port map ( Y=>nx122, A0=>resetValue(7), A1=>rst);
   reg_currentCount_8 : dffsr_ni port map ( Q=>count_8_EXMPLR, QB=>OPEN, D=>
      nx678, CLK=>clk, S=>nx138, R=>nx142);
   ix679 : mux21_ni port map ( Y=>nx678, A0=>nx136, A1=>count_8_EXMPLR, S0=>
      nx869);
   ix137 : mux21_ni port map ( Y=>nx136, A0=>load(8), A1=>countAdded_8, S0=>
      nx885);
   ix139 : and02 port map ( Y=>nx138, A0=>resetValue(8), A1=>rst);
   reg_currentCount_9 : dffsr_ni port map ( Q=>count_9_EXMPLR, QB=>OPEN, D=>
      nx688, CLK=>clk, S=>nx154, R=>nx158);
   ix689 : mux21_ni port map ( Y=>nx688, A0=>nx152, A1=>count_9_EXMPLR, S0=>
      nx869);
   ix153 : mux21_ni port map ( Y=>nx152, A0=>load(9), A1=>countAdded_9, S0=>
      nx885);
   ix155 : and02 port map ( Y=>nx154, A0=>resetValue(9), A1=>rst);
   reg_currentCount_10 : dffsr_ni port map ( Q=>count_10_EXMPLR, QB=>OPEN, D
      =>nx698, CLK=>clk, S=>nx170, R=>nx174);
   ix699 : mux21_ni port map ( Y=>nx698, A0=>nx168, A1=>count_10_EXMPLR, S0
      =>nx869);
   ix169 : mux21_ni port map ( Y=>nx168, A0=>load(10), A1=>countAdded_10, S0
      =>nx885);
   ix171 : and02 port map ( Y=>nx170, A0=>resetValue(10), A1=>rst);
   reg_currentCount_11 : dffsr_ni port map ( Q=>count_11_EXMPLR, QB=>OPEN, D
      =>nx708, CLK=>clk, S=>nx186, R=>nx190);
   ix709 : mux21_ni port map ( Y=>nx708, A0=>nx184, A1=>count_11_EXMPLR, S0
      =>nx869);
   ix185 : mux21_ni port map ( Y=>nx184, A0=>load(11), A1=>countAdded_11, S0
      =>nx885);
   ix187 : and02 port map ( Y=>nx186, A0=>resetValue(11), A1=>rst);
   reg_currentCount_12 : dffsr_ni port map ( Q=>count_12_EXMPLR, QB=>OPEN, D
      =>nx718, CLK=>clk, S=>nx202, R=>nx206);
   ix719 : mux21_ni port map ( Y=>nx718, A0=>nx200, A1=>count_12_EXMPLR, S0
      =>nx765);
   ix201 : mux21_ni port map ( Y=>nx200, A0=>load(12), A1=>countAdded_12, S0
      =>nx885);
   ix203 : and02 port map ( Y=>nx202, A0=>resetValue(12), A1=>rst);
   reg_currentCount_13 : dffsr_ni port map ( Q=>count_13_EXMPLR, QB=>OPEN, D
      =>nx728, CLK=>clk, S=>nx218, R=>nx222);
   ix729 : mux21_ni port map ( Y=>nx728, A0=>nx216, A1=>count_13_EXMPLR, S0
      =>nx765);
   ix217 : mux21_ni port map ( Y=>nx216, A0=>load(13), A1=>countAdded_13, S0
      =>nx887);
   ix219 : and02 port map ( Y=>nx218, A0=>resetValue(13), A1=>rst);
   reg_currentCount_14 : dffsr_ni port map ( Q=>count_14_EXMPLR, QB=>OPEN, D
      =>nx738, CLK=>clk, S=>nx234, R=>nx238);
   ix739 : mux21_ni port map ( Y=>nx738, A0=>nx232, A1=>count_14_EXMPLR, S0
      =>nx765);
   ix233 : mux21_ni port map ( Y=>nx232, A0=>load(14), A1=>countAdded_14, S0
      =>nx887);
   ix235 : and02 port map ( Y=>nx234, A0=>resetValue(14), A1=>rst);
   reg_currentCount_15 : dffsr_ni port map ( Q=>count_15_EXMPLR, QB=>OPEN, D
      =>nx748, CLK=>clk, S=>nx250, R=>nx254);
   ix749 : mux21_ni port map ( Y=>nx748, A0=>nx248, A1=>count_15_EXMPLR, S0
      =>nx765);
   ix249 : mux21_ni port map ( Y=>nx248, A0=>load(15), A1=>countAdded_15, S0
      =>nx887);
   ix251 : and02 port map ( Y=>nx250, A0=>resetValue(15), A1=>rst);
   ix866 : nor02_2x port map ( Y=>nx867, A0=>nx887, A1=>isLoad);
   ix868 : nor02_2x port map ( Y=>nx869, A0=>nx887, A1=>isLoad);
   ix15 : nor02ii port map ( Y=>nx14, A0=>resetValue(0), A1=>rst);
   ix31 : nor02ii port map ( Y=>nx30, A0=>resetValue(1), A1=>rst);
   ix47 : nor02ii port map ( Y=>nx46, A0=>resetValue(2), A1=>rst);
   ix63 : nor02ii port map ( Y=>nx62, A0=>resetValue(3), A1=>rst);
   ix79 : nor02ii port map ( Y=>nx78, A0=>resetValue(4), A1=>rst);
   ix95 : nor02ii port map ( Y=>nx94, A0=>resetValue(5), A1=>rst);
   ix111 : nor02ii port map ( Y=>nx110, A0=>resetValue(6), A1=>rst);
   ix127 : nor02ii port map ( Y=>nx126, A0=>resetValue(7), A1=>rst);
   ix143 : nor02ii port map ( Y=>nx142, A0=>resetValue(8), A1=>rst);
   ix159 : nor02ii port map ( Y=>nx158, A0=>resetValue(9), A1=>rst);
   ix175 : nor02ii port map ( Y=>nx174, A0=>resetValue(10), A1=>rst);
   ix191 : nor02ii port map ( Y=>nx190, A0=>resetValue(11), A1=>rst);
   ix207 : nor02ii port map ( Y=>nx206, A0=>resetValue(12), A1=>rst);
   ix223 : nor02ii port map ( Y=>nx222, A0=>resetValue(13), A1=>rst);
   ix239 : nor02ii port map ( Y=>nx238, A0=>resetValue(14), A1=>rst);
   ix255 : nor02ii port map ( Y=>nx254, A0=>resetValue(15), A1=>rst);
   ix880 : inv01 port map ( Y=>nx881, A=>en);
   ix882 : inv02 port map ( Y=>nx883, A=>nx881);
   ix884 : inv02 port map ( Y=>nx885, A=>nx881);
   ix886 : inv02 port map ( Y=>nx887, A=>nx881);
end CounterUpDownArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_16 is
   port (
      A : IN std_logic_vector (15 DOWNTO 0) ;
      B : IN std_logic_vector (15 DOWNTO 0) ;
      S : IN std_logic ;
      C : OUT std_logic_vector (15 DOWNTO 0)) ;
end Mux2_16 ;

architecture Mux2Arch of Mux2_16 is
   signal nx173, nx175, nx177, nx179: std_logic ;

begin
   ix7 : mux21_ni port map ( Y=>C(0), A0=>A(0), A1=>B(0), S0=>nx175);
   ix15 : mux21_ni port map ( Y=>C(1), A0=>A(1), A1=>B(1), S0=>nx175);
   ix23 : mux21_ni port map ( Y=>C(2), A0=>A(2), A1=>B(2), S0=>nx175);
   ix31 : mux21_ni port map ( Y=>C(3), A0=>A(3), A1=>B(3), S0=>nx175);
   ix39 : mux21_ni port map ( Y=>C(4), A0=>A(4), A1=>B(4), S0=>nx175);
   ix47 : mux21_ni port map ( Y=>C(5), A0=>A(5), A1=>B(5), S0=>nx175);
   ix55 : mux21_ni port map ( Y=>C(6), A0=>A(6), A1=>B(6), S0=>nx175);
   ix63 : mux21_ni port map ( Y=>C(7), A0=>A(7), A1=>B(7), S0=>nx177);
   ix71 : mux21_ni port map ( Y=>C(8), A0=>A(8), A1=>B(8), S0=>nx177);
   ix79 : mux21_ni port map ( Y=>C(9), A0=>A(9), A1=>B(9), S0=>nx177);
   ix87 : mux21_ni port map ( Y=>C(10), A0=>A(10), A1=>B(10), S0=>nx177);
   ix95 : mux21_ni port map ( Y=>C(11), A0=>A(11), A1=>B(11), S0=>nx177);
   ix103 : mux21_ni port map ( Y=>C(12), A0=>A(12), A1=>B(12), S0=>nx177);
   ix111 : mux21_ni port map ( Y=>C(13), A0=>A(13), A1=>B(13), S0=>nx177);
   ix119 : mux21_ni port map ( Y=>C(14), A0=>A(14), A1=>B(14), S0=>nx179);
   ix127 : mux21_ni port map ( Y=>C(15), A0=>A(15), A1=>B(15), S0=>nx179);
   ix172 : inv01 port map ( Y=>nx173, A=>S);
   ix174 : inv02 port map ( Y=>nx175, A=>nx173);
   ix176 : inv02 port map ( Y=>nx177, A=>nx173);
   ix178 : inv02 port map ( Y=>nx179, A=>nx173);
end Mux2Arch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RegTony_16 is
   port (
      D : IN std_logic_vector (15 DOWNTO 0) ;
      load : IN std_logic_vector (15 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      Q : OUT std_logic_vector (15 DOWNTO 0) ;
      Qbar : OUT std_logic_vector (15 DOWNTO 0)) ;
end RegTony_16 ;

architecture RegTonyArch of RegTony_16 is
   signal Q_15_EXMPLR, Q_14_EXMPLR, Q_13_EXMPLR, Q_12_EXMPLR, Q_11_EXMPLR, 
      Q_10_EXMPLR, Q_9_EXMPLR, Q_8_EXMPLR, Q_7_EXMPLR, Q_6_EXMPLR, 
      Q_5_EXMPLR, Q_4_EXMPLR, Q_3_EXMPLR, Q_2_EXMPLR, Q_1_EXMPLR, Q_0_EXMPLR, 
      Qbar_15_EXMPLR, Qbar_14_EXMPLR, Qbar_13_EXMPLR, Qbar_12_EXMPLR, 
      Qbar_11_EXMPLR, Qbar_10_EXMPLR, Qbar_9_EXMPLR, Qbar_8_EXMPLR, 
      Qbar_7_EXMPLR, Qbar_6_EXMPLR, Qbar_5_EXMPLR, Qbar_4_EXMPLR, 
      Qbar_3_EXMPLR, Qbar_2_EXMPLR, Qbar_1_EXMPLR, Qbar_0_EXMPLR, nx0, nx4, 
      nx8, nx12, nx16, nx20, nx24, nx28, nx32, nx36, nx40, nx44, nx48, nx52, 
      nx56, nx60, nx64, nx68, nx72, nx76, nx80, nx84, nx88, nx92, nx96, 
      nx100, nx104, nx108, nx112, nx116, nx120, nx124, nx536, nx546, nx556, 
      nx566, nx576, nx586, nx596, nx606, nx616, nx626, nx636, nx646, nx656, 
      nx666, nx676, nx686, nx696, nx706, nx716, nx726, nx736, nx746, nx756, 
      nx766, nx776, nx786, nx796, nx806, nx816, nx826, nx836, nx860, nx869, 
      nx876, nx883, nx890, nx897, nx904, nx911, nx918, nx925, nx932, nx939, 
      nx946, nx953, nx960, nx1035, nx1037, nx1039, nx1041, nx1043, nx1045, 
      nx1047, nx1049, nx1051, nx1055, nx1057, nx1094, nx1053, nx846: 
   std_logic ;

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
   Qbar(15) <= Qbar_15_EXMPLR ;
   Qbar(14) <= Qbar_14_EXMPLR ;
   Qbar(13) <= Qbar_13_EXMPLR ;
   Qbar(12) <= Qbar_12_EXMPLR ;
   Qbar(11) <= Qbar_11_EXMPLR ;
   Qbar(10) <= Qbar_10_EXMPLR ;
   Qbar(9) <= Qbar_9_EXMPLR ;
   Qbar(8) <= Qbar_8_EXMPLR ;
   Qbar(7) <= Qbar_7_EXMPLR ;
   Qbar(6) <= Qbar_6_EXMPLR ;
   Qbar(5) <= Qbar_5_EXMPLR ;
   Qbar(4) <= Qbar_4_EXMPLR ;
   Qbar(3) <= Qbar_3_EXMPLR ;
   Qbar(2) <= Qbar_2_EXMPLR ;
   Qbar(1) <= Qbar_1_EXMPLR ;
   Qbar(0) <= Qbar_0_EXMPLR ;
   reg_Qbar_0 : dffsr_ni port map ( Q=>Qbar_0_EXMPLR, QB=>OPEN, D=>nx696, 
      CLK=>clk, S=>nx4, R=>nx0);
   ix697 : mux21_ni port map ( Y=>nx696, A0=>Qbar_0_EXMPLR, A1=>nx860, S0=>
      nx1049);
   ix861 : inv01 port map ( Y=>nx860, A=>D(0));
   ix1 : and02 port map ( Y=>nx0, A0=>nx1037, A1=>load(0));
   reg_Qbar_1 : dffsr_ni port map ( Q=>Qbar_1_EXMPLR, QB=>OPEN, D=>nx706, 
      CLK=>clk, S=>nx12, R=>nx8);
   ix707 : mux21_ni port map ( Y=>nx706, A0=>Qbar_1_EXMPLR, A1=>nx869, S0=>
      nx1049);
   ix870 : inv01 port map ( Y=>nx869, A=>D(1));
   ix9 : and02 port map ( Y=>nx8, A0=>nx1037, A1=>load(1));
   reg_Qbar_2 : dffsr_ni port map ( Q=>Qbar_2_EXMPLR, QB=>OPEN, D=>nx716, 
      CLK=>clk, S=>nx20, R=>nx16);
   ix717 : mux21_ni port map ( Y=>nx716, A0=>Qbar_2_EXMPLR, A1=>nx876, S0=>
      nx1049);
   ix877 : inv01 port map ( Y=>nx876, A=>D(2));
   ix17 : and02 port map ( Y=>nx16, A0=>nx1037, A1=>load(2));
   reg_Qbar_3 : dffsr_ni port map ( Q=>Qbar_3_EXMPLR, QB=>OPEN, D=>nx726, 
      CLK=>clk, S=>nx28, R=>nx24);
   ix727 : mux21_ni port map ( Y=>nx726, A0=>Qbar_3_EXMPLR, A1=>nx883, S0=>
      nx1049);
   ix884 : inv01 port map ( Y=>nx883, A=>D(3));
   ix25 : and02 port map ( Y=>nx24, A0=>nx1037, A1=>load(3));
   reg_Qbar_4 : dffsr_ni port map ( Q=>Qbar_4_EXMPLR, QB=>OPEN, D=>nx736, 
      CLK=>clk, S=>nx36, R=>nx32);
   ix737 : mux21_ni port map ( Y=>nx736, A0=>Qbar_4_EXMPLR, A1=>nx890, S0=>
      nx1049);
   ix891 : inv01 port map ( Y=>nx890, A=>D(4));
   ix33 : and02 port map ( Y=>nx32, A0=>nx1037, A1=>load(4));
   reg_Qbar_5 : dffsr_ni port map ( Q=>Qbar_5_EXMPLR, QB=>OPEN, D=>nx746, 
      CLK=>clk, S=>nx44, R=>nx40);
   ix747 : mux21_ni port map ( Y=>nx746, A0=>Qbar_5_EXMPLR, A1=>nx897, S0=>
      nx1049);
   ix898 : inv01 port map ( Y=>nx897, A=>D(5));
   ix41 : and02 port map ( Y=>nx40, A0=>nx1037, A1=>load(5));
   reg_Qbar_6 : dffsr_ni port map ( Q=>Qbar_6_EXMPLR, QB=>OPEN, D=>nx756, 
      CLK=>clk, S=>nx52, R=>nx48);
   ix757 : mux21_ni port map ( Y=>nx756, A0=>Qbar_6_EXMPLR, A1=>nx904, S0=>
      nx1049);
   ix905 : inv01 port map ( Y=>nx904, A=>D(6));
   ix49 : and02 port map ( Y=>nx48, A0=>nx1037, A1=>load(6));
   reg_Qbar_7 : dffsr_ni port map ( Q=>Qbar_7_EXMPLR, QB=>OPEN, D=>nx766, 
      CLK=>clk, S=>nx60, R=>nx56);
   ix767 : mux21_ni port map ( Y=>nx766, A0=>Qbar_7_EXMPLR, A1=>nx911, S0=>
      nx1051);
   ix912 : inv01 port map ( Y=>nx911, A=>D(7));
   ix57 : and02 port map ( Y=>nx56, A0=>nx1039, A1=>load(7));
   reg_Qbar_8 : dffsr_ni port map ( Q=>Qbar_8_EXMPLR, QB=>OPEN, D=>nx776, 
      CLK=>clk, S=>nx68, R=>nx64);
   ix777 : mux21_ni port map ( Y=>nx776, A0=>Qbar_8_EXMPLR, A1=>nx918, S0=>
      nx1051);
   ix919 : inv01 port map ( Y=>nx918, A=>D(8));
   ix65 : and02 port map ( Y=>nx64, A0=>nx1039, A1=>load(8));
   reg_Qbar_9 : dffsr_ni port map ( Q=>Qbar_9_EXMPLR, QB=>OPEN, D=>nx786, 
      CLK=>clk, S=>nx76, R=>nx72);
   ix787 : mux21_ni port map ( Y=>nx786, A0=>Qbar_9_EXMPLR, A1=>nx925, S0=>
      nx1051);
   ix926 : inv01 port map ( Y=>nx925, A=>D(9));
   ix73 : and02 port map ( Y=>nx72, A0=>nx1039, A1=>load(9));
   reg_Qbar_10 : dffsr_ni port map ( Q=>Qbar_10_EXMPLR, QB=>OPEN, D=>nx796, 
      CLK=>clk, S=>nx84, R=>nx80);
   ix797 : mux21_ni port map ( Y=>nx796, A0=>Qbar_10_EXMPLR, A1=>nx932, S0=>
      nx1051);
   ix933 : inv01 port map ( Y=>nx932, A=>D(10));
   ix81 : and02 port map ( Y=>nx80, A0=>nx1039, A1=>load(10));
   reg_Qbar_11 : dffsr_ni port map ( Q=>Qbar_11_EXMPLR, QB=>OPEN, D=>nx806, 
      CLK=>clk, S=>nx92, R=>nx88);
   ix807 : mux21_ni port map ( Y=>nx806, A0=>Qbar_11_EXMPLR, A1=>nx939, S0=>
      nx1051);
   ix940 : inv01 port map ( Y=>nx939, A=>D(11));
   ix89 : and02 port map ( Y=>nx88, A0=>nx1039, A1=>load(11));
   reg_Qbar_12 : dffsr_ni port map ( Q=>Qbar_12_EXMPLR, QB=>OPEN, D=>nx816, 
      CLK=>clk, S=>nx100, R=>nx96);
   ix817 : mux21_ni port map ( Y=>nx816, A0=>Qbar_12_EXMPLR, A1=>nx946, S0=>
      nx1051);
   ix947 : inv01 port map ( Y=>nx946, A=>D(12));
   ix97 : and02 port map ( Y=>nx96, A0=>nx1039, A1=>load(12));
   reg_Qbar_13 : dffsr_ni port map ( Q=>Qbar_13_EXMPLR, QB=>OPEN, D=>nx826, 
      CLK=>clk, S=>nx108, R=>nx104);
   ix827 : mux21_ni port map ( Y=>nx826, A0=>Qbar_13_EXMPLR, A1=>nx953, S0=>
      nx1051);
   ix954 : inv01 port map ( Y=>nx953, A=>D(13));
   ix105 : and02 port map ( Y=>nx104, A0=>nx1039, A1=>load(13));
   reg_Qbar_14 : dffsr_ni port map ( Q=>Qbar_14_EXMPLR, QB=>OPEN, D=>nx836, 
      CLK=>clk, S=>nx116, R=>nx112);
   ix837 : mux21_ni port map ( Y=>nx836, A0=>Qbar_14_EXMPLR, A1=>nx960, S0=>
      nx1053);
   ix961 : inv01 port map ( Y=>nx960, A=>D(14));
   ix113 : and02 port map ( Y=>nx112, A0=>nx1041, A1=>load(14));
   reg_Qbar_15 : dffsr_ni port map ( Q=>Qbar_15_EXMPLR, QB=>OPEN, D=>nx846, 
      CLK=>clk, S=>nx124, R=>nx120);
   ix121 : and02 port map ( Y=>nx120, A0=>nx1041, A1=>load(15));
   reg_Q_0 : dffsr_ni port map ( Q=>Q_0_EXMPLR, QB=>OPEN, D=>nx536, CLK=>clk, 
      S=>nx0, R=>nx4);
   ix537 : mux21_ni port map ( Y=>nx536, A0=>Q_0_EXMPLR, A1=>D(0), S0=>
      nx1053);
   reg_Q_1 : dffsr_ni port map ( Q=>Q_1_EXMPLR, QB=>OPEN, D=>nx546, CLK=>clk, 
      S=>nx8, R=>nx12);
   ix547 : mux21_ni port map ( Y=>nx546, A0=>Q_1_EXMPLR, A1=>D(1), S0=>
      nx1053);
   reg_Q_2 : dffsr_ni port map ( Q=>Q_2_EXMPLR, QB=>OPEN, D=>nx556, CLK=>clk, 
      S=>nx16, R=>nx20);
   ix557 : mux21_ni port map ( Y=>nx556, A0=>Q_2_EXMPLR, A1=>D(2), S0=>
      nx1053);
   reg_Q_3 : dffsr_ni port map ( Q=>Q_3_EXMPLR, QB=>OPEN, D=>nx566, CLK=>clk, 
      S=>nx24, R=>nx28);
   ix567 : mux21_ni port map ( Y=>nx566, A0=>Q_3_EXMPLR, A1=>D(3), S0=>
      nx1053);
   reg_Q_4 : dffsr_ni port map ( Q=>Q_4_EXMPLR, QB=>OPEN, D=>nx576, CLK=>clk, 
      S=>nx32, R=>nx36);
   ix577 : mux21_ni port map ( Y=>nx576, A0=>Q_4_EXMPLR, A1=>D(4), S0=>
      nx1053);
   reg_Q_5 : dffsr_ni port map ( Q=>Q_5_EXMPLR, QB=>OPEN, D=>nx586, CLK=>clk, 
      S=>nx40, R=>nx44);
   ix587 : mux21_ni port map ( Y=>nx586, A0=>Q_5_EXMPLR, A1=>D(5), S0=>
      nx1055);
   reg_Q_6 : dffsr_ni port map ( Q=>Q_6_EXMPLR, QB=>OPEN, D=>nx596, CLK=>clk, 
      S=>nx48, R=>nx52);
   ix597 : mux21_ni port map ( Y=>nx596, A0=>Q_6_EXMPLR, A1=>D(6), S0=>
      nx1055);
   reg_Q_7 : dffsr_ni port map ( Q=>Q_7_EXMPLR, QB=>OPEN, D=>nx606, CLK=>clk, 
      S=>nx56, R=>nx60);
   ix607 : mux21_ni port map ( Y=>nx606, A0=>Q_7_EXMPLR, A1=>D(7), S0=>
      nx1055);
   reg_Q_8 : dffsr_ni port map ( Q=>Q_8_EXMPLR, QB=>OPEN, D=>nx616, CLK=>clk, 
      S=>nx64, R=>nx68);
   ix617 : mux21_ni port map ( Y=>nx616, A0=>Q_8_EXMPLR, A1=>D(8), S0=>
      nx1055);
   reg_Q_9 : dffsr_ni port map ( Q=>Q_9_EXMPLR, QB=>OPEN, D=>nx626, CLK=>clk, 
      S=>nx72, R=>nx76);
   ix627 : mux21_ni port map ( Y=>nx626, A0=>Q_9_EXMPLR, A1=>D(9), S0=>
      nx1055);
   reg_Q_10 : dffsr_ni port map ( Q=>Q_10_EXMPLR, QB=>OPEN, D=>nx636, CLK=>
      clk, S=>nx80, R=>nx84);
   ix637 : mux21_ni port map ( Y=>nx636, A0=>Q_10_EXMPLR, A1=>D(10), S0=>
      nx1055);
   reg_Q_11 : dffsr_ni port map ( Q=>Q_11_EXMPLR, QB=>OPEN, D=>nx646, CLK=>
      clk, S=>nx88, R=>nx92);
   ix647 : mux21_ni port map ( Y=>nx646, A0=>Q_11_EXMPLR, A1=>D(11), S0=>
      nx1055);
   reg_Q_12 : dffsr_ni port map ( Q=>Q_12_EXMPLR, QB=>OPEN, D=>nx656, CLK=>
      clk, S=>nx96, R=>nx100);
   ix657 : mux21_ni port map ( Y=>nx656, A0=>Q_12_EXMPLR, A1=>D(12), S0=>
      nx1057);
   reg_Q_13 : dffsr_ni port map ( Q=>Q_13_EXMPLR, QB=>OPEN, D=>nx666, CLK=>
      clk, S=>nx104, R=>nx108);
   ix667 : mux21_ni port map ( Y=>nx666, A0=>Q_13_EXMPLR, A1=>D(13), S0=>
      nx1057);
   reg_Q_14 : dffsr_ni port map ( Q=>Q_14_EXMPLR, QB=>OPEN, D=>nx676, CLK=>
      clk, S=>nx112, R=>nx116);
   ix677 : mux21_ni port map ( Y=>nx676, A0=>Q_14_EXMPLR, A1=>D(14), S0=>
      nx1057);
   reg_Q_15 : dffsr_ni port map ( Q=>Q_15_EXMPLR, QB=>OPEN, D=>nx686, CLK=>
      clk, S=>nx120, R=>nx124);
   ix687 : mux21_ni port map ( Y=>nx686, A0=>Q_15_EXMPLR, A1=>D(15), S0=>
      nx1057);
   ix5 : nor02ii port map ( Y=>nx4, A0=>load(0), A1=>nx1041);
   ix13 : nor02ii port map ( Y=>nx12, A0=>load(1), A1=>nx1041);
   ix21 : nor02ii port map ( Y=>nx20, A0=>load(2), A1=>nx1041);
   ix29 : nor02ii port map ( Y=>nx28, A0=>load(3), A1=>nx1041);
   ix37 : nor02ii port map ( Y=>nx36, A0=>load(4), A1=>nx1041);
   ix45 : nor02ii port map ( Y=>nx44, A0=>load(5), A1=>nx1043);
   ix53 : nor02ii port map ( Y=>nx52, A0=>load(6), A1=>nx1043);
   ix61 : nor02ii port map ( Y=>nx60, A0=>load(7), A1=>nx1043);
   ix69 : nor02ii port map ( Y=>nx68, A0=>load(8), A1=>nx1043);
   ix77 : nor02ii port map ( Y=>nx76, A0=>load(9), A1=>nx1043);
   ix85 : nor02ii port map ( Y=>nx84, A0=>load(10), A1=>nx1043);
   ix93 : nor02ii port map ( Y=>nx92, A0=>load(11), A1=>nx1043);
   ix101 : nor02ii port map ( Y=>nx100, A0=>load(12), A1=>nx1045);
   ix109 : nor02ii port map ( Y=>nx108, A0=>load(13), A1=>nx1045);
   ix117 : nor02ii port map ( Y=>nx116, A0=>load(14), A1=>nx1045);
   ix125 : nor02ii port map ( Y=>nx124, A0=>load(15), A1=>nx1045);
   ix1034 : inv01 port map ( Y=>nx1035, A=>rst);
   ix1036 : inv01 port map ( Y=>nx1037, A=>nx1035);
   ix1038 : inv01 port map ( Y=>nx1039, A=>nx1035);
   ix1040 : inv01 port map ( Y=>nx1041, A=>nx1035);
   ix1042 : inv01 port map ( Y=>nx1043, A=>nx1035);
   ix1044 : inv01 port map ( Y=>nx1045, A=>nx1035);
   ix1046 : inv01 port map ( Y=>nx1047, A=>en);
   ix1048 : inv02 port map ( Y=>nx1049, A=>nx1047);
   ix1050 : inv02 port map ( Y=>nx1051, A=>nx1047);
   ix1054 : inv02 port map ( Y=>nx1055, A=>nx1047);
   ix1056 : inv02 port map ( Y=>nx1057, A=>nx1047);
   ix1095 : inv02 port map ( Y=>nx1094, A=>D(15));
   reg_nx1053 : inv02 port map ( Y=>nx1053, A=>nx1047);
   reg_nx846 : ao22 port map ( Y=>nx846, A0=>Qbar_15_EXMPLR, A1=>nx1047, B0
      =>nx1094, B1=>nx1053);
end RegTonyArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RegTony_4 is
   port (
      D : IN std_logic_vector (3 DOWNTO 0) ;
      load : IN std_logic_vector (3 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      Q : OUT std_logic_vector (3 DOWNTO 0) ;
      Qbar : OUT std_logic_vector (3 DOWNTO 0)) ;
end RegTony_4 ;

architecture RegTonyArch of RegTony_4 is
   signal Q_3_EXMPLR, Q_2_EXMPLR, Q_1_EXMPLR, Q_0_EXMPLR, Qbar_3_EXMPLR, 
      Qbar_2_EXMPLR, Qbar_1_EXMPLR, Qbar_0_EXMPLR, nx0, nx4, nx8, nx12, nx16, 
      nx20, nx24, nx28, nx176, nx186, nx196, nx206, nx216, nx226, nx236, 
      nx246, nx260, nx269, nx276, nx283, nx305, nx307: std_logic ;

begin
   Q(3) <= Q_3_EXMPLR ;
   Q(2) <= Q_2_EXMPLR ;
   Q(1) <= Q_1_EXMPLR ;
   Q(0) <= Q_0_EXMPLR ;
   Qbar(3) <= Qbar_3_EXMPLR ;
   Qbar(2) <= Qbar_2_EXMPLR ;
   Qbar(1) <= Qbar_1_EXMPLR ;
   Qbar(0) <= Qbar_0_EXMPLR ;
   reg_Qbar_0 : dffsr_ni port map ( Q=>Qbar_0_EXMPLR, QB=>OPEN, D=>nx216, 
      CLK=>clk, S=>nx4, R=>nx0);
   ix217 : mux21_ni port map ( Y=>nx216, A0=>Qbar_0_EXMPLR, A1=>nx260, S0=>
      nx305);
   ix261 : inv01 port map ( Y=>nx260, A=>D(0));
   ix1 : and02 port map ( Y=>nx0, A0=>rst, A1=>load(0));
   reg_Qbar_1 : dffsr_ni port map ( Q=>Qbar_1_EXMPLR, QB=>OPEN, D=>nx226, 
      CLK=>clk, S=>nx12, R=>nx8);
   ix227 : mux21_ni port map ( Y=>nx226, A0=>Qbar_1_EXMPLR, A1=>nx269, S0=>
      nx305);
   ix270 : inv01 port map ( Y=>nx269, A=>D(1));
   ix9 : and02 port map ( Y=>nx8, A0=>rst, A1=>load(1));
   reg_Qbar_2 : dffsr_ni port map ( Q=>Qbar_2_EXMPLR, QB=>OPEN, D=>nx236, 
      CLK=>clk, S=>nx20, R=>nx16);
   ix237 : mux21_ni port map ( Y=>nx236, A0=>Qbar_2_EXMPLR, A1=>nx276, S0=>
      nx305);
   ix277 : inv01 port map ( Y=>nx276, A=>D(2));
   ix17 : and02 port map ( Y=>nx16, A0=>rst, A1=>load(2));
   reg_Qbar_3 : dffsr_ni port map ( Q=>Qbar_3_EXMPLR, QB=>OPEN, D=>nx246, 
      CLK=>clk, S=>nx28, R=>nx24);
   ix247 : mux21_ni port map ( Y=>nx246, A0=>Qbar_3_EXMPLR, A1=>nx283, S0=>
      nx305);
   ix284 : inv01 port map ( Y=>nx283, A=>D(3));
   ix25 : and02 port map ( Y=>nx24, A0=>rst, A1=>load(3));
   reg_Q_0 : dffsr_ni port map ( Q=>Q_0_EXMPLR, QB=>OPEN, D=>nx176, CLK=>clk, 
      S=>nx0, R=>nx4);
   ix177 : mux21_ni port map ( Y=>nx176, A0=>Q_0_EXMPLR, A1=>D(0), S0=>nx305
   );
   reg_Q_1 : dffsr_ni port map ( Q=>Q_1_EXMPLR, QB=>OPEN, D=>nx186, CLK=>clk, 
      S=>nx8, R=>nx12);
   ix187 : mux21_ni port map ( Y=>nx186, A0=>Q_1_EXMPLR, A1=>D(1), S0=>nx305
   );
   reg_Q_2 : dffsr_ni port map ( Q=>Q_2_EXMPLR, QB=>OPEN, D=>nx196, CLK=>clk, 
      S=>nx16, R=>nx20);
   ix197 : mux21_ni port map ( Y=>nx196, A0=>Q_2_EXMPLR, A1=>D(2), S0=>nx305
   );
   reg_Q_3 : dffsr_ni port map ( Q=>Q_3_EXMPLR, QB=>OPEN, D=>nx206, CLK=>clk, 
      S=>nx24, R=>nx28);
   ix207 : mux21_ni port map ( Y=>nx206, A0=>Q_3_EXMPLR, A1=>D(3), S0=>nx307
   );
   ix5 : nor02ii port map ( Y=>nx4, A0=>load(0), A1=>rst);
   ix13 : nor02ii port map ( Y=>nx12, A0=>load(1), A1=>rst);
   ix21 : nor02ii port map ( Y=>nx20, A0=>load(2), A1=>rst);
   ix29 : nor02ii port map ( Y=>nx28, A0=>load(3), A1=>rst);
   ix304 : buf02 port map ( Y=>nx305, A=>en);
   ix306 : buf02 port map ( Y=>nx307, A=>en);
end RegTonyArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NBitAdder_4 is
   port (
      a : IN std_logic_vector (3 DOWNTO 0) ;
      b : IN std_logic_vector (3 DOWNTO 0) ;
      carryIn : IN std_logic ;
      sum : OUT std_logic_vector (3 DOWNTO 0) ;
      carryOut : OUT std_logic) ;
end NBitAdder_4 ;

architecture NBitAdderArch of NBitAdder_4 is
   component FullAdder
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   signal temp_2, temp_1, temp_0: std_logic ;

begin
   f0 : FullAdder port map ( a=>a(0), b=>b(0), cin=>carryIn, s=>sum(0), cout
      =>temp_0);
   loop1_1_fx : FullAdder port map ( a=>a(1), b=>b(1), cin=>temp_0, s=>
      sum(1), cout=>temp_1);
   loop1_2_fx : FullAdder port map ( a=>a(2), b=>b(2), cin=>temp_1, s=>
      sum(2), cout=>temp_2);
   loop1_3_fx : FullAdder port map ( a=>a(3), b=>b(3), cin=>temp_2, s=>
      sum(3), cout=>carryOut);
end NBitAdderArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CounterUpDown_4 is
   port (
      load : IN std_logic_vector (3 DOWNTO 0) ;
      resetValue : IN std_logic_vector (3 DOWNTO 0) ;
      clk : IN std_logic ;
      en : IN std_logic ;
      rst : IN std_logic ;
      isLoad : IN std_logic ;
      upOrDown : IN std_logic ;
      count : OUT std_logic_vector (3 DOWNTO 0)) ;
end CounterUpDown_4 ;

architecture CounterUpDownArch of CounterUpDown_4 is
   component NBitAdder_4
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         carryIn : IN std_logic ;
         sum : OUT std_logic_vector (3 DOWNTO 0) ;
         carryOut : OUT std_logic) ;
   end component ;
   signal count_3_EXMPLR, count_2_EXMPLR, count_1_EXMPLR, count_0_EXMPLR, 
      countAdded_3, countAdded_2, countAdded_1, countAdded_0, NOT_upOrDown, 
      nx8, nx10, nx14, nx24, nx26, nx30, nx40, nx42, nx46, nx56, nx58, nx62, 
      nx202, nx212, nx222, nx232, nx249, nx279: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   count(3) <= count_3_EXMPLR ;
   count(2) <= count_2_EXMPLR ;
   count(1) <= count_1_EXMPLR ;
   count(0) <= count_0_EXMPLR ;
   nextCount : NBitAdder_4 port map ( a(3)=>count_3_EXMPLR, a(2)=>
      count_2_EXMPLR, a(1)=>count_1_EXMPLR, a(0)=>count_0_EXMPLR, b(3)=>
      upOrDown, b(2)=>upOrDown, b(1)=>upOrDown, b(0)=>upOrDown, carryIn=>
      NOT_upOrDown, sum(3)=>countAdded_3, sum(2)=>countAdded_2, sum(1)=>
      countAdded_1, sum(0)=>countAdded_0, carryOut=>DANGLING(0));
   ix245 : inv01 port map ( Y=>NOT_upOrDown, A=>upOrDown);
   reg_currentCount_0 : dffsr_ni port map ( Q=>count_0_EXMPLR, QB=>OPEN, D=>
      nx202, CLK=>clk, S=>nx10, R=>nx14);
   ix203 : mux21_ni port map ( Y=>nx202, A0=>nx8, A1=>count_0_EXMPLR, S0=>
      nx249);
   ix9 : mux21_ni port map ( Y=>nx8, A0=>load(0), A1=>countAdded_0, S0=>
      nx279);
   ix250 : nor02_2x port map ( Y=>nx249, A0=>nx279, A1=>isLoad);
   ix11 : and02 port map ( Y=>nx10, A0=>resetValue(0), A1=>rst);
   reg_currentCount_1 : dffsr_ni port map ( Q=>count_1_EXMPLR, QB=>OPEN, D=>
      nx212, CLK=>clk, S=>nx26, R=>nx30);
   ix213 : mux21_ni port map ( Y=>nx212, A0=>nx24, A1=>count_1_EXMPLR, S0=>
      nx249);
   ix25 : mux21_ni port map ( Y=>nx24, A0=>load(1), A1=>countAdded_1, S0=>
      nx279);
   ix27 : and02 port map ( Y=>nx26, A0=>resetValue(1), A1=>rst);
   reg_currentCount_2 : dffsr_ni port map ( Q=>count_2_EXMPLR, QB=>OPEN, D=>
      nx222, CLK=>clk, S=>nx42, R=>nx46);
   ix223 : mux21_ni port map ( Y=>nx222, A0=>nx40, A1=>count_2_EXMPLR, S0=>
      nx249);
   ix41 : mux21_ni port map ( Y=>nx40, A0=>load(2), A1=>countAdded_2, S0=>
      nx279);
   ix43 : and02 port map ( Y=>nx42, A0=>resetValue(2), A1=>rst);
   reg_currentCount_3 : dffsr_ni port map ( Q=>count_3_EXMPLR, QB=>OPEN, D=>
      nx232, CLK=>clk, S=>nx58, R=>nx62);
   ix233 : mux21_ni port map ( Y=>nx232, A0=>nx56, A1=>count_3_EXMPLR, S0=>
      nx249);
   ix57 : mux21_ni port map ( Y=>nx56, A0=>load(3), A1=>countAdded_3, S0=>
      nx279);
   ix59 : and02 port map ( Y=>nx58, A0=>resetValue(3), A1=>rst);
   ix15 : nor02ii port map ( Y=>nx14, A0=>resetValue(0), A1=>rst);
   ix31 : nor02ii port map ( Y=>nx30, A0=>resetValue(1), A1=>rst);
   ix47 : nor02ii port map ( Y=>nx46, A0=>resetValue(2), A1=>rst);
   ix63 : nor02ii port map ( Y=>nx62, A0=>resetValue(3), A1=>rst);
   ix278 : buf02 port map ( Y=>nx279, A=>en);
end CounterUpDownArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Comparator_16 is
   port (
      inputA : IN std_logic_vector (15 DOWNTO 0) ;
      inputB : IN std_logic_vector (15 DOWNTO 0) ;
      outputG : OUT std_logic ;
      outputEqual : OUT std_logic) ;
end Comparator_16 ;

architecture ComparatorArch of Comparator_16 is
   signal nx91, nx137, nx203, nx5, nx332, nx333, nx334, nx335, nx336, nx337, 
      nx338, nx339, nx88, nx340, nx341, nx342, nx343, nx344, nx345, nx346, 
      nx347, nx348, nx349, nx350, nx351, nx352, nx40, nx177, nx353, nx354, 
      nx355, nx356, nx357, nx358, nx359, nx360, nx361, nx362, nx363, nx364, 
      nx365, nx141, nx366, nx367, nx368, nx369, nx370, nx371, nx372, nx373, 
      nx374, nx375, nx376, nx377, nx378, nx379, nx380, nx381, nx382, nx383, 
      nx384, nx385, nx386, nx387, nx388, nx389, nx390, nx391, nx392, nx393, 
      nx394, nx395, nx396, nx397, nx398, nx399, nx400, nx401, nx402, nx403, 
      nx404, nx405, nx406, nx407, nx408, nx409, nx410, nx411, nx412, nx413, 
      nx414, nx415, nx416, nx417, nx418, nx419, nx420, nx421, nx422, nx423, 
      nx424, nx425, nx426, nx427, nx428, nx181, nx429, nx430, nx431, nx432, 
      nx433, nx434, nx435, nx436, nx437, nx438, nx439, nx440, nx441, nx442, 
      nx443, nx444, nx268, nx445, nx286, nx446, nx447, nx448, nx449, nx450, 
      nx451, nx452, nx453, nx454, nx455, nx456, nx457, nx458, nx459, nx460, 
      nx461, nx462, nx463, nx464, nx465, nx466, nx467, nx468, nx469, nx470, 
      nx471, nx472, nx473, nx474, nx475, nx64, nx476, nx477, nx478, nx479, 
      nx480, nx481, nx482, nx483, nx484, nx485, nx486, nx487, nx488, nx489, 
      nx490, nx491, nx492, nx493, nx494, nx495, nx496, nx497, nx165, nx498, 
      nx499, nx44, nx500, nx501, nx502, nx503, nx504, nx505, nx209, nx170, 
      nx506, nx507, nx508, nx509, nx510, nx188, NOT_nx56, nx511, nx512, 
      nx513, nx514, nx699, nx701, nx703, nx705, nx711: std_logic ;

begin
   ix92 : fake_gnd port map ( Y=>nx91);
   ix93 : and02 port map ( Y=>outputEqual, A0=>nx137, A1=>nx88);
   ix138 : xnor2 port map ( Y=>nx137, A0=>inputA(0), A1=>inputB(0));
   ix204 : inv01 port map ( Y=>nx203, A=>inputB(14));
   lat_outputG_u1 : latchs_ni port map ( QB=>nx5, D=>nx91, CLK=>nx188, S=>
      nx286);
   lat_outputG_u2 : inv02 port map ( Y=>outputG, A=>nx5);
   ix515 : inv02 port map ( Y=>nx332, A=>inputA(2));
   ix516 : inv02 port map ( Y=>nx333, A=>inputA(3));
   ix517 : inv02 port map ( Y=>nx334, A=>inputB(1));
   ix518 : inv02 port map ( Y=>nx335, A=>inputB(0));
   ix519 : aoi22 port map ( Y=>nx336, A0=>inputA(1), A1=>nx334, B0=>
      inputA(0), B1=>nx335);
   ix520 : nor02ii port map ( Y=>nx337, A0=>inputA(1), A1=>inputB(1));
   ix521 : inv02 port map ( Y=>nx338, A=>inputA(1));
   ix522 : aoi22 port map ( Y=>nx339, A0=>inputB(1), A1=>inputA(1), B0=>
      nx334, B1=>nx338);
   reg_nx88 : nor02_2x port map ( Y=>nx88, A0=>nx339, A1=>nx141);
   ix523 : inv02 port map ( Y=>nx340, A=>nx334);
   ix524 : nand02_2x port map ( Y=>nx341, A0=>inputB(1), A1=>nx338);
   ix525 : nor02ii port map ( Y=>nx342, A0=>inputA(0), A1=>inputB(0));
   ix526 : inv02 port map ( Y=>nx343, A=>inputB(0));
   ix527 : inv02 port map ( Y=>nx344, A=>inputB(1));
   ix528 : oai21 port map ( Y=>nx345, A0=>nx343, A1=>inputA(0), B0=>nx344);
   ix529 : inv02 port map ( Y=>nx346, A=>inputA(1));
   ix530 : aoi32 port map ( Y=>nx347, A0=>nx340, A1=>nx341, A2=>nx342, B0=>
      nx345, B1=>nx346);
   ix531 : inv02 port map ( Y=>nx348, A=>inputB(2));
   ix532 : inv02 port map ( Y=>nx349, A=>inputA(2));
   ix533 : oai22 port map ( Y=>nx350, A0=>nx348, A1=>inputA(2), B0=>nx349, 
      B1=>inputB(2));
   ix534 : inv02 port map ( Y=>nx351, A=>inputB(3));
   ix535 : oai22 port map ( Y=>nx352, A0=>nx454, A1=>nx453, B0=>inputA(13), 
      B1=>inputB(13));
   reg_nx40 : and02 port map ( Y=>nx40, A0=>nx352, A1=>nx513);
   reg_nx177 : inv01 port map ( Y=>nx177, A=>nx513);
   ix536 : inv01 port map ( Y=>nx353, A=>nx513);
   ix537 : inv02 port map ( Y=>nx354, A=>inputB(4));
   ix538 : inv02 port map ( Y=>nx355, A=>inputA(4));
   ix539 : aoi22 port map ( Y=>nx356, A0=>inputA(4), A1=>nx354, B0=>
      inputB(4), B1=>nx355);
   ix540 : inv02 port map ( Y=>nx357, A=>inputB(3));
   ix541 : inv02 port map ( Y=>nx358, A=>inputA(3));
   ix542 : aoi22 port map ( Y=>nx359, A0=>inputA(3), A1=>nx357, B0=>
      inputB(3), B1=>nx358);
   ix543 : oai221 port map ( Y=>nx360, A0=>nx348, A1=>inputA(2), B0=>
      inputB(2), B1=>nx349, C0=>nx359);
   ix544 : inv02 port map ( Y=>nx361, A=>inputA(5));
   ix545 : oai22 port map ( Y=>nx362, A0=>nx354, A1=>nx355, B0=>inputB(4), 
      B1=>inputA(4));
   ix546 : aoi22 port map ( Y=>nx363, A0=>inputB(3), A1=>inputA(3), B0=>
      nx357, B1=>nx358);
   ix547 : oai32 port map ( Y=>nx364, A0=>nx363, A1=>nx332, A2=>inputB(2), 
      B0=>nx333, B1=>inputB(3));
   ix548 : or02 port map ( Y=>nx365, A0=>nx336, A1=>nx337);
   reg_nx141 : inv01 port map ( Y=>nx141, A=>nx473);
   ix549 : inv02 port map ( Y=>nx366, A=>inputB(10));
   ix550 : inv02 port map ( Y=>nx367, A=>inputA(10));
   ix551 : inv01 port map ( Y=>nx368, A=>inputB(11));
   ix552 : inv02 port map ( Y=>nx369, A=>inputA(11));
   ix553 : inv02 port map ( Y=>nx370, A=>inputB(6));
   ix554 : inv02 port map ( Y=>nx371, A=>inputA(6));
   ix555 : aoi22 port map ( Y=>nx372, A0=>inputB(6), A1=>inputA(6), B0=>
      nx370, B1=>nx371);
   ix556 : inv02 port map ( Y=>nx373, A=>inputB(5));
   ix557 : inv02 port map ( Y=>nx374, A=>inputA(5));
   ix558 : aoi22 port map ( Y=>nx375, A0=>inputB(5), A1=>inputA(5), B0=>
      nx373, B1=>nx374);
   ix559 : oai32 port map ( Y=>nx376, A0=>nx699, A1=>nx355, A2=>inputB(4), 
      B0=>nx361, B1=>inputB(5));
   ix560 : nor02ii port map ( Y=>nx377, A0=>nx372, A1=>nx376);
   ix561 : inv02 port map ( Y=>nx378, A=>inputA(7));
   ix562 : aoi22 port map ( Y=>nx379, A0=>inputA(6), A1=>nx370, B0=>
      inputB(6), B1=>nx371);
   ix563 : aoi22 port map ( Y=>nx380, A0=>inputA(5), A1=>nx373, B0=>
      inputB(5), B1=>nx374);
   ix564 : inv02 port map ( Y=>nx381, A=>inputA(8));
   ix565 : inv02 port map ( Y=>nx382, A=>inputB(8));
   ix566 : inv02 port map ( Y=>nx383, A=>inputA(9));
   ix567 : inv02 port map ( Y=>nx384, A=>inputB(9));
   ix568 : inv01 port map ( Y=>nx385, A=>nx356);
   ix569 : nor02_2x port map ( Y=>nx386, A0=>nx385, A1=>nx360);
   ix570 : inv02 port map ( Y=>nx387, A=>inputA(7));
   ix571 : inv02 port map ( Y=>nx388, A=>inputB(7));
   ix572 : nor03_2x port map ( Y=>nx389, A0=>nx372, A1=>nx417, A2=>nx699);
   ix573 : inv01 port map ( Y=>nx390, A=>nx372);
   ix574 : inv01 port map ( Y=>nx391, A=>nx375);
   ix575 : aoi22 port map ( Y=>nx392, A0=>inputB(7), A1=>nx387, B0=>
      inputA(7), B1=>nx388);
   ix576 : and03 port map ( Y=>nx393, A0=>nx356, A1=>nx391, A2=>nx392);
   ix577 : inv01 port map ( Y=>nx394, A=>nx392);
   ix578 : inv02 port map ( Y=>nx395, A=>inputA(6));
   ix579 : inv02 port map ( Y=>nx396, A=>inputB(7));
   ix580 : nor04_2x port map ( Y=>nx397, A0=>nx703, A1=>nx701, A2=>nx396, A3
      =>inputA(7));
   ix581 : inv02 port map ( Y=>nx398, A=>nx348);
   ix582 : inv02 port map ( Y=>nx399, A=>inputA(2));
   ix583 : and04 port map ( Y=>nx400, A0=>nx398, A1=>nx399, A2=>nx356, A3=>
      nx359);
   ix584 : nor03_2x port map ( Y=>nx401, A0=>nx351, A1=>nx701, A2=>inputA(3)
   );
   ix585 : nand03_2x port map ( Y=>nx402, A0=>nx393, A1=>nx390, A2=>nx401);
   ix586 : and02 port map ( Y=>nx403, A0=>nx356, A1=>nx359);
   ix587 : nor02_2x port map ( Y=>nx404, A0=>nx347, A1=>nx350);
   ix588 : inv02 port map ( Y=>nx405, A=>inputA(4));
   ix589 : inv02 port map ( Y=>nx406, A=>inputA(5));
   ix590 : ao32 port map ( Y=>nx407, A0=>nx380, A1=>inputB(4), A2=>nx405, B0
      =>inputB(5), B1=>nx406);
   ix591 : nor03_2x port map ( Y=>nx408, A0=>nx703, A1=>nx394, A2=>nx701);
   ix592 : nor02_2x port map ( Y=>nx409, A0=>nx703, A1=>nx701);
   ix593 : oai22 port map ( Y=>nx410, A0=>nx383, A1=>nx384, B0=>inputA(9), 
      B1=>inputB(9));
   ix594 : and02 port map ( Y=>nx411, A0=>inputA(7), A1=>inputB(7));
   ix595 : oai22 port map ( Y=>nx412, A0=>nx411, A1=>nx387, B0=>nx411, B1=>
      nx388);
   ix596 : inv02 port map ( Y=>nx413, A=>nx412);
   ix597 : nor02_2x port map ( Y=>nx414, A0=>nx381, A1=>inputB(8));
   ix598 : nor02_2x port map ( Y=>nx415, A0=>nx382, A1=>inputA(8));
   ix599 : nor02_2x port map ( Y=>nx416, A0=>nx701, A1=>nx703);
   ix600 : inv02 port map ( Y=>nx417, A=>nx413);
   ix601 : inv02 port map ( Y=>nx418, A=>nx413);
   ix602 : inv02 port map ( Y=>nx419, A=>nx365);
   ix603 : nand02_2x port map ( Y=>nx420, A0=>nx449, A1=>nx711);
   ix604 : nand02_2x port map ( Y=>nx421, A0=>nx450, A1=>nx711);
   ix605 : inv01 port map ( Y=>nx422, A=>inputB(14));
   ix606 : inv02 port map ( Y=>nx423, A=>inputA(15));
   ix607 : oai22 port map ( Y=>nx424, A0=>nx422, A1=>inputA(14), B0=>nx423, 
      B1=>nx711);
   ix608 : nand02_2x port map ( Y=>nx425, A0=>inputB(6), A1=>nx395);
   ix609 : nor04_2x port map ( Y=>nx426, A0=>nx703, A1=>nx701, A2=>nx394, A3
      =>nx425);
   ix610 : inv02 port map ( Y=>nx427, A=>inputB(12));
   ix611 : inv01 port map ( Y=>nx428, A=>inputB(13));
   reg_nx181 : oai22 port map ( Y=>nx181, A0=>nx449, A1=>nx450, B0=>nx711, 
      B1=>inputA(15));
   ix612 : inv01 port map ( Y=>nx429, A=>nx513);
   ix613 : inv01 port map ( Y=>nx430, A=>nx511);
   ix614 : inv02 port map ( Y=>nx431, A=>inputA(11));
   ix615 : inv02 port map ( Y=>nx432, A=>inputA(10));
   ix616 : ao32 port map ( Y=>nx433, A0=>nx44, A1=>inputB(11), A2=>nx431, B0
      =>inputB(10), B1=>nx432);
   ix617 : inv02 port map ( Y=>nx434, A=>inputA(9));
   ix618 : inv02 port map ( Y=>nx435, A=>inputA(8));
   ix619 : ao32 port map ( Y=>nx436, A0=>nx165, A1=>inputB(9), A2=>nx434, B0
      =>inputB(8), B1=>nx435);
   ix620 : aoi322 port map ( Y=>nx437, A0=>nx64, A1=>nx379, A2=>nx407, B0=>
      nx433, B1=>nx499, C0=>nx436, C1=>nx496);
   ix621 : ao21 port map ( Y=>nx438, A0=>nx403, A1=>nx404, B0=>nx400);
   ix622 : nor02_2x port map ( Y=>nx439, A0=>nx372, A1=>nx699);
   ix623 : nor02_2x port map ( Y=>nx440, A0=>nx418, A1=>nx701);
   ix624 : nand03_2x port map ( Y=>nx441, A0=>nx438, A1=>nx439, A2=>nx440);
   ix625 : ao21 port map ( Y=>nx442, A0=>nx402, A1=>nx441, B0=>nx703);
   ix626 : nor02_2x port map ( Y=>nx443, A0=>nx426, A1=>nx397);
   ix627 : nand02_2x port map ( Y=>nx444, A0=>nx442, A1=>nx443);
   reg_nx268 : oai33 port map ( Y=>nx268, A0=>nx209, A1=>nx427, A2=>
      inputA(12), B0=>nx353, B1=>nx428, B2=>inputA(13));
   ix628 : aoi321 port map ( Y=>nx445, A0=>nx420, A1=>nx421, A2=>nx424, B0=>
      nx444, B1=>NOT_nx56, C0=>nx268);
   reg_nx286 : nand02_2x port map ( Y=>nx286, A0=>nx437, A1=>nx445);
   ix629 : inv02 port map ( Y=>nx446, A=>nx415);
   ix630 : inv02 port map ( Y=>nx447, A=>inputB(10));
   ix631 : inv02 port map ( Y=>nx448, A=>inputB(11));
   ix632 : inv01 port map ( Y=>nx449, A=>inputB(15));
   ix633 : inv02 port map ( Y=>nx450, A=>inputA(15));
   ix634 : inv01 port map ( Y=>nx451, A=>inputB(14));
   ix635 : inv02 port map ( Y=>nx452, A=>inputA(14));
   ix636 : inv01 port map ( Y=>nx453, A=>inputB(13));
   ix637 : inv02 port map ( Y=>nx454, A=>inputA(13));
   ix638 : inv01 port map ( Y=>nx455, A=>inputB(12));
   ix639 : inv02 port map ( Y=>nx456, A=>inputA(12));
   ix640 : inv01 port map ( Y=>nx457, A=>nx368);
   ix641 : inv02 port map ( Y=>nx458, A=>nx369);
   ix642 : oai22 port map ( Y=>nx459, A0=>nx368, A1=>nx369, B0=>inputB(11), 
      B1=>inputA(11));
   ix643 : inv02 port map ( Y=>nx460, A=>inputB(9));
   ix644 : nor02ii port map ( Y=>nx461, A0=>inputB(8), A1=>inputA(8));
   ix645 : ao21 port map ( Y=>nx462, A0=>nx457, A1=>nx458, B0=>nx448);
   ix646 : inv02 port map ( Y=>nx463, A=>inputA(15));
   ix647 : inv02 port map ( Y=>nx464, A=>inputA(12));
   ix648 : inv02 port map ( Y=>nx465, A=>inputA(13));
   ix649 : inv02 port map ( Y=>nx466, A=>nx371);
   ix650 : inv02 port map ( Y=>nx467, A=>inputB(6));
   ix651 : nor02_2x port map ( Y=>nx468, A0=>nx378, A1=>inputB(7));
   ix652 : inv01 port map ( Y=>nx469, A=>nx511);
   ix653 : inv01 port map ( Y=>nx470, A=>nx513);
   ix654 : and03 port map ( Y=>nx471, A0=>nx439, A1=>nx362, A2=>nx364);
   ix655 : and03 port map ( Y=>nx472, A0=>nx409, A1=>nx386, A2=>nx389);
   ix656 : and04 port map ( Y=>nx473, A0=>nx511, A1=>nx514, A2=>nx495, A3=>
      nx472);
   ix657 : inv01 port map ( Y=>nx474, A=>nx495);
   ix658 : nand02_2x port map ( Y=>nx475, A0=>nx413, A1=>nx416);
   reg_nx64 : nor04_2x port map ( Y=>nx64, A0=>nx429, A1=>nx430, A2=>nx474, 
      A3=>nx475);
   ix659 : aoi22 port map ( Y=>nx476, A0=>inputB(14), A1=>inputA(14), B0=>
      nx451, B1=>nx452);
   ix660 : aoi22 port map ( Y=>nx477, A0=>inputA(15), A1=>nx711, B0=>nx449, 
      B1=>nx450);
   ix661 : nor02_2x port map ( Y=>nx478, A0=>nx476, A1=>nx477);
   ix662 : aoi22 port map ( Y=>nx479, A0=>inputB(12), A1=>inputA(12), B0=>
      nx455, B1=>nx456);
   ix663 : aoi22 port map ( Y=>nx480, A0=>inputA(13), A1=>inputB(13), B0=>
      nx453, B1=>nx454);
   ix664 : nor02_2x port map ( Y=>nx481, A0=>nx479, A1=>nx480);
   ix665 : inv01 port map ( Y=>nx482, A=>nx368);
   ix666 : inv02 port map ( Y=>nx483, A=>inputA(11));
   ix667 : inv02 port map ( Y=>nx484, A=>nx369);
   ix668 : inv01 port map ( Y=>nx485, A=>inputB(11));
   ix669 : aoi22 port map ( Y=>nx486, A0=>nx482, A1=>nx483, B0=>nx484, B1=>
      nx485);
   ix670 : and02 port map ( Y=>nx487, A0=>inputA(10), A1=>nx366);
   ix671 : and02 port map ( Y=>nx488, A0=>inputB(10), A1=>nx367);
   ix672 : inv02 port map ( Y=>nx489, A=>inputB(9));
   ix673 : inv02 port map ( Y=>nx490, A=>nx434);
   ix674 : nor04_2x port map ( Y=>nx491, A0=>nx487, A1=>nx488, A2=>nx489, A3
      =>nx490);
   ix675 : and03 port map ( Y=>nx492, A0=>nx511, A1=>nx486, A2=>nx491);
   ix676 : oai22 port map ( Y=>nx493, A0=>nx368, A1=>inputA(11), B0=>nx369, 
      B1=>inputB(11));
   ix677 : inv02 port map ( Y=>nx494, A=>nx410);
   ix678 : nor04_2x port map ( Y=>nx495, A0=>nx493, A1=>nx487, A2=>nx494, A3
      =>nx488);
   ix679 : ao21 port map ( Y=>nx496, A0=>nx514, A1=>nx492, B0=>NOT_nx56);
   ix680 : aoi22 port map ( Y=>nx497, A0=>inputA(10), A1=>nx366, B0=>
      inputB(10), B1=>nx367);
   reg_nx165 : and04 port map ( Y=>nx165, A0=>nx513, A1=>nx511, A2=>nx486, 
      A3=>nx497);
   ix681 : ao21 port map ( Y=>nx498, A0=>inputB(11), A1=>nx431, B0=>nx459);
   ix682 : and03 port map ( Y=>nx499, A0=>nx512, A1=>nx514, A2=>nx498);
   reg_nx44 : and02 port map ( Y=>nx44, A0=>nx514, A1=>nx512);
   ix683 : aoi33 port map ( Y=>nx500, A0=>nx446, A1=>nx440, A2=>nx471, B0=>
      nx416, B1=>nx377, B2=>nx413);
   ix684 : nand04_2x port map ( Y=>nx501, A0=>nx409, A1=>nx389, A2=>nx419, 
      A3=>nx386);
   ix685 : aoi32 port map ( Y=>nx502, A0=>nx408, A1=>nx466, A2=>nx467, B0=>
      nx409, B1=>nx468);
   ix686 : nand02_2x port map ( Y=>nx503, A0=>nx512, A1=>nx514);
   ix687 : oai332 port map ( Y=>nx504, A0=>nx500, A1=>nx429, A2=>nx430, B0=>
      nx469, B1=>nx470, B2=>nx501, C0=>nx502, C1=>nx503);
   ix688 : nand02_2x port map ( Y=>nx505, A0=>nx495, A1=>nx705);
   reg_nx209 : inv01 port map ( Y=>nx209, A=>nx40);
   reg_nx170 : oai33 port map ( Y=>nx170, A0=>nx209, A1=>nx464, A2=>
      inputB(12), B0=>nx177, B1=>nx465, B2=>inputB(13));
   ix689 : aoi321 port map ( Y=>nx506, A0=>nx181, A1=>inputA(14), A2=>nx203, 
      B0=>nx711, B1=>nx463, C0=>nx170);
   ix690 : and02 port map ( Y=>nx507, A0=>nx512, A1=>nx514);
   ix691 : ao22 port map ( Y=>nx508, A0=>inputA(11), A1=>nx448, B0=>
      inputA(10), B1=>nx447);
   ix692 : and02 port map ( Y=>nx509, A0=>inputA(9), A1=>nx460);
   ix693 : aoi332 port map ( Y=>nx510, A0=>nx507, A1=>nx461, A2=>nx495, B0=>
      nx508, B1=>nx44, B2=>nx462, C0=>nx165, C1=>nx509);
   reg_nx188 : nand03_2x port map ( Y=>nx188, A0=>nx505, A1=>nx506, A2=>
      nx510);
   reg_NOT_nx56 : and03 port map ( Y=>NOT_nx56, A0=>nx512, A1=>nx495, A2=>
      nx514);
   ix694 : buf16 port map ( Y=>nx511, A=>nx481);
   ix695 : buf16 port map ( Y=>nx512, A=>nx481);
   ix696 : buf16 port map ( Y=>nx513, A=>nx478);
   ix697 : buf16 port map ( Y=>nx514, A=>nx478);
   ix698 : inv01 port map ( Y=>nx699, A=>nx391);
   ix700 : buf02 port map ( Y=>nx701, A=>nx414);
   ix702 : inv02 port map ( Y=>nx703, A=>nx446);
   ix704 : buf02 port map ( Y=>nx705, A=>nx504);
   ix710 : inv02 port map ( Y=>nx711, A=>nx449);
end ComparatorArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ngetMax_16_10 is
   port (
      inputArray_9_15 : IN std_logic ;
      inputArray_9_14 : IN std_logic ;
      inputArray_9_13 : IN std_logic ;
      inputArray_9_12 : IN std_logic ;
      inputArray_9_11 : IN std_logic ;
      inputArray_9_10 : IN std_logic ;
      inputArray_9_9 : IN std_logic ;
      inputArray_9_8 : IN std_logic ;
      inputArray_9_7 : IN std_logic ;
      inputArray_9_6 : IN std_logic ;
      inputArray_9_5 : IN std_logic ;
      inputArray_9_4 : IN std_logic ;
      inputArray_9_3 : IN std_logic ;
      inputArray_9_2 : IN std_logic ;
      inputArray_9_1 : IN std_logic ;
      inputArray_9_0 : IN std_logic ;
      inputArray_8_15 : IN std_logic ;
      inputArray_8_14 : IN std_logic ;
      inputArray_8_13 : IN std_logic ;
      inputArray_8_12 : IN std_logic ;
      inputArray_8_11 : IN std_logic ;
      inputArray_8_10 : IN std_logic ;
      inputArray_8_9 : IN std_logic ;
      inputArray_8_8 : IN std_logic ;
      inputArray_8_7 : IN std_logic ;
      inputArray_8_6 : IN std_logic ;
      inputArray_8_5 : IN std_logic ;
      inputArray_8_4 : IN std_logic ;
      inputArray_8_3 : IN std_logic ;
      inputArray_8_2 : IN std_logic ;
      inputArray_8_1 : IN std_logic ;
      inputArray_8_0 : IN std_logic ;
      inputArray_7_15 : IN std_logic ;
      inputArray_7_14 : IN std_logic ;
      inputArray_7_13 : IN std_logic ;
      inputArray_7_12 : IN std_logic ;
      inputArray_7_11 : IN std_logic ;
      inputArray_7_10 : IN std_logic ;
      inputArray_7_9 : IN std_logic ;
      inputArray_7_8 : IN std_logic ;
      inputArray_7_7 : IN std_logic ;
      inputArray_7_6 : IN std_logic ;
      inputArray_7_5 : IN std_logic ;
      inputArray_7_4 : IN std_logic ;
      inputArray_7_3 : IN std_logic ;
      inputArray_7_2 : IN std_logic ;
      inputArray_7_1 : IN std_logic ;
      inputArray_7_0 : IN std_logic ;
      inputArray_6_15 : IN std_logic ;
      inputArray_6_14 : IN std_logic ;
      inputArray_6_13 : IN std_logic ;
      inputArray_6_12 : IN std_logic ;
      inputArray_6_11 : IN std_logic ;
      inputArray_6_10 : IN std_logic ;
      inputArray_6_9 : IN std_logic ;
      inputArray_6_8 : IN std_logic ;
      inputArray_6_7 : IN std_logic ;
      inputArray_6_6 : IN std_logic ;
      inputArray_6_5 : IN std_logic ;
      inputArray_6_4 : IN std_logic ;
      inputArray_6_3 : IN std_logic ;
      inputArray_6_2 : IN std_logic ;
      inputArray_6_1 : IN std_logic ;
      inputArray_6_0 : IN std_logic ;
      inputArray_5_15 : IN std_logic ;
      inputArray_5_14 : IN std_logic ;
      inputArray_5_13 : IN std_logic ;
      inputArray_5_12 : IN std_logic ;
      inputArray_5_11 : IN std_logic ;
      inputArray_5_10 : IN std_logic ;
      inputArray_5_9 : IN std_logic ;
      inputArray_5_8 : IN std_logic ;
      inputArray_5_7 : IN std_logic ;
      inputArray_5_6 : IN std_logic ;
      inputArray_5_5 : IN std_logic ;
      inputArray_5_4 : IN std_logic ;
      inputArray_5_3 : IN std_logic ;
      inputArray_5_2 : IN std_logic ;
      inputArray_5_1 : IN std_logic ;
      inputArray_5_0 : IN std_logic ;
      inputArray_4_15 : IN std_logic ;
      inputArray_4_14 : IN std_logic ;
      inputArray_4_13 : IN std_logic ;
      inputArray_4_12 : IN std_logic ;
      inputArray_4_11 : IN std_logic ;
      inputArray_4_10 : IN std_logic ;
      inputArray_4_9 : IN std_logic ;
      inputArray_4_8 : IN std_logic ;
      inputArray_4_7 : IN std_logic ;
      inputArray_4_6 : IN std_logic ;
      inputArray_4_5 : IN std_logic ;
      inputArray_4_4 : IN std_logic ;
      inputArray_4_3 : IN std_logic ;
      inputArray_4_2 : IN std_logic ;
      inputArray_4_1 : IN std_logic ;
      inputArray_4_0 : IN std_logic ;
      inputArray_3_15 : IN std_logic ;
      inputArray_3_14 : IN std_logic ;
      inputArray_3_13 : IN std_logic ;
      inputArray_3_12 : IN std_logic ;
      inputArray_3_11 : IN std_logic ;
      inputArray_3_10 : IN std_logic ;
      inputArray_3_9 : IN std_logic ;
      inputArray_3_8 : IN std_logic ;
      inputArray_3_7 : IN std_logic ;
      inputArray_3_6 : IN std_logic ;
      inputArray_3_5 : IN std_logic ;
      inputArray_3_4 : IN std_logic ;
      inputArray_3_3 : IN std_logic ;
      inputArray_3_2 : IN std_logic ;
      inputArray_3_1 : IN std_logic ;
      inputArray_3_0 : IN std_logic ;
      inputArray_2_15 : IN std_logic ;
      inputArray_2_14 : IN std_logic ;
      inputArray_2_13 : IN std_logic ;
      inputArray_2_12 : IN std_logic ;
      inputArray_2_11 : IN std_logic ;
      inputArray_2_10 : IN std_logic ;
      inputArray_2_9 : IN std_logic ;
      inputArray_2_8 : IN std_logic ;
      inputArray_2_7 : IN std_logic ;
      inputArray_2_6 : IN std_logic ;
      inputArray_2_5 : IN std_logic ;
      inputArray_2_4 : IN std_logic ;
      inputArray_2_3 : IN std_logic ;
      inputArray_2_2 : IN std_logic ;
      inputArray_2_1 : IN std_logic ;
      inputArray_2_0 : IN std_logic ;
      inputArray_1_15 : IN std_logic ;
      inputArray_1_14 : IN std_logic ;
      inputArray_1_13 : IN std_logic ;
      inputArray_1_12 : IN std_logic ;
      inputArray_1_11 : IN std_logic ;
      inputArray_1_10 : IN std_logic ;
      inputArray_1_9 : IN std_logic ;
      inputArray_1_8 : IN std_logic ;
      inputArray_1_7 : IN std_logic ;
      inputArray_1_6 : IN std_logic ;
      inputArray_1_5 : IN std_logic ;
      inputArray_1_4 : IN std_logic ;
      inputArray_1_3 : IN std_logic ;
      inputArray_1_2 : IN std_logic ;
      inputArray_1_1 : IN std_logic ;
      inputArray_1_0 : IN std_logic ;
      inputArray_0_15 : IN std_logic ;
      inputArray_0_14 : IN std_logic ;
      inputArray_0_13 : IN std_logic ;
      inputArray_0_12 : IN std_logic ;
      inputArray_0_11 : IN std_logic ;
      inputArray_0_10 : IN std_logic ;
      inputArray_0_9 : IN std_logic ;
      inputArray_0_8 : IN std_logic ;
      inputArray_0_7 : IN std_logic ;
      inputArray_0_6 : IN std_logic ;
      inputArray_0_5 : IN std_logic ;
      inputArray_0_4 : IN std_logic ;
      inputArray_0_3 : IN std_logic ;
      inputArray_0_2 : IN std_logic ;
      inputArray_0_1 : IN std_logic ;
      inputArray_0_0 : IN std_logic ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      outLabel : OUT std_logic_vector (3 DOWNTO 0) ;
      done : OUT std_logic) ;
end ngetMax_16_10 ;

architecture GetMaxArch of ngetMax_16_10 is
   component RegTony_16
      port (
         D : IN std_logic_vector (15 DOWNTO 0) ;
         load : IN std_logic_vector (15 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (15 DOWNTO 0) ;
         Qbar : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   component RegTony_4
      port (
         D : IN std_logic_vector (3 DOWNTO 0) ;
         load : IN std_logic_vector (3 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (3 DOWNTO 0) ;
         Qbar : OUT std_logic_vector (3 DOWNTO 0)) ;
   end component ;
   component CounterUpDown_4
      port (
         load : IN std_logic_vector (3 DOWNTO 0) ;
         resetValue : IN std_logic_vector (3 DOWNTO 0) ;
         clk : IN std_logic ;
         en : IN std_logic ;
         rst : IN std_logic ;
         isLoad : IN std_logic ;
         upOrDown : IN std_logic ;
         count : OUT std_logic_vector (3 DOWNTO 0)) ;
   end component ;
   component Comparator_16
      port (
         inputA : IN std_logic_vector (15 DOWNTO 0) ;
         inputB : IN std_logic_vector (15 DOWNTO 0) ;
         outputG : OUT std_logic ;
         outputEqual : OUT std_logic) ;
   end component ;
   signal outLabel_3_EXMPLR, outLabel_2_EXMPLR, outLabel_1_EXMPLR, 
      outLabel_0_EXMPLR, regMaxout_15, regMaxout_14, regMaxout_13, 
      regMaxout_12, regMaxout_11, regMaxout_10, regMaxout_9, regMaxout_8, 
      regMaxout_7, regMaxout_6, regMaxout_5, regMaxout_4, regMaxout_3, 
      regMaxout_2, regMaxout_1, regMaxout_0, regMaxin_15, regMaxin_14, 
      regMaxin_13, regMaxin_12, regMaxin_11, regMaxin_10, regMaxin_9, 
      regMaxin_8, regMaxin_7, regMaxin_6, regMaxin_5, regMaxin_4, regMaxin_3, 
      regMaxin_2, regMaxin_1, regMaxin_0, indexMaxin_3, indexMaxin_2, 
      indexMaxin_1, indexMaxin_0, ComparatorG, Count_3, Count_2, Count_1, 
      Count_0, InputBcomparator_15, InputBcomparator_14, InputBcomparator_13, 
      InputBcomparator_12, InputBcomparator_11, InputBcomparator_10, 
      InputBcomparator_9, InputBcomparator_8, InputBcomparator_7, 
      InputBcomparator_6, InputBcomparator_5, InputBcomparator_4, 
      InputBcomparator_3, InputBcomparator_2, InputBcomparator_1, 
      InputBcomparator_0, GND, PWR, nx108, nx116, nx130, nx138, nx178, nx188, 
      nx232, nx282, nx332, nx382, nx432, nx482, nx532, nx582, nx632, nx682, 
      nx732, nx782, nx832, nx882, nx701, nx703, nx709, nx715, nx719, nx723, 
      nx727, nx733, nx739, nx741, nx747, nx749, nx751, nx753, nx759, nx761, 
      nx763, nx765, nx771, nx773, nx775, nx777, nx783, nx785, nx787, nx789, 
      nx795, nx797, nx799, nx801, nx807, nx809, nx811, nx813, nx819, nx821, 
      nx823, nx825, nx831, nx833, nx835, nx837, nx841, nx843, nx845, nx847, 
      nx853, nx855, nx857, nx859, nx865, nx867, nx869, nx871, nx877, nx879, 
      nx881, nx883, nx887, nx889, nx891, nx893, nx897, nx899, nx901, nx903, 
      nx909, nx911, nx913, nx915, nx951, nx953, nx955, nx959, nx961, nx963, 
      nx965, nx967, nx969, nx971, nx973, nx975, nx977, nx979, nx981, nx983, 
      nx985, nx987, nx989, nx991, nx993, nx995, nx997, nx999, nx1001, nx1003, 
      nx1005, nx1007, nx1009, nx1011, nx1013, nx1015, nx1017, nx1019, nx1021, 
      nx1023, nx1025, nx1027, nx1029, nx1031, nx1033, nx1035, nx1037, nx1039, 
      nx1041, nx1043, nx1045, nx1047, nx1049, nx1051, nx1065, nx1067, nx1069, 
      nx1071, nx1073, nx1075, nx1077, nx1079, nx1081, nx1083, nx1085, nx1087, 
      nx1089, nx1091, nx1093, nx1095: std_logic ;
   
   signal DANGLING : std_logic_vector (20 downto 0 );

begin
   outLabel(3) <= outLabel_3_EXMPLR ;
   outLabel(2) <= outLabel_2_EXMPLR ;
   outLabel(1) <= outLabel_1_EXMPLR ;
   outLabel(0) <= outLabel_0_EXMPLR ;
   regMaxValue : RegTony_16 port map ( D(15)=>regMaxin_15, D(14)=>
      regMaxin_14, D(13)=>regMaxin_13, D(12)=>regMaxin_12, D(11)=>
      regMaxin_11, D(10)=>regMaxin_10, D(9)=>regMaxin_9, D(8)=>regMaxin_8, 
      D(7)=>regMaxin_7, D(6)=>regMaxin_6, D(5)=>regMaxin_5, D(4)=>regMaxin_4, 
      D(3)=>regMaxin_3, D(2)=>regMaxin_2, D(1)=>regMaxin_1, D(0)=>regMaxin_0, 
      load(15)=>PWR, load(14)=>GND, load(13)=>GND, load(12)=>GND, load(11)=>
      GND, load(10)=>GND, load(9)=>GND, load(8)=>GND, load(7)=>GND, load(6)
      =>GND, load(5)=>GND, load(4)=>GND, load(3)=>GND, load(2)=>GND, load(1)
      =>GND, load(0)=>GND, en=>en, clk=>clk, rst=>nx1073, Q(15)=>
      regMaxout_15, Q(14)=>regMaxout_14, Q(13)=>regMaxout_13, Q(12)=>
      regMaxout_12, Q(11)=>regMaxout_11, Q(10)=>regMaxout_10, Q(9)=>
      regMaxout_9, Q(8)=>regMaxout_8, Q(7)=>regMaxout_7, Q(6)=>regMaxout_6, 
      Q(5)=>regMaxout_5, Q(4)=>regMaxout_4, Q(3)=>regMaxout_3, Q(2)=>
      regMaxout_2, Q(1)=>regMaxout_1, Q(0)=>regMaxout_0, Qbar(15)=>DANGLING(
      0), Qbar(14)=>DANGLING(1), Qbar(13)=>DANGLING(2), Qbar(12)=>DANGLING(3
      ), Qbar(11)=>DANGLING(4), Qbar(10)=>DANGLING(5), Qbar(9)=>DANGLING(6), 
      Qbar(8)=>DANGLING(7), Qbar(7)=>DANGLING(8), Qbar(6)=>DANGLING(9), 
      Qbar(5)=>DANGLING(10), Qbar(4)=>DANGLING(11), Qbar(3)=>DANGLING(12), 
      Qbar(2)=>DANGLING(13), Qbar(1)=>DANGLING(14), Qbar(0)=>DANGLING(15));
   regMaxIndex : RegTony_4 port map ( D(3)=>indexMaxin_3, D(2)=>indexMaxin_2, 
      D(1)=>indexMaxin_1, D(0)=>indexMaxin_0, load(3)=>GND, load(2)=>GND, 
      load(1)=>GND, load(0)=>GND, en=>en, clk=>clk, rst=>nx1069, Q(3)=>
      outLabel_3_EXMPLR, Q(2)=>outLabel_2_EXMPLR, Q(1)=>outLabel_1_EXMPLR, 
      Q(0)=>outLabel_0_EXMPLR, Qbar(3)=>DANGLING(16), Qbar(2)=>DANGLING(17), 
      Qbar(1)=>DANGLING(18), Qbar(0)=>DANGLING(19));
   CounterLabel : CounterUpDown_4 port map ( load(3)=>GND, load(2)=>GND, 
      load(1)=>GND, load(0)=>GND, resetValue(3)=>GND, resetValue(2)=>GND, 
      resetValue(1)=>GND, resetValue(0)=>GND, clk=>clk, en=>en, rst=>nx1071, 
      isLoad=>GND, upOrDown=>GND, count(3)=>Count_3, count(2)=>Count_2, 
      count(1)=>Count_1, count(0)=>Count_0);
   ComparatorLabel : Comparator_16 port map ( inputA(15)=>regMaxout_15, 
      inputA(14)=>regMaxout_14, inputA(13)=>regMaxout_13, inputA(12)=>
      regMaxout_12, inputA(11)=>regMaxout_11, inputA(10)=>regMaxout_10, 
      inputA(9)=>regMaxout_9, inputA(8)=>regMaxout_8, inputA(7)=>regMaxout_7, 
      inputA(6)=>regMaxout_6, inputA(5)=>regMaxout_5, inputA(4)=>regMaxout_4, 
      inputA(3)=>regMaxout_3, inputA(2)=>regMaxout_2, inputA(1)=>regMaxout_1, 
      inputA(0)=>regMaxout_0, inputB(15)=>InputBcomparator_15, inputB(14)=>
      InputBcomparator_14, inputB(13)=>InputBcomparator_13, inputB(12)=>
      InputBcomparator_12, inputB(11)=>InputBcomparator_11, inputB(10)=>
      InputBcomparator_10, inputB(9)=>InputBcomparator_9, inputB(8)=>
      InputBcomparator_8, inputB(7)=>InputBcomparator_7, inputB(6)=>
      InputBcomparator_6, inputB(5)=>InputBcomparator_5, inputB(4)=>
      InputBcomparator_4, inputB(3)=>InputBcomparator_3, inputB(2)=>
      InputBcomparator_2, inputB(1)=>InputBcomparator_1, inputB(0)=>
      InputBcomparator_0, outputG=>ComparatorG, outputEqual=>DANGLING(20));
   ix492 : fake_vcc port map ( Y=>PWR);
   ix490 : fake_gnd port map ( Y=>GND);
   ix702 : inv02 port map ( Y=>nx701, A=>Count_1);
   ix704 : inv02 port map ( Y=>nx703, A=>Count_3);
   lat_InputBcomparator_0 : latch port map ( Q=>InputBcomparator_0, D=>nx178, 
      CLK=>nx961);
   ix179 : nand04 port map ( Y=>nx178, A0=>nx709, A1=>nx715, A2=>nx727, A3=>
      nx733);
   ix710 : aoi22 port map ( Y=>nx709, A0=>inputArray_8_0, A1=>nx1039, B0=>
      inputArray_0_0, B1=>nx1033);
   ix716 : aoi222 port map ( Y=>nx715, A0=>inputArray_3_0, A1=>nx1025, B0=>
      inputArray_4_0, B1=>nx1017, C0=>inputArray_5_0, C1=>nx1009);
   ix720 : inv02 port map ( Y=>nx719, A=>Count_0);
   ix728 : aoi22 port map ( Y=>nx727, A0=>inputArray_6_0, A1=>nx1001, B0=>
      inputArray_7_0, B1=>nx993);
   ix734 : aoi222 port map ( Y=>nx733, A0=>inputArray_9_0, A1=>nx969, B0=>
      inputArray_1_0, B1=>nx985, C0=>inputArray_2_0, C1=>nx977);
   ix742 : inv02 port map ( Y=>nx741, A=>Count_2);
   lat_InputBcomparator_1 : latch port map ( Q=>InputBcomparator_1, D=>nx232, 
      CLK=>nx961);
   ix233 : nand04 port map ( Y=>nx232, A0=>nx747, A1=>nx749, A2=>nx751, A3=>
      nx753);
   ix748 : aoi22 port map ( Y=>nx747, A0=>inputArray_8_1, A1=>nx1039, B0=>
      inputArray_0_1, B1=>nx1033);
   ix750 : aoi222 port map ( Y=>nx749, A0=>inputArray_3_1, A1=>nx1025, B0=>
      inputArray_4_1, B1=>nx1017, C0=>inputArray_5_1, C1=>nx1009);
   ix752 : aoi22 port map ( Y=>nx751, A0=>inputArray_6_1, A1=>nx1001, B0=>
      inputArray_7_1, B1=>nx993);
   ix754 : aoi222 port map ( Y=>nx753, A0=>inputArray_9_1, A1=>nx969, B0=>
      inputArray_1_1, B1=>nx985, C0=>inputArray_2_1, C1=>nx977);
   lat_InputBcomparator_2 : latch port map ( Q=>InputBcomparator_2, D=>nx282, 
      CLK=>nx961);
   ix283 : nand04 port map ( Y=>nx282, A0=>nx759, A1=>nx761, A2=>nx763, A3=>
      nx765);
   ix760 : aoi22 port map ( Y=>nx759, A0=>inputArray_8_2, A1=>nx1039, B0=>
      inputArray_0_2, B1=>nx1033);
   ix762 : aoi222 port map ( Y=>nx761, A0=>inputArray_3_2, A1=>nx1025, B0=>
      inputArray_4_2, B1=>nx1017, C0=>inputArray_5_2, C1=>nx1009);
   ix764 : aoi22 port map ( Y=>nx763, A0=>inputArray_6_2, A1=>nx1001, B0=>
      inputArray_7_2, B1=>nx993);
   ix766 : aoi222 port map ( Y=>nx765, A0=>inputArray_9_2, A1=>nx969, B0=>
      inputArray_1_2, B1=>nx985, C0=>inputArray_2_2, C1=>nx977);
   lat_InputBcomparator_3 : latch port map ( Q=>InputBcomparator_3, D=>nx332, 
      CLK=>nx961);
   ix333 : nand04 port map ( Y=>nx332, A0=>nx771, A1=>nx773, A2=>nx775, A3=>
      nx777);
   ix772 : aoi22 port map ( Y=>nx771, A0=>inputArray_8_3, A1=>nx1039, B0=>
      inputArray_0_3, B1=>nx1033);
   ix774 : aoi222 port map ( Y=>nx773, A0=>inputArray_3_3, A1=>nx1025, B0=>
      inputArray_4_3, B1=>nx1017, C0=>inputArray_5_3, C1=>nx1009);
   ix776 : aoi22 port map ( Y=>nx775, A0=>inputArray_6_3, A1=>nx1001, B0=>
      inputArray_7_3, B1=>nx993);
   ix778 : aoi222 port map ( Y=>nx777, A0=>inputArray_9_3, A1=>nx969, B0=>
      inputArray_1_3, B1=>nx985, C0=>inputArray_2_3, C1=>nx977);
   lat_InputBcomparator_4 : latch port map ( Q=>InputBcomparator_4, D=>nx382, 
      CLK=>nx961);
   ix383 : nand04 port map ( Y=>nx382, A0=>nx783, A1=>nx785, A2=>nx787, A3=>
      nx789);
   ix784 : aoi22 port map ( Y=>nx783, A0=>inputArray_8_4, A1=>nx1039, B0=>
      inputArray_0_4, B1=>nx1033);
   ix786 : aoi222 port map ( Y=>nx785, A0=>inputArray_3_4, A1=>nx1025, B0=>
      inputArray_4_4, B1=>nx1017, C0=>inputArray_5_4, C1=>nx1009);
   ix788 : aoi22 port map ( Y=>nx787, A0=>inputArray_6_4, A1=>nx1001, B0=>
      inputArray_7_4, B1=>nx993);
   ix790 : aoi222 port map ( Y=>nx789, A0=>inputArray_9_4, A1=>nx969, B0=>
      inputArray_1_4, B1=>nx985, C0=>inputArray_2_4, C1=>nx977);
   lat_InputBcomparator_5 : latch port map ( Q=>InputBcomparator_5, D=>nx432, 
      CLK=>nx961);
   ix433 : nand04 port map ( Y=>nx432, A0=>nx795, A1=>nx797, A2=>nx799, A3=>
      nx801);
   ix796 : aoi22 port map ( Y=>nx795, A0=>inputArray_8_5, A1=>nx1039, B0=>
      inputArray_0_5, B1=>nx1033);
   ix798 : aoi222 port map ( Y=>nx797, A0=>inputArray_3_5, A1=>nx1025, B0=>
      inputArray_4_5, B1=>nx1017, C0=>inputArray_5_5, C1=>nx1009);
   ix800 : aoi22 port map ( Y=>nx799, A0=>inputArray_6_5, A1=>nx1001, B0=>
      inputArray_7_5, B1=>nx993);
   ix802 : aoi222 port map ( Y=>nx801, A0=>inputArray_9_5, A1=>nx969, B0=>
      inputArray_1_5, B1=>nx985, C0=>inputArray_2_5, C1=>nx977);
   lat_InputBcomparator_6 : latch port map ( Q=>InputBcomparator_6, D=>nx482, 
      CLK=>nx961);
   ix483 : nand04 port map ( Y=>nx482, A0=>nx807, A1=>nx809, A2=>nx811, A3=>
      nx813);
   ix808 : aoi22 port map ( Y=>nx807, A0=>inputArray_8_6, A1=>nx1039, B0=>
      inputArray_0_6, B1=>nx1033);
   ix810 : aoi222 port map ( Y=>nx809, A0=>inputArray_3_6, A1=>nx1025, B0=>
      inputArray_4_6, B1=>nx1017, C0=>inputArray_5_6, C1=>nx1009);
   ix812 : aoi22 port map ( Y=>nx811, A0=>inputArray_6_6, A1=>nx1001, B0=>
      inputArray_7_6, B1=>nx993);
   ix814 : aoi222 port map ( Y=>nx813, A0=>inputArray_9_6, A1=>nx969, B0=>
      inputArray_1_6, B1=>nx985, C0=>inputArray_2_6, C1=>nx977);
   lat_InputBcomparator_7 : latch port map ( Q=>InputBcomparator_7, D=>nx532, 
      CLK=>nx963);
   ix533 : nand04 port map ( Y=>nx532, A0=>nx819, A1=>nx821, A2=>nx823, A3=>
      nx825);
   ix820 : aoi22 port map ( Y=>nx819, A0=>inputArray_8_7, A1=>nx1041, B0=>
      inputArray_0_7, B1=>nx1035);
   ix822 : aoi222 port map ( Y=>nx821, A0=>inputArray_3_7, A1=>nx1027, B0=>
      inputArray_4_7, B1=>nx1019, C0=>inputArray_5_7, C1=>nx1011);
   ix824 : aoi22 port map ( Y=>nx823, A0=>inputArray_6_7, A1=>nx1003, B0=>
      inputArray_7_7, B1=>nx995);
   ix826 : aoi222 port map ( Y=>nx825, A0=>inputArray_9_7, A1=>nx971, B0=>
      inputArray_1_7, B1=>nx987, C0=>inputArray_2_7, C1=>nx979);
   lat_InputBcomparator_8 : latch port map ( Q=>InputBcomparator_8, D=>nx582, 
      CLK=>nx963);
   ix583 : nand04 port map ( Y=>nx582, A0=>nx831, A1=>nx833, A2=>nx835, A3=>
      nx837);
   ix832 : aoi22 port map ( Y=>nx831, A0=>inputArray_8_8, A1=>nx1041, B0=>
      inputArray_0_8, B1=>nx1035);
   ix834 : aoi222 port map ( Y=>nx833, A0=>inputArray_3_8, A1=>nx1027, B0=>
      inputArray_4_8, B1=>nx1019, C0=>inputArray_5_8, C1=>nx1011);
   ix836 : aoi22 port map ( Y=>nx835, A0=>inputArray_6_8, A1=>nx1003, B0=>
      inputArray_7_8, B1=>nx995);
   ix838 : aoi222 port map ( Y=>nx837, A0=>inputArray_9_8, A1=>nx971, B0=>
      inputArray_1_8, B1=>nx987, C0=>inputArray_2_8, C1=>nx979);
   lat_InputBcomparator_9 : latch port map ( Q=>InputBcomparator_9, D=>nx632, 
      CLK=>nx963);
   ix633 : nand04 port map ( Y=>nx632, A0=>nx841, A1=>nx843, A2=>nx845, A3=>
      nx847);
   ix842 : aoi22 port map ( Y=>nx841, A0=>inputArray_8_9, A1=>nx1041, B0=>
      inputArray_0_9, B1=>nx1035);
   ix844 : aoi222 port map ( Y=>nx843, A0=>inputArray_3_9, A1=>nx1027, B0=>
      inputArray_4_9, B1=>nx1019, C0=>inputArray_5_9, C1=>nx1011);
   ix846 : aoi22 port map ( Y=>nx845, A0=>inputArray_6_9, A1=>nx1003, B0=>
      inputArray_7_9, B1=>nx995);
   ix848 : aoi222 port map ( Y=>nx847, A0=>inputArray_9_9, A1=>nx971, B0=>
      inputArray_1_9, B1=>nx987, C0=>inputArray_2_9, C1=>nx979);
   lat_InputBcomparator_10 : latch port map ( Q=>InputBcomparator_10, D=>
      nx682, CLK=>nx963);
   ix683 : nand04 port map ( Y=>nx682, A0=>nx853, A1=>nx855, A2=>nx857, A3=>
      nx859);
   ix854 : aoi22 port map ( Y=>nx853, A0=>inputArray_8_10, A1=>nx1041, B0=>
      inputArray_0_10, B1=>nx1035);
   ix856 : aoi222 port map ( Y=>nx855, A0=>inputArray_3_10, A1=>nx1027, B0=>
      inputArray_4_10, B1=>nx1019, C0=>inputArray_5_10, C1=>nx1011);
   ix858 : aoi22 port map ( Y=>nx857, A0=>inputArray_6_10, A1=>nx1003, B0=>
      inputArray_7_10, B1=>nx995);
   ix860 : aoi222 port map ( Y=>nx859, A0=>inputArray_9_10, A1=>nx971, B0=>
      inputArray_1_10, B1=>nx987, C0=>inputArray_2_10, C1=>nx979);
   lat_InputBcomparator_11 : latch port map ( Q=>InputBcomparator_11, D=>
      nx732, CLK=>nx963);
   ix733 : nand04 port map ( Y=>nx732, A0=>nx865, A1=>nx867, A2=>nx869, A3=>
      nx871);
   ix866 : aoi22 port map ( Y=>nx865, A0=>inputArray_8_11, A1=>nx1041, B0=>
      inputArray_0_11, B1=>nx1035);
   ix868 : aoi222 port map ( Y=>nx867, A0=>inputArray_3_11, A1=>nx1027, B0=>
      inputArray_4_11, B1=>nx1019, C0=>inputArray_5_11, C1=>nx1011);
   ix870 : aoi22 port map ( Y=>nx869, A0=>inputArray_6_11, A1=>nx1003, B0=>
      inputArray_7_11, B1=>nx995);
   ix872 : aoi222 port map ( Y=>nx871, A0=>inputArray_9_11, A1=>nx971, B0=>
      inputArray_1_11, B1=>nx987, C0=>inputArray_2_11, C1=>nx979);
   lat_InputBcomparator_12 : latch port map ( Q=>InputBcomparator_12, D=>
      nx782, CLK=>nx963);
   ix783 : nand04 port map ( Y=>nx782, A0=>nx877, A1=>nx879, A2=>nx881, A3=>
      nx883);
   ix878 : aoi22 port map ( Y=>nx877, A0=>inputArray_8_12, A1=>nx1041, B0=>
      inputArray_0_12, B1=>nx1035);
   ix880 : aoi222 port map ( Y=>nx879, A0=>inputArray_3_12, A1=>nx1027, B0=>
      inputArray_4_12, B1=>nx1019, C0=>inputArray_5_12, C1=>nx1011);
   ix882 : aoi22 port map ( Y=>nx881, A0=>inputArray_6_12, A1=>nx1003, B0=>
      inputArray_7_12, B1=>nx995);
   ix884 : aoi222 port map ( Y=>nx883, A0=>inputArray_9_12, A1=>nx971, B0=>
      inputArray_1_12, B1=>nx987, C0=>inputArray_2_12, C1=>nx979);
   lat_InputBcomparator_13 : latch port map ( Q=>InputBcomparator_13, D=>
      nx832, CLK=>nx963);
   ix833 : nand04 port map ( Y=>nx832, A0=>nx887, A1=>nx889, A2=>nx891, A3=>
      nx893);
   ix888 : aoi22 port map ( Y=>nx887, A0=>inputArray_8_13, A1=>nx1041, B0=>
      inputArray_0_13, B1=>nx1035);
   ix890 : aoi222 port map ( Y=>nx889, A0=>inputArray_3_13, A1=>nx1027, B0=>
      inputArray_4_13, B1=>nx1019, C0=>inputArray_5_13, C1=>nx1011);
   ix892 : aoi22 port map ( Y=>nx891, A0=>inputArray_6_13, A1=>nx1003, B0=>
      inputArray_7_13, B1=>nx995);
   ix894 : aoi222 port map ( Y=>nx893, A0=>inputArray_9_13, A1=>nx971, B0=>
      inputArray_1_13, B1=>nx987, C0=>inputArray_2_13, C1=>nx979);
   lat_InputBcomparator_14 : latch port map ( Q=>InputBcomparator_14, D=>
      nx882, CLK=>nx965);
   ix883 : nand04 port map ( Y=>nx882, A0=>nx897, A1=>nx899, A2=>nx901, A3=>
      nx903);
   ix898 : aoi22 port map ( Y=>nx897, A0=>inputArray_8_14, A1=>nx108, B0=>
      inputArray_0_14, B1=>nx1037);
   ix900 : aoi222 port map ( Y=>nx899, A0=>inputArray_3_14, A1=>nx1029, B0=>
      inputArray_4_14, B1=>nx1021, C0=>inputArray_5_14, C1=>nx1013);
   ix902 : aoi22 port map ( Y=>nx901, A0=>inputArray_6_14, A1=>nx1005, B0=>
      inputArray_7_14, B1=>nx997);
   ix904 : aoi222 port map ( Y=>nx903, A0=>inputArray_9_14, A1=>nx973, B0=>
      inputArray_1_14, B1=>nx989, C0=>inputArray_2_14, C1=>nx981);
   lat_InputBcomparator_15 : latch port map ( Q=>InputBcomparator_15, D=>
      nx116, CLK=>nx965);
   ix117 : nand04 port map ( Y=>nx116, A0=>nx909, A1=>nx911, A2=>nx913, A3=>
      nx915);
   ix910 : aoi22 port map ( Y=>nx909, A0=>inputArray_8_15, A1=>nx108, B0=>
      inputArray_0_15, B1=>nx1037);
   ix912 : aoi222 port map ( Y=>nx911, A0=>inputArray_3_15, A1=>nx1029, B0=>
      inputArray_4_15, B1=>nx1021, C0=>inputArray_5_15, C1=>nx1013);
   ix914 : aoi22 port map ( Y=>nx913, A0=>inputArray_6_15, A1=>nx1005, B0=>
      inputArray_7_15, B1=>nx997);
   ix916 : aoi222 port map ( Y=>nx915, A0=>inputArray_9_15, A1=>nx973, B0=>
      inputArray_1_15, B1=>nx989, C0=>inputArray_2_15, C1=>nx981);
   ix193 : ao22 port map ( Y=>regMaxin_0, A0=>regMaxout_0, A1=>nx1089, B0=>
      InputBcomparator_0, B1=>nx1093);
   ix243 : ao22 port map ( Y=>regMaxin_1, A0=>regMaxout_1, A1=>nx1089, B0=>
      InputBcomparator_1, B1=>nx1093);
   ix293 : ao22 port map ( Y=>regMaxin_2, A0=>regMaxout_2, A1=>nx1089, B0=>
      InputBcomparator_2, B1=>nx1093);
   ix343 : ao22 port map ( Y=>regMaxin_3, A0=>regMaxout_3, A1=>nx1089, B0=>
      InputBcomparator_3, B1=>nx1093);
   ix393 : ao22 port map ( Y=>regMaxin_4, A0=>regMaxout_4, A1=>nx1089, B0=>
      InputBcomparator_4, B1=>nx1093);
   ix443 : ao22 port map ( Y=>regMaxin_5, A0=>regMaxout_5, A1=>nx1089, B0=>
      InputBcomparator_5, B1=>nx1093);
   ix493 : ao22 port map ( Y=>regMaxin_6, A0=>regMaxout_6, A1=>nx1089, B0=>
      InputBcomparator_6, B1=>nx1093);
   ix543 : ao22 port map ( Y=>regMaxin_7, A0=>regMaxout_7, A1=>nx1091, B0=>
      InputBcomparator_7, B1=>nx1095);
   ix593 : ao22 port map ( Y=>regMaxin_8, A0=>regMaxout_8, A1=>nx1091, B0=>
      InputBcomparator_8, B1=>nx1095);
   ix643 : ao22 port map ( Y=>regMaxin_9, A0=>regMaxout_9, A1=>nx1091, B0=>
      InputBcomparator_9, B1=>nx1095);
   ix693 : ao22 port map ( Y=>regMaxin_10, A0=>regMaxout_10, A1=>nx1091, B0
      =>InputBcomparator_10, B1=>nx1095);
   ix743 : ao22 port map ( Y=>regMaxin_11, A0=>regMaxout_11, A1=>nx1091, B0
      =>InputBcomparator_11, B1=>nx1095);
   ix793 : ao22 port map ( Y=>regMaxin_12, A0=>regMaxout_12, A1=>nx1091, B0
      =>InputBcomparator_12, B1=>nx1095);
   ix843 : ao22 port map ( Y=>regMaxin_13, A0=>regMaxout_13, A1=>nx1091, B0
      =>InputBcomparator_13, B1=>nx1095);
   ix893 : ao22 port map ( Y=>regMaxin_14, A0=>regMaxout_14, A1=>nx138, B0=>
      InputBcomparator_14, B1=>nx188);
   ix133 : or02 port map ( Y=>regMaxin_15, A0=>nx130, A1=>nx1073);
   ix950 : inv02 port map ( Y=>nx951, A=>nx703);
   ix952 : inv02 port map ( Y=>nx953, A=>nx741);
   ix954 : inv02 port map ( Y=>nx955, A=>nx701);
   ix960 : inv02 port map ( Y=>nx961, A=>nx959);
   ix962 : inv02 port map ( Y=>nx963, A=>nx959);
   ix964 : inv02 port map ( Y=>nx965, A=>nx959);
   ix968 : inv02 port map ( Y=>nx969, A=>nx967);
   ix970 : inv02 port map ( Y=>nx971, A=>nx967);
   ix972 : inv02 port map ( Y=>nx973, A=>nx967);
   ix976 : inv02 port map ( Y=>nx977, A=>nx975);
   ix978 : inv02 port map ( Y=>nx979, A=>nx975);
   ix980 : inv02 port map ( Y=>nx981, A=>nx975);
   ix984 : inv02 port map ( Y=>nx985, A=>nx983);
   ix986 : inv02 port map ( Y=>nx987, A=>nx983);
   ix988 : inv02 port map ( Y=>nx989, A=>nx983);
   ix992 : inv02 port map ( Y=>nx993, A=>nx991);
   ix994 : inv02 port map ( Y=>nx995, A=>nx991);
   ix996 : inv02 port map ( Y=>nx997, A=>nx991);
   ix1000 : inv02 port map ( Y=>nx1001, A=>nx999);
   ix1002 : inv02 port map ( Y=>nx1003, A=>nx999);
   ix1004 : inv02 port map ( Y=>nx1005, A=>nx999);
   ix1008 : inv02 port map ( Y=>nx1009, A=>nx1007);
   ix1010 : inv02 port map ( Y=>nx1011, A=>nx1007);
   ix1012 : inv02 port map ( Y=>nx1013, A=>nx1007);
   ix1016 : inv02 port map ( Y=>nx1017, A=>nx1015);
   ix1018 : inv02 port map ( Y=>nx1019, A=>nx1015);
   ix1020 : inv02 port map ( Y=>nx1021, A=>nx1015);
   ix1024 : inv02 port map ( Y=>nx1025, A=>nx1023);
   ix1026 : inv02 port map ( Y=>nx1027, A=>nx1023);
   ix1028 : inv02 port map ( Y=>nx1029, A=>nx1023);
   ix1032 : inv02 port map ( Y=>nx1033, A=>nx1031);
   ix1034 : inv02 port map ( Y=>nx1035, A=>nx1031);
   ix1036 : inv02 port map ( Y=>nx1037, A=>nx1031);
   ix1050 : inv02 port map ( Y=>nx1051, A=>nx1083);
   ix9 : and04 port map ( Y=>done, A0=>nx1083, A1=>nx1079, A2=>nx741, A3=>
      nx1077);
   ix109 : and02 port map ( Y=>nx108, A0=>nx1083, A1=>nx1077);
   ix103 : nand04 port map ( Y=>nx1031, A0=>nx741, A1=>nx703, A2=>nx1083, A3
      =>nx701);
   ix89 : nand04 port map ( Y=>nx1023, A0=>nx741, A1=>nx703, A2=>nx1081, A3
      =>nx1079);
   ix83 : nand03 port map ( Y=>nx1015, A0=>nx1065, A1=>nx1083, A2=>nx701);
   ix1064 : inv01 port map ( Y=>nx1065, A=>nx723);
   ix724 : or02 port map ( Y=>nx723, A0=>nx741, A1=>nx1077);
   ix73 : nand03 port map ( Y=>nx1007, A0=>nx1065, A1=>nx1081, A2=>nx701);
   ix61 : nand03 port map ( Y=>nx999, A0=>nx1065, A1=>nx1083, A2=>nx1079);
   ix57 : nand03 port map ( Y=>nx991, A0=>nx1065, A1=>nx1081, A2=>nx1079);
   ix25 : nand02 port map ( Y=>nx967, A0=>nx1081, A1=>nx1077);
   ix43 : nand04 port map ( Y=>nx983, A0=>nx741, A1=>nx703, A2=>nx1081, A3=>
      nx701);
   ix35 : nand04 port map ( Y=>nx975, A0=>nx741, A1=>nx703, A2=>nx1083, A3=>
      nx1079);
   ix23 : ao21 port map ( Y=>nx959, A0=>nx739, A1=>nx951, B0=>nx1073);
   ix740 : or02 port map ( Y=>nx739, A0=>nx1079, A1=>Count_2);
   ix901 : mux21_ni port map ( Y=>indexMaxin_0, A0=>nx1051, A1=>
      outLabel_0_EXMPLR, S0=>nx1085);
   ix909 : mux21_ni port map ( Y=>indexMaxin_1, A0=>nx955, A1=>
      outLabel_1_EXMPLR, S0=>nx1085);
   ix917 : mux21_ni port map ( Y=>indexMaxin_2, A0=>nx953, A1=>
      outLabel_2_EXMPLR, S0=>nx1085);
   ix925 : mux21_ni port map ( Y=>indexMaxin_3, A0=>nx951, A1=>
      outLabel_3_EXMPLR, S0=>nx1085);
   ix139 : nor02ii port map ( Y=>nx138, A0=>nx1073, A1=>nx1085);
   ix189 : nor02ii port map ( Y=>nx188, A0=>nx1073, A1=>ComparatorG);
   ix131 : mux21_ni port map ( Y=>nx130, A0=>InputBcomparator_15, A1=>
      regMaxout_15, S0=>nx1085);
   ix1038 : and02 port map ( Y=>nx1039, A0=>nx719, A1=>nx1077);
   ix1040 : and02 port map ( Y=>nx1041, A0=>nx719, A1=>nx1077);
   ix1042 : nor02ii port map ( Y=>nx1043, A0=>nx1073, A1=>nx1085);
   ix1044 : nor02ii port map ( Y=>nx1045, A0=>nx1073, A1=>nx1087);
   ix1046 : nor02ii port map ( Y=>nx1047, A0=>nx1075, A1=>ComparatorG);
   ix1048 : nor02ii port map ( Y=>nx1049, A0=>nx1075, A1=>ComparatorG);
   ix1066 : inv01 port map ( Y=>nx1067, A=>rst);
   ix1068 : inv01 port map ( Y=>nx1069, A=>nx1067);
   ix1070 : inv01 port map ( Y=>nx1071, A=>nx1067);
   ix1072 : inv01 port map ( Y=>nx1073, A=>nx1067);
   ix1074 : inv01 port map ( Y=>nx1075, A=>nx1067);
   ix1076 : inv02 port map ( Y=>nx1077, A=>nx703);
   ix1078 : inv02 port map ( Y=>nx1079, A=>nx701);
   ix1080 : inv01 port map ( Y=>nx1081, A=>nx719);
   ix1082 : inv02 port map ( Y=>nx1083, A=>Count_0);
   ix1084 : inv02 port map ( Y=>nx1085, A=>ComparatorG);
   ix1086 : inv02 port map ( Y=>nx1087, A=>ComparatorG);
   ix1088 : buf02 port map ( Y=>nx1089, A=>nx1043);
   ix1090 : buf02 port map ( Y=>nx1091, A=>nx1045);
   ix1092 : buf02 port map ( Y=>nx1093, A=>nx1047);
   ix1094 : buf02 port map ( Y=>nx1095, A=>nx1049);
end GetMaxArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Reg_33 is
   port (
      D : IN std_logic_vector (32 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      Q : OUT std_logic_vector (32 DOWNTO 0) ;
      Qbar : OUT std_logic_vector (32 DOWNTO 0)) ;
end Reg_33 ;

architecture RegArch of Reg_33 is
   signal Q_32_EXMPLR, Q_31_EXMPLR, Q_30_EXMPLR, Q_29_EXMPLR, Q_28_EXMPLR, 
      Q_27_EXMPLR, Q_26_EXMPLR, Q_25_EXMPLR, Q_24_EXMPLR, Q_23_EXMPLR, 
      Q_22_EXMPLR, Q_21_EXMPLR, Q_20_EXMPLR, Q_19_EXMPLR, Q_18_EXMPLR, 
      Q_17_EXMPLR, Q_16_EXMPLR, Q_15_EXMPLR, Q_14_EXMPLR, Q_13_EXMPLR, 
      Q_12_EXMPLR, Q_11_EXMPLR, Q_10_EXMPLR, Q_9_EXMPLR, Q_8_EXMPLR, 
      Q_7_EXMPLR, Q_6_EXMPLR, Q_5_EXMPLR, Q_4_EXMPLR, Q_3_EXMPLR, Q_2_EXMPLR, 
      Q_1_EXMPLR, Q_0_EXMPLR, Qbar_32_EXMPLR, Qbar_31_EXMPLR, Qbar_30_EXMPLR, 
      Qbar_29_EXMPLR, Qbar_28_EXMPLR, Qbar_27_EXMPLR, Qbar_26_EXMPLR, 
      Qbar_25_EXMPLR, Qbar_24_EXMPLR, Qbar_23_EXMPLR, Qbar_22_EXMPLR, 
      Qbar_21_EXMPLR, Qbar_20_EXMPLR, Qbar_19_EXMPLR, Qbar_18_EXMPLR, 
      Qbar_17_EXMPLR, Qbar_16_EXMPLR, Qbar_15_EXMPLR, Qbar_14_EXMPLR, 
      Qbar_13_EXMPLR, Qbar_12_EXMPLR, Qbar_11_EXMPLR, Qbar_10_EXMPLR, 
      Qbar_9_EXMPLR, Qbar_8_EXMPLR, Qbar_7_EXMPLR, Qbar_6_EXMPLR, 
      Qbar_5_EXMPLR, Qbar_4_EXMPLR, Qbar_3_EXMPLR, Qbar_2_EXMPLR, 
      Qbar_1_EXMPLR, Qbar_0_EXMPLR, nx929, nx939, nx949, nx959, nx969, nx979, 
      nx989, nx999, nx1009, nx1019, nx1029, nx1039, nx1049, nx1059, nx1069, 
      nx1079, nx1089, nx1099, nx1109, nx1119, nx1129, nx1139, nx1149, nx1159, 
      nx1169, nx1179, nx1189, nx1199, nx1209, nx1219, nx1229, nx1239, nx1249, 
      nx1259, nx1269, nx1279, nx1289, nx1299, nx1309, nx1319, nx1329, nx1339, 
      nx1349, nx1359, nx1369, nx1379, nx1389, nx1399, nx1409, nx1419, nx1429, 
      nx1439, nx1449, nx1459, nx1469, nx1479, nx1489, nx1499, nx1509, nx1519, 
      nx1529, nx1539, nx1549, nx1559, nx1569, nx1579, nx1591, nx1596, nx1601, 
      nx1606, nx1611, nx1616, nx1621, nx1626, nx1631, nx1636, nx1641, nx1646, 
      nx1651, nx1656, nx1661, nx1666, nx1671, nx1676, nx1681, nx1686, nx1691, 
      nx1696, nx1701, nx1706, nx1711, nx1716, nx1721, nx1726, nx1731, nx1736, 
      nx1741, nx1746, nx1751, nx1858, nx1860, nx1862, nx1864, nx1866, nx1868, 
      nx1870, nx1872, nx1874, nx1876, nx1878, nx1880, nx1882, nx1884, nx1886, 
      nx1888, nx1890, nx1892, nx1894, nx1896, nx1898, nx1900, nx1902, nx1904, 
      nx1906, nx1908, nx1910, nx1912, nx1914, nx1916, nx1918, nx1920, nx1922, 
      nx1924, nx1926, nx1928: std_logic ;

begin
   Q(32) <= Q_32_EXMPLR ;
   Q(31) <= Q_31_EXMPLR ;
   Q(30) <= Q_30_EXMPLR ;
   Q(29) <= Q_29_EXMPLR ;
   Q(28) <= Q_28_EXMPLR ;
   Q(27) <= Q_27_EXMPLR ;
   Q(26) <= Q_26_EXMPLR ;
   Q(25) <= Q_25_EXMPLR ;
   Q(24) <= Q_24_EXMPLR ;
   Q(23) <= Q_23_EXMPLR ;
   Q(22) <= Q_22_EXMPLR ;
   Q(21) <= Q_21_EXMPLR ;
   Q(20) <= Q_20_EXMPLR ;
   Q(19) <= Q_19_EXMPLR ;
   Q(18) <= Q_18_EXMPLR ;
   Q(17) <= Q_17_EXMPLR ;
   Q(16) <= Q_16_EXMPLR ;
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
   Qbar(32) <= Qbar_32_EXMPLR ;
   Qbar(31) <= Qbar_31_EXMPLR ;
   Qbar(30) <= Qbar_30_EXMPLR ;
   Qbar(29) <= Qbar_29_EXMPLR ;
   Qbar(28) <= Qbar_28_EXMPLR ;
   Qbar(27) <= Qbar_27_EXMPLR ;
   Qbar(26) <= Qbar_26_EXMPLR ;
   Qbar(25) <= Qbar_25_EXMPLR ;
   Qbar(24) <= Qbar_24_EXMPLR ;
   Qbar(23) <= Qbar_23_EXMPLR ;
   Qbar(22) <= Qbar_22_EXMPLR ;
   Qbar(21) <= Qbar_21_EXMPLR ;
   Qbar(20) <= Qbar_20_EXMPLR ;
   Qbar(19) <= Qbar_19_EXMPLR ;
   Qbar(18) <= Qbar_18_EXMPLR ;
   Qbar(17) <= Qbar_17_EXMPLR ;
   Qbar(16) <= Qbar_16_EXMPLR ;
   Qbar(15) <= Qbar_15_EXMPLR ;
   Qbar(14) <= Qbar_14_EXMPLR ;
   Qbar(13) <= Qbar_13_EXMPLR ;
   Qbar(12) <= Qbar_12_EXMPLR ;
   Qbar(11) <= Qbar_11_EXMPLR ;
   Qbar(10) <= Qbar_10_EXMPLR ;
   Qbar(9) <= Qbar_9_EXMPLR ;
   Qbar(8) <= Qbar_8_EXMPLR ;
   Qbar(7) <= Qbar_7_EXMPLR ;
   Qbar(6) <= Qbar_6_EXMPLR ;
   Qbar(5) <= Qbar_5_EXMPLR ;
   Qbar(4) <= Qbar_4_EXMPLR ;
   Qbar(3) <= Qbar_3_EXMPLR ;
   Qbar(2) <= Qbar_2_EXMPLR ;
   Qbar(1) <= Qbar_1_EXMPLR ;
   Qbar(0) <= Qbar_0_EXMPLR ;
   reg_Qbar_0 : dffs_ni port map ( Q=>Qbar_0_EXMPLR, QB=>OPEN, D=>nx1259, 
      CLK=>nx1882, S=>nx1904);
   ix1260 : mux21_ni port map ( Y=>nx1259, A0=>Qbar_0_EXMPLR, A1=>nx1591, S0
      =>nx1860);
   ix1592 : inv01 port map ( Y=>nx1591, A=>D(0));
   reg_Qbar_1 : dffs_ni port map ( Q=>Qbar_1_EXMPLR, QB=>OPEN, D=>nx1269, 
      CLK=>nx1882, S=>nx1904);
   ix1270 : mux21_ni port map ( Y=>nx1269, A0=>Qbar_1_EXMPLR, A1=>nx1596, S0
      =>nx1860);
   ix1597 : inv01 port map ( Y=>nx1596, A=>D(1));
   reg_Qbar_2 : dffs_ni port map ( Q=>Qbar_2_EXMPLR, QB=>OPEN, D=>nx1279, 
      CLK=>nx1882, S=>nx1904);
   ix1280 : mux21_ni port map ( Y=>nx1279, A0=>Qbar_2_EXMPLR, A1=>nx1601, S0
      =>nx1860);
   ix1602 : inv01 port map ( Y=>nx1601, A=>D(2));
   reg_Qbar_3 : dffs_ni port map ( Q=>Qbar_3_EXMPLR, QB=>OPEN, D=>nx1289, 
      CLK=>nx1882, S=>nx1904);
   ix1290 : mux21_ni port map ( Y=>nx1289, A0=>Qbar_3_EXMPLR, A1=>nx1606, S0
      =>nx1860);
   ix1607 : inv01 port map ( Y=>nx1606, A=>D(3));
   reg_Qbar_4 : dffs_ni port map ( Q=>Qbar_4_EXMPLR, QB=>OPEN, D=>nx1299, 
      CLK=>nx1882, S=>nx1904);
   ix1300 : mux21_ni port map ( Y=>nx1299, A0=>Qbar_4_EXMPLR, A1=>nx1611, S0
      =>nx1860);
   ix1612 : inv01 port map ( Y=>nx1611, A=>D(4));
   reg_Qbar_5 : dffs_ni port map ( Q=>Qbar_5_EXMPLR, QB=>OPEN, D=>nx1309, 
      CLK=>nx1882, S=>nx1904);
   ix1310 : mux21_ni port map ( Y=>nx1309, A0=>Qbar_5_EXMPLR, A1=>nx1616, S0
      =>nx1860);
   ix1617 : inv01 port map ( Y=>nx1616, A=>D(5));
   reg_Qbar_6 : dffs_ni port map ( Q=>Qbar_6_EXMPLR, QB=>OPEN, D=>nx1319, 
      CLK=>nx1882, S=>nx1904);
   ix1320 : mux21_ni port map ( Y=>nx1319, A0=>Qbar_6_EXMPLR, A1=>nx1621, S0
      =>nx1860);
   ix1622 : inv01 port map ( Y=>nx1621, A=>D(6));
   reg_Qbar_7 : dffs_ni port map ( Q=>Qbar_7_EXMPLR, QB=>OPEN, D=>nx1329, 
      CLK=>nx1884, S=>nx1906);
   ix1330 : mux21_ni port map ( Y=>nx1329, A0=>Qbar_7_EXMPLR, A1=>nx1626, S0
      =>nx1862);
   ix1627 : inv01 port map ( Y=>nx1626, A=>D(7));
   reg_Qbar_8 : dffs_ni port map ( Q=>Qbar_8_EXMPLR, QB=>OPEN, D=>nx1339, 
      CLK=>nx1884, S=>nx1906);
   ix1340 : mux21_ni port map ( Y=>nx1339, A0=>Qbar_8_EXMPLR, A1=>nx1631, S0
      =>nx1862);
   ix1632 : inv01 port map ( Y=>nx1631, A=>D(8));
   reg_Qbar_9 : dffs_ni port map ( Q=>Qbar_9_EXMPLR, QB=>OPEN, D=>nx1349, 
      CLK=>nx1884, S=>nx1906);
   ix1350 : mux21_ni port map ( Y=>nx1349, A0=>Qbar_9_EXMPLR, A1=>nx1636, S0
      =>nx1862);
   ix1637 : inv01 port map ( Y=>nx1636, A=>D(9));
   reg_Qbar_10 : dffs_ni port map ( Q=>Qbar_10_EXMPLR, QB=>OPEN, D=>nx1359, 
      CLK=>nx1884, S=>nx1906);
   ix1360 : mux21_ni port map ( Y=>nx1359, A0=>Qbar_10_EXMPLR, A1=>nx1641, 
      S0=>nx1862);
   ix1642 : inv01 port map ( Y=>nx1641, A=>D(10));
   reg_Qbar_11 : dffs_ni port map ( Q=>Qbar_11_EXMPLR, QB=>OPEN, D=>nx1369, 
      CLK=>nx1884, S=>nx1906);
   ix1370 : mux21_ni port map ( Y=>nx1369, A0=>Qbar_11_EXMPLR, A1=>nx1646, 
      S0=>nx1862);
   ix1647 : inv01 port map ( Y=>nx1646, A=>D(11));
   reg_Qbar_12 : dffs_ni port map ( Q=>Qbar_12_EXMPLR, QB=>OPEN, D=>nx1379, 
      CLK=>nx1884, S=>nx1906);
   ix1380 : mux21_ni port map ( Y=>nx1379, A0=>Qbar_12_EXMPLR, A1=>nx1651, 
      S0=>nx1862);
   ix1652 : inv01 port map ( Y=>nx1651, A=>D(12));
   reg_Qbar_13 : dffs_ni port map ( Q=>Qbar_13_EXMPLR, QB=>OPEN, D=>nx1389, 
      CLK=>nx1884, S=>nx1906);
   ix1390 : mux21_ni port map ( Y=>nx1389, A0=>Qbar_13_EXMPLR, A1=>nx1656, 
      S0=>nx1862);
   ix1657 : inv01 port map ( Y=>nx1656, A=>D(13));
   reg_Qbar_14 : dffs_ni port map ( Q=>Qbar_14_EXMPLR, QB=>OPEN, D=>nx1399, 
      CLK=>nx1886, S=>nx1908);
   ix1400 : mux21_ni port map ( Y=>nx1399, A0=>Qbar_14_EXMPLR, A1=>nx1661, 
      S0=>nx1864);
   ix1662 : inv01 port map ( Y=>nx1661, A=>D(14));
   reg_Qbar_15 : dffs_ni port map ( Q=>Qbar_15_EXMPLR, QB=>OPEN, D=>nx1409, 
      CLK=>nx1886, S=>nx1908);
   ix1410 : mux21_ni port map ( Y=>nx1409, A0=>Qbar_15_EXMPLR, A1=>nx1666, 
      S0=>nx1864);
   ix1667 : inv01 port map ( Y=>nx1666, A=>D(15));
   reg_Qbar_16 : dffs_ni port map ( Q=>Qbar_16_EXMPLR, QB=>OPEN, D=>nx1419, 
      CLK=>nx1886, S=>nx1908);
   ix1420 : mux21_ni port map ( Y=>nx1419, A0=>Qbar_16_EXMPLR, A1=>nx1671, 
      S0=>nx1864);
   ix1672 : inv01 port map ( Y=>nx1671, A=>D(16));
   reg_Qbar_17 : dffs_ni port map ( Q=>Qbar_17_EXMPLR, QB=>OPEN, D=>nx1429, 
      CLK=>nx1886, S=>nx1908);
   ix1430 : mux21_ni port map ( Y=>nx1429, A0=>Qbar_17_EXMPLR, A1=>nx1676, 
      S0=>nx1864);
   ix1677 : inv01 port map ( Y=>nx1676, A=>D(17));
   reg_Qbar_18 : dffs_ni port map ( Q=>Qbar_18_EXMPLR, QB=>OPEN, D=>nx1439, 
      CLK=>nx1886, S=>nx1908);
   ix1440 : mux21_ni port map ( Y=>nx1439, A0=>Qbar_18_EXMPLR, A1=>nx1681, 
      S0=>nx1864);
   ix1682 : inv01 port map ( Y=>nx1681, A=>D(18));
   reg_Qbar_19 : dffs_ni port map ( Q=>Qbar_19_EXMPLR, QB=>OPEN, D=>nx1449, 
      CLK=>nx1886, S=>nx1908);
   ix1450 : mux21_ni port map ( Y=>nx1449, A0=>Qbar_19_EXMPLR, A1=>nx1686, 
      S0=>nx1864);
   ix1687 : inv01 port map ( Y=>nx1686, A=>D(19));
   reg_Qbar_20 : dffs_ni port map ( Q=>Qbar_20_EXMPLR, QB=>OPEN, D=>nx1459, 
      CLK=>nx1886, S=>nx1908);
   ix1460 : mux21_ni port map ( Y=>nx1459, A0=>Qbar_20_EXMPLR, A1=>nx1691, 
      S0=>nx1864);
   ix1692 : inv01 port map ( Y=>nx1691, A=>D(20));
   reg_Qbar_21 : dffs_ni port map ( Q=>Qbar_21_EXMPLR, QB=>OPEN, D=>nx1469, 
      CLK=>nx1888, S=>nx1910);
   ix1470 : mux21_ni port map ( Y=>nx1469, A0=>Qbar_21_EXMPLR, A1=>nx1696, 
      S0=>nx1866);
   ix1697 : inv01 port map ( Y=>nx1696, A=>D(21));
   reg_Qbar_22 : dffs_ni port map ( Q=>Qbar_22_EXMPLR, QB=>OPEN, D=>nx1479, 
      CLK=>nx1888, S=>nx1910);
   ix1480 : mux21_ni port map ( Y=>nx1479, A0=>Qbar_22_EXMPLR, A1=>nx1701, 
      S0=>nx1866);
   ix1702 : inv01 port map ( Y=>nx1701, A=>D(22));
   reg_Qbar_23 : dffs_ni port map ( Q=>Qbar_23_EXMPLR, QB=>OPEN, D=>nx1489, 
      CLK=>nx1888, S=>nx1910);
   ix1490 : mux21_ni port map ( Y=>nx1489, A0=>Qbar_23_EXMPLR, A1=>nx1706, 
      S0=>nx1866);
   ix1707 : inv01 port map ( Y=>nx1706, A=>D(23));
   reg_Qbar_24 : dffs_ni port map ( Q=>Qbar_24_EXMPLR, QB=>OPEN, D=>nx1499, 
      CLK=>nx1888, S=>nx1910);
   ix1500 : mux21_ni port map ( Y=>nx1499, A0=>Qbar_24_EXMPLR, A1=>nx1711, 
      S0=>nx1866);
   ix1712 : inv01 port map ( Y=>nx1711, A=>D(24));
   reg_Qbar_25 : dffs_ni port map ( Q=>Qbar_25_EXMPLR, QB=>OPEN, D=>nx1509, 
      CLK=>nx1888, S=>nx1910);
   ix1510 : mux21_ni port map ( Y=>nx1509, A0=>Qbar_25_EXMPLR, A1=>nx1716, 
      S0=>nx1866);
   ix1717 : inv01 port map ( Y=>nx1716, A=>D(25));
   reg_Qbar_26 : dffs_ni port map ( Q=>Qbar_26_EXMPLR, QB=>OPEN, D=>nx1519, 
      CLK=>nx1888, S=>nx1910);
   ix1520 : mux21_ni port map ( Y=>nx1519, A0=>Qbar_26_EXMPLR, A1=>nx1721, 
      S0=>nx1866);
   ix1722 : inv01 port map ( Y=>nx1721, A=>D(26));
   reg_Qbar_27 : dffs_ni port map ( Q=>Qbar_27_EXMPLR, QB=>OPEN, D=>nx1529, 
      CLK=>nx1888, S=>nx1910);
   ix1530 : mux21_ni port map ( Y=>nx1529, A0=>Qbar_27_EXMPLR, A1=>nx1726, 
      S0=>nx1866);
   ix1727 : inv01 port map ( Y=>nx1726, A=>D(27));
   reg_Qbar_28 : dffs_ni port map ( Q=>Qbar_28_EXMPLR, QB=>OPEN, D=>nx1539, 
      CLK=>nx1890, S=>nx1912);
   ix1540 : mux21_ni port map ( Y=>nx1539, A0=>Qbar_28_EXMPLR, A1=>nx1731, 
      S0=>nx1868);
   ix1732 : inv01 port map ( Y=>nx1731, A=>D(28));
   reg_Qbar_29 : dffs_ni port map ( Q=>Qbar_29_EXMPLR, QB=>OPEN, D=>nx1549, 
      CLK=>nx1890, S=>nx1912);
   ix1550 : mux21_ni port map ( Y=>nx1549, A0=>Qbar_29_EXMPLR, A1=>nx1736, 
      S0=>nx1868);
   ix1737 : inv01 port map ( Y=>nx1736, A=>D(29));
   reg_Qbar_30 : dffs_ni port map ( Q=>Qbar_30_EXMPLR, QB=>OPEN, D=>nx1559, 
      CLK=>nx1890, S=>nx1912);
   ix1560 : mux21_ni port map ( Y=>nx1559, A0=>Qbar_30_EXMPLR, A1=>nx1741, 
      S0=>nx1868);
   ix1742 : inv01 port map ( Y=>nx1741, A=>D(30));
   reg_Qbar_31 : dffs_ni port map ( Q=>Qbar_31_EXMPLR, QB=>OPEN, D=>nx1569, 
      CLK=>nx1890, S=>nx1912);
   ix1570 : mux21_ni port map ( Y=>nx1569, A0=>Qbar_31_EXMPLR, A1=>nx1746, 
      S0=>nx1868);
   ix1747 : inv01 port map ( Y=>nx1746, A=>D(31));
   reg_Qbar_32 : dffs_ni port map ( Q=>Qbar_32_EXMPLR, QB=>OPEN, D=>nx1579, 
      CLK=>nx1890, S=>nx1912);
   ix1580 : mux21_ni port map ( Y=>nx1579, A0=>Qbar_32_EXMPLR, A1=>nx1751, 
      S0=>nx1868);
   ix1752 : inv01 port map ( Y=>nx1751, A=>D(32));
   reg_Q_0 : dffr port map ( Q=>Q_0_EXMPLR, QB=>OPEN, D=>nx929, CLK=>nx1890, 
      R=>nx1912);
   ix930 : mux21_ni port map ( Y=>nx929, A0=>Q_0_EXMPLR, A1=>D(0), S0=>
      nx1868);
   reg_Q_1 : dffr port map ( Q=>Q_1_EXMPLR, QB=>OPEN, D=>nx939, CLK=>nx1890, 
      R=>nx1912);
   ix940 : mux21_ni port map ( Y=>nx939, A0=>Q_1_EXMPLR, A1=>D(1), S0=>
      nx1868);
   reg_Q_2 : dffr port map ( Q=>Q_2_EXMPLR, QB=>OPEN, D=>nx949, CLK=>nx1892, 
      R=>nx1914);
   ix950 : mux21_ni port map ( Y=>nx949, A0=>Q_2_EXMPLR, A1=>D(2), S0=>
      nx1870);
   reg_Q_3 : dffr port map ( Q=>Q_3_EXMPLR, QB=>OPEN, D=>nx959, CLK=>nx1892, 
      R=>nx1914);
   ix960 : mux21_ni port map ( Y=>nx959, A0=>Q_3_EXMPLR, A1=>D(3), S0=>
      nx1870);
   reg_Q_4 : dffr port map ( Q=>Q_4_EXMPLR, QB=>OPEN, D=>nx969, CLK=>nx1892, 
      R=>nx1914);
   ix970 : mux21_ni port map ( Y=>nx969, A0=>Q_4_EXMPLR, A1=>D(4), S0=>
      nx1870);
   reg_Q_5 : dffr port map ( Q=>Q_5_EXMPLR, QB=>OPEN, D=>nx979, CLK=>nx1892, 
      R=>nx1914);
   ix980 : mux21_ni port map ( Y=>nx979, A0=>Q_5_EXMPLR, A1=>D(5), S0=>
      nx1870);
   reg_Q_6 : dffr port map ( Q=>Q_6_EXMPLR, QB=>OPEN, D=>nx989, CLK=>nx1892, 
      R=>nx1914);
   ix990 : mux21_ni port map ( Y=>nx989, A0=>Q_6_EXMPLR, A1=>D(6), S0=>
      nx1870);
   reg_Q_7 : dffr port map ( Q=>Q_7_EXMPLR, QB=>OPEN, D=>nx999, CLK=>nx1892, 
      R=>nx1914);
   ix1000 : mux21_ni port map ( Y=>nx999, A0=>Q_7_EXMPLR, A1=>D(7), S0=>
      nx1870);
   reg_Q_8 : dffr port map ( Q=>Q_8_EXMPLR, QB=>OPEN, D=>nx1009, CLK=>nx1892, 
      R=>nx1914);
   ix1010 : mux21_ni port map ( Y=>nx1009, A0=>Q_8_EXMPLR, A1=>D(8), S0=>
      nx1870);
   reg_Q_9 : dffr port map ( Q=>Q_9_EXMPLR, QB=>OPEN, D=>nx1019, CLK=>nx1894, 
      R=>nx1916);
   ix1020 : mux21_ni port map ( Y=>nx1019, A0=>Q_9_EXMPLR, A1=>D(9), S0=>
      nx1872);
   reg_Q_10 : dffr port map ( Q=>Q_10_EXMPLR, QB=>OPEN, D=>nx1029, CLK=>
      nx1894, R=>nx1916);
   ix1030 : mux21_ni port map ( Y=>nx1029, A0=>Q_10_EXMPLR, A1=>D(10), S0=>
      nx1872);
   reg_Q_11 : dffr port map ( Q=>Q_11_EXMPLR, QB=>OPEN, D=>nx1039, CLK=>
      nx1894, R=>nx1916);
   ix1040 : mux21_ni port map ( Y=>nx1039, A0=>Q_11_EXMPLR, A1=>D(11), S0=>
      nx1872);
   reg_Q_12 : dffr port map ( Q=>Q_12_EXMPLR, QB=>OPEN, D=>nx1049, CLK=>
      nx1894, R=>nx1916);
   ix1050 : mux21_ni port map ( Y=>nx1049, A0=>Q_12_EXMPLR, A1=>D(12), S0=>
      nx1872);
   reg_Q_13 : dffr port map ( Q=>Q_13_EXMPLR, QB=>OPEN, D=>nx1059, CLK=>
      nx1894, R=>nx1916);
   ix1060 : mux21_ni port map ( Y=>nx1059, A0=>Q_13_EXMPLR, A1=>D(13), S0=>
      nx1872);
   reg_Q_14 : dffr port map ( Q=>Q_14_EXMPLR, QB=>OPEN, D=>nx1069, CLK=>
      nx1894, R=>nx1916);
   ix1070 : mux21_ni port map ( Y=>nx1069, A0=>Q_14_EXMPLR, A1=>D(14), S0=>
      nx1872);
   reg_Q_15 : dffr port map ( Q=>Q_15_EXMPLR, QB=>OPEN, D=>nx1079, CLK=>
      nx1894, R=>nx1916);
   ix1080 : mux21_ni port map ( Y=>nx1079, A0=>Q_15_EXMPLR, A1=>D(15), S0=>
      nx1872);
   reg_Q_16 : dffr port map ( Q=>Q_16_EXMPLR, QB=>OPEN, D=>nx1089, CLK=>
      nx1896, R=>nx1918);
   ix1090 : mux21_ni port map ( Y=>nx1089, A0=>Q_16_EXMPLR, A1=>D(16), S0=>
      nx1874);
   reg_Q_17 : dffr port map ( Q=>Q_17_EXMPLR, QB=>OPEN, D=>nx1099, CLK=>
      nx1896, R=>nx1918);
   ix1100 : mux21_ni port map ( Y=>nx1099, A0=>Q_17_EXMPLR, A1=>D(17), S0=>
      nx1874);
   reg_Q_18 : dffr port map ( Q=>Q_18_EXMPLR, QB=>OPEN, D=>nx1109, CLK=>
      nx1896, R=>nx1918);
   ix1110 : mux21_ni port map ( Y=>nx1109, A0=>Q_18_EXMPLR, A1=>D(18), S0=>
      nx1874);
   reg_Q_19 : dffr port map ( Q=>Q_19_EXMPLR, QB=>OPEN, D=>nx1119, CLK=>
      nx1896, R=>nx1918);
   ix1120 : mux21_ni port map ( Y=>nx1119, A0=>Q_19_EXMPLR, A1=>D(19), S0=>
      nx1874);
   reg_Q_20 : dffr port map ( Q=>Q_20_EXMPLR, QB=>OPEN, D=>nx1129, CLK=>
      nx1896, R=>nx1918);
   ix1130 : mux21_ni port map ( Y=>nx1129, A0=>Q_20_EXMPLR, A1=>D(20), S0=>
      nx1874);
   reg_Q_21 : dffr port map ( Q=>Q_21_EXMPLR, QB=>OPEN, D=>nx1139, CLK=>
      nx1896, R=>nx1918);
   ix1140 : mux21_ni port map ( Y=>nx1139, A0=>Q_21_EXMPLR, A1=>D(21), S0=>
      nx1874);
   reg_Q_22 : dffr port map ( Q=>Q_22_EXMPLR, QB=>OPEN, D=>nx1149, CLK=>
      nx1896, R=>nx1918);
   ix1150 : mux21_ni port map ( Y=>nx1149, A0=>Q_22_EXMPLR, A1=>D(22), S0=>
      nx1874);
   reg_Q_23 : dffr port map ( Q=>Q_23_EXMPLR, QB=>OPEN, D=>nx1159, CLK=>
      nx1898, R=>nx1920);
   ix1160 : mux21_ni port map ( Y=>nx1159, A0=>Q_23_EXMPLR, A1=>D(23), S0=>
      nx1876);
   reg_Q_24 : dffr port map ( Q=>Q_24_EXMPLR, QB=>OPEN, D=>nx1169, CLK=>
      nx1898, R=>nx1920);
   ix1170 : mux21_ni port map ( Y=>nx1169, A0=>Q_24_EXMPLR, A1=>D(24), S0=>
      nx1876);
   reg_Q_25 : dffr port map ( Q=>Q_25_EXMPLR, QB=>OPEN, D=>nx1179, CLK=>
      nx1898, R=>nx1920);
   ix1180 : mux21_ni port map ( Y=>nx1179, A0=>Q_25_EXMPLR, A1=>D(25), S0=>
      nx1876);
   reg_Q_26 : dffr port map ( Q=>Q_26_EXMPLR, QB=>OPEN, D=>nx1189, CLK=>
      nx1898, R=>nx1920);
   ix1190 : mux21_ni port map ( Y=>nx1189, A0=>Q_26_EXMPLR, A1=>D(26), S0=>
      nx1876);
   reg_Q_27 : dffr port map ( Q=>Q_27_EXMPLR, QB=>OPEN, D=>nx1199, CLK=>
      nx1898, R=>nx1920);
   ix1200 : mux21_ni port map ( Y=>nx1199, A0=>Q_27_EXMPLR, A1=>D(27), S0=>
      nx1876);
   reg_Q_28 : dffr port map ( Q=>Q_28_EXMPLR, QB=>OPEN, D=>nx1209, CLK=>
      nx1898, R=>nx1920);
   ix1210 : mux21_ni port map ( Y=>nx1209, A0=>Q_28_EXMPLR, A1=>D(28), S0=>
      nx1876);
   reg_Q_29 : dffr port map ( Q=>Q_29_EXMPLR, QB=>OPEN, D=>nx1219, CLK=>
      nx1898, R=>nx1920);
   ix1220 : mux21_ni port map ( Y=>nx1219, A0=>Q_29_EXMPLR, A1=>D(29), S0=>
      nx1876);
   reg_Q_30 : dffr port map ( Q=>Q_30_EXMPLR, QB=>OPEN, D=>nx1229, CLK=>
      nx1900, R=>nx1922);
   ix1230 : mux21_ni port map ( Y=>nx1229, A0=>Q_30_EXMPLR, A1=>D(30), S0=>
      nx1878);
   reg_Q_31 : dffr port map ( Q=>Q_31_EXMPLR, QB=>OPEN, D=>nx1239, CLK=>
      nx1900, R=>nx1922);
   ix1240 : mux21_ni port map ( Y=>nx1239, A0=>Q_31_EXMPLR, A1=>D(31), S0=>
      nx1878);
   reg_Q_32 : dffr port map ( Q=>Q_32_EXMPLR, QB=>OPEN, D=>nx1249, CLK=>
      nx1900, R=>nx1922);
   ix1250 : mux21_ni port map ( Y=>nx1249, A0=>Q_32_EXMPLR, A1=>D(32), S0=>
      nx1878);
   ix1857 : inv01 port map ( Y=>nx1858, A=>en);
   ix1859 : inv02 port map ( Y=>nx1860, A=>nx1924);
   ix1861 : inv02 port map ( Y=>nx1862, A=>nx1924);
   ix1863 : inv02 port map ( Y=>nx1864, A=>nx1924);
   ix1865 : inv02 port map ( Y=>nx1866, A=>nx1924);
   ix1867 : inv02 port map ( Y=>nx1868, A=>nx1924);
   ix1869 : inv02 port map ( Y=>nx1870, A=>nx1858);
   ix1871 : inv02 port map ( Y=>nx1872, A=>nx1858);
   ix1873 : inv02 port map ( Y=>nx1874, A=>nx1858);
   ix1875 : inv02 port map ( Y=>nx1876, A=>nx1858);
   ix1877 : inv02 port map ( Y=>nx1878, A=>nx1858);
   ix1879 : inv01 port map ( Y=>nx1880, A=>clk);
   ix1881 : inv02 port map ( Y=>nx1882, A=>nx1926);
   ix1883 : inv02 port map ( Y=>nx1884, A=>nx1926);
   ix1885 : inv02 port map ( Y=>nx1886, A=>nx1926);
   ix1887 : inv02 port map ( Y=>nx1888, A=>nx1926);
   ix1889 : inv02 port map ( Y=>nx1890, A=>nx1926);
   ix1891 : inv02 port map ( Y=>nx1892, A=>nx1880);
   ix1893 : inv02 port map ( Y=>nx1894, A=>nx1880);
   ix1895 : inv02 port map ( Y=>nx1896, A=>nx1880);
   ix1897 : inv02 port map ( Y=>nx1898, A=>nx1880);
   ix1899 : inv02 port map ( Y=>nx1900, A=>nx1880);
   ix1901 : inv01 port map ( Y=>nx1902, A=>rst);
   ix1903 : inv02 port map ( Y=>nx1904, A=>nx1928);
   ix1905 : inv02 port map ( Y=>nx1906, A=>nx1928);
   ix1907 : inv02 port map ( Y=>nx1908, A=>nx1928);
   ix1909 : inv02 port map ( Y=>nx1910, A=>nx1928);
   ix1911 : inv02 port map ( Y=>nx1912, A=>nx1928);
   ix1913 : inv02 port map ( Y=>nx1914, A=>nx1902);
   ix1915 : inv02 port map ( Y=>nx1916, A=>nx1902);
   ix1917 : inv02 port map ( Y=>nx1918, A=>nx1902);
   ix1919 : inv02 port map ( Y=>nx1920, A=>nx1902);
   ix1921 : inv02 port map ( Y=>nx1922, A=>nx1902);
   ix1923 : inv01 port map ( Y=>nx1924, A=>en);
   ix1925 : inv01 port map ( Y=>nx1926, A=>clk);
   ix1927 : inv01 port map ( Y=>nx1928, A=>rst);
end RegArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Reg_16 is
   port (
      D : IN std_logic_vector (15 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      Q : OUT std_logic_vector (15 DOWNTO 0) ;
      Qbar : OUT std_logic_vector (15 DOWNTO 0)) ;
end Reg_16 ;

architecture RegArch of Reg_16 is
   signal Q_15_EXMPLR, Q_14_EXMPLR, Q_13_EXMPLR, Q_12_EXMPLR, Q_11_EXMPLR, 
      Q_10_EXMPLR, Q_9_EXMPLR, Q_8_EXMPLR, Q_7_EXMPLR, Q_6_EXMPLR, 
      Q_5_EXMPLR, Q_4_EXMPLR, Q_3_EXMPLR, Q_2_EXMPLR, Q_1_EXMPLR, Q_0_EXMPLR, 
      Qbar_15_EXMPLR, Qbar_14_EXMPLR, Qbar_13_EXMPLR, Qbar_12_EXMPLR, 
      Qbar_11_EXMPLR, Qbar_10_EXMPLR, Qbar_9_EXMPLR, Qbar_8_EXMPLR, 
      Qbar_7_EXMPLR, Qbar_6_EXMPLR, Qbar_5_EXMPLR, Qbar_4_EXMPLR, 
      Qbar_3_EXMPLR, Qbar_2_EXMPLR, Qbar_1_EXMPLR, Qbar_0_EXMPLR, nx470, 
      nx480, nx490, nx500, nx510, nx520, nx530, nx540, nx550, nx560, nx570, 
      nx580, nx590, nx600, nx610, nx620, nx630, nx640, nx650, nx660, nx670, 
      nx680, nx690, nx700, nx710, nx720, nx730, nx740, nx750, nx760, nx770, 
      nx780, nx792, nx797, nx802, nx807, nx812, nx817, nx822, nx827, nx832, 
      nx837, nx842, nx847, nx852, nx857, nx862, nx867, nx923, nx925, nx927, 
      nx929, nx931, nx933, nx935, nx937, nx939, nx941, nx943, nx945: 
   std_logic ;

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
   Qbar(15) <= Qbar_15_EXMPLR ;
   Qbar(14) <= Qbar_14_EXMPLR ;
   Qbar(13) <= Qbar_13_EXMPLR ;
   Qbar(12) <= Qbar_12_EXMPLR ;
   Qbar(11) <= Qbar_11_EXMPLR ;
   Qbar(10) <= Qbar_10_EXMPLR ;
   Qbar(9) <= Qbar_9_EXMPLR ;
   Qbar(8) <= Qbar_8_EXMPLR ;
   Qbar(7) <= Qbar_7_EXMPLR ;
   Qbar(6) <= Qbar_6_EXMPLR ;
   Qbar(5) <= Qbar_5_EXMPLR ;
   Qbar(4) <= Qbar_4_EXMPLR ;
   Qbar(3) <= Qbar_3_EXMPLR ;
   Qbar(2) <= Qbar_2_EXMPLR ;
   Qbar(1) <= Qbar_1_EXMPLR ;
   Qbar(0) <= Qbar_0_EXMPLR ;
   reg_Qbar_0 : dffs_ni port map ( Q=>Qbar_0_EXMPLR, QB=>OPEN, D=>nx630, CLK
      =>nx925, S=>nx937);
   ix631 : mux21_ni port map ( Y=>nx630, A0=>Qbar_0_EXMPLR, A1=>nx792, S0=>
      en);
   ix793 : inv01 port map ( Y=>nx792, A=>D(0));
   reg_Qbar_1 : dffs_ni port map ( Q=>Qbar_1_EXMPLR, QB=>OPEN, D=>nx640, CLK
      =>nx925, S=>nx937);
   ix641 : mux21_ni port map ( Y=>nx640, A0=>Qbar_1_EXMPLR, A1=>nx797, S0=>
      en);
   ix798 : inv01 port map ( Y=>nx797, A=>D(1));
   reg_Qbar_2 : dffs_ni port map ( Q=>Qbar_2_EXMPLR, QB=>OPEN, D=>nx650, CLK
      =>nx925, S=>nx937);
   ix651 : mux21_ni port map ( Y=>nx650, A0=>Qbar_2_EXMPLR, A1=>nx802, S0=>
      en);
   ix803 : inv01 port map ( Y=>nx802, A=>D(2));
   reg_Qbar_3 : dffs_ni port map ( Q=>Qbar_3_EXMPLR, QB=>OPEN, D=>nx660, CLK
      =>nx925, S=>nx937);
   ix661 : mux21_ni port map ( Y=>nx660, A0=>Qbar_3_EXMPLR, A1=>nx807, S0=>
      en);
   ix808 : inv01 port map ( Y=>nx807, A=>D(3));
   reg_Qbar_4 : dffs_ni port map ( Q=>Qbar_4_EXMPLR, QB=>OPEN, D=>nx670, CLK
      =>nx925, S=>nx937);
   ix671 : mux21_ni port map ( Y=>nx670, A0=>Qbar_4_EXMPLR, A1=>nx812, S0=>
      en);
   ix813 : inv01 port map ( Y=>nx812, A=>D(4));
   reg_Qbar_5 : dffs_ni port map ( Q=>Qbar_5_EXMPLR, QB=>OPEN, D=>nx680, CLK
      =>nx925, S=>nx937);
   ix681 : mux21_ni port map ( Y=>nx680, A0=>Qbar_5_EXMPLR, A1=>nx817, S0=>
      en);
   ix818 : inv01 port map ( Y=>nx817, A=>D(5));
   reg_Qbar_6 : dffs_ni port map ( Q=>Qbar_6_EXMPLR, QB=>OPEN, D=>nx690, CLK
      =>nx925, S=>nx937);
   ix691 : mux21_ni port map ( Y=>nx690, A0=>Qbar_6_EXMPLR, A1=>nx822, S0=>
      en);
   ix823 : inv01 port map ( Y=>nx822, A=>D(6));
   reg_Qbar_7 : dffs_ni port map ( Q=>Qbar_7_EXMPLR, QB=>OPEN, D=>nx700, CLK
      =>nx927, S=>nx939);
   ix701 : mux21_ni port map ( Y=>nx700, A0=>Qbar_7_EXMPLR, A1=>nx827, S0=>
      en);
   ix828 : inv01 port map ( Y=>nx827, A=>D(7));
   reg_Qbar_8 : dffs_ni port map ( Q=>Qbar_8_EXMPLR, QB=>OPEN, D=>nx710, CLK
      =>nx927, S=>nx939);
   ix711 : mux21_ni port map ( Y=>nx710, A0=>Qbar_8_EXMPLR, A1=>nx832, S0=>
      en);
   ix833 : inv01 port map ( Y=>nx832, A=>D(8));
   reg_Qbar_9 : dffs_ni port map ( Q=>Qbar_9_EXMPLR, QB=>OPEN, D=>nx720, CLK
      =>nx927, S=>nx939);
   ix721 : mux21_ni port map ( Y=>nx720, A0=>Qbar_9_EXMPLR, A1=>nx837, S0=>
      en);
   ix838 : inv01 port map ( Y=>nx837, A=>D(9));
   reg_Qbar_10 : dffs_ni port map ( Q=>Qbar_10_EXMPLR, QB=>OPEN, D=>nx730, 
      CLK=>nx927, S=>nx939);
   ix731 : mux21_ni port map ( Y=>nx730, A0=>Qbar_10_EXMPLR, A1=>nx842, S0=>
      en);
   ix843 : inv01 port map ( Y=>nx842, A=>D(10));
   reg_Qbar_11 : dffs_ni port map ( Q=>Qbar_11_EXMPLR, QB=>OPEN, D=>nx740, 
      CLK=>nx927, S=>nx939);
   ix741 : mux21_ni port map ( Y=>nx740, A0=>Qbar_11_EXMPLR, A1=>nx847, S0=>
      en);
   ix848 : inv01 port map ( Y=>nx847, A=>D(11));
   reg_Qbar_12 : dffs_ni port map ( Q=>Qbar_12_EXMPLR, QB=>OPEN, D=>nx750, 
      CLK=>nx927, S=>nx939);
   ix751 : mux21_ni port map ( Y=>nx750, A0=>Qbar_12_EXMPLR, A1=>nx852, S0=>
      en);
   ix853 : inv01 port map ( Y=>nx852, A=>D(12));
   reg_Qbar_13 : dffs_ni port map ( Q=>Qbar_13_EXMPLR, QB=>OPEN, D=>nx760, 
      CLK=>nx927, S=>nx939);
   ix761 : mux21_ni port map ( Y=>nx760, A0=>Qbar_13_EXMPLR, A1=>nx857, S0=>
      en);
   ix858 : inv01 port map ( Y=>nx857, A=>D(13));
   reg_Qbar_14 : dffs_ni port map ( Q=>Qbar_14_EXMPLR, QB=>OPEN, D=>nx770, 
      CLK=>nx929, S=>nx941);
   ix771 : mux21_ni port map ( Y=>nx770, A0=>Qbar_14_EXMPLR, A1=>nx862, S0=>
      en);
   ix863 : inv01 port map ( Y=>nx862, A=>D(14));
   reg_Qbar_15 : dffs_ni port map ( Q=>Qbar_15_EXMPLR, QB=>OPEN, D=>nx780, 
      CLK=>nx929, S=>nx941);
   ix781 : mux21_ni port map ( Y=>nx780, A0=>Qbar_15_EXMPLR, A1=>nx867, S0=>
      en);
   ix868 : inv01 port map ( Y=>nx867, A=>D(15));
   reg_Q_0 : dffr port map ( Q=>Q_0_EXMPLR, QB=>OPEN, D=>nx470, CLK=>nx929, 
      R=>nx941);
   ix471 : mux21_ni port map ( Y=>nx470, A0=>Q_0_EXMPLR, A1=>D(0), S0=>en);
   reg_Q_1 : dffr port map ( Q=>Q_1_EXMPLR, QB=>OPEN, D=>nx480, CLK=>nx929, 
      R=>nx941);
   ix481 : mux21_ni port map ( Y=>nx480, A0=>Q_1_EXMPLR, A1=>D(1), S0=>en);
   reg_Q_2 : dffr port map ( Q=>Q_2_EXMPLR, QB=>OPEN, D=>nx490, CLK=>nx929, 
      R=>nx941);
   ix491 : mux21_ni port map ( Y=>nx490, A0=>Q_2_EXMPLR, A1=>D(2), S0=>en);
   reg_Q_3 : dffr port map ( Q=>Q_3_EXMPLR, QB=>OPEN, D=>nx500, CLK=>nx929, 
      R=>nx941);
   ix501 : mux21_ni port map ( Y=>nx500, A0=>Q_3_EXMPLR, A1=>D(3), S0=>en);
   reg_Q_4 : dffr port map ( Q=>Q_4_EXMPLR, QB=>OPEN, D=>nx510, CLK=>nx929, 
      R=>nx941);
   ix511 : mux21_ni port map ( Y=>nx510, A0=>Q_4_EXMPLR, A1=>D(4), S0=>en);
   reg_Q_5 : dffr port map ( Q=>Q_5_EXMPLR, QB=>OPEN, D=>nx520, CLK=>nx931, 
      R=>nx943);
   ix521 : mux21_ni port map ( Y=>nx520, A0=>Q_5_EXMPLR, A1=>D(5), S0=>en);
   reg_Q_6 : dffr port map ( Q=>Q_6_EXMPLR, QB=>OPEN, D=>nx530, CLK=>nx931, 
      R=>nx943);
   ix531 : mux21_ni port map ( Y=>nx530, A0=>Q_6_EXMPLR, A1=>D(6), S0=>en);
   reg_Q_7 : dffr port map ( Q=>Q_7_EXMPLR, QB=>OPEN, D=>nx540, CLK=>nx931, 
      R=>nx943);
   ix541 : mux21_ni port map ( Y=>nx540, A0=>Q_7_EXMPLR, A1=>D(7), S0=>en);
   reg_Q_8 : dffr port map ( Q=>Q_8_EXMPLR, QB=>OPEN, D=>nx550, CLK=>nx931, 
      R=>nx943);
   ix551 : mux21_ni port map ( Y=>nx550, A0=>Q_8_EXMPLR, A1=>D(8), S0=>en);
   reg_Q_9 : dffr port map ( Q=>Q_9_EXMPLR, QB=>OPEN, D=>nx560, CLK=>nx931, 
      R=>nx943);
   ix561 : mux21_ni port map ( Y=>nx560, A0=>Q_9_EXMPLR, A1=>D(9), S0=>en);
   reg_Q_10 : dffr port map ( Q=>Q_10_EXMPLR, QB=>OPEN, D=>nx570, CLK=>nx931, 
      R=>nx943);
   ix571 : mux21_ni port map ( Y=>nx570, A0=>Q_10_EXMPLR, A1=>D(10), S0=>en
   );
   reg_Q_11 : dffr port map ( Q=>Q_11_EXMPLR, QB=>OPEN, D=>nx580, CLK=>nx931, 
      R=>nx943);
   ix581 : mux21_ni port map ( Y=>nx580, A0=>Q_11_EXMPLR, A1=>D(11), S0=>en
   );
   reg_Q_12 : dffr port map ( Q=>Q_12_EXMPLR, QB=>OPEN, D=>nx590, CLK=>nx933, 
      R=>nx945);
   ix591 : mux21_ni port map ( Y=>nx590, A0=>Q_12_EXMPLR, A1=>D(12), S0=>en
   );
   reg_Q_13 : dffr port map ( Q=>Q_13_EXMPLR, QB=>OPEN, D=>nx600, CLK=>nx933, 
      R=>nx945);
   ix601 : mux21_ni port map ( Y=>nx600, A0=>Q_13_EXMPLR, A1=>D(13), S0=>en
   );
   reg_Q_14 : dffr port map ( Q=>Q_14_EXMPLR, QB=>OPEN, D=>nx610, CLK=>nx933, 
      R=>nx945);
   ix611 : mux21_ni port map ( Y=>nx610, A0=>Q_14_EXMPLR, A1=>D(14), S0=>en
   );
   reg_Q_15 : dffr port map ( Q=>Q_15_EXMPLR, QB=>OPEN, D=>nx620, CLK=>nx933, 
      R=>nx945);
   ix621 : mux21_ni port map ( Y=>nx620, A0=>Q_15_EXMPLR, A1=>D(15), S0=>en
   );
   ix922 : inv01 port map ( Y=>nx923, A=>clk);
   ix924 : inv02 port map ( Y=>nx925, A=>nx923);
   ix926 : inv02 port map ( Y=>nx927, A=>nx923);
   ix928 : inv02 port map ( Y=>nx929, A=>nx923);
   ix930 : inv02 port map ( Y=>nx931, A=>nx923);
   ix932 : inv02 port map ( Y=>nx933, A=>nx923);
   ix934 : inv01 port map ( Y=>nx935, A=>rst);
   ix936 : inv02 port map ( Y=>nx937, A=>nx935);
   ix938 : inv02 port map ( Y=>nx939, A=>nx935);
   ix940 : inv02 port map ( Y=>nx941, A=>nx935);
   ix942 : inv02 port map ( Y=>nx943, A=>nx935);
   ix944 : inv02 port map ( Y=>nx945, A=>nx935);
end RegArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Reg_8 is
   port (
      D : IN std_logic_vector (7 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      Q : OUT std_logic_vector (7 DOWNTO 0) ;
      Qbar : OUT std_logic_vector (7 DOWNTO 0)) ;
end Reg_8 ;

architecture RegArch of Reg_8 is
   signal Q_7_EXMPLR, Q_6_EXMPLR, Q_5_EXMPLR, Q_4_EXMPLR, Q_3_EXMPLR, 
      Q_2_EXMPLR, Q_1_EXMPLR, Q_0_EXMPLR, Qbar_7_EXMPLR, Qbar_6_EXMPLR, 
      Qbar_5_EXMPLR, Qbar_4_EXMPLR, Qbar_3_EXMPLR, Qbar_2_EXMPLR, 
      Qbar_1_EXMPLR, Qbar_0_EXMPLR, nx254, nx264, nx274, nx284, nx294, nx304, 
      nx314, nx324, nx334, nx344, nx354, nx364, nx374, nx384, nx394, nx404, 
      nx416, nx421, nx426, nx431, nx436, nx441, nx446, nx451, nx483, nx485, 
      nx487, nx489, nx491, nx493, nx495, nx497: std_logic ;

begin
   Q(7) <= Q_7_EXMPLR ;
   Q(6) <= Q_6_EXMPLR ;
   Q(5) <= Q_5_EXMPLR ;
   Q(4) <= Q_4_EXMPLR ;
   Q(3) <= Q_3_EXMPLR ;
   Q(2) <= Q_2_EXMPLR ;
   Q(1) <= Q_1_EXMPLR ;
   Q(0) <= Q_0_EXMPLR ;
   Qbar(7) <= Qbar_7_EXMPLR ;
   Qbar(6) <= Qbar_6_EXMPLR ;
   Qbar(5) <= Qbar_5_EXMPLR ;
   Qbar(4) <= Qbar_4_EXMPLR ;
   Qbar(3) <= Qbar_3_EXMPLR ;
   Qbar(2) <= Qbar_2_EXMPLR ;
   Qbar(1) <= Qbar_1_EXMPLR ;
   Qbar(0) <= Qbar_0_EXMPLR ;
   reg_Qbar_0 : dffs_ni port map ( Q=>Qbar_0_EXMPLR, QB=>OPEN, D=>nx334, CLK
      =>nx493, S=>nx485);
   ix335 : mux21_ni port map ( Y=>nx334, A0=>Qbar_0_EXMPLR, A1=>nx416, S0=>
      en);
   ix417 : inv01 port map ( Y=>nx416, A=>D(0));
   reg_Qbar_1 : dffs_ni port map ( Q=>Qbar_1_EXMPLR, QB=>OPEN, D=>nx344, CLK
      =>nx493, S=>nx485);
   ix345 : mux21_ni port map ( Y=>nx344, A0=>Qbar_1_EXMPLR, A1=>nx421, S0=>
      en);
   ix422 : inv01 port map ( Y=>nx421, A=>D(1));
   reg_Qbar_2 : dffs_ni port map ( Q=>Qbar_2_EXMPLR, QB=>OPEN, D=>nx354, CLK
      =>nx493, S=>nx485);
   ix355 : mux21_ni port map ( Y=>nx354, A0=>Qbar_2_EXMPLR, A1=>nx426, S0=>
      en);
   ix427 : inv01 port map ( Y=>nx426, A=>D(2));
   reg_Qbar_3 : dffs_ni port map ( Q=>Qbar_3_EXMPLR, QB=>OPEN, D=>nx364, CLK
      =>nx493, S=>nx485);
   ix365 : mux21_ni port map ( Y=>nx364, A0=>Qbar_3_EXMPLR, A1=>nx431, S0=>
      en);
   ix432 : inv01 port map ( Y=>nx431, A=>D(3));
   reg_Qbar_4 : dffs_ni port map ( Q=>Qbar_4_EXMPLR, QB=>OPEN, D=>nx374, CLK
      =>nx493, S=>nx485);
   ix375 : mux21_ni port map ( Y=>nx374, A0=>Qbar_4_EXMPLR, A1=>nx436, S0=>
      en);
   ix437 : inv01 port map ( Y=>nx436, A=>D(4));
   reg_Qbar_5 : dffs_ni port map ( Q=>Qbar_5_EXMPLR, QB=>OPEN, D=>nx384, CLK
      =>nx493, S=>nx485);
   ix385 : mux21_ni port map ( Y=>nx384, A0=>Qbar_5_EXMPLR, A1=>nx441, S0=>
      en);
   ix442 : inv01 port map ( Y=>nx441, A=>D(5));
   reg_Qbar_6 : dffs_ni port map ( Q=>Qbar_6_EXMPLR, QB=>OPEN, D=>nx394, CLK
      =>nx493, S=>nx485);
   ix395 : mux21_ni port map ( Y=>nx394, A0=>Qbar_6_EXMPLR, A1=>nx446, S0=>
      en);
   ix447 : inv01 port map ( Y=>nx446, A=>D(6));
   reg_Qbar_7 : dffs_ni port map ( Q=>Qbar_7_EXMPLR, QB=>OPEN, D=>nx404, CLK
      =>nx495, S=>nx487);
   ix405 : mux21_ni port map ( Y=>nx404, A0=>Qbar_7_EXMPLR, A1=>nx451, S0=>
      en);
   ix452 : inv01 port map ( Y=>nx451, A=>D(7));
   reg_Q_0 : dffr port map ( Q=>Q_0_EXMPLR, QB=>OPEN, D=>nx254, CLK=>nx495, 
      R=>nx487);
   ix255 : mux21_ni port map ( Y=>nx254, A0=>Q_0_EXMPLR, A1=>D(0), S0=>en);
   reg_Q_1 : dffr port map ( Q=>Q_1_EXMPLR, QB=>OPEN, D=>nx264, CLK=>nx495, 
      R=>nx487);
   ix265 : mux21_ni port map ( Y=>nx264, A0=>Q_1_EXMPLR, A1=>D(1), S0=>en);
   reg_Q_2 : dffr port map ( Q=>Q_2_EXMPLR, QB=>OPEN, D=>nx274, CLK=>nx495, 
      R=>nx487);
   ix275 : mux21_ni port map ( Y=>nx274, A0=>Q_2_EXMPLR, A1=>D(2), S0=>en);
   reg_Q_3 : dffr port map ( Q=>Q_3_EXMPLR, QB=>OPEN, D=>nx284, CLK=>nx495, 
      R=>nx487);
   ix285 : mux21_ni port map ( Y=>nx284, A0=>Q_3_EXMPLR, A1=>D(3), S0=>en);
   reg_Q_4 : dffr port map ( Q=>Q_4_EXMPLR, QB=>OPEN, D=>nx294, CLK=>nx495, 
      R=>nx487);
   ix295 : mux21_ni port map ( Y=>nx294, A0=>Q_4_EXMPLR, A1=>D(4), S0=>en);
   reg_Q_5 : dffr port map ( Q=>Q_5_EXMPLR, QB=>OPEN, D=>nx304, CLK=>nx495, 
      R=>nx487);
   ix305 : mux21_ni port map ( Y=>nx304, A0=>Q_5_EXMPLR, A1=>D(5), S0=>en);
   reg_Q_6 : dffr port map ( Q=>Q_6_EXMPLR, QB=>OPEN, D=>nx314, CLK=>nx497, 
      R=>nx489);
   ix315 : mux21_ni port map ( Y=>nx314, A0=>Q_6_EXMPLR, A1=>D(6), S0=>en);
   reg_Q_7 : dffr port map ( Q=>Q_7_EXMPLR, QB=>OPEN, D=>nx324, CLK=>nx497, 
      R=>nx489);
   ix325 : mux21_ni port map ( Y=>nx324, A0=>Q_7_EXMPLR, A1=>D(7), S0=>en);
   ix482 : inv01 port map ( Y=>nx483, A=>rst);
   ix484 : inv02 port map ( Y=>nx485, A=>nx483);
   ix486 : inv02 port map ( Y=>nx487, A=>nx483);
   ix488 : inv02 port map ( Y=>nx489, A=>nx483);
   ix490 : inv01 port map ( Y=>nx491, A=>clk);
   ix492 : inv02 port map ( Y=>nx493, A=>nx491);
   ix494 : inv02 port map ( Y=>nx495, A=>nx491);
   ix496 : inv02 port map ( Y=>nx497, A=>nx491);
end RegArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity BinaryMux_33 is
   port (
      a : IN std_logic_vector (32 DOWNTO 0) ;
      b : IN std_logic_vector (32 DOWNTO 0) ;
      sel : IN std_logic ;
      f : OUT std_logic_vector (32 DOWNTO 0)) ;
end BinaryMux_33 ;

architecture BinaryMuxArch of BinaryMux_33 is
   signal nx298, nx300, nx302, nx304, nx306, nx308: std_logic ;

begin
   ix7 : mux21_ni port map ( Y=>f(0), A0=>a(0), A1=>b(0), S0=>nx300);
   ix15 : mux21_ni port map ( Y=>f(1), A0=>a(1), A1=>b(1), S0=>nx300);
   ix23 : mux21_ni port map ( Y=>f(2), A0=>a(2), A1=>b(2), S0=>nx300);
   ix31 : mux21_ni port map ( Y=>f(3), A0=>a(3), A1=>b(3), S0=>nx300);
   ix39 : mux21_ni port map ( Y=>f(4), A0=>a(4), A1=>b(4), S0=>nx300);
   ix47 : mux21_ni port map ( Y=>f(5), A0=>a(5), A1=>b(5), S0=>nx300);
   ix55 : mux21_ni port map ( Y=>f(6), A0=>a(6), A1=>b(6), S0=>nx300);
   ix63 : mux21_ni port map ( Y=>f(7), A0=>a(7), A1=>b(7), S0=>nx302);
   ix71 : mux21_ni port map ( Y=>f(8), A0=>a(8), A1=>b(8), S0=>nx302);
   ix79 : mux21_ni port map ( Y=>f(9), A0=>a(9), A1=>b(9), S0=>nx302);
   ix87 : mux21_ni port map ( Y=>f(10), A0=>a(10), A1=>b(10), S0=>nx302);
   ix95 : mux21_ni port map ( Y=>f(11), A0=>a(11), A1=>b(11), S0=>nx302);
   ix103 : mux21_ni port map ( Y=>f(12), A0=>a(12), A1=>b(12), S0=>nx302);
   ix111 : mux21_ni port map ( Y=>f(13), A0=>a(13), A1=>b(13), S0=>nx302);
   ix119 : mux21_ni port map ( Y=>f(14), A0=>a(14), A1=>b(14), S0=>nx304);
   ix127 : mux21_ni port map ( Y=>f(15), A0=>a(15), A1=>b(15), S0=>nx304);
   ix135 : mux21_ni port map ( Y=>f(16), A0=>a(16), A1=>b(16), S0=>nx304);
   ix143 : mux21_ni port map ( Y=>f(17), A0=>a(17), A1=>b(17), S0=>nx304);
   ix151 : mux21_ni port map ( Y=>f(18), A0=>a(18), A1=>b(18), S0=>nx304);
   ix159 : mux21_ni port map ( Y=>f(19), A0=>a(19), A1=>b(19), S0=>nx304);
   ix167 : mux21_ni port map ( Y=>f(20), A0=>a(20), A1=>b(20), S0=>nx304);
   ix175 : mux21_ni port map ( Y=>f(21), A0=>a(21), A1=>b(21), S0=>nx306);
   ix183 : mux21_ni port map ( Y=>f(22), A0=>a(22), A1=>b(22), S0=>nx306);
   ix191 : mux21_ni port map ( Y=>f(23), A0=>a(23), A1=>b(23), S0=>nx306);
   ix199 : mux21_ni port map ( Y=>f(24), A0=>a(24), A1=>b(24), S0=>nx306);
   ix207 : mux21_ni port map ( Y=>f(25), A0=>a(25), A1=>b(25), S0=>nx306);
   ix215 : mux21_ni port map ( Y=>f(26), A0=>a(26), A1=>b(26), S0=>nx306);
   ix223 : mux21_ni port map ( Y=>f(27), A0=>a(27), A1=>b(27), S0=>nx306);
   ix231 : mux21_ni port map ( Y=>f(28), A0=>a(28), A1=>b(28), S0=>nx308);
   ix239 : mux21_ni port map ( Y=>f(29), A0=>a(29), A1=>b(29), S0=>nx308);
   ix247 : mux21_ni port map ( Y=>f(30), A0=>a(30), A1=>b(30), S0=>nx308);
   ix255 : mux21_ni port map ( Y=>f(31), A0=>a(31), A1=>b(31), S0=>nx308);
   ix263 : mux21_ni port map ( Y=>f(32), A0=>a(32), A1=>b(32), S0=>nx308);
   ix297 : inv01 port map ( Y=>nx298, A=>sel);
   ix299 : inv02 port map ( Y=>nx300, A=>nx298);
   ix301 : inv02 port map ( Y=>nx302, A=>nx298);
   ix303 : inv02 port map ( Y=>nx304, A=>nx298);
   ix305 : inv02 port map ( Y=>nx306, A=>nx298);
   ix307 : inv02 port map ( Y=>nx308, A=>nx298);
end BinaryMuxArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NBitAdder_24 is
   port (
      a : IN std_logic_vector (23 DOWNTO 0) ;
      b : IN std_logic_vector (23 DOWNTO 0) ;
      carryIn : IN std_logic ;
      sum : OUT std_logic_vector (23 DOWNTO 0) ;
      carryOut : OUT std_logic) ;
end NBitAdder_24 ;

architecture NBitAdderArch of NBitAdder_24 is
   component FullAdder
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   signal temp_22, temp_21, temp_20, temp_19, temp_18, temp_17, temp_16, 
      temp_15, temp_14, temp_13, temp_12, temp_11, temp_10, temp_9, temp_8, 
      temp_7, temp_6, temp_5, temp_4, temp_3, temp_2, temp_1, temp_0: 
   std_logic ;

begin
   f0 : FullAdder port map ( a=>a(0), b=>b(0), cin=>carryIn, s=>sum(0), cout
      =>temp_0);
   loop1_1_fx : FullAdder port map ( a=>a(1), b=>b(1), cin=>temp_0, s=>
      sum(1), cout=>temp_1);
   loop1_2_fx : FullAdder port map ( a=>a(2), b=>b(2), cin=>temp_1, s=>
      sum(2), cout=>temp_2);
   loop1_3_fx : FullAdder port map ( a=>a(3), b=>b(3), cin=>temp_2, s=>
      sum(3), cout=>temp_3);
   loop1_4_fx : FullAdder port map ( a=>a(4), b=>b(4), cin=>temp_3, s=>
      sum(4), cout=>temp_4);
   loop1_5_fx : FullAdder port map ( a=>a(5), b=>b(5), cin=>temp_4, s=>
      sum(5), cout=>temp_5);
   loop1_6_fx : FullAdder port map ( a=>a(6), b=>b(6), cin=>temp_5, s=>
      sum(6), cout=>temp_6);
   loop1_7_fx : FullAdder port map ( a=>a(7), b=>b(7), cin=>temp_6, s=>
      sum(7), cout=>temp_7);
   loop1_8_fx : FullAdder port map ( a=>a(8), b=>b(8), cin=>temp_7, s=>
      sum(8), cout=>temp_8);
   loop1_9_fx : FullAdder port map ( a=>a(9), b=>b(9), cin=>temp_8, s=>
      sum(9), cout=>temp_9);
   loop1_10_fx : FullAdder port map ( a=>a(10), b=>b(10), cin=>temp_9, s=>
      sum(10), cout=>temp_10);
   loop1_11_fx : FullAdder port map ( a=>a(11), b=>b(11), cin=>temp_10, s=>
      sum(11), cout=>temp_11);
   loop1_12_fx : FullAdder port map ( a=>a(12), b=>b(12), cin=>temp_11, s=>
      sum(12), cout=>temp_12);
   loop1_13_fx : FullAdder port map ( a=>a(13), b=>b(13), cin=>temp_12, s=>
      sum(13), cout=>temp_13);
   loop1_14_fx : FullAdder port map ( a=>a(14), b=>b(14), cin=>temp_13, s=>
      sum(14), cout=>temp_14);
   loop1_15_fx : FullAdder port map ( a=>a(15), b=>b(15), cin=>temp_14, s=>
      sum(15), cout=>temp_15);
   loop1_16_fx : FullAdder port map ( a=>a(16), b=>b(16), cin=>temp_15, s=>
      sum(16), cout=>temp_16);
   loop1_17_fx : FullAdder port map ( a=>a(17), b=>b(17), cin=>temp_16, s=>
      sum(17), cout=>temp_17);
   loop1_18_fx : FullAdder port map ( a=>a(18), b=>b(18), cin=>temp_17, s=>
      sum(18), cout=>temp_18);
   loop1_19_fx : FullAdder port map ( a=>a(19), b=>b(19), cin=>temp_18, s=>
      sum(19), cout=>temp_19);
   loop1_20_fx : FullAdder port map ( a=>a(20), b=>b(20), cin=>temp_19, s=>
      sum(20), cout=>temp_20);
   loop1_21_fx : FullAdder port map ( a=>a(21), b=>b(21), cin=>temp_20, s=>
      sum(21), cout=>temp_21);
   loop1_22_fx : FullAdder port map ( a=>a(22), b=>b(22), cin=>temp_21, s=>
      sum(22), cout=>temp_22);
   loop1_23_fx : FullAdder port map ( a=>a(23), b=>b(23), cin=>temp_22, s=>
      sum(23), cout=>carryOut);
end NBitAdderArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity BoothStep is
   port (
      p : IN std_logic_vector (32 DOWNTO 0) ;
      x : IN std_logic_vector (23 DOWNTO 0) ;
      f : OUT std_logic_vector (32 DOWNTO 0)) ;
end BoothStep ;

architecture BoothStepArch of BoothStep is
   component NBitAdder_24
      port (
         a : IN std_logic_vector (23 DOWNTO 0) ;
         b : IN std_logic_vector (23 DOWNTO 0) ;
         carryIn : IN std_logic ;
         sum : OUT std_logic_vector (23 DOWNTO 0) ;
         carryOut : OUT std_logic) ;
   end component ;
   signal op2_0, op2_23, op2_22, op2_21, op2_20, op2_19, op2_18, op2_17, 
      op2_16, op2_15, op2_14, op2_13, op2_12, op2_11, op2_10, op2_9, op2_8, 
      op2_7, op2_6, op2_5, op2_4, op2_3, op2_2, op2_1, f_31_EXMPLR, nx28, 
      nx307, nx311, nx317, nx321, nx325, nx329, nx333, nx337, nx341, nx345, 
      nx349, nx353, nx357, nx361, nx365, nx369, nx373, nx377, nx381, nx385, 
      nx389, nx393, nx397, nx401, nx405, nx407, nx414, nx416, nx418, nx421, 
      nx423, nx425, nx427, nx429, nx431, nx433, nx435, nx437, nx439, nx441, 
      nx443, nx445, nx447, nx449, nx451, nx458, nx305, carryIn: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   f(32) <= f_31_EXMPLR ;
   f(31) <= f_31_EXMPLR ;
   f(6) <= p(8) ;
   f(5) <= p(7) ;
   f(4) <= p(6) ;
   f(3) <= p(5) ;
   f(2) <= p(4) ;
   f(1) <= p(3) ;
   f(0) <= p(2) ;
   AdderCmp : NBitAdder_24 port map ( a(23)=>p(32), a(22)=>p(31), a(21)=>
      p(30), a(20)=>p(29), a(19)=>p(28), a(18)=>p(27), a(17)=>p(26), a(16)=>
      p(25), a(15)=>p(24), a(14)=>p(23), a(13)=>p(22), a(12)=>p(21), a(11)=>
      p(20), a(10)=>p(19), a(9)=>p(18), a(8)=>p(17), a(7)=>p(16), a(6)=>
      p(15), a(5)=>p(14), a(4)=>p(13), a(3)=>p(12), a(2)=>p(11), a(1)=>p(10), 
      a(0)=>p(9), b(23)=>op2_23, b(22)=>op2_22, b(21)=>op2_21, b(20)=>op2_20, 
      b(19)=>op2_19, b(18)=>op2_18, b(17)=>op2_17, b(16)=>op2_16, b(15)=>
      op2_15, b(14)=>op2_14, b(13)=>op2_13, b(12)=>op2_12, b(11)=>op2_11, 
      b(10)=>op2_10, b(9)=>op2_9, b(8)=>op2_8, b(7)=>op2_7, b(6)=>op2_6, 
      b(5)=>op2_5, b(4)=>op2_4, b(3)=>op2_3, b(2)=>op2_2, b(1)=>op2_1, b(0)
      =>op2_0, carryIn=>carryIn, sum(23)=>f(30), sum(22)=>f(29), sum(21)=>
      f(28), sum(20)=>f(27), sum(19)=>f(26), sum(18)=>f(25), sum(17)=>f(24), 
      sum(16)=>f(23), sum(15)=>f(22), sum(14)=>f(21), sum(13)=>f(20), 
      sum(12)=>f(19), sum(11)=>f(18), sum(10)=>f(17), sum(9)=>f(16), sum(8)
      =>f(15), sum(7)=>f(14), sum(6)=>f(13), sum(5)=>f(12), sum(4)=>f(11), 
      sum(3)=>f(10), sum(2)=>f(9), sum(1)=>f(8), sum(0)=>f(7), carryOut=>
      DANGLING(0));
   ix256 : fake_gnd port map ( Y=>f_31_EXMPLR);
   ix59 : oai221 port map ( Y=>op2_1, A0=>x(0), A1=>nx435, B0=>x(1), B1=>
      nx445, C0=>nx307);
   ix308 : aoi22 port map ( Y=>nx307, A0=>x(1), A1=>nx414, B0=>x(0), B1=>
      nx425);
   ix29 : nor02_2x port map ( Y=>nx28, A0=>p(2), A1=>nx311);
   ix312 : xnor2 port map ( Y=>nx311, A0=>p(0), A1=>p(1));
   ix77 : oai221 port map ( Y=>op2_2, A0=>x(1), A1=>nx435, B0=>x(2), B1=>
      nx445, C0=>nx317);
   ix318 : aoi22 port map ( Y=>nx317, A0=>x(2), A1=>nx414, B0=>x(1), B1=>
      nx425);
   ix95 : oai221 port map ( Y=>op2_3, A0=>x(2), A1=>nx435, B0=>x(3), B1=>
      nx445, C0=>nx321);
   ix322 : aoi22 port map ( Y=>nx321, A0=>x(3), A1=>nx414, B0=>x(2), B1=>
      nx425);
   ix113 : oai221 port map ( Y=>op2_4, A0=>x(3), A1=>nx435, B0=>x(4), B1=>
      nx445, C0=>nx325);
   ix326 : aoi22 port map ( Y=>nx325, A0=>x(4), A1=>nx414, B0=>x(3), B1=>
      nx425);
   ix131 : oai221 port map ( Y=>op2_5, A0=>x(4), A1=>nx435, B0=>x(5), B1=>
      nx445, C0=>nx329);
   ix330 : aoi22 port map ( Y=>nx329, A0=>x(5), A1=>nx414, B0=>x(4), B1=>
      nx425);
   ix149 : oai221 port map ( Y=>op2_6, A0=>x(5), A1=>nx435, B0=>x(6), B1=>
      nx445, C0=>nx333);
   ix334 : aoi22 port map ( Y=>nx333, A0=>x(6), A1=>nx414, B0=>x(5), B1=>
      nx425);
   ix167 : oai221 port map ( Y=>op2_7, A0=>x(6), A1=>nx437, B0=>x(7), B1=>
      nx445, C0=>nx337);
   ix338 : aoi22 port map ( Y=>nx337, A0=>x(7), A1=>nx414, B0=>x(6), B1=>
      nx425);
   ix185 : oai221 port map ( Y=>op2_8, A0=>x(7), A1=>nx437, B0=>x(8), B1=>
      nx447, C0=>nx341);
   ix342 : aoi22 port map ( Y=>nx341, A0=>x(8), A1=>nx416, B0=>x(7), B1=>
      nx427);
   ix203 : oai221 port map ( Y=>op2_9, A0=>x(8), A1=>nx437, B0=>x(9), B1=>
      nx447, C0=>nx345);
   ix346 : aoi22 port map ( Y=>nx345, A0=>x(9), A1=>nx416, B0=>x(8), B1=>
      nx427);
   ix221 : oai221 port map ( Y=>op2_10, A0=>x(9), A1=>nx437, B0=>x(10), B1=>
      nx447, C0=>nx349);
   ix350 : aoi22 port map ( Y=>nx349, A0=>x(10), A1=>nx416, B0=>x(9), B1=>
      nx427);
   ix239 : oai221 port map ( Y=>op2_11, A0=>x(10), A1=>nx437, B0=>x(11), B1
      =>nx447, C0=>nx353);
   ix354 : aoi22 port map ( Y=>nx353, A0=>x(11), A1=>nx416, B0=>x(10), B1=>
      nx427);
   ix257 : oai221 port map ( Y=>op2_12, A0=>x(11), A1=>nx437, B0=>x(12), B1
      =>nx447, C0=>nx357);
   ix358 : aoi22 port map ( Y=>nx357, A0=>x(12), A1=>nx416, B0=>x(11), B1=>
      nx427);
   ix275 : oai221 port map ( Y=>op2_13, A0=>x(12), A1=>nx437, B0=>x(13), B1
      =>nx447, C0=>nx361);
   ix362 : aoi22 port map ( Y=>nx361, A0=>x(13), A1=>nx416, B0=>x(12), B1=>
      nx427);
   ix293 : oai221 port map ( Y=>op2_14, A0=>x(13), A1=>nx439, B0=>x(14), B1
      =>nx447, C0=>nx365);
   ix366 : aoi22 port map ( Y=>nx365, A0=>x(14), A1=>nx416, B0=>x(13), B1=>
      nx427);
   ix311 : oai221 port map ( Y=>op2_15, A0=>x(14), A1=>nx439, B0=>x(15), B1
      =>nx449, C0=>nx369);
   ix370 : aoi22 port map ( Y=>nx369, A0=>x(15), A1=>nx418, B0=>x(14), B1=>
      nx429);
   ix329 : oai221 port map ( Y=>op2_16, A0=>x(15), A1=>nx439, B0=>x(16), B1
      =>nx449, C0=>nx373);
   ix374 : aoi22 port map ( Y=>nx373, A0=>x(16), A1=>nx418, B0=>x(15), B1=>
      nx429);
   ix347 : oai221 port map ( Y=>op2_17, A0=>x(16), A1=>nx439, B0=>x(17), B1
      =>nx449, C0=>nx377);
   ix378 : aoi22 port map ( Y=>nx377, A0=>x(17), A1=>nx418, B0=>x(16), B1=>
      nx429);
   ix365 : oai221 port map ( Y=>op2_18, A0=>x(17), A1=>nx439, B0=>x(18), B1
      =>nx449, C0=>nx381);
   ix382 : aoi22 port map ( Y=>nx381, A0=>x(18), A1=>nx418, B0=>x(17), B1=>
      nx429);
   ix383 : oai221 port map ( Y=>op2_19, A0=>x(18), A1=>nx439, B0=>x(19), B1
      =>nx449, C0=>nx385);
   ix386 : aoi22 port map ( Y=>nx385, A0=>x(19), A1=>nx418, B0=>x(18), B1=>
      nx429);
   ix401 : oai221 port map ( Y=>op2_20, A0=>x(19), A1=>nx439, B0=>x(20), B1
      =>nx449, C0=>nx389);
   ix390 : aoi22 port map ( Y=>nx389, A0=>x(20), A1=>nx418, B0=>x(19), B1=>
      nx429);
   ix419 : oai221 port map ( Y=>op2_21, A0=>x(20), A1=>nx441, B0=>x(21), B1
      =>nx449, C0=>nx393);
   ix394 : aoi22 port map ( Y=>nx393, A0=>x(21), A1=>nx418, B0=>x(20), B1=>
      nx429);
   ix437 : oai221 port map ( Y=>op2_22, A0=>x(21), A1=>nx441, B0=>x(22), B1
      =>nx451, C0=>nx397);
   ix398 : aoi22 port map ( Y=>nx397, A0=>x(22), A1=>nx421, B0=>x(21), B1=>
      nx431);
   ix455 : oai221 port map ( Y=>op2_23, A0=>x(22), A1=>nx441, B0=>x(23), B1
      =>nx451, C0=>nx401);
   ix402 : aoi22 port map ( Y=>nx401, A0=>x(23), A1=>nx421, B0=>x(22), B1=>
      nx431);
   ix35 : nand02 port map ( Y=>op2_0, A0=>nx405, A1=>nx441);
   ix408 : inv01 port map ( Y=>nx407, A=>nx28);
   ix413 : inv02 port map ( Y=>nx414, A=>nx407);
   ix415 : inv02 port map ( Y=>nx416, A=>nx407);
   ix417 : inv02 port map ( Y=>nx418, A=>nx407);
   ix420 : inv02 port map ( Y=>nx421, A=>nx407);
   ix424 : inv02 port map ( Y=>nx425, A=>nx423);
   ix426 : inv02 port map ( Y=>nx427, A=>nx423);
   ix428 : inv02 port map ( Y=>nx429, A=>nx423);
   ix430 : inv02 port map ( Y=>nx431, A=>nx423);
   ix434 : inv02 port map ( Y=>nx435, A=>nx433);
   ix436 : inv02 port map ( Y=>nx437, A=>nx433);
   ix438 : inv02 port map ( Y=>nx439, A=>nx433);
   ix440 : inv02 port map ( Y=>nx441, A=>nx433);
   ix444 : inv02 port map ( Y=>nx445, A=>nx443);
   ix446 : inv02 port map ( Y=>nx447, A=>nx458);
   ix448 : inv02 port map ( Y=>nx449, A=>nx458);
   ix450 : inv02 port map ( Y=>nx451, A=>nx458);
   ix296 : nor03_2x port map ( Y=>nx433, A0=>p(1), A1=>nx305, A2=>p(0));
   ix302 : nor02ii port map ( Y=>nx443, A0=>nx433, A1=>carryIn);
   ix51 : nand03 port map ( Y=>nx423, A0=>p(1), A1=>nx305, A2=>p(0));
   ix406 : mux21 port map ( Y=>nx405, A0=>nx458, A1=>nx28, S0=>x(0));
   ix457 : inv01 port map ( Y=>nx458, A=>nx445);
   reg_nx305 : inv02 port map ( Y=>nx305, A=>p(2));
   reg_carryIn : aoi21 port map ( Y=>carryIn, A0=>p(1), A1=>p(0), B0=>nx305
   );
end BoothStepArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mul8x16 is
   port (
      q : IN std_logic_vector (7 DOWNTO 0) ;
      m : IN std_logic_vector (15 DOWNTO 0) ;
      fMul : OUT std_logic_vector (15 DOWNTO 0) ;
      clk : IN std_logic ;
      start : IN std_logic ;
      rst : IN std_logic ;
      sel : IN std_logic ;
      startAndPause : IN std_logic) ;
end Mul8x16 ;

architecture Mul8x16Arch of Mul8x16 is
   component Reg_33
      port (
         D : IN std_logic_vector (32 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (32 DOWNTO 0) ;
         Qbar : OUT std_logic_vector (32 DOWNTO 0)) ;
   end component ;
   component Reg_16
      port (
         D : IN std_logic_vector (15 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (15 DOWNTO 0) ;
         Qbar : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   component Reg_8
      port (
         D : IN std_logic_vector (7 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (7 DOWNTO 0) ;
         Qbar : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   component BinaryMux_33
      port (
         a : IN std_logic_vector (32 DOWNTO 0) ;
         b : IN std_logic_vector (32 DOWNTO 0) ;
         sel : IN std_logic ;
         f : OUT std_logic_vector (32 DOWNTO 0)) ;
   end component ;
   component BoothStep
      port (
         p : IN std_logic_vector (32 DOWNTO 0) ;
         x : IN std_logic_vector (23 DOWNTO 0) ;
         f : OUT std_logic_vector (32 DOWNTO 0)) ;
   end component ;
   signal fMul_15_EXMPLR, fMul_14_EXMPLR, fMul_13_EXMPLR, fMul_12_EXMPLR, 
      fMul_11_EXMPLR, fMul_10_EXMPLR, fMul_9_EXMPLR, fMul_8_EXMPLR, 
      fMul_7_EXMPLR, fMul_6_EXMPLR, fMul_5_EXMPLR, fMul_4_EXMPLR, 
      fMul_3_EXMPLR, fMul_2_EXMPLR, fMul_1_EXMPLR, fMul_0_EXMPLR, pInit_8, 
      pInit_7, pInit_6, pInit_5, pInit_4, pInit_3, pInit_2, pInit_1, pBs_32, 
      pBs_30, pBs_29, pBs_28, pBs_27, pBs_26, pBs_25, pBs_24, pBs_23, 
      pMux_32, pMux_31, pMux_30, pMux_29, pMux_28, pMux_27, pMux_26, pMux_25, 
      pMux_24, pMux_23, pMux_22, pMux_21, pMux_20, pMux_19, pMux_18, pMux_17, 
      pMux_16, pMux_15, pMux_14, pMux_13, pMux_12, pMux_11, pMux_10, pMux_9, 
      pMux_8, pMux_7, pMux_6, pMux_5, pMux_4, pMux_3, pMux_2, pMux_1, pMux_0, 
      pReg_32, pReg_31, pReg_30, pReg_29, pReg_28, pReg_27, pReg_26, pReg_25, 
      pReg_24, pReg_23, pReg_22, pReg_21, pReg_20, pReg_19, pReg_18, pReg_17, 
      pReg_16, pReg_15, pReg_14, pReg_13, pReg_12, pReg_11, pReg_10, pReg_9, 
      pReg_8, pReg_7, pReg_6, pReg_5, pReg_4, pReg_3, pReg_2, pReg_1, pReg_0, 
      mReg_15, mReg_14, mReg_13, mReg_12, mReg_11, mReg_10, mReg_9, mReg_8, 
      mReg_7, mReg_6, mReg_5, mReg_4, mReg_3, mReg_2, mReg_1, mReg_0, PWR, 
      pInit_32, nx277, nx279, nx281, nx283, nx285, nx287, nx289, nx291, 
      nx293: std_logic ;
   
   signal DANGLING : std_logic_vector (64 downto 0 );

begin
   fMul(15) <= fMul_15_EXMPLR ;
   fMul(14) <= fMul_14_EXMPLR ;
   fMul(13) <= fMul_13_EXMPLR ;
   fMul(12) <= fMul_12_EXMPLR ;
   fMul(11) <= fMul_11_EXMPLR ;
   fMul(10) <= fMul_10_EXMPLR ;
   fMul(9) <= fMul_9_EXMPLR ;
   fMul(8) <= fMul_8_EXMPLR ;
   fMul(7) <= fMul_7_EXMPLR ;
   fMul(6) <= fMul_6_EXMPLR ;
   fMul(5) <= fMul_5_EXMPLR ;
   fMul(4) <= fMul_4_EXMPLR ;
   fMul(3) <= fMul_3_EXMPLR ;
   fMul(2) <= fMul_2_EXMPLR ;
   fMul(1) <= fMul_1_EXMPLR ;
   fMul(0) <= fMul_0_EXMPLR ;
   pRegCmp : Reg_33 port map ( D(32)=>pBs_32, D(31)=>pBs_32, D(30)=>pBs_30, 
      D(29)=>pBs_29, D(28)=>pBs_28, D(27)=>pBs_27, D(26)=>pBs_26, D(25)=>
      pBs_25, D(24)=>pBs_24, D(23)=>pBs_23, D(22)=>fMul_15_EXMPLR, D(21)=>
      fMul_14_EXMPLR, D(20)=>fMul_13_EXMPLR, D(19)=>fMul_12_EXMPLR, D(18)=>
      fMul_11_EXMPLR, D(17)=>fMul_10_EXMPLR, D(16)=>fMul_9_EXMPLR, D(15)=>
      fMul_8_EXMPLR, D(14)=>fMul_7_EXMPLR, D(13)=>fMul_6_EXMPLR, D(12)=>
      fMul_5_EXMPLR, D(11)=>fMul_4_EXMPLR, D(10)=>fMul_3_EXMPLR, D(9)=>
      fMul_2_EXMPLR, D(8)=>fMul_1_EXMPLR, D(7)=>fMul_0_EXMPLR, D(6)=>pMux_8, 
      D(5)=>pMux_7, D(4)=>pMux_6, D(3)=>pMux_5, D(2)=>pMux_4, D(1)=>pMux_3, 
      D(0)=>pMux_2, en=>startAndPause, clk=>clk, rst=>rst, Q(32)=>pReg_32, 
      Q(31)=>pReg_31, Q(30)=>pReg_30, Q(29)=>pReg_29, Q(28)=>pReg_28, Q(27)
      =>pReg_27, Q(26)=>pReg_26, Q(25)=>pReg_25, Q(24)=>pReg_24, Q(23)=>
      pReg_23, Q(22)=>pReg_22, Q(21)=>pReg_21, Q(20)=>pReg_20, Q(19)=>
      pReg_19, Q(18)=>pReg_18, Q(17)=>pReg_17, Q(16)=>pReg_16, Q(15)=>
      pReg_15, Q(14)=>pReg_14, Q(13)=>pReg_13, Q(12)=>pReg_12, Q(11)=>
      pReg_11, Q(10)=>pReg_10, Q(9)=>pReg_9, Q(8)=>pReg_8, Q(7)=>pReg_7, 
      Q(6)=>pReg_6, Q(5)=>pReg_5, Q(4)=>pReg_4, Q(3)=>pReg_3, Q(2)=>pReg_2, 
      Q(1)=>pReg_1, Q(0)=>pReg_0, Qbar(32)=>DANGLING(0), Qbar(31)=>DANGLING(
      1), Qbar(30)=>DANGLING(2), Qbar(29)=>DANGLING(3), Qbar(28)=>DANGLING(4
      ), Qbar(27)=>DANGLING(5), Qbar(26)=>DANGLING(6), Qbar(25)=>DANGLING(7), 
      Qbar(24)=>DANGLING(8), Qbar(23)=>DANGLING(9), Qbar(22)=>DANGLING(10), 
      Qbar(21)=>DANGLING(11), Qbar(20)=>DANGLING(12), Qbar(19)=>DANGLING(13), 
      Qbar(18)=>DANGLING(14), Qbar(17)=>DANGLING(15), Qbar(16)=>DANGLING(16), 
      Qbar(15)=>DANGLING(17), Qbar(14)=>DANGLING(18), Qbar(13)=>DANGLING(19), 
      Qbar(12)=>DANGLING(20), Qbar(11)=>DANGLING(21), Qbar(10)=>DANGLING(22), 
      Qbar(9)=>DANGLING(23), Qbar(8)=>DANGLING(24), Qbar(7)=>DANGLING(25), 
      Qbar(6)=>DANGLING(26), Qbar(5)=>DANGLING(27), Qbar(4)=>DANGLING(28), 
      Qbar(3)=>DANGLING(29), Qbar(2)=>DANGLING(30), Qbar(1)=>DANGLING(31), 
      Qbar(0)=>DANGLING(32));
   mRegCmp : Reg_16 port map ( D(15)=>m(15), D(14)=>m(14), D(13)=>m(13), 
      D(12)=>m(12), D(11)=>m(11), D(10)=>m(10), D(9)=>m(9), D(8)=>m(8), D(7)
      =>m(7), D(6)=>m(6), D(5)=>m(5), D(4)=>m(4), D(3)=>m(3), D(2)=>m(2), 
      D(1)=>m(1), D(0)=>m(0), en=>PWR, clk=>start, rst=>rst, Q(15)=>mReg_15, 
      Q(14)=>mReg_14, Q(13)=>mReg_13, Q(12)=>mReg_12, Q(11)=>mReg_11, Q(10)
      =>mReg_10, Q(9)=>mReg_9, Q(8)=>mReg_8, Q(7)=>mReg_7, Q(6)=>mReg_6, 
      Q(5)=>mReg_5, Q(4)=>mReg_4, Q(3)=>mReg_3, Q(2)=>mReg_2, Q(1)=>mReg_1, 
      Q(0)=>mReg_0, Qbar(15)=>DANGLING(33), Qbar(14)=>DANGLING(34), Qbar(13)
      =>DANGLING(35), Qbar(12)=>DANGLING(36), Qbar(11)=>DANGLING(37), 
      Qbar(10)=>DANGLING(38), Qbar(9)=>DANGLING(39), Qbar(8)=>DANGLING(40), 
      Qbar(7)=>DANGLING(41), Qbar(6)=>DANGLING(42), Qbar(5)=>DANGLING(43), 
      Qbar(4)=>DANGLING(44), Qbar(3)=>DANGLING(45), Qbar(2)=>DANGLING(46), 
      Qbar(1)=>DANGLING(47), Qbar(0)=>DANGLING(48));
   qRegCmp : Reg_8 port map ( D(7)=>q(7), D(6)=>q(6), D(5)=>q(5), D(4)=>q(4), 
      D(3)=>q(3), D(2)=>q(2), D(1)=>q(1), D(0)=>q(0), en=>PWR, clk=>start, 
      rst=>rst, Q(7)=>pInit_8, Q(6)=>pInit_7, Q(5)=>pInit_6, Q(4)=>pInit_5, 
      Q(3)=>pInit_4, Q(2)=>pInit_3, Q(1)=>pInit_2, Q(0)=>pInit_1, Qbar(7)=>
      DANGLING(49), Qbar(6)=>DANGLING(50), Qbar(5)=>DANGLING(51), Qbar(4)=>
      DANGLING(52), Qbar(3)=>DANGLING(53), Qbar(2)=>DANGLING(54), Qbar(1)=>
      DANGLING(55), Qbar(0)=>DANGLING(56));
   MuxCmp : BinaryMux_33 port map ( a(32)=>pReg_32, a(31)=>pReg_31, a(30)=>
      pReg_30, a(29)=>pReg_29, a(28)=>pReg_28, a(27)=>pReg_27, a(26)=>
      pReg_26, a(25)=>pReg_25, a(24)=>pReg_24, a(23)=>pReg_23, a(22)=>
      pReg_22, a(21)=>pReg_21, a(20)=>pReg_20, a(19)=>pReg_19, a(18)=>
      pReg_18, a(17)=>pReg_17, a(16)=>pReg_16, a(15)=>pReg_15, a(14)=>
      pReg_14, a(13)=>pReg_13, a(12)=>pReg_12, a(11)=>pReg_11, a(10)=>
      pReg_10, a(9)=>pReg_9, a(8)=>pReg_8, a(7)=>pReg_7, a(6)=>pReg_6, a(5)
      =>pReg_5, a(4)=>pReg_4, a(3)=>pReg_3, a(2)=>pReg_2, a(1)=>pReg_1, a(0)
      =>pReg_0, b(32)=>pInit_32, b(31)=>pInit_32, b(30)=>pInit_32, b(29)=>
      pInit_32, b(28)=>pInit_32, b(27)=>pInit_32, b(26)=>pInit_32, b(25)=>
      pInit_32, b(24)=>pInit_32, b(23)=>pInit_32, b(22)=>pInit_32, b(21)=>
      pInit_32, b(20)=>pInit_32, b(19)=>pInit_32, b(18)=>pInit_32, b(17)=>
      pInit_32, b(16)=>pInit_32, b(15)=>pInit_32, b(14)=>pInit_32, b(13)=>
      pInit_32, b(12)=>pInit_32, b(11)=>pInit_32, b(10)=>pInit_32, b(9)=>
      pInit_32, b(8)=>pInit_8, b(7)=>pInit_7, b(6)=>pInit_6, b(5)=>pInit_5, 
      b(4)=>pInit_4, b(3)=>pInit_3, b(2)=>pInit_2, b(1)=>pInit_1, b(0)=>
      pInit_32, sel=>sel, f(32)=>pMux_32, f(31)=>pMux_31, f(30)=>pMux_30, 
      f(29)=>pMux_29, f(28)=>pMux_28, f(27)=>pMux_27, f(26)=>pMux_26, f(25)
      =>pMux_25, f(24)=>pMux_24, f(23)=>pMux_23, f(22)=>pMux_22, f(21)=>
      pMux_21, f(20)=>pMux_20, f(19)=>pMux_19, f(18)=>pMux_18, f(17)=>
      pMux_17, f(16)=>pMux_16, f(15)=>pMux_15, f(14)=>pMux_14, f(13)=>
      pMux_13, f(12)=>pMux_12, f(11)=>pMux_11, f(10)=>pMux_10, f(9)=>pMux_9, 
      f(8)=>pMux_8, f(7)=>pMux_7, f(6)=>pMux_6, f(5)=>pMux_5, f(4)=>pMux_4, 
      f(3)=>pMux_3, f(2)=>pMux_2, f(1)=>pMux_1, f(0)=>pMux_0);
   BSCmp : BoothStep port map ( p(32)=>pMux_32, p(31)=>pMux_31, p(30)=>
      pMux_30, p(29)=>pMux_29, p(28)=>pMux_28, p(27)=>pMux_27, p(26)=>
      pMux_26, p(25)=>pMux_25, p(24)=>pMux_24, p(23)=>pMux_23, p(22)=>
      pMux_22, p(21)=>pMux_21, p(20)=>pMux_20, p(19)=>pMux_19, p(18)=>
      pMux_18, p(17)=>pMux_17, p(16)=>pMux_16, p(15)=>pMux_15, p(14)=>
      pMux_14, p(13)=>pMux_13, p(12)=>pMux_12, p(11)=>pMux_11, p(10)=>
      pMux_10, p(9)=>pMux_9, p(8)=>pMux_8, p(7)=>pMux_7, p(6)=>pMux_6, p(5)
      =>pMux_5, p(4)=>pMux_4, p(3)=>pMux_3, p(2)=>pMux_2, p(1)=>pMux_1, p(0)
      =>pMux_0, x(23)=>nx279, x(22)=>nx279, x(21)=>nx281, x(20)=>nx283, 
      x(19)=>nx285, x(18)=>nx287, x(17)=>nx289, x(16)=>nx291, x(15)=>nx293, 
      x(14)=>mReg_14, x(13)=>mReg_13, x(12)=>mReg_12, x(11)=>mReg_11, x(10)
      =>mReg_10, x(9)=>mReg_9, x(8)=>mReg_8, x(7)=>mReg_7, x(6)=>mReg_6, 
      x(5)=>mReg_5, x(4)=>mReg_4, x(3)=>mReg_3, x(2)=>mReg_2, x(1)=>mReg_1, 
      x(0)=>mReg_0, f(32)=>pBs_32, f(31)=>DANGLING(57), f(30)=>pBs_30, f(29)
      =>pBs_29, f(28)=>pBs_28, f(27)=>pBs_27, f(26)=>pBs_26, f(25)=>pBs_25, 
      f(24)=>pBs_24, f(23)=>pBs_23, f(22)=>fMul_15_EXMPLR, f(21)=>
      fMul_14_EXMPLR, f(20)=>fMul_13_EXMPLR, f(19)=>fMul_12_EXMPLR, f(18)=>
      fMul_11_EXMPLR, f(17)=>fMul_10_EXMPLR, f(16)=>fMul_9_EXMPLR, f(15)=>
      fMul_8_EXMPLR, f(14)=>fMul_7_EXMPLR, f(13)=>fMul_6_EXMPLR, f(12)=>
      fMul_5_EXMPLR, f(11)=>fMul_4_EXMPLR, f(10)=>fMul_3_EXMPLR, f(9)=>
      fMul_2_EXMPLR, f(8)=>fMul_1_EXMPLR, f(7)=>fMul_0_EXMPLR, f(6)=>
      DANGLING(58), f(5)=>DANGLING(59), f(4)=>DANGLING(60), f(3)=>DANGLING(
      61), f(2)=>DANGLING(62), f(1)=>DANGLING(63), f(0)=>DANGLING(64));
   ix269 : fake_gnd port map ( Y=>pInit_32);
   ix267 : fake_vcc port map ( Y=>PWR);
   ix276 : inv01 port map ( Y=>nx277, A=>mReg_15);
   ix278 : inv01 port map ( Y=>nx279, A=>nx277);
   ix280 : inv01 port map ( Y=>nx281, A=>nx277);
   ix282 : inv01 port map ( Y=>nx283, A=>nx277);
   ix284 : inv01 port map ( Y=>nx285, A=>nx277);
   ix286 : inv01 port map ( Y=>nx287, A=>nx277);
   ix288 : inv01 port map ( Y=>nx289, A=>nx277);
   ix290 : inv01 port map ( Y=>nx291, A=>nx277);
   ix292 : inv01 port map ( Y=>nx293, A=>nx277);
end Mul8x16Arch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RisingHolderHalfCycle is
   port (
      edge : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      f : INOUT std_logic) ;
end RisingHolderHalfCycle ;

architecture RisingHolderHalfCycleArch of RisingHolderHalfCycle is
   signal nx0, d, NOT_clk, nx10: std_logic ;

begin
   ix1 : fake_vcc port map ( Y=>nx0);
   reg_f : dffr port map ( Q=>f, QB=>OPEN, D=>nx0, CLK=>edge, R=>nx10);
   ix11 : or02 port map ( Y=>nx10, A0=>d, A1=>rst);
   reg_d : dff port map ( Q=>d, QB=>OPEN, D=>f, CLK=>NOT_clk);
   ix31 : inv01 port map ( Y=>NOT_clk, A=>clk);
end RisingHolderHalfCycleArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ShiftReg_3 is
   port (
      outp : INOUT std_logic_vector (3 DOWNTO 0) ;
      clk : IN std_logic ;
      en : IN std_logic ;
      rst : IN std_logic) ;
end ShiftReg_3 ;

architecture ShiftRegArch of ShiftReg_3 is
   signal nx80, nx94, nx104, nx114: std_logic ;

begin
   reg_outp_0 : dffs_ni port map ( Q=>outp(0), QB=>OPEN, D=>nx80, CLK=>clk, 
      S=>rst);
   ix81 : nor02ii port map ( Y=>nx80, A0=>en, A1=>outp(0));
   reg_outp_1 : dffr port map ( Q=>outp(1), QB=>OPEN, D=>nx94, CLK=>clk, R=>
      rst);
   ix95 : mux21_ni port map ( Y=>nx94, A0=>outp(1), A1=>outp(0), S0=>en);
   reg_outp_2 : dffr port map ( Q=>outp(2), QB=>OPEN, D=>nx104, CLK=>clk, R
      =>rst);
   ix105 : mux21_ni port map ( Y=>nx104, A0=>outp(2), A1=>outp(1), S0=>en);
   reg_outp_3 : dffr port map ( Q=>outp(3), QB=>OPEN, D=>nx114, CLK=>clk, R
      =>rst);
   ix115 : mux21_ni port map ( Y=>nx114, A0=>outp(3), A1=>outp(2), S0=>en);

end ShiftRegArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Reg_1 is
   port (
      D : IN std_logic_vector (0 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      Q : OUT std_logic_vector (0 DOWNTO 0) ;
      Qbar : OUT std_logic_vector (0 DOWNTO 0)) ;
end Reg_1 ;

architecture RegArch of Reg_1 is
   signal Q_0_EXMPLR, Qbar_0_EXMPLR, nx65, nx75, nx87: std_logic ;

begin
   Q(0) <= Q_0_EXMPLR ;
   Qbar(0) <= Qbar_0_EXMPLR ;
   reg_Qbar_0 : dffs_ni port map ( Q=>Qbar_0_EXMPLR, QB=>OPEN, D=>nx75, CLK
      =>clk, S=>rst);
   ix76 : mux21_ni port map ( Y=>nx75, A0=>Qbar_0_EXMPLR, A1=>nx87, S0=>en);
   ix88 : inv01 port map ( Y=>nx87, A=>D(0));
   reg_Q_0 : dffr port map ( Q=>Q_0_EXMPLR, QB=>OPEN, D=>nx65, CLK=>clk, R=>
      rst);
   ix66 : mux21_ni port map ( Y=>nx65, A0=>Q_0_EXMPLR, A1=>D(0), S0=>en);

end RegArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity nMul8x16_10 is
   port (
      q_9_7 : IN std_logic ;
      q_9_6 : IN std_logic ;
      q_9_5 : IN std_logic ;
      q_9_4 : IN std_logic ;
      q_9_3 : IN std_logic ;
      q_9_2 : IN std_logic ;
      q_9_1 : IN std_logic ;
      q_9_0 : IN std_logic ;
      q_8_7 : IN std_logic ;
      q_8_6 : IN std_logic ;
      q_8_5 : IN std_logic ;
      q_8_4 : IN std_logic ;
      q_8_3 : IN std_logic ;
      q_8_2 : IN std_logic ;
      q_8_1 : IN std_logic ;
      q_8_0 : IN std_logic ;
      q_7_7 : IN std_logic ;
      q_7_6 : IN std_logic ;
      q_7_5 : IN std_logic ;
      q_7_4 : IN std_logic ;
      q_7_3 : IN std_logic ;
      q_7_2 : IN std_logic ;
      q_7_1 : IN std_logic ;
      q_7_0 : IN std_logic ;
      q_6_7 : IN std_logic ;
      q_6_6 : IN std_logic ;
      q_6_5 : IN std_logic ;
      q_6_4 : IN std_logic ;
      q_6_3 : IN std_logic ;
      q_6_2 : IN std_logic ;
      q_6_1 : IN std_logic ;
      q_6_0 : IN std_logic ;
      q_5_7 : IN std_logic ;
      q_5_6 : IN std_logic ;
      q_5_5 : IN std_logic ;
      q_5_4 : IN std_logic ;
      q_5_3 : IN std_logic ;
      q_5_2 : IN std_logic ;
      q_5_1 : IN std_logic ;
      q_5_0 : IN std_logic ;
      q_4_7 : IN std_logic ;
      q_4_6 : IN std_logic ;
      q_4_5 : IN std_logic ;
      q_4_4 : IN std_logic ;
      q_4_3 : IN std_logic ;
      q_4_2 : IN std_logic ;
      q_4_1 : IN std_logic ;
      q_4_0 : IN std_logic ;
      q_3_7 : IN std_logic ;
      q_3_6 : IN std_logic ;
      q_3_5 : IN std_logic ;
      q_3_4 : IN std_logic ;
      q_3_3 : IN std_logic ;
      q_3_2 : IN std_logic ;
      q_3_1 : IN std_logic ;
      q_3_0 : IN std_logic ;
      q_2_7 : IN std_logic ;
      q_2_6 : IN std_logic ;
      q_2_5 : IN std_logic ;
      q_2_4 : IN std_logic ;
      q_2_3 : IN std_logic ;
      q_2_2 : IN std_logic ;
      q_2_1 : IN std_logic ;
      q_2_0 : IN std_logic ;
      q_1_7 : IN std_logic ;
      q_1_6 : IN std_logic ;
      q_1_5 : IN std_logic ;
      q_1_4 : IN std_logic ;
      q_1_3 : IN std_logic ;
      q_1_2 : IN std_logic ;
      q_1_1 : IN std_logic ;
      q_1_0 : IN std_logic ;
      q_0_7 : IN std_logic ;
      q_0_6 : IN std_logic ;
      q_0_5 : IN std_logic ;
      q_0_4 : IN std_logic ;
      q_0_3 : IN std_logic ;
      q_0_2 : IN std_logic ;
      q_0_1 : IN std_logic ;
      q_0_0 : IN std_logic ;
      m_9_15 : IN std_logic ;
      m_9_14 : IN std_logic ;
      m_9_13 : IN std_logic ;
      m_9_12 : IN std_logic ;
      m_9_11 : IN std_logic ;
      m_9_10 : IN std_logic ;
      m_9_9 : IN std_logic ;
      m_9_8 : IN std_logic ;
      m_9_7 : IN std_logic ;
      m_9_6 : IN std_logic ;
      m_9_5 : IN std_logic ;
      m_9_4 : IN std_logic ;
      m_9_3 : IN std_logic ;
      m_9_2 : IN std_logic ;
      m_9_1 : IN std_logic ;
      m_9_0 : IN std_logic ;
      m_8_15 : IN std_logic ;
      m_8_14 : IN std_logic ;
      m_8_13 : IN std_logic ;
      m_8_12 : IN std_logic ;
      m_8_11 : IN std_logic ;
      m_8_10 : IN std_logic ;
      m_8_9 : IN std_logic ;
      m_8_8 : IN std_logic ;
      m_8_7 : IN std_logic ;
      m_8_6 : IN std_logic ;
      m_8_5 : IN std_logic ;
      m_8_4 : IN std_logic ;
      m_8_3 : IN std_logic ;
      m_8_2 : IN std_logic ;
      m_8_1 : IN std_logic ;
      m_8_0 : IN std_logic ;
      m_7_15 : IN std_logic ;
      m_7_14 : IN std_logic ;
      m_7_13 : IN std_logic ;
      m_7_12 : IN std_logic ;
      m_7_11 : IN std_logic ;
      m_7_10 : IN std_logic ;
      m_7_9 : IN std_logic ;
      m_7_8 : IN std_logic ;
      m_7_7 : IN std_logic ;
      m_7_6 : IN std_logic ;
      m_7_5 : IN std_logic ;
      m_7_4 : IN std_logic ;
      m_7_3 : IN std_logic ;
      m_7_2 : IN std_logic ;
      m_7_1 : IN std_logic ;
      m_7_0 : IN std_logic ;
      m_6_15 : IN std_logic ;
      m_6_14 : IN std_logic ;
      m_6_13 : IN std_logic ;
      m_6_12 : IN std_logic ;
      m_6_11 : IN std_logic ;
      m_6_10 : IN std_logic ;
      m_6_9 : IN std_logic ;
      m_6_8 : IN std_logic ;
      m_6_7 : IN std_logic ;
      m_6_6 : IN std_logic ;
      m_6_5 : IN std_logic ;
      m_6_4 : IN std_logic ;
      m_6_3 : IN std_logic ;
      m_6_2 : IN std_logic ;
      m_6_1 : IN std_logic ;
      m_6_0 : IN std_logic ;
      m_5_15 : IN std_logic ;
      m_5_14 : IN std_logic ;
      m_5_13 : IN std_logic ;
      m_5_12 : IN std_logic ;
      m_5_11 : IN std_logic ;
      m_5_10 : IN std_logic ;
      m_5_9 : IN std_logic ;
      m_5_8 : IN std_logic ;
      m_5_7 : IN std_logic ;
      m_5_6 : IN std_logic ;
      m_5_5 : IN std_logic ;
      m_5_4 : IN std_logic ;
      m_5_3 : IN std_logic ;
      m_5_2 : IN std_logic ;
      m_5_1 : IN std_logic ;
      m_5_0 : IN std_logic ;
      m_4_15 : IN std_logic ;
      m_4_14 : IN std_logic ;
      m_4_13 : IN std_logic ;
      m_4_12 : IN std_logic ;
      m_4_11 : IN std_logic ;
      m_4_10 : IN std_logic ;
      m_4_9 : IN std_logic ;
      m_4_8 : IN std_logic ;
      m_4_7 : IN std_logic ;
      m_4_6 : IN std_logic ;
      m_4_5 : IN std_logic ;
      m_4_4 : IN std_logic ;
      m_4_3 : IN std_logic ;
      m_4_2 : IN std_logic ;
      m_4_1 : IN std_logic ;
      m_4_0 : IN std_logic ;
      m_3_15 : IN std_logic ;
      m_3_14 : IN std_logic ;
      m_3_13 : IN std_logic ;
      m_3_12 : IN std_logic ;
      m_3_11 : IN std_logic ;
      m_3_10 : IN std_logic ;
      m_3_9 : IN std_logic ;
      m_3_8 : IN std_logic ;
      m_3_7 : IN std_logic ;
      m_3_6 : IN std_logic ;
      m_3_5 : IN std_logic ;
      m_3_4 : IN std_logic ;
      m_3_3 : IN std_logic ;
      m_3_2 : IN std_logic ;
      m_3_1 : IN std_logic ;
      m_3_0 : IN std_logic ;
      m_2_15 : IN std_logic ;
      m_2_14 : IN std_logic ;
      m_2_13 : IN std_logic ;
      m_2_12 : IN std_logic ;
      m_2_11 : IN std_logic ;
      m_2_10 : IN std_logic ;
      m_2_9 : IN std_logic ;
      m_2_8 : IN std_logic ;
      m_2_7 : IN std_logic ;
      m_2_6 : IN std_logic ;
      m_2_5 : IN std_logic ;
      m_2_4 : IN std_logic ;
      m_2_3 : IN std_logic ;
      m_2_2 : IN std_logic ;
      m_2_1 : IN std_logic ;
      m_2_0 : IN std_logic ;
      m_1_15 : IN std_logic ;
      m_1_14 : IN std_logic ;
      m_1_13 : IN std_logic ;
      m_1_12 : IN std_logic ;
      m_1_11 : IN std_logic ;
      m_1_10 : IN std_logic ;
      m_1_9 : IN std_logic ;
      m_1_8 : IN std_logic ;
      m_1_7 : IN std_logic ;
      m_1_6 : IN std_logic ;
      m_1_5 : IN std_logic ;
      m_1_4 : IN std_logic ;
      m_1_3 : IN std_logic ;
      m_1_2 : IN std_logic ;
      m_1_1 : IN std_logic ;
      m_1_0 : IN std_logic ;
      m_0_15 : IN std_logic ;
      m_0_14 : IN std_logic ;
      m_0_13 : IN std_logic ;
      m_0_12 : IN std_logic ;
      m_0_11 : IN std_logic ;
      m_0_10 : IN std_logic ;
      m_0_9 : IN std_logic ;
      m_0_8 : IN std_logic ;
      m_0_7 : IN std_logic ;
      m_0_6 : IN std_logic ;
      m_0_5 : IN std_logic ;
      m_0_4 : IN std_logic ;
      m_0_3 : IN std_logic ;
      m_0_2 : IN std_logic ;
      m_0_1 : IN std_logic ;
      m_0_0 : IN std_logic ;
      f_9_15 : INOUT std_logic ;
      f_9_14 : INOUT std_logic ;
      f_9_13 : INOUT std_logic ;
      f_9_12 : INOUT std_logic ;
      f_9_11 : INOUT std_logic ;
      f_9_10 : INOUT std_logic ;
      f_9_9 : INOUT std_logic ;
      f_9_8 : INOUT std_logic ;
      f_9_7 : INOUT std_logic ;
      f_9_6 : INOUT std_logic ;
      f_9_5 : INOUT std_logic ;
      f_9_4 : INOUT std_logic ;
      f_9_3 : INOUT std_logic ;
      f_9_2 : INOUT std_logic ;
      f_9_1 : INOUT std_logic ;
      f_9_0 : INOUT std_logic ;
      f_8_15 : INOUT std_logic ;
      f_8_14 : INOUT std_logic ;
      f_8_13 : INOUT std_logic ;
      f_8_12 : INOUT std_logic ;
      f_8_11 : INOUT std_logic ;
      f_8_10 : INOUT std_logic ;
      f_8_9 : INOUT std_logic ;
      f_8_8 : INOUT std_logic ;
      f_8_7 : INOUT std_logic ;
      f_8_6 : INOUT std_logic ;
      f_8_5 : INOUT std_logic ;
      f_8_4 : INOUT std_logic ;
      f_8_3 : INOUT std_logic ;
      f_8_2 : INOUT std_logic ;
      f_8_1 : INOUT std_logic ;
      f_8_0 : INOUT std_logic ;
      f_7_15 : INOUT std_logic ;
      f_7_14 : INOUT std_logic ;
      f_7_13 : INOUT std_logic ;
      f_7_12 : INOUT std_logic ;
      f_7_11 : INOUT std_logic ;
      f_7_10 : INOUT std_logic ;
      f_7_9 : INOUT std_logic ;
      f_7_8 : INOUT std_logic ;
      f_7_7 : INOUT std_logic ;
      f_7_6 : INOUT std_logic ;
      f_7_5 : INOUT std_logic ;
      f_7_4 : INOUT std_logic ;
      f_7_3 : INOUT std_logic ;
      f_7_2 : INOUT std_logic ;
      f_7_1 : INOUT std_logic ;
      f_7_0 : INOUT std_logic ;
      f_6_15 : INOUT std_logic ;
      f_6_14 : INOUT std_logic ;
      f_6_13 : INOUT std_logic ;
      f_6_12 : INOUT std_logic ;
      f_6_11 : INOUT std_logic ;
      f_6_10 : INOUT std_logic ;
      f_6_9 : INOUT std_logic ;
      f_6_8 : INOUT std_logic ;
      f_6_7 : INOUT std_logic ;
      f_6_6 : INOUT std_logic ;
      f_6_5 : INOUT std_logic ;
      f_6_4 : INOUT std_logic ;
      f_6_3 : INOUT std_logic ;
      f_6_2 : INOUT std_logic ;
      f_6_1 : INOUT std_logic ;
      f_6_0 : INOUT std_logic ;
      f_5_15 : INOUT std_logic ;
      f_5_14 : INOUT std_logic ;
      f_5_13 : INOUT std_logic ;
      f_5_12 : INOUT std_logic ;
      f_5_11 : INOUT std_logic ;
      f_5_10 : INOUT std_logic ;
      f_5_9 : INOUT std_logic ;
      f_5_8 : INOUT std_logic ;
      f_5_7 : INOUT std_logic ;
      f_5_6 : INOUT std_logic ;
      f_5_5 : INOUT std_logic ;
      f_5_4 : INOUT std_logic ;
      f_5_3 : INOUT std_logic ;
      f_5_2 : INOUT std_logic ;
      f_5_1 : INOUT std_logic ;
      f_5_0 : INOUT std_logic ;
      f_4_15 : INOUT std_logic ;
      f_4_14 : INOUT std_logic ;
      f_4_13 : INOUT std_logic ;
      f_4_12 : INOUT std_logic ;
      f_4_11 : INOUT std_logic ;
      f_4_10 : INOUT std_logic ;
      f_4_9 : INOUT std_logic ;
      f_4_8 : INOUT std_logic ;
      f_4_7 : INOUT std_logic ;
      f_4_6 : INOUT std_logic ;
      f_4_5 : INOUT std_logic ;
      f_4_4 : INOUT std_logic ;
      f_4_3 : INOUT std_logic ;
      f_4_2 : INOUT std_logic ;
      f_4_1 : INOUT std_logic ;
      f_4_0 : INOUT std_logic ;
      f_3_15 : INOUT std_logic ;
      f_3_14 : INOUT std_logic ;
      f_3_13 : INOUT std_logic ;
      f_3_12 : INOUT std_logic ;
      f_3_11 : INOUT std_logic ;
      f_3_10 : INOUT std_logic ;
      f_3_9 : INOUT std_logic ;
      f_3_8 : INOUT std_logic ;
      f_3_7 : INOUT std_logic ;
      f_3_6 : INOUT std_logic ;
      f_3_5 : INOUT std_logic ;
      f_3_4 : INOUT std_logic ;
      f_3_3 : INOUT std_logic ;
      f_3_2 : INOUT std_logic ;
      f_3_1 : INOUT std_logic ;
      f_3_0 : INOUT std_logic ;
      f_2_15 : INOUT std_logic ;
      f_2_14 : INOUT std_logic ;
      f_2_13 : INOUT std_logic ;
      f_2_12 : INOUT std_logic ;
      f_2_11 : INOUT std_logic ;
      f_2_10 : INOUT std_logic ;
      f_2_9 : INOUT std_logic ;
      f_2_8 : INOUT std_logic ;
      f_2_7 : INOUT std_logic ;
      f_2_6 : INOUT std_logic ;
      f_2_5 : INOUT std_logic ;
      f_2_4 : INOUT std_logic ;
      f_2_3 : INOUT std_logic ;
      f_2_2 : INOUT std_logic ;
      f_2_1 : INOUT std_logic ;
      f_2_0 : INOUT std_logic ;
      f_1_15 : INOUT std_logic ;
      f_1_14 : INOUT std_logic ;
      f_1_13 : INOUT std_logic ;
      f_1_12 : INOUT std_logic ;
      f_1_11 : INOUT std_logic ;
      f_1_10 : INOUT std_logic ;
      f_1_9 : INOUT std_logic ;
      f_1_8 : INOUT std_logic ;
      f_1_7 : INOUT std_logic ;
      f_1_6 : INOUT std_logic ;
      f_1_5 : INOUT std_logic ;
      f_1_4 : INOUT std_logic ;
      f_1_3 : INOUT std_logic ;
      f_1_2 : INOUT std_logic ;
      f_1_1 : INOUT std_logic ;
      f_1_0 : INOUT std_logic ;
      f_0_15 : INOUT std_logic ;
      f_0_14 : INOUT std_logic ;
      f_0_13 : INOUT std_logic ;
      f_0_12 : INOUT std_logic ;
      f_0_11 : INOUT std_logic ;
      f_0_10 : INOUT std_logic ;
      f_0_9 : INOUT std_logic ;
      f_0_8 : INOUT std_logic ;
      f_0_7 : INOUT std_logic ;
      f_0_6 : INOUT std_logic ;
      f_0_5 : INOUT std_logic ;
      f_0_4 : INOUT std_logic ;
      f_0_3 : INOUT std_logic ;
      f_0_2 : INOUT std_logic ;
      f_0_1 : INOUT std_logic ;
      f_0_0 : INOUT std_logic ;
      clk : IN std_logic ;
      start : IN std_logic ;
      rst : IN std_logic ;
      done : INOUT std_logic ;
      working : INOUT std_logic) ;
end nMul8x16_10 ;

architecture nMul8x16Arch of nMul8x16_10 is
   component Mul8x16
      port (
         q : IN std_logic_vector (7 DOWNTO 0) ;
         m : IN std_logic_vector (15 DOWNTO 0) ;
         fMul : OUT std_logic_vector (15 DOWNTO 0) ;
         clk : IN std_logic ;
         start : IN std_logic ;
         rst : IN std_logic ;
         sel : IN std_logic ;
         startAndPause : IN std_logic) ;
   end component ;
   component RisingHolderHalfCycle
      port (
         edge : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         f : INOUT std_logic) ;
   end component ;
   component ShiftReg_3
      port (
         outp : INOUT std_logic_vector (3 DOWNTO 0) ;
         clk : IN std_logic ;
         en : IN std_logic ;
         rst : IN std_logic) ;
   end component ;
   component Reg_1
      port (
         D : IN std_logic_vector (0 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (0 DOWNTO 0) ;
         Qbar : OUT std_logic_vector (0 DOWNTO 0)) ;
   end component ;
   signal counter_0, counterRst, restartDetection, firstStart, PWR, nx364, 
      nx366, nx368, nx370, nx372, nx374, nx380, nx382, nx384, nx386, nx388, 
      nx390, nx392, nx394, nx396, nx398, nx400, nx402, nx404, nx406, nx408, 
      nx410, nx412, nx414, nx416, nx418, nx420: std_logic ;
   
   signal DANGLING : std_logic_vector (2 downto 0 );

begin
   gen_9_cmp : Mul8x16 port map ( q(7)=>q_9_7, q(6)=>q_9_6, q(5)=>q_9_5, 
      q(4)=>q_9_4, q(3)=>q_9_3, q(2)=>q_9_2, q(1)=>q_9_1, q(0)=>q_9_0, m(15)
      =>m_9_15, m(14)=>m_9_14, m(13)=>m_9_13, m(12)=>m_9_12, m(11)=>m_9_11, 
      m(10)=>m_9_10, m(9)=>m_9_9, m(8)=>m_9_8, m(7)=>m_9_7, m(6)=>m_9_6, 
      m(5)=>m_9_5, m(4)=>m_9_4, m(3)=>m_9_3, m(2)=>m_9_2, m(1)=>m_9_1, m(0)
      =>m_9_0, fMul(15)=>f_9_15, fMul(14)=>f_9_14, fMul(13)=>f_9_13, 
      fMul(12)=>f_9_12, fMul(11)=>f_9_11, fMul(10)=>f_9_10, fMul(9)=>f_9_9, 
      fMul(8)=>f_9_8, fMul(7)=>f_9_7, fMul(6)=>f_9_6, fMul(5)=>f_9_5, 
      fMul(4)=>f_9_4, fMul(3)=>f_9_3, fMul(2)=>f_9_2, fMul(1)=>f_9_1, 
      fMul(0)=>f_9_0, clk=>nx414, start=>nx396, rst=>nx418, sel=>nx368, 
      startAndPause=>nx406);
   gen_8_cmp : Mul8x16 port map ( q(7)=>q_8_7, q(6)=>q_8_6, q(5)=>q_8_5, 
      q(4)=>q_8_4, q(3)=>q_8_3, q(2)=>q_8_2, q(1)=>q_8_1, q(0)=>q_8_0, m(15)
      =>m_8_15, m(14)=>m_8_14, m(13)=>m_8_13, m(12)=>m_8_12, m(11)=>m_8_11, 
      m(10)=>m_8_10, m(9)=>m_8_9, m(8)=>m_8_8, m(7)=>m_8_7, m(6)=>m_8_6, 
      m(5)=>m_8_5, m(4)=>m_8_4, m(3)=>m_8_3, m(2)=>m_8_2, m(1)=>m_8_1, m(0)
      =>m_8_0, fMul(15)=>f_8_15, fMul(14)=>f_8_14, fMul(13)=>f_8_13, 
      fMul(12)=>f_8_12, fMul(11)=>f_8_11, fMul(10)=>f_8_10, fMul(9)=>f_8_9, 
      fMul(8)=>f_8_8, fMul(7)=>f_8_7, fMul(6)=>f_8_6, fMul(5)=>f_8_5, 
      fMul(4)=>f_8_4, fMul(3)=>f_8_3, fMul(2)=>f_8_2, fMul(1)=>f_8_1, 
      fMul(0)=>f_8_0, clk=>nx414, start=>nx396, rst=>nx382, sel=>nx368, 
      startAndPause=>nx406);
   gen_7_cmp : Mul8x16 port map ( q(7)=>q_7_7, q(6)=>q_7_6, q(5)=>q_7_5, 
      q(4)=>q_7_4, q(3)=>q_7_3, q(2)=>q_7_2, q(1)=>q_7_1, q(0)=>q_7_0, m(15)
      =>m_7_15, m(14)=>m_7_14, m(13)=>m_7_13, m(12)=>m_7_12, m(11)=>m_7_11, 
      m(10)=>m_7_10, m(9)=>m_7_9, m(8)=>m_7_8, m(7)=>m_7_7, m(6)=>m_7_6, 
      m(5)=>m_7_5, m(4)=>m_7_4, m(3)=>m_7_3, m(2)=>m_7_2, m(1)=>m_7_1, m(0)
      =>m_7_0, fMul(15)=>f_7_15, fMul(14)=>f_7_14, fMul(13)=>f_7_13, 
      fMul(12)=>f_7_12, fMul(11)=>f_7_11, fMul(10)=>f_7_10, fMul(9)=>f_7_9, 
      fMul(8)=>f_7_8, fMul(7)=>f_7_7, fMul(6)=>f_7_6, fMul(5)=>f_7_5, 
      fMul(4)=>f_7_4, fMul(3)=>f_7_3, fMul(2)=>f_7_2, fMul(1)=>f_7_1, 
      fMul(0)=>f_7_0, clk=>nx414, start=>nx396, rst=>nx420, sel=>nx368, 
      startAndPause=>nx406);
   gen_6_cmp : Mul8x16 port map ( q(7)=>q_6_7, q(6)=>q_6_6, q(5)=>q_6_5, 
      q(4)=>q_6_4, q(3)=>q_6_3, q(2)=>q_6_2, q(1)=>q_6_1, q(0)=>q_6_0, m(15)
      =>m_6_15, m(14)=>m_6_14, m(13)=>m_6_13, m(12)=>m_6_12, m(11)=>m_6_11, 
      m(10)=>m_6_10, m(9)=>m_6_9, m(8)=>m_6_8, m(7)=>m_6_7, m(6)=>m_6_6, 
      m(5)=>m_6_5, m(4)=>m_6_4, m(3)=>m_6_3, m(2)=>m_6_2, m(1)=>m_6_1, m(0)
      =>m_6_0, fMul(15)=>f_6_15, fMul(14)=>f_6_14, fMul(13)=>f_6_13, 
      fMul(12)=>f_6_12, fMul(11)=>f_6_11, fMul(10)=>f_6_10, fMul(9)=>f_6_9, 
      fMul(8)=>f_6_8, fMul(7)=>f_6_7, fMul(6)=>f_6_6, fMul(5)=>f_6_5, 
      fMul(4)=>f_6_4, fMul(3)=>f_6_3, fMul(2)=>f_6_2, fMul(1)=>f_6_1, 
      fMul(0)=>f_6_0, clk=>nx416, start=>nx398, rst=>nx384, sel=>nx368, 
      startAndPause=>nx408);
   gen_5_cmp : Mul8x16 port map ( q(7)=>q_5_7, q(6)=>q_5_6, q(5)=>q_5_5, 
      q(4)=>q_5_4, q(3)=>q_5_3, q(2)=>q_5_2, q(1)=>q_5_1, q(0)=>q_5_0, m(15)
      =>m_5_15, m(14)=>m_5_14, m(13)=>m_5_13, m(12)=>m_5_12, m(11)=>m_5_11, 
      m(10)=>m_5_10, m(9)=>m_5_9, m(8)=>m_5_8, m(7)=>m_5_7, m(6)=>m_5_6, 
      m(5)=>m_5_5, m(4)=>m_5_4, m(3)=>m_5_3, m(2)=>m_5_2, m(1)=>m_5_1, m(0)
      =>m_5_0, fMul(15)=>f_5_15, fMul(14)=>f_5_14, fMul(13)=>f_5_13, 
      fMul(12)=>f_5_12, fMul(11)=>f_5_11, fMul(10)=>f_5_10, fMul(9)=>f_5_9, 
      fMul(8)=>f_5_8, fMul(7)=>f_5_7, fMul(6)=>f_5_6, fMul(5)=>f_5_5, 
      fMul(4)=>f_5_4, fMul(3)=>f_5_3, fMul(2)=>f_5_2, fMul(1)=>f_5_1, 
      fMul(0)=>f_5_0, clk=>nx416, start=>nx398, rst=>nx386, sel=>nx368, 
      startAndPause=>nx408);
   gen_4_cmp : Mul8x16 port map ( q(7)=>q_4_7, q(6)=>q_4_6, q(5)=>q_4_5, 
      q(4)=>q_4_4, q(3)=>q_4_3, q(2)=>q_4_2, q(1)=>q_4_1, q(0)=>q_4_0, m(15)
      =>m_4_15, m(14)=>m_4_14, m(13)=>m_4_13, m(12)=>m_4_12, m(11)=>m_4_11, 
      m(10)=>m_4_10, m(9)=>m_4_9, m(8)=>m_4_8, m(7)=>m_4_7, m(6)=>m_4_6, 
      m(5)=>m_4_5, m(4)=>m_4_4, m(3)=>m_4_3, m(2)=>m_4_2, m(1)=>m_4_1, m(0)
      =>m_4_0, fMul(15)=>f_4_15, fMul(14)=>f_4_14, fMul(13)=>f_4_13, 
      fMul(12)=>f_4_12, fMul(11)=>f_4_11, fMul(10)=>f_4_10, fMul(9)=>f_4_9, 
      fMul(8)=>f_4_8, fMul(7)=>f_4_7, fMul(6)=>f_4_6, fMul(5)=>f_4_5, 
      fMul(4)=>f_4_4, fMul(3)=>f_4_3, fMul(2)=>f_4_2, fMul(1)=>f_4_1, 
      fMul(0)=>f_4_0, clk=>nx416, start=>nx398, rst=>nx386, sel=>nx368, 
      startAndPause=>nx408);
   gen_3_cmp : Mul8x16 port map ( q(7)=>q_3_7, q(6)=>q_3_6, q(5)=>q_3_5, 
      q(4)=>q_3_4, q(3)=>q_3_3, q(2)=>q_3_2, q(1)=>q_3_1, q(0)=>q_3_0, m(15)
      =>m_3_15, m(14)=>m_3_14, m(13)=>m_3_13, m(12)=>m_3_12, m(11)=>m_3_11, 
      m(10)=>m_3_10, m(9)=>m_3_9, m(8)=>m_3_8, m(7)=>m_3_7, m(6)=>m_3_6, 
      m(5)=>m_3_5, m(4)=>m_3_4, m(3)=>m_3_3, m(2)=>m_3_2, m(1)=>m_3_1, m(0)
      =>m_3_0, fMul(15)=>f_3_15, fMul(14)=>f_3_14, fMul(13)=>f_3_13, 
      fMul(12)=>f_3_12, fMul(11)=>f_3_11, fMul(10)=>f_3_10, fMul(9)=>f_3_9, 
      fMul(8)=>f_3_8, fMul(7)=>f_3_7, fMul(6)=>f_3_6, fMul(5)=>f_3_5, 
      fMul(4)=>f_3_4, fMul(3)=>f_3_3, fMul(2)=>f_3_2, fMul(1)=>f_3_1, 
      fMul(0)=>f_3_0, clk=>nx372, start=>nx400, rst=>nx388, sel=>nx368, 
      startAndPause=>nx410);
   gen_2_cmp : Mul8x16 port map ( q(7)=>q_2_7, q(6)=>q_2_6, q(5)=>q_2_5, 
      q(4)=>q_2_4, q(3)=>q_2_3, q(2)=>q_2_2, q(1)=>q_2_1, q(0)=>q_2_0, m(15)
      =>m_2_15, m(14)=>m_2_14, m(13)=>m_2_13, m(12)=>m_2_12, m(11)=>m_2_11, 
      m(10)=>m_2_10, m(9)=>m_2_9, m(8)=>m_2_8, m(7)=>m_2_7, m(6)=>m_2_6, 
      m(5)=>m_2_5, m(4)=>m_2_4, m(3)=>m_2_3, m(2)=>m_2_2, m(1)=>m_2_1, m(0)
      =>m_2_0, fMul(15)=>f_2_15, fMul(14)=>f_2_14, fMul(13)=>f_2_13, 
      fMul(12)=>f_2_12, fMul(11)=>f_2_11, fMul(10)=>f_2_10, fMul(9)=>f_2_9, 
      fMul(8)=>f_2_8, fMul(7)=>f_2_7, fMul(6)=>f_2_6, fMul(5)=>f_2_5, 
      fMul(4)=>f_2_4, fMul(3)=>f_2_3, fMul(2)=>f_2_2, fMul(1)=>f_2_1, 
      fMul(0)=>f_2_0, clk=>nx374, start=>nx400, rst=>nx388, sel=>nx370, 
      startAndPause=>nx412);
   gen_1_cmp : Mul8x16 port map ( q(7)=>q_1_7, q(6)=>q_1_6, q(5)=>q_1_5, 
      q(4)=>q_1_4, q(3)=>q_1_3, q(2)=>q_1_2, q(1)=>q_1_1, q(0)=>q_1_0, m(15)
      =>m_1_15, m(14)=>m_1_14, m(13)=>m_1_13, m(12)=>m_1_12, m(11)=>m_1_11, 
      m(10)=>m_1_10, m(9)=>m_1_9, m(8)=>m_1_8, m(7)=>m_1_7, m(6)=>m_1_6, 
      m(5)=>m_1_5, m(4)=>m_1_4, m(3)=>m_1_3, m(2)=>m_1_2, m(1)=>m_1_1, m(0)
      =>m_1_0, fMul(15)=>f_1_15, fMul(14)=>f_1_14, fMul(13)=>f_1_13, 
      fMul(12)=>f_1_12, fMul(11)=>f_1_11, fMul(10)=>f_1_10, fMul(9)=>f_1_9, 
      fMul(8)=>f_1_8, fMul(7)=>f_1_7, fMul(6)=>f_1_6, fMul(5)=>f_1_5, 
      fMul(4)=>f_1_4, fMul(3)=>f_1_3, fMul(2)=>f_1_2, fMul(1)=>f_1_1, 
      fMul(0)=>f_1_0, clk=>nx374, start=>nx400, rst=>nx390, sel=>nx370, 
      startAndPause=>nx412);
   gen_0_cmp : Mul8x16 port map ( q(7)=>q_0_7, q(6)=>q_0_6, q(5)=>q_0_5, 
      q(4)=>q_0_4, q(3)=>q_0_3, q(2)=>q_0_2, q(1)=>q_0_1, q(0)=>q_0_0, m(15)
      =>m_0_15, m(14)=>m_0_14, m(13)=>m_0_13, m(12)=>m_0_12, m(11)=>m_0_11, 
      m(10)=>m_0_10, m(9)=>m_0_9, m(8)=>m_0_8, m(7)=>m_0_7, m(6)=>m_0_6, 
      m(5)=>m_0_5, m(4)=>m_0_4, m(3)=>m_0_3, m(2)=>m_0_2, m(1)=>m_0_1, m(0)
      =>m_0_0, fMul(15)=>f_0_15, fMul(14)=>f_0_14, fMul(13)=>f_0_13, 
      fMul(12)=>f_0_12, fMul(11)=>f_0_11, fMul(10)=>f_0_10, fMul(9)=>f_0_9, 
      fMul(8)=>f_0_8, fMul(7)=>f_0_7, fMul(6)=>f_0_6, fMul(5)=>f_0_5, 
      fMul(4)=>f_0_4, fMul(3)=>f_0_3, fMul(2)=>f_0_2, fMul(1)=>f_0_1, 
      fMul(0)=>f_0_0, clk=>nx374, start=>nx402, rst=>nx390, sel=>nx370, 
      startAndPause=>nx412);
   StartCaptuerCmp : RisingHolderHalfCycle port map ( edge=>nx396, clk=>clk, 
      rst=>nx418, f=>restartDetection);
   CounterCmp : ShiftReg_3 port map ( outp(3)=>done, outp(2)=>DANGLING(0), 
      outp(1)=>DANGLING(1), outp(0)=>counter_0, clk=>clk, en=>nx366, rst=>
      counterRst);
   firtStartLachCmp : Reg_1 port map ( D(0)=>PWR, en=>PWR, clk=>nx402, rst=>
      nx392, Q(0)=>firstStart, Qbar(0)=>DANGLING(2));
   ix343 : fake_vcc port map ( Y=>PWR);
   ix3 : or02 port map ( Y=>counterRst, A0=>nx420, A1=>restartDetection);
   ix7 : nor02ii port map ( Y=>working, A0=>done, A1=>firstStart);
   ix363 : buf02 port map ( Y=>nx364, A=>working);
   ix365 : buf02 port map ( Y=>nx366, A=>working);
   ix367 : buf02 port map ( Y=>nx368, A=>counter_0);
   ix369 : buf02 port map ( Y=>nx370, A=>counter_0);
   ix371 : inv01 port map ( Y=>nx372, A=>clk);
   ix373 : inv01 port map ( Y=>nx374, A=>clk);
   ix379 : inv01 port map ( Y=>nx380, A=>rst);
   ix381 : inv01 port map ( Y=>nx382, A=>nx380);
   ix383 : inv01 port map ( Y=>nx384, A=>nx380);
   ix385 : inv01 port map ( Y=>nx386, A=>nx380);
   ix387 : inv01 port map ( Y=>nx388, A=>nx380);
   ix389 : inv01 port map ( Y=>nx390, A=>nx380);
   ix391 : inv01 port map ( Y=>nx392, A=>nx380);
   ix393 : inv01 port map ( Y=>nx394, A=>start);
   ix395 : inv02 port map ( Y=>nx396, A=>nx394);
   ix397 : inv02 port map ( Y=>nx398, A=>nx394);
   ix399 : inv02 port map ( Y=>nx400, A=>nx394);
   ix401 : inv02 port map ( Y=>nx402, A=>nx394);
   ix403 : inv01 port map ( Y=>nx404, A=>nx364);
   ix405 : inv01 port map ( Y=>nx406, A=>nx404);
   ix407 : inv01 port map ( Y=>nx408, A=>nx404);
   ix409 : inv01 port map ( Y=>nx410, A=>nx404);
   ix411 : buf02 port map ( Y=>nx412, A=>working);
   ix413 : inv01 port map ( Y=>nx414, A=>clk);
   ix415 : inv01 port map ( Y=>nx416, A=>clk);
   ix417 : inv01 port map ( Y=>nx418, A=>nx380);
   ix419 : inv01 port map ( Y=>nx420, A=>nx380);
end nMul8x16Arch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Accumulator_10 is
   port (
      a_9_15 : IN std_logic ;
      a_9_14 : IN std_logic ;
      a_9_13 : IN std_logic ;
      a_9_12 : IN std_logic ;
      a_9_11 : IN std_logic ;
      a_9_10 : IN std_logic ;
      a_9_9 : IN std_logic ;
      a_9_8 : IN std_logic ;
      a_9_7 : IN std_logic ;
      a_9_6 : IN std_logic ;
      a_9_5 : IN std_logic ;
      a_9_4 : IN std_logic ;
      a_9_3 : IN std_logic ;
      a_9_2 : IN std_logic ;
      a_9_1 : IN std_logic ;
      a_9_0 : IN std_logic ;
      a_8_15 : IN std_logic ;
      a_8_14 : IN std_logic ;
      a_8_13 : IN std_logic ;
      a_8_12 : IN std_logic ;
      a_8_11 : IN std_logic ;
      a_8_10 : IN std_logic ;
      a_8_9 : IN std_logic ;
      a_8_8 : IN std_logic ;
      a_8_7 : IN std_logic ;
      a_8_6 : IN std_logic ;
      a_8_5 : IN std_logic ;
      a_8_4 : IN std_logic ;
      a_8_3 : IN std_logic ;
      a_8_2 : IN std_logic ;
      a_8_1 : IN std_logic ;
      a_8_0 : IN std_logic ;
      a_7_15 : IN std_logic ;
      a_7_14 : IN std_logic ;
      a_7_13 : IN std_logic ;
      a_7_12 : IN std_logic ;
      a_7_11 : IN std_logic ;
      a_7_10 : IN std_logic ;
      a_7_9 : IN std_logic ;
      a_7_8 : IN std_logic ;
      a_7_7 : IN std_logic ;
      a_7_6 : IN std_logic ;
      a_7_5 : IN std_logic ;
      a_7_4 : IN std_logic ;
      a_7_3 : IN std_logic ;
      a_7_2 : IN std_logic ;
      a_7_1 : IN std_logic ;
      a_7_0 : IN std_logic ;
      a_6_15 : IN std_logic ;
      a_6_14 : IN std_logic ;
      a_6_13 : IN std_logic ;
      a_6_12 : IN std_logic ;
      a_6_11 : IN std_logic ;
      a_6_10 : IN std_logic ;
      a_6_9 : IN std_logic ;
      a_6_8 : IN std_logic ;
      a_6_7 : IN std_logic ;
      a_6_6 : IN std_logic ;
      a_6_5 : IN std_logic ;
      a_6_4 : IN std_logic ;
      a_6_3 : IN std_logic ;
      a_6_2 : IN std_logic ;
      a_6_1 : IN std_logic ;
      a_6_0 : IN std_logic ;
      a_5_15 : IN std_logic ;
      a_5_14 : IN std_logic ;
      a_5_13 : IN std_logic ;
      a_5_12 : IN std_logic ;
      a_5_11 : IN std_logic ;
      a_5_10 : IN std_logic ;
      a_5_9 : IN std_logic ;
      a_5_8 : IN std_logic ;
      a_5_7 : IN std_logic ;
      a_5_6 : IN std_logic ;
      a_5_5 : IN std_logic ;
      a_5_4 : IN std_logic ;
      a_5_3 : IN std_logic ;
      a_5_2 : IN std_logic ;
      a_5_1 : IN std_logic ;
      a_5_0 : IN std_logic ;
      a_4_15 : IN std_logic ;
      a_4_14 : IN std_logic ;
      a_4_13 : IN std_logic ;
      a_4_12 : IN std_logic ;
      a_4_11 : IN std_logic ;
      a_4_10 : IN std_logic ;
      a_4_9 : IN std_logic ;
      a_4_8 : IN std_logic ;
      a_4_7 : IN std_logic ;
      a_4_6 : IN std_logic ;
      a_4_5 : IN std_logic ;
      a_4_4 : IN std_logic ;
      a_4_3 : IN std_logic ;
      a_4_2 : IN std_logic ;
      a_4_1 : IN std_logic ;
      a_4_0 : IN std_logic ;
      a_3_15 : IN std_logic ;
      a_3_14 : IN std_logic ;
      a_3_13 : IN std_logic ;
      a_3_12 : IN std_logic ;
      a_3_11 : IN std_logic ;
      a_3_10 : IN std_logic ;
      a_3_9 : IN std_logic ;
      a_3_8 : IN std_logic ;
      a_3_7 : IN std_logic ;
      a_3_6 : IN std_logic ;
      a_3_5 : IN std_logic ;
      a_3_4 : IN std_logic ;
      a_3_3 : IN std_logic ;
      a_3_2 : IN std_logic ;
      a_3_1 : IN std_logic ;
      a_3_0 : IN std_logic ;
      a_2_15 : IN std_logic ;
      a_2_14 : IN std_logic ;
      a_2_13 : IN std_logic ;
      a_2_12 : IN std_logic ;
      a_2_11 : IN std_logic ;
      a_2_10 : IN std_logic ;
      a_2_9 : IN std_logic ;
      a_2_8 : IN std_logic ;
      a_2_7 : IN std_logic ;
      a_2_6 : IN std_logic ;
      a_2_5 : IN std_logic ;
      a_2_4 : IN std_logic ;
      a_2_3 : IN std_logic ;
      a_2_2 : IN std_logic ;
      a_2_1 : IN std_logic ;
      a_2_0 : IN std_logic ;
      a_1_15 : IN std_logic ;
      a_1_14 : IN std_logic ;
      a_1_13 : IN std_logic ;
      a_1_12 : IN std_logic ;
      a_1_11 : IN std_logic ;
      a_1_10 : IN std_logic ;
      a_1_9 : IN std_logic ;
      a_1_8 : IN std_logic ;
      a_1_7 : IN std_logic ;
      a_1_6 : IN std_logic ;
      a_1_5 : IN std_logic ;
      a_1_4 : IN std_logic ;
      a_1_3 : IN std_logic ;
      a_1_2 : IN std_logic ;
      a_1_1 : IN std_logic ;
      a_1_0 : IN std_logic ;
      a_0_15 : IN std_logic ;
      a_0_14 : IN std_logic ;
      a_0_13 : IN std_logic ;
      a_0_12 : IN std_logic ;
      a_0_11 : IN std_logic ;
      a_0_10 : IN std_logic ;
      a_0_9 : IN std_logic ;
      a_0_8 : IN std_logic ;
      a_0_7 : IN std_logic ;
      a_0_6 : IN std_logic ;
      a_0_5 : IN std_logic ;
      a_0_4 : IN std_logic ;
      a_0_3 : IN std_logic ;
      a_0_2 : IN std_logic ;
      a_0_1 : IN std_logic ;
      a_0_0 : IN std_logic ;
      f_9_15 : INOUT std_logic ;
      f_9_14 : INOUT std_logic ;
      f_9_13 : INOUT std_logic ;
      f_9_12 : INOUT std_logic ;
      f_9_11 : INOUT std_logic ;
      f_9_10 : INOUT std_logic ;
      f_9_9 : INOUT std_logic ;
      f_9_8 : INOUT std_logic ;
      f_9_7 : INOUT std_logic ;
      f_9_6 : INOUT std_logic ;
      f_9_5 : INOUT std_logic ;
      f_9_4 : INOUT std_logic ;
      f_9_3 : INOUT std_logic ;
      f_9_2 : INOUT std_logic ;
      f_9_1 : INOUT std_logic ;
      f_9_0 : INOUT std_logic ;
      f_8_15 : INOUT std_logic ;
      f_8_14 : INOUT std_logic ;
      f_8_13 : INOUT std_logic ;
      f_8_12 : INOUT std_logic ;
      f_8_11 : INOUT std_logic ;
      f_8_10 : INOUT std_logic ;
      f_8_9 : INOUT std_logic ;
      f_8_8 : INOUT std_logic ;
      f_8_7 : INOUT std_logic ;
      f_8_6 : INOUT std_logic ;
      f_8_5 : INOUT std_logic ;
      f_8_4 : INOUT std_logic ;
      f_8_3 : INOUT std_logic ;
      f_8_2 : INOUT std_logic ;
      f_8_1 : INOUT std_logic ;
      f_8_0 : INOUT std_logic ;
      f_7_15 : INOUT std_logic ;
      f_7_14 : INOUT std_logic ;
      f_7_13 : INOUT std_logic ;
      f_7_12 : INOUT std_logic ;
      f_7_11 : INOUT std_logic ;
      f_7_10 : INOUT std_logic ;
      f_7_9 : INOUT std_logic ;
      f_7_8 : INOUT std_logic ;
      f_7_7 : INOUT std_logic ;
      f_7_6 : INOUT std_logic ;
      f_7_5 : INOUT std_logic ;
      f_7_4 : INOUT std_logic ;
      f_7_3 : INOUT std_logic ;
      f_7_2 : INOUT std_logic ;
      f_7_1 : INOUT std_logic ;
      f_7_0 : INOUT std_logic ;
      f_6_15 : INOUT std_logic ;
      f_6_14 : INOUT std_logic ;
      f_6_13 : INOUT std_logic ;
      f_6_12 : INOUT std_logic ;
      f_6_11 : INOUT std_logic ;
      f_6_10 : INOUT std_logic ;
      f_6_9 : INOUT std_logic ;
      f_6_8 : INOUT std_logic ;
      f_6_7 : INOUT std_logic ;
      f_6_6 : INOUT std_logic ;
      f_6_5 : INOUT std_logic ;
      f_6_4 : INOUT std_logic ;
      f_6_3 : INOUT std_logic ;
      f_6_2 : INOUT std_logic ;
      f_6_1 : INOUT std_logic ;
      f_6_0 : INOUT std_logic ;
      f_5_15 : INOUT std_logic ;
      f_5_14 : INOUT std_logic ;
      f_5_13 : INOUT std_logic ;
      f_5_12 : INOUT std_logic ;
      f_5_11 : INOUT std_logic ;
      f_5_10 : INOUT std_logic ;
      f_5_9 : INOUT std_logic ;
      f_5_8 : INOUT std_logic ;
      f_5_7 : INOUT std_logic ;
      f_5_6 : INOUT std_logic ;
      f_5_5 : INOUT std_logic ;
      f_5_4 : INOUT std_logic ;
      f_5_3 : INOUT std_logic ;
      f_5_2 : INOUT std_logic ;
      f_5_1 : INOUT std_logic ;
      f_5_0 : INOUT std_logic ;
      f_4_15 : INOUT std_logic ;
      f_4_14 : INOUT std_logic ;
      f_4_13 : INOUT std_logic ;
      f_4_12 : INOUT std_logic ;
      f_4_11 : INOUT std_logic ;
      f_4_10 : INOUT std_logic ;
      f_4_9 : INOUT std_logic ;
      f_4_8 : INOUT std_logic ;
      f_4_7 : INOUT std_logic ;
      f_4_6 : INOUT std_logic ;
      f_4_5 : INOUT std_logic ;
      f_4_4 : INOUT std_logic ;
      f_4_3 : INOUT std_logic ;
      f_4_2 : INOUT std_logic ;
      f_4_1 : INOUT std_logic ;
      f_4_0 : INOUT std_logic ;
      f_3_15 : INOUT std_logic ;
      f_3_14 : INOUT std_logic ;
      f_3_13 : INOUT std_logic ;
      f_3_12 : INOUT std_logic ;
      f_3_11 : INOUT std_logic ;
      f_3_10 : INOUT std_logic ;
      f_3_9 : INOUT std_logic ;
      f_3_8 : INOUT std_logic ;
      f_3_7 : INOUT std_logic ;
      f_3_6 : INOUT std_logic ;
      f_3_5 : INOUT std_logic ;
      f_3_4 : INOUT std_logic ;
      f_3_3 : INOUT std_logic ;
      f_3_2 : INOUT std_logic ;
      f_3_1 : INOUT std_logic ;
      f_3_0 : INOUT std_logic ;
      f_2_15 : INOUT std_logic ;
      f_2_14 : INOUT std_logic ;
      f_2_13 : INOUT std_logic ;
      f_2_12 : INOUT std_logic ;
      f_2_11 : INOUT std_logic ;
      f_2_10 : INOUT std_logic ;
      f_2_9 : INOUT std_logic ;
      f_2_8 : INOUT std_logic ;
      f_2_7 : INOUT std_logic ;
      f_2_6 : INOUT std_logic ;
      f_2_5 : INOUT std_logic ;
      f_2_4 : INOUT std_logic ;
      f_2_3 : INOUT std_logic ;
      f_2_2 : INOUT std_logic ;
      f_2_1 : INOUT std_logic ;
      f_2_0 : INOUT std_logic ;
      f_1_15 : INOUT std_logic ;
      f_1_14 : INOUT std_logic ;
      f_1_13 : INOUT std_logic ;
      f_1_12 : INOUT std_logic ;
      f_1_11 : INOUT std_logic ;
      f_1_10 : INOUT std_logic ;
      f_1_9 : INOUT std_logic ;
      f_1_8 : INOUT std_logic ;
      f_1_7 : INOUT std_logic ;
      f_1_6 : INOUT std_logic ;
      f_1_5 : INOUT std_logic ;
      f_1_4 : INOUT std_logic ;
      f_1_3 : INOUT std_logic ;
      f_1_2 : INOUT std_logic ;
      f_1_1 : INOUT std_logic ;
      f_1_0 : INOUT std_logic ;
      f_0_15 : INOUT std_logic ;
      f_0_14 : INOUT std_logic ;
      f_0_13 : INOUT std_logic ;
      f_0_12 : INOUT std_logic ;
      f_0_11 : INOUT std_logic ;
      f_0_10 : INOUT std_logic ;
      f_0_9 : INOUT std_logic ;
      f_0_8 : INOUT std_logic ;
      f_0_7 : INOUT std_logic ;
      f_0_6 : INOUT std_logic ;
      f_0_5 : INOUT std_logic ;
      f_0_4 : INOUT std_logic ;
      f_0_3 : INOUT std_logic ;
      f_0_2 : INOUT std_logic ;
      f_0_1 : INOUT std_logic ;
      f_0_0 : INOUT std_logic ;
      save : IN std_logic ;
      rst : IN std_logic) ;
end Accumulator_10 ;

architecture AccumulatorArch of Accumulator_10 is
   component NBitAdder_16
      port (
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         carryIn : IN std_logic ;
         sum : OUT std_logic_vector (15 DOWNTO 0) ;
         carryOut : OUT std_logic) ;
   end component ;
   component Reg_16
      port (
         D : IN std_logic_vector (15 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (15 DOWNTO 0) ;
         Qbar : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   signal outReg_9_15, outReg_9_14, outReg_9_13, outReg_9_12, outReg_9_11, 
      outReg_9_10, outReg_9_9, outReg_9_8, outReg_9_7, outReg_9_6, 
      outReg_9_5, outReg_9_4, outReg_9_3, outReg_9_2, outReg_9_1, outReg_9_0, 
      outReg_8_15, outReg_8_14, outReg_8_13, outReg_8_12, outReg_8_11, 
      outReg_8_10, outReg_8_9, outReg_8_8, outReg_8_7, outReg_8_6, 
      outReg_8_5, outReg_8_4, outReg_8_3, outReg_8_2, outReg_8_1, outReg_8_0, 
      outReg_7_15, outReg_7_14, outReg_7_13, outReg_7_12, outReg_7_11, 
      outReg_7_10, outReg_7_9, outReg_7_8, outReg_7_7, outReg_7_6, 
      outReg_7_5, outReg_7_4, outReg_7_3, outReg_7_2, outReg_7_1, outReg_7_0, 
      outReg_6_15, outReg_6_14, outReg_6_13, outReg_6_12, outReg_6_11, 
      outReg_6_10, outReg_6_9, outReg_6_8, outReg_6_7, outReg_6_6, 
      outReg_6_5, outReg_6_4, outReg_6_3, outReg_6_2, outReg_6_1, outReg_6_0, 
      outReg_5_15, outReg_5_14, outReg_5_13, outReg_5_12, outReg_5_11, 
      outReg_5_10, outReg_5_9, outReg_5_8, outReg_5_7, outReg_5_6, 
      outReg_5_5, outReg_5_4, outReg_5_3, outReg_5_2, outReg_5_1, outReg_5_0, 
      outReg_4_15, outReg_4_14, outReg_4_13, outReg_4_12, outReg_4_11, 
      outReg_4_10, outReg_4_9, outReg_4_8, outReg_4_7, outReg_4_6, 
      outReg_4_5, outReg_4_4, outReg_4_3, outReg_4_2, outReg_4_1, outReg_4_0, 
      outReg_3_15, outReg_3_14, outReg_3_13, outReg_3_12, outReg_3_11, 
      outReg_3_10, outReg_3_9, outReg_3_8, outReg_3_7, outReg_3_6, 
      outReg_3_5, outReg_3_4, outReg_3_3, outReg_3_2, outReg_3_1, outReg_3_0, 
      outReg_2_15, outReg_2_14, outReg_2_13, outReg_2_12, outReg_2_11, 
      outReg_2_10, outReg_2_9, outReg_2_8, outReg_2_7, outReg_2_6, 
      outReg_2_5, outReg_2_4, outReg_2_3, outReg_2_2, outReg_2_1, outReg_2_0, 
      outReg_1_15, outReg_1_14, outReg_1_13, outReg_1_12, outReg_1_11, 
      outReg_1_10, outReg_1_9, outReg_1_8, outReg_1_7, outReg_1_6, 
      outReg_1_5, outReg_1_4, outReg_1_3, outReg_1_2, outReg_1_1, outReg_1_0, 
      outReg_0_15, outReg_0_14, outReg_0_13, outReg_0_12, outReg_0_11, 
      outReg_0_10, outReg_0_9, outReg_0_8, outReg_0_7, outReg_0_6, 
      outReg_0_5, outReg_0_4, outReg_0_3, outReg_0_2, outReg_0_1, outReg_0_0, 
      PWR, GND, nx947, nx949, nx951, nx953: std_logic ;
   
   signal DANGLING : std_logic_vector (169 downto 0 );

begin
   gen_9_cmp1 : NBitAdder_16 port map ( a(15)=>a_9_15, a(14)=>a_9_14, a(13)
      =>a_9_13, a(12)=>a_9_12, a(11)=>a_9_11, a(10)=>a_9_10, a(9)=>a_9_9, 
      a(8)=>a_9_8, a(7)=>a_9_7, a(6)=>a_9_6, a(5)=>a_9_5, a(4)=>a_9_4, a(3)
      =>a_9_3, a(2)=>a_9_2, a(1)=>a_9_1, a(0)=>a_9_0, b(15)=>outReg_9_15, 
      b(14)=>outReg_9_14, b(13)=>outReg_9_13, b(12)=>outReg_9_12, b(11)=>
      outReg_9_11, b(10)=>outReg_9_10, b(9)=>outReg_9_9, b(8)=>outReg_9_8, 
      b(7)=>outReg_9_7, b(6)=>outReg_9_6, b(5)=>outReg_9_5, b(4)=>outReg_9_4, 
      b(3)=>outReg_9_3, b(2)=>outReg_9_2, b(1)=>outReg_9_1, b(0)=>outReg_9_0, 
      carryIn=>GND, sum(15)=>f_9_15, sum(14)=>f_9_14, sum(13)=>f_9_13, 
      sum(12)=>f_9_12, sum(11)=>f_9_11, sum(10)=>f_9_10, sum(9)=>f_9_9, 
      sum(8)=>f_9_8, sum(7)=>f_9_7, sum(6)=>f_9_6, sum(5)=>f_9_5, sum(4)=>
      f_9_4, sum(3)=>f_9_3, sum(2)=>f_9_2, sum(1)=>f_9_1, sum(0)=>f_9_0, 
      carryOut=>DANGLING(0));
   gen_9_cmp2 : Reg_16 port map ( D(15)=>f_9_15, D(14)=>f_9_14, D(13)=>
      f_9_13, D(12)=>f_9_12, D(11)=>f_9_11, D(10)=>f_9_10, D(9)=>f_9_9, D(8)
      =>f_9_8, D(7)=>f_9_7, D(6)=>f_9_6, D(5)=>f_9_5, D(4)=>f_9_4, D(3)=>
      f_9_3, D(2)=>f_9_2, D(1)=>f_9_1, D(0)=>f_9_0, en=>PWR, clk=>nx947, rst
      =>nx951, Q(15)=>outReg_9_15, Q(14)=>outReg_9_14, Q(13)=>outReg_9_13, 
      Q(12)=>outReg_9_12, Q(11)=>outReg_9_11, Q(10)=>outReg_9_10, Q(9)=>
      outReg_9_9, Q(8)=>outReg_9_8, Q(7)=>outReg_9_7, Q(6)=>outReg_9_6, Q(5)
      =>outReg_9_5, Q(4)=>outReg_9_4, Q(3)=>outReg_9_3, Q(2)=>outReg_9_2, 
      Q(1)=>outReg_9_1, Q(0)=>outReg_9_0, Qbar(15)=>DANGLING(1), Qbar(14)=>
      DANGLING(2), Qbar(13)=>DANGLING(3), Qbar(12)=>DANGLING(4), Qbar(11)=>
      DANGLING(5), Qbar(10)=>DANGLING(6), Qbar(9)=>DANGLING(7), Qbar(8)=>
      DANGLING(8), Qbar(7)=>DANGLING(9), Qbar(6)=>DANGLING(10), Qbar(5)=>
      DANGLING(11), Qbar(4)=>DANGLING(12), Qbar(3)=>DANGLING(13), Qbar(2)=>
      DANGLING(14), Qbar(1)=>DANGLING(15), Qbar(0)=>DANGLING(16));
   gen_8_cmp1 : NBitAdder_16 port map ( a(15)=>a_8_15, a(14)=>a_8_14, a(13)
      =>a_8_13, a(12)=>a_8_12, a(11)=>a_8_11, a(10)=>a_8_10, a(9)=>a_8_9, 
      a(8)=>a_8_8, a(7)=>a_8_7, a(6)=>a_8_6, a(5)=>a_8_5, a(4)=>a_8_4, a(3)
      =>a_8_3, a(2)=>a_8_2, a(1)=>a_8_1, a(0)=>a_8_0, b(15)=>outReg_8_15, 
      b(14)=>outReg_8_14, b(13)=>outReg_8_13, b(12)=>outReg_8_12, b(11)=>
      outReg_8_11, b(10)=>outReg_8_10, b(9)=>outReg_8_9, b(8)=>outReg_8_8, 
      b(7)=>outReg_8_7, b(6)=>outReg_8_6, b(5)=>outReg_8_5, b(4)=>outReg_8_4, 
      b(3)=>outReg_8_3, b(2)=>outReg_8_2, b(1)=>outReg_8_1, b(0)=>outReg_8_0, 
      carryIn=>GND, sum(15)=>f_8_15, sum(14)=>f_8_14, sum(13)=>f_8_13, 
      sum(12)=>f_8_12, sum(11)=>f_8_11, sum(10)=>f_8_10, sum(9)=>f_8_9, 
      sum(8)=>f_8_8, sum(7)=>f_8_7, sum(6)=>f_8_6, sum(5)=>f_8_5, sum(4)=>
      f_8_4, sum(3)=>f_8_3, sum(2)=>f_8_2, sum(1)=>f_8_1, sum(0)=>f_8_0, 
      carryOut=>DANGLING(17));
   gen_8_cmp2 : Reg_16 port map ( D(15)=>f_8_15, D(14)=>f_8_14, D(13)=>
      f_8_13, D(12)=>f_8_12, D(11)=>f_8_11, D(10)=>f_8_10, D(9)=>f_8_9, D(8)
      =>f_8_8, D(7)=>f_8_7, D(6)=>f_8_6, D(5)=>f_8_5, D(4)=>f_8_4, D(3)=>
      f_8_3, D(2)=>f_8_2, D(1)=>f_8_1, D(0)=>f_8_0, en=>PWR, clk=>nx947, rst
      =>nx951, Q(15)=>outReg_8_15, Q(14)=>outReg_8_14, Q(13)=>outReg_8_13, 
      Q(12)=>outReg_8_12, Q(11)=>outReg_8_11, Q(10)=>outReg_8_10, Q(9)=>
      outReg_8_9, Q(8)=>outReg_8_8, Q(7)=>outReg_8_7, Q(6)=>outReg_8_6, Q(5)
      =>outReg_8_5, Q(4)=>outReg_8_4, Q(3)=>outReg_8_3, Q(2)=>outReg_8_2, 
      Q(1)=>outReg_8_1, Q(0)=>outReg_8_0, Qbar(15)=>DANGLING(18), Qbar(14)=>
      DANGLING(19), Qbar(13)=>DANGLING(20), Qbar(12)=>DANGLING(21), Qbar(11)
      =>DANGLING(22), Qbar(10)=>DANGLING(23), Qbar(9)=>DANGLING(24), Qbar(8)
      =>DANGLING(25), Qbar(7)=>DANGLING(26), Qbar(6)=>DANGLING(27), Qbar(5)
      =>DANGLING(28), Qbar(4)=>DANGLING(29), Qbar(3)=>DANGLING(30), Qbar(2)
      =>DANGLING(31), Qbar(1)=>DANGLING(32), Qbar(0)=>DANGLING(33));
   gen_7_cmp1 : NBitAdder_16 port map ( a(15)=>a_7_15, a(14)=>a_7_14, a(13)
      =>a_7_13, a(12)=>a_7_12, a(11)=>a_7_11, a(10)=>a_7_10, a(9)=>a_7_9, 
      a(8)=>a_7_8, a(7)=>a_7_7, a(6)=>a_7_6, a(5)=>a_7_5, a(4)=>a_7_4, a(3)
      =>a_7_3, a(2)=>a_7_2, a(1)=>a_7_1, a(0)=>a_7_0, b(15)=>outReg_7_15, 
      b(14)=>outReg_7_14, b(13)=>outReg_7_13, b(12)=>outReg_7_12, b(11)=>
      outReg_7_11, b(10)=>outReg_7_10, b(9)=>outReg_7_9, b(8)=>outReg_7_8, 
      b(7)=>outReg_7_7, b(6)=>outReg_7_6, b(5)=>outReg_7_5, b(4)=>outReg_7_4, 
      b(3)=>outReg_7_3, b(2)=>outReg_7_2, b(1)=>outReg_7_1, b(0)=>outReg_7_0, 
      carryIn=>GND, sum(15)=>f_7_15, sum(14)=>f_7_14, sum(13)=>f_7_13, 
      sum(12)=>f_7_12, sum(11)=>f_7_11, sum(10)=>f_7_10, sum(9)=>f_7_9, 
      sum(8)=>f_7_8, sum(7)=>f_7_7, sum(6)=>f_7_6, sum(5)=>f_7_5, sum(4)=>
      f_7_4, sum(3)=>f_7_3, sum(2)=>f_7_2, sum(1)=>f_7_1, sum(0)=>f_7_0, 
      carryOut=>DANGLING(34));
   gen_7_cmp2 : Reg_16 port map ( D(15)=>f_7_15, D(14)=>f_7_14, D(13)=>
      f_7_13, D(12)=>f_7_12, D(11)=>f_7_11, D(10)=>f_7_10, D(9)=>f_7_9, D(8)
      =>f_7_8, D(7)=>f_7_7, D(6)=>f_7_6, D(5)=>f_7_5, D(4)=>f_7_4, D(3)=>
      f_7_3, D(2)=>f_7_2, D(1)=>f_7_1, D(0)=>f_7_0, en=>PWR, clk=>nx947, rst
      =>nx951, Q(15)=>outReg_7_15, Q(14)=>outReg_7_14, Q(13)=>outReg_7_13, 
      Q(12)=>outReg_7_12, Q(11)=>outReg_7_11, Q(10)=>outReg_7_10, Q(9)=>
      outReg_7_9, Q(8)=>outReg_7_8, Q(7)=>outReg_7_7, Q(6)=>outReg_7_6, Q(5)
      =>outReg_7_5, Q(4)=>outReg_7_4, Q(3)=>outReg_7_3, Q(2)=>outReg_7_2, 
      Q(1)=>outReg_7_1, Q(0)=>outReg_7_0, Qbar(15)=>DANGLING(35), Qbar(14)=>
      DANGLING(36), Qbar(13)=>DANGLING(37), Qbar(12)=>DANGLING(38), Qbar(11)
      =>DANGLING(39), Qbar(10)=>DANGLING(40), Qbar(9)=>DANGLING(41), Qbar(8)
      =>DANGLING(42), Qbar(7)=>DANGLING(43), Qbar(6)=>DANGLING(44), Qbar(5)
      =>DANGLING(45), Qbar(4)=>DANGLING(46), Qbar(3)=>DANGLING(47), Qbar(2)
      =>DANGLING(48), Qbar(1)=>DANGLING(49), Qbar(0)=>DANGLING(50));
   gen_6_cmp1 : NBitAdder_16 port map ( a(15)=>a_6_15, a(14)=>a_6_14, a(13)
      =>a_6_13, a(12)=>a_6_12, a(11)=>a_6_11, a(10)=>a_6_10, a(9)=>a_6_9, 
      a(8)=>a_6_8, a(7)=>a_6_7, a(6)=>a_6_6, a(5)=>a_6_5, a(4)=>a_6_4, a(3)
      =>a_6_3, a(2)=>a_6_2, a(1)=>a_6_1, a(0)=>a_6_0, b(15)=>outReg_6_15, 
      b(14)=>outReg_6_14, b(13)=>outReg_6_13, b(12)=>outReg_6_12, b(11)=>
      outReg_6_11, b(10)=>outReg_6_10, b(9)=>outReg_6_9, b(8)=>outReg_6_8, 
      b(7)=>outReg_6_7, b(6)=>outReg_6_6, b(5)=>outReg_6_5, b(4)=>outReg_6_4, 
      b(3)=>outReg_6_3, b(2)=>outReg_6_2, b(1)=>outReg_6_1, b(0)=>outReg_6_0, 
      carryIn=>GND, sum(15)=>f_6_15, sum(14)=>f_6_14, sum(13)=>f_6_13, 
      sum(12)=>f_6_12, sum(11)=>f_6_11, sum(10)=>f_6_10, sum(9)=>f_6_9, 
      sum(8)=>f_6_8, sum(7)=>f_6_7, sum(6)=>f_6_6, sum(5)=>f_6_5, sum(4)=>
      f_6_4, sum(3)=>f_6_3, sum(2)=>f_6_2, sum(1)=>f_6_1, sum(0)=>f_6_0, 
      carryOut=>DANGLING(51));
   gen_6_cmp2 : Reg_16 port map ( D(15)=>f_6_15, D(14)=>f_6_14, D(13)=>
      f_6_13, D(12)=>f_6_12, D(11)=>f_6_11, D(10)=>f_6_10, D(9)=>f_6_9, D(8)
      =>f_6_8, D(7)=>f_6_7, D(6)=>f_6_6, D(5)=>f_6_5, D(4)=>f_6_4, D(3)=>
      f_6_3, D(2)=>f_6_2, D(1)=>f_6_1, D(0)=>f_6_0, en=>PWR, clk=>nx947, rst
      =>nx951, Q(15)=>outReg_6_15, Q(14)=>outReg_6_14, Q(13)=>outReg_6_13, 
      Q(12)=>outReg_6_12, Q(11)=>outReg_6_11, Q(10)=>outReg_6_10, Q(9)=>
      outReg_6_9, Q(8)=>outReg_6_8, Q(7)=>outReg_6_7, Q(6)=>outReg_6_6, Q(5)
      =>outReg_6_5, Q(4)=>outReg_6_4, Q(3)=>outReg_6_3, Q(2)=>outReg_6_2, 
      Q(1)=>outReg_6_1, Q(0)=>outReg_6_0, Qbar(15)=>DANGLING(52), Qbar(14)=>
      DANGLING(53), Qbar(13)=>DANGLING(54), Qbar(12)=>DANGLING(55), Qbar(11)
      =>DANGLING(56), Qbar(10)=>DANGLING(57), Qbar(9)=>DANGLING(58), Qbar(8)
      =>DANGLING(59), Qbar(7)=>DANGLING(60), Qbar(6)=>DANGLING(61), Qbar(5)
      =>DANGLING(62), Qbar(4)=>DANGLING(63), Qbar(3)=>DANGLING(64), Qbar(2)
      =>DANGLING(65), Qbar(1)=>DANGLING(66), Qbar(0)=>DANGLING(67));
   gen_5_cmp1 : NBitAdder_16 port map ( a(15)=>a_5_15, a(14)=>a_5_14, a(13)
      =>a_5_13, a(12)=>a_5_12, a(11)=>a_5_11, a(10)=>a_5_10, a(9)=>a_5_9, 
      a(8)=>a_5_8, a(7)=>a_5_7, a(6)=>a_5_6, a(5)=>a_5_5, a(4)=>a_5_4, a(3)
      =>a_5_3, a(2)=>a_5_2, a(1)=>a_5_1, a(0)=>a_5_0, b(15)=>outReg_5_15, 
      b(14)=>outReg_5_14, b(13)=>outReg_5_13, b(12)=>outReg_5_12, b(11)=>
      outReg_5_11, b(10)=>outReg_5_10, b(9)=>outReg_5_9, b(8)=>outReg_5_8, 
      b(7)=>outReg_5_7, b(6)=>outReg_5_6, b(5)=>outReg_5_5, b(4)=>outReg_5_4, 
      b(3)=>outReg_5_3, b(2)=>outReg_5_2, b(1)=>outReg_5_1, b(0)=>outReg_5_0, 
      carryIn=>GND, sum(15)=>f_5_15, sum(14)=>f_5_14, sum(13)=>f_5_13, 
      sum(12)=>f_5_12, sum(11)=>f_5_11, sum(10)=>f_5_10, sum(9)=>f_5_9, 
      sum(8)=>f_5_8, sum(7)=>f_5_7, sum(6)=>f_5_6, sum(5)=>f_5_5, sum(4)=>
      f_5_4, sum(3)=>f_5_3, sum(2)=>f_5_2, sum(1)=>f_5_1, sum(0)=>f_5_0, 
      carryOut=>DANGLING(68));
   gen_5_cmp2 : Reg_16 port map ( D(15)=>f_5_15, D(14)=>f_5_14, D(13)=>
      f_5_13, D(12)=>f_5_12, D(11)=>f_5_11, D(10)=>f_5_10, D(9)=>f_5_9, D(8)
      =>f_5_8, D(7)=>f_5_7, D(6)=>f_5_6, D(5)=>f_5_5, D(4)=>f_5_4, D(3)=>
      f_5_3, D(2)=>f_5_2, D(1)=>f_5_1, D(0)=>f_5_0, en=>PWR, clk=>nx947, rst
      =>nx951, Q(15)=>outReg_5_15, Q(14)=>outReg_5_14, Q(13)=>outReg_5_13, 
      Q(12)=>outReg_5_12, Q(11)=>outReg_5_11, Q(10)=>outReg_5_10, Q(9)=>
      outReg_5_9, Q(8)=>outReg_5_8, Q(7)=>outReg_5_7, Q(6)=>outReg_5_6, Q(5)
      =>outReg_5_5, Q(4)=>outReg_5_4, Q(3)=>outReg_5_3, Q(2)=>outReg_5_2, 
      Q(1)=>outReg_5_1, Q(0)=>outReg_5_0, Qbar(15)=>DANGLING(69), Qbar(14)=>
      DANGLING(70), Qbar(13)=>DANGLING(71), Qbar(12)=>DANGLING(72), Qbar(11)
      =>DANGLING(73), Qbar(10)=>DANGLING(74), Qbar(9)=>DANGLING(75), Qbar(8)
      =>DANGLING(76), Qbar(7)=>DANGLING(77), Qbar(6)=>DANGLING(78), Qbar(5)
      =>DANGLING(79), Qbar(4)=>DANGLING(80), Qbar(3)=>DANGLING(81), Qbar(2)
      =>DANGLING(82), Qbar(1)=>DANGLING(83), Qbar(0)=>DANGLING(84));
   gen_4_cmp1 : NBitAdder_16 port map ( a(15)=>a_4_15, a(14)=>a_4_14, a(13)
      =>a_4_13, a(12)=>a_4_12, a(11)=>a_4_11, a(10)=>a_4_10, a(9)=>a_4_9, 
      a(8)=>a_4_8, a(7)=>a_4_7, a(6)=>a_4_6, a(5)=>a_4_5, a(4)=>a_4_4, a(3)
      =>a_4_3, a(2)=>a_4_2, a(1)=>a_4_1, a(0)=>a_4_0, b(15)=>outReg_4_15, 
      b(14)=>outReg_4_14, b(13)=>outReg_4_13, b(12)=>outReg_4_12, b(11)=>
      outReg_4_11, b(10)=>outReg_4_10, b(9)=>outReg_4_9, b(8)=>outReg_4_8, 
      b(7)=>outReg_4_7, b(6)=>outReg_4_6, b(5)=>outReg_4_5, b(4)=>outReg_4_4, 
      b(3)=>outReg_4_3, b(2)=>outReg_4_2, b(1)=>outReg_4_1, b(0)=>outReg_4_0, 
      carryIn=>GND, sum(15)=>f_4_15, sum(14)=>f_4_14, sum(13)=>f_4_13, 
      sum(12)=>f_4_12, sum(11)=>f_4_11, sum(10)=>f_4_10, sum(9)=>f_4_9, 
      sum(8)=>f_4_8, sum(7)=>f_4_7, sum(6)=>f_4_6, sum(5)=>f_4_5, sum(4)=>
      f_4_4, sum(3)=>f_4_3, sum(2)=>f_4_2, sum(1)=>f_4_1, sum(0)=>f_4_0, 
      carryOut=>DANGLING(85));
   gen_4_cmp2 : Reg_16 port map ( D(15)=>f_4_15, D(14)=>f_4_14, D(13)=>
      f_4_13, D(12)=>f_4_12, D(11)=>f_4_11, D(10)=>f_4_10, D(9)=>f_4_9, D(8)
      =>f_4_8, D(7)=>f_4_7, D(6)=>f_4_6, D(5)=>f_4_5, D(4)=>f_4_4, D(3)=>
      f_4_3, D(2)=>f_4_2, D(1)=>f_4_1, D(0)=>f_4_0, en=>PWR, clk=>nx947, rst
      =>nx951, Q(15)=>outReg_4_15, Q(14)=>outReg_4_14, Q(13)=>outReg_4_13, 
      Q(12)=>outReg_4_12, Q(11)=>outReg_4_11, Q(10)=>outReg_4_10, Q(9)=>
      outReg_4_9, Q(8)=>outReg_4_8, Q(7)=>outReg_4_7, Q(6)=>outReg_4_6, Q(5)
      =>outReg_4_5, Q(4)=>outReg_4_4, Q(3)=>outReg_4_3, Q(2)=>outReg_4_2, 
      Q(1)=>outReg_4_1, Q(0)=>outReg_4_0, Qbar(15)=>DANGLING(86), Qbar(14)=>
      DANGLING(87), Qbar(13)=>DANGLING(88), Qbar(12)=>DANGLING(89), Qbar(11)
      =>DANGLING(90), Qbar(10)=>DANGLING(91), Qbar(9)=>DANGLING(92), Qbar(8)
      =>DANGLING(93), Qbar(7)=>DANGLING(94), Qbar(6)=>DANGLING(95), Qbar(5)
      =>DANGLING(96), Qbar(4)=>DANGLING(97), Qbar(3)=>DANGLING(98), Qbar(2)
      =>DANGLING(99), Qbar(1)=>DANGLING(100), Qbar(0)=>DANGLING(101));
   gen_3_cmp1 : NBitAdder_16 port map ( a(15)=>a_3_15, a(14)=>a_3_14, a(13)
      =>a_3_13, a(12)=>a_3_12, a(11)=>a_3_11, a(10)=>a_3_10, a(9)=>a_3_9, 
      a(8)=>a_3_8, a(7)=>a_3_7, a(6)=>a_3_6, a(5)=>a_3_5, a(4)=>a_3_4, a(3)
      =>a_3_3, a(2)=>a_3_2, a(1)=>a_3_1, a(0)=>a_3_0, b(15)=>outReg_3_15, 
      b(14)=>outReg_3_14, b(13)=>outReg_3_13, b(12)=>outReg_3_12, b(11)=>
      outReg_3_11, b(10)=>outReg_3_10, b(9)=>outReg_3_9, b(8)=>outReg_3_8, 
      b(7)=>outReg_3_7, b(6)=>outReg_3_6, b(5)=>outReg_3_5, b(4)=>outReg_3_4, 
      b(3)=>outReg_3_3, b(2)=>outReg_3_2, b(1)=>outReg_3_1, b(0)=>outReg_3_0, 
      carryIn=>GND, sum(15)=>f_3_15, sum(14)=>f_3_14, sum(13)=>f_3_13, 
      sum(12)=>f_3_12, sum(11)=>f_3_11, sum(10)=>f_3_10, sum(9)=>f_3_9, 
      sum(8)=>f_3_8, sum(7)=>f_3_7, sum(6)=>f_3_6, sum(5)=>f_3_5, sum(4)=>
      f_3_4, sum(3)=>f_3_3, sum(2)=>f_3_2, sum(1)=>f_3_1, sum(0)=>f_3_0, 
      carryOut=>DANGLING(102));
   gen_3_cmp2 : Reg_16 port map ( D(15)=>f_3_15, D(14)=>f_3_14, D(13)=>
      f_3_13, D(12)=>f_3_12, D(11)=>f_3_11, D(10)=>f_3_10, D(9)=>f_3_9, D(8)
      =>f_3_8, D(7)=>f_3_7, D(6)=>f_3_6, D(5)=>f_3_5, D(4)=>f_3_4, D(3)=>
      f_3_3, D(2)=>f_3_2, D(1)=>f_3_1, D(0)=>f_3_0, en=>PWR, clk=>nx947, rst
      =>nx951, Q(15)=>outReg_3_15, Q(14)=>outReg_3_14, Q(13)=>outReg_3_13, 
      Q(12)=>outReg_3_12, Q(11)=>outReg_3_11, Q(10)=>outReg_3_10, Q(9)=>
      outReg_3_9, Q(8)=>outReg_3_8, Q(7)=>outReg_3_7, Q(6)=>outReg_3_6, Q(5)
      =>outReg_3_5, Q(4)=>outReg_3_4, Q(3)=>outReg_3_3, Q(2)=>outReg_3_2, 
      Q(1)=>outReg_3_1, Q(0)=>outReg_3_0, Qbar(15)=>DANGLING(103), Qbar(14)
      =>DANGLING(104), Qbar(13)=>DANGLING(105), Qbar(12)=>DANGLING(106), 
      Qbar(11)=>DANGLING(107), Qbar(10)=>DANGLING(108), Qbar(9)=>DANGLING(
      109), Qbar(8)=>DANGLING(110), Qbar(7)=>DANGLING(111), Qbar(6)=>
      DANGLING(112), Qbar(5)=>DANGLING(113), Qbar(4)=>DANGLING(114), Qbar(3)
      =>DANGLING(115), Qbar(2)=>DANGLING(116), Qbar(1)=>DANGLING(117), 
      Qbar(0)=>DANGLING(118));
   gen_2_cmp1 : NBitAdder_16 port map ( a(15)=>a_2_15, a(14)=>a_2_14, a(13)
      =>a_2_13, a(12)=>a_2_12, a(11)=>a_2_11, a(10)=>a_2_10, a(9)=>a_2_9, 
      a(8)=>a_2_8, a(7)=>a_2_7, a(6)=>a_2_6, a(5)=>a_2_5, a(4)=>a_2_4, a(3)
      =>a_2_3, a(2)=>a_2_2, a(1)=>a_2_1, a(0)=>a_2_0, b(15)=>outReg_2_15, 
      b(14)=>outReg_2_14, b(13)=>outReg_2_13, b(12)=>outReg_2_12, b(11)=>
      outReg_2_11, b(10)=>outReg_2_10, b(9)=>outReg_2_9, b(8)=>outReg_2_8, 
      b(7)=>outReg_2_7, b(6)=>outReg_2_6, b(5)=>outReg_2_5, b(4)=>outReg_2_4, 
      b(3)=>outReg_2_3, b(2)=>outReg_2_2, b(1)=>outReg_2_1, b(0)=>outReg_2_0, 
      carryIn=>GND, sum(15)=>f_2_15, sum(14)=>f_2_14, sum(13)=>f_2_13, 
      sum(12)=>f_2_12, sum(11)=>f_2_11, sum(10)=>f_2_10, sum(9)=>f_2_9, 
      sum(8)=>f_2_8, sum(7)=>f_2_7, sum(6)=>f_2_6, sum(5)=>f_2_5, sum(4)=>
      f_2_4, sum(3)=>f_2_3, sum(2)=>f_2_2, sum(1)=>f_2_1, sum(0)=>f_2_0, 
      carryOut=>DANGLING(119));
   gen_2_cmp2 : Reg_16 port map ( D(15)=>f_2_15, D(14)=>f_2_14, D(13)=>
      f_2_13, D(12)=>f_2_12, D(11)=>f_2_11, D(10)=>f_2_10, D(9)=>f_2_9, D(8)
      =>f_2_8, D(7)=>f_2_7, D(6)=>f_2_6, D(5)=>f_2_5, D(4)=>f_2_4, D(3)=>
      f_2_3, D(2)=>f_2_2, D(1)=>f_2_1, D(0)=>f_2_0, en=>PWR, clk=>nx949, rst
      =>nx953, Q(15)=>outReg_2_15, Q(14)=>outReg_2_14, Q(13)=>outReg_2_13, 
      Q(12)=>outReg_2_12, Q(11)=>outReg_2_11, Q(10)=>outReg_2_10, Q(9)=>
      outReg_2_9, Q(8)=>outReg_2_8, Q(7)=>outReg_2_7, Q(6)=>outReg_2_6, Q(5)
      =>outReg_2_5, Q(4)=>outReg_2_4, Q(3)=>outReg_2_3, Q(2)=>outReg_2_2, 
      Q(1)=>outReg_2_1, Q(0)=>outReg_2_0, Qbar(15)=>DANGLING(120), Qbar(14)
      =>DANGLING(121), Qbar(13)=>DANGLING(122), Qbar(12)=>DANGLING(123), 
      Qbar(11)=>DANGLING(124), Qbar(10)=>DANGLING(125), Qbar(9)=>DANGLING(
      126), Qbar(8)=>DANGLING(127), Qbar(7)=>DANGLING(128), Qbar(6)=>
      DANGLING(129), Qbar(5)=>DANGLING(130), Qbar(4)=>DANGLING(131), Qbar(3)
      =>DANGLING(132), Qbar(2)=>DANGLING(133), Qbar(1)=>DANGLING(134), 
      Qbar(0)=>DANGLING(135));
   gen_1_cmp1 : NBitAdder_16 port map ( a(15)=>a_1_15, a(14)=>a_1_14, a(13)
      =>a_1_13, a(12)=>a_1_12, a(11)=>a_1_11, a(10)=>a_1_10, a(9)=>a_1_9, 
      a(8)=>a_1_8, a(7)=>a_1_7, a(6)=>a_1_6, a(5)=>a_1_5, a(4)=>a_1_4, a(3)
      =>a_1_3, a(2)=>a_1_2, a(1)=>a_1_1, a(0)=>a_1_0, b(15)=>outReg_1_15, 
      b(14)=>outReg_1_14, b(13)=>outReg_1_13, b(12)=>outReg_1_12, b(11)=>
      outReg_1_11, b(10)=>outReg_1_10, b(9)=>outReg_1_9, b(8)=>outReg_1_8, 
      b(7)=>outReg_1_7, b(6)=>outReg_1_6, b(5)=>outReg_1_5, b(4)=>outReg_1_4, 
      b(3)=>outReg_1_3, b(2)=>outReg_1_2, b(1)=>outReg_1_1, b(0)=>outReg_1_0, 
      carryIn=>GND, sum(15)=>f_1_15, sum(14)=>f_1_14, sum(13)=>f_1_13, 
      sum(12)=>f_1_12, sum(11)=>f_1_11, sum(10)=>f_1_10, sum(9)=>f_1_9, 
      sum(8)=>f_1_8, sum(7)=>f_1_7, sum(6)=>f_1_6, sum(5)=>f_1_5, sum(4)=>
      f_1_4, sum(3)=>f_1_3, sum(2)=>f_1_2, sum(1)=>f_1_1, sum(0)=>f_1_0, 
      carryOut=>DANGLING(136));
   gen_1_cmp2 : Reg_16 port map ( D(15)=>f_1_15, D(14)=>f_1_14, D(13)=>
      f_1_13, D(12)=>f_1_12, D(11)=>f_1_11, D(10)=>f_1_10, D(9)=>f_1_9, D(8)
      =>f_1_8, D(7)=>f_1_7, D(6)=>f_1_6, D(5)=>f_1_5, D(4)=>f_1_4, D(3)=>
      f_1_3, D(2)=>f_1_2, D(1)=>f_1_1, D(0)=>f_1_0, en=>PWR, clk=>nx949, rst
      =>nx953, Q(15)=>outReg_1_15, Q(14)=>outReg_1_14, Q(13)=>outReg_1_13, 
      Q(12)=>outReg_1_12, Q(11)=>outReg_1_11, Q(10)=>outReg_1_10, Q(9)=>
      outReg_1_9, Q(8)=>outReg_1_8, Q(7)=>outReg_1_7, Q(6)=>outReg_1_6, Q(5)
      =>outReg_1_5, Q(4)=>outReg_1_4, Q(3)=>outReg_1_3, Q(2)=>outReg_1_2, 
      Q(1)=>outReg_1_1, Q(0)=>outReg_1_0, Qbar(15)=>DANGLING(137), Qbar(14)
      =>DANGLING(138), Qbar(13)=>DANGLING(139), Qbar(12)=>DANGLING(140), 
      Qbar(11)=>DANGLING(141), Qbar(10)=>DANGLING(142), Qbar(9)=>DANGLING(
      143), Qbar(8)=>DANGLING(144), Qbar(7)=>DANGLING(145), Qbar(6)=>
      DANGLING(146), Qbar(5)=>DANGLING(147), Qbar(4)=>DANGLING(148), Qbar(3)
      =>DANGLING(149), Qbar(2)=>DANGLING(150), Qbar(1)=>DANGLING(151), 
      Qbar(0)=>DANGLING(152));
   gen_0_cmp1 : NBitAdder_16 port map ( a(15)=>a_0_15, a(14)=>a_0_14, a(13)
      =>a_0_13, a(12)=>a_0_12, a(11)=>a_0_11, a(10)=>a_0_10, a(9)=>a_0_9, 
      a(8)=>a_0_8, a(7)=>a_0_7, a(6)=>a_0_6, a(5)=>a_0_5, a(4)=>a_0_4, a(3)
      =>a_0_3, a(2)=>a_0_2, a(1)=>a_0_1, a(0)=>a_0_0, b(15)=>outReg_0_15, 
      b(14)=>outReg_0_14, b(13)=>outReg_0_13, b(12)=>outReg_0_12, b(11)=>
      outReg_0_11, b(10)=>outReg_0_10, b(9)=>outReg_0_9, b(8)=>outReg_0_8, 
      b(7)=>outReg_0_7, b(6)=>outReg_0_6, b(5)=>outReg_0_5, b(4)=>outReg_0_4, 
      b(3)=>outReg_0_3, b(2)=>outReg_0_2, b(1)=>outReg_0_1, b(0)=>outReg_0_0, 
      carryIn=>GND, sum(15)=>f_0_15, sum(14)=>f_0_14, sum(13)=>f_0_13, 
      sum(12)=>f_0_12, sum(11)=>f_0_11, sum(10)=>f_0_10, sum(9)=>f_0_9, 
      sum(8)=>f_0_8, sum(7)=>f_0_7, sum(6)=>f_0_6, sum(5)=>f_0_5, sum(4)=>
      f_0_4, sum(3)=>f_0_3, sum(2)=>f_0_2, sum(1)=>f_0_1, sum(0)=>f_0_0, 
      carryOut=>DANGLING(153));
   gen_0_cmp2 : Reg_16 port map ( D(15)=>f_0_15, D(14)=>f_0_14, D(13)=>
      f_0_13, D(12)=>f_0_12, D(11)=>f_0_11, D(10)=>f_0_10, D(9)=>f_0_9, D(8)
      =>f_0_8, D(7)=>f_0_7, D(6)=>f_0_6, D(5)=>f_0_5, D(4)=>f_0_4, D(3)=>
      f_0_3, D(2)=>f_0_2, D(1)=>f_0_1, D(0)=>f_0_0, en=>PWR, clk=>nx949, rst
      =>nx953, Q(15)=>outReg_0_15, Q(14)=>outReg_0_14, Q(13)=>outReg_0_13, 
      Q(12)=>outReg_0_12, Q(11)=>outReg_0_11, Q(10)=>outReg_0_10, Q(9)=>
      outReg_0_9, Q(8)=>outReg_0_8, Q(7)=>outReg_0_7, Q(6)=>outReg_0_6, Q(5)
      =>outReg_0_5, Q(4)=>outReg_0_4, Q(3)=>outReg_0_3, Q(2)=>outReg_0_2, 
      Q(1)=>outReg_0_1, Q(0)=>outReg_0_0, Qbar(15)=>DANGLING(154), Qbar(14)
      =>DANGLING(155), Qbar(13)=>DANGLING(156), Qbar(12)=>DANGLING(157), 
      Qbar(11)=>DANGLING(158), Qbar(10)=>DANGLING(159), Qbar(9)=>DANGLING(
      160), Qbar(8)=>DANGLING(161), Qbar(7)=>DANGLING(162), Qbar(6)=>
      DANGLING(163), Qbar(5)=>DANGLING(164), Qbar(4)=>DANGLING(165), Qbar(3)
      =>DANGLING(166), Qbar(2)=>DANGLING(167), Qbar(1)=>DANGLING(168), 
      Qbar(0)=>DANGLING(169));
   ix939 : fake_gnd port map ( Y=>GND);
   ix937 : fake_vcc port map ( Y=>PWR);
   ix946 : buf02 port map ( Y=>nx947, A=>save);
   ix948 : buf02 port map ( Y=>nx949, A=>save);
   ix950 : buf02 port map ( Y=>nx951, A=>rst);
   ix952 : buf02 port map ( Y=>nx953, A=>rst);
end AccumulatorArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Alus8x16_10 is
   port (
      q_9_7 : IN std_logic ;
      q_9_6 : IN std_logic ;
      q_9_5 : IN std_logic ;
      q_9_4 : IN std_logic ;
      q_9_3 : IN std_logic ;
      q_9_2 : IN std_logic ;
      q_9_1 : IN std_logic ;
      q_9_0 : IN std_logic ;
      q_8_7 : IN std_logic ;
      q_8_6 : IN std_logic ;
      q_8_5 : IN std_logic ;
      q_8_4 : IN std_logic ;
      q_8_3 : IN std_logic ;
      q_8_2 : IN std_logic ;
      q_8_1 : IN std_logic ;
      q_8_0 : IN std_logic ;
      q_7_7 : IN std_logic ;
      q_7_6 : IN std_logic ;
      q_7_5 : IN std_logic ;
      q_7_4 : IN std_logic ;
      q_7_3 : IN std_logic ;
      q_7_2 : IN std_logic ;
      q_7_1 : IN std_logic ;
      q_7_0 : IN std_logic ;
      q_6_7 : IN std_logic ;
      q_6_6 : IN std_logic ;
      q_6_5 : IN std_logic ;
      q_6_4 : IN std_logic ;
      q_6_3 : IN std_logic ;
      q_6_2 : IN std_logic ;
      q_6_1 : IN std_logic ;
      q_6_0 : IN std_logic ;
      q_5_7 : IN std_logic ;
      q_5_6 : IN std_logic ;
      q_5_5 : IN std_logic ;
      q_5_4 : IN std_logic ;
      q_5_3 : IN std_logic ;
      q_5_2 : IN std_logic ;
      q_5_1 : IN std_logic ;
      q_5_0 : IN std_logic ;
      q_4_7 : IN std_logic ;
      q_4_6 : IN std_logic ;
      q_4_5 : IN std_logic ;
      q_4_4 : IN std_logic ;
      q_4_3 : IN std_logic ;
      q_4_2 : IN std_logic ;
      q_4_1 : IN std_logic ;
      q_4_0 : IN std_logic ;
      q_3_7 : IN std_logic ;
      q_3_6 : IN std_logic ;
      q_3_5 : IN std_logic ;
      q_3_4 : IN std_logic ;
      q_3_3 : IN std_logic ;
      q_3_2 : IN std_logic ;
      q_3_1 : IN std_logic ;
      q_3_0 : IN std_logic ;
      q_2_7 : IN std_logic ;
      q_2_6 : IN std_logic ;
      q_2_5 : IN std_logic ;
      q_2_4 : IN std_logic ;
      q_2_3 : IN std_logic ;
      q_2_2 : IN std_logic ;
      q_2_1 : IN std_logic ;
      q_2_0 : IN std_logic ;
      q_1_7 : IN std_logic ;
      q_1_6 : IN std_logic ;
      q_1_5 : IN std_logic ;
      q_1_4 : IN std_logic ;
      q_1_3 : IN std_logic ;
      q_1_2 : IN std_logic ;
      q_1_1 : IN std_logic ;
      q_1_0 : IN std_logic ;
      q_0_7 : IN std_logic ;
      q_0_6 : IN std_logic ;
      q_0_5 : IN std_logic ;
      q_0_4 : IN std_logic ;
      q_0_3 : IN std_logic ;
      q_0_2 : IN std_logic ;
      q_0_1 : IN std_logic ;
      q_0_0 : IN std_logic ;
      m_9_15 : IN std_logic ;
      m_9_14 : IN std_logic ;
      m_9_13 : IN std_logic ;
      m_9_12 : IN std_logic ;
      m_9_11 : IN std_logic ;
      m_9_10 : IN std_logic ;
      m_9_9 : IN std_logic ;
      m_9_8 : IN std_logic ;
      m_9_7 : IN std_logic ;
      m_9_6 : IN std_logic ;
      m_9_5 : IN std_logic ;
      m_9_4 : IN std_logic ;
      m_9_3 : IN std_logic ;
      m_9_2 : IN std_logic ;
      m_9_1 : IN std_logic ;
      m_9_0 : IN std_logic ;
      m_8_15 : IN std_logic ;
      m_8_14 : IN std_logic ;
      m_8_13 : IN std_logic ;
      m_8_12 : IN std_logic ;
      m_8_11 : IN std_logic ;
      m_8_10 : IN std_logic ;
      m_8_9 : IN std_logic ;
      m_8_8 : IN std_logic ;
      m_8_7 : IN std_logic ;
      m_8_6 : IN std_logic ;
      m_8_5 : IN std_logic ;
      m_8_4 : IN std_logic ;
      m_8_3 : IN std_logic ;
      m_8_2 : IN std_logic ;
      m_8_1 : IN std_logic ;
      m_8_0 : IN std_logic ;
      m_7_15 : IN std_logic ;
      m_7_14 : IN std_logic ;
      m_7_13 : IN std_logic ;
      m_7_12 : IN std_logic ;
      m_7_11 : IN std_logic ;
      m_7_10 : IN std_logic ;
      m_7_9 : IN std_logic ;
      m_7_8 : IN std_logic ;
      m_7_7 : IN std_logic ;
      m_7_6 : IN std_logic ;
      m_7_5 : IN std_logic ;
      m_7_4 : IN std_logic ;
      m_7_3 : IN std_logic ;
      m_7_2 : IN std_logic ;
      m_7_1 : IN std_logic ;
      m_7_0 : IN std_logic ;
      m_6_15 : IN std_logic ;
      m_6_14 : IN std_logic ;
      m_6_13 : IN std_logic ;
      m_6_12 : IN std_logic ;
      m_6_11 : IN std_logic ;
      m_6_10 : IN std_logic ;
      m_6_9 : IN std_logic ;
      m_6_8 : IN std_logic ;
      m_6_7 : IN std_logic ;
      m_6_6 : IN std_logic ;
      m_6_5 : IN std_logic ;
      m_6_4 : IN std_logic ;
      m_6_3 : IN std_logic ;
      m_6_2 : IN std_logic ;
      m_6_1 : IN std_logic ;
      m_6_0 : IN std_logic ;
      m_5_15 : IN std_logic ;
      m_5_14 : IN std_logic ;
      m_5_13 : IN std_logic ;
      m_5_12 : IN std_logic ;
      m_5_11 : IN std_logic ;
      m_5_10 : IN std_logic ;
      m_5_9 : IN std_logic ;
      m_5_8 : IN std_logic ;
      m_5_7 : IN std_logic ;
      m_5_6 : IN std_logic ;
      m_5_5 : IN std_logic ;
      m_5_4 : IN std_logic ;
      m_5_3 : IN std_logic ;
      m_5_2 : IN std_logic ;
      m_5_1 : IN std_logic ;
      m_5_0 : IN std_logic ;
      m_4_15 : IN std_logic ;
      m_4_14 : IN std_logic ;
      m_4_13 : IN std_logic ;
      m_4_12 : IN std_logic ;
      m_4_11 : IN std_logic ;
      m_4_10 : IN std_logic ;
      m_4_9 : IN std_logic ;
      m_4_8 : IN std_logic ;
      m_4_7 : IN std_logic ;
      m_4_6 : IN std_logic ;
      m_4_5 : IN std_logic ;
      m_4_4 : IN std_logic ;
      m_4_3 : IN std_logic ;
      m_4_2 : IN std_logic ;
      m_4_1 : IN std_logic ;
      m_4_0 : IN std_logic ;
      m_3_15 : IN std_logic ;
      m_3_14 : IN std_logic ;
      m_3_13 : IN std_logic ;
      m_3_12 : IN std_logic ;
      m_3_11 : IN std_logic ;
      m_3_10 : IN std_logic ;
      m_3_9 : IN std_logic ;
      m_3_8 : IN std_logic ;
      m_3_7 : IN std_logic ;
      m_3_6 : IN std_logic ;
      m_3_5 : IN std_logic ;
      m_3_4 : IN std_logic ;
      m_3_3 : IN std_logic ;
      m_3_2 : IN std_logic ;
      m_3_1 : IN std_logic ;
      m_3_0 : IN std_logic ;
      m_2_15 : IN std_logic ;
      m_2_14 : IN std_logic ;
      m_2_13 : IN std_logic ;
      m_2_12 : IN std_logic ;
      m_2_11 : IN std_logic ;
      m_2_10 : IN std_logic ;
      m_2_9 : IN std_logic ;
      m_2_8 : IN std_logic ;
      m_2_7 : IN std_logic ;
      m_2_6 : IN std_logic ;
      m_2_5 : IN std_logic ;
      m_2_4 : IN std_logic ;
      m_2_3 : IN std_logic ;
      m_2_2 : IN std_logic ;
      m_2_1 : IN std_logic ;
      m_2_0 : IN std_logic ;
      m_1_15 : IN std_logic ;
      m_1_14 : IN std_logic ;
      m_1_13 : IN std_logic ;
      m_1_12 : IN std_logic ;
      m_1_11 : IN std_logic ;
      m_1_10 : IN std_logic ;
      m_1_9 : IN std_logic ;
      m_1_8 : IN std_logic ;
      m_1_7 : IN std_logic ;
      m_1_6 : IN std_logic ;
      m_1_5 : IN std_logic ;
      m_1_4 : IN std_logic ;
      m_1_3 : IN std_logic ;
      m_1_2 : IN std_logic ;
      m_1_1 : IN std_logic ;
      m_1_0 : IN std_logic ;
      m_0_15 : IN std_logic ;
      m_0_14 : IN std_logic ;
      m_0_13 : IN std_logic ;
      m_0_12 : IN std_logic ;
      m_0_11 : IN std_logic ;
      m_0_10 : IN std_logic ;
      m_0_9 : IN std_logic ;
      m_0_8 : IN std_logic ;
      m_0_7 : IN std_logic ;
      m_0_6 : IN std_logic ;
      m_0_5 : IN std_logic ;
      m_0_4 : IN std_logic ;
      m_0_3 : IN std_logic ;
      m_0_2 : IN std_logic ;
      m_0_1 : IN std_logic ;
      m_0_0 : IN std_logic ;
      f_9_15 : INOUT std_logic ;
      f_9_14 : INOUT std_logic ;
      f_9_13 : INOUT std_logic ;
      f_9_12 : INOUT std_logic ;
      f_9_11 : INOUT std_logic ;
      f_9_10 : INOUT std_logic ;
      f_9_9 : INOUT std_logic ;
      f_9_8 : INOUT std_logic ;
      f_9_7 : INOUT std_logic ;
      f_9_6 : INOUT std_logic ;
      f_9_5 : INOUT std_logic ;
      f_9_4 : INOUT std_logic ;
      f_9_3 : INOUT std_logic ;
      f_9_2 : INOUT std_logic ;
      f_9_1 : INOUT std_logic ;
      f_9_0 : INOUT std_logic ;
      f_8_15 : INOUT std_logic ;
      f_8_14 : INOUT std_logic ;
      f_8_13 : INOUT std_logic ;
      f_8_12 : INOUT std_logic ;
      f_8_11 : INOUT std_logic ;
      f_8_10 : INOUT std_logic ;
      f_8_9 : INOUT std_logic ;
      f_8_8 : INOUT std_logic ;
      f_8_7 : INOUT std_logic ;
      f_8_6 : INOUT std_logic ;
      f_8_5 : INOUT std_logic ;
      f_8_4 : INOUT std_logic ;
      f_8_3 : INOUT std_logic ;
      f_8_2 : INOUT std_logic ;
      f_8_1 : INOUT std_logic ;
      f_8_0 : INOUT std_logic ;
      f_7_15 : INOUT std_logic ;
      f_7_14 : INOUT std_logic ;
      f_7_13 : INOUT std_logic ;
      f_7_12 : INOUT std_logic ;
      f_7_11 : INOUT std_logic ;
      f_7_10 : INOUT std_logic ;
      f_7_9 : INOUT std_logic ;
      f_7_8 : INOUT std_logic ;
      f_7_7 : INOUT std_logic ;
      f_7_6 : INOUT std_logic ;
      f_7_5 : INOUT std_logic ;
      f_7_4 : INOUT std_logic ;
      f_7_3 : INOUT std_logic ;
      f_7_2 : INOUT std_logic ;
      f_7_1 : INOUT std_logic ;
      f_7_0 : INOUT std_logic ;
      f_6_15 : INOUT std_logic ;
      f_6_14 : INOUT std_logic ;
      f_6_13 : INOUT std_logic ;
      f_6_12 : INOUT std_logic ;
      f_6_11 : INOUT std_logic ;
      f_6_10 : INOUT std_logic ;
      f_6_9 : INOUT std_logic ;
      f_6_8 : INOUT std_logic ;
      f_6_7 : INOUT std_logic ;
      f_6_6 : INOUT std_logic ;
      f_6_5 : INOUT std_logic ;
      f_6_4 : INOUT std_logic ;
      f_6_3 : INOUT std_logic ;
      f_6_2 : INOUT std_logic ;
      f_6_1 : INOUT std_logic ;
      f_6_0 : INOUT std_logic ;
      f_5_15 : INOUT std_logic ;
      f_5_14 : INOUT std_logic ;
      f_5_13 : INOUT std_logic ;
      f_5_12 : INOUT std_logic ;
      f_5_11 : INOUT std_logic ;
      f_5_10 : INOUT std_logic ;
      f_5_9 : INOUT std_logic ;
      f_5_8 : INOUT std_logic ;
      f_5_7 : INOUT std_logic ;
      f_5_6 : INOUT std_logic ;
      f_5_5 : INOUT std_logic ;
      f_5_4 : INOUT std_logic ;
      f_5_3 : INOUT std_logic ;
      f_5_2 : INOUT std_logic ;
      f_5_1 : INOUT std_logic ;
      f_5_0 : INOUT std_logic ;
      f_4_15 : INOUT std_logic ;
      f_4_14 : INOUT std_logic ;
      f_4_13 : INOUT std_logic ;
      f_4_12 : INOUT std_logic ;
      f_4_11 : INOUT std_logic ;
      f_4_10 : INOUT std_logic ;
      f_4_9 : INOUT std_logic ;
      f_4_8 : INOUT std_logic ;
      f_4_7 : INOUT std_logic ;
      f_4_6 : INOUT std_logic ;
      f_4_5 : INOUT std_logic ;
      f_4_4 : INOUT std_logic ;
      f_4_3 : INOUT std_logic ;
      f_4_2 : INOUT std_logic ;
      f_4_1 : INOUT std_logic ;
      f_4_0 : INOUT std_logic ;
      f_3_15 : INOUT std_logic ;
      f_3_14 : INOUT std_logic ;
      f_3_13 : INOUT std_logic ;
      f_3_12 : INOUT std_logic ;
      f_3_11 : INOUT std_logic ;
      f_3_10 : INOUT std_logic ;
      f_3_9 : INOUT std_logic ;
      f_3_8 : INOUT std_logic ;
      f_3_7 : INOUT std_logic ;
      f_3_6 : INOUT std_logic ;
      f_3_5 : INOUT std_logic ;
      f_3_4 : INOUT std_logic ;
      f_3_3 : INOUT std_logic ;
      f_3_2 : INOUT std_logic ;
      f_3_1 : INOUT std_logic ;
      f_3_0 : INOUT std_logic ;
      f_2_15 : INOUT std_logic ;
      f_2_14 : INOUT std_logic ;
      f_2_13 : INOUT std_logic ;
      f_2_12 : INOUT std_logic ;
      f_2_11 : INOUT std_logic ;
      f_2_10 : INOUT std_logic ;
      f_2_9 : INOUT std_logic ;
      f_2_8 : INOUT std_logic ;
      f_2_7 : INOUT std_logic ;
      f_2_6 : INOUT std_logic ;
      f_2_5 : INOUT std_logic ;
      f_2_4 : INOUT std_logic ;
      f_2_3 : INOUT std_logic ;
      f_2_2 : INOUT std_logic ;
      f_2_1 : INOUT std_logic ;
      f_2_0 : INOUT std_logic ;
      f_1_15 : INOUT std_logic ;
      f_1_14 : INOUT std_logic ;
      f_1_13 : INOUT std_logic ;
      f_1_12 : INOUT std_logic ;
      f_1_11 : INOUT std_logic ;
      f_1_10 : INOUT std_logic ;
      f_1_9 : INOUT std_logic ;
      f_1_8 : INOUT std_logic ;
      f_1_7 : INOUT std_logic ;
      f_1_6 : INOUT std_logic ;
      f_1_5 : INOUT std_logic ;
      f_1_4 : INOUT std_logic ;
      f_1_3 : INOUT std_logic ;
      f_1_2 : INOUT std_logic ;
      f_1_1 : INOUT std_logic ;
      f_1_0 : INOUT std_logic ;
      f_0_15 : INOUT std_logic ;
      f_0_14 : INOUT std_logic ;
      f_0_13 : INOUT std_logic ;
      f_0_12 : INOUT std_logic ;
      f_0_11 : INOUT std_logic ;
      f_0_10 : INOUT std_logic ;
      f_0_9 : INOUT std_logic ;
      f_0_8 : INOUT std_logic ;
      f_0_7 : INOUT std_logic ;
      f_0_6 : INOUT std_logic ;
      f_0_5 : INOUT std_logic ;
      f_0_4 : INOUT std_logic ;
      f_0_3 : INOUT std_logic ;
      f_0_2 : INOUT std_logic ;
      f_0_1 : INOUT std_logic ;
      f_0_0 : INOUT std_logic ;
      clk : IN std_logic ;
      start : IN std_logic ;
      rst : IN std_logic ;
      done : INOUT std_logic ;
      working : INOUT std_logic) ;
end Alus8x16_10 ;

architecture Alus8x16Arch of Alus8x16_10 is
   component nMul8x16_10
      port (
         q_9_7 : IN std_logic ;
         q_9_6 : IN std_logic ;
         q_9_5 : IN std_logic ;
         q_9_4 : IN std_logic ;
         q_9_3 : IN std_logic ;
         q_9_2 : IN std_logic ;
         q_9_1 : IN std_logic ;
         q_9_0 : IN std_logic ;
         q_8_7 : IN std_logic ;
         q_8_6 : IN std_logic ;
         q_8_5 : IN std_logic ;
         q_8_4 : IN std_logic ;
         q_8_3 : IN std_logic ;
         q_8_2 : IN std_logic ;
         q_8_1 : IN std_logic ;
         q_8_0 : IN std_logic ;
         q_7_7 : IN std_logic ;
         q_7_6 : IN std_logic ;
         q_7_5 : IN std_logic ;
         q_7_4 : IN std_logic ;
         q_7_3 : IN std_logic ;
         q_7_2 : IN std_logic ;
         q_7_1 : IN std_logic ;
         q_7_0 : IN std_logic ;
         q_6_7 : IN std_logic ;
         q_6_6 : IN std_logic ;
         q_6_5 : IN std_logic ;
         q_6_4 : IN std_logic ;
         q_6_3 : IN std_logic ;
         q_6_2 : IN std_logic ;
         q_6_1 : IN std_logic ;
         q_6_0 : IN std_logic ;
         q_5_7 : IN std_logic ;
         q_5_6 : IN std_logic ;
         q_5_5 : IN std_logic ;
         q_5_4 : IN std_logic ;
         q_5_3 : IN std_logic ;
         q_5_2 : IN std_logic ;
         q_5_1 : IN std_logic ;
         q_5_0 : IN std_logic ;
         q_4_7 : IN std_logic ;
         q_4_6 : IN std_logic ;
         q_4_5 : IN std_logic ;
         q_4_4 : IN std_logic ;
         q_4_3 : IN std_logic ;
         q_4_2 : IN std_logic ;
         q_4_1 : IN std_logic ;
         q_4_0 : IN std_logic ;
         q_3_7 : IN std_logic ;
         q_3_6 : IN std_logic ;
         q_3_5 : IN std_logic ;
         q_3_4 : IN std_logic ;
         q_3_3 : IN std_logic ;
         q_3_2 : IN std_logic ;
         q_3_1 : IN std_logic ;
         q_3_0 : IN std_logic ;
         q_2_7 : IN std_logic ;
         q_2_6 : IN std_logic ;
         q_2_5 : IN std_logic ;
         q_2_4 : IN std_logic ;
         q_2_3 : IN std_logic ;
         q_2_2 : IN std_logic ;
         q_2_1 : IN std_logic ;
         q_2_0 : IN std_logic ;
         q_1_7 : IN std_logic ;
         q_1_6 : IN std_logic ;
         q_1_5 : IN std_logic ;
         q_1_4 : IN std_logic ;
         q_1_3 : IN std_logic ;
         q_1_2 : IN std_logic ;
         q_1_1 : IN std_logic ;
         q_1_0 : IN std_logic ;
         q_0_7 : IN std_logic ;
         q_0_6 : IN std_logic ;
         q_0_5 : IN std_logic ;
         q_0_4 : IN std_logic ;
         q_0_3 : IN std_logic ;
         q_0_2 : IN std_logic ;
         q_0_1 : IN std_logic ;
         q_0_0 : IN std_logic ;
         m_9_15 : IN std_logic ;
         m_9_14 : IN std_logic ;
         m_9_13 : IN std_logic ;
         m_9_12 : IN std_logic ;
         m_9_11 : IN std_logic ;
         m_9_10 : IN std_logic ;
         m_9_9 : IN std_logic ;
         m_9_8 : IN std_logic ;
         m_9_7 : IN std_logic ;
         m_9_6 : IN std_logic ;
         m_9_5 : IN std_logic ;
         m_9_4 : IN std_logic ;
         m_9_3 : IN std_logic ;
         m_9_2 : IN std_logic ;
         m_9_1 : IN std_logic ;
         m_9_0 : IN std_logic ;
         m_8_15 : IN std_logic ;
         m_8_14 : IN std_logic ;
         m_8_13 : IN std_logic ;
         m_8_12 : IN std_logic ;
         m_8_11 : IN std_logic ;
         m_8_10 : IN std_logic ;
         m_8_9 : IN std_logic ;
         m_8_8 : IN std_logic ;
         m_8_7 : IN std_logic ;
         m_8_6 : IN std_logic ;
         m_8_5 : IN std_logic ;
         m_8_4 : IN std_logic ;
         m_8_3 : IN std_logic ;
         m_8_2 : IN std_logic ;
         m_8_1 : IN std_logic ;
         m_8_0 : IN std_logic ;
         m_7_15 : IN std_logic ;
         m_7_14 : IN std_logic ;
         m_7_13 : IN std_logic ;
         m_7_12 : IN std_logic ;
         m_7_11 : IN std_logic ;
         m_7_10 : IN std_logic ;
         m_7_9 : IN std_logic ;
         m_7_8 : IN std_logic ;
         m_7_7 : IN std_logic ;
         m_7_6 : IN std_logic ;
         m_7_5 : IN std_logic ;
         m_7_4 : IN std_logic ;
         m_7_3 : IN std_logic ;
         m_7_2 : IN std_logic ;
         m_7_1 : IN std_logic ;
         m_7_0 : IN std_logic ;
         m_6_15 : IN std_logic ;
         m_6_14 : IN std_logic ;
         m_6_13 : IN std_logic ;
         m_6_12 : IN std_logic ;
         m_6_11 : IN std_logic ;
         m_6_10 : IN std_logic ;
         m_6_9 : IN std_logic ;
         m_6_8 : IN std_logic ;
         m_6_7 : IN std_logic ;
         m_6_6 : IN std_logic ;
         m_6_5 : IN std_logic ;
         m_6_4 : IN std_logic ;
         m_6_3 : IN std_logic ;
         m_6_2 : IN std_logic ;
         m_6_1 : IN std_logic ;
         m_6_0 : IN std_logic ;
         m_5_15 : IN std_logic ;
         m_5_14 : IN std_logic ;
         m_5_13 : IN std_logic ;
         m_5_12 : IN std_logic ;
         m_5_11 : IN std_logic ;
         m_5_10 : IN std_logic ;
         m_5_9 : IN std_logic ;
         m_5_8 : IN std_logic ;
         m_5_7 : IN std_logic ;
         m_5_6 : IN std_logic ;
         m_5_5 : IN std_logic ;
         m_5_4 : IN std_logic ;
         m_5_3 : IN std_logic ;
         m_5_2 : IN std_logic ;
         m_5_1 : IN std_logic ;
         m_5_0 : IN std_logic ;
         m_4_15 : IN std_logic ;
         m_4_14 : IN std_logic ;
         m_4_13 : IN std_logic ;
         m_4_12 : IN std_logic ;
         m_4_11 : IN std_logic ;
         m_4_10 : IN std_logic ;
         m_4_9 : IN std_logic ;
         m_4_8 : IN std_logic ;
         m_4_7 : IN std_logic ;
         m_4_6 : IN std_logic ;
         m_4_5 : IN std_logic ;
         m_4_4 : IN std_logic ;
         m_4_3 : IN std_logic ;
         m_4_2 : IN std_logic ;
         m_4_1 : IN std_logic ;
         m_4_0 : IN std_logic ;
         m_3_15 : IN std_logic ;
         m_3_14 : IN std_logic ;
         m_3_13 : IN std_logic ;
         m_3_12 : IN std_logic ;
         m_3_11 : IN std_logic ;
         m_3_10 : IN std_logic ;
         m_3_9 : IN std_logic ;
         m_3_8 : IN std_logic ;
         m_3_7 : IN std_logic ;
         m_3_6 : IN std_logic ;
         m_3_5 : IN std_logic ;
         m_3_4 : IN std_logic ;
         m_3_3 : IN std_logic ;
         m_3_2 : IN std_logic ;
         m_3_1 : IN std_logic ;
         m_3_0 : IN std_logic ;
         m_2_15 : IN std_logic ;
         m_2_14 : IN std_logic ;
         m_2_13 : IN std_logic ;
         m_2_12 : IN std_logic ;
         m_2_11 : IN std_logic ;
         m_2_10 : IN std_logic ;
         m_2_9 : IN std_logic ;
         m_2_8 : IN std_logic ;
         m_2_7 : IN std_logic ;
         m_2_6 : IN std_logic ;
         m_2_5 : IN std_logic ;
         m_2_4 : IN std_logic ;
         m_2_3 : IN std_logic ;
         m_2_2 : IN std_logic ;
         m_2_1 : IN std_logic ;
         m_2_0 : IN std_logic ;
         m_1_15 : IN std_logic ;
         m_1_14 : IN std_logic ;
         m_1_13 : IN std_logic ;
         m_1_12 : IN std_logic ;
         m_1_11 : IN std_logic ;
         m_1_10 : IN std_logic ;
         m_1_9 : IN std_logic ;
         m_1_8 : IN std_logic ;
         m_1_7 : IN std_logic ;
         m_1_6 : IN std_logic ;
         m_1_5 : IN std_logic ;
         m_1_4 : IN std_logic ;
         m_1_3 : IN std_logic ;
         m_1_2 : IN std_logic ;
         m_1_1 : IN std_logic ;
         m_1_0 : IN std_logic ;
         m_0_15 : IN std_logic ;
         m_0_14 : IN std_logic ;
         m_0_13 : IN std_logic ;
         m_0_12 : IN std_logic ;
         m_0_11 : IN std_logic ;
         m_0_10 : IN std_logic ;
         m_0_9 : IN std_logic ;
         m_0_8 : IN std_logic ;
         m_0_7 : IN std_logic ;
         m_0_6 : IN std_logic ;
         m_0_5 : IN std_logic ;
         m_0_4 : IN std_logic ;
         m_0_3 : IN std_logic ;
         m_0_2 : IN std_logic ;
         m_0_1 : IN std_logic ;
         m_0_0 : IN std_logic ;
         f_9_15 : INOUT std_logic ;
         f_9_14 : INOUT std_logic ;
         f_9_13 : INOUT std_logic ;
         f_9_12 : INOUT std_logic ;
         f_9_11 : INOUT std_logic ;
         f_9_10 : INOUT std_logic ;
         f_9_9 : INOUT std_logic ;
         f_9_8 : INOUT std_logic ;
         f_9_7 : INOUT std_logic ;
         f_9_6 : INOUT std_logic ;
         f_9_5 : INOUT std_logic ;
         f_9_4 : INOUT std_logic ;
         f_9_3 : INOUT std_logic ;
         f_9_2 : INOUT std_logic ;
         f_9_1 : INOUT std_logic ;
         f_9_0 : INOUT std_logic ;
         f_8_15 : INOUT std_logic ;
         f_8_14 : INOUT std_logic ;
         f_8_13 : INOUT std_logic ;
         f_8_12 : INOUT std_logic ;
         f_8_11 : INOUT std_logic ;
         f_8_10 : INOUT std_logic ;
         f_8_9 : INOUT std_logic ;
         f_8_8 : INOUT std_logic ;
         f_8_7 : INOUT std_logic ;
         f_8_6 : INOUT std_logic ;
         f_8_5 : INOUT std_logic ;
         f_8_4 : INOUT std_logic ;
         f_8_3 : INOUT std_logic ;
         f_8_2 : INOUT std_logic ;
         f_8_1 : INOUT std_logic ;
         f_8_0 : INOUT std_logic ;
         f_7_15 : INOUT std_logic ;
         f_7_14 : INOUT std_logic ;
         f_7_13 : INOUT std_logic ;
         f_7_12 : INOUT std_logic ;
         f_7_11 : INOUT std_logic ;
         f_7_10 : INOUT std_logic ;
         f_7_9 : INOUT std_logic ;
         f_7_8 : INOUT std_logic ;
         f_7_7 : INOUT std_logic ;
         f_7_6 : INOUT std_logic ;
         f_7_5 : INOUT std_logic ;
         f_7_4 : INOUT std_logic ;
         f_7_3 : INOUT std_logic ;
         f_7_2 : INOUT std_logic ;
         f_7_1 : INOUT std_logic ;
         f_7_0 : INOUT std_logic ;
         f_6_15 : INOUT std_logic ;
         f_6_14 : INOUT std_logic ;
         f_6_13 : INOUT std_logic ;
         f_6_12 : INOUT std_logic ;
         f_6_11 : INOUT std_logic ;
         f_6_10 : INOUT std_logic ;
         f_6_9 : INOUT std_logic ;
         f_6_8 : INOUT std_logic ;
         f_6_7 : INOUT std_logic ;
         f_6_6 : INOUT std_logic ;
         f_6_5 : INOUT std_logic ;
         f_6_4 : INOUT std_logic ;
         f_6_3 : INOUT std_logic ;
         f_6_2 : INOUT std_logic ;
         f_6_1 : INOUT std_logic ;
         f_6_0 : INOUT std_logic ;
         f_5_15 : INOUT std_logic ;
         f_5_14 : INOUT std_logic ;
         f_5_13 : INOUT std_logic ;
         f_5_12 : INOUT std_logic ;
         f_5_11 : INOUT std_logic ;
         f_5_10 : INOUT std_logic ;
         f_5_9 : INOUT std_logic ;
         f_5_8 : INOUT std_logic ;
         f_5_7 : INOUT std_logic ;
         f_5_6 : INOUT std_logic ;
         f_5_5 : INOUT std_logic ;
         f_5_4 : INOUT std_logic ;
         f_5_3 : INOUT std_logic ;
         f_5_2 : INOUT std_logic ;
         f_5_1 : INOUT std_logic ;
         f_5_0 : INOUT std_logic ;
         f_4_15 : INOUT std_logic ;
         f_4_14 : INOUT std_logic ;
         f_4_13 : INOUT std_logic ;
         f_4_12 : INOUT std_logic ;
         f_4_11 : INOUT std_logic ;
         f_4_10 : INOUT std_logic ;
         f_4_9 : INOUT std_logic ;
         f_4_8 : INOUT std_logic ;
         f_4_7 : INOUT std_logic ;
         f_4_6 : INOUT std_logic ;
         f_4_5 : INOUT std_logic ;
         f_4_4 : INOUT std_logic ;
         f_4_3 : INOUT std_logic ;
         f_4_2 : INOUT std_logic ;
         f_4_1 : INOUT std_logic ;
         f_4_0 : INOUT std_logic ;
         f_3_15 : INOUT std_logic ;
         f_3_14 : INOUT std_logic ;
         f_3_13 : INOUT std_logic ;
         f_3_12 : INOUT std_logic ;
         f_3_11 : INOUT std_logic ;
         f_3_10 : INOUT std_logic ;
         f_3_9 : INOUT std_logic ;
         f_3_8 : INOUT std_logic ;
         f_3_7 : INOUT std_logic ;
         f_3_6 : INOUT std_logic ;
         f_3_5 : INOUT std_logic ;
         f_3_4 : INOUT std_logic ;
         f_3_3 : INOUT std_logic ;
         f_3_2 : INOUT std_logic ;
         f_3_1 : INOUT std_logic ;
         f_3_0 : INOUT std_logic ;
         f_2_15 : INOUT std_logic ;
         f_2_14 : INOUT std_logic ;
         f_2_13 : INOUT std_logic ;
         f_2_12 : INOUT std_logic ;
         f_2_11 : INOUT std_logic ;
         f_2_10 : INOUT std_logic ;
         f_2_9 : INOUT std_logic ;
         f_2_8 : INOUT std_logic ;
         f_2_7 : INOUT std_logic ;
         f_2_6 : INOUT std_logic ;
         f_2_5 : INOUT std_logic ;
         f_2_4 : INOUT std_logic ;
         f_2_3 : INOUT std_logic ;
         f_2_2 : INOUT std_logic ;
         f_2_1 : INOUT std_logic ;
         f_2_0 : INOUT std_logic ;
         f_1_15 : INOUT std_logic ;
         f_1_14 : INOUT std_logic ;
         f_1_13 : INOUT std_logic ;
         f_1_12 : INOUT std_logic ;
         f_1_11 : INOUT std_logic ;
         f_1_10 : INOUT std_logic ;
         f_1_9 : INOUT std_logic ;
         f_1_8 : INOUT std_logic ;
         f_1_7 : INOUT std_logic ;
         f_1_6 : INOUT std_logic ;
         f_1_5 : INOUT std_logic ;
         f_1_4 : INOUT std_logic ;
         f_1_3 : INOUT std_logic ;
         f_1_2 : INOUT std_logic ;
         f_1_1 : INOUT std_logic ;
         f_1_0 : INOUT std_logic ;
         f_0_15 : INOUT std_logic ;
         f_0_14 : INOUT std_logic ;
         f_0_13 : INOUT std_logic ;
         f_0_12 : INOUT std_logic ;
         f_0_11 : INOUT std_logic ;
         f_0_10 : INOUT std_logic ;
         f_0_9 : INOUT std_logic ;
         f_0_8 : INOUT std_logic ;
         f_0_7 : INOUT std_logic ;
         f_0_6 : INOUT std_logic ;
         f_0_5 : INOUT std_logic ;
         f_0_4 : INOUT std_logic ;
         f_0_3 : INOUT std_logic ;
         f_0_2 : INOUT std_logic ;
         f_0_1 : INOUT std_logic ;
         f_0_0 : INOUT std_logic ;
         clk : IN std_logic ;
         start : IN std_logic ;
         rst : IN std_logic ;
         done : INOUT std_logic ;
         working : INOUT std_logic) ;
   end component ;
   component Accumulator_10
      port (
         a_9_15 : IN std_logic ;
         a_9_14 : IN std_logic ;
         a_9_13 : IN std_logic ;
         a_9_12 : IN std_logic ;
         a_9_11 : IN std_logic ;
         a_9_10 : IN std_logic ;
         a_9_9 : IN std_logic ;
         a_9_8 : IN std_logic ;
         a_9_7 : IN std_logic ;
         a_9_6 : IN std_logic ;
         a_9_5 : IN std_logic ;
         a_9_4 : IN std_logic ;
         a_9_3 : IN std_logic ;
         a_9_2 : IN std_logic ;
         a_9_1 : IN std_logic ;
         a_9_0 : IN std_logic ;
         a_8_15 : IN std_logic ;
         a_8_14 : IN std_logic ;
         a_8_13 : IN std_logic ;
         a_8_12 : IN std_logic ;
         a_8_11 : IN std_logic ;
         a_8_10 : IN std_logic ;
         a_8_9 : IN std_logic ;
         a_8_8 : IN std_logic ;
         a_8_7 : IN std_logic ;
         a_8_6 : IN std_logic ;
         a_8_5 : IN std_logic ;
         a_8_4 : IN std_logic ;
         a_8_3 : IN std_logic ;
         a_8_2 : IN std_logic ;
         a_8_1 : IN std_logic ;
         a_8_0 : IN std_logic ;
         a_7_15 : IN std_logic ;
         a_7_14 : IN std_logic ;
         a_7_13 : IN std_logic ;
         a_7_12 : IN std_logic ;
         a_7_11 : IN std_logic ;
         a_7_10 : IN std_logic ;
         a_7_9 : IN std_logic ;
         a_7_8 : IN std_logic ;
         a_7_7 : IN std_logic ;
         a_7_6 : IN std_logic ;
         a_7_5 : IN std_logic ;
         a_7_4 : IN std_logic ;
         a_7_3 : IN std_logic ;
         a_7_2 : IN std_logic ;
         a_7_1 : IN std_logic ;
         a_7_0 : IN std_logic ;
         a_6_15 : IN std_logic ;
         a_6_14 : IN std_logic ;
         a_6_13 : IN std_logic ;
         a_6_12 : IN std_logic ;
         a_6_11 : IN std_logic ;
         a_6_10 : IN std_logic ;
         a_6_9 : IN std_logic ;
         a_6_8 : IN std_logic ;
         a_6_7 : IN std_logic ;
         a_6_6 : IN std_logic ;
         a_6_5 : IN std_logic ;
         a_6_4 : IN std_logic ;
         a_6_3 : IN std_logic ;
         a_6_2 : IN std_logic ;
         a_6_1 : IN std_logic ;
         a_6_0 : IN std_logic ;
         a_5_15 : IN std_logic ;
         a_5_14 : IN std_logic ;
         a_5_13 : IN std_logic ;
         a_5_12 : IN std_logic ;
         a_5_11 : IN std_logic ;
         a_5_10 : IN std_logic ;
         a_5_9 : IN std_logic ;
         a_5_8 : IN std_logic ;
         a_5_7 : IN std_logic ;
         a_5_6 : IN std_logic ;
         a_5_5 : IN std_logic ;
         a_5_4 : IN std_logic ;
         a_5_3 : IN std_logic ;
         a_5_2 : IN std_logic ;
         a_5_1 : IN std_logic ;
         a_5_0 : IN std_logic ;
         a_4_15 : IN std_logic ;
         a_4_14 : IN std_logic ;
         a_4_13 : IN std_logic ;
         a_4_12 : IN std_logic ;
         a_4_11 : IN std_logic ;
         a_4_10 : IN std_logic ;
         a_4_9 : IN std_logic ;
         a_4_8 : IN std_logic ;
         a_4_7 : IN std_logic ;
         a_4_6 : IN std_logic ;
         a_4_5 : IN std_logic ;
         a_4_4 : IN std_logic ;
         a_4_3 : IN std_logic ;
         a_4_2 : IN std_logic ;
         a_4_1 : IN std_logic ;
         a_4_0 : IN std_logic ;
         a_3_15 : IN std_logic ;
         a_3_14 : IN std_logic ;
         a_3_13 : IN std_logic ;
         a_3_12 : IN std_logic ;
         a_3_11 : IN std_logic ;
         a_3_10 : IN std_logic ;
         a_3_9 : IN std_logic ;
         a_3_8 : IN std_logic ;
         a_3_7 : IN std_logic ;
         a_3_6 : IN std_logic ;
         a_3_5 : IN std_logic ;
         a_3_4 : IN std_logic ;
         a_3_3 : IN std_logic ;
         a_3_2 : IN std_logic ;
         a_3_1 : IN std_logic ;
         a_3_0 : IN std_logic ;
         a_2_15 : IN std_logic ;
         a_2_14 : IN std_logic ;
         a_2_13 : IN std_logic ;
         a_2_12 : IN std_logic ;
         a_2_11 : IN std_logic ;
         a_2_10 : IN std_logic ;
         a_2_9 : IN std_logic ;
         a_2_8 : IN std_logic ;
         a_2_7 : IN std_logic ;
         a_2_6 : IN std_logic ;
         a_2_5 : IN std_logic ;
         a_2_4 : IN std_logic ;
         a_2_3 : IN std_logic ;
         a_2_2 : IN std_logic ;
         a_2_1 : IN std_logic ;
         a_2_0 : IN std_logic ;
         a_1_15 : IN std_logic ;
         a_1_14 : IN std_logic ;
         a_1_13 : IN std_logic ;
         a_1_12 : IN std_logic ;
         a_1_11 : IN std_logic ;
         a_1_10 : IN std_logic ;
         a_1_9 : IN std_logic ;
         a_1_8 : IN std_logic ;
         a_1_7 : IN std_logic ;
         a_1_6 : IN std_logic ;
         a_1_5 : IN std_logic ;
         a_1_4 : IN std_logic ;
         a_1_3 : IN std_logic ;
         a_1_2 : IN std_logic ;
         a_1_1 : IN std_logic ;
         a_1_0 : IN std_logic ;
         a_0_15 : IN std_logic ;
         a_0_14 : IN std_logic ;
         a_0_13 : IN std_logic ;
         a_0_12 : IN std_logic ;
         a_0_11 : IN std_logic ;
         a_0_10 : IN std_logic ;
         a_0_9 : IN std_logic ;
         a_0_8 : IN std_logic ;
         a_0_7 : IN std_logic ;
         a_0_6 : IN std_logic ;
         a_0_5 : IN std_logic ;
         a_0_4 : IN std_logic ;
         a_0_3 : IN std_logic ;
         a_0_2 : IN std_logic ;
         a_0_1 : IN std_logic ;
         a_0_0 : IN std_logic ;
         f_9_15 : INOUT std_logic ;
         f_9_14 : INOUT std_logic ;
         f_9_13 : INOUT std_logic ;
         f_9_12 : INOUT std_logic ;
         f_9_11 : INOUT std_logic ;
         f_9_10 : INOUT std_logic ;
         f_9_9 : INOUT std_logic ;
         f_9_8 : INOUT std_logic ;
         f_9_7 : INOUT std_logic ;
         f_9_6 : INOUT std_logic ;
         f_9_5 : INOUT std_logic ;
         f_9_4 : INOUT std_logic ;
         f_9_3 : INOUT std_logic ;
         f_9_2 : INOUT std_logic ;
         f_9_1 : INOUT std_logic ;
         f_9_0 : INOUT std_logic ;
         f_8_15 : INOUT std_logic ;
         f_8_14 : INOUT std_logic ;
         f_8_13 : INOUT std_logic ;
         f_8_12 : INOUT std_logic ;
         f_8_11 : INOUT std_logic ;
         f_8_10 : INOUT std_logic ;
         f_8_9 : INOUT std_logic ;
         f_8_8 : INOUT std_logic ;
         f_8_7 : INOUT std_logic ;
         f_8_6 : INOUT std_logic ;
         f_8_5 : INOUT std_logic ;
         f_8_4 : INOUT std_logic ;
         f_8_3 : INOUT std_logic ;
         f_8_2 : INOUT std_logic ;
         f_8_1 : INOUT std_logic ;
         f_8_0 : INOUT std_logic ;
         f_7_15 : INOUT std_logic ;
         f_7_14 : INOUT std_logic ;
         f_7_13 : INOUT std_logic ;
         f_7_12 : INOUT std_logic ;
         f_7_11 : INOUT std_logic ;
         f_7_10 : INOUT std_logic ;
         f_7_9 : INOUT std_logic ;
         f_7_8 : INOUT std_logic ;
         f_7_7 : INOUT std_logic ;
         f_7_6 : INOUT std_logic ;
         f_7_5 : INOUT std_logic ;
         f_7_4 : INOUT std_logic ;
         f_7_3 : INOUT std_logic ;
         f_7_2 : INOUT std_logic ;
         f_7_1 : INOUT std_logic ;
         f_7_0 : INOUT std_logic ;
         f_6_15 : INOUT std_logic ;
         f_6_14 : INOUT std_logic ;
         f_6_13 : INOUT std_logic ;
         f_6_12 : INOUT std_logic ;
         f_6_11 : INOUT std_logic ;
         f_6_10 : INOUT std_logic ;
         f_6_9 : INOUT std_logic ;
         f_6_8 : INOUT std_logic ;
         f_6_7 : INOUT std_logic ;
         f_6_6 : INOUT std_logic ;
         f_6_5 : INOUT std_logic ;
         f_6_4 : INOUT std_logic ;
         f_6_3 : INOUT std_logic ;
         f_6_2 : INOUT std_logic ;
         f_6_1 : INOUT std_logic ;
         f_6_0 : INOUT std_logic ;
         f_5_15 : INOUT std_logic ;
         f_5_14 : INOUT std_logic ;
         f_5_13 : INOUT std_logic ;
         f_5_12 : INOUT std_logic ;
         f_5_11 : INOUT std_logic ;
         f_5_10 : INOUT std_logic ;
         f_5_9 : INOUT std_logic ;
         f_5_8 : INOUT std_logic ;
         f_5_7 : INOUT std_logic ;
         f_5_6 : INOUT std_logic ;
         f_5_5 : INOUT std_logic ;
         f_5_4 : INOUT std_logic ;
         f_5_3 : INOUT std_logic ;
         f_5_2 : INOUT std_logic ;
         f_5_1 : INOUT std_logic ;
         f_5_0 : INOUT std_logic ;
         f_4_15 : INOUT std_logic ;
         f_4_14 : INOUT std_logic ;
         f_4_13 : INOUT std_logic ;
         f_4_12 : INOUT std_logic ;
         f_4_11 : INOUT std_logic ;
         f_4_10 : INOUT std_logic ;
         f_4_9 : INOUT std_logic ;
         f_4_8 : INOUT std_logic ;
         f_4_7 : INOUT std_logic ;
         f_4_6 : INOUT std_logic ;
         f_4_5 : INOUT std_logic ;
         f_4_4 : INOUT std_logic ;
         f_4_3 : INOUT std_logic ;
         f_4_2 : INOUT std_logic ;
         f_4_1 : INOUT std_logic ;
         f_4_0 : INOUT std_logic ;
         f_3_15 : INOUT std_logic ;
         f_3_14 : INOUT std_logic ;
         f_3_13 : INOUT std_logic ;
         f_3_12 : INOUT std_logic ;
         f_3_11 : INOUT std_logic ;
         f_3_10 : INOUT std_logic ;
         f_3_9 : INOUT std_logic ;
         f_3_8 : INOUT std_logic ;
         f_3_7 : INOUT std_logic ;
         f_3_6 : INOUT std_logic ;
         f_3_5 : INOUT std_logic ;
         f_3_4 : INOUT std_logic ;
         f_3_3 : INOUT std_logic ;
         f_3_2 : INOUT std_logic ;
         f_3_1 : INOUT std_logic ;
         f_3_0 : INOUT std_logic ;
         f_2_15 : INOUT std_logic ;
         f_2_14 : INOUT std_logic ;
         f_2_13 : INOUT std_logic ;
         f_2_12 : INOUT std_logic ;
         f_2_11 : INOUT std_logic ;
         f_2_10 : INOUT std_logic ;
         f_2_9 : INOUT std_logic ;
         f_2_8 : INOUT std_logic ;
         f_2_7 : INOUT std_logic ;
         f_2_6 : INOUT std_logic ;
         f_2_5 : INOUT std_logic ;
         f_2_4 : INOUT std_logic ;
         f_2_3 : INOUT std_logic ;
         f_2_2 : INOUT std_logic ;
         f_2_1 : INOUT std_logic ;
         f_2_0 : INOUT std_logic ;
         f_1_15 : INOUT std_logic ;
         f_1_14 : INOUT std_logic ;
         f_1_13 : INOUT std_logic ;
         f_1_12 : INOUT std_logic ;
         f_1_11 : INOUT std_logic ;
         f_1_10 : INOUT std_logic ;
         f_1_9 : INOUT std_logic ;
         f_1_8 : INOUT std_logic ;
         f_1_7 : INOUT std_logic ;
         f_1_6 : INOUT std_logic ;
         f_1_5 : INOUT std_logic ;
         f_1_4 : INOUT std_logic ;
         f_1_3 : INOUT std_logic ;
         f_1_2 : INOUT std_logic ;
         f_1_1 : INOUT std_logic ;
         f_1_0 : INOUT std_logic ;
         f_0_15 : INOUT std_logic ;
         f_0_14 : INOUT std_logic ;
         f_0_13 : INOUT std_logic ;
         f_0_12 : INOUT std_logic ;
         f_0_11 : INOUT std_logic ;
         f_0_10 : INOUT std_logic ;
         f_0_9 : INOUT std_logic ;
         f_0_8 : INOUT std_logic ;
         f_0_7 : INOUT std_logic ;
         f_0_6 : INOUT std_logic ;
         f_0_5 : INOUT std_logic ;
         f_0_4 : INOUT std_logic ;
         f_0_3 : INOUT std_logic ;
         f_0_2 : INOUT std_logic ;
         f_0_1 : INOUT std_logic ;
         f_0_0 : INOUT std_logic ;
         save : IN std_logic ;
         rst : IN std_logic) ;
   end component ;
   signal mulOut_9_15, mulOut_9_14, mulOut_9_13, mulOut_9_12, mulOut_9_11, 
      mulOut_9_10, mulOut_9_9, mulOut_9_8, mulOut_9_7, mulOut_9_6, 
      mulOut_9_5, mulOut_9_4, mulOut_9_3, mulOut_9_2, mulOut_9_1, mulOut_9_0, 
      mulOut_8_15, mulOut_8_14, mulOut_8_13, mulOut_8_12, mulOut_8_11, 
      mulOut_8_10, mulOut_8_9, mulOut_8_8, mulOut_8_7, mulOut_8_6, 
      mulOut_8_5, mulOut_8_4, mulOut_8_3, mulOut_8_2, mulOut_8_1, mulOut_8_0, 
      mulOut_7_15, mulOut_7_14, mulOut_7_13, mulOut_7_12, mulOut_7_11, 
      mulOut_7_10, mulOut_7_9, mulOut_7_8, mulOut_7_7, mulOut_7_6, 
      mulOut_7_5, mulOut_7_4, mulOut_7_3, mulOut_7_2, mulOut_7_1, mulOut_7_0, 
      mulOut_6_15, mulOut_6_14, mulOut_6_13, mulOut_6_12, mulOut_6_11, 
      mulOut_6_10, mulOut_6_9, mulOut_6_8, mulOut_6_7, mulOut_6_6, 
      mulOut_6_5, mulOut_6_4, mulOut_6_3, mulOut_6_2, mulOut_6_1, mulOut_6_0, 
      mulOut_5_15, mulOut_5_14, mulOut_5_13, mulOut_5_12, mulOut_5_11, 
      mulOut_5_10, mulOut_5_9, mulOut_5_8, mulOut_5_7, mulOut_5_6, 
      mulOut_5_5, mulOut_5_4, mulOut_5_3, mulOut_5_2, mulOut_5_1, mulOut_5_0, 
      mulOut_4_15, mulOut_4_14, mulOut_4_13, mulOut_4_12, mulOut_4_11, 
      mulOut_4_10, mulOut_4_9, mulOut_4_8, mulOut_4_7, mulOut_4_6, 
      mulOut_4_5, mulOut_4_4, mulOut_4_3, mulOut_4_2, mulOut_4_1, mulOut_4_0, 
      mulOut_3_15, mulOut_3_14, mulOut_3_13, mulOut_3_12, mulOut_3_11, 
      mulOut_3_10, mulOut_3_9, mulOut_3_8, mulOut_3_7, mulOut_3_6, 
      mulOut_3_5, mulOut_3_4, mulOut_3_3, mulOut_3_2, mulOut_3_1, mulOut_3_0, 
      mulOut_2_15, mulOut_2_14, mulOut_2_13, mulOut_2_12, mulOut_2_11, 
      mulOut_2_10, mulOut_2_9, mulOut_2_8, mulOut_2_7, mulOut_2_6, 
      mulOut_2_5, mulOut_2_4, mulOut_2_3, mulOut_2_2, mulOut_2_1, mulOut_2_0, 
      mulOut_1_15, mulOut_1_14, mulOut_1_13, mulOut_1_12, mulOut_1_11, 
      mulOut_1_10, mulOut_1_9, mulOut_1_8, mulOut_1_7, mulOut_1_6, 
      mulOut_1_5, mulOut_1_4, mulOut_1_3, mulOut_1_2, mulOut_1_1, mulOut_1_0, 
      mulOut_0_15, mulOut_0_14, mulOut_0_13, mulOut_0_12, mulOut_0_11, 
      mulOut_0_10, mulOut_0_9, mulOut_0_8, mulOut_0_7, mulOut_0_6, 
      mulOut_0_5, mulOut_0_4, mulOut_0_3, mulOut_0_2, mulOut_0_1, mulOut_0_0
   : std_logic ;

begin
   cmp1 : nMul8x16_10 port map ( q_9_7=>q_9_7, q_9_6=>q_9_6, q_9_5=>q_9_5, 
      q_9_4=>q_9_4, q_9_3=>q_9_3, q_9_2=>q_9_2, q_9_1=>q_9_1, q_9_0=>q_9_0, 
      q_8_7=>q_8_7, q_8_6=>q_8_6, q_8_5=>q_8_5, q_8_4=>q_8_4, q_8_3=>q_8_3, 
      q_8_2=>q_8_2, q_8_1=>q_8_1, q_8_0=>q_8_0, q_7_7=>q_7_7, q_7_6=>q_7_6, 
      q_7_5=>q_7_5, q_7_4=>q_7_4, q_7_3=>q_7_3, q_7_2=>q_7_2, q_7_1=>q_7_1, 
      q_7_0=>q_7_0, q_6_7=>q_6_7, q_6_6=>q_6_6, q_6_5=>q_6_5, q_6_4=>q_6_4, 
      q_6_3=>q_6_3, q_6_2=>q_6_2, q_6_1=>q_6_1, q_6_0=>q_6_0, q_5_7=>q_5_7, 
      q_5_6=>q_5_6, q_5_5=>q_5_5, q_5_4=>q_5_4, q_5_3=>q_5_3, q_5_2=>q_5_2, 
      q_5_1=>q_5_1, q_5_0=>q_5_0, q_4_7=>q_4_7, q_4_6=>q_4_6, q_4_5=>q_4_5, 
      q_4_4=>q_4_4, q_4_3=>q_4_3, q_4_2=>q_4_2, q_4_1=>q_4_1, q_4_0=>q_4_0, 
      q_3_7=>q_3_7, q_3_6=>q_3_6, q_3_5=>q_3_5, q_3_4=>q_3_4, q_3_3=>q_3_3, 
      q_3_2=>q_3_2, q_3_1=>q_3_1, q_3_0=>q_3_0, q_2_7=>q_2_7, q_2_6=>q_2_6, 
      q_2_5=>q_2_5, q_2_4=>q_2_4, q_2_3=>q_2_3, q_2_2=>q_2_2, q_2_1=>q_2_1, 
      q_2_0=>q_2_0, q_1_7=>q_1_7, q_1_6=>q_1_6, q_1_5=>q_1_5, q_1_4=>q_1_4, 
      q_1_3=>q_1_3, q_1_2=>q_1_2, q_1_1=>q_1_1, q_1_0=>q_1_0, q_0_7=>q_0_7, 
      q_0_6=>q_0_6, q_0_5=>q_0_5, q_0_4=>q_0_4, q_0_3=>q_0_3, q_0_2=>q_0_2, 
      q_0_1=>q_0_1, q_0_0=>q_0_0, m_9_15=>m_9_15, m_9_14=>m_9_14, m_9_13=>
      m_9_13, m_9_12=>m_9_12, m_9_11=>m_9_11, m_9_10=>m_9_10, m_9_9=>m_9_9, 
      m_9_8=>m_9_8, m_9_7=>m_9_7, m_9_6=>m_9_6, m_9_5=>m_9_5, m_9_4=>m_9_4, 
      m_9_3=>m_9_3, m_9_2=>m_9_2, m_9_1=>m_9_1, m_9_0=>m_9_0, m_8_15=>m_8_15, 
      m_8_14=>m_8_14, m_8_13=>m_8_13, m_8_12=>m_8_12, m_8_11=>m_8_11, m_8_10
      =>m_8_10, m_8_9=>m_8_9, m_8_8=>m_8_8, m_8_7=>m_8_7, m_8_6=>m_8_6, 
      m_8_5=>m_8_5, m_8_4=>m_8_4, m_8_3=>m_8_3, m_8_2=>m_8_2, m_8_1=>m_8_1, 
      m_8_0=>m_8_0, m_7_15=>m_7_15, m_7_14=>m_7_14, m_7_13=>m_7_13, m_7_12=>
      m_7_12, m_7_11=>m_7_11, m_7_10=>m_7_10, m_7_9=>m_7_9, m_7_8=>m_7_8, 
      m_7_7=>m_7_7, m_7_6=>m_7_6, m_7_5=>m_7_5, m_7_4=>m_7_4, m_7_3=>m_7_3, 
      m_7_2=>m_7_2, m_7_1=>m_7_1, m_7_0=>m_7_0, m_6_15=>m_6_15, m_6_14=>
      m_6_14, m_6_13=>m_6_13, m_6_12=>m_6_12, m_6_11=>m_6_11, m_6_10=>m_6_10, 
      m_6_9=>m_6_9, m_6_8=>m_6_8, m_6_7=>m_6_7, m_6_6=>m_6_6, m_6_5=>m_6_5, 
      m_6_4=>m_6_4, m_6_3=>m_6_3, m_6_2=>m_6_2, m_6_1=>m_6_1, m_6_0=>m_6_0, 
      m_5_15=>m_5_15, m_5_14=>m_5_14, m_5_13=>m_5_13, m_5_12=>m_5_12, m_5_11
      =>m_5_11, m_5_10=>m_5_10, m_5_9=>m_5_9, m_5_8=>m_5_8, m_5_7=>m_5_7, 
      m_5_6=>m_5_6, m_5_5=>m_5_5, m_5_4=>m_5_4, m_5_3=>m_5_3, m_5_2=>m_5_2, 
      m_5_1=>m_5_1, m_5_0=>m_5_0, m_4_15=>m_4_15, m_4_14=>m_4_14, m_4_13=>
      m_4_13, m_4_12=>m_4_12, m_4_11=>m_4_11, m_4_10=>m_4_10, m_4_9=>m_4_9, 
      m_4_8=>m_4_8, m_4_7=>m_4_7, m_4_6=>m_4_6, m_4_5=>m_4_5, m_4_4=>m_4_4, 
      m_4_3=>m_4_3, m_4_2=>m_4_2, m_4_1=>m_4_1, m_4_0=>m_4_0, m_3_15=>m_3_15, 
      m_3_14=>m_3_14, m_3_13=>m_3_13, m_3_12=>m_3_12, m_3_11=>m_3_11, m_3_10
      =>m_3_10, m_3_9=>m_3_9, m_3_8=>m_3_8, m_3_7=>m_3_7, m_3_6=>m_3_6, 
      m_3_5=>m_3_5, m_3_4=>m_3_4, m_3_3=>m_3_3, m_3_2=>m_3_2, m_3_1=>m_3_1, 
      m_3_0=>m_3_0, m_2_15=>m_2_15, m_2_14=>m_2_14, m_2_13=>m_2_13, m_2_12=>
      m_2_12, m_2_11=>m_2_11, m_2_10=>m_2_10, m_2_9=>m_2_9, m_2_8=>m_2_8, 
      m_2_7=>m_2_7, m_2_6=>m_2_6, m_2_5=>m_2_5, m_2_4=>m_2_4, m_2_3=>m_2_3, 
      m_2_2=>m_2_2, m_2_1=>m_2_1, m_2_0=>m_2_0, m_1_15=>m_1_15, m_1_14=>
      m_1_14, m_1_13=>m_1_13, m_1_12=>m_1_12, m_1_11=>m_1_11, m_1_10=>m_1_10, 
      m_1_9=>m_1_9, m_1_8=>m_1_8, m_1_7=>m_1_7, m_1_6=>m_1_6, m_1_5=>m_1_5, 
      m_1_4=>m_1_4, m_1_3=>m_1_3, m_1_2=>m_1_2, m_1_1=>m_1_1, m_1_0=>m_1_0, 
      m_0_15=>m_0_15, m_0_14=>m_0_14, m_0_13=>m_0_13, m_0_12=>m_0_12, m_0_11
      =>m_0_11, m_0_10=>m_0_10, m_0_9=>m_0_9, m_0_8=>m_0_8, m_0_7=>m_0_7, 
      m_0_6=>m_0_6, m_0_5=>m_0_5, m_0_4=>m_0_4, m_0_3=>m_0_3, m_0_2=>m_0_2, 
      m_0_1=>m_0_1, m_0_0=>m_0_0, f_9_15=>mulOut_9_15, f_9_14=>mulOut_9_14, 
      f_9_13=>mulOut_9_13, f_9_12=>mulOut_9_12, f_9_11=>mulOut_9_11, f_9_10
      =>mulOut_9_10, f_9_9=>mulOut_9_9, f_9_8=>mulOut_9_8, f_9_7=>mulOut_9_7, 
      f_9_6=>mulOut_9_6, f_9_5=>mulOut_9_5, f_9_4=>mulOut_9_4, f_9_3=>
      mulOut_9_3, f_9_2=>mulOut_9_2, f_9_1=>mulOut_9_1, f_9_0=>mulOut_9_0, 
      f_8_15=>mulOut_8_15, f_8_14=>mulOut_8_14, f_8_13=>mulOut_8_13, f_8_12
      =>mulOut_8_12, f_8_11=>mulOut_8_11, f_8_10=>mulOut_8_10, f_8_9=>
      mulOut_8_9, f_8_8=>mulOut_8_8, f_8_7=>mulOut_8_7, f_8_6=>mulOut_8_6, 
      f_8_5=>mulOut_8_5, f_8_4=>mulOut_8_4, f_8_3=>mulOut_8_3, f_8_2=>
      mulOut_8_2, f_8_1=>mulOut_8_1, f_8_0=>mulOut_8_0, f_7_15=>mulOut_7_15, 
      f_7_14=>mulOut_7_14, f_7_13=>mulOut_7_13, f_7_12=>mulOut_7_12, f_7_11
      =>mulOut_7_11, f_7_10=>mulOut_7_10, f_7_9=>mulOut_7_9, f_7_8=>
      mulOut_7_8, f_7_7=>mulOut_7_7, f_7_6=>mulOut_7_6, f_7_5=>mulOut_7_5, 
      f_7_4=>mulOut_7_4, f_7_3=>mulOut_7_3, f_7_2=>mulOut_7_2, f_7_1=>
      mulOut_7_1, f_7_0=>mulOut_7_0, f_6_15=>mulOut_6_15, f_6_14=>
      mulOut_6_14, f_6_13=>mulOut_6_13, f_6_12=>mulOut_6_12, f_6_11=>
      mulOut_6_11, f_6_10=>mulOut_6_10, f_6_9=>mulOut_6_9, f_6_8=>mulOut_6_8, 
      f_6_7=>mulOut_6_7, f_6_6=>mulOut_6_6, f_6_5=>mulOut_6_5, f_6_4=>
      mulOut_6_4, f_6_3=>mulOut_6_3, f_6_2=>mulOut_6_2, f_6_1=>mulOut_6_1, 
      f_6_0=>mulOut_6_0, f_5_15=>mulOut_5_15, f_5_14=>mulOut_5_14, f_5_13=>
      mulOut_5_13, f_5_12=>mulOut_5_12, f_5_11=>mulOut_5_11, f_5_10=>
      mulOut_5_10, f_5_9=>mulOut_5_9, f_5_8=>mulOut_5_8, f_5_7=>mulOut_5_7, 
      f_5_6=>mulOut_5_6, f_5_5=>mulOut_5_5, f_5_4=>mulOut_5_4, f_5_3=>
      mulOut_5_3, f_5_2=>mulOut_5_2, f_5_1=>mulOut_5_1, f_5_0=>mulOut_5_0, 
      f_4_15=>mulOut_4_15, f_4_14=>mulOut_4_14, f_4_13=>mulOut_4_13, f_4_12
      =>mulOut_4_12, f_4_11=>mulOut_4_11, f_4_10=>mulOut_4_10, f_4_9=>
      mulOut_4_9, f_4_8=>mulOut_4_8, f_4_7=>mulOut_4_7, f_4_6=>mulOut_4_6, 
      f_4_5=>mulOut_4_5, f_4_4=>mulOut_4_4, f_4_3=>mulOut_4_3, f_4_2=>
      mulOut_4_2, f_4_1=>mulOut_4_1, f_4_0=>mulOut_4_0, f_3_15=>mulOut_3_15, 
      f_3_14=>mulOut_3_14, f_3_13=>mulOut_3_13, f_3_12=>mulOut_3_12, f_3_11
      =>mulOut_3_11, f_3_10=>mulOut_3_10, f_3_9=>mulOut_3_9, f_3_8=>
      mulOut_3_8, f_3_7=>mulOut_3_7, f_3_6=>mulOut_3_6, f_3_5=>mulOut_3_5, 
      f_3_4=>mulOut_3_4, f_3_3=>mulOut_3_3, f_3_2=>mulOut_3_2, f_3_1=>
      mulOut_3_1, f_3_0=>mulOut_3_0, f_2_15=>mulOut_2_15, f_2_14=>
      mulOut_2_14, f_2_13=>mulOut_2_13, f_2_12=>mulOut_2_12, f_2_11=>
      mulOut_2_11, f_2_10=>mulOut_2_10, f_2_9=>mulOut_2_9, f_2_8=>mulOut_2_8, 
      f_2_7=>mulOut_2_7, f_2_6=>mulOut_2_6, f_2_5=>mulOut_2_5, f_2_4=>
      mulOut_2_4, f_2_3=>mulOut_2_3, f_2_2=>mulOut_2_2, f_2_1=>mulOut_2_1, 
      f_2_0=>mulOut_2_0, f_1_15=>mulOut_1_15, f_1_14=>mulOut_1_14, f_1_13=>
      mulOut_1_13, f_1_12=>mulOut_1_12, f_1_11=>mulOut_1_11, f_1_10=>
      mulOut_1_10, f_1_9=>mulOut_1_9, f_1_8=>mulOut_1_8, f_1_7=>mulOut_1_7, 
      f_1_6=>mulOut_1_6, f_1_5=>mulOut_1_5, f_1_4=>mulOut_1_4, f_1_3=>
      mulOut_1_3, f_1_2=>mulOut_1_2, f_1_1=>mulOut_1_1, f_1_0=>mulOut_1_0, 
      f_0_15=>mulOut_0_15, f_0_14=>mulOut_0_14, f_0_13=>mulOut_0_13, f_0_12
      =>mulOut_0_12, f_0_11=>mulOut_0_11, f_0_10=>mulOut_0_10, f_0_9=>
      mulOut_0_9, f_0_8=>mulOut_0_8, f_0_7=>mulOut_0_7, f_0_6=>mulOut_0_6, 
      f_0_5=>mulOut_0_5, f_0_4=>mulOut_0_4, f_0_3=>mulOut_0_3, f_0_2=>
      mulOut_0_2, f_0_1=>mulOut_0_1, f_0_0=>mulOut_0_0, clk=>clk, start=>
      start, rst=>rst, done=>done, working=>working);
   cmp2 : Accumulator_10 port map ( a_9_15=>mulOut_9_15, a_9_14=>mulOut_9_14, 
      a_9_13=>mulOut_9_13, a_9_12=>mulOut_9_12, a_9_11=>mulOut_9_11, a_9_10
      =>mulOut_9_10, a_9_9=>mulOut_9_9, a_9_8=>mulOut_9_8, a_9_7=>mulOut_9_7, 
      a_9_6=>mulOut_9_6, a_9_5=>mulOut_9_5, a_9_4=>mulOut_9_4, a_9_3=>
      mulOut_9_3, a_9_2=>mulOut_9_2, a_9_1=>mulOut_9_1, a_9_0=>mulOut_9_0, 
      a_8_15=>mulOut_8_15, a_8_14=>mulOut_8_14, a_8_13=>mulOut_8_13, a_8_12
      =>mulOut_8_12, a_8_11=>mulOut_8_11, a_8_10=>mulOut_8_10, a_8_9=>
      mulOut_8_9, a_8_8=>mulOut_8_8, a_8_7=>mulOut_8_7, a_8_6=>mulOut_8_6, 
      a_8_5=>mulOut_8_5, a_8_4=>mulOut_8_4, a_8_3=>mulOut_8_3, a_8_2=>
      mulOut_8_2, a_8_1=>mulOut_8_1, a_8_0=>mulOut_8_0, a_7_15=>mulOut_7_15, 
      a_7_14=>mulOut_7_14, a_7_13=>mulOut_7_13, a_7_12=>mulOut_7_12, a_7_11
      =>mulOut_7_11, a_7_10=>mulOut_7_10, a_7_9=>mulOut_7_9, a_7_8=>
      mulOut_7_8, a_7_7=>mulOut_7_7, a_7_6=>mulOut_7_6, a_7_5=>mulOut_7_5, 
      a_7_4=>mulOut_7_4, a_7_3=>mulOut_7_3, a_7_2=>mulOut_7_2, a_7_1=>
      mulOut_7_1, a_7_0=>mulOut_7_0, a_6_15=>mulOut_6_15, a_6_14=>
      mulOut_6_14, a_6_13=>mulOut_6_13, a_6_12=>mulOut_6_12, a_6_11=>
      mulOut_6_11, a_6_10=>mulOut_6_10, a_6_9=>mulOut_6_9, a_6_8=>mulOut_6_8, 
      a_6_7=>mulOut_6_7, a_6_6=>mulOut_6_6, a_6_5=>mulOut_6_5, a_6_4=>
      mulOut_6_4, a_6_3=>mulOut_6_3, a_6_2=>mulOut_6_2, a_6_1=>mulOut_6_1, 
      a_6_0=>mulOut_6_0, a_5_15=>mulOut_5_15, a_5_14=>mulOut_5_14, a_5_13=>
      mulOut_5_13, a_5_12=>mulOut_5_12, a_5_11=>mulOut_5_11, a_5_10=>
      mulOut_5_10, a_5_9=>mulOut_5_9, a_5_8=>mulOut_5_8, a_5_7=>mulOut_5_7, 
      a_5_6=>mulOut_5_6, a_5_5=>mulOut_5_5, a_5_4=>mulOut_5_4, a_5_3=>
      mulOut_5_3, a_5_2=>mulOut_5_2, a_5_1=>mulOut_5_1, a_5_0=>mulOut_5_0, 
      a_4_15=>mulOut_4_15, a_4_14=>mulOut_4_14, a_4_13=>mulOut_4_13, a_4_12
      =>mulOut_4_12, a_4_11=>mulOut_4_11, a_4_10=>mulOut_4_10, a_4_9=>
      mulOut_4_9, a_4_8=>mulOut_4_8, a_4_7=>mulOut_4_7, a_4_6=>mulOut_4_6, 
      a_4_5=>mulOut_4_5, a_4_4=>mulOut_4_4, a_4_3=>mulOut_4_3, a_4_2=>
      mulOut_4_2, a_4_1=>mulOut_4_1, a_4_0=>mulOut_4_0, a_3_15=>mulOut_3_15, 
      a_3_14=>mulOut_3_14, a_3_13=>mulOut_3_13, a_3_12=>mulOut_3_12, a_3_11
      =>mulOut_3_11, a_3_10=>mulOut_3_10, a_3_9=>mulOut_3_9, a_3_8=>
      mulOut_3_8, a_3_7=>mulOut_3_7, a_3_6=>mulOut_3_6, a_3_5=>mulOut_3_5, 
      a_3_4=>mulOut_3_4, a_3_3=>mulOut_3_3, a_3_2=>mulOut_3_2, a_3_1=>
      mulOut_3_1, a_3_0=>mulOut_3_0, a_2_15=>mulOut_2_15, a_2_14=>
      mulOut_2_14, a_2_13=>mulOut_2_13, a_2_12=>mulOut_2_12, a_2_11=>
      mulOut_2_11, a_2_10=>mulOut_2_10, a_2_9=>mulOut_2_9, a_2_8=>mulOut_2_8, 
      a_2_7=>mulOut_2_7, a_2_6=>mulOut_2_6, a_2_5=>mulOut_2_5, a_2_4=>
      mulOut_2_4, a_2_3=>mulOut_2_3, a_2_2=>mulOut_2_2, a_2_1=>mulOut_2_1, 
      a_2_0=>mulOut_2_0, a_1_15=>mulOut_1_15, a_1_14=>mulOut_1_14, a_1_13=>
      mulOut_1_13, a_1_12=>mulOut_1_12, a_1_11=>mulOut_1_11, a_1_10=>
      mulOut_1_10, a_1_9=>mulOut_1_9, a_1_8=>mulOut_1_8, a_1_7=>mulOut_1_7, 
      a_1_6=>mulOut_1_6, a_1_5=>mulOut_1_5, a_1_4=>mulOut_1_4, a_1_3=>
      mulOut_1_3, a_1_2=>mulOut_1_2, a_1_1=>mulOut_1_1, a_1_0=>mulOut_1_0, 
      a_0_15=>mulOut_0_15, a_0_14=>mulOut_0_14, a_0_13=>mulOut_0_13, a_0_12
      =>mulOut_0_12, a_0_11=>mulOut_0_11, a_0_10=>mulOut_0_10, a_0_9=>
      mulOut_0_9, a_0_8=>mulOut_0_8, a_0_7=>mulOut_0_7, a_0_6=>mulOut_0_6, 
      a_0_5=>mulOut_0_5, a_0_4=>mulOut_0_4, a_0_3=>mulOut_0_3, a_0_2=>
      mulOut_0_2, a_0_1=>mulOut_0_1, a_0_0=>mulOut_0_0, f_9_15=>f_9_15, 
      f_9_14=>f_9_14, f_9_13=>f_9_13, f_9_12=>f_9_12, f_9_11=>f_9_11, f_9_10
      =>f_9_10, f_9_9=>f_9_9, f_9_8=>f_9_8, f_9_7=>f_9_7, f_9_6=>f_9_6, 
      f_9_5=>f_9_5, f_9_4=>f_9_4, f_9_3=>f_9_3, f_9_2=>f_9_2, f_9_1=>f_9_1, 
      f_9_0=>f_9_0, f_8_15=>f_8_15, f_8_14=>f_8_14, f_8_13=>f_8_13, f_8_12=>
      f_8_12, f_8_11=>f_8_11, f_8_10=>f_8_10, f_8_9=>f_8_9, f_8_8=>f_8_8, 
      f_8_7=>f_8_7, f_8_6=>f_8_6, f_8_5=>f_8_5, f_8_4=>f_8_4, f_8_3=>f_8_3, 
      f_8_2=>f_8_2, f_8_1=>f_8_1, f_8_0=>f_8_0, f_7_15=>f_7_15, f_7_14=>
      f_7_14, f_7_13=>f_7_13, f_7_12=>f_7_12, f_7_11=>f_7_11, f_7_10=>f_7_10, 
      f_7_9=>f_7_9, f_7_8=>f_7_8, f_7_7=>f_7_7, f_7_6=>f_7_6, f_7_5=>f_7_5, 
      f_7_4=>f_7_4, f_7_3=>f_7_3, f_7_2=>f_7_2, f_7_1=>f_7_1, f_7_0=>f_7_0, 
      f_6_15=>f_6_15, f_6_14=>f_6_14, f_6_13=>f_6_13, f_6_12=>f_6_12, f_6_11
      =>f_6_11, f_6_10=>f_6_10, f_6_9=>f_6_9, f_6_8=>f_6_8, f_6_7=>f_6_7, 
      f_6_6=>f_6_6, f_6_5=>f_6_5, f_6_4=>f_6_4, f_6_3=>f_6_3, f_6_2=>f_6_2, 
      f_6_1=>f_6_1, f_6_0=>f_6_0, f_5_15=>f_5_15, f_5_14=>f_5_14, f_5_13=>
      f_5_13, f_5_12=>f_5_12, f_5_11=>f_5_11, f_5_10=>f_5_10, f_5_9=>f_5_9, 
      f_5_8=>f_5_8, f_5_7=>f_5_7, f_5_6=>f_5_6, f_5_5=>f_5_5, f_5_4=>f_5_4, 
      f_5_3=>f_5_3, f_5_2=>f_5_2, f_5_1=>f_5_1, f_5_0=>f_5_0, f_4_15=>f_4_15, 
      f_4_14=>f_4_14, f_4_13=>f_4_13, f_4_12=>f_4_12, f_4_11=>f_4_11, f_4_10
      =>f_4_10, f_4_9=>f_4_9, f_4_8=>f_4_8, f_4_7=>f_4_7, f_4_6=>f_4_6, 
      f_4_5=>f_4_5, f_4_4=>f_4_4, f_4_3=>f_4_3, f_4_2=>f_4_2, f_4_1=>f_4_1, 
      f_4_0=>f_4_0, f_3_15=>f_3_15, f_3_14=>f_3_14, f_3_13=>f_3_13, f_3_12=>
      f_3_12, f_3_11=>f_3_11, f_3_10=>f_3_10, f_3_9=>f_3_9, f_3_8=>f_3_8, 
      f_3_7=>f_3_7, f_3_6=>f_3_6, f_3_5=>f_3_5, f_3_4=>f_3_4, f_3_3=>f_3_3, 
      f_3_2=>f_3_2, f_3_1=>f_3_1, f_3_0=>f_3_0, f_2_15=>f_2_15, f_2_14=>
      f_2_14, f_2_13=>f_2_13, f_2_12=>f_2_12, f_2_11=>f_2_11, f_2_10=>f_2_10, 
      f_2_9=>f_2_9, f_2_8=>f_2_8, f_2_7=>f_2_7, f_2_6=>f_2_6, f_2_5=>f_2_5, 
      f_2_4=>f_2_4, f_2_3=>f_2_3, f_2_2=>f_2_2, f_2_1=>f_2_1, f_2_0=>f_2_0, 
      f_1_15=>f_1_15, f_1_14=>f_1_14, f_1_13=>f_1_13, f_1_12=>f_1_12, f_1_11
      =>f_1_11, f_1_10=>f_1_10, f_1_9=>f_1_9, f_1_8=>f_1_8, f_1_7=>f_1_7, 
      f_1_6=>f_1_6, f_1_5=>f_1_5, f_1_4=>f_1_4, f_1_3=>f_1_3, f_1_2=>f_1_2, 
      f_1_1=>f_1_1, f_1_0=>f_1_0, f_0_15=>f_0_15, f_0_14=>f_0_14, f_0_13=>
      f_0_13, f_0_12=>f_0_12, f_0_11=>f_0_11, f_0_10=>f_0_10, f_0_9=>f_0_9, 
      f_0_8=>f_0_8, f_0_7=>f_0_7, f_0_6=>f_0_6, f_0_5=>f_0_5, f_0_4=>f_0_4, 
      f_0_3=>f_0_3, f_0_2=>f_0_2, f_0_1=>f_0_1, f_0_0=>f_0_0, save=>working, 
      rst=>rst);
end Alus8x16Arch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FlibFlob is
   port (
      D : IN std_logic ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      Q : OUT std_logic ;
      Qbar : OUT std_logic) ;
end FlibFlob ;

architecture FlibFlobArch of FlibFlob is
   signal Q_EXMPLR, Qbar_EXMPLR, nx65, nx75, nx87: std_logic ;

begin
   Q <= Q_EXMPLR ;
   Qbar <= Qbar_EXMPLR ;
   reg_Qbar : dffs_ni port map ( Q=>Qbar_EXMPLR, QB=>OPEN, D=>nx75, CLK=>clk, 
      S=>rst);
   ix76 : mux21_ni port map ( Y=>nx75, A0=>Qbar_EXMPLR, A1=>nx87, S0=>en);
   ix88 : inv01 port map ( Y=>nx87, A=>D);
   reg_Q : dffr port map ( Q=>Q_EXMPLR, QB=>OPEN, D=>nx65, CLK=>clk, R=>rst
   );
   ix66 : mux21_ni port map ( Y=>nx65, A0=>Q_EXMPLR, A1=>D, S0=>en);
end FlibFlobArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Reg_4 is
   port (
      D : IN std_logic_vector (3 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      Q : OUT std_logic_vector (3 DOWNTO 0) ;
      Qbar : OUT std_logic_vector (3 DOWNTO 0)) ;
end Reg_4 ;

architecture RegArch of Reg_4 is
   signal Q_3_EXMPLR, Q_2_EXMPLR, Q_1_EXMPLR, Q_0_EXMPLR, Qbar_3_EXMPLR, 
      Qbar_2_EXMPLR, Qbar_1_EXMPLR, Qbar_0_EXMPLR, nx146, nx156, nx166, 
      nx176, nx186, nx196, nx206, nx216, nx228, nx233, nx238, nx243, nx263, 
      nx265: std_logic ;

begin
   Q(3) <= Q_3_EXMPLR ;
   Q(2) <= Q_2_EXMPLR ;
   Q(1) <= Q_1_EXMPLR ;
   Q(0) <= Q_0_EXMPLR ;
   Qbar(3) <= Qbar_3_EXMPLR ;
   Qbar(2) <= Qbar_2_EXMPLR ;
   Qbar(1) <= Qbar_1_EXMPLR ;
   Qbar(0) <= Qbar_0_EXMPLR ;
   reg_Qbar_0 : dffs_ni port map ( Q=>Qbar_0_EXMPLR, QB=>OPEN, D=>nx186, CLK
      =>nx263, S=>rst);
   ix187 : mux21_ni port map ( Y=>nx186, A0=>Qbar_0_EXMPLR, A1=>nx228, S0=>
      en);
   ix229 : inv01 port map ( Y=>nx228, A=>D(0));
   reg_Qbar_1 : dffs_ni port map ( Q=>Qbar_1_EXMPLR, QB=>OPEN, D=>nx196, CLK
      =>nx263, S=>rst);
   ix197 : mux21_ni port map ( Y=>nx196, A0=>Qbar_1_EXMPLR, A1=>nx233, S0=>
      en);
   ix234 : inv01 port map ( Y=>nx233, A=>D(1));
   reg_Qbar_2 : dffs_ni port map ( Q=>Qbar_2_EXMPLR, QB=>OPEN, D=>nx206, CLK
      =>nx263, S=>rst);
   ix207 : mux21_ni port map ( Y=>nx206, A0=>Qbar_2_EXMPLR, A1=>nx238, S0=>
      en);
   ix239 : inv01 port map ( Y=>nx238, A=>D(2));
   reg_Qbar_3 : dffs_ni port map ( Q=>Qbar_3_EXMPLR, QB=>OPEN, D=>nx216, CLK
      =>nx263, S=>rst);
   ix217 : mux21_ni port map ( Y=>nx216, A0=>Qbar_3_EXMPLR, A1=>nx243, S0=>
      en);
   ix244 : inv01 port map ( Y=>nx243, A=>D(3));
   reg_Q_0 : dffr port map ( Q=>Q_0_EXMPLR, QB=>OPEN, D=>nx146, CLK=>nx263, 
      R=>rst);
   ix147 : mux21_ni port map ( Y=>nx146, A0=>Q_0_EXMPLR, A1=>D(0), S0=>en);
   reg_Q_1 : dffr port map ( Q=>Q_1_EXMPLR, QB=>OPEN, D=>nx156, CLK=>nx263, 
      R=>rst);
   ix157 : mux21_ni port map ( Y=>nx156, A0=>Q_1_EXMPLR, A1=>D(1), S0=>en);
   reg_Q_2 : dffr port map ( Q=>Q_2_EXMPLR, QB=>OPEN, D=>nx166, CLK=>nx263, 
      R=>rst);
   ix167 : mux21_ni port map ( Y=>nx166, A0=>Q_2_EXMPLR, A1=>D(2), S0=>en);
   reg_Q_3 : dffr port map ( Q=>Q_3_EXMPLR, QB=>OPEN, D=>nx176, CLK=>nx265, 
      R=>rst);
   ix177 : mux21_ni port map ( Y=>nx176, A0=>Q_3_EXMPLR, A1=>D(3), S0=>en);
   ix262 : buf02 port map ( Y=>nx263, A=>clk);
   ix264 : buf02 port map ( Y=>nx265, A=>clk);
end RegArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FcMain is
   port (
      cnnDone : IN std_logic ;
      ioDone : IN std_logic ;
      clk : IN std_logic ;
      reset : IN std_logic ;
      dmaAddRamNeorons : OUT std_logic_vector (15 DOWNTO 0) ;
      readRamNeorons : OUT std_logic ;
      finishRamNeorons : IN std_logic ;
      dataOutRamNeorons : IN std_logic_vector (79 DOWNTO 0) ;
      dmaAddRamWeights : OUT std_logic_vector (15 DOWNTO 0) ;
      readRamWeights : OUT std_logic ;
      finishRamWeights : IN std_logic ;
      dataOutRamWeights : IN std_logic_vector (79 DOWNTO 0) ;
      fcDone : OUT std_logic ;
      MAXPrediction : OUT std_logic_vector (3 DOWNTO 0)) ;
end FcMain ;

architecture FcMainArch of FcMain is
   component RisingHolderFullCycle
      port (
         edge : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         f : INOUT std_logic) ;
   end component ;
   component CounterUpDown_16
      port (
         load : IN std_logic_vector (15 DOWNTO 0) ;
         resetValue : IN std_logic_vector (15 DOWNTO 0) ;
         clk : IN std_logic ;
         en : IN std_logic ;
         rst : IN std_logic ;
         isLoad : IN std_logic ;
         upOrDown : IN std_logic ;
         count : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   component Mux2_16
      port (
         A : IN std_logic_vector (15 DOWNTO 0) ;
         B : IN std_logic_vector (15 DOWNTO 0) ;
         S : IN std_logic ;
         C : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   component ngetMax_16_10
      port (
         inputArray_9_15 : IN std_logic ;
         inputArray_9_14 : IN std_logic ;
         inputArray_9_13 : IN std_logic ;
         inputArray_9_12 : IN std_logic ;
         inputArray_9_11 : IN std_logic ;
         inputArray_9_10 : IN std_logic ;
         inputArray_9_9 : IN std_logic ;
         inputArray_9_8 : IN std_logic ;
         inputArray_9_7 : IN std_logic ;
         inputArray_9_6 : IN std_logic ;
         inputArray_9_5 : IN std_logic ;
         inputArray_9_4 : IN std_logic ;
         inputArray_9_3 : IN std_logic ;
         inputArray_9_2 : IN std_logic ;
         inputArray_9_1 : IN std_logic ;
         inputArray_9_0 : IN std_logic ;
         inputArray_8_15 : IN std_logic ;
         inputArray_8_14 : IN std_logic ;
         inputArray_8_13 : IN std_logic ;
         inputArray_8_12 : IN std_logic ;
         inputArray_8_11 : IN std_logic ;
         inputArray_8_10 : IN std_logic ;
         inputArray_8_9 : IN std_logic ;
         inputArray_8_8 : IN std_logic ;
         inputArray_8_7 : IN std_logic ;
         inputArray_8_6 : IN std_logic ;
         inputArray_8_5 : IN std_logic ;
         inputArray_8_4 : IN std_logic ;
         inputArray_8_3 : IN std_logic ;
         inputArray_8_2 : IN std_logic ;
         inputArray_8_1 : IN std_logic ;
         inputArray_8_0 : IN std_logic ;
         inputArray_7_15 : IN std_logic ;
         inputArray_7_14 : IN std_logic ;
         inputArray_7_13 : IN std_logic ;
         inputArray_7_12 : IN std_logic ;
         inputArray_7_11 : IN std_logic ;
         inputArray_7_10 : IN std_logic ;
         inputArray_7_9 : IN std_logic ;
         inputArray_7_8 : IN std_logic ;
         inputArray_7_7 : IN std_logic ;
         inputArray_7_6 : IN std_logic ;
         inputArray_7_5 : IN std_logic ;
         inputArray_7_4 : IN std_logic ;
         inputArray_7_3 : IN std_logic ;
         inputArray_7_2 : IN std_logic ;
         inputArray_7_1 : IN std_logic ;
         inputArray_7_0 : IN std_logic ;
         inputArray_6_15 : IN std_logic ;
         inputArray_6_14 : IN std_logic ;
         inputArray_6_13 : IN std_logic ;
         inputArray_6_12 : IN std_logic ;
         inputArray_6_11 : IN std_logic ;
         inputArray_6_10 : IN std_logic ;
         inputArray_6_9 : IN std_logic ;
         inputArray_6_8 : IN std_logic ;
         inputArray_6_7 : IN std_logic ;
         inputArray_6_6 : IN std_logic ;
         inputArray_6_5 : IN std_logic ;
         inputArray_6_4 : IN std_logic ;
         inputArray_6_3 : IN std_logic ;
         inputArray_6_2 : IN std_logic ;
         inputArray_6_1 : IN std_logic ;
         inputArray_6_0 : IN std_logic ;
         inputArray_5_15 : IN std_logic ;
         inputArray_5_14 : IN std_logic ;
         inputArray_5_13 : IN std_logic ;
         inputArray_5_12 : IN std_logic ;
         inputArray_5_11 : IN std_logic ;
         inputArray_5_10 : IN std_logic ;
         inputArray_5_9 : IN std_logic ;
         inputArray_5_8 : IN std_logic ;
         inputArray_5_7 : IN std_logic ;
         inputArray_5_6 : IN std_logic ;
         inputArray_5_5 : IN std_logic ;
         inputArray_5_4 : IN std_logic ;
         inputArray_5_3 : IN std_logic ;
         inputArray_5_2 : IN std_logic ;
         inputArray_5_1 : IN std_logic ;
         inputArray_5_0 : IN std_logic ;
         inputArray_4_15 : IN std_logic ;
         inputArray_4_14 : IN std_logic ;
         inputArray_4_13 : IN std_logic ;
         inputArray_4_12 : IN std_logic ;
         inputArray_4_11 : IN std_logic ;
         inputArray_4_10 : IN std_logic ;
         inputArray_4_9 : IN std_logic ;
         inputArray_4_8 : IN std_logic ;
         inputArray_4_7 : IN std_logic ;
         inputArray_4_6 : IN std_logic ;
         inputArray_4_5 : IN std_logic ;
         inputArray_4_4 : IN std_logic ;
         inputArray_4_3 : IN std_logic ;
         inputArray_4_2 : IN std_logic ;
         inputArray_4_1 : IN std_logic ;
         inputArray_4_0 : IN std_logic ;
         inputArray_3_15 : IN std_logic ;
         inputArray_3_14 : IN std_logic ;
         inputArray_3_13 : IN std_logic ;
         inputArray_3_12 : IN std_logic ;
         inputArray_3_11 : IN std_logic ;
         inputArray_3_10 : IN std_logic ;
         inputArray_3_9 : IN std_logic ;
         inputArray_3_8 : IN std_logic ;
         inputArray_3_7 : IN std_logic ;
         inputArray_3_6 : IN std_logic ;
         inputArray_3_5 : IN std_logic ;
         inputArray_3_4 : IN std_logic ;
         inputArray_3_3 : IN std_logic ;
         inputArray_3_2 : IN std_logic ;
         inputArray_3_1 : IN std_logic ;
         inputArray_3_0 : IN std_logic ;
         inputArray_2_15 : IN std_logic ;
         inputArray_2_14 : IN std_logic ;
         inputArray_2_13 : IN std_logic ;
         inputArray_2_12 : IN std_logic ;
         inputArray_2_11 : IN std_logic ;
         inputArray_2_10 : IN std_logic ;
         inputArray_2_9 : IN std_logic ;
         inputArray_2_8 : IN std_logic ;
         inputArray_2_7 : IN std_logic ;
         inputArray_2_6 : IN std_logic ;
         inputArray_2_5 : IN std_logic ;
         inputArray_2_4 : IN std_logic ;
         inputArray_2_3 : IN std_logic ;
         inputArray_2_2 : IN std_logic ;
         inputArray_2_1 : IN std_logic ;
         inputArray_2_0 : IN std_logic ;
         inputArray_1_15 : IN std_logic ;
         inputArray_1_14 : IN std_logic ;
         inputArray_1_13 : IN std_logic ;
         inputArray_1_12 : IN std_logic ;
         inputArray_1_11 : IN std_logic ;
         inputArray_1_10 : IN std_logic ;
         inputArray_1_9 : IN std_logic ;
         inputArray_1_8 : IN std_logic ;
         inputArray_1_7 : IN std_logic ;
         inputArray_1_6 : IN std_logic ;
         inputArray_1_5 : IN std_logic ;
         inputArray_1_4 : IN std_logic ;
         inputArray_1_3 : IN std_logic ;
         inputArray_1_2 : IN std_logic ;
         inputArray_1_1 : IN std_logic ;
         inputArray_1_0 : IN std_logic ;
         inputArray_0_15 : IN std_logic ;
         inputArray_0_14 : IN std_logic ;
         inputArray_0_13 : IN std_logic ;
         inputArray_0_12 : IN std_logic ;
         inputArray_0_11 : IN std_logic ;
         inputArray_0_10 : IN std_logic ;
         inputArray_0_9 : IN std_logic ;
         inputArray_0_8 : IN std_logic ;
         inputArray_0_7 : IN std_logic ;
         inputArray_0_6 : IN std_logic ;
         inputArray_0_5 : IN std_logic ;
         inputArray_0_4 : IN std_logic ;
         inputArray_0_3 : IN std_logic ;
         inputArray_0_2 : IN std_logic ;
         inputArray_0_1 : IN std_logic ;
         inputArray_0_0 : IN std_logic ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         outLabel : OUT std_logic_vector (3 DOWNTO 0) ;
         done : OUT std_logic) ;
   end component ;
   component Alus8x16_10
      port (
         q_9_7 : IN std_logic ;
         q_9_6 : IN std_logic ;
         q_9_5 : IN std_logic ;
         q_9_4 : IN std_logic ;
         q_9_3 : IN std_logic ;
         q_9_2 : IN std_logic ;
         q_9_1 : IN std_logic ;
         q_9_0 : IN std_logic ;
         q_8_7 : IN std_logic ;
         q_8_6 : IN std_logic ;
         q_8_5 : IN std_logic ;
         q_8_4 : IN std_logic ;
         q_8_3 : IN std_logic ;
         q_8_2 : IN std_logic ;
         q_8_1 : IN std_logic ;
         q_8_0 : IN std_logic ;
         q_7_7 : IN std_logic ;
         q_7_6 : IN std_logic ;
         q_7_5 : IN std_logic ;
         q_7_4 : IN std_logic ;
         q_7_3 : IN std_logic ;
         q_7_2 : IN std_logic ;
         q_7_1 : IN std_logic ;
         q_7_0 : IN std_logic ;
         q_6_7 : IN std_logic ;
         q_6_6 : IN std_logic ;
         q_6_5 : IN std_logic ;
         q_6_4 : IN std_logic ;
         q_6_3 : IN std_logic ;
         q_6_2 : IN std_logic ;
         q_6_1 : IN std_logic ;
         q_6_0 : IN std_logic ;
         q_5_7 : IN std_logic ;
         q_5_6 : IN std_logic ;
         q_5_5 : IN std_logic ;
         q_5_4 : IN std_logic ;
         q_5_3 : IN std_logic ;
         q_5_2 : IN std_logic ;
         q_5_1 : IN std_logic ;
         q_5_0 : IN std_logic ;
         q_4_7 : IN std_logic ;
         q_4_6 : IN std_logic ;
         q_4_5 : IN std_logic ;
         q_4_4 : IN std_logic ;
         q_4_3 : IN std_logic ;
         q_4_2 : IN std_logic ;
         q_4_1 : IN std_logic ;
         q_4_0 : IN std_logic ;
         q_3_7 : IN std_logic ;
         q_3_6 : IN std_logic ;
         q_3_5 : IN std_logic ;
         q_3_4 : IN std_logic ;
         q_3_3 : IN std_logic ;
         q_3_2 : IN std_logic ;
         q_3_1 : IN std_logic ;
         q_3_0 : IN std_logic ;
         q_2_7 : IN std_logic ;
         q_2_6 : IN std_logic ;
         q_2_5 : IN std_logic ;
         q_2_4 : IN std_logic ;
         q_2_3 : IN std_logic ;
         q_2_2 : IN std_logic ;
         q_2_1 : IN std_logic ;
         q_2_0 : IN std_logic ;
         q_1_7 : IN std_logic ;
         q_1_6 : IN std_logic ;
         q_1_5 : IN std_logic ;
         q_1_4 : IN std_logic ;
         q_1_3 : IN std_logic ;
         q_1_2 : IN std_logic ;
         q_1_1 : IN std_logic ;
         q_1_0 : IN std_logic ;
         q_0_7 : IN std_logic ;
         q_0_6 : IN std_logic ;
         q_0_5 : IN std_logic ;
         q_0_4 : IN std_logic ;
         q_0_3 : IN std_logic ;
         q_0_2 : IN std_logic ;
         q_0_1 : IN std_logic ;
         q_0_0 : IN std_logic ;
         m_9_15 : IN std_logic ;
         m_9_14 : IN std_logic ;
         m_9_13 : IN std_logic ;
         m_9_12 : IN std_logic ;
         m_9_11 : IN std_logic ;
         m_9_10 : IN std_logic ;
         m_9_9 : IN std_logic ;
         m_9_8 : IN std_logic ;
         m_9_7 : IN std_logic ;
         m_9_6 : IN std_logic ;
         m_9_5 : IN std_logic ;
         m_9_4 : IN std_logic ;
         m_9_3 : IN std_logic ;
         m_9_2 : IN std_logic ;
         m_9_1 : IN std_logic ;
         m_9_0 : IN std_logic ;
         m_8_15 : IN std_logic ;
         m_8_14 : IN std_logic ;
         m_8_13 : IN std_logic ;
         m_8_12 : IN std_logic ;
         m_8_11 : IN std_logic ;
         m_8_10 : IN std_logic ;
         m_8_9 : IN std_logic ;
         m_8_8 : IN std_logic ;
         m_8_7 : IN std_logic ;
         m_8_6 : IN std_logic ;
         m_8_5 : IN std_logic ;
         m_8_4 : IN std_logic ;
         m_8_3 : IN std_logic ;
         m_8_2 : IN std_logic ;
         m_8_1 : IN std_logic ;
         m_8_0 : IN std_logic ;
         m_7_15 : IN std_logic ;
         m_7_14 : IN std_logic ;
         m_7_13 : IN std_logic ;
         m_7_12 : IN std_logic ;
         m_7_11 : IN std_logic ;
         m_7_10 : IN std_logic ;
         m_7_9 : IN std_logic ;
         m_7_8 : IN std_logic ;
         m_7_7 : IN std_logic ;
         m_7_6 : IN std_logic ;
         m_7_5 : IN std_logic ;
         m_7_4 : IN std_logic ;
         m_7_3 : IN std_logic ;
         m_7_2 : IN std_logic ;
         m_7_1 : IN std_logic ;
         m_7_0 : IN std_logic ;
         m_6_15 : IN std_logic ;
         m_6_14 : IN std_logic ;
         m_6_13 : IN std_logic ;
         m_6_12 : IN std_logic ;
         m_6_11 : IN std_logic ;
         m_6_10 : IN std_logic ;
         m_6_9 : IN std_logic ;
         m_6_8 : IN std_logic ;
         m_6_7 : IN std_logic ;
         m_6_6 : IN std_logic ;
         m_6_5 : IN std_logic ;
         m_6_4 : IN std_logic ;
         m_6_3 : IN std_logic ;
         m_6_2 : IN std_logic ;
         m_6_1 : IN std_logic ;
         m_6_0 : IN std_logic ;
         m_5_15 : IN std_logic ;
         m_5_14 : IN std_logic ;
         m_5_13 : IN std_logic ;
         m_5_12 : IN std_logic ;
         m_5_11 : IN std_logic ;
         m_5_10 : IN std_logic ;
         m_5_9 : IN std_logic ;
         m_5_8 : IN std_logic ;
         m_5_7 : IN std_logic ;
         m_5_6 : IN std_logic ;
         m_5_5 : IN std_logic ;
         m_5_4 : IN std_logic ;
         m_5_3 : IN std_logic ;
         m_5_2 : IN std_logic ;
         m_5_1 : IN std_logic ;
         m_5_0 : IN std_logic ;
         m_4_15 : IN std_logic ;
         m_4_14 : IN std_logic ;
         m_4_13 : IN std_logic ;
         m_4_12 : IN std_logic ;
         m_4_11 : IN std_logic ;
         m_4_10 : IN std_logic ;
         m_4_9 : IN std_logic ;
         m_4_8 : IN std_logic ;
         m_4_7 : IN std_logic ;
         m_4_6 : IN std_logic ;
         m_4_5 : IN std_logic ;
         m_4_4 : IN std_logic ;
         m_4_3 : IN std_logic ;
         m_4_2 : IN std_logic ;
         m_4_1 : IN std_logic ;
         m_4_0 : IN std_logic ;
         m_3_15 : IN std_logic ;
         m_3_14 : IN std_logic ;
         m_3_13 : IN std_logic ;
         m_3_12 : IN std_logic ;
         m_3_11 : IN std_logic ;
         m_3_10 : IN std_logic ;
         m_3_9 : IN std_logic ;
         m_3_8 : IN std_logic ;
         m_3_7 : IN std_logic ;
         m_3_6 : IN std_logic ;
         m_3_5 : IN std_logic ;
         m_3_4 : IN std_logic ;
         m_3_3 : IN std_logic ;
         m_3_2 : IN std_logic ;
         m_3_1 : IN std_logic ;
         m_3_0 : IN std_logic ;
         m_2_15 : IN std_logic ;
         m_2_14 : IN std_logic ;
         m_2_13 : IN std_logic ;
         m_2_12 : IN std_logic ;
         m_2_11 : IN std_logic ;
         m_2_10 : IN std_logic ;
         m_2_9 : IN std_logic ;
         m_2_8 : IN std_logic ;
         m_2_7 : IN std_logic ;
         m_2_6 : IN std_logic ;
         m_2_5 : IN std_logic ;
         m_2_4 : IN std_logic ;
         m_2_3 : IN std_logic ;
         m_2_2 : IN std_logic ;
         m_2_1 : IN std_logic ;
         m_2_0 : IN std_logic ;
         m_1_15 : IN std_logic ;
         m_1_14 : IN std_logic ;
         m_1_13 : IN std_logic ;
         m_1_12 : IN std_logic ;
         m_1_11 : IN std_logic ;
         m_1_10 : IN std_logic ;
         m_1_9 : IN std_logic ;
         m_1_8 : IN std_logic ;
         m_1_7 : IN std_logic ;
         m_1_6 : IN std_logic ;
         m_1_5 : IN std_logic ;
         m_1_4 : IN std_logic ;
         m_1_3 : IN std_logic ;
         m_1_2 : IN std_logic ;
         m_1_1 : IN std_logic ;
         m_1_0 : IN std_logic ;
         m_0_15 : IN std_logic ;
         m_0_14 : IN std_logic ;
         m_0_13 : IN std_logic ;
         m_0_12 : IN std_logic ;
         m_0_11 : IN std_logic ;
         m_0_10 : IN std_logic ;
         m_0_9 : IN std_logic ;
         m_0_8 : IN std_logic ;
         m_0_7 : IN std_logic ;
         m_0_6 : IN std_logic ;
         m_0_5 : IN std_logic ;
         m_0_4 : IN std_logic ;
         m_0_3 : IN std_logic ;
         m_0_2 : IN std_logic ;
         m_0_1 : IN std_logic ;
         m_0_0 : IN std_logic ;
         f_9_15 : INOUT std_logic ;
         f_9_14 : INOUT std_logic ;
         f_9_13 : INOUT std_logic ;
         f_9_12 : INOUT std_logic ;
         f_9_11 : INOUT std_logic ;
         f_9_10 : INOUT std_logic ;
         f_9_9 : INOUT std_logic ;
         f_9_8 : INOUT std_logic ;
         f_9_7 : INOUT std_logic ;
         f_9_6 : INOUT std_logic ;
         f_9_5 : INOUT std_logic ;
         f_9_4 : INOUT std_logic ;
         f_9_3 : INOUT std_logic ;
         f_9_2 : INOUT std_logic ;
         f_9_1 : INOUT std_logic ;
         f_9_0 : INOUT std_logic ;
         f_8_15 : INOUT std_logic ;
         f_8_14 : INOUT std_logic ;
         f_8_13 : INOUT std_logic ;
         f_8_12 : INOUT std_logic ;
         f_8_11 : INOUT std_logic ;
         f_8_10 : INOUT std_logic ;
         f_8_9 : INOUT std_logic ;
         f_8_8 : INOUT std_logic ;
         f_8_7 : INOUT std_logic ;
         f_8_6 : INOUT std_logic ;
         f_8_5 : INOUT std_logic ;
         f_8_4 : INOUT std_logic ;
         f_8_3 : INOUT std_logic ;
         f_8_2 : INOUT std_logic ;
         f_8_1 : INOUT std_logic ;
         f_8_0 : INOUT std_logic ;
         f_7_15 : INOUT std_logic ;
         f_7_14 : INOUT std_logic ;
         f_7_13 : INOUT std_logic ;
         f_7_12 : INOUT std_logic ;
         f_7_11 : INOUT std_logic ;
         f_7_10 : INOUT std_logic ;
         f_7_9 : INOUT std_logic ;
         f_7_8 : INOUT std_logic ;
         f_7_7 : INOUT std_logic ;
         f_7_6 : INOUT std_logic ;
         f_7_5 : INOUT std_logic ;
         f_7_4 : INOUT std_logic ;
         f_7_3 : INOUT std_logic ;
         f_7_2 : INOUT std_logic ;
         f_7_1 : INOUT std_logic ;
         f_7_0 : INOUT std_logic ;
         f_6_15 : INOUT std_logic ;
         f_6_14 : INOUT std_logic ;
         f_6_13 : INOUT std_logic ;
         f_6_12 : INOUT std_logic ;
         f_6_11 : INOUT std_logic ;
         f_6_10 : INOUT std_logic ;
         f_6_9 : INOUT std_logic ;
         f_6_8 : INOUT std_logic ;
         f_6_7 : INOUT std_logic ;
         f_6_6 : INOUT std_logic ;
         f_6_5 : INOUT std_logic ;
         f_6_4 : INOUT std_logic ;
         f_6_3 : INOUT std_logic ;
         f_6_2 : INOUT std_logic ;
         f_6_1 : INOUT std_logic ;
         f_6_0 : INOUT std_logic ;
         f_5_15 : INOUT std_logic ;
         f_5_14 : INOUT std_logic ;
         f_5_13 : INOUT std_logic ;
         f_5_12 : INOUT std_logic ;
         f_5_11 : INOUT std_logic ;
         f_5_10 : INOUT std_logic ;
         f_5_9 : INOUT std_logic ;
         f_5_8 : INOUT std_logic ;
         f_5_7 : INOUT std_logic ;
         f_5_6 : INOUT std_logic ;
         f_5_5 : INOUT std_logic ;
         f_5_4 : INOUT std_logic ;
         f_5_3 : INOUT std_logic ;
         f_5_2 : INOUT std_logic ;
         f_5_1 : INOUT std_logic ;
         f_5_0 : INOUT std_logic ;
         f_4_15 : INOUT std_logic ;
         f_4_14 : INOUT std_logic ;
         f_4_13 : INOUT std_logic ;
         f_4_12 : INOUT std_logic ;
         f_4_11 : INOUT std_logic ;
         f_4_10 : INOUT std_logic ;
         f_4_9 : INOUT std_logic ;
         f_4_8 : INOUT std_logic ;
         f_4_7 : INOUT std_logic ;
         f_4_6 : INOUT std_logic ;
         f_4_5 : INOUT std_logic ;
         f_4_4 : INOUT std_logic ;
         f_4_3 : INOUT std_logic ;
         f_4_2 : INOUT std_logic ;
         f_4_1 : INOUT std_logic ;
         f_4_0 : INOUT std_logic ;
         f_3_15 : INOUT std_logic ;
         f_3_14 : INOUT std_logic ;
         f_3_13 : INOUT std_logic ;
         f_3_12 : INOUT std_logic ;
         f_3_11 : INOUT std_logic ;
         f_3_10 : INOUT std_logic ;
         f_3_9 : INOUT std_logic ;
         f_3_8 : INOUT std_logic ;
         f_3_7 : INOUT std_logic ;
         f_3_6 : INOUT std_logic ;
         f_3_5 : INOUT std_logic ;
         f_3_4 : INOUT std_logic ;
         f_3_3 : INOUT std_logic ;
         f_3_2 : INOUT std_logic ;
         f_3_1 : INOUT std_logic ;
         f_3_0 : INOUT std_logic ;
         f_2_15 : INOUT std_logic ;
         f_2_14 : INOUT std_logic ;
         f_2_13 : INOUT std_logic ;
         f_2_12 : INOUT std_logic ;
         f_2_11 : INOUT std_logic ;
         f_2_10 : INOUT std_logic ;
         f_2_9 : INOUT std_logic ;
         f_2_8 : INOUT std_logic ;
         f_2_7 : INOUT std_logic ;
         f_2_6 : INOUT std_logic ;
         f_2_5 : INOUT std_logic ;
         f_2_4 : INOUT std_logic ;
         f_2_3 : INOUT std_logic ;
         f_2_2 : INOUT std_logic ;
         f_2_1 : INOUT std_logic ;
         f_2_0 : INOUT std_logic ;
         f_1_15 : INOUT std_logic ;
         f_1_14 : INOUT std_logic ;
         f_1_13 : INOUT std_logic ;
         f_1_12 : INOUT std_logic ;
         f_1_11 : INOUT std_logic ;
         f_1_10 : INOUT std_logic ;
         f_1_9 : INOUT std_logic ;
         f_1_8 : INOUT std_logic ;
         f_1_7 : INOUT std_logic ;
         f_1_6 : INOUT std_logic ;
         f_1_5 : INOUT std_logic ;
         f_1_4 : INOUT std_logic ;
         f_1_3 : INOUT std_logic ;
         f_1_2 : INOUT std_logic ;
         f_1_1 : INOUT std_logic ;
         f_1_0 : INOUT std_logic ;
         f_0_15 : INOUT std_logic ;
         f_0_14 : INOUT std_logic ;
         f_0_13 : INOUT std_logic ;
         f_0_12 : INOUT std_logic ;
         f_0_11 : INOUT std_logic ;
         f_0_10 : INOUT std_logic ;
         f_0_9 : INOUT std_logic ;
         f_0_8 : INOUT std_logic ;
         f_0_7 : INOUT std_logic ;
         f_0_6 : INOUT std_logic ;
         f_0_5 : INOUT std_logic ;
         f_0_4 : INOUT std_logic ;
         f_0_3 : INOUT std_logic ;
         f_0_2 : INOUT std_logic ;
         f_0_1 : INOUT std_logic ;
         f_0_0 : INOUT std_logic ;
         clk : IN std_logic ;
         start : IN std_logic ;
         rst : IN std_logic ;
         done : INOUT std_logic ;
         working : INOUT std_logic) ;
   end component ;
   component FlibFlob
      port (
         D : IN std_logic ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic ;
         Qbar : OUT std_logic) ;
   end component ;
   component Reg_4
      port (
         D : IN std_logic_vector (3 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (3 DOWNTO 0) ;
         Qbar : OUT std_logic_vector (3 DOWNTO 0)) ;
   end component ;
   signal state_10, fcDone_EXMPLR, state_6, readRamNeorons_EXMPLR, 
      neoronMuxOutput_15, neoronMuxOutput_14, neoronMuxOutput_13, 
      neoronMuxOutput_12, neoronMuxOutput_11, neoronMuxOutput_10, 
      neoronMuxOutput_9, neoronMuxOutput_8, neoronMuxOutput_7, 
      neoronMuxOutput_6, neoronMuxOutput_5, neoronMuxOutput_4, 
      neoronMuxOutput_3, neoronMuxOutput_2, neoronMuxOutput_1, 
      neoronMuxOutput_0, numberOFNeorons_15, numberOFNeorons_14, 
      numberOFNeorons_13, numberOFNeorons_12, numberOFNeorons_11, 
      numberOFNeorons_10, numberOFNeorons_9, numberOFNeorons_8, 
      numberOFNeorons_7, numberOFNeorons_6, numberOFNeorons_5, 
      numberOFNeorons_4, numberOFNeorons_3, numberOFNeorons_2, 
      numberOFNeorons_1, numberOFNeorons_0, doneMax, labelReg_9_15, 
      labelReg_9_14, labelReg_9_13, labelReg_9_12, labelReg_9_11, 
      labelReg_9_10, labelReg_9_9, labelReg_9_8, labelReg_9_7, labelReg_9_6, 
      labelReg_9_5, labelReg_9_4, labelReg_9_3, labelReg_9_2, labelReg_9_1, 
      labelReg_9_0, labelReg_8_15, labelReg_8_14, labelReg_8_13, 
      labelReg_8_12, labelReg_8_11, labelReg_8_10, labelReg_8_9, 
      labelReg_8_8, labelReg_8_7, labelReg_8_6, labelReg_8_5, labelReg_8_4, 
      labelReg_8_3, labelReg_8_2, labelReg_8_1, labelReg_8_0, labelReg_7_15, 
      labelReg_7_14, labelReg_7_13, labelReg_7_12, labelReg_7_11, 
      labelReg_7_10, labelReg_7_9, labelReg_7_8, labelReg_7_7, labelReg_7_6, 
      labelReg_7_5, labelReg_7_4, labelReg_7_3, labelReg_7_2, labelReg_7_1, 
      labelReg_7_0, labelReg_6_15, labelReg_6_14, labelReg_6_13, 
      labelReg_6_12, labelReg_6_11, labelReg_6_10, labelReg_6_9, 
      labelReg_6_8, labelReg_6_7, labelReg_6_6, labelReg_6_5, labelReg_6_4, 
      labelReg_6_3, labelReg_6_2, labelReg_6_1, labelReg_6_0, labelReg_5_15, 
      labelReg_5_14, labelReg_5_13, labelReg_5_12, labelReg_5_11, 
      labelReg_5_10, labelReg_5_9, labelReg_5_8, labelReg_5_7, labelReg_5_6, 
      labelReg_5_5, labelReg_5_4, labelReg_5_3, labelReg_5_2, labelReg_5_1, 
      labelReg_5_0, labelReg_4_15, labelReg_4_14, labelReg_4_13, 
      labelReg_4_12, labelReg_4_11, labelReg_4_10, labelReg_4_9, 
      labelReg_4_8, labelReg_4_7, labelReg_4_6, labelReg_4_5, labelReg_4_4, 
      labelReg_4_3, labelReg_4_2, labelReg_4_1, labelReg_4_0, labelReg_3_15, 
      labelReg_3_14, labelReg_3_13, labelReg_3_12, labelReg_3_11, 
      labelReg_3_10, labelReg_3_9, labelReg_3_8, labelReg_3_7, labelReg_3_6, 
      labelReg_3_5, labelReg_3_4, labelReg_3_3, labelReg_3_2, labelReg_3_1, 
      labelReg_3_0, labelReg_2_15, labelReg_2_14, labelReg_2_13, 
      labelReg_2_12, labelReg_2_11, labelReg_2_10, labelReg_2_9, 
      labelReg_2_8, labelReg_2_7, labelReg_2_6, labelReg_2_5, labelReg_2_4, 
      labelReg_2_3, labelReg_2_2, labelReg_2_1, labelReg_2_0, labelReg_1_15, 
      labelReg_1_14, labelReg_1_13, labelReg_1_12, labelReg_1_11, 
      labelReg_1_10, labelReg_1_9, labelReg_1_8, labelReg_1_7, labelReg_1_6, 
      labelReg_1_5, labelReg_1_4, labelReg_1_3, labelReg_1_2, labelReg_1_1, 
      labelReg_1_0, labelReg_0_15, labelReg_0_14, labelReg_0_13, 
      labelReg_0_12, labelReg_0_11, labelReg_0_10, labelReg_0_9, 
      labelReg_0_8, labelReg_0_7, labelReg_0_6, labelReg_0_5, labelReg_0_4, 
      labelReg_0_3, labelReg_0_2, labelReg_0_1, labelReg_0_0, maxNumber_3, 
      maxNumber_2, maxNumber_1, maxNumber_0, multiplyWorkDelayed, 
      multiplyWorkIn, clkInverted, bufferTwoInput, cnnDoneOneCycle, 
      beginSignal, incrementWeightAdd, incrementNeoronsAdd, 
      neoronValueSelection, decrement, loadNumberOFNeorons, oneNeoron_8, 
      oneNeoron_15, state_4, state_9, nx0, state_3, nx1087, state_2, state_1, 
      nx12, state_0, nx20, nx34, nx44, nx54, state_8, nx98, nx106, nx120, 
      nx152, nx158, nx160, nx166, nx176, nx1093, nx1095, nx1104, nx1111, 
      nx1113, nx1115, nx1117, nx1119, nx1121, nx1123, nx1131, nx1133, nx1144, 
      nx1149, nx1155, nx1169, nx1171, nx1173, nx1175, nx1177, nx1179, nx1181, 
      nx1183, nx1185, nx1187, nx1189, nx1191, nx1193, nx1195, nx1197, nx1199, 
      nx1201, nx1203, nx1205, nx1207, nx1209, nx1211, nx1213, nx1215, nx1217, 
      nx1219, nx1221, nx1223, nx1225, nx1227, nx1229, nx1231, nx1233, nx1235, 
      nx1237, nx1239, nx1241, nx1243, nx1245, nx1247, nx1249, nx1251, nx1253, 
      nx1255, nx1257, nx1259, nx1261, nx1263, nx1265, nx1267, nx1269, nx1271, 
      nx1273, nx1275, nx1277, nx1279, nx1281, nx1283, nx1285, nx1287, nx1289, 
      nx1291, nx1293, nx1295, nx1297, nx1299, nx1301, nx1303, nx1305, nx1307, 
      nx1309, nx1311, nx1313, nx1315, nx1317, nx1319, nx1321, nx1323, nx1325, 
      nx1327, nx1329, nx1331, nx1337: std_logic ;
   
   signal DANGLING : std_logic_vector (6 downto 0 );

begin
   readRamNeorons <= readRamNeorons_EXMPLR ;
   fcDone <= fcDone_EXMPLR ;
   CNNDONEHOLDER : RisingHolderFullCycle port map ( edge=>beginSignal, clk=>
      clk, rst=>reset, f=>cnnDoneOneCycle);
   NEORONSLASTSTAGES : CounterUpDown_16 port map ( load(15)=>
      dataOutRamWeights(79), load(14)=>dataOutRamWeights(78), load(13)=>
      dataOutRamWeights(77), load(12)=>dataOutRamWeights(76), load(11)=>
      dataOutRamWeights(75), load(10)=>dataOutRamWeights(74), load(9)=>
      dataOutRamWeights(73), load(8)=>dataOutRamWeights(72), load(7)=>
      dataOutRamWeights(71), load(6)=>dataOutRamWeights(70), load(5)=>
      dataOutRamWeights(69), load(4)=>dataOutRamWeights(68), load(3)=>
      dataOutRamWeights(67), load(2)=>dataOutRamWeights(66), load(1)=>
      dataOutRamWeights(65), load(0)=>dataOutRamWeights(64), resetValue(15)
      =>oneNeoron_15, resetValue(14)=>oneNeoron_15, resetValue(13)=>
      oneNeoron_15, resetValue(12)=>oneNeoron_15, resetValue(11)=>
      oneNeoron_15, resetValue(10)=>oneNeoron_15, resetValue(9)=>
      oneNeoron_15, resetValue(8)=>oneNeoron_15, resetValue(7)=>oneNeoron_15, 
      resetValue(6)=>oneNeoron_15, resetValue(5)=>oneNeoron_15, 
      resetValue(4)=>oneNeoron_15, resetValue(3)=>oneNeoron_15, 
      resetValue(2)=>oneNeoron_15, resetValue(1)=>oneNeoron_15, 
      resetValue(0)=>oneNeoron_15, clk=>clk, en=>decrement, rst=>reset, 
      isLoad=>nx1337, upOrDown=>oneNeoron_8, count(15)=>numberOFNeorons_15, 
      count(14)=>numberOFNeorons_14, count(13)=>numberOFNeorons_13, 
      count(12)=>numberOFNeorons_12, count(11)=>numberOFNeorons_11, 
      count(10)=>numberOFNeorons_10, count(9)=>numberOFNeorons_9, count(8)=>
      numberOFNeorons_8, count(7)=>numberOFNeorons_7, count(6)=>
      numberOFNeorons_6, count(5)=>numberOFNeorons_5, count(4)=>
      numberOFNeorons_4, count(3)=>numberOFNeorons_3, count(2)=>
      numberOFNeorons_2, count(1)=>numberOFNeorons_1, count(0)=>
      numberOFNeorons_0);
   NEORONREGMux : Mux2_16 port map ( A(15)=>dataOutRamNeorons(79), A(14)=>
      dataOutRamNeorons(78), A(13)=>dataOutRamNeorons(77), A(12)=>
      dataOutRamNeorons(76), A(11)=>dataOutRamNeorons(75), A(10)=>
      dataOutRamNeorons(74), A(9)=>dataOutRamNeorons(73), A(8)=>
      dataOutRamNeorons(72), A(7)=>dataOutRamNeorons(71), A(6)=>
      dataOutRamNeorons(70), A(5)=>dataOutRamNeorons(69), A(4)=>
      dataOutRamNeorons(68), A(3)=>dataOutRamNeorons(67), A(2)=>
      dataOutRamNeorons(66), A(1)=>dataOutRamNeorons(65), A(0)=>
      dataOutRamNeorons(64), B(15)=>oneNeoron_15, B(14)=>oneNeoron_15, B(13)
      =>oneNeoron_15, B(12)=>oneNeoron_15, B(11)=>oneNeoron_15, B(10)=>
      oneNeoron_15, B(9)=>oneNeoron_15, B(8)=>oneNeoron_8, B(7)=>
      oneNeoron_15, B(6)=>oneNeoron_15, B(5)=>oneNeoron_15, B(4)=>
      oneNeoron_15, B(3)=>oneNeoron_15, B(2)=>oneNeoron_15, B(1)=>
      oneNeoron_15, B(0)=>oneNeoron_15, S=>neoronValueSelection, C(15)=>
      neoronMuxOutput_15, C(14)=>neoronMuxOutput_14, C(13)=>
      neoronMuxOutput_13, C(12)=>neoronMuxOutput_12, C(11)=>
      neoronMuxOutput_11, C(10)=>neoronMuxOutput_10, C(9)=>neoronMuxOutput_9, 
      C(8)=>neoronMuxOutput_8, C(7)=>neoronMuxOutput_7, C(6)=>
      neoronMuxOutput_6, C(5)=>neoronMuxOutput_5, C(4)=>neoronMuxOutput_4, 
      C(3)=>neoronMuxOutput_3, C(2)=>neoronMuxOutput_2, C(1)=>
      neoronMuxOutput_1, C(0)=>neoronMuxOutput_0);
   MAXIMIZATIONMAP : ngetMax_16_10 port map ( inputArray_9_15=>labelReg_9_15, 
      inputArray_9_14=>labelReg_9_14, inputArray_9_13=>labelReg_9_13, 
      inputArray_9_12=>labelReg_9_12, inputArray_9_11=>labelReg_9_11, 
      inputArray_9_10=>labelReg_9_10, inputArray_9_9=>labelReg_9_9, 
      inputArray_9_8=>labelReg_9_8, inputArray_9_7=>labelReg_9_7, 
      inputArray_9_6=>labelReg_9_6, inputArray_9_5=>labelReg_9_5, 
      inputArray_9_4=>labelReg_9_4, inputArray_9_3=>labelReg_9_3, 
      inputArray_9_2=>labelReg_9_2, inputArray_9_1=>labelReg_9_1, 
      inputArray_9_0=>labelReg_9_0, inputArray_8_15=>labelReg_8_15, 
      inputArray_8_14=>labelReg_8_14, inputArray_8_13=>labelReg_8_13, 
      inputArray_8_12=>labelReg_8_12, inputArray_8_11=>labelReg_8_11, 
      inputArray_8_10=>labelReg_8_10, inputArray_8_9=>labelReg_8_9, 
      inputArray_8_8=>labelReg_8_8, inputArray_8_7=>labelReg_8_7, 
      inputArray_8_6=>labelReg_8_6, inputArray_8_5=>labelReg_8_5, 
      inputArray_8_4=>labelReg_8_4, inputArray_8_3=>labelReg_8_3, 
      inputArray_8_2=>labelReg_8_2, inputArray_8_1=>labelReg_8_1, 
      inputArray_8_0=>labelReg_8_0, inputArray_7_15=>labelReg_7_15, 
      inputArray_7_14=>labelReg_7_14, inputArray_7_13=>labelReg_7_13, 
      inputArray_7_12=>labelReg_7_12, inputArray_7_11=>labelReg_7_11, 
      inputArray_7_10=>labelReg_7_10, inputArray_7_9=>labelReg_7_9, 
      inputArray_7_8=>labelReg_7_8, inputArray_7_7=>labelReg_7_7, 
      inputArray_7_6=>labelReg_7_6, inputArray_7_5=>labelReg_7_5, 
      inputArray_7_4=>labelReg_7_4, inputArray_7_3=>labelReg_7_3, 
      inputArray_7_2=>labelReg_7_2, inputArray_7_1=>labelReg_7_1, 
      inputArray_7_0=>labelReg_7_0, inputArray_6_15=>labelReg_6_15, 
      inputArray_6_14=>labelReg_6_14, inputArray_6_13=>labelReg_6_13, 
      inputArray_6_12=>labelReg_6_12, inputArray_6_11=>labelReg_6_11, 
      inputArray_6_10=>labelReg_6_10, inputArray_6_9=>labelReg_6_9, 
      inputArray_6_8=>labelReg_6_8, inputArray_6_7=>labelReg_6_7, 
      inputArray_6_6=>labelReg_6_6, inputArray_6_5=>labelReg_6_5, 
      inputArray_6_4=>labelReg_6_4, inputArray_6_3=>labelReg_6_3, 
      inputArray_6_2=>labelReg_6_2, inputArray_6_1=>labelReg_6_1, 
      inputArray_6_0=>labelReg_6_0, inputArray_5_15=>labelReg_5_15, 
      inputArray_5_14=>labelReg_5_14, inputArray_5_13=>labelReg_5_13, 
      inputArray_5_12=>labelReg_5_12, inputArray_5_11=>labelReg_5_11, 
      inputArray_5_10=>labelReg_5_10, inputArray_5_9=>labelReg_5_9, 
      inputArray_5_8=>labelReg_5_8, inputArray_5_7=>labelReg_5_7, 
      inputArray_5_6=>labelReg_5_6, inputArray_5_5=>labelReg_5_5, 
      inputArray_5_4=>labelReg_5_4, inputArray_5_3=>labelReg_5_3, 
      inputArray_5_2=>labelReg_5_2, inputArray_5_1=>labelReg_5_1, 
      inputArray_5_0=>labelReg_5_0, inputArray_4_15=>labelReg_4_15, 
      inputArray_4_14=>labelReg_4_14, inputArray_4_13=>labelReg_4_13, 
      inputArray_4_12=>labelReg_4_12, inputArray_4_11=>labelReg_4_11, 
      inputArray_4_10=>labelReg_4_10, inputArray_4_9=>labelReg_4_9, 
      inputArray_4_8=>labelReg_4_8, inputArray_4_7=>labelReg_4_7, 
      inputArray_4_6=>labelReg_4_6, inputArray_4_5=>labelReg_4_5, 
      inputArray_4_4=>labelReg_4_4, inputArray_4_3=>labelReg_4_3, 
      inputArray_4_2=>labelReg_4_2, inputArray_4_1=>labelReg_4_1, 
      inputArray_4_0=>labelReg_4_0, inputArray_3_15=>labelReg_3_15, 
      inputArray_3_14=>labelReg_3_14, inputArray_3_13=>labelReg_3_13, 
      inputArray_3_12=>labelReg_3_12, inputArray_3_11=>labelReg_3_11, 
      inputArray_3_10=>labelReg_3_10, inputArray_3_9=>labelReg_3_9, 
      inputArray_3_8=>labelReg_3_8, inputArray_3_7=>labelReg_3_7, 
      inputArray_3_6=>labelReg_3_6, inputArray_3_5=>labelReg_3_5, 
      inputArray_3_4=>labelReg_3_4, inputArray_3_3=>labelReg_3_3, 
      inputArray_3_2=>labelReg_3_2, inputArray_3_1=>labelReg_3_1, 
      inputArray_3_0=>labelReg_3_0, inputArray_2_15=>labelReg_2_15, 
      inputArray_2_14=>labelReg_2_14, inputArray_2_13=>labelReg_2_13, 
      inputArray_2_12=>labelReg_2_12, inputArray_2_11=>labelReg_2_11, 
      inputArray_2_10=>labelReg_2_10, inputArray_2_9=>labelReg_2_9, 
      inputArray_2_8=>labelReg_2_8, inputArray_2_7=>labelReg_2_7, 
      inputArray_2_6=>labelReg_2_6, inputArray_2_5=>labelReg_2_5, 
      inputArray_2_4=>labelReg_2_4, inputArray_2_3=>labelReg_2_3, 
      inputArray_2_2=>labelReg_2_2, inputArray_2_1=>labelReg_2_1, 
      inputArray_2_0=>labelReg_2_0, inputArray_1_15=>labelReg_1_15, 
      inputArray_1_14=>labelReg_1_14, inputArray_1_13=>labelReg_1_13, 
      inputArray_1_12=>labelReg_1_12, inputArray_1_11=>labelReg_1_11, 
      inputArray_1_10=>labelReg_1_10, inputArray_1_9=>labelReg_1_9, 
      inputArray_1_8=>labelReg_1_8, inputArray_1_7=>labelReg_1_7, 
      inputArray_1_6=>labelReg_1_6, inputArray_1_5=>labelReg_1_5, 
      inputArray_1_4=>labelReg_1_4, inputArray_1_3=>labelReg_1_3, 
      inputArray_1_2=>labelReg_1_2, inputArray_1_1=>labelReg_1_1, 
      inputArray_1_0=>labelReg_1_0, inputArray_0_15=>labelReg_0_15, 
      inputArray_0_14=>labelReg_0_14, inputArray_0_13=>labelReg_0_13, 
      inputArray_0_12=>labelReg_0_12, inputArray_0_11=>labelReg_0_11, 
      inputArray_0_10=>labelReg_0_10, inputArray_0_9=>labelReg_0_9, 
      inputArray_0_8=>labelReg_0_8, inputArray_0_7=>labelReg_0_7, 
      inputArray_0_6=>labelReg_0_6, inputArray_0_5=>labelReg_0_5, 
      inputArray_0_4=>labelReg_0_4, inputArray_0_3=>labelReg_0_3, 
      inputArray_0_2=>labelReg_0_2, inputArray_0_1=>labelReg_0_1, 
      inputArray_0_0=>labelReg_0_0, en=>state_6, clk=>clk, rst=>state_10, 
      outLabel(3)=>maxNumber_3, outLabel(2)=>maxNumber_2, outLabel(1)=>
      maxNumber_1, outLabel(0)=>maxNumber_0, done=>doneMax);
   ALUMAP : Alus8x16_10 port map ( q_9_7=>dataOutRamWeights(79), q_9_6=>
      dataOutRamWeights(78), q_9_5=>dataOutRamWeights(77), q_9_4=>
      dataOutRamWeights(76), q_9_3=>dataOutRamWeights(75), q_9_2=>
      dataOutRamWeights(74), q_9_1=>dataOutRamWeights(73), q_9_0=>
      dataOutRamWeights(72), q_8_7=>dataOutRamWeights(71), q_8_6=>
      dataOutRamWeights(70), q_8_5=>dataOutRamWeights(69), q_8_4=>
      dataOutRamWeights(68), q_8_3=>dataOutRamWeights(67), q_8_2=>
      dataOutRamWeights(66), q_8_1=>dataOutRamWeights(65), q_8_0=>
      dataOutRamWeights(64), q_7_7=>dataOutRamWeights(63), q_7_6=>
      dataOutRamWeights(62), q_7_5=>dataOutRamWeights(61), q_7_4=>
      dataOutRamWeights(60), q_7_3=>dataOutRamWeights(59), q_7_2=>
      dataOutRamWeights(58), q_7_1=>dataOutRamWeights(57), q_7_0=>
      dataOutRamWeights(56), q_6_7=>dataOutRamWeights(55), q_6_6=>
      dataOutRamWeights(54), q_6_5=>dataOutRamWeights(53), q_6_4=>
      dataOutRamWeights(52), q_6_3=>dataOutRamWeights(51), q_6_2=>
      dataOutRamWeights(50), q_6_1=>dataOutRamWeights(49), q_6_0=>
      dataOutRamWeights(48), q_5_7=>dataOutRamWeights(47), q_5_6=>
      dataOutRamWeights(46), q_5_5=>dataOutRamWeights(45), q_5_4=>
      dataOutRamWeights(44), q_5_3=>dataOutRamWeights(43), q_5_2=>
      dataOutRamWeights(42), q_5_1=>dataOutRamWeights(41), q_5_0=>
      dataOutRamWeights(40), q_4_7=>dataOutRamWeights(39), q_4_6=>
      dataOutRamWeights(38), q_4_5=>dataOutRamWeights(37), q_4_4=>
      dataOutRamWeights(36), q_4_3=>dataOutRamWeights(35), q_4_2=>
      dataOutRamWeights(34), q_4_1=>dataOutRamWeights(33), q_4_0=>
      dataOutRamWeights(32), q_3_7=>dataOutRamWeights(31), q_3_6=>
      dataOutRamWeights(30), q_3_5=>dataOutRamWeights(29), q_3_4=>
      dataOutRamWeights(28), q_3_3=>dataOutRamWeights(27), q_3_2=>
      dataOutRamWeights(26), q_3_1=>dataOutRamWeights(25), q_3_0=>
      dataOutRamWeights(24), q_2_7=>dataOutRamWeights(23), q_2_6=>
      dataOutRamWeights(22), q_2_5=>dataOutRamWeights(21), q_2_4=>
      dataOutRamWeights(20), q_2_3=>dataOutRamWeights(19), q_2_2=>
      dataOutRamWeights(18), q_2_1=>dataOutRamWeights(17), q_2_0=>
      dataOutRamWeights(16), q_1_7=>dataOutRamWeights(15), q_1_6=>
      dataOutRamWeights(14), q_1_5=>dataOutRamWeights(13), q_1_4=>
      dataOutRamWeights(12), q_1_3=>dataOutRamWeights(11), q_1_2=>
      dataOutRamWeights(10), q_1_1=>dataOutRamWeights(9), q_1_0=>
      dataOutRamWeights(8), q_0_7=>dataOutRamWeights(7), q_0_6=>
      dataOutRamWeights(6), q_0_5=>dataOutRamWeights(5), q_0_4=>
      dataOutRamWeights(4), q_0_3=>dataOutRamWeights(3), q_0_2=>
      dataOutRamWeights(2), q_0_1=>dataOutRamWeights(1), q_0_0=>
      dataOutRamWeights(0), m_9_15=>nx1171, m_9_14=>nx1181, m_9_13=>nx1191, 
      m_9_12=>nx1201, m_9_11=>nx1211, m_9_10=>nx1221, m_9_9=>nx1231, m_9_8=>
      nx1241, m_9_7=>nx1251, m_9_6=>nx1261, m_9_5=>nx1271, m_9_4=>nx1281, 
      m_9_3=>nx1291, m_9_2=>nx1301, m_9_1=>nx1311, m_9_0=>nx1321, m_8_15=>
      nx1171, m_8_14=>nx1181, m_8_13=>nx1191, m_8_12=>nx1201, m_8_11=>nx1211, 
      m_8_10=>nx1221, m_8_9=>nx1231, m_8_8=>nx1241, m_8_7=>nx1251, m_8_6=>
      nx1261, m_8_5=>nx1271, m_8_4=>nx1281, m_8_3=>nx1291, m_8_2=>nx1301, 
      m_8_1=>nx1311, m_8_0=>nx1321, m_7_15=>nx1171, m_7_14=>nx1181, m_7_13=>
      nx1191, m_7_12=>nx1201, m_7_11=>nx1211, m_7_10=>nx1221, m_7_9=>nx1231, 
      m_7_8=>nx1241, m_7_7=>nx1251, m_7_6=>nx1261, m_7_5=>nx1271, m_7_4=>
      nx1281, m_7_3=>nx1291, m_7_2=>nx1301, m_7_1=>nx1311, m_7_0=>nx1321, 
      m_6_15=>nx1173, m_6_14=>nx1183, m_6_13=>nx1193, m_6_12=>nx1203, m_6_11
      =>nx1213, m_6_10=>nx1223, m_6_9=>nx1233, m_6_8=>nx1243, m_6_7=>nx1253, 
      m_6_6=>nx1263, m_6_5=>nx1273, m_6_4=>nx1283, m_6_3=>nx1293, m_6_2=>
      nx1303, m_6_1=>nx1313, m_6_0=>nx1323, m_5_15=>nx1173, m_5_14=>nx1183, 
      m_5_13=>nx1193, m_5_12=>nx1203, m_5_11=>nx1213, m_5_10=>nx1223, m_5_9
      =>nx1233, m_5_8=>nx1243, m_5_7=>nx1253, m_5_6=>nx1263, m_5_5=>nx1273, 
      m_5_4=>nx1283, m_5_3=>nx1293, m_5_2=>nx1303, m_5_1=>nx1313, m_5_0=>
      nx1323, m_4_15=>nx1173, m_4_14=>nx1183, m_4_13=>nx1193, m_4_12=>nx1203, 
      m_4_11=>nx1213, m_4_10=>nx1223, m_4_9=>nx1233, m_4_8=>nx1243, m_4_7=>
      nx1253, m_4_6=>nx1263, m_4_5=>nx1273, m_4_4=>nx1283, m_4_3=>nx1293, 
      m_4_2=>nx1303, m_4_1=>nx1313, m_4_0=>nx1323, m_3_15=>nx1175, m_3_14=>
      nx1185, m_3_13=>nx1195, m_3_12=>nx1205, m_3_11=>nx1215, m_3_10=>nx1225, 
      m_3_9=>nx1235, m_3_8=>nx1245, m_3_7=>nx1255, m_3_6=>nx1265, m_3_5=>
      nx1275, m_3_4=>nx1285, m_3_3=>nx1295, m_3_2=>nx1305, m_3_1=>nx1315, 
      m_3_0=>nx1325, m_2_15=>nx1175, m_2_14=>nx1185, m_2_13=>nx1195, m_2_12
      =>nx1205, m_2_11=>nx1215, m_2_10=>nx1225, m_2_9=>nx1235, m_2_8=>nx1245, 
      m_2_7=>nx1255, m_2_6=>nx1265, m_2_5=>nx1275, m_2_4=>nx1285, m_2_3=>
      nx1295, m_2_2=>nx1305, m_2_1=>nx1315, m_2_0=>nx1325, m_1_15=>nx1175, 
      m_1_14=>nx1185, m_1_13=>nx1195, m_1_12=>nx1205, m_1_11=>nx1215, m_1_10
      =>nx1225, m_1_9=>nx1235, m_1_8=>nx1245, m_1_7=>nx1255, m_1_6=>nx1265, 
      m_1_5=>nx1275, m_1_4=>nx1285, m_1_3=>nx1295, m_1_2=>nx1305, m_1_1=>
      nx1315, m_1_0=>nx1325, m_0_15=>nx1177, m_0_14=>nx1187, m_0_13=>nx1197, 
      m_0_12=>nx1207, m_0_11=>nx1217, m_0_10=>nx1227, m_0_9=>nx1237, m_0_8=>
      nx1247, m_0_7=>nx1257, m_0_6=>nx1267, m_0_5=>nx1277, m_0_4=>nx1287, 
      m_0_3=>nx1297, m_0_2=>nx1307, m_0_1=>nx1317, m_0_0=>nx1327, f_9_15=>
      labelReg_9_15, f_9_14=>labelReg_9_14, f_9_13=>labelReg_9_13, f_9_12=>
      labelReg_9_12, f_9_11=>labelReg_9_11, f_9_10=>labelReg_9_10, f_9_9=>
      labelReg_9_9, f_9_8=>labelReg_9_8, f_9_7=>labelReg_9_7, f_9_6=>
      labelReg_9_6, f_9_5=>labelReg_9_5, f_9_4=>labelReg_9_4, f_9_3=>
      labelReg_9_3, f_9_2=>labelReg_9_2, f_9_1=>labelReg_9_1, f_9_0=>
      labelReg_9_0, f_8_15=>labelReg_8_15, f_8_14=>labelReg_8_14, f_8_13=>
      labelReg_8_13, f_8_12=>labelReg_8_12, f_8_11=>labelReg_8_11, f_8_10=>
      labelReg_8_10, f_8_9=>labelReg_8_9, f_8_8=>labelReg_8_8, f_8_7=>
      labelReg_8_7, f_8_6=>labelReg_8_6, f_8_5=>labelReg_8_5, f_8_4=>
      labelReg_8_4, f_8_3=>labelReg_8_3, f_8_2=>labelReg_8_2, f_8_1=>
      labelReg_8_1, f_8_0=>labelReg_8_0, f_7_15=>labelReg_7_15, f_7_14=>
      labelReg_7_14, f_7_13=>labelReg_7_13, f_7_12=>labelReg_7_12, f_7_11=>
      labelReg_7_11, f_7_10=>labelReg_7_10, f_7_9=>labelReg_7_9, f_7_8=>
      labelReg_7_8, f_7_7=>labelReg_7_7, f_7_6=>labelReg_7_6, f_7_5=>
      labelReg_7_5, f_7_4=>labelReg_7_4, f_7_3=>labelReg_7_3, f_7_2=>
      labelReg_7_2, f_7_1=>labelReg_7_1, f_7_0=>labelReg_7_0, f_6_15=>
      labelReg_6_15, f_6_14=>labelReg_6_14, f_6_13=>labelReg_6_13, f_6_12=>
      labelReg_6_12, f_6_11=>labelReg_6_11, f_6_10=>labelReg_6_10, f_6_9=>
      labelReg_6_9, f_6_8=>labelReg_6_8, f_6_7=>labelReg_6_7, f_6_6=>
      labelReg_6_6, f_6_5=>labelReg_6_5, f_6_4=>labelReg_6_4, f_6_3=>
      labelReg_6_3, f_6_2=>labelReg_6_2, f_6_1=>labelReg_6_1, f_6_0=>
      labelReg_6_0, f_5_15=>labelReg_5_15, f_5_14=>labelReg_5_14, f_5_13=>
      labelReg_5_13, f_5_12=>labelReg_5_12, f_5_11=>labelReg_5_11, f_5_10=>
      labelReg_5_10, f_5_9=>labelReg_5_9, f_5_8=>labelReg_5_8, f_5_7=>
      labelReg_5_7, f_5_6=>labelReg_5_6, f_5_5=>labelReg_5_5, f_5_4=>
      labelReg_5_4, f_5_3=>labelReg_5_3, f_5_2=>labelReg_5_2, f_5_1=>
      labelReg_5_1, f_5_0=>labelReg_5_0, f_4_15=>labelReg_4_15, f_4_14=>
      labelReg_4_14, f_4_13=>labelReg_4_13, f_4_12=>labelReg_4_12, f_4_11=>
      labelReg_4_11, f_4_10=>labelReg_4_10, f_4_9=>labelReg_4_9, f_4_8=>
      labelReg_4_8, f_4_7=>labelReg_4_7, f_4_6=>labelReg_4_6, f_4_5=>
      labelReg_4_5, f_4_4=>labelReg_4_4, f_4_3=>labelReg_4_3, f_4_2=>
      labelReg_4_2, f_4_1=>labelReg_4_1, f_4_0=>labelReg_4_0, f_3_15=>
      labelReg_3_15, f_3_14=>labelReg_3_14, f_3_13=>labelReg_3_13, f_3_12=>
      labelReg_3_12, f_3_11=>labelReg_3_11, f_3_10=>labelReg_3_10, f_3_9=>
      labelReg_3_9, f_3_8=>labelReg_3_8, f_3_7=>labelReg_3_7, f_3_6=>
      labelReg_3_6, f_3_5=>labelReg_3_5, f_3_4=>labelReg_3_4, f_3_3=>
      labelReg_3_3, f_3_2=>labelReg_3_2, f_3_1=>labelReg_3_1, f_3_0=>
      labelReg_3_0, f_2_15=>labelReg_2_15, f_2_14=>labelReg_2_14, f_2_13=>
      labelReg_2_13, f_2_12=>labelReg_2_12, f_2_11=>labelReg_2_11, f_2_10=>
      labelReg_2_10, f_2_9=>labelReg_2_9, f_2_8=>labelReg_2_8, f_2_7=>
      labelReg_2_7, f_2_6=>labelReg_2_6, f_2_5=>labelReg_2_5, f_2_4=>
      labelReg_2_4, f_2_3=>labelReg_2_3, f_2_2=>labelReg_2_2, f_2_1=>
      labelReg_2_1, f_2_0=>labelReg_2_0, f_1_15=>labelReg_1_15, f_1_14=>
      labelReg_1_14, f_1_13=>labelReg_1_13, f_1_12=>labelReg_1_12, f_1_11=>
      labelReg_1_11, f_1_10=>labelReg_1_10, f_1_9=>labelReg_1_9, f_1_8=>
      labelReg_1_8, f_1_7=>labelReg_1_7, f_1_6=>labelReg_1_6, f_1_5=>
      labelReg_1_5, f_1_4=>labelReg_1_4, f_1_3=>labelReg_1_3, f_1_2=>
      labelReg_1_2, f_1_1=>labelReg_1_1, f_1_0=>labelReg_1_0, f_0_15=>
      labelReg_0_15, f_0_14=>labelReg_0_14, f_0_13=>labelReg_0_13, f_0_12=>
      labelReg_0_12, f_0_11=>labelReg_0_11, f_0_10=>labelReg_0_10, f_0_9=>
      labelReg_0_9, f_0_8=>labelReg_0_8, f_0_7=>labelReg_0_7, f_0_6=>
      labelReg_0_6, f_0_5=>labelReg_0_5, f_0_4=>labelReg_0_4, f_0_3=>
      labelReg_0_3, f_0_2=>labelReg_0_2, f_0_1=>labelReg_0_1, f_0_0=>
      labelReg_0_0, clk=>clk, start=>decrement, rst=>nx1329, done=>DANGLING(
      0), working=>multiplyWorkIn);
   bufferRegOne : FlibFlob port map ( D=>multiplyWorkIn, en=>oneNeoron_8, 
      clk=>clkInverted, rst=>reset, Q=>bufferTwoInput, Qbar=>DANGLING(1));
   bufferRegTwo : FlibFlob port map ( D=>bufferTwoInput, en=>oneNeoron_8, 
      clk=>clk, rst=>reset, Q=>multiplyWorkDelayed, Qbar=>DANGLING(2));
   WeightAddressCounter : CounterUpDown_16 port map ( load(15)=>oneNeoron_15, 
      load(14)=>oneNeoron_15, load(13)=>oneNeoron_15, load(12)=>oneNeoron_15, 
      load(11)=>oneNeoron_15, load(10)=>oneNeoron_15, load(9)=>oneNeoron_15, 
      load(8)=>oneNeoron_15, load(7)=>oneNeoron_15, load(6)=>oneNeoron_15, 
      load(5)=>oneNeoron_15, load(4)=>oneNeoron_15, load(3)=>oneNeoron_15, 
      load(2)=>oneNeoron_15, load(1)=>oneNeoron_15, load(0)=>oneNeoron_15, 
      resetValue(15)=>oneNeoron_15, resetValue(14)=>oneNeoron_15, 
      resetValue(13)=>oneNeoron_15, resetValue(12)=>oneNeoron_15, 
      resetValue(11)=>oneNeoron_15, resetValue(10)=>oneNeoron_15, 
      resetValue(9)=>oneNeoron_15, resetValue(8)=>oneNeoron_15, 
      resetValue(7)=>oneNeoron_15, resetValue(6)=>oneNeoron_15, 
      resetValue(5)=>oneNeoron_15, resetValue(4)=>oneNeoron_15, 
      resetValue(3)=>oneNeoron_15, resetValue(2)=>oneNeoron_15, 
      resetValue(1)=>oneNeoron_15, resetValue(0)=>oneNeoron_15, clk=>clk, en
      =>incrementWeightAdd, rst=>reset, isLoad=>nx1329, upOrDown=>
      oneNeoron_15, count(15)=>dmaAddRamWeights(15), count(14)=>
      dmaAddRamWeights(14), count(13)=>dmaAddRamWeights(13), count(12)=>
      dmaAddRamWeights(12), count(11)=>dmaAddRamWeights(11), count(10)=>
      dmaAddRamWeights(10), count(9)=>dmaAddRamWeights(9), count(8)=>
      dmaAddRamWeights(8), count(7)=>dmaAddRamWeights(7), count(6)=>
      dmaAddRamWeights(6), count(5)=>dmaAddRamWeights(5), count(4)=>
      dmaAddRamWeights(4), count(3)=>dmaAddRamWeights(3), count(2)=>
      dmaAddRamWeights(2), count(1)=>dmaAddRamWeights(1), count(0)=>
      dmaAddRamWeights(0));
   NeoronAddressCounter : CounterUpDown_16 port map ( load(15)=>oneNeoron_15, 
      load(14)=>oneNeoron_15, load(13)=>oneNeoron_15, load(12)=>oneNeoron_15, 
      load(11)=>oneNeoron_15, load(10)=>oneNeoron_15, load(9)=>oneNeoron_15, 
      load(8)=>oneNeoron_15, load(7)=>oneNeoron_15, load(6)=>oneNeoron_15, 
      load(5)=>oneNeoron_15, load(4)=>oneNeoron_15, load(3)=>oneNeoron_15, 
      load(2)=>oneNeoron_15, load(1)=>oneNeoron_15, load(0)=>oneNeoron_15, 
      resetValue(15)=>oneNeoron_15, resetValue(14)=>oneNeoron_15, 
      resetValue(13)=>oneNeoron_15, resetValue(12)=>oneNeoron_15, 
      resetValue(11)=>oneNeoron_15, resetValue(10)=>oneNeoron_15, 
      resetValue(9)=>oneNeoron_15, resetValue(8)=>oneNeoron_15, 
      resetValue(7)=>oneNeoron_15, resetValue(6)=>oneNeoron_15, 
      resetValue(5)=>oneNeoron_15, resetValue(4)=>oneNeoron_15, 
      resetValue(3)=>oneNeoron_15, resetValue(2)=>oneNeoron_15, 
      resetValue(1)=>oneNeoron_15, resetValue(0)=>oneNeoron_15, clk=>clk, en
      =>incrementNeoronsAdd, rst=>reset, isLoad=>nx1331, upOrDown=>
      oneNeoron_15, count(15)=>dmaAddRamNeorons(15), count(14)=>
      dmaAddRamNeorons(14), count(13)=>dmaAddRamNeorons(13), count(12)=>
      dmaAddRamNeorons(12), count(11)=>dmaAddRamNeorons(11), count(10)=>
      dmaAddRamNeorons(10), count(9)=>dmaAddRamNeorons(9), count(8)=>
      dmaAddRamNeorons(8), count(7)=>dmaAddRamNeorons(7), count(6)=>
      dmaAddRamNeorons(6), count(5)=>dmaAddRamNeorons(5), count(4)=>
      dmaAddRamNeorons(4), count(3)=>dmaAddRamNeorons(3), count(2)=>
      dmaAddRamNeorons(2), count(1)=>dmaAddRamNeorons(1), count(0)=>
      dmaAddRamNeorons(0));
   MAXVALUEREGMAP : Reg_4 port map ( D(3)=>maxNumber_3, D(2)=>maxNumber_2, 
      D(1)=>maxNumber_1, D(0)=>maxNumber_0, en=>oneNeoron_8, clk=>doneMax, 
      rst=>reset, Q(3)=>MAXPrediction(3), Q(2)=>MAXPrediction(2), Q(1)=>
      MAXPrediction(1), Q(0)=>MAXPrediction(0), Qbar(3)=>DANGLING(3), 
      Qbar(2)=>DANGLING(4), Qbar(1)=>DANGLING(5), Qbar(0)=>DANGLING(6));
   ix1056 : fake_gnd port map ( Y=>oneNeoron_15);
   ix1054 : fake_vcc port map ( Y=>oneNeoron_8);
   ix35 : oai21 port map ( Y=>nx34, A0=>finishRamWeights, A1=>nx1093, B0=>
      nx1095);
   reg_state_1 : dffr port map ( Q=>state_1, QB=>nx1093, D=>nx34, CLK=>clk, 
      R=>reset);
   ix1096 : oai21 port map ( Y=>nx1095, A0=>state_0, A1=>fcDone_EXMPLR, B0=>
      nx1331);
   reg_state_0 : dffs_ni port map ( Q=>state_0, QB=>OPEN, D=>nx20, CLK=>clk, 
      S=>reset);
   reg_state_7 : dffr port map ( Q=>fcDone_EXMPLR, QB=>OPEN, D=>nx12, CLK=>
      clk, R=>reset);
   ix13 : ao22 port map ( Y=>nx12, A0=>doneMax, A1=>state_6, B0=>nx1155, B1
      =>fcDone_EXMPLR);
   reg_state_6 : dffr port map ( Q=>state_6, QB=>OPEN, D=>nx176, CLK=>clk, R
      =>reset);
   ix177 : ao21 port map ( Y=>nx176, A0=>nx1104, A1=>state_6, B0=>state_10);
   ix1105 : inv01 port map ( Y=>nx1104, A=>doneMax);
   reg_state_10 : dffr port map ( Q=>state_10, QB=>OPEN, D=>nx166, CLK=>clk, 
      R=>reset);
   ix161 : or02 port map ( Y=>nx160, A0=>nx158, A1=>decrement);
   ix159 : nor03_2x port map ( Y=>nx158, A0=>nx1111, A1=>nx1123, A2=>nx152);
   ix1112 : nor03_2x port map ( Y=>nx1111, A0=>nx1113, A1=>finishRamNeorons, 
      A2=>finishRamWeights);
   ix1116 : nor04 port map ( Y=>nx1115, A0=>numberOFNeorons_0, A1=>
      numberOFNeorons_1, A2=>numberOFNeorons_2, A3=>numberOFNeorons_3);
   ix1118 : nor04 port map ( Y=>nx1117, A0=>numberOFNeorons_4, A1=>
      numberOFNeorons_5, A2=>numberOFNeorons_6, A3=>numberOFNeorons_7);
   ix1120 : nor04 port map ( Y=>nx1119, A0=>numberOFNeorons_8, A1=>
      numberOFNeorons_9, A2=>numberOFNeorons_10, A3=>numberOFNeorons_11);
   ix1122 : nor04 port map ( Y=>nx1121, A0=>numberOFNeorons_12, A1=>
      numberOFNeorons_13, A2=>numberOFNeorons_14, A3=>numberOFNeorons_15);
   reg_state_4 : dffr port map ( Q=>state_4, QB=>nx1123, D=>nx160, CLK=>clk, 
      R=>reset);
   ix153 : nor04 port map ( Y=>nx152, A0=>finishRamNeorons, A1=>
      finishRamWeights, A2=>nx98, A3=>nx0);
   ix99 : nand04 port map ( Y=>nx98, A0=>nx1115, A1=>nx1117, A2=>nx1119, A3
      =>nx1121);
   ix133 : or02 port map ( Y=>decrement, A0=>state_8, A1=>state_9);
   reg_state_8 : dffr port map ( Q=>state_8, QB=>OPEN, D=>
      incrementNeoronsAdd, CLK=>clk, R=>reset);
   ix127 : nor02ii port map ( Y=>incrementNeoronsAdd, A0=>nx1131, A1=>
      readRamNeorons_EXMPLR);
   ix1132 : nand03 port map ( Y=>nx1131, A0=>nx1133, A1=>finishRamNeorons, 
      A2=>finishRamWeights);
   ix1134 : nand02 port map ( Y=>nx1133, A0=>multiplyWorkIn, A1=>
      multiplyWorkDelayed);
   reg_state_5 : dffr port map ( Q=>readRamNeorons_EXMPLR, QB=>OPEN, D=>
      nx120, CLK=>clk, R=>reset);
   ix121 : ao22 port map ( Y=>nx120, A0=>readRamNeorons_EXMPLR, A1=>nx1131, 
      B0=>state_4, B1=>nx106);
   ix107 : nor03_2x port map ( Y=>nx106, A0=>nx1113, A1=>finishRamNeorons, 
      A2=>finishRamWeights);
   reg_state_9 : dffr port map ( Q=>state_9, QB=>OPEN, D=>nx1087, CLK=>clk, 
      R=>reset);
   reg_state_3 : dffr port map ( Q=>state_3, QB=>OPEN, D=>nx54, CLK=>clk, R
      =>reset);
   ix55 : ao22 port map ( Y=>nx54, A0=>nx1144, A1=>state_2, B0=>state_3, B1
      =>nx1149);
   ix1145 : inv01 port map ( Y=>nx1144, A=>finishRamWeights);
   reg_state_2 : dffr port map ( Q=>state_2, QB=>OPEN, D=>nx44, CLK=>clk, R
      =>reset);
   ix45 : ao21 port map ( Y=>nx44, A0=>finishRamWeights, A1=>state_2, B0=>
      nx1337);
   ix1150 : nand03 port map ( Y=>nx1149, A0=>nx1133, A1=>finishRamWeights, 
      A2=>state_3);
   ix1156 : inv01 port map ( Y=>nx1155, A=>cnnDoneOneCycle);
   ix183 : or02 port map ( Y=>neoronValueSelection, A0=>state_3, A1=>state_9
   );
   ix185 : or02 port map ( Y=>incrementWeightAdd, A0=>nx1337, A1=>decrement
   );
   ix189 : or03 port map ( Y=>readRamWeights, A0=>state_3, A1=>
      readRamNeorons_EXMPLR, A2=>state_1);
   ix193 : and02 port map ( Y=>beginSignal, A0=>ioDone, A1=>cnnDone);
   ix1163 : inv01 port map ( Y=>clkInverted, A=>clk);
   ix1114 : inv01 port map ( Y=>nx1113, A=>nx98);
   ix65 : inv01 port map ( Y=>nx1087, A=>nx1149);
   ix1 : inv01 port map ( Y=>nx0, A=>nx1133);
   ix1168 : inv01 port map ( Y=>nx1169, A=>neoronMuxOutput_15);
   ix1170 : inv01 port map ( Y=>nx1171, A=>nx1169);
   ix1172 : inv01 port map ( Y=>nx1173, A=>nx1169);
   ix1174 : inv01 port map ( Y=>nx1175, A=>nx1169);
   ix1176 : inv01 port map ( Y=>nx1177, A=>nx1169);
   ix1178 : inv01 port map ( Y=>nx1179, A=>neoronMuxOutput_14);
   ix1180 : inv01 port map ( Y=>nx1181, A=>nx1179);
   ix1182 : inv01 port map ( Y=>nx1183, A=>nx1179);
   ix1184 : inv01 port map ( Y=>nx1185, A=>nx1179);
   ix1186 : inv01 port map ( Y=>nx1187, A=>nx1179);
   ix1188 : inv01 port map ( Y=>nx1189, A=>neoronMuxOutput_13);
   ix1190 : inv01 port map ( Y=>nx1191, A=>nx1189);
   ix1192 : inv01 port map ( Y=>nx1193, A=>nx1189);
   ix1194 : inv01 port map ( Y=>nx1195, A=>nx1189);
   ix1196 : inv01 port map ( Y=>nx1197, A=>nx1189);
   ix1198 : inv01 port map ( Y=>nx1199, A=>neoronMuxOutput_12);
   ix1200 : inv01 port map ( Y=>nx1201, A=>nx1199);
   ix1202 : inv01 port map ( Y=>nx1203, A=>nx1199);
   ix1204 : inv01 port map ( Y=>nx1205, A=>nx1199);
   ix1206 : inv01 port map ( Y=>nx1207, A=>nx1199);
   ix1208 : inv01 port map ( Y=>nx1209, A=>neoronMuxOutput_11);
   ix1210 : inv01 port map ( Y=>nx1211, A=>nx1209);
   ix1212 : inv01 port map ( Y=>nx1213, A=>nx1209);
   ix1214 : inv01 port map ( Y=>nx1215, A=>nx1209);
   ix1216 : inv01 port map ( Y=>nx1217, A=>nx1209);
   ix1218 : inv01 port map ( Y=>nx1219, A=>neoronMuxOutput_10);
   ix1220 : inv01 port map ( Y=>nx1221, A=>nx1219);
   ix1222 : inv01 port map ( Y=>nx1223, A=>nx1219);
   ix1224 : inv01 port map ( Y=>nx1225, A=>nx1219);
   ix1226 : inv01 port map ( Y=>nx1227, A=>nx1219);
   ix1228 : inv01 port map ( Y=>nx1229, A=>neoronMuxOutput_9);
   ix1230 : inv01 port map ( Y=>nx1231, A=>nx1229);
   ix1232 : inv01 port map ( Y=>nx1233, A=>nx1229);
   ix1234 : inv01 port map ( Y=>nx1235, A=>nx1229);
   ix1236 : inv01 port map ( Y=>nx1237, A=>nx1229);
   ix1238 : inv01 port map ( Y=>nx1239, A=>neoronMuxOutput_8);
   ix1240 : inv01 port map ( Y=>nx1241, A=>nx1239);
   ix1242 : inv01 port map ( Y=>nx1243, A=>nx1239);
   ix1244 : inv01 port map ( Y=>nx1245, A=>nx1239);
   ix1246 : inv01 port map ( Y=>nx1247, A=>nx1239);
   ix1248 : inv01 port map ( Y=>nx1249, A=>neoronMuxOutput_7);
   ix1250 : inv01 port map ( Y=>nx1251, A=>nx1249);
   ix1252 : inv01 port map ( Y=>nx1253, A=>nx1249);
   ix1254 : inv01 port map ( Y=>nx1255, A=>nx1249);
   ix1256 : inv01 port map ( Y=>nx1257, A=>nx1249);
   ix1258 : inv01 port map ( Y=>nx1259, A=>neoronMuxOutput_6);
   ix1260 : inv01 port map ( Y=>nx1261, A=>nx1259);
   ix1262 : inv01 port map ( Y=>nx1263, A=>nx1259);
   ix1264 : inv01 port map ( Y=>nx1265, A=>nx1259);
   ix1266 : inv01 port map ( Y=>nx1267, A=>nx1259);
   ix1268 : inv01 port map ( Y=>nx1269, A=>neoronMuxOutput_5);
   ix1270 : inv01 port map ( Y=>nx1271, A=>nx1269);
   ix1272 : inv01 port map ( Y=>nx1273, A=>nx1269);
   ix1274 : inv01 port map ( Y=>nx1275, A=>nx1269);
   ix1276 : inv01 port map ( Y=>nx1277, A=>nx1269);
   ix1278 : inv01 port map ( Y=>nx1279, A=>neoronMuxOutput_4);
   ix1280 : inv01 port map ( Y=>nx1281, A=>nx1279);
   ix1282 : inv01 port map ( Y=>nx1283, A=>nx1279);
   ix1284 : inv01 port map ( Y=>nx1285, A=>nx1279);
   ix1286 : inv01 port map ( Y=>nx1287, A=>nx1279);
   ix1288 : inv01 port map ( Y=>nx1289, A=>neoronMuxOutput_3);
   ix1290 : inv01 port map ( Y=>nx1291, A=>nx1289);
   ix1292 : inv01 port map ( Y=>nx1293, A=>nx1289);
   ix1294 : inv01 port map ( Y=>nx1295, A=>nx1289);
   ix1296 : inv01 port map ( Y=>nx1297, A=>nx1289);
   ix1298 : inv01 port map ( Y=>nx1299, A=>neoronMuxOutput_2);
   ix1300 : inv01 port map ( Y=>nx1301, A=>nx1299);
   ix1302 : inv01 port map ( Y=>nx1303, A=>nx1299);
   ix1304 : inv01 port map ( Y=>nx1305, A=>nx1299);
   ix1306 : inv01 port map ( Y=>nx1307, A=>nx1299);
   ix1308 : inv01 port map ( Y=>nx1309, A=>neoronMuxOutput_1);
   ix1310 : inv01 port map ( Y=>nx1311, A=>nx1309);
   ix1312 : inv01 port map ( Y=>nx1313, A=>nx1309);
   ix1314 : inv01 port map ( Y=>nx1315, A=>nx1309);
   ix1316 : inv01 port map ( Y=>nx1317, A=>nx1309);
   ix1318 : inv01 port map ( Y=>nx1319, A=>neoronMuxOutput_0);
   ix1320 : inv01 port map ( Y=>nx1321, A=>nx1319);
   ix1322 : inv01 port map ( Y=>nx1323, A=>nx1319);
   ix1324 : inv01 port map ( Y=>nx1325, A=>nx1319);
   ix1326 : inv01 port map ( Y=>nx1327, A=>nx1319);
   ix1328 : inv02 port map ( Y=>nx1329, A=>nx1155);
   ix1330 : inv02 port map ( Y=>nx1331, A=>nx1155);
   ix41 : nor02ii port map ( Y=>loadNumberOFNeorons, A0=>nx1093, A1=>
      finishRamWeights);
   ix21 : and02 port map ( Y=>nx20, A0=>nx1155, A1=>state_0);
   ix167 : nor02ii port map ( Y=>nx166, A0=>nx1123, A1=>nx152);
   ix1336 : buf02 port map ( Y=>nx1337, A=>loadNumberOFNeorons);
end FcMainArch ;

