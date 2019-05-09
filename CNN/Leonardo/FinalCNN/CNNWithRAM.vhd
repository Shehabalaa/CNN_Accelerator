
-- 
-- Definition of  CNNWithRAM
-- 
--      Thu May  9 15:35:23 2019
--      
--      LeonardoSpectrum Level 3, 2018a.2
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity TransitionDetector is
   port (
      edge : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      f : INOUT std_logic) ;
end TransitionDetector ;

architecture TransitionDetectorArch of TransitionDetector is
   signal nx0, d, NOT_clk, nx8, nx29: std_logic ;

begin
   ix1 : fake_vcc port map ( Y=>nx0);
   reg_f : dffr port map ( Q=>f, QB=>OPEN, D=>nx0, CLK=>edge, R=>nx8);
   ix9 : inv01 port map ( Y=>nx8, A=>nx29);
   ix30 : nor02_2x port map ( Y=>nx29, A0=>d, A1=>rst);
   reg_d : dff port map ( Q=>d, QB=>OPEN, D=>f, CLK=>NOT_clk);
   ix33 : inv01 port map ( Y=>NOT_clk, A=>clk);
end TransitionDetectorArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ShiftReg_3 is
   port (
      outp : INOUT std_logic_vector (3 DOWNTO 0) ;
      clk : IN std_logic ;
      en : IN std_logic ;
      rst : IN std_logic) ;
end ShiftReg_3 ;

architecture ShiftRegArch_unfold_2142 of ShiftReg_3 is
   signal nx50, nx64, nx74, nx84, nx96, nx98, nx101, nx104: std_logic ;

begin
   outp(1) <= outp(2) ;
   outp(0) <= outp(2) ;
   ix43 : fake_gnd port map ( Y=>outp(2));
   ix85 : mux21 port map ( Y=>nx84, A0=>nx96, A1=>nx98, S0=>en);
   reg_outp_3 : dffr port map ( Q=>outp(3), QB=>nx96, D=>nx84, CLK=>clk, R=>
      rst);
   reg_outp_2 : dffr port map ( Q=>OPEN, QB=>nx98, D=>nx74, CLK=>clk, R=>rst
   );
   ix75 : mux21 port map ( Y=>nx74, A0=>nx98, A1=>nx101, S0=>en);
   reg_outp_1 : dffr port map ( Q=>OPEN, QB=>nx101, D=>nx64, CLK=>clk, R=>
      rst);
   ix65 : mux21 port map ( Y=>nx64, A0=>nx101, A1=>nx104, S0=>en);
   reg_outp_0 : dffs_ni port map ( Q=>OPEN, QB=>nx104, D=>nx50, CLK=>clk, S
      =>rst);
   ix51 : nor02_2x port map ( Y=>nx50, A0=>nx104, A1=>en);
end ShiftRegArch_unfold_2142 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Reg_1 is
   port (
      D : IN std_logic_vector (0 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      Q : OUT std_logic_vector (0 DOWNTO 0)) ;
end Reg_1 ;

architecture RegArch_unfold_2203 of Reg_1 is
   signal nx0: std_logic ;

begin
   ix1 : fake_vcc port map ( Y=>nx0);
   reg_Q_0 : dffr port map ( Q=>Q(0), QB=>OPEN, D=>nx0, CLK=>clk, R=>rst);

end RegArch_unfold_2203 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CNNMuls_25 is
   port (
      filter_24_7 : IN std_logic ;
      filter_24_6 : IN std_logic ;
      filter_24_5 : IN std_logic ;
      filter_24_4 : IN std_logic ;
      filter_24_3 : IN std_logic ;
      filter_24_2 : IN std_logic ;
      filter_24_1 : IN std_logic ;
      filter_24_0 : IN std_logic ;
      filter_23_7 : IN std_logic ;
      filter_23_6 : IN std_logic ;
      filter_23_5 : IN std_logic ;
      filter_23_4 : IN std_logic ;
      filter_23_3 : IN std_logic ;
      filter_23_2 : IN std_logic ;
      filter_23_1 : IN std_logic ;
      filter_23_0 : IN std_logic ;
      filter_22_7 : IN std_logic ;
      filter_22_6 : IN std_logic ;
      filter_22_5 : IN std_logic ;
      filter_22_4 : IN std_logic ;
      filter_22_3 : IN std_logic ;
      filter_22_2 : IN std_logic ;
      filter_22_1 : IN std_logic ;
      filter_22_0 : IN std_logic ;
      filter_21_7 : IN std_logic ;
      filter_21_6 : IN std_logic ;
      filter_21_5 : IN std_logic ;
      filter_21_4 : IN std_logic ;
      filter_21_3 : IN std_logic ;
      filter_21_2 : IN std_logic ;
      filter_21_1 : IN std_logic ;
      filter_21_0 : IN std_logic ;
      filter_20_7 : IN std_logic ;
      filter_20_6 : IN std_logic ;
      filter_20_5 : IN std_logic ;
      filter_20_4 : IN std_logic ;
      filter_20_3 : IN std_logic ;
      filter_20_2 : IN std_logic ;
      filter_20_1 : IN std_logic ;
      filter_20_0 : IN std_logic ;
      filter_19_7 : IN std_logic ;
      filter_19_6 : IN std_logic ;
      filter_19_5 : IN std_logic ;
      filter_19_4 : IN std_logic ;
      filter_19_3 : IN std_logic ;
      filter_19_2 : IN std_logic ;
      filter_19_1 : IN std_logic ;
      filter_19_0 : IN std_logic ;
      filter_18_7 : IN std_logic ;
      filter_18_6 : IN std_logic ;
      filter_18_5 : IN std_logic ;
      filter_18_4 : IN std_logic ;
      filter_18_3 : IN std_logic ;
      filter_18_2 : IN std_logic ;
      filter_18_1 : IN std_logic ;
      filter_18_0 : IN std_logic ;
      filter_17_7 : IN std_logic ;
      filter_17_6 : IN std_logic ;
      filter_17_5 : IN std_logic ;
      filter_17_4 : IN std_logic ;
      filter_17_3 : IN std_logic ;
      filter_17_2 : IN std_logic ;
      filter_17_1 : IN std_logic ;
      filter_17_0 : IN std_logic ;
      filter_16_7 : IN std_logic ;
      filter_16_6 : IN std_logic ;
      filter_16_5 : IN std_logic ;
      filter_16_4 : IN std_logic ;
      filter_16_3 : IN std_logic ;
      filter_16_2 : IN std_logic ;
      filter_16_1 : IN std_logic ;
      filter_16_0 : IN std_logic ;
      filter_15_7 : IN std_logic ;
      filter_15_6 : IN std_logic ;
      filter_15_5 : IN std_logic ;
      filter_15_4 : IN std_logic ;
      filter_15_3 : IN std_logic ;
      filter_15_2 : IN std_logic ;
      filter_15_1 : IN std_logic ;
      filter_15_0 : IN std_logic ;
      filter_14_7 : IN std_logic ;
      filter_14_6 : IN std_logic ;
      filter_14_5 : IN std_logic ;
      filter_14_4 : IN std_logic ;
      filter_14_3 : IN std_logic ;
      filter_14_2 : IN std_logic ;
      filter_14_1 : IN std_logic ;
      filter_14_0 : IN std_logic ;
      filter_13_7 : IN std_logic ;
      filter_13_6 : IN std_logic ;
      filter_13_5 : IN std_logic ;
      filter_13_4 : IN std_logic ;
      filter_13_3 : IN std_logic ;
      filter_13_2 : IN std_logic ;
      filter_13_1 : IN std_logic ;
      filter_13_0 : IN std_logic ;
      filter_12_7 : IN std_logic ;
      filter_12_6 : IN std_logic ;
      filter_12_5 : IN std_logic ;
      filter_12_4 : IN std_logic ;
      filter_12_3 : IN std_logic ;
      filter_12_2 : IN std_logic ;
      filter_12_1 : IN std_logic ;
      filter_12_0 : IN std_logic ;
      filter_11_7 : IN std_logic ;
      filter_11_6 : IN std_logic ;
      filter_11_5 : IN std_logic ;
      filter_11_4 : IN std_logic ;
      filter_11_3 : IN std_logic ;
      filter_11_2 : IN std_logic ;
      filter_11_1 : IN std_logic ;
      filter_11_0 : IN std_logic ;
      filter_10_7 : IN std_logic ;
      filter_10_6 : IN std_logic ;
      filter_10_5 : IN std_logic ;
      filter_10_4 : IN std_logic ;
      filter_10_3 : IN std_logic ;
      filter_10_2 : IN std_logic ;
      filter_10_1 : IN std_logic ;
      filter_10_0 : IN std_logic ;
      filter_9_7 : IN std_logic ;
      filter_9_6 : IN std_logic ;
      filter_9_5 : IN std_logic ;
      filter_9_4 : IN std_logic ;
      filter_9_3 : IN std_logic ;
      filter_9_2 : IN std_logic ;
      filter_9_1 : IN std_logic ;
      filter_9_0 : IN std_logic ;
      filter_8_7 : IN std_logic ;
      filter_8_6 : IN std_logic ;
      filter_8_5 : IN std_logic ;
      filter_8_4 : IN std_logic ;
      filter_8_3 : IN std_logic ;
      filter_8_2 : IN std_logic ;
      filter_8_1 : IN std_logic ;
      filter_8_0 : IN std_logic ;
      filter_7_7 : IN std_logic ;
      filter_7_6 : IN std_logic ;
      filter_7_5 : IN std_logic ;
      filter_7_4 : IN std_logic ;
      filter_7_3 : IN std_logic ;
      filter_7_2 : IN std_logic ;
      filter_7_1 : IN std_logic ;
      filter_7_0 : IN std_logic ;
      filter_6_7 : IN std_logic ;
      filter_6_6 : IN std_logic ;
      filter_6_5 : IN std_logic ;
      filter_6_4 : IN std_logic ;
      filter_6_3 : IN std_logic ;
      filter_6_2 : IN std_logic ;
      filter_6_1 : IN std_logic ;
      filter_6_0 : IN std_logic ;
      filter_5_7 : IN std_logic ;
      filter_5_6 : IN std_logic ;
      filter_5_5 : IN std_logic ;
      filter_5_4 : IN std_logic ;
      filter_5_3 : IN std_logic ;
      filter_5_2 : IN std_logic ;
      filter_5_1 : IN std_logic ;
      filter_5_0 : IN std_logic ;
      filter_4_7 : IN std_logic ;
      filter_4_6 : IN std_logic ;
      filter_4_5 : IN std_logic ;
      filter_4_4 : IN std_logic ;
      filter_4_3 : IN std_logic ;
      filter_4_2 : IN std_logic ;
      filter_4_1 : IN std_logic ;
      filter_4_0 : IN std_logic ;
      filter_3_7 : IN std_logic ;
      filter_3_6 : IN std_logic ;
      filter_3_5 : IN std_logic ;
      filter_3_4 : IN std_logic ;
      filter_3_3 : IN std_logic ;
      filter_3_2 : IN std_logic ;
      filter_3_1 : IN std_logic ;
      filter_3_0 : IN std_logic ;
      filter_2_7 : IN std_logic ;
      filter_2_6 : IN std_logic ;
      filter_2_5 : IN std_logic ;
      filter_2_4 : IN std_logic ;
      filter_2_3 : IN std_logic ;
      filter_2_2 : IN std_logic ;
      filter_2_1 : IN std_logic ;
      filter_2_0 : IN std_logic ;
      filter_1_7 : IN std_logic ;
      filter_1_6 : IN std_logic ;
      filter_1_5 : IN std_logic ;
      filter_1_4 : IN std_logic ;
      filter_1_3 : IN std_logic ;
      filter_1_2 : IN std_logic ;
      filter_1_1 : IN std_logic ;
      filter_1_0 : IN std_logic ;
      filter_0_7 : IN std_logic ;
      filter_0_6 : IN std_logic ;
      filter_0_5 : IN std_logic ;
      filter_0_4 : IN std_logic ;
      filter_0_3 : IN std_logic ;
      filter_0_2 : IN std_logic ;
      filter_0_1 : IN std_logic ;
      filter_0_0 : IN std_logic ;
      window_24_15 : IN std_logic ;
      window_24_14 : IN std_logic ;
      window_24_13 : IN std_logic ;
      window_24_12 : IN std_logic ;
      window_24_11 : IN std_logic ;
      window_24_10 : IN std_logic ;
      window_24_9 : IN std_logic ;
      window_24_8 : IN std_logic ;
      window_24_7 : IN std_logic ;
      window_24_6 : IN std_logic ;
      window_24_5 : IN std_logic ;
      window_24_4 : IN std_logic ;
      window_24_3 : IN std_logic ;
      window_24_2 : IN std_logic ;
      window_24_1 : IN std_logic ;
      window_24_0 : IN std_logic ;
      window_23_15 : IN std_logic ;
      window_23_14 : IN std_logic ;
      window_23_13 : IN std_logic ;
      window_23_12 : IN std_logic ;
      window_23_11 : IN std_logic ;
      window_23_10 : IN std_logic ;
      window_23_9 : IN std_logic ;
      window_23_8 : IN std_logic ;
      window_23_7 : IN std_logic ;
      window_23_6 : IN std_logic ;
      window_23_5 : IN std_logic ;
      window_23_4 : IN std_logic ;
      window_23_3 : IN std_logic ;
      window_23_2 : IN std_logic ;
      window_23_1 : IN std_logic ;
      window_23_0 : IN std_logic ;
      window_22_15 : IN std_logic ;
      window_22_14 : IN std_logic ;
      window_22_13 : IN std_logic ;
      window_22_12 : IN std_logic ;
      window_22_11 : IN std_logic ;
      window_22_10 : IN std_logic ;
      window_22_9 : IN std_logic ;
      window_22_8 : IN std_logic ;
      window_22_7 : IN std_logic ;
      window_22_6 : IN std_logic ;
      window_22_5 : IN std_logic ;
      window_22_4 : IN std_logic ;
      window_22_3 : IN std_logic ;
      window_22_2 : IN std_logic ;
      window_22_1 : IN std_logic ;
      window_22_0 : IN std_logic ;
      window_21_15 : IN std_logic ;
      window_21_14 : IN std_logic ;
      window_21_13 : IN std_logic ;
      window_21_12 : IN std_logic ;
      window_21_11 : IN std_logic ;
      window_21_10 : IN std_logic ;
      window_21_9 : IN std_logic ;
      window_21_8 : IN std_logic ;
      window_21_7 : IN std_logic ;
      window_21_6 : IN std_logic ;
      window_21_5 : IN std_logic ;
      window_21_4 : IN std_logic ;
      window_21_3 : IN std_logic ;
      window_21_2 : IN std_logic ;
      window_21_1 : IN std_logic ;
      window_21_0 : IN std_logic ;
      window_20_15 : IN std_logic ;
      window_20_14 : IN std_logic ;
      window_20_13 : IN std_logic ;
      window_20_12 : IN std_logic ;
      window_20_11 : IN std_logic ;
      window_20_10 : IN std_logic ;
      window_20_9 : IN std_logic ;
      window_20_8 : IN std_logic ;
      window_20_7 : IN std_logic ;
      window_20_6 : IN std_logic ;
      window_20_5 : IN std_logic ;
      window_20_4 : IN std_logic ;
      window_20_3 : IN std_logic ;
      window_20_2 : IN std_logic ;
      window_20_1 : IN std_logic ;
      window_20_0 : IN std_logic ;
      window_19_15 : IN std_logic ;
      window_19_14 : IN std_logic ;
      window_19_13 : IN std_logic ;
      window_19_12 : IN std_logic ;
      window_19_11 : IN std_logic ;
      window_19_10 : IN std_logic ;
      window_19_9 : IN std_logic ;
      window_19_8 : IN std_logic ;
      window_19_7 : IN std_logic ;
      window_19_6 : IN std_logic ;
      window_19_5 : IN std_logic ;
      window_19_4 : IN std_logic ;
      window_19_3 : IN std_logic ;
      window_19_2 : IN std_logic ;
      window_19_1 : IN std_logic ;
      window_19_0 : IN std_logic ;
      window_18_15 : IN std_logic ;
      window_18_14 : IN std_logic ;
      window_18_13 : IN std_logic ;
      window_18_12 : IN std_logic ;
      window_18_11 : IN std_logic ;
      window_18_10 : IN std_logic ;
      window_18_9 : IN std_logic ;
      window_18_8 : IN std_logic ;
      window_18_7 : IN std_logic ;
      window_18_6 : IN std_logic ;
      window_18_5 : IN std_logic ;
      window_18_4 : IN std_logic ;
      window_18_3 : IN std_logic ;
      window_18_2 : IN std_logic ;
      window_18_1 : IN std_logic ;
      window_18_0 : IN std_logic ;
      window_17_15 : IN std_logic ;
      window_17_14 : IN std_logic ;
      window_17_13 : IN std_logic ;
      window_17_12 : IN std_logic ;
      window_17_11 : IN std_logic ;
      window_17_10 : IN std_logic ;
      window_17_9 : IN std_logic ;
      window_17_8 : IN std_logic ;
      window_17_7 : IN std_logic ;
      window_17_6 : IN std_logic ;
      window_17_5 : IN std_logic ;
      window_17_4 : IN std_logic ;
      window_17_3 : IN std_logic ;
      window_17_2 : IN std_logic ;
      window_17_1 : IN std_logic ;
      window_17_0 : IN std_logic ;
      window_16_15 : IN std_logic ;
      window_16_14 : IN std_logic ;
      window_16_13 : IN std_logic ;
      window_16_12 : IN std_logic ;
      window_16_11 : IN std_logic ;
      window_16_10 : IN std_logic ;
      window_16_9 : IN std_logic ;
      window_16_8 : IN std_logic ;
      window_16_7 : IN std_logic ;
      window_16_6 : IN std_logic ;
      window_16_5 : IN std_logic ;
      window_16_4 : IN std_logic ;
      window_16_3 : IN std_logic ;
      window_16_2 : IN std_logic ;
      window_16_1 : IN std_logic ;
      window_16_0 : IN std_logic ;
      window_15_15 : IN std_logic ;
      window_15_14 : IN std_logic ;
      window_15_13 : IN std_logic ;
      window_15_12 : IN std_logic ;
      window_15_11 : IN std_logic ;
      window_15_10 : IN std_logic ;
      window_15_9 : IN std_logic ;
      window_15_8 : IN std_logic ;
      window_15_7 : IN std_logic ;
      window_15_6 : IN std_logic ;
      window_15_5 : IN std_logic ;
      window_15_4 : IN std_logic ;
      window_15_3 : IN std_logic ;
      window_15_2 : IN std_logic ;
      window_15_1 : IN std_logic ;
      window_15_0 : IN std_logic ;
      window_14_15 : IN std_logic ;
      window_14_14 : IN std_logic ;
      window_14_13 : IN std_logic ;
      window_14_12 : IN std_logic ;
      window_14_11 : IN std_logic ;
      window_14_10 : IN std_logic ;
      window_14_9 : IN std_logic ;
      window_14_8 : IN std_logic ;
      window_14_7 : IN std_logic ;
      window_14_6 : IN std_logic ;
      window_14_5 : IN std_logic ;
      window_14_4 : IN std_logic ;
      window_14_3 : IN std_logic ;
      window_14_2 : IN std_logic ;
      window_14_1 : IN std_logic ;
      window_14_0 : IN std_logic ;
      window_13_15 : IN std_logic ;
      window_13_14 : IN std_logic ;
      window_13_13 : IN std_logic ;
      window_13_12 : IN std_logic ;
      window_13_11 : IN std_logic ;
      window_13_10 : IN std_logic ;
      window_13_9 : IN std_logic ;
      window_13_8 : IN std_logic ;
      window_13_7 : IN std_logic ;
      window_13_6 : IN std_logic ;
      window_13_5 : IN std_logic ;
      window_13_4 : IN std_logic ;
      window_13_3 : IN std_logic ;
      window_13_2 : IN std_logic ;
      window_13_1 : IN std_logic ;
      window_13_0 : IN std_logic ;
      window_12_15 : IN std_logic ;
      window_12_14 : IN std_logic ;
      window_12_13 : IN std_logic ;
      window_12_12 : IN std_logic ;
      window_12_11 : IN std_logic ;
      window_12_10 : IN std_logic ;
      window_12_9 : IN std_logic ;
      window_12_8 : IN std_logic ;
      window_12_7 : IN std_logic ;
      window_12_6 : IN std_logic ;
      window_12_5 : IN std_logic ;
      window_12_4 : IN std_logic ;
      window_12_3 : IN std_logic ;
      window_12_2 : IN std_logic ;
      window_12_1 : IN std_logic ;
      window_12_0 : IN std_logic ;
      window_11_15 : IN std_logic ;
      window_11_14 : IN std_logic ;
      window_11_13 : IN std_logic ;
      window_11_12 : IN std_logic ;
      window_11_11 : IN std_logic ;
      window_11_10 : IN std_logic ;
      window_11_9 : IN std_logic ;
      window_11_8 : IN std_logic ;
      window_11_7 : IN std_logic ;
      window_11_6 : IN std_logic ;
      window_11_5 : IN std_logic ;
      window_11_4 : IN std_logic ;
      window_11_3 : IN std_logic ;
      window_11_2 : IN std_logic ;
      window_11_1 : IN std_logic ;
      window_11_0 : IN std_logic ;
      window_10_15 : IN std_logic ;
      window_10_14 : IN std_logic ;
      window_10_13 : IN std_logic ;
      window_10_12 : IN std_logic ;
      window_10_11 : IN std_logic ;
      window_10_10 : IN std_logic ;
      window_10_9 : IN std_logic ;
      window_10_8 : IN std_logic ;
      window_10_7 : IN std_logic ;
      window_10_6 : IN std_logic ;
      window_10_5 : IN std_logic ;
      window_10_4 : IN std_logic ;
      window_10_3 : IN std_logic ;
      window_10_2 : IN std_logic ;
      window_10_1 : IN std_logic ;
      window_10_0 : IN std_logic ;
      window_9_15 : IN std_logic ;
      window_9_14 : IN std_logic ;
      window_9_13 : IN std_logic ;
      window_9_12 : IN std_logic ;
      window_9_11 : IN std_logic ;
      window_9_10 : IN std_logic ;
      window_9_9 : IN std_logic ;
      window_9_8 : IN std_logic ;
      window_9_7 : IN std_logic ;
      window_9_6 : IN std_logic ;
      window_9_5 : IN std_logic ;
      window_9_4 : IN std_logic ;
      window_9_3 : IN std_logic ;
      window_9_2 : IN std_logic ;
      window_9_1 : IN std_logic ;
      window_9_0 : IN std_logic ;
      window_8_15 : IN std_logic ;
      window_8_14 : IN std_logic ;
      window_8_13 : IN std_logic ;
      window_8_12 : IN std_logic ;
      window_8_11 : IN std_logic ;
      window_8_10 : IN std_logic ;
      window_8_9 : IN std_logic ;
      window_8_8 : IN std_logic ;
      window_8_7 : IN std_logic ;
      window_8_6 : IN std_logic ;
      window_8_5 : IN std_logic ;
      window_8_4 : IN std_logic ;
      window_8_3 : IN std_logic ;
      window_8_2 : IN std_logic ;
      window_8_1 : IN std_logic ;
      window_8_0 : IN std_logic ;
      window_7_15 : IN std_logic ;
      window_7_14 : IN std_logic ;
      window_7_13 : IN std_logic ;
      window_7_12 : IN std_logic ;
      window_7_11 : IN std_logic ;
      window_7_10 : IN std_logic ;
      window_7_9 : IN std_logic ;
      window_7_8 : IN std_logic ;
      window_7_7 : IN std_logic ;
      window_7_6 : IN std_logic ;
      window_7_5 : IN std_logic ;
      window_7_4 : IN std_logic ;
      window_7_3 : IN std_logic ;
      window_7_2 : IN std_logic ;
      window_7_1 : IN std_logic ;
      window_7_0 : IN std_logic ;
      window_6_15 : IN std_logic ;
      window_6_14 : IN std_logic ;
      window_6_13 : IN std_logic ;
      window_6_12 : IN std_logic ;
      window_6_11 : IN std_logic ;
      window_6_10 : IN std_logic ;
      window_6_9 : IN std_logic ;
      window_6_8 : IN std_logic ;
      window_6_7 : IN std_logic ;
      window_6_6 : IN std_logic ;
      window_6_5 : IN std_logic ;
      window_6_4 : IN std_logic ;
      window_6_3 : IN std_logic ;
      window_6_2 : IN std_logic ;
      window_6_1 : IN std_logic ;
      window_6_0 : IN std_logic ;
      window_5_15 : IN std_logic ;
      window_5_14 : IN std_logic ;
      window_5_13 : IN std_logic ;
      window_5_12 : IN std_logic ;
      window_5_11 : IN std_logic ;
      window_5_10 : IN std_logic ;
      window_5_9 : IN std_logic ;
      window_5_8 : IN std_logic ;
      window_5_7 : IN std_logic ;
      window_5_6 : IN std_logic ;
      window_5_5 : IN std_logic ;
      window_5_4 : IN std_logic ;
      window_5_3 : IN std_logic ;
      window_5_2 : IN std_logic ;
      window_5_1 : IN std_logic ;
      window_5_0 : IN std_logic ;
      window_4_15 : IN std_logic ;
      window_4_14 : IN std_logic ;
      window_4_13 : IN std_logic ;
      window_4_12 : IN std_logic ;
      window_4_11 : IN std_logic ;
      window_4_10 : IN std_logic ;
      window_4_9 : IN std_logic ;
      window_4_8 : IN std_logic ;
      window_4_7 : IN std_logic ;
      window_4_6 : IN std_logic ;
      window_4_5 : IN std_logic ;
      window_4_4 : IN std_logic ;
      window_4_3 : IN std_logic ;
      window_4_2 : IN std_logic ;
      window_4_1 : IN std_logic ;
      window_4_0 : IN std_logic ;
      window_3_15 : IN std_logic ;
      window_3_14 : IN std_logic ;
      window_3_13 : IN std_logic ;
      window_3_12 : IN std_logic ;
      window_3_11 : IN std_logic ;
      window_3_10 : IN std_logic ;
      window_3_9 : IN std_logic ;
      window_3_8 : IN std_logic ;
      window_3_7 : IN std_logic ;
      window_3_6 : IN std_logic ;
      window_3_5 : IN std_logic ;
      window_3_4 : IN std_logic ;
      window_3_3 : IN std_logic ;
      window_3_2 : IN std_logic ;
      window_3_1 : IN std_logic ;
      window_3_0 : IN std_logic ;
      window_2_15 : IN std_logic ;
      window_2_14 : IN std_logic ;
      window_2_13 : IN std_logic ;
      window_2_12 : IN std_logic ;
      window_2_11 : IN std_logic ;
      window_2_10 : IN std_logic ;
      window_2_9 : IN std_logic ;
      window_2_8 : IN std_logic ;
      window_2_7 : IN std_logic ;
      window_2_6 : IN std_logic ;
      window_2_5 : IN std_logic ;
      window_2_4 : IN std_logic ;
      window_2_3 : IN std_logic ;
      window_2_2 : IN std_logic ;
      window_2_1 : IN std_logic ;
      window_2_0 : IN std_logic ;
      window_1_15 : IN std_logic ;
      window_1_14 : IN std_logic ;
      window_1_13 : IN std_logic ;
      window_1_12 : IN std_logic ;
      window_1_11 : IN std_logic ;
      window_1_10 : IN std_logic ;
      window_1_9 : IN std_logic ;
      window_1_8 : IN std_logic ;
      window_1_7 : IN std_logic ;
      window_1_6 : IN std_logic ;
      window_1_5 : IN std_logic ;
      window_1_4 : IN std_logic ;
      window_1_3 : IN std_logic ;
      window_1_2 : IN std_logic ;
      window_1_1 : IN std_logic ;
      window_1_0 : IN std_logic ;
      window_0_15 : IN std_logic ;
      window_0_14 : IN std_logic ;
      window_0_13 : IN std_logic ;
      window_0_12 : IN std_logic ;
      window_0_11 : IN std_logic ;
      window_0_10 : IN std_logic ;
      window_0_9 : IN std_logic ;
      window_0_8 : IN std_logic ;
      window_0_7 : IN std_logic ;
      window_0_6 : IN std_logic ;
      window_0_5 : IN std_logic ;
      window_0_4 : IN std_logic ;
      window_0_3 : IN std_logic ;
      window_0_2 : IN std_logic ;
      window_0_1 : IN std_logic ;
      window_0_0 : IN std_logic ;
      outputs_24_15 : OUT std_logic ;
      outputs_24_14 : OUT std_logic ;
      outputs_24_13 : OUT std_logic ;
      outputs_24_12 : OUT std_logic ;
      outputs_24_11 : OUT std_logic ;
      outputs_24_10 : OUT std_logic ;
      outputs_24_9 : OUT std_logic ;
      outputs_24_8 : OUT std_logic ;
      outputs_24_7 : OUT std_logic ;
      outputs_24_6 : OUT std_logic ;
      outputs_24_5 : OUT std_logic ;
      outputs_24_4 : OUT std_logic ;
      outputs_24_3 : OUT std_logic ;
      outputs_24_2 : OUT std_logic ;
      outputs_24_1 : OUT std_logic ;
      outputs_24_0 : OUT std_logic ;
      outputs_23_15 : OUT std_logic ;
      outputs_23_14 : OUT std_logic ;
      outputs_23_13 : OUT std_logic ;
      outputs_23_12 : OUT std_logic ;
      outputs_23_11 : OUT std_logic ;
      outputs_23_10 : OUT std_logic ;
      outputs_23_9 : OUT std_logic ;
      outputs_23_8 : OUT std_logic ;
      outputs_23_7 : OUT std_logic ;
      outputs_23_6 : OUT std_logic ;
      outputs_23_5 : OUT std_logic ;
      outputs_23_4 : OUT std_logic ;
      outputs_23_3 : OUT std_logic ;
      outputs_23_2 : OUT std_logic ;
      outputs_23_1 : OUT std_logic ;
      outputs_23_0 : OUT std_logic ;
      outputs_22_15 : OUT std_logic ;
      outputs_22_14 : OUT std_logic ;
      outputs_22_13 : OUT std_logic ;
      outputs_22_12 : OUT std_logic ;
      outputs_22_11 : OUT std_logic ;
      outputs_22_10 : OUT std_logic ;
      outputs_22_9 : OUT std_logic ;
      outputs_22_8 : OUT std_logic ;
      outputs_22_7 : OUT std_logic ;
      outputs_22_6 : OUT std_logic ;
      outputs_22_5 : OUT std_logic ;
      outputs_22_4 : OUT std_logic ;
      outputs_22_3 : OUT std_logic ;
      outputs_22_2 : OUT std_logic ;
      outputs_22_1 : OUT std_logic ;
      outputs_22_0 : OUT std_logic ;
      outputs_21_15 : OUT std_logic ;
      outputs_21_14 : OUT std_logic ;
      outputs_21_13 : OUT std_logic ;
      outputs_21_12 : OUT std_logic ;
      outputs_21_11 : OUT std_logic ;
      outputs_21_10 : OUT std_logic ;
      outputs_21_9 : OUT std_logic ;
      outputs_21_8 : OUT std_logic ;
      outputs_21_7 : OUT std_logic ;
      outputs_21_6 : OUT std_logic ;
      outputs_21_5 : OUT std_logic ;
      outputs_21_4 : OUT std_logic ;
      outputs_21_3 : OUT std_logic ;
      outputs_21_2 : OUT std_logic ;
      outputs_21_1 : OUT std_logic ;
      outputs_21_0 : OUT std_logic ;
      outputs_20_15 : OUT std_logic ;
      outputs_20_14 : OUT std_logic ;
      outputs_20_13 : OUT std_logic ;
      outputs_20_12 : OUT std_logic ;
      outputs_20_11 : OUT std_logic ;
      outputs_20_10 : OUT std_logic ;
      outputs_20_9 : OUT std_logic ;
      outputs_20_8 : OUT std_logic ;
      outputs_20_7 : OUT std_logic ;
      outputs_20_6 : OUT std_logic ;
      outputs_20_5 : OUT std_logic ;
      outputs_20_4 : OUT std_logic ;
      outputs_20_3 : OUT std_logic ;
      outputs_20_2 : OUT std_logic ;
      outputs_20_1 : OUT std_logic ;
      outputs_20_0 : OUT std_logic ;
      outputs_19_15 : OUT std_logic ;
      outputs_19_14 : OUT std_logic ;
      outputs_19_13 : OUT std_logic ;
      outputs_19_12 : OUT std_logic ;
      outputs_19_11 : OUT std_logic ;
      outputs_19_10 : OUT std_logic ;
      outputs_19_9 : OUT std_logic ;
      outputs_19_8 : OUT std_logic ;
      outputs_19_7 : OUT std_logic ;
      outputs_19_6 : OUT std_logic ;
      outputs_19_5 : OUT std_logic ;
      outputs_19_4 : OUT std_logic ;
      outputs_19_3 : OUT std_logic ;
      outputs_19_2 : OUT std_logic ;
      outputs_19_1 : OUT std_logic ;
      outputs_19_0 : OUT std_logic ;
      outputs_18_15 : OUT std_logic ;
      outputs_18_14 : OUT std_logic ;
      outputs_18_13 : OUT std_logic ;
      outputs_18_12 : OUT std_logic ;
      outputs_18_11 : OUT std_logic ;
      outputs_18_10 : OUT std_logic ;
      outputs_18_9 : OUT std_logic ;
      outputs_18_8 : OUT std_logic ;
      outputs_18_7 : OUT std_logic ;
      outputs_18_6 : OUT std_logic ;
      outputs_18_5 : OUT std_logic ;
      outputs_18_4 : OUT std_logic ;
      outputs_18_3 : OUT std_logic ;
      outputs_18_2 : OUT std_logic ;
      outputs_18_1 : OUT std_logic ;
      outputs_18_0 : OUT std_logic ;
      outputs_17_15 : OUT std_logic ;
      outputs_17_14 : OUT std_logic ;
      outputs_17_13 : OUT std_logic ;
      outputs_17_12 : OUT std_logic ;
      outputs_17_11 : OUT std_logic ;
      outputs_17_10 : OUT std_logic ;
      outputs_17_9 : OUT std_logic ;
      outputs_17_8 : OUT std_logic ;
      outputs_17_7 : OUT std_logic ;
      outputs_17_6 : OUT std_logic ;
      outputs_17_5 : OUT std_logic ;
      outputs_17_4 : OUT std_logic ;
      outputs_17_3 : OUT std_logic ;
      outputs_17_2 : OUT std_logic ;
      outputs_17_1 : OUT std_logic ;
      outputs_17_0 : OUT std_logic ;
      outputs_16_15 : OUT std_logic ;
      outputs_16_14 : OUT std_logic ;
      outputs_16_13 : OUT std_logic ;
      outputs_16_12 : OUT std_logic ;
      outputs_16_11 : OUT std_logic ;
      outputs_16_10 : OUT std_logic ;
      outputs_16_9 : OUT std_logic ;
      outputs_16_8 : OUT std_logic ;
      outputs_16_7 : OUT std_logic ;
      outputs_16_6 : OUT std_logic ;
      outputs_16_5 : OUT std_logic ;
      outputs_16_4 : OUT std_logic ;
      outputs_16_3 : OUT std_logic ;
      outputs_16_2 : OUT std_logic ;
      outputs_16_1 : OUT std_logic ;
      outputs_16_0 : OUT std_logic ;
      outputs_15_15 : OUT std_logic ;
      outputs_15_14 : OUT std_logic ;
      outputs_15_13 : OUT std_logic ;
      outputs_15_12 : OUT std_logic ;
      outputs_15_11 : OUT std_logic ;
      outputs_15_10 : OUT std_logic ;
      outputs_15_9 : OUT std_logic ;
      outputs_15_8 : OUT std_logic ;
      outputs_15_7 : OUT std_logic ;
      outputs_15_6 : OUT std_logic ;
      outputs_15_5 : OUT std_logic ;
      outputs_15_4 : OUT std_logic ;
      outputs_15_3 : OUT std_logic ;
      outputs_15_2 : OUT std_logic ;
      outputs_15_1 : OUT std_logic ;
      outputs_15_0 : OUT std_logic ;
      outputs_14_15 : OUT std_logic ;
      outputs_14_14 : OUT std_logic ;
      outputs_14_13 : OUT std_logic ;
      outputs_14_12 : OUT std_logic ;
      outputs_14_11 : OUT std_logic ;
      outputs_14_10 : OUT std_logic ;
      outputs_14_9 : OUT std_logic ;
      outputs_14_8 : OUT std_logic ;
      outputs_14_7 : OUT std_logic ;
      outputs_14_6 : OUT std_logic ;
      outputs_14_5 : OUT std_logic ;
      outputs_14_4 : OUT std_logic ;
      outputs_14_3 : OUT std_logic ;
      outputs_14_2 : OUT std_logic ;
      outputs_14_1 : OUT std_logic ;
      outputs_14_0 : OUT std_logic ;
      outputs_13_15 : OUT std_logic ;
      outputs_13_14 : OUT std_logic ;
      outputs_13_13 : OUT std_logic ;
      outputs_13_12 : OUT std_logic ;
      outputs_13_11 : OUT std_logic ;
      outputs_13_10 : OUT std_logic ;
      outputs_13_9 : OUT std_logic ;
      outputs_13_8 : OUT std_logic ;
      outputs_13_7 : OUT std_logic ;
      outputs_13_6 : OUT std_logic ;
      outputs_13_5 : OUT std_logic ;
      outputs_13_4 : OUT std_logic ;
      outputs_13_3 : OUT std_logic ;
      outputs_13_2 : OUT std_logic ;
      outputs_13_1 : OUT std_logic ;
      outputs_13_0 : OUT std_logic ;
      outputs_12_15 : OUT std_logic ;
      outputs_12_14 : OUT std_logic ;
      outputs_12_13 : OUT std_logic ;
      outputs_12_12 : OUT std_logic ;
      outputs_12_11 : OUT std_logic ;
      outputs_12_10 : OUT std_logic ;
      outputs_12_9 : OUT std_logic ;
      outputs_12_8 : OUT std_logic ;
      outputs_12_7 : OUT std_logic ;
      outputs_12_6 : OUT std_logic ;
      outputs_12_5 : OUT std_logic ;
      outputs_12_4 : OUT std_logic ;
      outputs_12_3 : OUT std_logic ;
      outputs_12_2 : OUT std_logic ;
      outputs_12_1 : OUT std_logic ;
      outputs_12_0 : OUT std_logic ;
      outputs_11_15 : OUT std_logic ;
      outputs_11_14 : OUT std_logic ;
      outputs_11_13 : OUT std_logic ;
      outputs_11_12 : OUT std_logic ;
      outputs_11_11 : OUT std_logic ;
      outputs_11_10 : OUT std_logic ;
      outputs_11_9 : OUT std_logic ;
      outputs_11_8 : OUT std_logic ;
      outputs_11_7 : OUT std_logic ;
      outputs_11_6 : OUT std_logic ;
      outputs_11_5 : OUT std_logic ;
      outputs_11_4 : OUT std_logic ;
      outputs_11_3 : OUT std_logic ;
      outputs_11_2 : OUT std_logic ;
      outputs_11_1 : OUT std_logic ;
      outputs_11_0 : OUT std_logic ;
      outputs_10_15 : OUT std_logic ;
      outputs_10_14 : OUT std_logic ;
      outputs_10_13 : OUT std_logic ;
      outputs_10_12 : OUT std_logic ;
      outputs_10_11 : OUT std_logic ;
      outputs_10_10 : OUT std_logic ;
      outputs_10_9 : OUT std_logic ;
      outputs_10_8 : OUT std_logic ;
      outputs_10_7 : OUT std_logic ;
      outputs_10_6 : OUT std_logic ;
      outputs_10_5 : OUT std_logic ;
      outputs_10_4 : OUT std_logic ;
      outputs_10_3 : OUT std_logic ;
      outputs_10_2 : OUT std_logic ;
      outputs_10_1 : OUT std_logic ;
      outputs_10_0 : OUT std_logic ;
      outputs_9_15 : OUT std_logic ;
      outputs_9_14 : OUT std_logic ;
      outputs_9_13 : OUT std_logic ;
      outputs_9_12 : OUT std_logic ;
      outputs_9_11 : OUT std_logic ;
      outputs_9_10 : OUT std_logic ;
      outputs_9_9 : OUT std_logic ;
      outputs_9_8 : OUT std_logic ;
      outputs_9_7 : OUT std_logic ;
      outputs_9_6 : OUT std_logic ;
      outputs_9_5 : OUT std_logic ;
      outputs_9_4 : OUT std_logic ;
      outputs_9_3 : OUT std_logic ;
      outputs_9_2 : OUT std_logic ;
      outputs_9_1 : OUT std_logic ;
      outputs_9_0 : OUT std_logic ;
      outputs_8_15 : OUT std_logic ;
      outputs_8_14 : OUT std_logic ;
      outputs_8_13 : OUT std_logic ;
      outputs_8_12 : OUT std_logic ;
      outputs_8_11 : OUT std_logic ;
      outputs_8_10 : OUT std_logic ;
      outputs_8_9 : OUT std_logic ;
      outputs_8_8 : OUT std_logic ;
      outputs_8_7 : OUT std_logic ;
      outputs_8_6 : OUT std_logic ;
      outputs_8_5 : OUT std_logic ;
      outputs_8_4 : OUT std_logic ;
      outputs_8_3 : OUT std_logic ;
      outputs_8_2 : OUT std_logic ;
      outputs_8_1 : OUT std_logic ;
      outputs_8_0 : OUT std_logic ;
      outputs_7_15 : OUT std_logic ;
      outputs_7_14 : OUT std_logic ;
      outputs_7_13 : OUT std_logic ;
      outputs_7_12 : OUT std_logic ;
      outputs_7_11 : OUT std_logic ;
      outputs_7_10 : OUT std_logic ;
      outputs_7_9 : OUT std_logic ;
      outputs_7_8 : OUT std_logic ;
      outputs_7_7 : OUT std_logic ;
      outputs_7_6 : OUT std_logic ;
      outputs_7_5 : OUT std_logic ;
      outputs_7_4 : OUT std_logic ;
      outputs_7_3 : OUT std_logic ;
      outputs_7_2 : OUT std_logic ;
      outputs_7_1 : OUT std_logic ;
      outputs_7_0 : OUT std_logic ;
      outputs_6_15 : OUT std_logic ;
      outputs_6_14 : OUT std_logic ;
      outputs_6_13 : OUT std_logic ;
      outputs_6_12 : OUT std_logic ;
      outputs_6_11 : OUT std_logic ;
      outputs_6_10 : OUT std_logic ;
      outputs_6_9 : OUT std_logic ;
      outputs_6_8 : OUT std_logic ;
      outputs_6_7 : OUT std_logic ;
      outputs_6_6 : OUT std_logic ;
      outputs_6_5 : OUT std_logic ;
      outputs_6_4 : OUT std_logic ;
      outputs_6_3 : OUT std_logic ;
      outputs_6_2 : OUT std_logic ;
      outputs_6_1 : OUT std_logic ;
      outputs_6_0 : OUT std_logic ;
      outputs_5_15 : OUT std_logic ;
      outputs_5_14 : OUT std_logic ;
      outputs_5_13 : OUT std_logic ;
      outputs_5_12 : OUT std_logic ;
      outputs_5_11 : OUT std_logic ;
      outputs_5_10 : OUT std_logic ;
      outputs_5_9 : OUT std_logic ;
      outputs_5_8 : OUT std_logic ;
      outputs_5_7 : OUT std_logic ;
      outputs_5_6 : OUT std_logic ;
      outputs_5_5 : OUT std_logic ;
      outputs_5_4 : OUT std_logic ;
      outputs_5_3 : OUT std_logic ;
      outputs_5_2 : OUT std_logic ;
      outputs_5_1 : OUT std_logic ;
      outputs_5_0 : OUT std_logic ;
      outputs_4_15 : OUT std_logic ;
      outputs_4_14 : OUT std_logic ;
      outputs_4_13 : OUT std_logic ;
      outputs_4_12 : OUT std_logic ;
      outputs_4_11 : OUT std_logic ;
      outputs_4_10 : OUT std_logic ;
      outputs_4_9 : OUT std_logic ;
      outputs_4_8 : OUT std_logic ;
      outputs_4_7 : OUT std_logic ;
      outputs_4_6 : OUT std_logic ;
      outputs_4_5 : OUT std_logic ;
      outputs_4_4 : OUT std_logic ;
      outputs_4_3 : OUT std_logic ;
      outputs_4_2 : OUT std_logic ;
      outputs_4_1 : OUT std_logic ;
      outputs_4_0 : OUT std_logic ;
      outputs_3_15 : OUT std_logic ;
      outputs_3_14 : OUT std_logic ;
      outputs_3_13 : OUT std_logic ;
      outputs_3_12 : OUT std_logic ;
      outputs_3_11 : OUT std_logic ;
      outputs_3_10 : OUT std_logic ;
      outputs_3_9 : OUT std_logic ;
      outputs_3_8 : OUT std_logic ;
      outputs_3_7 : OUT std_logic ;
      outputs_3_6 : OUT std_logic ;
      outputs_3_5 : OUT std_logic ;
      outputs_3_4 : OUT std_logic ;
      outputs_3_3 : OUT std_logic ;
      outputs_3_2 : OUT std_logic ;
      outputs_3_1 : OUT std_logic ;
      outputs_3_0 : OUT std_logic ;
      outputs_2_15 : OUT std_logic ;
      outputs_2_14 : OUT std_logic ;
      outputs_2_13 : OUT std_logic ;
      outputs_2_12 : OUT std_logic ;
      outputs_2_11 : OUT std_logic ;
      outputs_2_10 : OUT std_logic ;
      outputs_2_9 : OUT std_logic ;
      outputs_2_8 : OUT std_logic ;
      outputs_2_7 : OUT std_logic ;
      outputs_2_6 : OUT std_logic ;
      outputs_2_5 : OUT std_logic ;
      outputs_2_4 : OUT std_logic ;
      outputs_2_3 : OUT std_logic ;
      outputs_2_2 : OUT std_logic ;
      outputs_2_1 : OUT std_logic ;
      outputs_2_0 : OUT std_logic ;
      outputs_1_15 : OUT std_logic ;
      outputs_1_14 : OUT std_logic ;
      outputs_1_13 : OUT std_logic ;
      outputs_1_12 : OUT std_logic ;
      outputs_1_11 : OUT std_logic ;
      outputs_1_10 : OUT std_logic ;
      outputs_1_9 : OUT std_logic ;
      outputs_1_8 : OUT std_logic ;
      outputs_1_7 : OUT std_logic ;
      outputs_1_6 : OUT std_logic ;
      outputs_1_5 : OUT std_logic ;
      outputs_1_4 : OUT std_logic ;
      outputs_1_3 : OUT std_logic ;
      outputs_1_2 : OUT std_logic ;
      outputs_1_1 : OUT std_logic ;
      outputs_1_0 : OUT std_logic ;
      outputs_0_15 : OUT std_logic ;
      outputs_0_14 : OUT std_logic ;
      outputs_0_13 : OUT std_logic ;
      outputs_0_12 : OUT std_logic ;
      outputs_0_11 : OUT std_logic ;
      outputs_0_10 : OUT std_logic ;
      outputs_0_9 : OUT std_logic ;
      outputs_0_8 : OUT std_logic ;
      outputs_0_7 : OUT std_logic ;
      outputs_0_6 : OUT std_logic ;
      outputs_0_5 : OUT std_logic ;
      outputs_0_4 : OUT std_logic ;
      outputs_0_3 : OUT std_logic ;
      outputs_0_2 : OUT std_logic ;
      outputs_0_1 : OUT std_logic ;
      outputs_0_0 : OUT std_logic ;
      clk : IN std_logic ;
      start : IN std_logic ;
      rst : IN std_logic ;
      doneOut : OUT std_logic ;
      workingOut : OUT std_logic) ;
end CNNMuls_25 ;

architecture CNNMulsArch_unfold_2221 of CNNMuls_25 is
   component TransitionDetector
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
         Q : OUT std_logic_vector (0 DOWNTO 0)) ;
   end component ;
   signal doneOut_EXMPLR, workingOut_EXMPLR, counterRst, restartDetection, 
      firstStart, nx1, PWR, nx12, nx15: std_logic ;
   
   signal DANGLING : std_logic_vector (2 downto 0 );

begin
   outputs_24_15 <= nx1 ;
   outputs_24_14 <= nx1 ;
   outputs_24_13 <= nx1 ;
   outputs_24_12 <= nx1 ;
   outputs_24_11 <= nx1 ;
   outputs_24_10 <= nx1 ;
   outputs_24_9 <= nx1 ;
   outputs_24_8 <= nx1 ;
   outputs_24_7 <= nx1 ;
   outputs_24_6 <= nx1 ;
   outputs_24_5 <= nx1 ;
   outputs_24_4 <= nx1 ;
   outputs_24_3 <= nx1 ;
   outputs_24_2 <= nx1 ;
   outputs_24_1 <= nx1 ;
   outputs_24_0 <= nx1 ;
   outputs_23_15 <= nx1 ;
   outputs_23_14 <= nx1 ;
   outputs_23_13 <= nx1 ;
   outputs_23_12 <= nx1 ;
   outputs_23_11 <= nx1 ;
   outputs_23_10 <= nx1 ;
   outputs_23_9 <= nx1 ;
   outputs_23_8 <= nx1 ;
   outputs_23_7 <= nx1 ;
   outputs_23_6 <= nx1 ;
   outputs_23_5 <= nx1 ;
   outputs_23_4 <= nx1 ;
   outputs_23_3 <= nx1 ;
   outputs_23_2 <= nx1 ;
   outputs_23_1 <= nx1 ;
   outputs_23_0 <= nx1 ;
   outputs_22_15 <= nx1 ;
   outputs_22_14 <= nx1 ;
   outputs_22_13 <= nx1 ;
   outputs_22_12 <= nx1 ;
   outputs_22_11 <= nx1 ;
   outputs_22_10 <= nx1 ;
   outputs_22_9 <= nx1 ;
   outputs_22_8 <= nx1 ;
   outputs_22_7 <= nx1 ;
   outputs_22_6 <= nx1 ;
   outputs_22_5 <= nx1 ;
   outputs_22_4 <= nx1 ;
   outputs_22_3 <= nx1 ;
   outputs_22_2 <= nx1 ;
   outputs_22_1 <= nx1 ;
   outputs_22_0 <= nx1 ;
   outputs_21_15 <= nx1 ;
   outputs_21_14 <= nx1 ;
   outputs_21_13 <= nx1 ;
   outputs_21_12 <= nx1 ;
   outputs_21_11 <= nx1 ;
   outputs_21_10 <= nx1 ;
   outputs_21_9 <= nx1 ;
   outputs_21_8 <= nx1 ;
   outputs_21_7 <= nx1 ;
   outputs_21_6 <= nx1 ;
   outputs_21_5 <= nx1 ;
   outputs_21_4 <= nx1 ;
   outputs_21_3 <= nx1 ;
   outputs_21_2 <= nx1 ;
   outputs_21_1 <= nx1 ;
   outputs_21_0 <= nx1 ;
   outputs_20_15 <= nx1 ;
   outputs_20_14 <= nx1 ;
   outputs_20_13 <= nx1 ;
   outputs_20_12 <= nx1 ;
   outputs_20_11 <= nx1 ;
   outputs_20_10 <= nx1 ;
   outputs_20_9 <= nx1 ;
   outputs_20_8 <= nx1 ;
   outputs_20_7 <= nx1 ;
   outputs_20_6 <= nx1 ;
   outputs_20_5 <= nx1 ;
   outputs_20_4 <= nx1 ;
   outputs_20_3 <= nx1 ;
   outputs_20_2 <= nx1 ;
   outputs_20_1 <= nx1 ;
   outputs_20_0 <= nx1 ;
   outputs_19_15 <= nx1 ;
   outputs_19_14 <= nx1 ;
   outputs_19_13 <= nx1 ;
   outputs_19_12 <= nx1 ;
   outputs_19_11 <= nx1 ;
   outputs_19_10 <= nx1 ;
   outputs_19_9 <= nx1 ;
   outputs_19_8 <= nx1 ;
   outputs_19_7 <= nx1 ;
   outputs_19_6 <= nx1 ;
   outputs_19_5 <= nx1 ;
   outputs_19_4 <= nx1 ;
   outputs_19_3 <= nx1 ;
   outputs_19_2 <= nx1 ;
   outputs_19_1 <= nx1 ;
   outputs_19_0 <= nx1 ;
   outputs_18_15 <= nx1 ;
   outputs_18_14 <= nx1 ;
   outputs_18_13 <= nx1 ;
   outputs_18_12 <= nx1 ;
   outputs_18_11 <= nx1 ;
   outputs_18_10 <= nx1 ;
   outputs_18_9 <= nx1 ;
   outputs_18_8 <= nx1 ;
   outputs_18_7 <= nx1 ;
   outputs_18_6 <= nx1 ;
   outputs_18_5 <= nx1 ;
   outputs_18_4 <= nx1 ;
   outputs_18_3 <= nx1 ;
   outputs_18_2 <= nx1 ;
   outputs_18_1 <= nx1 ;
   outputs_18_0 <= nx1 ;
   outputs_17_15 <= nx1 ;
   outputs_17_14 <= nx1 ;
   outputs_17_13 <= nx1 ;
   outputs_17_12 <= nx1 ;
   outputs_17_11 <= nx1 ;
   outputs_17_10 <= nx1 ;
   outputs_17_9 <= nx1 ;
   outputs_17_8 <= nx1 ;
   outputs_17_7 <= nx1 ;
   outputs_17_6 <= nx1 ;
   outputs_17_5 <= nx1 ;
   outputs_17_4 <= nx1 ;
   outputs_17_3 <= nx1 ;
   outputs_17_2 <= nx1 ;
   outputs_17_1 <= nx1 ;
   outputs_17_0 <= nx1 ;
   outputs_16_15 <= nx1 ;
   outputs_16_14 <= nx1 ;
   outputs_16_13 <= nx1 ;
   outputs_16_12 <= nx1 ;
   outputs_16_11 <= nx1 ;
   outputs_16_10 <= nx1 ;
   outputs_16_9 <= nx1 ;
   outputs_16_8 <= nx1 ;
   outputs_16_7 <= nx1 ;
   outputs_16_6 <= nx1 ;
   outputs_16_5 <= nx1 ;
   outputs_16_4 <= nx1 ;
   outputs_16_3 <= nx1 ;
   outputs_16_2 <= nx1 ;
   outputs_16_1 <= nx1 ;
   outputs_16_0 <= nx1 ;
   outputs_15_15 <= nx1 ;
   outputs_15_14 <= nx1 ;
   outputs_15_13 <= nx1 ;
   outputs_15_12 <= nx1 ;
   outputs_15_11 <= nx1 ;
   outputs_15_10 <= nx1 ;
   outputs_15_9 <= nx1 ;
   outputs_15_8 <= nx1 ;
   outputs_15_7 <= nx1 ;
   outputs_15_6 <= nx1 ;
   outputs_15_5 <= nx1 ;
   outputs_15_4 <= nx1 ;
   outputs_15_3 <= nx1 ;
   outputs_15_2 <= nx1 ;
   outputs_15_1 <= nx1 ;
   outputs_15_0 <= nx1 ;
   outputs_14_15 <= nx1 ;
   outputs_14_14 <= nx1 ;
   outputs_14_13 <= nx1 ;
   outputs_14_12 <= nx1 ;
   outputs_14_11 <= nx1 ;
   outputs_14_10 <= nx1 ;
   outputs_14_9 <= nx1 ;
   outputs_14_8 <= nx1 ;
   outputs_14_7 <= nx1 ;
   outputs_14_6 <= nx1 ;
   outputs_14_5 <= nx1 ;
   outputs_14_4 <= nx1 ;
   outputs_14_3 <= nx1 ;
   outputs_14_2 <= nx1 ;
   outputs_14_1 <= nx1 ;
   outputs_14_0 <= nx1 ;
   outputs_13_15 <= nx1 ;
   outputs_13_14 <= nx1 ;
   outputs_13_13 <= nx1 ;
   outputs_13_12 <= nx1 ;
   outputs_13_11 <= nx1 ;
   outputs_13_10 <= nx1 ;
   outputs_13_9 <= nx1 ;
   outputs_13_8 <= nx1 ;
   outputs_13_7 <= nx1 ;
   outputs_13_6 <= nx1 ;
   outputs_13_5 <= nx1 ;
   outputs_13_4 <= nx1 ;
   outputs_13_3 <= nx1 ;
   outputs_13_2 <= nx1 ;
   outputs_13_1 <= nx1 ;
   outputs_13_0 <= nx1 ;
   outputs_12_15 <= nx1 ;
   outputs_12_14 <= nx1 ;
   outputs_12_13 <= nx1 ;
   outputs_12_12 <= nx1 ;
   outputs_12_11 <= nx1 ;
   outputs_12_10 <= nx1 ;
   outputs_12_9 <= nx1 ;
   outputs_12_8 <= nx1 ;
   outputs_12_7 <= nx1 ;
   outputs_12_6 <= nx1 ;
   outputs_12_5 <= nx1 ;
   outputs_12_4 <= nx1 ;
   outputs_12_3 <= nx1 ;
   outputs_12_2 <= nx1 ;
   outputs_12_1 <= nx1 ;
   outputs_12_0 <= nx1 ;
   outputs_11_15 <= nx1 ;
   outputs_11_14 <= nx1 ;
   outputs_11_13 <= nx1 ;
   outputs_11_12 <= nx1 ;
   outputs_11_11 <= nx1 ;
   outputs_11_10 <= nx1 ;
   outputs_11_9 <= nx1 ;
   outputs_11_8 <= nx1 ;
   outputs_11_7 <= nx1 ;
   outputs_11_6 <= nx1 ;
   outputs_11_5 <= nx1 ;
   outputs_11_4 <= nx1 ;
   outputs_11_3 <= nx1 ;
   outputs_11_2 <= nx1 ;
   outputs_11_1 <= nx1 ;
   outputs_11_0 <= nx1 ;
   outputs_10_15 <= nx1 ;
   outputs_10_14 <= nx1 ;
   outputs_10_13 <= nx1 ;
   outputs_10_12 <= nx1 ;
   outputs_10_11 <= nx1 ;
   outputs_10_10 <= nx1 ;
   outputs_10_9 <= nx1 ;
   outputs_10_8 <= nx1 ;
   outputs_10_7 <= nx1 ;
   outputs_10_6 <= nx1 ;
   outputs_10_5 <= nx1 ;
   outputs_10_4 <= nx1 ;
   outputs_10_3 <= nx1 ;
   outputs_10_2 <= nx1 ;
   outputs_10_1 <= nx1 ;
   outputs_10_0 <= nx1 ;
   outputs_9_15 <= nx1 ;
   outputs_9_14 <= nx1 ;
   outputs_9_13 <= nx1 ;
   outputs_9_12 <= nx1 ;
   outputs_9_11 <= nx1 ;
   outputs_9_10 <= nx1 ;
   outputs_9_9 <= nx1 ;
   outputs_9_8 <= nx1 ;
   outputs_9_7 <= nx1 ;
   outputs_9_6 <= nx1 ;
   outputs_9_5 <= nx1 ;
   outputs_9_4 <= nx1 ;
   outputs_9_3 <= nx1 ;
   outputs_9_2 <= nx1 ;
   outputs_9_1 <= nx1 ;
   outputs_9_0 <= nx1 ;
   outputs_8_15 <= nx1 ;
   outputs_8_14 <= nx1 ;
   outputs_8_13 <= nx1 ;
   outputs_8_12 <= nx1 ;
   outputs_8_11 <= nx1 ;
   outputs_8_10 <= nx1 ;
   outputs_8_9 <= nx1 ;
   outputs_8_8 <= nx1 ;
   outputs_8_7 <= nx1 ;
   outputs_8_6 <= nx1 ;
   outputs_8_5 <= nx1 ;
   outputs_8_4 <= nx1 ;
   outputs_8_3 <= nx1 ;
   outputs_8_2 <= nx1 ;
   outputs_8_1 <= nx1 ;
   outputs_8_0 <= nx1 ;
   outputs_7_15 <= nx1 ;
   outputs_7_14 <= nx1 ;
   outputs_7_13 <= nx1 ;
   outputs_7_12 <= nx1 ;
   outputs_7_11 <= nx1 ;
   outputs_7_10 <= nx1 ;
   outputs_7_9 <= nx1 ;
   outputs_7_8 <= nx1 ;
   outputs_7_7 <= nx1 ;
   outputs_7_6 <= nx1 ;
   outputs_7_5 <= nx1 ;
   outputs_7_4 <= nx1 ;
   outputs_7_3 <= nx1 ;
   outputs_7_2 <= nx1 ;
   outputs_7_1 <= nx1 ;
   outputs_7_0 <= nx1 ;
   outputs_6_15 <= nx1 ;
   outputs_6_14 <= nx1 ;
   outputs_6_13 <= nx1 ;
   outputs_6_12 <= nx1 ;
   outputs_6_11 <= nx1 ;
   outputs_6_10 <= nx1 ;
   outputs_6_9 <= nx1 ;
   outputs_6_8 <= nx1 ;
   outputs_6_7 <= nx1 ;
   outputs_6_6 <= nx1 ;
   outputs_6_5 <= nx1 ;
   outputs_6_4 <= nx1 ;
   outputs_6_3 <= nx1 ;
   outputs_6_2 <= nx1 ;
   outputs_6_1 <= nx1 ;
   outputs_6_0 <= nx1 ;
   outputs_5_15 <= nx1 ;
   outputs_5_14 <= nx1 ;
   outputs_5_13 <= nx1 ;
   outputs_5_12 <= nx1 ;
   outputs_5_11 <= nx1 ;
   outputs_5_10 <= nx1 ;
   outputs_5_9 <= nx1 ;
   outputs_5_8 <= nx1 ;
   outputs_5_7 <= nx1 ;
   outputs_5_6 <= nx1 ;
   outputs_5_5 <= nx1 ;
   outputs_5_4 <= nx1 ;
   outputs_5_3 <= nx1 ;
   outputs_5_2 <= nx1 ;
   outputs_5_1 <= nx1 ;
   outputs_5_0 <= nx1 ;
   outputs_4_15 <= nx1 ;
   outputs_4_14 <= nx1 ;
   outputs_4_13 <= nx1 ;
   outputs_4_12 <= nx1 ;
   outputs_4_11 <= nx1 ;
   outputs_4_10 <= nx1 ;
   outputs_4_9 <= nx1 ;
   outputs_4_8 <= nx1 ;
   outputs_4_7 <= nx1 ;
   outputs_4_6 <= nx1 ;
   outputs_4_5 <= nx1 ;
   outputs_4_4 <= nx1 ;
   outputs_4_3 <= nx1 ;
   outputs_4_2 <= nx1 ;
   outputs_4_1 <= nx1 ;
   outputs_4_0 <= nx1 ;
   outputs_3_15 <= nx1 ;
   outputs_3_14 <= nx1 ;
   outputs_3_13 <= nx1 ;
   outputs_3_12 <= nx1 ;
   outputs_3_11 <= nx1 ;
   outputs_3_10 <= nx1 ;
   outputs_3_9 <= nx1 ;
   outputs_3_8 <= nx1 ;
   outputs_3_7 <= nx1 ;
   outputs_3_6 <= nx1 ;
   outputs_3_5 <= nx1 ;
   outputs_3_4 <= nx1 ;
   outputs_3_3 <= nx1 ;
   outputs_3_2 <= nx1 ;
   outputs_3_1 <= nx1 ;
   outputs_3_0 <= nx1 ;
   outputs_2_15 <= nx1 ;
   outputs_2_14 <= nx1 ;
   outputs_2_13 <= nx1 ;
   outputs_2_12 <= nx1 ;
   outputs_2_11 <= nx1 ;
   outputs_2_10 <= nx1 ;
   outputs_2_9 <= nx1 ;
   outputs_2_8 <= nx1 ;
   outputs_2_7 <= nx1 ;
   outputs_2_6 <= nx1 ;
   outputs_2_5 <= nx1 ;
   outputs_2_4 <= nx1 ;
   outputs_2_3 <= nx1 ;
   outputs_2_2 <= nx1 ;
   outputs_2_1 <= nx1 ;
   outputs_2_0 <= nx1 ;
   outputs_1_15 <= nx1 ;
   outputs_1_14 <= nx1 ;
   outputs_1_13 <= nx1 ;
   outputs_1_12 <= nx1 ;
   outputs_1_11 <= nx1 ;
   outputs_1_10 <= nx1 ;
   outputs_1_9 <= nx1 ;
   outputs_1_8 <= nx1 ;
   outputs_1_7 <= nx1 ;
   outputs_1_6 <= nx1 ;
   outputs_1_5 <= nx1 ;
   outputs_1_4 <= nx1 ;
   outputs_1_3 <= nx1 ;
   outputs_1_2 <= nx1 ;
   outputs_1_1 <= nx1 ;
   outputs_1_0 <= nx1 ;
   outputs_0_15 <= nx1 ;
   outputs_0_14 <= nx1 ;
   outputs_0_13 <= nx1 ;
   outputs_0_12 <= nx1 ;
   outputs_0_11 <= nx1 ;
   outputs_0_10 <= nx1 ;
   outputs_0_9 <= nx1 ;
   outputs_0_8 <= nx1 ;
   outputs_0_7 <= nx1 ;
   outputs_0_6 <= nx1 ;
   outputs_0_5 <= nx1 ;
   outputs_0_4 <= nx1 ;
   outputs_0_3 <= nx1 ;
   outputs_0_2 <= nx1 ;
   outputs_0_1 <= nx1 ;
   outputs_0_0 <= nx1 ;
   doneOut <= doneOut_EXMPLR ;
   workingOut <= nx1 ;
   StartCaptuerCmp : TransitionDetector port map ( edge=>start, clk=>clk, 
      rst=>rst, f=>restartDetection);
   CounterCmp : ShiftReg_3 port map ( outp(3)=>doneOut_EXMPLR, outp(2)=>
      DANGLING(0), outp(1)=>DANGLING(1), outp(0)=>DANGLING(2), clk=>clk, en
      =>workingOut_EXMPLR, rst=>counterRst);
   firtStartLachCmp : Reg_1 port map ( D(0)=>PWR, en=>PWR, clk=>start, rst=>
      rst, Q(0)=>firstStart);
   ix4 : fake_vcc port map ( Y=>PWR);
   ix2 : fake_gnd port map ( Y=>nx1);
   ix1 : inv01 port map ( Y=>counterRst, A=>nx12);
   ix13 : nor02_2x port map ( Y=>nx12, A0=>rst, A1=>restartDetection);
   ix5 : nor02_2x port map ( Y=>workingOut_EXMPLR, A0=>nx15, A1=>
      doneOut_EXMPLR);
   ix16 : inv01 port map ( Y=>nx15, A=>firstStart);
end CNNMulsArch_unfold_2221 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CNNCores_8_16_5_5_3 is
   port (
      filterBus : IN std_logic_vector (39 DOWNTO 0) ;
      windowBus : IN std_logic_vector (79 DOWNTO 0) ;
      decoderRow : IN std_logic_vector (2 DOWNTO 0) ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      writePage1 : IN std_logic ;
      writePage2 : IN std_logic ;
      writeFilter : IN std_logic ;
      shift2To1 : IN std_logic ;
      shift1To2 : IN std_logic ;
      pageTurn : IN std_logic ;
      start : IN std_logic ;
      layerType : IN std_logic ;
      filterType : IN std_logic ;
      doneCores : OUT std_logic ;
      finalSumConv : OUT std_logic_vector (15 DOWNTO 0)) ;
end CNNCores_8_16_5_5_3 ;

architecture CNNCoresArch_unfold_2610 of CNNCores_8_16_5_5_3 is
   component CNNMuls_25
      port (
         filter_24_7 : IN std_logic ;
         filter_24_6 : IN std_logic ;
         filter_24_5 : IN std_logic ;
         filter_24_4 : IN std_logic ;
         filter_24_3 : IN std_logic ;
         filter_24_2 : IN std_logic ;
         filter_24_1 : IN std_logic ;
         filter_24_0 : IN std_logic ;
         filter_23_7 : IN std_logic ;
         filter_23_6 : IN std_logic ;
         filter_23_5 : IN std_logic ;
         filter_23_4 : IN std_logic ;
         filter_23_3 : IN std_logic ;
         filter_23_2 : IN std_logic ;
         filter_23_1 : IN std_logic ;
         filter_23_0 : IN std_logic ;
         filter_22_7 : IN std_logic ;
         filter_22_6 : IN std_logic ;
         filter_22_5 : IN std_logic ;
         filter_22_4 : IN std_logic ;
         filter_22_3 : IN std_logic ;
         filter_22_2 : IN std_logic ;
         filter_22_1 : IN std_logic ;
         filter_22_0 : IN std_logic ;
         filter_21_7 : IN std_logic ;
         filter_21_6 : IN std_logic ;
         filter_21_5 : IN std_logic ;
         filter_21_4 : IN std_logic ;
         filter_21_3 : IN std_logic ;
         filter_21_2 : IN std_logic ;
         filter_21_1 : IN std_logic ;
         filter_21_0 : IN std_logic ;
         filter_20_7 : IN std_logic ;
         filter_20_6 : IN std_logic ;
         filter_20_5 : IN std_logic ;
         filter_20_4 : IN std_logic ;
         filter_20_3 : IN std_logic ;
         filter_20_2 : IN std_logic ;
         filter_20_1 : IN std_logic ;
         filter_20_0 : IN std_logic ;
         filter_19_7 : IN std_logic ;
         filter_19_6 : IN std_logic ;
         filter_19_5 : IN std_logic ;
         filter_19_4 : IN std_logic ;
         filter_19_3 : IN std_logic ;
         filter_19_2 : IN std_logic ;
         filter_19_1 : IN std_logic ;
         filter_19_0 : IN std_logic ;
         filter_18_7 : IN std_logic ;
         filter_18_6 : IN std_logic ;
         filter_18_5 : IN std_logic ;
         filter_18_4 : IN std_logic ;
         filter_18_3 : IN std_logic ;
         filter_18_2 : IN std_logic ;
         filter_18_1 : IN std_logic ;
         filter_18_0 : IN std_logic ;
         filter_17_7 : IN std_logic ;
         filter_17_6 : IN std_logic ;
         filter_17_5 : IN std_logic ;
         filter_17_4 : IN std_logic ;
         filter_17_3 : IN std_logic ;
         filter_17_2 : IN std_logic ;
         filter_17_1 : IN std_logic ;
         filter_17_0 : IN std_logic ;
         filter_16_7 : IN std_logic ;
         filter_16_6 : IN std_logic ;
         filter_16_5 : IN std_logic ;
         filter_16_4 : IN std_logic ;
         filter_16_3 : IN std_logic ;
         filter_16_2 : IN std_logic ;
         filter_16_1 : IN std_logic ;
         filter_16_0 : IN std_logic ;
         filter_15_7 : IN std_logic ;
         filter_15_6 : IN std_logic ;
         filter_15_5 : IN std_logic ;
         filter_15_4 : IN std_logic ;
         filter_15_3 : IN std_logic ;
         filter_15_2 : IN std_logic ;
         filter_15_1 : IN std_logic ;
         filter_15_0 : IN std_logic ;
         filter_14_7 : IN std_logic ;
         filter_14_6 : IN std_logic ;
         filter_14_5 : IN std_logic ;
         filter_14_4 : IN std_logic ;
         filter_14_3 : IN std_logic ;
         filter_14_2 : IN std_logic ;
         filter_14_1 : IN std_logic ;
         filter_14_0 : IN std_logic ;
         filter_13_7 : IN std_logic ;
         filter_13_6 : IN std_logic ;
         filter_13_5 : IN std_logic ;
         filter_13_4 : IN std_logic ;
         filter_13_3 : IN std_logic ;
         filter_13_2 : IN std_logic ;
         filter_13_1 : IN std_logic ;
         filter_13_0 : IN std_logic ;
         filter_12_7 : IN std_logic ;
         filter_12_6 : IN std_logic ;
         filter_12_5 : IN std_logic ;
         filter_12_4 : IN std_logic ;
         filter_12_3 : IN std_logic ;
         filter_12_2 : IN std_logic ;
         filter_12_1 : IN std_logic ;
         filter_12_0 : IN std_logic ;
         filter_11_7 : IN std_logic ;
         filter_11_6 : IN std_logic ;
         filter_11_5 : IN std_logic ;
         filter_11_4 : IN std_logic ;
         filter_11_3 : IN std_logic ;
         filter_11_2 : IN std_logic ;
         filter_11_1 : IN std_logic ;
         filter_11_0 : IN std_logic ;
         filter_10_7 : IN std_logic ;
         filter_10_6 : IN std_logic ;
         filter_10_5 : IN std_logic ;
         filter_10_4 : IN std_logic ;
         filter_10_3 : IN std_logic ;
         filter_10_2 : IN std_logic ;
         filter_10_1 : IN std_logic ;
         filter_10_0 : IN std_logic ;
         filter_9_7 : IN std_logic ;
         filter_9_6 : IN std_logic ;
         filter_9_5 : IN std_logic ;
         filter_9_4 : IN std_logic ;
         filter_9_3 : IN std_logic ;
         filter_9_2 : IN std_logic ;
         filter_9_1 : IN std_logic ;
         filter_9_0 : IN std_logic ;
         filter_8_7 : IN std_logic ;
         filter_8_6 : IN std_logic ;
         filter_8_5 : IN std_logic ;
         filter_8_4 : IN std_logic ;
         filter_8_3 : IN std_logic ;
         filter_8_2 : IN std_logic ;
         filter_8_1 : IN std_logic ;
         filter_8_0 : IN std_logic ;
         filter_7_7 : IN std_logic ;
         filter_7_6 : IN std_logic ;
         filter_7_5 : IN std_logic ;
         filter_7_4 : IN std_logic ;
         filter_7_3 : IN std_logic ;
         filter_7_2 : IN std_logic ;
         filter_7_1 : IN std_logic ;
         filter_7_0 : IN std_logic ;
         filter_6_7 : IN std_logic ;
         filter_6_6 : IN std_logic ;
         filter_6_5 : IN std_logic ;
         filter_6_4 : IN std_logic ;
         filter_6_3 : IN std_logic ;
         filter_6_2 : IN std_logic ;
         filter_6_1 : IN std_logic ;
         filter_6_0 : IN std_logic ;
         filter_5_7 : IN std_logic ;
         filter_5_6 : IN std_logic ;
         filter_5_5 : IN std_logic ;
         filter_5_4 : IN std_logic ;
         filter_5_3 : IN std_logic ;
         filter_5_2 : IN std_logic ;
         filter_5_1 : IN std_logic ;
         filter_5_0 : IN std_logic ;
         filter_4_7 : IN std_logic ;
         filter_4_6 : IN std_logic ;
         filter_4_5 : IN std_logic ;
         filter_4_4 : IN std_logic ;
         filter_4_3 : IN std_logic ;
         filter_4_2 : IN std_logic ;
         filter_4_1 : IN std_logic ;
         filter_4_0 : IN std_logic ;
         filter_3_7 : IN std_logic ;
         filter_3_6 : IN std_logic ;
         filter_3_5 : IN std_logic ;
         filter_3_4 : IN std_logic ;
         filter_3_3 : IN std_logic ;
         filter_3_2 : IN std_logic ;
         filter_3_1 : IN std_logic ;
         filter_3_0 : IN std_logic ;
         filter_2_7 : IN std_logic ;
         filter_2_6 : IN std_logic ;
         filter_2_5 : IN std_logic ;
         filter_2_4 : IN std_logic ;
         filter_2_3 : IN std_logic ;
         filter_2_2 : IN std_logic ;
         filter_2_1 : IN std_logic ;
         filter_2_0 : IN std_logic ;
         filter_1_7 : IN std_logic ;
         filter_1_6 : IN std_logic ;
         filter_1_5 : IN std_logic ;
         filter_1_4 : IN std_logic ;
         filter_1_3 : IN std_logic ;
         filter_1_2 : IN std_logic ;
         filter_1_1 : IN std_logic ;
         filter_1_0 : IN std_logic ;
         filter_0_7 : IN std_logic ;
         filter_0_6 : IN std_logic ;
         filter_0_5 : IN std_logic ;
         filter_0_4 : IN std_logic ;
         filter_0_3 : IN std_logic ;
         filter_0_2 : IN std_logic ;
         filter_0_1 : IN std_logic ;
         filter_0_0 : IN std_logic ;
         window_24_15 : IN std_logic ;
         window_24_14 : IN std_logic ;
         window_24_13 : IN std_logic ;
         window_24_12 : IN std_logic ;
         window_24_11 : IN std_logic ;
         window_24_10 : IN std_logic ;
         window_24_9 : IN std_logic ;
         window_24_8 : IN std_logic ;
         window_24_7 : IN std_logic ;
         window_24_6 : IN std_logic ;
         window_24_5 : IN std_logic ;
         window_24_4 : IN std_logic ;
         window_24_3 : IN std_logic ;
         window_24_2 : IN std_logic ;
         window_24_1 : IN std_logic ;
         window_24_0 : IN std_logic ;
         window_23_15 : IN std_logic ;
         window_23_14 : IN std_logic ;
         window_23_13 : IN std_logic ;
         window_23_12 : IN std_logic ;
         window_23_11 : IN std_logic ;
         window_23_10 : IN std_logic ;
         window_23_9 : IN std_logic ;
         window_23_8 : IN std_logic ;
         window_23_7 : IN std_logic ;
         window_23_6 : IN std_logic ;
         window_23_5 : IN std_logic ;
         window_23_4 : IN std_logic ;
         window_23_3 : IN std_logic ;
         window_23_2 : IN std_logic ;
         window_23_1 : IN std_logic ;
         window_23_0 : IN std_logic ;
         window_22_15 : IN std_logic ;
         window_22_14 : IN std_logic ;
         window_22_13 : IN std_logic ;
         window_22_12 : IN std_logic ;
         window_22_11 : IN std_logic ;
         window_22_10 : IN std_logic ;
         window_22_9 : IN std_logic ;
         window_22_8 : IN std_logic ;
         window_22_7 : IN std_logic ;
         window_22_6 : IN std_logic ;
         window_22_5 : IN std_logic ;
         window_22_4 : IN std_logic ;
         window_22_3 : IN std_logic ;
         window_22_2 : IN std_logic ;
         window_22_1 : IN std_logic ;
         window_22_0 : IN std_logic ;
         window_21_15 : IN std_logic ;
         window_21_14 : IN std_logic ;
         window_21_13 : IN std_logic ;
         window_21_12 : IN std_logic ;
         window_21_11 : IN std_logic ;
         window_21_10 : IN std_logic ;
         window_21_9 : IN std_logic ;
         window_21_8 : IN std_logic ;
         window_21_7 : IN std_logic ;
         window_21_6 : IN std_logic ;
         window_21_5 : IN std_logic ;
         window_21_4 : IN std_logic ;
         window_21_3 : IN std_logic ;
         window_21_2 : IN std_logic ;
         window_21_1 : IN std_logic ;
         window_21_0 : IN std_logic ;
         window_20_15 : IN std_logic ;
         window_20_14 : IN std_logic ;
         window_20_13 : IN std_logic ;
         window_20_12 : IN std_logic ;
         window_20_11 : IN std_logic ;
         window_20_10 : IN std_logic ;
         window_20_9 : IN std_logic ;
         window_20_8 : IN std_logic ;
         window_20_7 : IN std_logic ;
         window_20_6 : IN std_logic ;
         window_20_5 : IN std_logic ;
         window_20_4 : IN std_logic ;
         window_20_3 : IN std_logic ;
         window_20_2 : IN std_logic ;
         window_20_1 : IN std_logic ;
         window_20_0 : IN std_logic ;
         window_19_15 : IN std_logic ;
         window_19_14 : IN std_logic ;
         window_19_13 : IN std_logic ;
         window_19_12 : IN std_logic ;
         window_19_11 : IN std_logic ;
         window_19_10 : IN std_logic ;
         window_19_9 : IN std_logic ;
         window_19_8 : IN std_logic ;
         window_19_7 : IN std_logic ;
         window_19_6 : IN std_logic ;
         window_19_5 : IN std_logic ;
         window_19_4 : IN std_logic ;
         window_19_3 : IN std_logic ;
         window_19_2 : IN std_logic ;
         window_19_1 : IN std_logic ;
         window_19_0 : IN std_logic ;
         window_18_15 : IN std_logic ;
         window_18_14 : IN std_logic ;
         window_18_13 : IN std_logic ;
         window_18_12 : IN std_logic ;
         window_18_11 : IN std_logic ;
         window_18_10 : IN std_logic ;
         window_18_9 : IN std_logic ;
         window_18_8 : IN std_logic ;
         window_18_7 : IN std_logic ;
         window_18_6 : IN std_logic ;
         window_18_5 : IN std_logic ;
         window_18_4 : IN std_logic ;
         window_18_3 : IN std_logic ;
         window_18_2 : IN std_logic ;
         window_18_1 : IN std_logic ;
         window_18_0 : IN std_logic ;
         window_17_15 : IN std_logic ;
         window_17_14 : IN std_logic ;
         window_17_13 : IN std_logic ;
         window_17_12 : IN std_logic ;
         window_17_11 : IN std_logic ;
         window_17_10 : IN std_logic ;
         window_17_9 : IN std_logic ;
         window_17_8 : IN std_logic ;
         window_17_7 : IN std_logic ;
         window_17_6 : IN std_logic ;
         window_17_5 : IN std_logic ;
         window_17_4 : IN std_logic ;
         window_17_3 : IN std_logic ;
         window_17_2 : IN std_logic ;
         window_17_1 : IN std_logic ;
         window_17_0 : IN std_logic ;
         window_16_15 : IN std_logic ;
         window_16_14 : IN std_logic ;
         window_16_13 : IN std_logic ;
         window_16_12 : IN std_logic ;
         window_16_11 : IN std_logic ;
         window_16_10 : IN std_logic ;
         window_16_9 : IN std_logic ;
         window_16_8 : IN std_logic ;
         window_16_7 : IN std_logic ;
         window_16_6 : IN std_logic ;
         window_16_5 : IN std_logic ;
         window_16_4 : IN std_logic ;
         window_16_3 : IN std_logic ;
         window_16_2 : IN std_logic ;
         window_16_1 : IN std_logic ;
         window_16_0 : IN std_logic ;
         window_15_15 : IN std_logic ;
         window_15_14 : IN std_logic ;
         window_15_13 : IN std_logic ;
         window_15_12 : IN std_logic ;
         window_15_11 : IN std_logic ;
         window_15_10 : IN std_logic ;
         window_15_9 : IN std_logic ;
         window_15_8 : IN std_logic ;
         window_15_7 : IN std_logic ;
         window_15_6 : IN std_logic ;
         window_15_5 : IN std_logic ;
         window_15_4 : IN std_logic ;
         window_15_3 : IN std_logic ;
         window_15_2 : IN std_logic ;
         window_15_1 : IN std_logic ;
         window_15_0 : IN std_logic ;
         window_14_15 : IN std_logic ;
         window_14_14 : IN std_logic ;
         window_14_13 : IN std_logic ;
         window_14_12 : IN std_logic ;
         window_14_11 : IN std_logic ;
         window_14_10 : IN std_logic ;
         window_14_9 : IN std_logic ;
         window_14_8 : IN std_logic ;
         window_14_7 : IN std_logic ;
         window_14_6 : IN std_logic ;
         window_14_5 : IN std_logic ;
         window_14_4 : IN std_logic ;
         window_14_3 : IN std_logic ;
         window_14_2 : IN std_logic ;
         window_14_1 : IN std_logic ;
         window_14_0 : IN std_logic ;
         window_13_15 : IN std_logic ;
         window_13_14 : IN std_logic ;
         window_13_13 : IN std_logic ;
         window_13_12 : IN std_logic ;
         window_13_11 : IN std_logic ;
         window_13_10 : IN std_logic ;
         window_13_9 : IN std_logic ;
         window_13_8 : IN std_logic ;
         window_13_7 : IN std_logic ;
         window_13_6 : IN std_logic ;
         window_13_5 : IN std_logic ;
         window_13_4 : IN std_logic ;
         window_13_3 : IN std_logic ;
         window_13_2 : IN std_logic ;
         window_13_1 : IN std_logic ;
         window_13_0 : IN std_logic ;
         window_12_15 : IN std_logic ;
         window_12_14 : IN std_logic ;
         window_12_13 : IN std_logic ;
         window_12_12 : IN std_logic ;
         window_12_11 : IN std_logic ;
         window_12_10 : IN std_logic ;
         window_12_9 : IN std_logic ;
         window_12_8 : IN std_logic ;
         window_12_7 : IN std_logic ;
         window_12_6 : IN std_logic ;
         window_12_5 : IN std_logic ;
         window_12_4 : IN std_logic ;
         window_12_3 : IN std_logic ;
         window_12_2 : IN std_logic ;
         window_12_1 : IN std_logic ;
         window_12_0 : IN std_logic ;
         window_11_15 : IN std_logic ;
         window_11_14 : IN std_logic ;
         window_11_13 : IN std_logic ;
         window_11_12 : IN std_logic ;
         window_11_11 : IN std_logic ;
         window_11_10 : IN std_logic ;
         window_11_9 : IN std_logic ;
         window_11_8 : IN std_logic ;
         window_11_7 : IN std_logic ;
         window_11_6 : IN std_logic ;
         window_11_5 : IN std_logic ;
         window_11_4 : IN std_logic ;
         window_11_3 : IN std_logic ;
         window_11_2 : IN std_logic ;
         window_11_1 : IN std_logic ;
         window_11_0 : IN std_logic ;
         window_10_15 : IN std_logic ;
         window_10_14 : IN std_logic ;
         window_10_13 : IN std_logic ;
         window_10_12 : IN std_logic ;
         window_10_11 : IN std_logic ;
         window_10_10 : IN std_logic ;
         window_10_9 : IN std_logic ;
         window_10_8 : IN std_logic ;
         window_10_7 : IN std_logic ;
         window_10_6 : IN std_logic ;
         window_10_5 : IN std_logic ;
         window_10_4 : IN std_logic ;
         window_10_3 : IN std_logic ;
         window_10_2 : IN std_logic ;
         window_10_1 : IN std_logic ;
         window_10_0 : IN std_logic ;
         window_9_15 : IN std_logic ;
         window_9_14 : IN std_logic ;
         window_9_13 : IN std_logic ;
         window_9_12 : IN std_logic ;
         window_9_11 : IN std_logic ;
         window_9_10 : IN std_logic ;
         window_9_9 : IN std_logic ;
         window_9_8 : IN std_logic ;
         window_9_7 : IN std_logic ;
         window_9_6 : IN std_logic ;
         window_9_5 : IN std_logic ;
         window_9_4 : IN std_logic ;
         window_9_3 : IN std_logic ;
         window_9_2 : IN std_logic ;
         window_9_1 : IN std_logic ;
         window_9_0 : IN std_logic ;
         window_8_15 : IN std_logic ;
         window_8_14 : IN std_logic ;
         window_8_13 : IN std_logic ;
         window_8_12 : IN std_logic ;
         window_8_11 : IN std_logic ;
         window_8_10 : IN std_logic ;
         window_8_9 : IN std_logic ;
         window_8_8 : IN std_logic ;
         window_8_7 : IN std_logic ;
         window_8_6 : IN std_logic ;
         window_8_5 : IN std_logic ;
         window_8_4 : IN std_logic ;
         window_8_3 : IN std_logic ;
         window_8_2 : IN std_logic ;
         window_8_1 : IN std_logic ;
         window_8_0 : IN std_logic ;
         window_7_15 : IN std_logic ;
         window_7_14 : IN std_logic ;
         window_7_13 : IN std_logic ;
         window_7_12 : IN std_logic ;
         window_7_11 : IN std_logic ;
         window_7_10 : IN std_logic ;
         window_7_9 : IN std_logic ;
         window_7_8 : IN std_logic ;
         window_7_7 : IN std_logic ;
         window_7_6 : IN std_logic ;
         window_7_5 : IN std_logic ;
         window_7_4 : IN std_logic ;
         window_7_3 : IN std_logic ;
         window_7_2 : IN std_logic ;
         window_7_1 : IN std_logic ;
         window_7_0 : IN std_logic ;
         window_6_15 : IN std_logic ;
         window_6_14 : IN std_logic ;
         window_6_13 : IN std_logic ;
         window_6_12 : IN std_logic ;
         window_6_11 : IN std_logic ;
         window_6_10 : IN std_logic ;
         window_6_9 : IN std_logic ;
         window_6_8 : IN std_logic ;
         window_6_7 : IN std_logic ;
         window_6_6 : IN std_logic ;
         window_6_5 : IN std_logic ;
         window_6_4 : IN std_logic ;
         window_6_3 : IN std_logic ;
         window_6_2 : IN std_logic ;
         window_6_1 : IN std_logic ;
         window_6_0 : IN std_logic ;
         window_5_15 : IN std_logic ;
         window_5_14 : IN std_logic ;
         window_5_13 : IN std_logic ;
         window_5_12 : IN std_logic ;
         window_5_11 : IN std_logic ;
         window_5_10 : IN std_logic ;
         window_5_9 : IN std_logic ;
         window_5_8 : IN std_logic ;
         window_5_7 : IN std_logic ;
         window_5_6 : IN std_logic ;
         window_5_5 : IN std_logic ;
         window_5_4 : IN std_logic ;
         window_5_3 : IN std_logic ;
         window_5_2 : IN std_logic ;
         window_5_1 : IN std_logic ;
         window_5_0 : IN std_logic ;
         window_4_15 : IN std_logic ;
         window_4_14 : IN std_logic ;
         window_4_13 : IN std_logic ;
         window_4_12 : IN std_logic ;
         window_4_11 : IN std_logic ;
         window_4_10 : IN std_logic ;
         window_4_9 : IN std_logic ;
         window_4_8 : IN std_logic ;
         window_4_7 : IN std_logic ;
         window_4_6 : IN std_logic ;
         window_4_5 : IN std_logic ;
         window_4_4 : IN std_logic ;
         window_4_3 : IN std_logic ;
         window_4_2 : IN std_logic ;
         window_4_1 : IN std_logic ;
         window_4_0 : IN std_logic ;
         window_3_15 : IN std_logic ;
         window_3_14 : IN std_logic ;
         window_3_13 : IN std_logic ;
         window_3_12 : IN std_logic ;
         window_3_11 : IN std_logic ;
         window_3_10 : IN std_logic ;
         window_3_9 : IN std_logic ;
         window_3_8 : IN std_logic ;
         window_3_7 : IN std_logic ;
         window_3_6 : IN std_logic ;
         window_3_5 : IN std_logic ;
         window_3_4 : IN std_logic ;
         window_3_3 : IN std_logic ;
         window_3_2 : IN std_logic ;
         window_3_1 : IN std_logic ;
         window_3_0 : IN std_logic ;
         window_2_15 : IN std_logic ;
         window_2_14 : IN std_logic ;
         window_2_13 : IN std_logic ;
         window_2_12 : IN std_logic ;
         window_2_11 : IN std_logic ;
         window_2_10 : IN std_logic ;
         window_2_9 : IN std_logic ;
         window_2_8 : IN std_logic ;
         window_2_7 : IN std_logic ;
         window_2_6 : IN std_logic ;
         window_2_5 : IN std_logic ;
         window_2_4 : IN std_logic ;
         window_2_3 : IN std_logic ;
         window_2_2 : IN std_logic ;
         window_2_1 : IN std_logic ;
         window_2_0 : IN std_logic ;
         window_1_15 : IN std_logic ;
         window_1_14 : IN std_logic ;
         window_1_13 : IN std_logic ;
         window_1_12 : IN std_logic ;
         window_1_11 : IN std_logic ;
         window_1_10 : IN std_logic ;
         window_1_9 : IN std_logic ;
         window_1_8 : IN std_logic ;
         window_1_7 : IN std_logic ;
         window_1_6 : IN std_logic ;
         window_1_5 : IN std_logic ;
         window_1_4 : IN std_logic ;
         window_1_3 : IN std_logic ;
         window_1_2 : IN std_logic ;
         window_1_1 : IN std_logic ;
         window_1_0 : IN std_logic ;
         window_0_15 : IN std_logic ;
         window_0_14 : IN std_logic ;
         window_0_13 : IN std_logic ;
         window_0_12 : IN std_logic ;
         window_0_11 : IN std_logic ;
         window_0_10 : IN std_logic ;
         window_0_9 : IN std_logic ;
         window_0_8 : IN std_logic ;
         window_0_7 : IN std_logic ;
         window_0_6 : IN std_logic ;
         window_0_5 : IN std_logic ;
         window_0_4 : IN std_logic ;
         window_0_3 : IN std_logic ;
         window_0_2 : IN std_logic ;
         window_0_1 : IN std_logic ;
         window_0_0 : IN std_logic ;
         outputs_24_15 : OUT std_logic ;
         outputs_24_14 : OUT std_logic ;
         outputs_24_13 : OUT std_logic ;
         outputs_24_12 : OUT std_logic ;
         outputs_24_11 : OUT std_logic ;
         outputs_24_10 : OUT std_logic ;
         outputs_24_9 : OUT std_logic ;
         outputs_24_8 : OUT std_logic ;
         outputs_24_7 : OUT std_logic ;
         outputs_24_6 : OUT std_logic ;
         outputs_24_5 : OUT std_logic ;
         outputs_24_4 : OUT std_logic ;
         outputs_24_3 : OUT std_logic ;
         outputs_24_2 : OUT std_logic ;
         outputs_24_1 : OUT std_logic ;
         outputs_24_0 : OUT std_logic ;
         outputs_23_15 : OUT std_logic ;
         outputs_23_14 : OUT std_logic ;
         outputs_23_13 : OUT std_logic ;
         outputs_23_12 : OUT std_logic ;
         outputs_23_11 : OUT std_logic ;
         outputs_23_10 : OUT std_logic ;
         outputs_23_9 : OUT std_logic ;
         outputs_23_8 : OUT std_logic ;
         outputs_23_7 : OUT std_logic ;
         outputs_23_6 : OUT std_logic ;
         outputs_23_5 : OUT std_logic ;
         outputs_23_4 : OUT std_logic ;
         outputs_23_3 : OUT std_logic ;
         outputs_23_2 : OUT std_logic ;
         outputs_23_1 : OUT std_logic ;
         outputs_23_0 : OUT std_logic ;
         outputs_22_15 : OUT std_logic ;
         outputs_22_14 : OUT std_logic ;
         outputs_22_13 : OUT std_logic ;
         outputs_22_12 : OUT std_logic ;
         outputs_22_11 : OUT std_logic ;
         outputs_22_10 : OUT std_logic ;
         outputs_22_9 : OUT std_logic ;
         outputs_22_8 : OUT std_logic ;
         outputs_22_7 : OUT std_logic ;
         outputs_22_6 : OUT std_logic ;
         outputs_22_5 : OUT std_logic ;
         outputs_22_4 : OUT std_logic ;
         outputs_22_3 : OUT std_logic ;
         outputs_22_2 : OUT std_logic ;
         outputs_22_1 : OUT std_logic ;
         outputs_22_0 : OUT std_logic ;
         outputs_21_15 : OUT std_logic ;
         outputs_21_14 : OUT std_logic ;
         outputs_21_13 : OUT std_logic ;
         outputs_21_12 : OUT std_logic ;
         outputs_21_11 : OUT std_logic ;
         outputs_21_10 : OUT std_logic ;
         outputs_21_9 : OUT std_logic ;
         outputs_21_8 : OUT std_logic ;
         outputs_21_7 : OUT std_logic ;
         outputs_21_6 : OUT std_logic ;
         outputs_21_5 : OUT std_logic ;
         outputs_21_4 : OUT std_logic ;
         outputs_21_3 : OUT std_logic ;
         outputs_21_2 : OUT std_logic ;
         outputs_21_1 : OUT std_logic ;
         outputs_21_0 : OUT std_logic ;
         outputs_20_15 : OUT std_logic ;
         outputs_20_14 : OUT std_logic ;
         outputs_20_13 : OUT std_logic ;
         outputs_20_12 : OUT std_logic ;
         outputs_20_11 : OUT std_logic ;
         outputs_20_10 : OUT std_logic ;
         outputs_20_9 : OUT std_logic ;
         outputs_20_8 : OUT std_logic ;
         outputs_20_7 : OUT std_logic ;
         outputs_20_6 : OUT std_logic ;
         outputs_20_5 : OUT std_logic ;
         outputs_20_4 : OUT std_logic ;
         outputs_20_3 : OUT std_logic ;
         outputs_20_2 : OUT std_logic ;
         outputs_20_1 : OUT std_logic ;
         outputs_20_0 : OUT std_logic ;
         outputs_19_15 : OUT std_logic ;
         outputs_19_14 : OUT std_logic ;
         outputs_19_13 : OUT std_logic ;
         outputs_19_12 : OUT std_logic ;
         outputs_19_11 : OUT std_logic ;
         outputs_19_10 : OUT std_logic ;
         outputs_19_9 : OUT std_logic ;
         outputs_19_8 : OUT std_logic ;
         outputs_19_7 : OUT std_logic ;
         outputs_19_6 : OUT std_logic ;
         outputs_19_5 : OUT std_logic ;
         outputs_19_4 : OUT std_logic ;
         outputs_19_3 : OUT std_logic ;
         outputs_19_2 : OUT std_logic ;
         outputs_19_1 : OUT std_logic ;
         outputs_19_0 : OUT std_logic ;
         outputs_18_15 : OUT std_logic ;
         outputs_18_14 : OUT std_logic ;
         outputs_18_13 : OUT std_logic ;
         outputs_18_12 : OUT std_logic ;
         outputs_18_11 : OUT std_logic ;
         outputs_18_10 : OUT std_logic ;
         outputs_18_9 : OUT std_logic ;
         outputs_18_8 : OUT std_logic ;
         outputs_18_7 : OUT std_logic ;
         outputs_18_6 : OUT std_logic ;
         outputs_18_5 : OUT std_logic ;
         outputs_18_4 : OUT std_logic ;
         outputs_18_3 : OUT std_logic ;
         outputs_18_2 : OUT std_logic ;
         outputs_18_1 : OUT std_logic ;
         outputs_18_0 : OUT std_logic ;
         outputs_17_15 : OUT std_logic ;
         outputs_17_14 : OUT std_logic ;
         outputs_17_13 : OUT std_logic ;
         outputs_17_12 : OUT std_logic ;
         outputs_17_11 : OUT std_logic ;
         outputs_17_10 : OUT std_logic ;
         outputs_17_9 : OUT std_logic ;
         outputs_17_8 : OUT std_logic ;
         outputs_17_7 : OUT std_logic ;
         outputs_17_6 : OUT std_logic ;
         outputs_17_5 : OUT std_logic ;
         outputs_17_4 : OUT std_logic ;
         outputs_17_3 : OUT std_logic ;
         outputs_17_2 : OUT std_logic ;
         outputs_17_1 : OUT std_logic ;
         outputs_17_0 : OUT std_logic ;
         outputs_16_15 : OUT std_logic ;
         outputs_16_14 : OUT std_logic ;
         outputs_16_13 : OUT std_logic ;
         outputs_16_12 : OUT std_logic ;
         outputs_16_11 : OUT std_logic ;
         outputs_16_10 : OUT std_logic ;
         outputs_16_9 : OUT std_logic ;
         outputs_16_8 : OUT std_logic ;
         outputs_16_7 : OUT std_logic ;
         outputs_16_6 : OUT std_logic ;
         outputs_16_5 : OUT std_logic ;
         outputs_16_4 : OUT std_logic ;
         outputs_16_3 : OUT std_logic ;
         outputs_16_2 : OUT std_logic ;
         outputs_16_1 : OUT std_logic ;
         outputs_16_0 : OUT std_logic ;
         outputs_15_15 : OUT std_logic ;
         outputs_15_14 : OUT std_logic ;
         outputs_15_13 : OUT std_logic ;
         outputs_15_12 : OUT std_logic ;
         outputs_15_11 : OUT std_logic ;
         outputs_15_10 : OUT std_logic ;
         outputs_15_9 : OUT std_logic ;
         outputs_15_8 : OUT std_logic ;
         outputs_15_7 : OUT std_logic ;
         outputs_15_6 : OUT std_logic ;
         outputs_15_5 : OUT std_logic ;
         outputs_15_4 : OUT std_logic ;
         outputs_15_3 : OUT std_logic ;
         outputs_15_2 : OUT std_logic ;
         outputs_15_1 : OUT std_logic ;
         outputs_15_0 : OUT std_logic ;
         outputs_14_15 : OUT std_logic ;
         outputs_14_14 : OUT std_logic ;
         outputs_14_13 : OUT std_logic ;
         outputs_14_12 : OUT std_logic ;
         outputs_14_11 : OUT std_logic ;
         outputs_14_10 : OUT std_logic ;
         outputs_14_9 : OUT std_logic ;
         outputs_14_8 : OUT std_logic ;
         outputs_14_7 : OUT std_logic ;
         outputs_14_6 : OUT std_logic ;
         outputs_14_5 : OUT std_logic ;
         outputs_14_4 : OUT std_logic ;
         outputs_14_3 : OUT std_logic ;
         outputs_14_2 : OUT std_logic ;
         outputs_14_1 : OUT std_logic ;
         outputs_14_0 : OUT std_logic ;
         outputs_13_15 : OUT std_logic ;
         outputs_13_14 : OUT std_logic ;
         outputs_13_13 : OUT std_logic ;
         outputs_13_12 : OUT std_logic ;
         outputs_13_11 : OUT std_logic ;
         outputs_13_10 : OUT std_logic ;
         outputs_13_9 : OUT std_logic ;
         outputs_13_8 : OUT std_logic ;
         outputs_13_7 : OUT std_logic ;
         outputs_13_6 : OUT std_logic ;
         outputs_13_5 : OUT std_logic ;
         outputs_13_4 : OUT std_logic ;
         outputs_13_3 : OUT std_logic ;
         outputs_13_2 : OUT std_logic ;
         outputs_13_1 : OUT std_logic ;
         outputs_13_0 : OUT std_logic ;
         outputs_12_15 : OUT std_logic ;
         outputs_12_14 : OUT std_logic ;
         outputs_12_13 : OUT std_logic ;
         outputs_12_12 : OUT std_logic ;
         outputs_12_11 : OUT std_logic ;
         outputs_12_10 : OUT std_logic ;
         outputs_12_9 : OUT std_logic ;
         outputs_12_8 : OUT std_logic ;
         outputs_12_7 : OUT std_logic ;
         outputs_12_6 : OUT std_logic ;
         outputs_12_5 : OUT std_logic ;
         outputs_12_4 : OUT std_logic ;
         outputs_12_3 : OUT std_logic ;
         outputs_12_2 : OUT std_logic ;
         outputs_12_1 : OUT std_logic ;
         outputs_12_0 : OUT std_logic ;
         outputs_11_15 : OUT std_logic ;
         outputs_11_14 : OUT std_logic ;
         outputs_11_13 : OUT std_logic ;
         outputs_11_12 : OUT std_logic ;
         outputs_11_11 : OUT std_logic ;
         outputs_11_10 : OUT std_logic ;
         outputs_11_9 : OUT std_logic ;
         outputs_11_8 : OUT std_logic ;
         outputs_11_7 : OUT std_logic ;
         outputs_11_6 : OUT std_logic ;
         outputs_11_5 : OUT std_logic ;
         outputs_11_4 : OUT std_logic ;
         outputs_11_3 : OUT std_logic ;
         outputs_11_2 : OUT std_logic ;
         outputs_11_1 : OUT std_logic ;
         outputs_11_0 : OUT std_logic ;
         outputs_10_15 : OUT std_logic ;
         outputs_10_14 : OUT std_logic ;
         outputs_10_13 : OUT std_logic ;
         outputs_10_12 : OUT std_logic ;
         outputs_10_11 : OUT std_logic ;
         outputs_10_10 : OUT std_logic ;
         outputs_10_9 : OUT std_logic ;
         outputs_10_8 : OUT std_logic ;
         outputs_10_7 : OUT std_logic ;
         outputs_10_6 : OUT std_logic ;
         outputs_10_5 : OUT std_logic ;
         outputs_10_4 : OUT std_logic ;
         outputs_10_3 : OUT std_logic ;
         outputs_10_2 : OUT std_logic ;
         outputs_10_1 : OUT std_logic ;
         outputs_10_0 : OUT std_logic ;
         outputs_9_15 : OUT std_logic ;
         outputs_9_14 : OUT std_logic ;
         outputs_9_13 : OUT std_logic ;
         outputs_9_12 : OUT std_logic ;
         outputs_9_11 : OUT std_logic ;
         outputs_9_10 : OUT std_logic ;
         outputs_9_9 : OUT std_logic ;
         outputs_9_8 : OUT std_logic ;
         outputs_9_7 : OUT std_logic ;
         outputs_9_6 : OUT std_logic ;
         outputs_9_5 : OUT std_logic ;
         outputs_9_4 : OUT std_logic ;
         outputs_9_3 : OUT std_logic ;
         outputs_9_2 : OUT std_logic ;
         outputs_9_1 : OUT std_logic ;
         outputs_9_0 : OUT std_logic ;
         outputs_8_15 : OUT std_logic ;
         outputs_8_14 : OUT std_logic ;
         outputs_8_13 : OUT std_logic ;
         outputs_8_12 : OUT std_logic ;
         outputs_8_11 : OUT std_logic ;
         outputs_8_10 : OUT std_logic ;
         outputs_8_9 : OUT std_logic ;
         outputs_8_8 : OUT std_logic ;
         outputs_8_7 : OUT std_logic ;
         outputs_8_6 : OUT std_logic ;
         outputs_8_5 : OUT std_logic ;
         outputs_8_4 : OUT std_logic ;
         outputs_8_3 : OUT std_logic ;
         outputs_8_2 : OUT std_logic ;
         outputs_8_1 : OUT std_logic ;
         outputs_8_0 : OUT std_logic ;
         outputs_7_15 : OUT std_logic ;
         outputs_7_14 : OUT std_logic ;
         outputs_7_13 : OUT std_logic ;
         outputs_7_12 : OUT std_logic ;
         outputs_7_11 : OUT std_logic ;
         outputs_7_10 : OUT std_logic ;
         outputs_7_9 : OUT std_logic ;
         outputs_7_8 : OUT std_logic ;
         outputs_7_7 : OUT std_logic ;
         outputs_7_6 : OUT std_logic ;
         outputs_7_5 : OUT std_logic ;
         outputs_7_4 : OUT std_logic ;
         outputs_7_3 : OUT std_logic ;
         outputs_7_2 : OUT std_logic ;
         outputs_7_1 : OUT std_logic ;
         outputs_7_0 : OUT std_logic ;
         outputs_6_15 : OUT std_logic ;
         outputs_6_14 : OUT std_logic ;
         outputs_6_13 : OUT std_logic ;
         outputs_6_12 : OUT std_logic ;
         outputs_6_11 : OUT std_logic ;
         outputs_6_10 : OUT std_logic ;
         outputs_6_9 : OUT std_logic ;
         outputs_6_8 : OUT std_logic ;
         outputs_6_7 : OUT std_logic ;
         outputs_6_6 : OUT std_logic ;
         outputs_6_5 : OUT std_logic ;
         outputs_6_4 : OUT std_logic ;
         outputs_6_3 : OUT std_logic ;
         outputs_6_2 : OUT std_logic ;
         outputs_6_1 : OUT std_logic ;
         outputs_6_0 : OUT std_logic ;
         outputs_5_15 : OUT std_logic ;
         outputs_5_14 : OUT std_logic ;
         outputs_5_13 : OUT std_logic ;
         outputs_5_12 : OUT std_logic ;
         outputs_5_11 : OUT std_logic ;
         outputs_5_10 : OUT std_logic ;
         outputs_5_9 : OUT std_logic ;
         outputs_5_8 : OUT std_logic ;
         outputs_5_7 : OUT std_logic ;
         outputs_5_6 : OUT std_logic ;
         outputs_5_5 : OUT std_logic ;
         outputs_5_4 : OUT std_logic ;
         outputs_5_3 : OUT std_logic ;
         outputs_5_2 : OUT std_logic ;
         outputs_5_1 : OUT std_logic ;
         outputs_5_0 : OUT std_logic ;
         outputs_4_15 : OUT std_logic ;
         outputs_4_14 : OUT std_logic ;
         outputs_4_13 : OUT std_logic ;
         outputs_4_12 : OUT std_logic ;
         outputs_4_11 : OUT std_logic ;
         outputs_4_10 : OUT std_logic ;
         outputs_4_9 : OUT std_logic ;
         outputs_4_8 : OUT std_logic ;
         outputs_4_7 : OUT std_logic ;
         outputs_4_6 : OUT std_logic ;
         outputs_4_5 : OUT std_logic ;
         outputs_4_4 : OUT std_logic ;
         outputs_4_3 : OUT std_logic ;
         outputs_4_2 : OUT std_logic ;
         outputs_4_1 : OUT std_logic ;
         outputs_4_0 : OUT std_logic ;
         outputs_3_15 : OUT std_logic ;
         outputs_3_14 : OUT std_logic ;
         outputs_3_13 : OUT std_logic ;
         outputs_3_12 : OUT std_logic ;
         outputs_3_11 : OUT std_logic ;
         outputs_3_10 : OUT std_logic ;
         outputs_3_9 : OUT std_logic ;
         outputs_3_8 : OUT std_logic ;
         outputs_3_7 : OUT std_logic ;
         outputs_3_6 : OUT std_logic ;
         outputs_3_5 : OUT std_logic ;
         outputs_3_4 : OUT std_logic ;
         outputs_3_3 : OUT std_logic ;
         outputs_3_2 : OUT std_logic ;
         outputs_3_1 : OUT std_logic ;
         outputs_3_0 : OUT std_logic ;
         outputs_2_15 : OUT std_logic ;
         outputs_2_14 : OUT std_logic ;
         outputs_2_13 : OUT std_logic ;
         outputs_2_12 : OUT std_logic ;
         outputs_2_11 : OUT std_logic ;
         outputs_2_10 : OUT std_logic ;
         outputs_2_9 : OUT std_logic ;
         outputs_2_8 : OUT std_logic ;
         outputs_2_7 : OUT std_logic ;
         outputs_2_6 : OUT std_logic ;
         outputs_2_5 : OUT std_logic ;
         outputs_2_4 : OUT std_logic ;
         outputs_2_3 : OUT std_logic ;
         outputs_2_2 : OUT std_logic ;
         outputs_2_1 : OUT std_logic ;
         outputs_2_0 : OUT std_logic ;
         outputs_1_15 : OUT std_logic ;
         outputs_1_14 : OUT std_logic ;
         outputs_1_13 : OUT std_logic ;
         outputs_1_12 : OUT std_logic ;
         outputs_1_11 : OUT std_logic ;
         outputs_1_10 : OUT std_logic ;
         outputs_1_9 : OUT std_logic ;
         outputs_1_8 : OUT std_logic ;
         outputs_1_7 : OUT std_logic ;
         outputs_1_6 : OUT std_logic ;
         outputs_1_5 : OUT std_logic ;
         outputs_1_4 : OUT std_logic ;
         outputs_1_3 : OUT std_logic ;
         outputs_1_2 : OUT std_logic ;
         outputs_1_1 : OUT std_logic ;
         outputs_1_0 : OUT std_logic ;
         outputs_0_15 : OUT std_logic ;
         outputs_0_14 : OUT std_logic ;
         outputs_0_13 : OUT std_logic ;
         outputs_0_12 : OUT std_logic ;
         outputs_0_11 : OUT std_logic ;
         outputs_0_10 : OUT std_logic ;
         outputs_0_9 : OUT std_logic ;
         outputs_0_8 : OUT std_logic ;
         outputs_0_7 : OUT std_logic ;
         outputs_0_6 : OUT std_logic ;
         outputs_0_5 : OUT std_logic ;
         outputs_0_4 : OUT std_logic ;
         outputs_0_3 : OUT std_logic ;
         outputs_0_2 : OUT std_logic ;
         outputs_0_1 : OUT std_logic ;
         outputs_0_0 : OUT std_logic ;
         clk : IN std_logic ;
         start : IN std_logic ;
         rst : IN std_logic ;
         doneOut : OUT std_logic ;
         workingOut : OUT std_logic) ;
   end component ;
   signal doneMul, nx43, nx54: std_logic ;
   
   signal DANGLING : std_logic_vector (400 downto 0 );

begin
   finalSumConv(15) <= nx43 ;
   finalSumConv(14) <= nx43 ;
   finalSumConv(13) <= nx43 ;
   finalSumConv(12) <= nx43 ;
   finalSumConv(11) <= nx43 ;
   finalSumConv(10) <= nx43 ;
   finalSumConv(9) <= nx43 ;
   finalSumConv(8) <= nx43 ;
   finalSumConv(7) <= nx43 ;
   finalSumConv(6) <= nx43 ;
   finalSumConv(5) <= nx43 ;
   finalSumConv(4) <= nx43 ;
   finalSumConv(3) <= nx43 ;
   finalSumConv(2) <= nx43 ;
   finalSumConv(1) <= nx43 ;
   finalSumConv(0) <= nx43 ;
   mulsMap : CNNMuls_25 port map ( filter_24_7=>nx43, filter_24_6=>nx43, 
      filter_24_5=>nx43, filter_24_4=>nx43, filter_24_3=>nx43, filter_24_2=>
      nx43, filter_24_1=>nx43, filter_24_0=>nx43, filter_23_7=>nx43, 
      filter_23_6=>nx43, filter_23_5=>nx43, filter_23_4=>nx43, filter_23_3=>
      nx43, filter_23_2=>nx43, filter_23_1=>nx43, filter_23_0=>nx43, 
      filter_22_7=>nx43, filter_22_6=>nx43, filter_22_5=>nx43, filter_22_4=>
      nx43, filter_22_3=>nx43, filter_22_2=>nx43, filter_22_1=>nx43, 
      filter_22_0=>nx43, filter_21_7=>nx43, filter_21_6=>nx43, filter_21_5=>
      nx43, filter_21_4=>nx43, filter_21_3=>nx43, filter_21_2=>nx43, 
      filter_21_1=>nx43, filter_21_0=>nx43, filter_20_7=>nx43, filter_20_6=>
      nx43, filter_20_5=>nx43, filter_20_4=>nx43, filter_20_3=>nx43, 
      filter_20_2=>nx43, filter_20_1=>nx43, filter_20_0=>nx43, filter_19_7=>
      nx43, filter_19_6=>nx43, filter_19_5=>nx43, filter_19_4=>nx43, 
      filter_19_3=>nx43, filter_19_2=>nx43, filter_19_1=>nx43, filter_19_0=>
      nx43, filter_18_7=>nx43, filter_18_6=>nx43, filter_18_5=>nx43, 
      filter_18_4=>nx43, filter_18_3=>nx43, filter_18_2=>nx43, filter_18_1=>
      nx43, filter_18_0=>nx43, filter_17_7=>nx43, filter_17_6=>nx43, 
      filter_17_5=>nx43, filter_17_4=>nx43, filter_17_3=>nx43, filter_17_2=>
      nx43, filter_17_1=>nx43, filter_17_0=>nx43, filter_16_7=>nx43, 
      filter_16_6=>nx43, filter_16_5=>nx43, filter_16_4=>nx43, filter_16_3=>
      nx43, filter_16_2=>nx43, filter_16_1=>nx43, filter_16_0=>nx43, 
      filter_15_7=>nx43, filter_15_6=>nx43, filter_15_5=>nx43, filter_15_4=>
      nx43, filter_15_3=>nx43, filter_15_2=>nx43, filter_15_1=>nx43, 
      filter_15_0=>nx43, filter_14_7=>nx43, filter_14_6=>nx43, filter_14_5=>
      nx43, filter_14_4=>nx43, filter_14_3=>nx43, filter_14_2=>nx43, 
      filter_14_1=>nx43, filter_14_0=>nx43, filter_13_7=>nx43, filter_13_6=>
      nx43, filter_13_5=>nx43, filter_13_4=>nx43, filter_13_3=>nx43, 
      filter_13_2=>nx43, filter_13_1=>nx43, filter_13_0=>nx43, filter_12_7=>
      nx43, filter_12_6=>nx43, filter_12_5=>nx43, filter_12_4=>nx43, 
      filter_12_3=>nx43, filter_12_2=>nx43, filter_12_1=>nx43, filter_12_0=>
      nx43, filter_11_7=>nx43, filter_11_6=>nx43, filter_11_5=>nx43, 
      filter_11_4=>nx43, filter_11_3=>nx43, filter_11_2=>nx43, filter_11_1=>
      nx43, filter_11_0=>nx43, filter_10_7=>nx43, filter_10_6=>nx43, 
      filter_10_5=>nx43, filter_10_4=>nx43, filter_10_3=>nx43, filter_10_2=>
      nx43, filter_10_1=>nx43, filter_10_0=>nx43, filter_9_7=>nx43, 
      filter_9_6=>nx43, filter_9_5=>nx43, filter_9_4=>nx43, filter_9_3=>nx43, 
      filter_9_2=>nx43, filter_9_1=>nx43, filter_9_0=>nx43, filter_8_7=>nx43, 
      filter_8_6=>nx43, filter_8_5=>nx43, filter_8_4=>nx43, filter_8_3=>nx43, 
      filter_8_2=>nx43, filter_8_1=>nx43, filter_8_0=>nx43, filter_7_7=>nx43, 
      filter_7_6=>nx43, filter_7_5=>nx43, filter_7_4=>nx43, filter_7_3=>nx43, 
      filter_7_2=>nx43, filter_7_1=>nx43, filter_7_0=>nx43, filter_6_7=>nx43, 
      filter_6_6=>nx43, filter_6_5=>nx43, filter_6_4=>nx43, filter_6_3=>nx43, 
      filter_6_2=>nx43, filter_6_1=>nx43, filter_6_0=>nx43, filter_5_7=>nx43, 
      filter_5_6=>nx43, filter_5_5=>nx43, filter_5_4=>nx43, filter_5_3=>nx43, 
      filter_5_2=>nx43, filter_5_1=>nx43, filter_5_0=>nx43, filter_4_7=>nx43, 
      filter_4_6=>nx43, filter_4_5=>nx43, filter_4_4=>nx43, filter_4_3=>nx43, 
      filter_4_2=>nx43, filter_4_1=>nx43, filter_4_0=>nx43, filter_3_7=>nx43, 
      filter_3_6=>nx43, filter_3_5=>nx43, filter_3_4=>nx43, filter_3_3=>nx43, 
      filter_3_2=>nx43, filter_3_1=>nx43, filter_3_0=>nx43, filter_2_7=>nx43, 
      filter_2_6=>nx43, filter_2_5=>nx43, filter_2_4=>nx43, filter_2_3=>nx43, 
      filter_2_2=>nx43, filter_2_1=>nx43, filter_2_0=>nx43, filter_1_7=>nx43, 
      filter_1_6=>nx43, filter_1_5=>nx43, filter_1_4=>nx43, filter_1_3=>nx43, 
      filter_1_2=>nx43, filter_1_1=>nx43, filter_1_0=>nx43, filter_0_7=>nx43, 
      filter_0_6=>nx43, filter_0_5=>nx43, filter_0_4=>nx43, filter_0_3=>nx43, 
      filter_0_2=>nx43, filter_0_1=>nx43, filter_0_0=>nx43, window_24_15=>
      nx43, window_24_14=>nx43, window_24_13=>nx43, window_24_12=>nx43, 
      window_24_11=>nx43, window_24_10=>nx43, window_24_9=>nx43, window_24_8
      =>nx43, window_24_7=>nx43, window_24_6=>nx43, window_24_5=>nx43, 
      window_24_4=>nx43, window_24_3=>nx43, window_24_2=>nx43, window_24_1=>
      nx43, window_24_0=>nx43, window_23_15=>nx43, window_23_14=>nx43, 
      window_23_13=>nx43, window_23_12=>nx43, window_23_11=>nx43, 
      window_23_10=>nx43, window_23_9=>nx43, window_23_8=>nx43, window_23_7
      =>nx43, window_23_6=>nx43, window_23_5=>nx43, window_23_4=>nx43, 
      window_23_3=>nx43, window_23_2=>nx43, window_23_1=>nx43, window_23_0=>
      nx43, window_22_15=>nx43, window_22_14=>nx43, window_22_13=>nx43, 
      window_22_12=>nx43, window_22_11=>nx43, window_22_10=>nx43, 
      window_22_9=>nx43, window_22_8=>nx43, window_22_7=>nx43, window_22_6=>
      nx43, window_22_5=>nx43, window_22_4=>nx43, window_22_3=>nx43, 
      window_22_2=>nx43, window_22_1=>nx43, window_22_0=>nx43, window_21_15
      =>nx43, window_21_14=>nx43, window_21_13=>nx43, window_21_12=>nx43, 
      window_21_11=>nx43, window_21_10=>nx43, window_21_9=>nx43, window_21_8
      =>nx43, window_21_7=>nx43, window_21_6=>nx43, window_21_5=>nx43, 
      window_21_4=>nx43, window_21_3=>nx43, window_21_2=>nx43, window_21_1=>
      nx43, window_21_0=>nx43, window_20_15=>nx43, window_20_14=>nx43, 
      window_20_13=>nx43, window_20_12=>nx43, window_20_11=>nx43, 
      window_20_10=>nx43, window_20_9=>nx43, window_20_8=>nx43, window_20_7
      =>nx43, window_20_6=>nx43, window_20_5=>nx43, window_20_4=>nx43, 
      window_20_3=>nx43, window_20_2=>nx43, window_20_1=>nx43, window_20_0=>
      nx43, window_19_15=>nx43, window_19_14=>nx43, window_19_13=>nx43, 
      window_19_12=>nx43, window_19_11=>nx43, window_19_10=>nx43, 
      window_19_9=>nx43, window_19_8=>nx43, window_19_7=>nx43, window_19_6=>
      nx43, window_19_5=>nx43, window_19_4=>nx43, window_19_3=>nx43, 
      window_19_2=>nx43, window_19_1=>nx43, window_19_0=>nx43, window_18_15
      =>nx43, window_18_14=>nx43, window_18_13=>nx43, window_18_12=>nx43, 
      window_18_11=>nx43, window_18_10=>nx43, window_18_9=>nx43, window_18_8
      =>nx43, window_18_7=>nx43, window_18_6=>nx43, window_18_5=>nx43, 
      window_18_4=>nx43, window_18_3=>nx43, window_18_2=>nx43, window_18_1=>
      nx43, window_18_0=>nx43, window_17_15=>nx43, window_17_14=>nx43, 
      window_17_13=>nx43, window_17_12=>nx43, window_17_11=>nx43, 
      window_17_10=>nx43, window_17_9=>nx43, window_17_8=>nx43, window_17_7
      =>nx43, window_17_6=>nx43, window_17_5=>nx43, window_17_4=>nx43, 
      window_17_3=>nx43, window_17_2=>nx43, window_17_1=>nx43, window_17_0=>
      nx43, window_16_15=>nx43, window_16_14=>nx43, window_16_13=>nx43, 
      window_16_12=>nx43, window_16_11=>nx43, window_16_10=>nx43, 
      window_16_9=>nx43, window_16_8=>nx43, window_16_7=>nx43, window_16_6=>
      nx43, window_16_5=>nx43, window_16_4=>nx43, window_16_3=>nx43, 
      window_16_2=>nx43, window_16_1=>nx43, window_16_0=>nx43, window_15_15
      =>nx43, window_15_14=>nx43, window_15_13=>nx43, window_15_12=>nx43, 
      window_15_11=>nx43, window_15_10=>nx43, window_15_9=>nx43, window_15_8
      =>nx43, window_15_7=>nx43, window_15_6=>nx43, window_15_5=>nx43, 
      window_15_4=>nx43, window_15_3=>nx43, window_15_2=>nx43, window_15_1=>
      nx43, window_15_0=>nx43, window_14_15=>nx43, window_14_14=>nx43, 
      window_14_13=>nx43, window_14_12=>nx43, window_14_11=>nx43, 
      window_14_10=>nx43, window_14_9=>nx43, window_14_8=>nx43, window_14_7
      =>nx43, window_14_6=>nx43, window_14_5=>nx43, window_14_4=>nx43, 
      window_14_3=>nx43, window_14_2=>nx43, window_14_1=>nx43, window_14_0=>
      nx43, window_13_15=>nx43, window_13_14=>nx43, window_13_13=>nx43, 
      window_13_12=>nx43, window_13_11=>nx43, window_13_10=>nx43, 
      window_13_9=>nx43, window_13_8=>nx43, window_13_7=>nx43, window_13_6=>
      nx43, window_13_5=>nx43, window_13_4=>nx43, window_13_3=>nx43, 
      window_13_2=>nx43, window_13_1=>nx43, window_13_0=>nx43, window_12_15
      =>nx43, window_12_14=>nx43, window_12_13=>nx43, window_12_12=>nx43, 
      window_12_11=>nx43, window_12_10=>nx43, window_12_9=>nx43, window_12_8
      =>nx43, window_12_7=>nx43, window_12_6=>nx43, window_12_5=>nx43, 
      window_12_4=>nx43, window_12_3=>nx43, window_12_2=>nx43, window_12_1=>
      nx43, window_12_0=>nx43, window_11_15=>nx43, window_11_14=>nx43, 
      window_11_13=>nx43, window_11_12=>nx43, window_11_11=>nx43, 
      window_11_10=>nx43, window_11_9=>nx43, window_11_8=>nx43, window_11_7
      =>nx43, window_11_6=>nx43, window_11_5=>nx43, window_11_4=>nx43, 
      window_11_3=>nx43, window_11_2=>nx43, window_11_1=>nx43, window_11_0=>
      nx43, window_10_15=>nx43, window_10_14=>nx43, window_10_13=>nx43, 
      window_10_12=>nx43, window_10_11=>nx43, window_10_10=>nx43, 
      window_10_9=>nx43, window_10_8=>nx43, window_10_7=>nx43, window_10_6=>
      nx43, window_10_5=>nx43, window_10_4=>nx43, window_10_3=>nx43, 
      window_10_2=>nx43, window_10_1=>nx43, window_10_0=>nx43, window_9_15=>
      nx43, window_9_14=>nx43, window_9_13=>nx43, window_9_12=>nx43, 
      window_9_11=>nx43, window_9_10=>nx43, window_9_9=>nx43, window_9_8=>
      nx43, window_9_7=>nx43, window_9_6=>nx43, window_9_5=>nx43, window_9_4
      =>nx43, window_9_3=>nx43, window_9_2=>nx43, window_9_1=>nx43, 
      window_9_0=>nx43, window_8_15=>nx43, window_8_14=>nx43, window_8_13=>
      nx43, window_8_12=>nx43, window_8_11=>nx43, window_8_10=>nx43, 
      window_8_9=>nx43, window_8_8=>nx43, window_8_7=>nx43, window_8_6=>nx43, 
      window_8_5=>nx43, window_8_4=>nx43, window_8_3=>nx43, window_8_2=>nx43, 
      window_8_1=>nx43, window_8_0=>nx43, window_7_15=>nx43, window_7_14=>
      nx43, window_7_13=>nx43, window_7_12=>nx43, window_7_11=>nx43, 
      window_7_10=>nx43, window_7_9=>nx43, window_7_8=>nx43, window_7_7=>
      nx43, window_7_6=>nx43, window_7_5=>nx43, window_7_4=>nx43, window_7_3
      =>nx43, window_7_2=>nx43, window_7_1=>nx43, window_7_0=>nx43, 
      window_6_15=>nx43, window_6_14=>nx43, window_6_13=>nx43, window_6_12=>
      nx43, window_6_11=>nx43, window_6_10=>nx43, window_6_9=>nx43, 
      window_6_8=>nx43, window_6_7=>nx43, window_6_6=>nx43, window_6_5=>nx43, 
      window_6_4=>nx43, window_6_3=>nx43, window_6_2=>nx43, window_6_1=>nx43, 
      window_6_0=>nx43, window_5_15=>nx43, window_5_14=>nx43, window_5_13=>
      nx43, window_5_12=>nx43, window_5_11=>nx43, window_5_10=>nx43, 
      window_5_9=>nx43, window_5_8=>nx43, window_5_7=>nx43, window_5_6=>nx43, 
      window_5_5=>nx43, window_5_4=>nx43, window_5_3=>nx43, window_5_2=>nx43, 
      window_5_1=>nx43, window_5_0=>nx43, window_4_15=>nx43, window_4_14=>
      nx43, window_4_13=>nx43, window_4_12=>nx43, window_4_11=>nx43, 
      window_4_10=>nx43, window_4_9=>nx43, window_4_8=>nx43, window_4_7=>
      nx43, window_4_6=>nx43, window_4_5=>nx43, window_4_4=>nx43, window_4_3
      =>nx43, window_4_2=>nx43, window_4_1=>nx43, window_4_0=>nx43, 
      window_3_15=>nx43, window_3_14=>nx43, window_3_13=>nx43, window_3_12=>
      nx43, window_3_11=>nx43, window_3_10=>nx43, window_3_9=>nx43, 
      window_3_8=>nx43, window_3_7=>nx43, window_3_6=>nx43, window_3_5=>nx43, 
      window_3_4=>nx43, window_3_3=>nx43, window_3_2=>nx43, window_3_1=>nx43, 
      window_3_0=>nx43, window_2_15=>nx43, window_2_14=>nx43, window_2_13=>
      nx43, window_2_12=>nx43, window_2_11=>nx43, window_2_10=>nx43, 
      window_2_9=>nx43, window_2_8=>nx43, window_2_7=>nx43, window_2_6=>nx43, 
      window_2_5=>nx43, window_2_4=>nx43, window_2_3=>nx43, window_2_2=>nx43, 
      window_2_1=>nx43, window_2_0=>nx43, window_1_15=>nx43, window_1_14=>
      nx43, window_1_13=>nx43, window_1_12=>nx43, window_1_11=>nx43, 
      window_1_10=>nx43, window_1_9=>nx43, window_1_8=>nx43, window_1_7=>
      nx43, window_1_6=>nx43, window_1_5=>nx43, window_1_4=>nx43, window_1_3
      =>nx43, window_1_2=>nx43, window_1_1=>nx43, window_1_0=>nx43, 
      window_0_15=>nx43, window_0_14=>nx43, window_0_13=>nx43, window_0_12=>
      nx43, window_0_11=>nx43, window_0_10=>nx43, window_0_9=>nx43, 
      window_0_8=>nx43, window_0_7=>nx43, window_0_6=>nx43, window_0_5=>nx43, 
      window_0_4=>nx43, window_0_3=>nx43, window_0_2=>nx43, window_0_1=>nx43, 
      window_0_0=>nx43, outputs_24_15=>DANGLING(0), outputs_24_14=>DANGLING(
      1), outputs_24_13=>DANGLING(2), outputs_24_12=>DANGLING(3), 
      outputs_24_11=>DANGLING(4), outputs_24_10=>DANGLING(5), outputs_24_9=>
      DANGLING(6), outputs_24_8=>DANGLING(7), outputs_24_7=>DANGLING(8), 
      outputs_24_6=>DANGLING(9), outputs_24_5=>DANGLING(10), outputs_24_4=>
      DANGLING(11), outputs_24_3=>DANGLING(12), outputs_24_2=>DANGLING(13), 
      outputs_24_1=>DANGLING(14), outputs_24_0=>DANGLING(15), outputs_23_15
      =>DANGLING(16), outputs_23_14=>DANGLING(17), outputs_23_13=>DANGLING(
      18), outputs_23_12=>DANGLING(19), outputs_23_11=>DANGLING(20), 
      outputs_23_10=>DANGLING(21), outputs_23_9=>DANGLING(22), outputs_23_8
      =>DANGLING(23), outputs_23_7=>DANGLING(24), outputs_23_6=>DANGLING(25), 
      outputs_23_5=>DANGLING(26), outputs_23_4=>DANGLING(27), outputs_23_3=>
      DANGLING(28), outputs_23_2=>DANGLING(29), outputs_23_1=>DANGLING(30), 
      outputs_23_0=>DANGLING(31), outputs_22_15=>DANGLING(32), outputs_22_14
      =>DANGLING(33), outputs_22_13=>DANGLING(34), outputs_22_12=>DANGLING(
      35), outputs_22_11=>DANGLING(36), outputs_22_10=>DANGLING(37), 
      outputs_22_9=>DANGLING(38), outputs_22_8=>DANGLING(39), outputs_22_7=>
      DANGLING(40), outputs_22_6=>DANGLING(41), outputs_22_5=>DANGLING(42), 
      outputs_22_4=>DANGLING(43), outputs_22_3=>DANGLING(44), outputs_22_2=>
      DANGLING(45), outputs_22_1=>DANGLING(46), outputs_22_0=>DANGLING(47), 
      outputs_21_15=>DANGLING(48), outputs_21_14=>DANGLING(49), 
      outputs_21_13=>DANGLING(50), outputs_21_12=>DANGLING(51), 
      outputs_21_11=>DANGLING(52), outputs_21_10=>DANGLING(53), outputs_21_9
      =>DANGLING(54), outputs_21_8=>DANGLING(55), outputs_21_7=>DANGLING(56), 
      outputs_21_6=>DANGLING(57), outputs_21_5=>DANGLING(58), outputs_21_4=>
      DANGLING(59), outputs_21_3=>DANGLING(60), outputs_21_2=>DANGLING(61), 
      outputs_21_1=>DANGLING(62), outputs_21_0=>DANGLING(63), outputs_20_15
      =>DANGLING(64), outputs_20_14=>DANGLING(65), outputs_20_13=>DANGLING(
      66), outputs_20_12=>DANGLING(67), outputs_20_11=>DANGLING(68), 
      outputs_20_10=>DANGLING(69), outputs_20_9=>DANGLING(70), outputs_20_8
      =>DANGLING(71), outputs_20_7=>DANGLING(72), outputs_20_6=>DANGLING(73), 
      outputs_20_5=>DANGLING(74), outputs_20_4=>DANGLING(75), outputs_20_3=>
      DANGLING(76), outputs_20_2=>DANGLING(77), outputs_20_1=>DANGLING(78), 
      outputs_20_0=>DANGLING(79), outputs_19_15=>DANGLING(80), outputs_19_14
      =>DANGLING(81), outputs_19_13=>DANGLING(82), outputs_19_12=>DANGLING(
      83), outputs_19_11=>DANGLING(84), outputs_19_10=>DANGLING(85), 
      outputs_19_9=>DANGLING(86), outputs_19_8=>DANGLING(87), outputs_19_7=>
      DANGLING(88), outputs_19_6=>DANGLING(89), outputs_19_5=>DANGLING(90), 
      outputs_19_4=>DANGLING(91), outputs_19_3=>DANGLING(92), outputs_19_2=>
      DANGLING(93), outputs_19_1=>DANGLING(94), outputs_19_0=>DANGLING(95), 
      outputs_18_15=>DANGLING(96), outputs_18_14=>DANGLING(97), 
      outputs_18_13=>DANGLING(98), outputs_18_12=>DANGLING(99), 
      outputs_18_11=>DANGLING(100), outputs_18_10=>DANGLING(101), 
      outputs_18_9=>DANGLING(102), outputs_18_8=>DANGLING(103), outputs_18_7
      =>DANGLING(104), outputs_18_6=>DANGLING(105), outputs_18_5=>DANGLING(
      106), outputs_18_4=>DANGLING(107), outputs_18_3=>DANGLING(108), 
      outputs_18_2=>DANGLING(109), outputs_18_1=>DANGLING(110), outputs_18_0
      =>DANGLING(111), outputs_17_15=>DANGLING(112), outputs_17_14=>DANGLING
      (113), outputs_17_13=>DANGLING(114), outputs_17_12=>DANGLING(115), 
      outputs_17_11=>DANGLING(116), outputs_17_10=>DANGLING(117), 
      outputs_17_9=>DANGLING(118), outputs_17_8=>DANGLING(119), outputs_17_7
      =>DANGLING(120), outputs_17_6=>DANGLING(121), outputs_17_5=>DANGLING(
      122), outputs_17_4=>DANGLING(123), outputs_17_3=>DANGLING(124), 
      outputs_17_2=>DANGLING(125), outputs_17_1=>DANGLING(126), outputs_17_0
      =>DANGLING(127), outputs_16_15=>DANGLING(128), outputs_16_14=>DANGLING
      (129), outputs_16_13=>DANGLING(130), outputs_16_12=>DANGLING(131), 
      outputs_16_11=>DANGLING(132), outputs_16_10=>DANGLING(133), 
      outputs_16_9=>DANGLING(134), outputs_16_8=>DANGLING(135), outputs_16_7
      =>DANGLING(136), outputs_16_6=>DANGLING(137), outputs_16_5=>DANGLING(
      138), outputs_16_4=>DANGLING(139), outputs_16_3=>DANGLING(140), 
      outputs_16_2=>DANGLING(141), outputs_16_1=>DANGLING(142), outputs_16_0
      =>DANGLING(143), outputs_15_15=>DANGLING(144), outputs_15_14=>DANGLING
      (145), outputs_15_13=>DANGLING(146), outputs_15_12=>DANGLING(147), 
      outputs_15_11=>DANGLING(148), outputs_15_10=>DANGLING(149), 
      outputs_15_9=>DANGLING(150), outputs_15_8=>DANGLING(151), outputs_15_7
      =>DANGLING(152), outputs_15_6=>DANGLING(153), outputs_15_5=>DANGLING(
      154), outputs_15_4=>DANGLING(155), outputs_15_3=>DANGLING(156), 
      outputs_15_2=>DANGLING(157), outputs_15_1=>DANGLING(158), outputs_15_0
      =>DANGLING(159), outputs_14_15=>DANGLING(160), outputs_14_14=>DANGLING
      (161), outputs_14_13=>DANGLING(162), outputs_14_12=>DANGLING(163), 
      outputs_14_11=>DANGLING(164), outputs_14_10=>DANGLING(165), 
      outputs_14_9=>DANGLING(166), outputs_14_8=>DANGLING(167), outputs_14_7
      =>DANGLING(168), outputs_14_6=>DANGLING(169), outputs_14_5=>DANGLING(
      170), outputs_14_4=>DANGLING(171), outputs_14_3=>DANGLING(172), 
      outputs_14_2=>DANGLING(173), outputs_14_1=>DANGLING(174), outputs_14_0
      =>DANGLING(175), outputs_13_15=>DANGLING(176), outputs_13_14=>DANGLING
      (177), outputs_13_13=>DANGLING(178), outputs_13_12=>DANGLING(179), 
      outputs_13_11=>DANGLING(180), outputs_13_10=>DANGLING(181), 
      outputs_13_9=>DANGLING(182), outputs_13_8=>DANGLING(183), outputs_13_7
      =>DANGLING(184), outputs_13_6=>DANGLING(185), outputs_13_5=>DANGLING(
      186), outputs_13_4=>DANGLING(187), outputs_13_3=>DANGLING(188), 
      outputs_13_2=>DANGLING(189), outputs_13_1=>DANGLING(190), outputs_13_0
      =>DANGLING(191), outputs_12_15=>DANGLING(192), outputs_12_14=>DANGLING
      (193), outputs_12_13=>DANGLING(194), outputs_12_12=>DANGLING(195), 
      outputs_12_11=>DANGLING(196), outputs_12_10=>DANGLING(197), 
      outputs_12_9=>DANGLING(198), outputs_12_8=>DANGLING(199), outputs_12_7
      =>DANGLING(200), outputs_12_6=>DANGLING(201), outputs_12_5=>DANGLING(
      202), outputs_12_4=>DANGLING(203), outputs_12_3=>DANGLING(204), 
      outputs_12_2=>DANGLING(205), outputs_12_1=>DANGLING(206), outputs_12_0
      =>DANGLING(207), outputs_11_15=>DANGLING(208), outputs_11_14=>DANGLING
      (209), outputs_11_13=>DANGLING(210), outputs_11_12=>DANGLING(211), 
      outputs_11_11=>DANGLING(212), outputs_11_10=>DANGLING(213), 
      outputs_11_9=>DANGLING(214), outputs_11_8=>DANGLING(215), outputs_11_7
      =>DANGLING(216), outputs_11_6=>DANGLING(217), outputs_11_5=>DANGLING(
      218), outputs_11_4=>DANGLING(219), outputs_11_3=>DANGLING(220), 
      outputs_11_2=>DANGLING(221), outputs_11_1=>DANGLING(222), outputs_11_0
      =>DANGLING(223), outputs_10_15=>DANGLING(224), outputs_10_14=>DANGLING
      (225), outputs_10_13=>DANGLING(226), outputs_10_12=>DANGLING(227), 
      outputs_10_11=>DANGLING(228), outputs_10_10=>DANGLING(229), 
      outputs_10_9=>DANGLING(230), outputs_10_8=>DANGLING(231), outputs_10_7
      =>DANGLING(232), outputs_10_6=>DANGLING(233), outputs_10_5=>DANGLING(
      234), outputs_10_4=>DANGLING(235), outputs_10_3=>DANGLING(236), 
      outputs_10_2=>DANGLING(237), outputs_10_1=>DANGLING(238), outputs_10_0
      =>DANGLING(239), outputs_9_15=>DANGLING(240), outputs_9_14=>DANGLING(
      241), outputs_9_13=>DANGLING(242), outputs_9_12=>DANGLING(243), 
      outputs_9_11=>DANGLING(244), outputs_9_10=>DANGLING(245), outputs_9_9
      =>DANGLING(246), outputs_9_8=>DANGLING(247), outputs_9_7=>DANGLING(248
      ), outputs_9_6=>DANGLING(249), outputs_9_5=>DANGLING(250), outputs_9_4
      =>DANGLING(251), outputs_9_3=>DANGLING(252), outputs_9_2=>DANGLING(253
      ), outputs_9_1=>DANGLING(254), outputs_9_0=>DANGLING(255), 
      outputs_8_15=>DANGLING(256), outputs_8_14=>DANGLING(257), outputs_8_13
      =>DANGLING(258), outputs_8_12=>DANGLING(259), outputs_8_11=>DANGLING(
      260), outputs_8_10=>DANGLING(261), outputs_8_9=>DANGLING(262), 
      outputs_8_8=>DANGLING(263), outputs_8_7=>DANGLING(264), outputs_8_6=>
      DANGLING(265), outputs_8_5=>DANGLING(266), outputs_8_4=>DANGLING(267), 
      outputs_8_3=>DANGLING(268), outputs_8_2=>DANGLING(269), outputs_8_1=>
      DANGLING(270), outputs_8_0=>DANGLING(271), outputs_7_15=>DANGLING(272), 
      outputs_7_14=>DANGLING(273), outputs_7_13=>DANGLING(274), outputs_7_12
      =>DANGLING(275), outputs_7_11=>DANGLING(276), outputs_7_10=>DANGLING(
      277), outputs_7_9=>DANGLING(278), outputs_7_8=>DANGLING(279), 
      outputs_7_7=>DANGLING(280), outputs_7_6=>DANGLING(281), outputs_7_5=>
      DANGLING(282), outputs_7_4=>DANGLING(283), outputs_7_3=>DANGLING(284), 
      outputs_7_2=>DANGLING(285), outputs_7_1=>DANGLING(286), outputs_7_0=>
      DANGLING(287), outputs_6_15=>DANGLING(288), outputs_6_14=>DANGLING(289
      ), outputs_6_13=>DANGLING(290), outputs_6_12=>DANGLING(291), 
      outputs_6_11=>DANGLING(292), outputs_6_10=>DANGLING(293), outputs_6_9
      =>DANGLING(294), outputs_6_8=>DANGLING(295), outputs_6_7=>DANGLING(296
      ), outputs_6_6=>DANGLING(297), outputs_6_5=>DANGLING(298), outputs_6_4
      =>DANGLING(299), outputs_6_3=>DANGLING(300), outputs_6_2=>DANGLING(301
      ), outputs_6_1=>DANGLING(302), outputs_6_0=>DANGLING(303), 
      outputs_5_15=>DANGLING(304), outputs_5_14=>DANGLING(305), outputs_5_13
      =>DANGLING(306), outputs_5_12=>DANGLING(307), outputs_5_11=>DANGLING(
      308), outputs_5_10=>DANGLING(309), outputs_5_9=>DANGLING(310), 
      outputs_5_8=>DANGLING(311), outputs_5_7=>DANGLING(312), outputs_5_6=>
      DANGLING(313), outputs_5_5=>DANGLING(314), outputs_5_4=>DANGLING(315), 
      outputs_5_3=>DANGLING(316), outputs_5_2=>DANGLING(317), outputs_5_1=>
      DANGLING(318), outputs_5_0=>DANGLING(319), outputs_4_15=>DANGLING(320), 
      outputs_4_14=>DANGLING(321), outputs_4_13=>DANGLING(322), outputs_4_12
      =>DANGLING(323), outputs_4_11=>DANGLING(324), outputs_4_10=>DANGLING(
      325), outputs_4_9=>DANGLING(326), outputs_4_8=>DANGLING(327), 
      outputs_4_7=>DANGLING(328), outputs_4_6=>DANGLING(329), outputs_4_5=>
      DANGLING(330), outputs_4_4=>DANGLING(331), outputs_4_3=>DANGLING(332), 
      outputs_4_2=>DANGLING(333), outputs_4_1=>DANGLING(334), outputs_4_0=>
      DANGLING(335), outputs_3_15=>DANGLING(336), outputs_3_14=>DANGLING(337
      ), outputs_3_13=>DANGLING(338), outputs_3_12=>DANGLING(339), 
      outputs_3_11=>DANGLING(340), outputs_3_10=>DANGLING(341), outputs_3_9
      =>DANGLING(342), outputs_3_8=>DANGLING(343), outputs_3_7=>DANGLING(344
      ), outputs_3_6=>DANGLING(345), outputs_3_5=>DANGLING(346), outputs_3_4
      =>DANGLING(347), outputs_3_3=>DANGLING(348), outputs_3_2=>DANGLING(349
      ), outputs_3_1=>DANGLING(350), outputs_3_0=>DANGLING(351), 
      outputs_2_15=>DANGLING(352), outputs_2_14=>DANGLING(353), outputs_2_13
      =>DANGLING(354), outputs_2_12=>DANGLING(355), outputs_2_11=>DANGLING(
      356), outputs_2_10=>DANGLING(357), outputs_2_9=>DANGLING(358), 
      outputs_2_8=>DANGLING(359), outputs_2_7=>DANGLING(360), outputs_2_6=>
      DANGLING(361), outputs_2_5=>DANGLING(362), outputs_2_4=>DANGLING(363), 
      outputs_2_3=>DANGLING(364), outputs_2_2=>DANGLING(365), outputs_2_1=>
      DANGLING(366), outputs_2_0=>DANGLING(367), outputs_1_15=>DANGLING(368), 
      outputs_1_14=>DANGLING(369), outputs_1_13=>DANGLING(370), outputs_1_12
      =>DANGLING(371), outputs_1_11=>DANGLING(372), outputs_1_10=>DANGLING(
      373), outputs_1_9=>DANGLING(374), outputs_1_8=>DANGLING(375), 
      outputs_1_7=>DANGLING(376), outputs_1_6=>DANGLING(377), outputs_1_5=>
      DANGLING(378), outputs_1_4=>DANGLING(379), outputs_1_3=>DANGLING(380), 
      outputs_1_2=>DANGLING(381), outputs_1_1=>DANGLING(382), outputs_1_0=>
      DANGLING(383), outputs_0_15=>DANGLING(384), outputs_0_14=>DANGLING(385
      ), outputs_0_13=>DANGLING(386), outputs_0_12=>DANGLING(387), 
      outputs_0_11=>DANGLING(388), outputs_0_10=>DANGLING(389), outputs_0_9
      =>DANGLING(390), outputs_0_8=>DANGLING(391), outputs_0_7=>DANGLING(392
      ), outputs_0_6=>DANGLING(393), outputs_0_5=>DANGLING(394), outputs_0_4
      =>DANGLING(395), outputs_0_3=>DANGLING(396), outputs_0_2=>DANGLING(397
      ), outputs_0_1=>DANGLING(398), outputs_0_0=>DANGLING(399), clk=>clk, 
      start=>start, rst=>rst, doneOut=>doneMul, workingOut=>DANGLING(400));
   ix44 : fake_gnd port map ( Y=>nx43);
   ix1 : inv01 port map ( Y=>doneCores, A=>nx54);
   ix55 : nor02_2x port map ( Y=>nx54, A0=>layerType, A1=>doneMul);
end CNNCoresArch_unfold_2610 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Reg_2 is
   port (
      D : IN std_logic_vector (1 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      Q : OUT std_logic_vector (1 DOWNTO 0)) ;
end Reg_2 ;

architecture RegArch of Reg_2 is
   signal Q_1_EXMPLR, Q_0_EXMPLR, nx82, nx92, nx104, nx106, nx108, nx113, 
      nx115: std_logic ;

begin
   Q(1) <= Q_1_EXMPLR ;
   Q(0) <= Q_0_EXMPLR ;
   reg_Q_0 : dffr port map ( Q=>Q_0_EXMPLR, QB=>OPEN, D=>nx82, CLK=>clk, R=>
      rst);
   ix83 : nand02 port map ( Y=>nx82, A0=>nx104, A1=>nx108);
   ix105 : nand02 port map ( Y=>nx104, A0=>Q_0_EXMPLR, A1=>nx106);
   ix107 : inv01 port map ( Y=>nx106, A=>en);
   ix109 : nand02 port map ( Y=>nx108, A0=>D(0), A1=>en);
   reg_Q_1 : dffr port map ( Q=>Q_1_EXMPLR, QB=>OPEN, D=>nx92, CLK=>clk, R=>
      rst);
   ix93 : nand02 port map ( Y=>nx92, A0=>nx113, A1=>nx115);
   ix114 : nand02 port map ( Y=>nx113, A0=>Q_1_EXMPLR, A1=>nx106);
   ix116 : nand02 port map ( Y=>nx115, A0=>D(1), A1=>en);
end RegArch ;

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

architecture FullAdderArch_unfold_1700_0 of FullAdder is
begin
   ix44 : fake_gnd port map ( Y=>cout);
   ix53 : inv01 port map ( Y=>s, A=>a);
end FullAdderArch_unfold_1700_0 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FullAdder_unfolded12 is
   port (
      a : IN std_logic ;
      b : IN std_logic ;
      cin : IN std_logic ;
      s : OUT std_logic ;
      cout : OUT std_logic) ;
end FullAdder_unfolded12 ;

architecture FullAdderArch_unfold_2247_xmplrcopy of FullAdder_unfolded12 is
   signal nx55: std_logic ;

begin
   ix45 : fake_gnd port map ( Y=>cout);
   ix1 : xnor2 port map ( Y=>s, A0=>cin, A1=>nx55);
   ix56 : inv01 port map ( Y=>nx55, A=>a);
end FullAdderArch_unfold_2247_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NBitAdder_2 is
   port (
      a : IN std_logic_vector (1 DOWNTO 0) ;
      b : IN std_logic_vector (1 DOWNTO 0) ;
      carryIn : IN std_logic ;
      sum : OUT std_logic_vector (1 DOWNTO 0) ;
      carryOut : OUT std_logic) ;
end NBitAdder_2 ;

architecture NBitAdderArch_unfold_2210 of NBitAdder_2 is
   component FullAdder
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   component FullAdder_unfolded12
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   signal carryIn_EXMPLR, b_1_EXMPLR: std_logic ;
   
   signal DANGLING : std_logic_vector (1 downto 0 );

begin
   carryOut <= b_1_EXMPLR ;
   f0 : FullAdder port map ( a=>a(0), b=>b_1_EXMPLR, cin=>carryIn_EXMPLR, s
      =>sum(0), cout=>DANGLING(0));
   loop1_1_fx : FullAdder_unfolded12 port map ( a=>a(1), b=>b_1_EXMPLR, cin
      =>a(0), s=>sum(1), cout=>DANGLING(1));
   ix4 : fake_gnd port map ( Y=>b_1_EXMPLR);
   ix2 : fake_vcc port map ( Y=>carryIn_EXMPLR);
end NBitAdderArch_unfold_2210 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Counter_2 is
   port (
      en : IN std_logic ;
      reset : IN std_logic ;
      clk : IN std_logic ;
      count : OUT std_logic_vector (1 DOWNTO 0)) ;
end Counter_2 ;

architecture CounterArch of Counter_2 is
   component Reg_2
      port (
         D : IN std_logic_vector (1 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (1 DOWNTO 0)) ;
   end component ;
   component NBitAdder_2
      port (
         a : IN std_logic_vector (1 DOWNTO 0) ;
         b : IN std_logic_vector (1 DOWNTO 0) ;
         carryIn : IN std_logic ;
         sum : OUT std_logic_vector (1 DOWNTO 0) ;
         carryOut : OUT std_logic) ;
   end component ;
   signal count_1_EXMPLR, count_0_EXMPLR, addedOne_1, addedOne_0, finalReset, 
      oneSignal_1, PWR, nx21, nx23: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   count(1) <= count_1_EXMPLR ;
   count(0) <= count_0_EXMPLR ;
   counterReg : Reg_2 port map ( D(1)=>addedOne_1, D(0)=>addedOne_0, en=>en, 
      clk=>clk, rst=>finalReset, Q(1)=>count_1_EXMPLR, Q(0)=>count_0_EXMPLR
   );
   nextCount : NBitAdder_2 port map ( a(1)=>count_1_EXMPLR, a(0)=>
      count_0_EXMPLR, b(1)=>oneSignal_1, b(0)=>oneSignal_1, carryIn=>PWR, 
      sum(1)=>addedOne_1, sum(0)=>addedOne_0, carryOut=>DANGLING(0));
   ix15 : fake_vcc port map ( Y=>PWR);
   ix13 : fake_gnd port map ( Y=>oneSignal_1);
   ix1 : nor02_2x port map ( Y=>finalReset, A0=>nx21, A1=>nx23);
   ix22 : inv01 port map ( Y=>nx21, A=>reset);
   ix24 : inv01 port map ( Y=>nx23, A=>clk);
end CounterArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NetworkController_2 is
   port (
      start : IN std_logic ;
      dmaFinish : IN std_logic ;
      oneLayerFinish : IN std_logic ;
      resetState : IN std_logic ;
      clk : IN std_logic ;
      layersNumber : IN std_logic_vector (1 DOWNTO 0) ;
      loadConfig : OUT std_logic ;
      startOneLayer : OUT std_logic ;
      finish : OUT std_logic) ;
end NetworkController_2 ;

architecture NetworkControllerArch_unfold_3187 of NetworkController_2 is
   component Counter_2
      port (
         en : IN std_logic ;
         reset : IN std_logic ;
         clk : IN std_logic ;
         count : OUT std_logic_vector (1 DOWNTO 0)) ;
   end component ;
   signal counterEn, altCounterOut_1, altCounterOut_0, resetCounter, 
      currentState_1, currentState_0, NOT_clk, counterOut_0, nx16, 
      counterOut_1, nx24, nx30, nx44, nx35, nx45, nx59, nx64, nx74, nx79, 
      nx82, nx84, nx86, nx89: std_logic ;

begin
   counterMap : Counter_2 port map ( en=>counterEn, reset=>resetCounter, clk
      =>clk, count(1)=>altCounterOut_1, count(0)=>altCounterOut_0);
   ix15 : fake_gnd port map ( Y=>loadConfig);
   ix9 : nor02_2x port map ( Y=>finish, A0=>nx59, A1=>nx86);
   ix46 : nor02_2x port map ( Y=>nx45, A0=>nx59, A1=>currentState_0);
   reg_currentState_0 : dffr port map ( Q=>currentState_0, QB=>nx86, D=>nx35, 
      CLK=>NOT_clk, R=>resetState);
   ix36 : oai21 port map ( Y=>nx35, A0=>currentState_0, A1=>nx64, B0=>nx84);
   ix65 : aoi222 port map ( Y=>nx64, A0=>currentState_1, A1=>currentState_0, 
      B0=>start, B1=>resetCounter, C0=>nx30, C1=>nx44);
   reg_currentState_1 : dffr port map ( Q=>currentState_1, QB=>nx59, D=>nx45, 
      CLK=>NOT_clk, R=>resetState);
   ix68 : inv01 port map ( Y=>NOT_clk, A=>clk);
   ix37 : nor02_2x port map ( Y=>resetCounter, A0=>currentState_1, A1=>
      currentState_0);
   ix31 : nor02_2x port map ( Y=>nx30, A0=>nx16, A1=>nx24);
   ix18 : xnor2 port map ( Y=>nx16, A0=>counterOut_0, A1=>nx74);
   reg_counterOut_0 : dff port map ( Q=>counterOut_0, QB=>OPEN, D=>
      altCounterOut_0, CLK=>clk);
   ix75 : inv01 port map ( Y=>nx74, A=>layersNumber(0));
   ix25 : xnor2 port map ( Y=>nx24, A0=>counterOut_1, A1=>nx79);
   reg_counterOut_1 : dff port map ( Q=>counterOut_1, QB=>OPEN, D=>
      altCounterOut_1, CLK=>clk);
   ix80 : inv01 port map ( Y=>nx79, A=>layersNumber(1));
   ix45 : nor03_2x port map ( Y=>nx44, A0=>nx59, A1=>currentState_0, A2=>
      nx82);
   ix83 : inv01 port map ( Y=>nx82, A=>oneLayerFinish);
   ix85 : nand02 port map ( Y=>nx84, A0=>currentState_0, A1=>nx59);
   ix67 : nor02_2x port map ( Y=>startOneLayer, A0=>nx59, A1=>currentState_0
   );
   ix43 : inv01 port map ( Y=>counterEn, A=>nx89);
   ix90 : oai21 port map ( Y=>nx89, A0=>oneLayerFinish, A1=>nx59, B0=>nx86);

end NetworkControllerArch_unfold_3187 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Reg_3 is
   port (
      D : IN std_logic_vector (2 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      Q : OUT std_logic_vector (2 DOWNTO 0)) ;
end Reg_3 ;

architecture RegArch of Reg_3 is
   signal Q_2_EXMPLR, Q_1_EXMPLR, Q_0_EXMPLR, nx94, nx104, nx114, nx126, 
      nx128, nx130, nx135, nx137, nx142, nx144: std_logic ;

begin
   Q(2) <= Q_2_EXMPLR ;
   Q(1) <= Q_1_EXMPLR ;
   Q(0) <= Q_0_EXMPLR ;
   reg_Q_0 : dffr port map ( Q=>Q_0_EXMPLR, QB=>OPEN, D=>nx94, CLK=>clk, R=>
      rst);
   ix95 : nand02 port map ( Y=>nx94, A0=>nx126, A1=>nx130);
   ix127 : nand02 port map ( Y=>nx126, A0=>Q_0_EXMPLR, A1=>nx128);
   ix129 : inv01 port map ( Y=>nx128, A=>en);
   ix131 : nand02 port map ( Y=>nx130, A0=>D(0), A1=>en);
   reg_Q_1 : dffr port map ( Q=>Q_1_EXMPLR, QB=>OPEN, D=>nx104, CLK=>clk, R
      =>rst);
   ix105 : nand02 port map ( Y=>nx104, A0=>nx135, A1=>nx137);
   ix136 : nand02 port map ( Y=>nx135, A0=>Q_1_EXMPLR, A1=>nx128);
   ix138 : nand02 port map ( Y=>nx137, A0=>D(1), A1=>en);
   reg_Q_2 : dffr port map ( Q=>Q_2_EXMPLR, QB=>OPEN, D=>nx114, CLK=>clk, R
      =>rst);
   ix115 : nand02 port map ( Y=>nx114, A0=>nx142, A1=>nx144);
   ix143 : nand02 port map ( Y=>nx142, A0=>Q_2_EXMPLR, A1=>nx128);
   ix145 : nand02 port map ( Y=>nx144, A0=>D(2), A1=>en);
end RegArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FullAdder_unfolded13 is
   port (
      a : IN std_logic ;
      b : IN std_logic ;
      cin : IN std_logic ;
      s : OUT std_logic ;
      cout : OUT std_logic) ;
end FullAdder_unfolded13 ;

architecture FullAdderArch_unfold_2246_xmplrcopy of FullAdder_unfolded13 is
   signal nx95, nx97: std_logic ;

begin
   ix1 : nor02_2x port map ( Y=>cout, A0=>nx95, A1=>nx97);
   ix96 : inv01 port map ( Y=>nx95, A=>cin);
   ix98 : inv01 port map ( Y=>nx97, A=>a);
   ix7 : xnor2 port map ( Y=>s, A0=>cin, A1=>nx97);
end FullAdderArch_unfold_2246_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NBitAdder_3 is
   port (
      a : IN std_logic_vector (2 DOWNTO 0) ;
      b : IN std_logic_vector (2 DOWNTO 0) ;
      carryIn : IN std_logic ;
      sum : OUT std_logic_vector (2 DOWNTO 0) ;
      carryOut : OUT std_logic) ;
end NBitAdder_3 ;

architecture NBitAdderArch_unfold_2211 of NBitAdder_3 is
   component FullAdder
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   component FullAdder_unfolded13
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   component FullAdder_unfolded12
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   signal temp_1, carryIn_EXMPLR, b_2_EXMPLR: std_logic ;
   
   signal DANGLING : std_logic_vector (1 downto 0 );

begin
   carryOut <= b_2_EXMPLR ;
   f0 : FullAdder port map ( a=>a(0), b=>b_2_EXMPLR, cin=>carryIn_EXMPLR, s
      =>sum(0), cout=>DANGLING(0));
   loop1_1_fx : FullAdder_unfolded13 port map ( a=>a(1), b=>b_2_EXMPLR, cin
      =>a(0), s=>sum(1), cout=>temp_1);
   loop1_2_fx : FullAdder_unfolded12 port map ( a=>a(2), b=>b_2_EXMPLR, cin
      =>temp_1, s=>sum(2), cout=>DANGLING(1));
   ix4 : fake_gnd port map ( Y=>b_2_EXMPLR);
   ix2 : fake_vcc port map ( Y=>carryIn_EXMPLR);
end NBitAdderArch_unfold_2211 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Counter_3 is
   port (
      en : IN std_logic ;
      reset : IN std_logic ;
      clk : IN std_logic ;
      count : OUT std_logic_vector (2 DOWNTO 0)) ;
end Counter_3 ;

architecture CounterArch of Counter_3 is
   component Reg_3
      port (
         D : IN std_logic_vector (2 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (2 DOWNTO 0)) ;
   end component ;
   component NBitAdder_3
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         carryIn : IN std_logic ;
         sum : OUT std_logic_vector (2 DOWNTO 0) ;
         carryOut : OUT std_logic) ;
   end component ;
   signal count_2_EXMPLR, count_1_EXMPLR, count_0_EXMPLR, addedOne_2, 
      addedOne_1, addedOne_0, finalReset, oneSignal_2, PWR, nx23, nx25: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   count(2) <= count_2_EXMPLR ;
   count(1) <= count_1_EXMPLR ;
   count(0) <= count_0_EXMPLR ;
   counterReg : Reg_3 port map ( D(2)=>addedOne_2, D(1)=>addedOne_1, D(0)=>
      addedOne_0, en=>en, clk=>clk, rst=>finalReset, Q(2)=>count_2_EXMPLR, 
      Q(1)=>count_1_EXMPLR, Q(0)=>count_0_EXMPLR);
   nextCount : NBitAdder_3 port map ( a(2)=>count_2_EXMPLR, a(1)=>
      count_1_EXMPLR, a(0)=>count_0_EXMPLR, b(2)=>oneSignal_2, b(1)=>
      oneSignal_2, b(0)=>oneSignal_2, carryIn=>PWR, sum(2)=>addedOne_2, 
      sum(1)=>addedOne_1, sum(0)=>addedOne_0, carryOut=>DANGLING(0));
   ix17 : fake_vcc port map ( Y=>PWR);
   ix15 : fake_gnd port map ( Y=>oneSignal_2);
   ix1 : nor02_2x port map ( Y=>finalReset, A0=>nx23, A1=>nx25);
   ix24 : inv01 port map ( Y=>nx23, A=>reset);
   ix26 : inv01 port map ( Y=>nx25, A=>clk);
end CounterArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity LayerController_3 is
   port (
      start : IN std_logic ;
      dmaFinish : IN std_logic ;
      filterFinish : IN std_logic ;
      resetState : IN std_logic ;
      clk : IN std_logic ;
      filtersNumber : IN std_logic_vector (2 DOWNTO 0) ;
      loadConfig : OUT std_logic ;
      startFilterConv : OUT std_logic ;
      finish : OUT std_logic) ;
end LayerController_3 ;

architecture LayerControllerArch_unfold_3035 of LayerController_3 is
   component Counter_3
      port (
         en : IN std_logic ;
         reset : IN std_logic ;
         clk : IN std_logic ;
         count : OUT std_logic_vector (2 DOWNTO 0)) ;
   end component ;
   signal counterEn, altCounterOut_2, altCounterOut_1, altCounterOut_0, 
      resetCounter, currentState_1, currentState_0, NOT_clk, counterOut_1, 
      nx16, counterOut_2, counterOut_0, nx42, nx56, nx37, nx47, nx61, nx69, 
      nx80, nx82, nx84, nx88, nx93, nx95, nx97, nx100: std_logic ;

begin
   counterMap : Counter_3 port map ( en=>counterEn, reset=>resetCounter, clk
      =>clk, count(2)=>altCounterOut_2, count(1)=>altCounterOut_1, count(0)
      =>altCounterOut_0);
   ix15 : fake_gnd port map ( Y=>loadConfig);
   ix9 : nor02_2x port map ( Y=>finish, A0=>nx61, A1=>nx97);
   ix48 : nor02_2x port map ( Y=>nx47, A0=>nx61, A1=>currentState_0);
   reg_currentState_0 : dffr port map ( Q=>currentState_0, QB=>nx97, D=>nx37, 
      CLK=>NOT_clk, R=>resetState);
   ix38 : oai21 port map ( Y=>nx37, A0=>currentState_0, A1=>nx69, B0=>nx95);
   ix70 : aoi222 port map ( Y=>nx69, A0=>start, A1=>resetCounter, B0=>
      currentState_1, B1=>currentState_0, C0=>nx42, C1=>nx56);
   ix49 : nor02_2x port map ( Y=>resetCounter, A0=>currentState_1, A1=>
      currentState_0);
   reg_currentState_1 : dffr port map ( Q=>currentState_1, QB=>nx61, D=>nx47, 
      CLK=>NOT_clk, R=>resetState);
   ix75 : inv01 port map ( Y=>NOT_clk, A=>clk);
   ix43 : nor02_2x port map ( Y=>nx42, A0=>nx16, A1=>nx82);
   ix18 : xnor2 port map ( Y=>nx16, A0=>counterOut_1, A1=>nx80);
   reg_counterOut_1 : dff port map ( Q=>counterOut_1, QB=>OPEN, D=>
      altCounterOut_1, CLK=>clk);
   ix81 : inv01 port map ( Y=>nx80, A=>filtersNumber(1));
   ix83 : nand02 port map ( Y=>nx82, A0=>nx84, A1=>nx88);
   ix85 : xnor2 port map ( Y=>nx84, A0=>counterOut_2, A1=>filtersNumber(2));
   reg_counterOut_2 : dff port map ( Q=>counterOut_2, QB=>OPEN, D=>
      altCounterOut_2, CLK=>clk);
   ix89 : xnor2 port map ( Y=>nx88, A0=>counterOut_0, A1=>filtersNumber(0));
   reg_counterOut_0 : dff port map ( Q=>counterOut_0, QB=>OPEN, D=>
      altCounterOut_0, CLK=>clk);
   ix57 : nor03_2x port map ( Y=>nx56, A0=>nx61, A1=>currentState_0, A2=>
      nx93);
   ix94 : inv01 port map ( Y=>nx93, A=>filterFinish);
   ix96 : nand02 port map ( Y=>nx95, A0=>currentState_0, A1=>nx61);
   ix79 : nor02_2x port map ( Y=>startFilterConv, A0=>nx61, A1=>
      currentState_0);
   ix55 : inv01 port map ( Y=>counterEn, A=>nx100);
   ix101 : oai21 port map ( Y=>nx100, A0=>filterFinish, A1=>nx61, B0=>nx97);

end LayerControllerArch_unfold_3035 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FilterController_3 is
   port (
      start : IN std_logic ;
      layerType : IN std_logic ;
      dmaFinish : IN std_logic ;
      oneConvFinish : IN std_logic ;
      resetState : IN std_logic ;
      clk : IN std_logic ;
      depth : IN std_logic_vector (2 DOWNTO 0) ;
      startOneConv : OUT std_logic ;
      loadConfig : OUT std_logic ;
      filterLastLayer : OUT std_logic ;
      finish : OUT std_logic) ;
end FilterController_3 ;

architecture FilterControllerArch_unfold_2987 of FilterController_3 is
   component Counter_3
      port (
         en : IN std_logic ;
         reset : IN std_logic ;
         clk : IN std_logic ;
         count : OUT std_logic_vector (2 DOWNTO 0)) ;
   end component ;
   signal counterEn, altCounterOut_2, altCounterOut_1, altCounterOut_0, 
      resetCounter, startOneConv_EXMPLR, currentState_1, currentState_0, 
      NOT_clk, counterOut_1, counterOut_2, counterOut_0, nx44, nx46, nx56, 
      nx47, nx57, nx71, nx76, nx78, nx82, nx85, nx87, nx95, nx99, nx103, 
      nx107, nx112, nx114, nx116, nx118, nx120, nx122: std_logic ;

begin
   startOneConv <= startOneConv_EXMPLR ;
   counterMap : Counter_3 port map ( en=>counterEn, reset=>resetCounter, clk
      =>clk, count(2)=>altCounterOut_2, count(1)=>altCounterOut_1, count(0)
      =>altCounterOut_0);
   ix28 : fake_gnd port map ( Y=>loadConfig);
   ix89 : nor02_2x port map ( Y=>filterLastLayer, A0=>nx71, A1=>nx120);
   ix72 : nand02 port map ( Y=>nx71, A0=>currentState_1, A1=>nx78);
   ix58 : mux21 port map ( Y=>nx57, A0=>nx76, A1=>nx95, S0=>nx87);
   ix77 : aoi22 port map ( Y=>nx76, A0=>currentState_1, A1=>nx78, B0=>nx116, 
      B1=>nx118);
   ix48 : oai21 port map ( Y=>nx47, A0=>nx82, A1=>nx87, B0=>nx114);
   ix84 : oai21 port map ( Y=>nx82, A0=>nx85, A1=>currentState_1, B0=>nx78);
   ix86 : inv01 port map ( Y=>nx85, A=>layerType);
   ix88 : aoi222 port map ( Y=>nx87, A0=>start, A1=>resetCounter, B0=>
      currentState_1, B1=>currentState_0, C0=>startOneConv_EXMPLR, C1=>nx56
   );
   ix83 : nor02_2x port map ( Y=>resetCounter, A0=>currentState_1, A1=>
      currentState_0);
   reg_currentState_0 : dffr port map ( Q=>currentState_0, QB=>nx78, D=>nx47, 
      CLK=>NOT_clk, R=>resetState);
   ix93 : inv01 port map ( Y=>NOT_clk, A=>clk);
   ix5 : nor02_2x port map ( Y=>startOneConv_EXMPLR, A0=>nx95, A1=>
      currentState_0);
   reg_currentState_1 : dffr port map ( Q=>currentState_1, QB=>nx95, D=>nx57, 
      CLK=>NOT_clk, R=>resetState);
   ix47 : nand03 port map ( Y=>nx46, A0=>nx99, A1=>nx103, A2=>nx107);
   ix100 : xnor2 port map ( Y=>nx99, A0=>counterOut_0, A1=>depth(0));
   reg_counterOut_0 : dff port map ( Q=>counterOut_0, QB=>OPEN, D=>
      altCounterOut_0, CLK=>clk);
   ix104 : xnor2 port map ( Y=>nx103, A0=>counterOut_2, A1=>depth(2));
   reg_counterOut_2 : dff port map ( Q=>counterOut_2, QB=>OPEN, D=>
      altCounterOut_2, CLK=>clk);
   ix108 : xnor2 port map ( Y=>nx107, A0=>counterOut_1, A1=>depth(1));
   reg_counterOut_1 : dff port map ( Q=>counterOut_1, QB=>OPEN, D=>
      altCounterOut_1, CLK=>clk);
   ix53 : inv01 port map ( Y=>counterEn, A=>nx112);
   ix113 : oai21 port map ( Y=>nx112, A0=>oneConvFinish, A1=>nx95, B0=>nx78
   );
   ix115 : nand02 port map ( Y=>nx114, A0=>currentState_0, A1=>nx95);
   ix117 : nand02 port map ( Y=>nx116, A0=>nx85, A1=>nx78);
   ix119 : nand02 port map ( Y=>nx118, A0=>currentState_1, A1=>
      currentState_0);
   ix123 : nor02ii port map ( Y=>nx122, A0=>nx44, A1=>nx107);
   ix45 : nand02 port map ( Y=>nx44, A0=>nx99, A1=>nx103);
   ix19 : nor02_2x port map ( Y=>finish, A0=>nx95, A1=>nx78);
   ix57 : nor02_2x port map ( Y=>nx56, A0=>nx46, A1=>nx112);
   ix121 : nor02_2x port map ( Y=>nx120, A0=>nx122, A1=>layerType);
end FilterControllerArch_unfold_2987 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Reg_5 is
   port (
      D : IN std_logic_vector (4 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      Q : OUT std_logic_vector (4 DOWNTO 0)) ;
end Reg_5 ;

architecture RegArch of Reg_5 is
   signal Q_4_EXMPLR, Q_3_EXMPLR, Q_2_EXMPLR, Q_1_EXMPLR, Q_0_EXMPLR, nx118, 
      nx128, nx138, nx148, nx158, nx170, nx172, nx174, nx179, nx181, nx186, 
      nx188, nx193, nx195, nx200, nx202: std_logic ;

begin
   Q(4) <= Q_4_EXMPLR ;
   Q(3) <= Q_3_EXMPLR ;
   Q(2) <= Q_2_EXMPLR ;
   Q(1) <= Q_1_EXMPLR ;
   Q(0) <= Q_0_EXMPLR ;
   reg_Q_0 : dffr port map ( Q=>Q_0_EXMPLR, QB=>OPEN, D=>nx118, CLK=>clk, R
      =>rst);
   ix119 : nand02 port map ( Y=>nx118, A0=>nx170, A1=>nx174);
   ix171 : nand02 port map ( Y=>nx170, A0=>Q_0_EXMPLR, A1=>nx172);
   ix173 : inv01 port map ( Y=>nx172, A=>en);
   ix175 : nand02 port map ( Y=>nx174, A0=>D(0), A1=>en);
   reg_Q_1 : dffr port map ( Q=>Q_1_EXMPLR, QB=>OPEN, D=>nx128, CLK=>clk, R
      =>rst);
   ix129 : nand02 port map ( Y=>nx128, A0=>nx179, A1=>nx181);
   ix180 : nand02 port map ( Y=>nx179, A0=>Q_1_EXMPLR, A1=>nx172);
   ix182 : nand02 port map ( Y=>nx181, A0=>D(1), A1=>en);
   reg_Q_2 : dffr port map ( Q=>Q_2_EXMPLR, QB=>OPEN, D=>nx138, CLK=>clk, R
      =>rst);
   ix139 : nand02 port map ( Y=>nx138, A0=>nx186, A1=>nx188);
   ix187 : nand02 port map ( Y=>nx186, A0=>Q_2_EXMPLR, A1=>nx172);
   ix189 : nand02 port map ( Y=>nx188, A0=>D(2), A1=>en);
   reg_Q_3 : dffr port map ( Q=>Q_3_EXMPLR, QB=>OPEN, D=>nx148, CLK=>clk, R
      =>rst);
   ix149 : nand02 port map ( Y=>nx148, A0=>nx193, A1=>nx195);
   ix194 : nand02 port map ( Y=>nx193, A0=>Q_3_EXMPLR, A1=>nx172);
   ix196 : nand02 port map ( Y=>nx195, A0=>D(3), A1=>en);
   reg_Q_4 : dffr port map ( Q=>Q_4_EXMPLR, QB=>OPEN, D=>nx158, CLK=>clk, R
      =>rst);
   ix159 : nand02 port map ( Y=>nx158, A0=>nx200, A1=>nx202);
   ix201 : nand02 port map ( Y=>nx200, A0=>Q_4_EXMPLR, A1=>nx172);
   ix203 : nand02 port map ( Y=>nx202, A0=>D(4), A1=>en);
end RegArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NBitAdder_5 is
   port (
      a : IN std_logic_vector (4 DOWNTO 0) ;
      b : IN std_logic_vector (4 DOWNTO 0) ;
      carryIn : IN std_logic ;
      sum : OUT std_logic_vector (4 DOWNTO 0) ;
      carryOut : OUT std_logic) ;
end NBitAdder_5 ;

architecture NBitAdderArch_unfold_2213 of NBitAdder_5 is
   component FullAdder
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   component FullAdder_unfolded13
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   component FullAdder_unfolded12
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   signal temp_3, temp_2, temp_1, carryIn_EXMPLR, b_4_EXMPLR: std_logic ;
   
   signal DANGLING : std_logic_vector (1 downto 0 );

begin
   carryOut <= b_4_EXMPLR ;
   f0 : FullAdder port map ( a=>a(0), b=>b_4_EXMPLR, cin=>carryIn_EXMPLR, s
      =>sum(0), cout=>DANGLING(0));
   loop1_1_fx : FullAdder_unfolded13 port map ( a=>a(1), b=>b_4_EXMPLR, cin
      =>a(0), s=>sum(1), cout=>temp_1);
   loop1_2_fx : FullAdder_unfolded13 port map ( a=>a(2), b=>b_4_EXMPLR, cin
      =>temp_1, s=>sum(2), cout=>temp_2);
   loop1_3_fx : FullAdder_unfolded13 port map ( a=>a(3), b=>b_4_EXMPLR, cin
      =>temp_2, s=>sum(3), cout=>temp_3);
   loop1_4_fx : FullAdder_unfolded12 port map ( a=>a(4), b=>b_4_EXMPLR, cin
      =>temp_3, s=>sum(4), cout=>DANGLING(1));
   ix4 : fake_gnd port map ( Y=>b_4_EXMPLR);
   ix2 : fake_vcc port map ( Y=>carryIn_EXMPLR);
end NBitAdderArch_unfold_2213 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Counter_5 is
   port (
      en : IN std_logic ;
      reset : IN std_logic ;
      clk : IN std_logic ;
      count : OUT std_logic_vector (4 DOWNTO 0)) ;
end Counter_5 ;

architecture CounterArch of Counter_5 is
   component Reg_5
      port (
         D : IN std_logic_vector (4 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (4 DOWNTO 0)) ;
   end component ;
   component NBitAdder_5
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         b : IN std_logic_vector (4 DOWNTO 0) ;
         carryIn : IN std_logic ;
         sum : OUT std_logic_vector (4 DOWNTO 0) ;
         carryOut : OUT std_logic) ;
   end component ;
   signal count_4_EXMPLR, count_3_EXMPLR, count_2_EXMPLR, count_1_EXMPLR, 
      count_0_EXMPLR, addedOne_4, addedOne_3, addedOne_2, addedOne_1, 
      addedOne_0, finalReset, oneSignal_4, PWR, nx27, nx29: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   count(4) <= count_4_EXMPLR ;
   count(3) <= count_3_EXMPLR ;
   count(2) <= count_2_EXMPLR ;
   count(1) <= count_1_EXMPLR ;
   count(0) <= count_0_EXMPLR ;
   counterReg : Reg_5 port map ( D(4)=>addedOne_4, D(3)=>addedOne_3, D(2)=>
      addedOne_2, D(1)=>addedOne_1, D(0)=>addedOne_0, en=>en, clk=>clk, rst
      =>finalReset, Q(4)=>count_4_EXMPLR, Q(3)=>count_3_EXMPLR, Q(2)=>
      count_2_EXMPLR, Q(1)=>count_1_EXMPLR, Q(0)=>count_0_EXMPLR);
   nextCount : NBitAdder_5 port map ( a(4)=>count_4_EXMPLR, a(3)=>
      count_3_EXMPLR, a(2)=>count_2_EXMPLR, a(1)=>count_1_EXMPLR, a(0)=>
      count_0_EXMPLR, b(4)=>oneSignal_4, b(3)=>oneSignal_4, b(2)=>
      oneSignal_4, b(1)=>oneSignal_4, b(0)=>oneSignal_4, carryIn=>PWR, 
      sum(4)=>addedOne_4, sum(3)=>addedOne_3, sum(2)=>addedOne_2, sum(1)=>
      addedOne_1, sum(0)=>addedOne_0, carryOut=>DANGLING(0));
   ix21 : fake_vcc port map ( Y=>PWR);
   ix19 : fake_gnd port map ( Y=>oneSignal_4);
   ix1 : nor02_2x port map ( Y=>finalReset, A0=>nx27, A1=>nx29);
   ix28 : inv01 port map ( Y=>nx27, A=>reset);
   ix30 : inv01 port map ( Y=>nx29, A=>clk);
end CounterArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SliceFilterController_5 is
   port (
      start : IN std_logic ;
      layerType : IN std_logic ;
      filterLastLayer : IN std_logic ;
      finishConv : IN std_logic ;
      dmaAFinish : IN std_logic ;
      dmaBFinish : IN std_logic ;
      dmaCFinish : IN std_logic ;
      resetState : IN std_logic ;
      clk : IN std_logic ;
      outputSize : IN std_logic_vector (4 DOWNTO 0) ;
      pageTurn : OUT std_logic_vector (0 DOWNTO 0) ;
      sliceFirstLoad : OUT std_logic ;
      loadFilter : OUT std_logic ;
      loadWindow : OUT std_logic ;
      conv : OUT std_logic ;
      pool : OUT std_logic ;
      shift12 : OUT std_logic ;
      shift21 : OUT std_logic ;
      readNextCol : OUT std_logic ;
      addToOutputBuffer : OUT std_logic ;
      outputBufferEn : OUT std_logic ;
      saveToRAM : OUT std_logic ;
      finish : OUT std_logic) ;
end SliceFilterController_5 ;

architecture SliceFilterControllerArch_unfold_3659 of 
   SliceFilterController_5 is
   component Counter_5
      port (
         en : IN std_logic ;
         reset : IN std_logic ;
         clk : IN std_logic ;
         count : OUT std_logic_vector (4 DOWNTO 0)) ;
   end component ;
   signal currentState_0, outerCounterEn, altInnerCounterOut_4, 
      altInnerCounterOut_3, altInnerCounterOut_2, altInnerCounterOut_1, 
      altInnerCounterOut_0, altOuterCounterOut_4, altOuterCounterOut_3, 
      altOuterCounterOut_2, altOuterCounterOut_1, altOuterCounterOut_0, 
      innerCounterEn, GND0, currentState_3, nx63, NOT_clk, currentState_2, 
      outputBufferEn_EXMPLR, addToOutputBuffer_EXMPLR, nx12, 
      outerCounterOut_1, outerCounterOut_0, nx32, nx36, nx40, nx42, nx44, 
      innerCounterOut_1, innerCounterOut_0, nx60, nx64, nx68, nx70, nx72, 
      nx78, nx98, nx106, finalDMACFinish, nx120, nx128, nx132, nx134, 
      finalDMABFinish, nx160, nx164, nx176, nx182, nx222, nx230, nx71, nx79, 
      nx89, nx99, nx111, nx121, nx131, nx141, nx151, nx163, nx165, nx171, 
      nx175, nx179, nx183, nx188, nx193, nx197, nx201, nx205, nx207, nx211, 
      nx217, nx218, nx223, nx224, nx227, nx233, nx237, nx238, nx243, nx247, 
      nx250, nx251, nx255, nx258, nx259, nx263, nx265, nx267, nx269, nx273, 
      nx276, nx279, nx281, nx285, nx287, nx289, nx292, nx295, nx298, nx301, 
      nx305, nx307, nx309, nx312, nx314, nx318, nx321, nx324, nx326, nx331, 
      nx338, nx340, nx343, nx345, nx353, nx359, nx361: std_logic ;

begin
   pageTurn(0) <= GND0 ;
   sliceFirstLoad <= GND0 ;
   loadFilter <= GND0 ;
   shift12 <= GND0 ;
   shift21 <= GND0 ;
   addToOutputBuffer <= GND0 ;
   outputBufferEn <= GND0 ;
   innerCounterMap : Counter_5 port map ( en=>innerCounterEn, reset=>
      outerCounterEn, clk=>clk, count(4)=>altInnerCounterOut_4, count(3)=>
      altInnerCounterOut_3, count(2)=>altInnerCounterOut_2, count(1)=>
      altInnerCounterOut_1, count(0)=>altInnerCounterOut_0);
   outerCounterMap : Counter_5 port map ( en=>outerCounterEn, reset=>
      currentState_0, clk=>clk, count(4)=>altOuterCounterOut_4, count(3)=>
      altOuterCounterOut_3, count(2)=>altOuterCounterOut_2, count(1)=>
      altOuterCounterOut_1, count(0)=>altOuterCounterOut_0);
   ix37 : fake_gnd port map ( Y=>GND0);
   ix215 : nand02 port map ( Y=>conv, A0=>nx163, A1=>nx183);
   ix164 : nand02 port map ( Y=>nx163, A0=>nx165, A1=>currentState_2);
   ix166 : inv01 port map ( Y=>nx165, A=>layerType);
   ix172 : nor04 port map ( Y=>nx171, A0=>nx182, A1=>nx176, A2=>nx164, A3=>
      nx160);
   ix183 : nand03 port map ( Y=>nx182, A0=>nx175, A1=>nx179, A2=>nx193);
   reg_currentState_2 : dffr port map ( Q=>currentState_2, QB=>nx175, D=>
      nx99, CLK=>NOT_clk, R=>resetState);
   ix178 : inv02 port map ( Y=>NOT_clk, A=>clk);
   reg_currentState_4 : dffr port map ( Q=>addToOutputBuffer_EXMPLR, QB=>
      nx179, D=>nx79, CLK=>NOT_clk, R=>resetState);
   ix80 : nor02_2x port map ( Y=>nx79, A0=>nx183, A1=>nx353);
   ix184 : nand02 port map ( Y=>nx183, A0=>nx165, A1=>currentState_3);
   ix112 : oai21 port map ( Y=>nx111, A0=>nx188, A1=>nx63, B0=>nx175);
   reg_currentState_3 : dffr port map ( Q=>currentState_3, QB=>nx188, D=>
      nx111, CLK=>NOT_clk, R=>resetState);
   ix185 : inv01 port map ( Y=>nx63, A=>nx171);
   reg_currentState_5 : dffr port map ( Q=>outputBufferEn_EXMPLR, QB=>nx193, 
      D=>nx89, CLK=>NOT_clk, R=>resetState);
   ix90 : nor02_2x port map ( Y=>nx89, A0=>nx197, A1=>nx353);
   ix13 : nor02_2x port map ( Y=>nx12, A0=>nx165, A1=>nx188);
   ix177 : oai22 port map ( Y=>nx176, A0=>nx201, A1=>nx263, B0=>nx267, B1=>
      nx269);
   reg_currentState_6 : dffr port map ( Q=>OPEN, QB=>nx201, D=>nx121, CLK=>
      NOT_clk, R=>resetState);
   ix206 : nand02 port map ( Y=>nx205, A0=>outputBufferEn_EXMPLR, A1=>nx207
   );
   ix208 : nor02_2x port map ( Y=>nx207, A0=>nx72, A1=>nx44);
   ix73 : nand04 port map ( Y=>nx72, A0=>nx211, A1=>nx227, A2=>nx233, A3=>
      nx238);
   ix212 : nor02_2x port map ( Y=>nx211, A0=>nx68, A1=>nx64);
   reg_innerCounterOut_3 : dff port map ( Q=>OPEN, QB=>nx217, D=>
      altInnerCounterOut_3, CLK=>clk);
   ix220 : inv01 port map ( Y=>nx218, A=>outputSize(3));
   reg_innerCounterOut_2 : dff port map ( Q=>OPEN, QB=>nx223, D=>
      altInnerCounterOut_2, CLK=>clk);
   ix226 : inv01 port map ( Y=>nx224, A=>outputSize(2));
   ix228 : xnor2 port map ( Y=>nx227, A0=>innerCounterOut_0, A1=>
      outputSize(0));
   reg_innerCounterOut_0 : dff port map ( Q=>innerCounterOut_0, QB=>OPEN, D
      =>altInnerCounterOut_0, CLK=>clk);
   reg_innerCounterOut_4 : dff port map ( Q=>OPEN, QB=>nx237, D=>
      altInnerCounterOut_4, CLK=>clk);
   ix239 : xnor2 port map ( Y=>nx238, A0=>innerCounterOut_1, A1=>
      outputSize(1));
   reg_innerCounterOut_1 : dff port map ( Q=>innerCounterOut_1, QB=>OPEN, D
      =>altInnerCounterOut_1, CLK=>clk);
   ix45 : nand04 port map ( Y=>nx44, A0=>nx243, A1=>nx251, A2=>nx255, A3=>
      nx259);
   ix244 : nor02_2x port map ( Y=>nx243, A0=>nx40, A1=>nx36);
   reg_outerCounterOut_3 : dff port map ( Q=>OPEN, QB=>nx247, D=>
      altOuterCounterOut_3, CLK=>clk);
   reg_outerCounterOut_2 : dff port map ( Q=>OPEN, QB=>nx250, D=>
      altOuterCounterOut_2, CLK=>clk);
   ix252 : xnor2 port map ( Y=>nx251, A0=>outerCounterOut_0, A1=>
      outputSize(0));
   reg_outerCounterOut_0 : dff port map ( Q=>outerCounterOut_0, QB=>OPEN, D
      =>altOuterCounterOut_0, CLK=>clk);
   reg_outerCounterOut_4 : dff port map ( Q=>OPEN, QB=>nx258, D=>
      altOuterCounterOut_4, CLK=>clk);
   ix260 : xnor2 port map ( Y=>nx259, A0=>outerCounterOut_1, A1=>
      outputSize(1));
   reg_outerCounterOut_1 : dff port map ( Q=>outerCounterOut_1, QB=>OPEN, D
      =>altOuterCounterOut_1, CLK=>clk);
   ix264 : nor02_2x port map ( Y=>nx263, A0=>nx265, A1=>dmaCFinish);
   ix266 : inv01 port map ( Y=>nx265, A=>filterLastLayer);
   ix268 : inv01 port map ( Y=>nx267, A=>start);
   reg_currentState_0 : dffs_ni port map ( Q=>currentState_0, QB=>nx269, D=>
      nx151, CLK=>NOT_clk, S=>resetState);
   ix165 : nor02_2x port map ( Y=>nx164, A0=>nx273, A1=>nx276);
   reg_currentState_1 : dffr port map ( Q=>OPEN, QB=>nx273, D=>nx71, CLK=>
      NOT_clk, R=>resetState);
   ix277 : nand02 port map ( Y=>nx276, A0=>dmaBFinish, A1=>layerType);
   ix161 : nor03_2x port map ( Y=>nx160, A0=>nx279, A1=>nx281, A2=>nx307);
   ix280 : nand02 port map ( Y=>nx279, A0=>finishConv, A1=>currentState_3);
   ix282 : nor03_2x port map ( Y=>nx281, A0=>finalDMACFinish, A1=>nx265, A2
      =>nx292);
   ix132 : oai21 port map ( Y=>nx131, A0=>nx285, A1=>nx287, B0=>nx289);
   ix286 : inv01 port map ( Y=>nx285, A=>dmaCFinish);
   ix288 : nor03_2x port map ( Y=>nx287, A0=>currentState_3, A1=>
      addToOutputBuffer_EXMPLR, A2=>currentState_0);
   reg_finalDMACFinish : dffr port map ( Q=>finalDMACFinish, QB=>nx289, D=>
      nx131, CLK=>clk, R=>nx120);
   ix121 : nand03 port map ( Y=>nx120, A0=>nx269, A1=>nx193, A2=>nx179);
   ix293 : nand02 port map ( Y=>nx292, A0=>nx132, A1=>nx134);
   ix133 : nand02 port map ( Y=>nx132, A0=>nx295, A1=>nx201);
   ix296 : oai21 port map ( Y=>nx295, A0=>nx106, A1=>nx98, B0=>nx128);
   ix107 : nand04 port map ( Y=>nx106, A0=>nx298, A1=>nx247, A2=>nx258, A3=>
      nx250);
   ix299 : nor02_2x port map ( Y=>nx298, A0=>outerCounterOut_0, A1=>
      outerCounterOut_1);
   ix99 : nand04 port map ( Y=>nx98, A0=>nx301, A1=>nx217, A2=>nx237, A3=>
      nx223);
   ix302 : nor02_2x port map ( Y=>nx301, A0=>innerCounterOut_0, A1=>
      innerCounterOut_1);
   ix129 : oai21 port map ( Y=>nx128, A0=>finalDMACFinish, A1=>nx188, B0=>
      nx175);
   ix135 : inv01 port map ( Y=>nx134, A=>nx305);
   ix306 : nor02_2x port map ( Y=>nx305, A0=>layerType, A1=>filterLastLayer
   );
   reg_finalDMABFinish : dffr port map ( Q=>finalDMABFinish, QB=>nx309, D=>
      nx141, CLK=>clk, R=>nx120);
   ix142 : oai21 port map ( Y=>nx141, A0=>nx312, A1=>nx314, B0=>nx309);
   ix313 : inv01 port map ( Y=>nx312, A=>dmaBFinish);
   ix315 : nor03_2x port map ( Y=>nx314, A0=>currentState_3, A1=>
      addToOutputBuffer_EXMPLR, A2=>currentState_0);
   ix79 : oai21 port map ( Y=>nx78, A0=>nx193, A1=>nx207, B0=>nx273);
   ix219 : nor02_2x port map ( Y=>pool, A0=>nx165, A1=>nx318);
   ix319 : nor02_2x port map ( Y=>nx318, A0=>currentState_2, A1=>
      currentState_3);
   ix225 : nor02ii port map ( Y=>readNextCol, A0=>nx321, A1=>nx222);
   ix322 : nor02_2x port map ( Y=>nx321, A0=>nx70, A1=>nx60);
   ix71 : nand02 port map ( Y=>nx70, A0=>nx324, A1=>nx326);
   ix61 : nand03 port map ( Y=>nx60, A0=>nx227, A1=>nx233, A2=>nx238);
   ix223 : nor02_2x port map ( Y=>nx222, A0=>finalDMABFinish, A1=>nx188);
   ix235 : nor02_2x port map ( Y=>finish, A0=>nx201, A1=>nx331);
   ix332 : nor02_2x port map ( Y=>nx331, A0=>nx230, A1=>dmaCFinish);
   ix231 : nor02_2x port map ( Y=>nx230, A0=>filterLastLayer, A1=>layerType
   );
   ix119 : nand02 port map ( Y=>innerCounterEn, A0=>nx269, A1=>nx193);
   ix193 : oai21 port map ( Y=>outerCounterEn, A0=>nx193, A1=>nx72, B0=>
      nx269);
   ix137 : aoi22 port map ( Y=>saveToRAM, A0=>nx165, A1=>nx265, B0=>nx295, 
      B1=>nx201);
   ix209 : oai321 port map ( Y=>loadWindow, A0=>nx338, A1=>nx340, A2=>nx72, 
      B0=>nx267, B1=>nx269, C0=>nx273);
   ix339 : nand02 port map ( Y=>nx338, A0=>nx309, A1=>currentState_3);
   ix341 : nor02_2x port map ( Y=>nx340, A0=>nx42, A1=>nx32);
   ix43 : nand02 port map ( Y=>nx42, A0=>nx343, A1=>nx345);
   ix33 : nand03 port map ( Y=>nx32, A0=>nx251, A1=>nx255, A2=>nx259);
   ix352 : inv02 port map ( Y=>nx353, A=>nx63);
   ix100 : nor02_2x port map ( Y=>nx99, A0=>nx353, A1=>nx359);
   ix358 : inv01 port map ( Y=>nx359, A=>nx78);
   ix198 : nor02_2x port map ( Y=>nx197, A0=>nx12, A1=>
      addToOutputBuffer_EXMPLR);
   ix122 : mux21 port map ( Y=>nx121, A0=>nx201, A1=>nx205, S0=>nx63);
   ix69 : xnor2 port map ( Y=>nx68, A0=>nx217, A1=>outputSize(3));
   ix65 : xnor2 port map ( Y=>nx64, A0=>nx223, A1=>outputSize(2));
   ix234 : xnor2 port map ( Y=>nx233, A0=>nx237, A1=>nx361);
   ix360 : inv01 port map ( Y=>nx361, A=>outputSize(4));
   ix41 : xnor2 port map ( Y=>nx40, A0=>nx247, A1=>outputSize(3));
   ix38 : xnor2 port map ( Y=>nx36, A0=>nx250, A1=>outputSize(2));
   ix256 : xnor2 port map ( Y=>nx255, A0=>nx258, A1=>nx361);
   ix152 : mux21 port map ( Y=>nx151, A0=>nx269, A1=>nx201, S0=>nx63);
   ix72 : mux21 port map ( Y=>nx71, A0=>nx273, A1=>nx269, S0=>nx63);
   ix308 : nor02_2x port map ( Y=>nx307, A0=>nx207, A1=>finalDMABFinish);
   ix325 : xnor2 port map ( Y=>nx324, A0=>nx217, A1=>nx218);
   ix327 : xnor2 port map ( Y=>nx326, A0=>nx223, A1=>nx224);
   ix344 : xnor2 port map ( Y=>nx343, A0=>nx247, A1=>nx218);
   ix346 : xnor2 port map ( Y=>nx345, A0=>nx250, A1=>nx224);
end SliceFilterControllerArch_unfold_3659 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ControlUnit is
   port (
      clk : IN std_logic ;
      layersNumber : IN std_logic_vector (1 DOWNTO 0) ;
      filtersNumber : IN std_logic_vector (2 DOWNTO 0) ;
      filterDepth : IN std_logic_vector (2 DOWNTO 0) ;
      filterOutputSize : IN std_logic_vector (4 DOWNTO 0) ;
      startNetwork : IN std_logic ;
      layerType : IN std_logic ;
      convFinish : IN std_logic ;
      dmaAFinish : IN std_logic ;
      dmaBFinish : IN std_logic ;
      dmaCFinish : IN std_logic ;
      resetNetwork : IN std_logic ;
      sliceFirstLoad : OUT std_logic ;
      loadLayerConfig : OUT std_logic ;
      loadNetworkConfig : OUT std_logic ;
      loadFilterConfig : OUT std_logic ;
      loadWindow : OUT std_logic ;
      loadFilter : OUT std_logic ;
      conv : OUT std_logic ;
      pool : OUT std_logic ;
      shift12 : OUT std_logic ;
      shift21 : OUT std_logic ;
      readNextCol : OUT std_logic ;
      addToOutputBuffer : OUT std_logic ;
      outputBufferEn : OUT std_logic ;
      saveToRAM : OUT std_logic ;
      currentPage : OUT std_logic_vector (0 DOWNTO 0) ;
      finishCurrentSlice : OUT std_logic ;
      finishFilter : OUT std_logic ;
      finishOneLayer : OUT std_logic ;
      finishNetwork : OUT std_logic) ;
end ControlUnit ;

architecture ControlUnitArch_unfold_3389 of ControlUnit is
   component NetworkController_2
      port (
         start : IN std_logic ;
         dmaFinish : IN std_logic ;
         oneLayerFinish : IN std_logic ;
         resetState : IN std_logic ;
         clk : IN std_logic ;
         layersNumber : IN std_logic_vector (1 DOWNTO 0) ;
         loadConfig : OUT std_logic ;
         startOneLayer : OUT std_logic ;
         finish : OUT std_logic) ;
   end component ;
   component LayerController_3
      port (
         start : IN std_logic ;
         dmaFinish : IN std_logic ;
         filterFinish : IN std_logic ;
         resetState : IN std_logic ;
         clk : IN std_logic ;
         filtersNumber : IN std_logic_vector (2 DOWNTO 0) ;
         loadConfig : OUT std_logic ;
         startFilterConv : OUT std_logic ;
         finish : OUT std_logic) ;
   end component ;
   component FilterController_3
      port (
         start : IN std_logic ;
         layerType : IN std_logic ;
         dmaFinish : IN std_logic ;
         oneConvFinish : IN std_logic ;
         resetState : IN std_logic ;
         clk : IN std_logic ;
         depth : IN std_logic_vector (2 DOWNTO 0) ;
         startOneConv : OUT std_logic ;
         loadConfig : OUT std_logic ;
         filterLastLayer : OUT std_logic ;
         finish : OUT std_logic) ;
   end component ;
   component SliceFilterController_5
      port (
         start : IN std_logic ;
         layerType : IN std_logic ;
         filterLastLayer : IN std_logic ;
         finishConv : IN std_logic ;
         dmaAFinish : IN std_logic ;
         dmaBFinish : IN std_logic ;
         dmaCFinish : IN std_logic ;
         resetState : IN std_logic ;
         clk : IN std_logic ;
         outputSize : IN std_logic_vector (4 DOWNTO 0) ;
         pageTurn : OUT std_logic_vector (0 DOWNTO 0) ;
         sliceFirstLoad : OUT std_logic ;
         loadFilter : OUT std_logic ;
         loadWindow : OUT std_logic ;
         conv : OUT std_logic ;
         pool : OUT std_logic ;
         shift12 : OUT std_logic ;
         shift21 : OUT std_logic ;
         readNextCol : OUT std_logic ;
         addToOutputBuffer : OUT std_logic ;
         outputBufferEn : OUT std_logic ;
         saveToRAM : OUT std_logic ;
         finish : OUT std_logic) ;
   end component ;
   signal finishCurrentSlice_EXMPLR, finishFilter_EXMPLR, 
      finishOneLayer_EXMPLR, startOneLayer, startFilter, filterLastLayer, 
      startSlice, dmaAFinish_EXMPLR: std_logic ;
   
   signal DANGLING : std_logic_vector (9 downto 0 );

begin
   sliceFirstLoad <= dmaAFinish_EXMPLR ;
   loadLayerConfig <= dmaAFinish_EXMPLR ;
   loadNetworkConfig <= dmaAFinish_EXMPLR ;
   loadFilterConfig <= dmaAFinish_EXMPLR ;
   loadFilter <= dmaAFinish_EXMPLR ;
   shift12 <= dmaAFinish_EXMPLR ;
   shift21 <= dmaAFinish_EXMPLR ;
   addToOutputBuffer <= dmaAFinish_EXMPLR ;
   outputBufferEn <= dmaAFinish_EXMPLR ;
   currentPage(0) <= dmaAFinish_EXMPLR ;
   finishCurrentSlice <= finishCurrentSlice_EXMPLR ;
   finishFilter <= finishFilter_EXMPLR ;
   finishOneLayer <= finishOneLayer_EXMPLR ;
   networkMap : NetworkController_2 port map ( start=>startNetwork, 
      dmaFinish=>dmaAFinish_EXMPLR, oneLayerFinish=>finishOneLayer_EXMPLR, 
      resetState=>resetNetwork, clk=>clk, layersNumber(1)=>layersNumber(1), 
      layersNumber(0)=>layersNumber(0), loadConfig=>DANGLING(0), 
      startOneLayer=>startOneLayer, finish=>finishNetwork);
   oneLayerMap : LayerController_3 port map ( start=>startOneLayer, 
      dmaFinish=>dmaAFinish_EXMPLR, filterFinish=>finishFilter_EXMPLR, 
      resetState=>resetNetwork, clk=>clk, filtersNumber(2)=>filtersNumber(2), 
      filtersNumber(1)=>filtersNumber(1), filtersNumber(0)=>filtersNumber(0), 
      loadConfig=>DANGLING(1), startFilterConv=>startFilter, finish=>
      finishOneLayer_EXMPLR);
   filterMap : FilterController_3 port map ( start=>startFilter, layerType=>
      layerType, dmaFinish=>dmaAFinish_EXMPLR, oneConvFinish=>
      finishCurrentSlice_EXMPLR, resetState=>resetNetwork, clk=>clk, 
      depth(2)=>filterDepth(2), depth(1)=>filterDepth(1), depth(0)=>
      filterDepth(0), startOneConv=>startSlice, loadConfig=>DANGLING(2), 
      filterLastLayer=>filterLastLayer, finish=>finishFilter_EXMPLR);
   sliceFilterMap : SliceFilterController_5 port map ( start=>startSlice, 
      layerType=>layerType, filterLastLayer=>filterLastLayer, finishConv=>
      convFinish, dmaAFinish=>dmaAFinish_EXMPLR, dmaBFinish=>dmaBFinish, 
      dmaCFinish=>dmaCFinish, resetState=>resetNetwork, clk=>clk, 
      outputSize(4)=>filterOutputSize(4), outputSize(3)=>filterOutputSize(3), 
      outputSize(2)=>filterOutputSize(2), outputSize(1)=>filterOutputSize(1), 
      outputSize(0)=>filterOutputSize(0), pageTurn(0)=>DANGLING(3), 
      sliceFirstLoad=>DANGLING(4), loadFilter=>DANGLING(5), loadWindow=>
      loadWindow, conv=>conv, pool=>pool, shift12=>DANGLING(6), shift21=>
      DANGLING(7), readNextCol=>readNextCol, addToOutputBuffer=>DANGLING(8), 
      outputBufferEn=>DANGLING(9), saveToRAM=>saveToRAM, finish=>
      finishCurrentSlice_EXMPLR);
   ix44 : fake_gnd port map ( Y=>dmaAFinish_EXMPLR);
end ControlUnitArch_unfold_3389 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FullAdder_unfolded14 is
   port (
      a : IN std_logic ;
      b : IN std_logic ;
      cin : IN std_logic ;
      s : OUT std_logic ;
      cout : OUT std_logic) ;
end FullAdder_unfolded14 ;

architecture FullAdderArch_unfold_1717_0_xmplrcopy of FullAdder_unfolded14
    is
begin
   ix44 : fake_gnd port map ( Y=>cout);
   ix53 : inv01 port map ( Y=>s, A=>a);
end FullAdderArch_unfold_1717_0_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FullAdder_unfolded15 is
   port (
      a : IN std_logic ;
      b : IN std_logic ;
      cin : IN std_logic ;
      s : OUT std_logic ;
      cout : OUT std_logic) ;
end FullAdder_unfolded15 ;

architecture FullAdderArch_unfold_2263_xmplrcopy of FullAdder_unfolded15 is
   signal nx95, nx97: std_logic ;

begin
   ix1 : nor02_2x port map ( Y=>cout, A0=>nx95, A1=>nx97);
   ix96 : inv01 port map ( Y=>nx95, A=>cin);
   ix98 : inv01 port map ( Y=>nx97, A=>a);
   ix7 : xnor2 port map ( Y=>s, A0=>cin, A1=>nx97);
end FullAdderArch_unfold_2263_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NBitAdder_13 is
   port (
      a : IN std_logic_vector (12 DOWNTO 0) ;
      b : IN std_logic_vector (12 DOWNTO 0) ;
      carryIn : IN std_logic ;
      sum : OUT std_logic_vector (12 DOWNTO 0) ;
      carryOut : OUT std_logic) ;
end NBitAdder_13 ;

architecture NBitAdderArch_unfold_3261 of NBitAdder_13 is
   component FullAdder_unfolded14
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   component FullAdder_unfolded15
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   signal temp_3, temp_2, temp_1, carryIn_EXMPLR, a_12_EXMPLR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   sum(12) <= a_12_EXMPLR ;
   sum(11) <= a_12_EXMPLR ;
   sum(10) <= a_12_EXMPLR ;
   sum(9) <= a_12_EXMPLR ;
   sum(8) <= a_12_EXMPLR ;
   sum(7) <= a_12_EXMPLR ;
   sum(6) <= a_12_EXMPLR ;
   carryOut <= a_12_EXMPLR ;
   f0 : FullAdder_unfolded14 port map ( a=>a(0), b=>a_12_EXMPLR, cin=>
      carryIn_EXMPLR, s=>sum(0), cout=>DANGLING(0));
   loop1_1_fx : FullAdder_unfolded15 port map ( a=>a(1), b=>a_12_EXMPLR, cin
      =>a(0), s=>sum(1), cout=>temp_1);
   loop1_2_fx : FullAdder_unfolded15 port map ( a=>a(2), b=>a_12_EXMPLR, cin
      =>temp_1, s=>sum(2), cout=>temp_2);
   loop1_3_fx : FullAdder_unfolded15 port map ( a=>a(3), b=>a_12_EXMPLR, cin
      =>temp_2, s=>sum(3), cout=>temp_3);
   loop1_4_fx : FullAdder_unfolded15 port map ( a=>a(4), b=>a_12_EXMPLR, cin
      =>temp_3, s=>sum(4), cout=>sum(5));
   ix6 : fake_gnd port map ( Y=>a_12_EXMPLR);
   ix4 : fake_vcc port map ( Y=>carryIn_EXMPLR);
end NBitAdderArch_unfold_3261 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_13 is
   port (
      A : IN std_logic_vector (12 DOWNTO 0) ;
      B : IN std_logic_vector (12 DOWNTO 0) ;
      S : IN std_logic ;
      C : OUT std_logic_vector (12 DOWNTO 0)) ;
end Mux2_13 ;

architecture Mux2Arch_unfold_2745 of Mux2_13 is
   signal C_12_EXMPLR: std_logic ;

begin
   C(12) <= C_12_EXMPLR ;
   C(10) <= C_12_EXMPLR ;
   C(9) <= C_12_EXMPLR ;
   C(8) <= C_12_EXMPLR ;
   C(7) <= C_12_EXMPLR ;
   C(6) <= C_12_EXMPLR ;
   C(5) <= C_12_EXMPLR ;
   C(4) <= C_12_EXMPLR ;
   C(3) <= C_12_EXMPLR ;
   C(2) <= C_12_EXMPLR ;
   C(1) <= C_12_EXMPLR ;
   C(0) <= C_12_EXMPLR ;
   ix74 : fake_gnd port map ( Y=>C_12_EXMPLR);
   ix83 : inv01 port map ( Y=>C(11), A=>S);
end Mux2Arch_unfold_2745 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Reg_13 is
   port (
      D : IN std_logic_vector (12 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      Q : OUT std_logic_vector (12 DOWNTO 0)) ;
end Reg_13 ;

architecture RegArch_unfold_2562 of Reg_13 is
   signal nx67, nx69: std_logic ;

begin
   reg_Q_0 : dff port map ( Q=>Q(0), QB=>OPEN, D=>D(0), CLK=>nx67);
   reg_Q_1 : dff port map ( Q=>Q(1), QB=>OPEN, D=>D(1), CLK=>nx67);
   reg_Q_2 : dff port map ( Q=>Q(2), QB=>OPEN, D=>D(2), CLK=>nx67);
   reg_Q_3 : dff port map ( Q=>Q(3), QB=>OPEN, D=>D(3), CLK=>nx67);
   reg_Q_4 : dff port map ( Q=>Q(4), QB=>OPEN, D=>D(4), CLK=>nx67);
   reg_Q_5 : dff port map ( Q=>Q(5), QB=>OPEN, D=>D(5), CLK=>nx67);
   reg_Q_6 : dff port map ( Q=>Q(6), QB=>OPEN, D=>D(6), CLK=>nx67);
   reg_Q_7 : dff port map ( Q=>Q(7), QB=>OPEN, D=>D(7), CLK=>nx69);
   reg_Q_8 : dff port map ( Q=>Q(8), QB=>OPEN, D=>D(8), CLK=>nx69);
   reg_Q_9 : dff port map ( Q=>Q(9), QB=>OPEN, D=>D(9), CLK=>nx69);
   reg_Q_10 : dff port map ( Q=>Q(10), QB=>OPEN, D=>D(10), CLK=>nx69);
   reg_Q_11 : dff port map ( Q=>Q(11), QB=>OPEN, D=>D(11), CLK=>nx69);
   reg_Q_12 : dff port map ( Q=>Q(12), QB=>OPEN, D=>D(12), CLK=>nx69);
   ix66 : buf02 port map ( Y=>nx67, A=>clk);
   ix68 : buf02 port map ( Y=>nx69, A=>clk);
end RegArch_unfold_2562 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FullAdder_unfolded16 is
   port (
      a : IN std_logic ;
      b : IN std_logic ;
      cin : IN std_logic ;
      s : OUT std_logic ;
      cout : OUT std_logic) ;
end FullAdder_unfolded16 ;

architecture FullAdderArch_unfold_1717_4_xmplrcopy of FullAdder_unfolded16
    is
   signal nx95, nx97: std_logic ;

begin
   ix1 : nor02_2x port map ( Y=>cout, A0=>nx95, A1=>nx97);
   ix96 : inv01 port map ( Y=>nx95, A=>b);
   ix98 : inv01 port map ( Y=>nx97, A=>a);
   ix7 : xnor2 port map ( Y=>s, A0=>b, A1=>nx97);
end FullAdderArch_unfold_1717_4_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FullAdder_unfolded17 is
   port (
      a : IN std_logic ;
      b : IN std_logic ;
      cin : IN std_logic ;
      s : OUT std_logic ;
      cout : OUT std_logic) ;
end FullAdder_unfolded17 ;

architecture FullAdderArch_xmplrcopy of FullAdder_unfolded17 is
   signal nx111, nx113, nx115, nx117: std_logic ;

begin
   ix7 : oai22 port map ( Y=>cout, A0=>nx111, A1=>nx113, B0=>nx115, B1=>
      nx117);
   ix112 : inv01 port map ( Y=>nx111, A=>cin);
   ix114 : xnor2 port map ( Y=>nx113, A0=>a, A1=>b);
   ix116 : inv01 port map ( Y=>nx115, A=>b);
   ix118 : inv01 port map ( Y=>nx117, A=>a);
   ix9 : xnor2 port map ( Y=>s, A0=>nx113, A1=>cin);
end FullAdderArch_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FullAdder_unfolded18 is
   port (
      a : IN std_logic ;
      b : IN std_logic ;
      cin : IN std_logic ;
      s : OUT std_logic ;
      cout : OUT std_logic) ;
end FullAdder_unfolded18 ;

architecture FullAdderArch_unfold_2267_1_xmplrcopy of FullAdder_unfolded18
    is
   signal nx95, nx97: std_logic ;

begin
   ix1 : nor02_2x port map ( Y=>cout, A0=>nx95, A1=>nx97);
   ix96 : inv01 port map ( Y=>nx95, A=>cin);
   ix98 : inv01 port map ( Y=>nx97, A=>a);
   ix7 : xnor2 port map ( Y=>s, A0=>cin, A1=>nx97);
end FullAdderArch_unfold_2267_1_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FullAdder_unfolded19 is
   port (
      a : IN std_logic ;
      b : IN std_logic ;
      cin : IN std_logic ;
      s : OUT std_logic ;
      cout : OUT std_logic) ;
end FullAdder_unfolded19 ;

architecture FullAdderArch_unfold_2281_1_xmplrcopy of FullAdder_unfolded19
    is
   signal nx55: std_logic ;

begin
   ix45 : fake_gnd port map ( Y=>cout);
   ix1 : xnor2 port map ( Y=>s, A0=>cin, A1=>nx55);
   ix56 : inv01 port map ( Y=>nx55, A=>a);
end FullAdderArch_unfold_2281_1_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NBitAdder_13_unfolded4 is
   port (
      a : IN std_logic_vector (12 DOWNTO 0) ;
      b : IN std_logic_vector (12 DOWNTO 0) ;
      carryIn : IN std_logic ;
      sum : OUT std_logic_vector (12 DOWNTO 0) ;
      carryOut : OUT std_logic) ;
end NBitAdder_13_unfolded4 ;

architecture NBitAdderArch_unfold_2875_1_xmplrcopy of NBitAdder_13_unfolded4
    is
   component FullAdder_unfolded16
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   component FullAdder_unfolded17
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   component FullAdder_unfolded18
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   component FullAdder_unfolded19
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   signal temp_11, temp_10, temp_9, temp_8, temp_7, temp_6, temp_5, temp_4, 
      temp_3, temp_2, temp_1, temp_0, carryIn_EXMPLR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   carryOut <= carryIn_EXMPLR ;
   f0 : FullAdder_unfolded16 port map ( a=>a(0), b=>b(0), cin=>
      carryIn_EXMPLR, s=>sum(0), cout=>temp_0);
   loop1_1_fx : FullAdder_unfolded17 port map ( a=>a(1), b=>b(1), cin=>
      temp_0, s=>sum(1), cout=>temp_1);
   loop1_2_fx : FullAdder_unfolded17 port map ( a=>a(2), b=>b(2), cin=>
      temp_1, s=>sum(2), cout=>temp_2);
   loop1_3_fx : FullAdder_unfolded17 port map ( a=>a(3), b=>b(3), cin=>
      temp_2, s=>sum(3), cout=>temp_3);
   loop1_4_fx : FullAdder_unfolded17 port map ( a=>a(4), b=>b(4), cin=>
      temp_3, s=>sum(4), cout=>temp_4);
   loop1_5_fx : FullAdder_unfolded18 port map ( a=>a(5), b=>carryIn_EXMPLR, 
      cin=>temp_4, s=>sum(5), cout=>temp_5);
   loop1_6_fx : FullAdder_unfolded18 port map ( a=>a(6), b=>carryIn_EXMPLR, 
      cin=>temp_5, s=>sum(6), cout=>temp_6);
   loop1_7_fx : FullAdder_unfolded18 port map ( a=>a(7), b=>carryIn_EXMPLR, 
      cin=>temp_6, s=>sum(7), cout=>temp_7);
   loop1_8_fx : FullAdder_unfolded18 port map ( a=>a(8), b=>carryIn_EXMPLR, 
      cin=>temp_7, s=>sum(8), cout=>temp_8);
   loop1_9_fx : FullAdder_unfolded18 port map ( a=>a(9), b=>carryIn_EXMPLR, 
      cin=>temp_8, s=>sum(9), cout=>temp_9);
   loop1_10_fx : FullAdder_unfolded18 port map ( a=>a(10), b=>carryIn_EXMPLR, 
      cin=>temp_9, s=>sum(10), cout=>temp_10);
   loop1_11_fx : FullAdder_unfolded18 port map ( a=>a(11), b=>carryIn_EXMPLR, 
      cin=>temp_10, s=>sum(11), cout=>temp_11);
   loop1_12_fx : FullAdder_unfolded19 port map ( a=>a(12), b=>carryIn_EXMPLR, 
      cin=>temp_11, s=>sum(12), cout=>DANGLING(0));
   ix42 : fake_gnd port map ( Y=>carryIn_EXMPLR);
end NBitAdderArch_unfold_2875_1_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_13_unfolded2 is
   port (
      A : IN std_logic_vector (12 DOWNTO 0) ;
      B : IN std_logic_vector (12 DOWNTO 0) ;
      S : IN std_logic ;
      C : OUT std_logic_vector (12 DOWNTO 0)) ;
end Mux2_13_unfolded2 ;

architecture Mux2Arch_xmplrcopy of Mux2_13_unfolded2 is
   signal nx179, nx181, nx186, nx188, nx191, nx193, nx196, nx198, nx201, 
      nx203, nx206, nx208, nx211, nx213, nx216, nx218, nx221, nx223, nx226, 
      nx228, nx231, nx233, nx236, nx238, nx241, nx243, nx250, nx252, nx258, 
      nx260, nx262: std_logic ;

begin
   ix7 : nand02 port map ( Y=>C(0), A0=>nx179, A1=>nx181);
   ix180 : nand02 port map ( Y=>nx179, A0=>B(0), A1=>nx258);
   ix182 : nand02 port map ( Y=>nx181, A0=>A(0), A1=>nx262);
   ix15 : nand02 port map ( Y=>C(1), A0=>nx186, A1=>nx188);
   ix187 : nand02 port map ( Y=>nx186, A0=>B(1), A1=>nx258);
   ix189 : nand02 port map ( Y=>nx188, A0=>A(1), A1=>nx262);
   ix23 : nand02 port map ( Y=>C(2), A0=>nx191, A1=>nx193);
   ix192 : nand02 port map ( Y=>nx191, A0=>B(2), A1=>nx258);
   ix194 : nand02 port map ( Y=>nx193, A0=>A(2), A1=>nx262);
   ix31 : nand02 port map ( Y=>C(3), A0=>nx196, A1=>nx198);
   ix197 : nand02 port map ( Y=>nx196, A0=>B(3), A1=>nx258);
   ix199 : nand02 port map ( Y=>nx198, A0=>A(3), A1=>nx262);
   ix39 : nand02 port map ( Y=>C(4), A0=>nx201, A1=>nx203);
   ix202 : nand02 port map ( Y=>nx201, A0=>B(4), A1=>nx258);
   ix204 : nand02 port map ( Y=>nx203, A0=>A(4), A1=>nx262);
   ix47 : nand02 port map ( Y=>C(5), A0=>nx206, A1=>nx208);
   ix207 : nand02 port map ( Y=>nx206, A0=>B(5), A1=>nx258);
   ix209 : nand02 port map ( Y=>nx208, A0=>A(5), A1=>nx262);
   ix55 : nand02 port map ( Y=>C(6), A0=>nx211, A1=>nx213);
   ix212 : nand02 port map ( Y=>nx211, A0=>B(6), A1=>nx258);
   ix214 : nand02 port map ( Y=>nx213, A0=>A(6), A1=>nx262);
   ix63 : nand02 port map ( Y=>C(7), A0=>nx216, A1=>nx218);
   ix217 : nand02 port map ( Y=>nx216, A0=>B(7), A1=>nx260);
   ix219 : nand02 port map ( Y=>nx218, A0=>A(7), A1=>nx252);
   ix71 : nand02 port map ( Y=>C(8), A0=>nx221, A1=>nx223);
   ix222 : nand02 port map ( Y=>nx221, A0=>B(8), A1=>nx260);
   ix224 : nand02 port map ( Y=>nx223, A0=>A(8), A1=>nx252);
   ix79 : nand02 port map ( Y=>C(9), A0=>nx226, A1=>nx228);
   ix227 : nand02 port map ( Y=>nx226, A0=>B(9), A1=>nx260);
   ix229 : nand02 port map ( Y=>nx228, A0=>A(9), A1=>nx252);
   ix87 : nand02 port map ( Y=>C(10), A0=>nx231, A1=>nx233);
   ix232 : nand02 port map ( Y=>nx231, A0=>B(10), A1=>nx260);
   ix234 : nand02 port map ( Y=>nx233, A0=>A(10), A1=>nx252);
   ix95 : nand02 port map ( Y=>C(11), A0=>nx236, A1=>nx238);
   ix237 : nand02 port map ( Y=>nx236, A0=>B(11), A1=>nx260);
   ix239 : nand02 port map ( Y=>nx238, A0=>A(11), A1=>nx252);
   ix103 : nand02 port map ( Y=>C(12), A0=>nx241, A1=>nx243);
   ix242 : nand02 port map ( Y=>nx241, A0=>nx260, A1=>B(12));
   ix244 : nand02 port map ( Y=>nx243, A0=>nx252, A1=>A(12));
   ix249 : inv02 port map ( Y=>nx250, A=>S);
   ix251 : inv02 port map ( Y=>nx252, A=>nx260);
   ix257 : inv02 port map ( Y=>nx258, A=>nx250);
   ix259 : inv02 port map ( Y=>nx260, A=>nx250);
   ix261 : inv02 port map ( Y=>nx262, A=>S);
end Mux2Arch_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MultiStepCounter_13 is
   port (
      load : IN std_logic_vector (12 DOWNTO 0) ;
      toBeAdded : IN std_logic_vector (12 DOWNTO 0) ;
      reset : IN std_logic ;
      clk : IN std_logic ;
      isLoad : IN std_logic ;
      MFC : IN std_logic ;
      count : OUT std_logic_vector (12 DOWNTO 0)) ;
end MultiStepCounter_13 ;

architecture MultiStepCounterArch_unfold_2954_0 of MultiStepCounter_13 is
   component Reg_13
      port (
         D : IN std_logic_vector (12 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
   component NBitAdder_13_unfolded4
      port (
         a : IN std_logic_vector (12 DOWNTO 0) ;
         b : IN std_logic_vector (12 DOWNTO 0) ;
         carryIn : IN std_logic ;
         sum : OUT std_logic_vector (12 DOWNTO 0) ;
         carryOut : OUT std_logic) ;
   end component ;
   component Mux2_13_unfolded2
      port (
         A : IN std_logic_vector (12 DOWNTO 0) ;
         B : IN std_logic_vector (12 DOWNTO 0) ;
         S : IN std_logic ;
         C : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
   signal count_12_EXMPLR, count_11_EXMPLR, count_10_EXMPLR, count_9_EXMPLR, 
      count_8_EXMPLR, count_7_EXMPLR, count_6_EXMPLR, count_5_EXMPLR, 
      count_4_EXMPLR, count_3_EXMPLR, count_2_EXMPLR, count_1_EXMPLR, 
      count_0_EXMPLR, loadOrCurrent_12, loadOrCurrent_11, loadOrCurrent_10, 
      loadOrCurrent_9, loadOrCurrent_8, loadOrCurrent_7, loadOrCurrent_6, 
      loadOrCurrent_5, loadOrCurrent_4, loadOrCurrent_3, loadOrCurrent_2, 
      loadOrCurrent_1, loadOrCurrent_0, counterInput_12, counterInput_11, 
      counterInput_10, counterInput_9, counterInput_8, counterInput_7, 
      counterInput_6, counterInput_5, counterInput_4, counterInput_3, 
      counterInput_2, counterInput_1, counterInput_0, countAdded_12, 
      countAdded_11, countAdded_10, countAdded_9, countAdded_8, countAdded_7, 
      countAdded_6, countAdded_5, countAdded_4, countAdded_3, countAdded_2, 
      countAdded_1, countAdded_0, GND, PWR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
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
   counterReg : Reg_13 port map ( D(12)=>counterInput_12, D(11)=>
      counterInput_11, D(10)=>counterInput_10, D(9)=>counterInput_9, D(8)=>
      counterInput_8, D(7)=>counterInput_7, D(6)=>counterInput_6, D(5)=>
      counterInput_5, D(4)=>counterInput_4, D(3)=>counterInput_3, D(2)=>
      counterInput_2, D(1)=>counterInput_1, D(0)=>counterInput_0, en=>PWR, 
      clk=>clk, rst=>GND, Q(12)=>count_12_EXMPLR, Q(11)=>count_11_EXMPLR, 
      Q(10)=>count_10_EXMPLR, Q(9)=>count_9_EXMPLR, Q(8)=>count_8_EXMPLR, 
      Q(7)=>count_7_EXMPLR, Q(6)=>count_6_EXMPLR, Q(5)=>count_5_EXMPLR, Q(4)
      =>count_4_EXMPLR, Q(3)=>count_3_EXMPLR, Q(2)=>count_2_EXMPLR, Q(1)=>
      count_1_EXMPLR, Q(0)=>count_0_EXMPLR);
   nextCount : NBitAdder_13_unfolded4 port map ( a(12)=>count_12_EXMPLR, 
      a(11)=>count_11_EXMPLR, a(10)=>count_10_EXMPLR, a(9)=>count_9_EXMPLR, 
      a(8)=>count_8_EXMPLR, a(7)=>count_7_EXMPLR, a(6)=>count_6_EXMPLR, a(5)
      =>count_5_EXMPLR, a(4)=>count_4_EXMPLR, a(3)=>count_3_EXMPLR, a(2)=>
      count_2_EXMPLR, a(1)=>count_1_EXMPLR, a(0)=>count_0_EXMPLR, b(12)=>GND, 
      b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, 
      b(5)=>GND, b(4)=>toBeAdded(4), b(3)=>toBeAdded(3), b(2)=>toBeAdded(2), 
      b(1)=>toBeAdded(1), b(0)=>toBeAdded(0), carryIn=>GND, sum(12)=>
      countAdded_12, sum(11)=>countAdded_11, sum(10)=>countAdded_10, sum(9)
      =>countAdded_9, sum(8)=>countAdded_8, sum(7)=>countAdded_7, sum(6)=>
      countAdded_6, sum(5)=>countAdded_5, sum(4)=>countAdded_4, sum(3)=>
      countAdded_3, sum(2)=>countAdded_2, sum(1)=>countAdded_1, sum(0)=>
      countAdded_0, carryOut=>DANGLING(0));
   muxloadOrCurrent : Mux2_13_unfolded2 port map ( A(12)=>count_12_EXMPLR, 
      A(11)=>count_11_EXMPLR, A(10)=>count_10_EXMPLR, A(9)=>count_9_EXMPLR, 
      A(8)=>count_8_EXMPLR, A(7)=>count_7_EXMPLR, A(6)=>count_6_EXMPLR, A(5)
      =>count_5_EXMPLR, A(4)=>count_4_EXMPLR, A(3)=>count_3_EXMPLR, A(2)=>
      count_2_EXMPLR, A(1)=>count_1_EXMPLR, A(0)=>count_0_EXMPLR, B(12)=>
      load(12), B(11)=>load(11), B(10)=>load(10), B(9)=>load(9), B(8)=>
      load(8), B(7)=>load(7), B(6)=>load(6), B(5)=>load(5), B(4)=>load(4), 
      B(3)=>load(3), B(2)=>load(2), B(1)=>load(1), B(0)=>load(0), S=>isLoad, 
      C(12)=>loadOrCurrent_12, C(11)=>loadOrCurrent_11, C(10)=>
      loadOrCurrent_10, C(9)=>loadOrCurrent_9, C(8)=>loadOrCurrent_8, C(7)=>
      loadOrCurrent_7, C(6)=>loadOrCurrent_6, C(5)=>loadOrCurrent_5, C(4)=>
      loadOrCurrent_4, C(3)=>loadOrCurrent_3, C(2)=>loadOrCurrent_2, C(1)=>
      loadOrCurrent_1, C(0)=>loadOrCurrent_0);
   muxInput : Mux2_13_unfolded2 port map ( A(12)=>loadOrCurrent_12, A(11)=>
      loadOrCurrent_11, A(10)=>loadOrCurrent_10, A(9)=>loadOrCurrent_9, A(8)
      =>loadOrCurrent_8, A(7)=>loadOrCurrent_7, A(6)=>loadOrCurrent_6, A(5)
      =>loadOrCurrent_5, A(4)=>loadOrCurrent_4, A(3)=>loadOrCurrent_3, A(2)
      =>loadOrCurrent_2, A(1)=>loadOrCurrent_1, A(0)=>loadOrCurrent_0, B(12)
      =>countAdded_12, B(11)=>countAdded_11, B(10)=>countAdded_10, B(9)=>
      countAdded_9, B(8)=>countAdded_8, B(7)=>countAdded_7, B(6)=>
      countAdded_6, B(5)=>countAdded_5, B(4)=>countAdded_4, B(3)=>
      countAdded_3, B(2)=>countAdded_2, B(1)=>countAdded_1, B(0)=>
      countAdded_0, S=>MFC, C(12)=>counterInput_12, C(11)=>counterInput_11, 
      C(10)=>counterInput_10, C(9)=>counterInput_9, C(8)=>counterInput_8, 
      C(7)=>counterInput_7, C(6)=>counterInput_6, C(5)=>counterInput_5, C(4)
      =>counterInput_4, C(3)=>counterInput_3, C(2)=>counterInput_2, C(1)=>
      counterInput_1, C(0)=>counterInput_0);
   ix4 : fake_vcc port map ( Y=>PWR);
   ix2 : fake_gnd port map ( Y=>GND);
end MultiStepCounterArch_unfold_2954_0 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Reg_3_unfolded2 is
   port (
      D : IN std_logic_vector (2 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      Q : OUT std_logic_vector (2 DOWNTO 0)) ;
end Reg_3_unfolded2 ;

architecture RegArch_unfold_2178_xmplrcopy of Reg_3_unfolded2 is
   signal Q_2_EXMPLR, Q_1_EXMPLR, Q_0_EXMPLR, nx58, nx68, nx78, nx90, nx92, 
      nx94, nx99, nx101, nx106, nx108: std_logic ;

begin
   Q(2) <= Q_2_EXMPLR ;
   Q(1) <= Q_1_EXMPLR ;
   Q(0) <= Q_0_EXMPLR ;
   reg_Q_0 : dff port map ( Q=>Q_0_EXMPLR, QB=>OPEN, D=>nx58, CLK=>clk);
   ix59 : nand02 port map ( Y=>nx58, A0=>nx90, A1=>nx94);
   ix91 : nand02 port map ( Y=>nx90, A0=>Q_0_EXMPLR, A1=>nx92);
   ix93 : inv01 port map ( Y=>nx92, A=>en);
   ix95 : nand02 port map ( Y=>nx94, A0=>D(0), A1=>en);
   reg_Q_1 : dff port map ( Q=>Q_1_EXMPLR, QB=>OPEN, D=>nx68, CLK=>clk);
   ix69 : nand02 port map ( Y=>nx68, A0=>nx99, A1=>nx101);
   ix100 : nand02 port map ( Y=>nx99, A0=>Q_1_EXMPLR, A1=>nx92);
   ix102 : nand02 port map ( Y=>nx101, A0=>D(1), A1=>en);
   reg_Q_2 : dff port map ( Q=>Q_2_EXMPLR, QB=>OPEN, D=>nx78, CLK=>clk);
   ix79 : nand02 port map ( Y=>nx78, A0=>nx106, A1=>nx108);
   ix107 : nand02 port map ( Y=>nx106, A0=>Q_2_EXMPLR, A1=>nx92);
   ix109 : nand02 port map ( Y=>nx108, A0=>D(2), A1=>en);
end RegArch_unfold_2178_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FullSubtractor is
   port (
      x : IN std_logic ;
      y : IN std_logic ;
      bin : IN std_logic ;
      difference : OUT std_logic ;
      bout : OUT std_logic) ;
end FullSubtractor ;

architecture Behavioral_unfold_1977_0 of FullSubtractor is
begin
   ix45 : fake_gnd port map ( Y=>bout);
   ix54 : inv01 port map ( Y=>difference, A=>x);
end Behavioral_unfold_1977_0 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FullSubtractor_unfolded2 is
   port (
      x : IN std_logic ;
      y : IN std_logic ;
      bin : IN std_logic ;
      difference : OUT std_logic ;
      bout : OUT std_logic) ;
end FullSubtractor_unfolded2 ;

architecture Behavioral_unfold_2523_xmplrcopy of FullSubtractor_unfolded2 is
   signal nx95, nx98: std_logic ;

begin
   ix3 : nor02_2x port map ( Y=>bout, A0=>nx95, A1=>x);
   ix96 : inv01 port map ( Y=>nx95, A=>bin);
   ix9 : xnor2 port map ( Y=>difference, A0=>bin, A1=>nx98);
   ix99 : inv01 port map ( Y=>nx98, A=>x);
end Behavioral_unfold_2523_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FullSubtractor_unfolded3 is
   port (
      x : IN std_logic ;
      y : IN std_logic ;
      bin : IN std_logic ;
      difference : OUT std_logic ;
      bout : OUT std_logic) ;
end FullSubtractor_unfolded3 ;

architecture Behavioral_unfold_2524_xmplrcopy of FullSubtractor_unfolded3 is
   signal nx55: std_logic ;

begin
   ix45 : fake_gnd port map ( Y=>bout);
   ix1 : xnor2 port map ( Y=>difference, A0=>bin, A1=>nx55);
   ix56 : inv01 port map ( Y=>nx55, A=>x);
end Behavioral_unfold_2524_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NBitSubtractor_3 is
   port (
      x : IN std_logic_vector (2 DOWNTO 0) ;
      y : IN std_logic_vector (2 DOWNTO 0) ;
      bin : IN std_logic ;
      difference : OUT std_logic_vector (2 DOWNTO 0) ;
      borrowOut : OUT std_logic) ;
end NBitSubtractor_3 ;

architecture NBitSubtractorArch_unfold_2916 of NBitSubtractor_3 is
   component FullSubtractor
      port (
         x : IN std_logic ;
         y : IN std_logic ;
         bin : IN std_logic ;
         difference : OUT std_logic ;
         bout : OUT std_logic) ;
   end component ;
   component FullSubtractor_unfolded2
      port (
         x : IN std_logic ;
         y : IN std_logic ;
         bin : IN std_logic ;
         difference : OUT std_logic ;
         bout : OUT std_logic) ;
   end component ;
   component FullSubtractor_unfolded3
      port (
         x : IN std_logic ;
         y : IN std_logic ;
         bin : IN std_logic ;
         difference : OUT std_logic ;
         bout : OUT std_logic) ;
   end component ;
   signal difference_0_EXMPLR, temp_1, bin_EXMPLR, y_2_EXMPLR: std_logic ;
   
   signal DANGLING : std_logic_vector (1 downto 0 );

begin
   difference(0) <= difference_0_EXMPLR ;
   borrowOut <= y_2_EXMPLR ;
   f0 : FullSubtractor port map ( x=>x(0), y=>y_2_EXMPLR, bin=>bin_EXMPLR, 
      difference=>difference_0_EXMPLR, bout=>DANGLING(0));
   loop1_1_fx : FullSubtractor_unfolded2 port map ( x=>x(1), y=>y_2_EXMPLR, 
      bin=>difference_0_EXMPLR, difference=>difference(1), bout=>temp_1);
   loop1_2_fx : FullSubtractor_unfolded3 port map ( x=>x(2), y=>y_2_EXMPLR, 
      bin=>temp_1, difference=>difference(2), bout=>DANGLING(1));
   ix4 : fake_gnd port map ( Y=>y_2_EXMPLR);
   ix2 : fake_vcc port map ( Y=>bin_EXMPLR);
end NBitSubtractorArch_unfold_2916 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_3 is
   port (
      A : IN std_logic_vector (2 DOWNTO 0) ;
      B : IN std_logic_vector (2 DOWNTO 0) ;
      S : IN std_logic ;
      C : OUT std_logic_vector (2 DOWNTO 0)) ;
end Mux2_3 ;

architecture Mux2Arch of Mux2_3 is
   signal nx119, nx121, nx123, nx126, nx128, nx131, nx133: std_logic ;

begin
   ix7 : nand02 port map ( Y=>C(0), A0=>nx119, A1=>nx121);
   ix120 : nand02 port map ( Y=>nx119, A0=>B(0), A1=>S);
   ix122 : nand02 port map ( Y=>nx121, A0=>A(0), A1=>nx123);
   ix124 : inv01 port map ( Y=>nx123, A=>S);
   ix15 : nand02 port map ( Y=>C(1), A0=>nx126, A1=>nx128);
   ix127 : nand02 port map ( Y=>nx126, A0=>B(1), A1=>S);
   ix129 : nand02 port map ( Y=>nx128, A0=>A(1), A1=>nx123);
   ix23 : nand02 port map ( Y=>C(2), A0=>nx131, A1=>nx133);
   ix132 : nand02 port map ( Y=>nx131, A0=>S, A1=>B(2));
   ix134 : nand02 port map ( Y=>nx133, A0=>nx123, A1=>A(2));
end Mux2Arch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DownCounter_3 is
   port (
      load : IN std_logic_vector (2 DOWNTO 0) ;
      enable : IN std_logic ;
      clk : IN std_logic ;
      isLoad : IN std_logic ;
      currentCount : INOUT std_logic_vector (2 DOWNTO 0)) ;
end DownCounter_3 ;

architecture DownCounterArch of DownCounter_3 is
   component Reg_3_unfolded2
      port (
         D : IN std_logic_vector (2 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (2 DOWNTO 0)) ;
   end component ;
   component NBitSubtractor_3
      port (
         x : IN std_logic_vector (2 DOWNTO 0) ;
         y : IN std_logic_vector (2 DOWNTO 0) ;
         bin : IN std_logic ;
         difference : OUT std_logic_vector (2 DOWNTO 0) ;
         borrowOut : OUT std_logic) ;
   end component ;
   component Mux2_3
      port (
         A : IN std_logic_vector (2 DOWNTO 0) ;
         B : IN std_logic_vector (2 DOWNTO 0) ;
         S : IN std_logic ;
         C : OUT std_logic_vector (2 DOWNTO 0)) ;
   end component ;
   signal counterInput_2, counterInput_1, counterInput_0, subtractorOutput_2, 
      subtractorOutput_1, subtractorOutput_0, PWR, zerosSignal_2: std_logic
    ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   counterReg : Reg_3_unfolded2 port map ( D(2)=>counterInput_2, D(1)=>
      counterInput_1, D(0)=>counterInput_0, en=>enable, clk=>clk, rst=>
      zerosSignal_2, Q(2)=>currentCount(2), Q(1)=>currentCount(1), Q(0)=>
      currentCount(0));
   nextCount : NBitSubtractor_3 port map ( x(2)=>currentCount(2), x(1)=>
      currentCount(1), x(0)=>currentCount(0), y(2)=>zerosSignal_2, y(1)=>
      zerosSignal_2, y(0)=>zerosSignal_2, bin=>PWR, difference(2)=>
      subtractorOutput_2, difference(1)=>subtractorOutput_1, difference(0)=>
      subtractorOutput_0, borrowOut=>DANGLING(0));
   muxloadOrCurrent : Mux2_3 port map ( A(2)=>subtractorOutput_2, A(1)=>
      subtractorOutput_1, A(0)=>subtractorOutput_0, B(2)=>load(2), B(1)=>
      load(1), B(0)=>load(0), S=>isLoad, C(2)=>counterInput_2, C(1)=>
      counterInput_1, C(0)=>counterInput_0);
   ix18 : fake_gnd port map ( Y=>zerosSignal_2);
   ix16 : fake_vcc port map ( Y=>PWR);
end DownCounterArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Reg_13_unfolded3 is
   port (
      D : IN std_logic_vector (12 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      Q : OUT std_logic_vector (12 DOWNTO 0)) ;
end Reg_13_unfolded3 ;

architecture RegArch_unfold_2035_xmplrcopy of Reg_13_unfolded3 is
   signal Q_12_EXMPLR: std_logic ;

begin
   Q(12) <= Q_12_EXMPLR ;
   Q(11) <= Q_12_EXMPLR ;
   Q(10) <= Q_12_EXMPLR ;
   Q(9) <= Q_12_EXMPLR ;
   Q(8) <= Q_12_EXMPLR ;
   Q(7) <= Q_12_EXMPLR ;
   Q(6) <= Q_12_EXMPLR ;
   Q(5) <= Q_12_EXMPLR ;
   ix2 : fake_gnd port map ( Y=>Q_12_EXMPLR);
   reg_Q_0 : dff port map ( Q=>Q(0), QB=>OPEN, D=>D(0), CLK=>clk);
   reg_Q_1 : dff port map ( Q=>Q(1), QB=>OPEN, D=>D(1), CLK=>clk);
   reg_Q_2 : dff port map ( Q=>Q(2), QB=>OPEN, D=>D(2), CLK=>clk);
   reg_Q_3 : dff port map ( Q=>Q(3), QB=>OPEN, D=>D(3), CLK=>clk);
   reg_Q_4 : dff port map ( Q=>Q(4), QB=>OPEN, D=>D(4), CLK=>clk);
end RegArch_unfold_2035_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DMA_13_80 is
   port (
      initialCount : IN std_logic_vector (2 DOWNTO 0) ;
      readBaseAddress : IN std_logic_vector (12 DOWNTO 0) ;
      readStep : IN std_logic_vector (12 DOWNTO 0) ;
      initAddress : IN std_logic ;
      initCounter : IN std_logic ;
      load : IN std_logic ;
      internalBus : OUT std_logic_vector (79 DOWNTO 0) ;
      finishedOneReadOut : OUT std_logic ;
      finishedReading : OUT std_logic ;
      clk : IN std_logic ;
      ramDataInBus : IN std_logic_vector (79 DOWNTO 0) ;
      ramRead : OUT std_logic ;
      ramReadAddress : OUT std_logic_vector (12 DOWNTO 0) ;
      MFC : IN std_logic) ;
end DMA_13_80 ;

architecture DMAArch_unfold_1918 of DMA_13_80 is
   component MultiStepCounter_13
      port (
         load : IN std_logic_vector (12 DOWNTO 0) ;
         toBeAdded : IN std_logic_vector (12 DOWNTO 0) ;
         reset : IN std_logic ;
         clk : IN std_logic ;
         isLoad : IN std_logic ;
         MFC : IN std_logic ;
         count : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
   component DownCounter_3
      port (
         load : IN std_logic_vector (2 DOWNTO 0) ;
         enable : IN std_logic ;
         clk : IN std_logic ;
         isLoad : IN std_logic ;
         currentCount : INOUT std_logic_vector (2 DOWNTO 0)) ;
   
   end component ;
   component Reg_13_unfolded3
      port (
         D : IN std_logic_vector (12 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
   signal currentCount_2, currentCount_1, currentCount_0, tobeAdded_4, 
      tobeAdded_3, tobeAdded_2, tobeAdded_1, tobeAdded_0, enableCount, 
      finishedOneReadOut_EXMPLR, PWR, GND, NOT_MFC, nx18, nx25, nx30, nx34, 
      nx36, nx38, nx40, nx1, nx5: std_logic ;
   
   signal DANGLING : std_logic_vector (7 downto 0 );

begin
   internalBus(79) <= GND ;
   internalBus(78) <= GND ;
   internalBus(77) <= GND ;
   internalBus(76) <= GND ;
   internalBus(75) <= GND ;
   internalBus(74) <= GND ;
   internalBus(73) <= GND ;
   internalBus(72) <= GND ;
   internalBus(71) <= GND ;
   internalBus(70) <= GND ;
   internalBus(69) <= GND ;
   internalBus(68) <= GND ;
   internalBus(67) <= GND ;
   internalBus(66) <= GND ;
   internalBus(65) <= GND ;
   internalBus(64) <= GND ;
   internalBus(63) <= GND ;
   internalBus(62) <= GND ;
   internalBus(61) <= GND ;
   internalBus(60) <= GND ;
   internalBus(59) <= GND ;
   internalBus(58) <= GND ;
   internalBus(57) <= GND ;
   internalBus(56) <= GND ;
   internalBus(55) <= GND ;
   internalBus(54) <= GND ;
   internalBus(53) <= GND ;
   internalBus(52) <= GND ;
   internalBus(51) <= GND ;
   internalBus(50) <= GND ;
   internalBus(49) <= GND ;
   internalBus(48) <= GND ;
   internalBus(47) <= GND ;
   internalBus(46) <= GND ;
   internalBus(45) <= GND ;
   internalBus(44) <= GND ;
   internalBus(43) <= GND ;
   internalBus(42) <= GND ;
   internalBus(41) <= GND ;
   internalBus(40) <= GND ;
   internalBus(39) <= GND ;
   internalBus(38) <= GND ;
   internalBus(37) <= GND ;
   internalBus(36) <= GND ;
   internalBus(35) <= GND ;
   internalBus(34) <= GND ;
   internalBus(33) <= GND ;
   internalBus(32) <= GND ;
   internalBus(31) <= GND ;
   internalBus(30) <= GND ;
   internalBus(29) <= GND ;
   internalBus(28) <= GND ;
   internalBus(27) <= GND ;
   internalBus(26) <= GND ;
   internalBus(25) <= GND ;
   internalBus(24) <= GND ;
   internalBus(23) <= GND ;
   internalBus(22) <= GND ;
   internalBus(21) <= GND ;
   internalBus(20) <= GND ;
   internalBus(19) <= GND ;
   internalBus(18) <= GND ;
   internalBus(17) <= GND ;
   internalBus(16) <= GND ;
   internalBus(15) <= GND ;
   internalBus(14) <= GND ;
   internalBus(13) <= GND ;
   internalBus(12) <= GND ;
   internalBus(11) <= GND ;
   internalBus(10) <= GND ;
   internalBus(9) <= GND ;
   internalBus(8) <= GND ;
   internalBus(7) <= GND ;
   internalBus(6) <= GND ;
   internalBus(5) <= GND ;
   internalBus(4) <= GND ;
   internalBus(3) <= GND ;
   internalBus(2) <= GND ;
   internalBus(1) <= GND ;
   internalBus(0) <= GND ;
   finishedOneReadOut <= GND ;
   ramRead <= GND ;
   addressRegister : MultiStepCounter_13 port map ( load(12)=>
      readBaseAddress(12), load(11)=>readBaseAddress(11), load(10)=>
      readBaseAddress(10), load(9)=>readBaseAddress(9), load(8)=>
      readBaseAddress(8), load(7)=>readBaseAddress(7), load(6)=>
      readBaseAddress(6), load(5)=>readBaseAddress(5), load(4)=>
      readBaseAddress(4), load(3)=>readBaseAddress(3), load(2)=>
      readBaseAddress(2), load(1)=>readBaseAddress(1), load(0)=>
      readBaseAddress(0), toBeAdded(12)=>GND, toBeAdded(11)=>GND, 
      toBeAdded(10)=>GND, toBeAdded(9)=>GND, toBeAdded(8)=>GND, toBeAdded(7)
      =>GND, toBeAdded(6)=>GND, toBeAdded(5)=>GND, toBeAdded(4)=>tobeAdded_4, 
      toBeAdded(3)=>tobeAdded_3, toBeAdded(2)=>tobeAdded_2, toBeAdded(1)=>
      tobeAdded_1, toBeAdded(0)=>tobeAdded_0, reset=>GND, clk=>clk, isLoad=>
      initAddress, MFC=>finishedOneReadOut_EXMPLR, count(12)=>
      ramReadAddress(12), count(11)=>ramReadAddress(11), count(10)=>
      ramReadAddress(10), count(9)=>ramReadAddress(9), count(8)=>
      ramReadAddress(8), count(7)=>ramReadAddress(7), count(6)=>
      ramReadAddress(6), count(5)=>ramReadAddress(5), count(4)=>
      ramReadAddress(4), count(3)=>ramReadAddress(3), count(2)=>
      ramReadAddress(2), count(1)=>ramReadAddress(1), count(0)=>
      ramReadAddress(0));
   counter : DownCounter_3 port map ( load(2)=>initialCount(2), load(1)=>
      initialCount(1), load(0)=>initialCount(0), enable=>enableCount, clk=>
      clk, isLoad=>initCounter, currentCount(2)=>currentCount_2, 
      currentCount(1)=>currentCount_1, currentCount(0)=>currentCount_0);
   readStepRegister : Reg_13_unfolded3 port map ( D(12)=>GND, D(11)=>GND, 
      D(10)=>GND, D(9)=>GND, D(8)=>GND, D(7)=>GND, D(6)=>GND, D(5)=>GND, 
      D(4)=>readStep(4), D(3)=>readStep(3), D(2)=>readStep(2), D(1)=>
      readStep(1), D(0)=>readStep(0), en=>PWR, clk=>clk, rst=>GND, Q(12)=>
      DANGLING(0), Q(11)=>DANGLING(1), Q(10)=>DANGLING(2), Q(9)=>DANGLING(3), 
      Q(8)=>DANGLING(4), Q(7)=>DANGLING(5), Q(6)=>DANGLING(6), Q(5)=>
      DANGLING(7), Q(4)=>tobeAdded_4, Q(3)=>tobeAdded_3, Q(2)=>tobeAdded_2, 
      Q(1)=>tobeAdded_1, Q(0)=>tobeAdded_0);
   ix7 : fake_gnd port map ( Y=>GND);
   ix5 : fake_vcc port map ( Y=>PWR);
   ix13 : nor02_2x port map ( Y=>finishedOneReadOut_EXMPLR, A0=>nx25, A1=>
      NOT_MFC);
   ix26 : inv01 port map ( Y=>nx25, A=>load);
   ix28 : inv16 port map ( Y=>NOT_MFC, A=>MFC);
   ix23 : inv01 port map ( Y=>enableCount, A=>nx30);
   ix31 : nor02_2x port map ( Y=>nx30, A0=>MFC, A1=>initCounter);
   ix19 : nor03_2x port map ( Y=>nx18, A0=>currentCount_1, A1=>nx34, A2=>
      nx38);
   ix35 : nand02 port map ( Y=>nx34, A0=>currentCount_0, A1=>nx36);
   ix37 : inv01 port map ( Y=>nx36, A=>currentCount_2);
   ix39 : nand03 port map ( Y=>nx38, A0=>nx40, A1=>load, A2=>MFC);
   ix41 : inv01 port map ( Y=>nx40, A=>clk);
   lat_internalFinishedReading_u1 : latchs_ni port map ( QB=>nx5, D=>GND, 
      CLK=>NOT_MFC, S=>nx18);
   lat_internalFinishedReading_u2 : inv02 port map ( Y=>finishedReading, A=>
      nx5);
   lat_internalFinishedReading_u3 : buf02 port map ( Y=>nx1, A=>nx5);
end DMAArch_unfold_1918 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FullAdder_unfolded20 is
   port (
      a : IN std_logic ;
      b : IN std_logic ;
      cin : IN std_logic ;
      s : OUT std_logic ;
      cout : OUT std_logic) ;
end FullAdder_unfolded20 ;

architecture FullAdderArch_unfold_1717_5_xmplrcopy of FullAdder_unfolded20
    is
begin
   ix53 : fake_gnd port map ( Y=>cout);
   ix62 : inv01 port map ( Y=>s, A=>a);
end FullAdderArch_unfold_1717_5_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FullAdder_unfolded21 is
   port (
      a : IN std_logic ;
      b : IN std_logic ;
      cin : IN std_logic ;
      s : OUT std_logic ;
      cout : OUT std_logic) ;
end FullAdder_unfolded21 ;

architecture FullAdderArch_unfold_2281_2_xmplrcopy of FullAdder_unfolded21
    is
   signal nx55: std_logic ;

begin
   ix45 : fake_gnd port map ( Y=>cout);
   ix1 : xnor2 port map ( Y=>s, A0=>cin, A1=>nx55);
   ix56 : inv01 port map ( Y=>nx55, A=>a);
end FullAdderArch_unfold_2281_2_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NBitAdder_13_unfolded5 is
   port (
      a : IN std_logic_vector (12 DOWNTO 0) ;
      b : IN std_logic_vector (12 DOWNTO 0) ;
      carryIn : IN std_logic ;
      sum : OUT std_logic_vector (12 DOWNTO 0) ;
      carryOut : OUT std_logic) ;
end NBitAdder_13_unfolded5 ;

architecture NBitAdderArch_unfold_4175_xmplrcopy of NBitAdder_13_unfolded5
    is
   component FullAdder_unfolded20
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   component FullAdder_unfolded17
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   component FullAdder_unfolded15
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   component FullAdder_unfolded21
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   signal temp_11, temp_10, temp_9, temp_8, temp_7, temp_6, temp_5, temp_4, 
      temp_3, temp_2, temp_1, b_0_EXMPLR, b_12_EXMPLR: std_logic ;
   
   signal DANGLING : std_logic_vector (1 downto 0 );

begin
   carryOut <= b_12_EXMPLR ;
   f0 : FullAdder_unfolded20 port map ( a=>a(0), b=>b_0_EXMPLR, cin=>
      b_12_EXMPLR, s=>sum(0), cout=>DANGLING(0));
   loop1_1_fx : FullAdder_unfolded17 port map ( a=>a(1), b=>b(1), cin=>a(0), 
      s=>sum(1), cout=>temp_1);
   loop1_2_fx : FullAdder_unfolded17 port map ( a=>a(2), b=>b(2), cin=>
      temp_1, s=>sum(2), cout=>temp_2);
   loop1_3_fx : FullAdder_unfolded15 port map ( a=>a(3), b=>b_12_EXMPLR, cin
      =>temp_2, s=>sum(3), cout=>temp_3);
   loop1_4_fx : FullAdder_unfolded15 port map ( a=>a(4), b=>b_12_EXMPLR, cin
      =>temp_3, s=>sum(4), cout=>temp_4);
   loop1_5_fx : FullAdder_unfolded15 port map ( a=>a(5), b=>b_12_EXMPLR, cin
      =>temp_4, s=>sum(5), cout=>temp_5);
   loop1_6_fx : FullAdder_unfolded15 port map ( a=>a(6), b=>b_12_EXMPLR, cin
      =>temp_5, s=>sum(6), cout=>temp_6);
   loop1_7_fx : FullAdder_unfolded15 port map ( a=>a(7), b=>b_12_EXMPLR, cin
      =>temp_6, s=>sum(7), cout=>temp_7);
   loop1_8_fx : FullAdder_unfolded15 port map ( a=>a(8), b=>b_12_EXMPLR, cin
      =>temp_7, s=>sum(8), cout=>temp_8);
   loop1_9_fx : FullAdder_unfolded15 port map ( a=>a(9), b=>b_12_EXMPLR, cin
      =>temp_8, s=>sum(9), cout=>temp_9);
   loop1_10_fx : FullAdder_unfolded15 port map ( a=>a(10), b=>b_12_EXMPLR, 
      cin=>temp_9, s=>sum(10), cout=>temp_10);
   loop1_11_fx : FullAdder_unfolded15 port map ( a=>a(11), b=>b_12_EXMPLR, 
      cin=>temp_10, s=>sum(11), cout=>temp_11);
   loop1_12_fx : FullAdder_unfolded21 port map ( a=>a(12), b=>b_12_EXMPLR, 
      cin=>temp_11, s=>sum(12), cout=>DANGLING(1));
   ix6 : fake_gnd port map ( Y=>b_12_EXMPLR);
   ix4 : fake_vcc port map ( Y=>b_0_EXMPLR);
end NBitAdderArch_unfold_4175_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_13_unfolded3 is
   port (
      A : IN std_logic_vector (12 DOWNTO 0) ;
      B : IN std_logic_vector (12 DOWNTO 0) ;
      S : IN std_logic ;
      C : OUT std_logic_vector (12 DOWNTO 0)) ;
end Mux2_13_unfolded3 ;

architecture Mux2Arch_unfold_3742_xmplrcopy of Mux2_13_unfolded3 is
   signal nx128, nx133, nx136, nx139, nx142, nx145, nx147, nx150, nx153, 
      nx156, nx158, nx161, nx163, nx166, nx168, nx171, nx173, nx176, nx183, 
      nx185: std_logic ;

begin
   ix1 : nor02_2x port map ( Y=>C(0), A0=>nx128, A1=>nx183);
   ix129 : inv01 port map ( Y=>nx128, A=>B(0));
   ix3 : nor02_2x port map ( Y=>C(1), A0=>nx133, A1=>nx183);
   ix134 : inv01 port map ( Y=>nx133, A=>B(1));
   ix5 : nor02_2x port map ( Y=>C(2), A0=>nx136, A1=>nx183);
   ix137 : inv01 port map ( Y=>nx136, A=>B(2));
   ix7 : nor02_2x port map ( Y=>C(3), A0=>nx139, A1=>nx183);
   ix140 : inv01 port map ( Y=>nx139, A=>B(3));
   ix9 : nor02_2x port map ( Y=>C(4), A0=>nx142, A1=>nx183);
   ix143 : inv01 port map ( Y=>nx142, A=>B(4));
   ix23 : nand02 port map ( Y=>C(5), A0=>nx145, A1=>nx147);
   ix146 : nand02 port map ( Y=>nx145, A0=>B(5), A1=>S);
   ix148 : nand02 port map ( Y=>nx147, A0=>A(5), A1=>nx183);
   ix11 : nor02_2x port map ( Y=>C(6), A0=>nx150, A1=>nx183);
   ix151 : inv01 port map ( Y=>nx150, A=>B(6));
   ix13 : nor02_2x port map ( Y=>C(7), A0=>nx153, A1=>nx185);
   ix154 : inv01 port map ( Y=>nx153, A=>B(7));
   ix31 : nand02 port map ( Y=>C(8), A0=>nx156, A1=>nx158);
   ix157 : nand02 port map ( Y=>nx156, A0=>B(8), A1=>S);
   ix159 : nand02 port map ( Y=>nx158, A0=>A(8), A1=>nx185);
   ix39 : nand02 port map ( Y=>C(9), A0=>nx161, A1=>nx163);
   ix162 : nand02 port map ( Y=>nx161, A0=>B(9), A1=>S);
   ix164 : nand02 port map ( Y=>nx163, A0=>A(9), A1=>nx185);
   ix47 : nand02 port map ( Y=>C(10), A0=>nx166, A1=>nx168);
   ix167 : nand02 port map ( Y=>nx166, A0=>B(10), A1=>S);
   ix169 : nand02 port map ( Y=>nx168, A0=>A(10), A1=>nx185);
   ix55 : nand02 port map ( Y=>C(11), A0=>nx171, A1=>nx173);
   ix172 : nand02 port map ( Y=>nx171, A0=>S, A1=>B(11));
   ix174 : nand02 port map ( Y=>nx173, A0=>nx185, A1=>A(11));
   ix15 : nor02_2x port map ( Y=>C(12), A0=>nx176, A1=>nx185);
   ix177 : inv01 port map ( Y=>nx176, A=>B(12));
   ix182 : inv02 port map ( Y=>nx183, A=>S);
   ix184 : inv02 port map ( Y=>nx185, A=>S);
end Mux2Arch_unfold_3742_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NBitAdder_13_unfolded6 is
   port (
      a : IN std_logic_vector (12 DOWNTO 0) ;
      b : IN std_logic_vector (12 DOWNTO 0) ;
      carryIn : IN std_logic ;
      sum : OUT std_logic_vector (12 DOWNTO 0) ;
      carryOut : OUT std_logic) ;
end NBitAdder_13_unfolded6 ;

architecture NBitAdderArch_unfold_2246_xmplrcopy of NBitAdder_13_unfolded6
    is
   component FullAdder_unfolded14
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   component FullAdder_unfolded15
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   component FullAdder_unfolded21
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   signal temp_11, temp_10, temp_9, temp_8, temp_7, temp_6, temp_5, temp_4, 
      temp_3, temp_2, temp_1, carryIn_EXMPLR, b_12_EXMPLR: std_logic ;
   
   signal DANGLING : std_logic_vector (1 downto 0 );

begin
   carryOut <= b_12_EXMPLR ;
   f0 : FullAdder_unfolded14 port map ( a=>a(0), b=>b_12_EXMPLR, cin=>
      carryIn_EXMPLR, s=>sum(0), cout=>DANGLING(0));
   loop1_1_fx : FullAdder_unfolded15 port map ( a=>a(1), b=>b_12_EXMPLR, cin
      =>a(0), s=>sum(1), cout=>temp_1);
   loop1_2_fx : FullAdder_unfolded15 port map ( a=>a(2), b=>b_12_EXMPLR, cin
      =>temp_1, s=>sum(2), cout=>temp_2);
   loop1_3_fx : FullAdder_unfolded15 port map ( a=>a(3), b=>b_12_EXMPLR, cin
      =>temp_2, s=>sum(3), cout=>temp_3);
   loop1_4_fx : FullAdder_unfolded15 port map ( a=>a(4), b=>b_12_EXMPLR, cin
      =>temp_3, s=>sum(4), cout=>temp_4);
   loop1_5_fx : FullAdder_unfolded15 port map ( a=>a(5), b=>b_12_EXMPLR, cin
      =>temp_4, s=>sum(5), cout=>temp_5);
   loop1_6_fx : FullAdder_unfolded15 port map ( a=>a(6), b=>b_12_EXMPLR, cin
      =>temp_5, s=>sum(6), cout=>temp_6);
   loop1_7_fx : FullAdder_unfolded15 port map ( a=>a(7), b=>b_12_EXMPLR, cin
      =>temp_6, s=>sum(7), cout=>temp_7);
   loop1_8_fx : FullAdder_unfolded15 port map ( a=>a(8), b=>b_12_EXMPLR, cin
      =>temp_7, s=>sum(8), cout=>temp_8);
   loop1_9_fx : FullAdder_unfolded15 port map ( a=>a(9), b=>b_12_EXMPLR, cin
      =>temp_8, s=>sum(9), cout=>temp_9);
   loop1_10_fx : FullAdder_unfolded15 port map ( a=>a(10), b=>b_12_EXMPLR, 
      cin=>temp_9, s=>sum(10), cout=>temp_10);
   loop1_11_fx : FullAdder_unfolded15 port map ( a=>a(11), b=>b_12_EXMPLR, 
      cin=>temp_10, s=>sum(11), cout=>temp_11);
   loop1_12_fx : FullAdder_unfolded21 port map ( a=>a(12), b=>b_12_EXMPLR, 
      cin=>temp_11, s=>sum(12), cout=>DANGLING(1));
   ix6 : fake_gnd port map ( Y=>b_12_EXMPLR);
   ix4 : fake_vcc port map ( Y=>carryIn_EXMPLR);
end NBitAdderArch_unfold_2246_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Counter2_13 is
   port (
      load : IN std_logic_vector (12 DOWNTO 0) ;
      reset : IN std_logic ;
      clk : IN std_logic ;
      isLoad : IN std_logic ;
      count : OUT std_logic_vector (12 DOWNTO 0)) ;
end Counter2_13 ;

architecture Counter2Arch_unfold_4074 of Counter2_13 is
   component Reg_13
      port (
         D : IN std_logic_vector (12 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
   component NBitAdder_13_unfolded6
      port (
         a : IN std_logic_vector (12 DOWNTO 0) ;
         b : IN std_logic_vector (12 DOWNTO 0) ;
         carryIn : IN std_logic ;
         sum : OUT std_logic_vector (12 DOWNTO 0) ;
         carryOut : OUT std_logic) ;
   end component ;
   component Mux2_13_unfolded2
      port (
         A : IN std_logic_vector (12 DOWNTO 0) ;
         B : IN std_logic_vector (12 DOWNTO 0) ;
         S : IN std_logic ;
         C : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
   signal count_12_EXMPLR, count_11_EXMPLR, count_10_EXMPLR, count_9_EXMPLR, 
      count_8_EXMPLR, count_7_EXMPLR, count_6_EXMPLR, count_5_EXMPLR, 
      count_4_EXMPLR, count_3_EXMPLR, count_2_EXMPLR, count_1_EXMPLR, 
      count_0_EXMPLR, counterInput_12, counterInput_11, counterInput_10, 
      counterInput_9, counterInput_8, counterInput_7, counterInput_6, 
      counterInput_5, counterInput_4, counterInput_3, counterInput_2, 
      counterInput_1, counterInput_0, countAdded_12, countAdded_11, 
      countAdded_10, countAdded_9, countAdded_8, countAdded_7, countAdded_6, 
      countAdded_5, countAdded_4, countAdded_3, countAdded_2, countAdded_1, 
      countAdded_0, zerosSignal_12, PWR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
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
   counterReg : Reg_13 port map ( D(12)=>counterInput_12, D(11)=>
      counterInput_11, D(10)=>counterInput_10, D(9)=>counterInput_9, D(8)=>
      counterInput_8, D(7)=>counterInput_7, D(6)=>counterInput_6, D(5)=>
      counterInput_5, D(4)=>counterInput_4, D(3)=>counterInput_3, D(2)=>
      counterInput_2, D(1)=>counterInput_1, D(0)=>counterInput_0, en=>PWR, 
      clk=>clk, rst=>zerosSignal_12, Q(12)=>count_12_EXMPLR, Q(11)=>
      count_11_EXMPLR, Q(10)=>count_10_EXMPLR, Q(9)=>count_9_EXMPLR, Q(8)=>
      count_8_EXMPLR, Q(7)=>count_7_EXMPLR, Q(6)=>count_6_EXMPLR, Q(5)=>
      count_5_EXMPLR, Q(4)=>count_4_EXMPLR, Q(3)=>count_3_EXMPLR, Q(2)=>
      count_2_EXMPLR, Q(1)=>count_1_EXMPLR, Q(0)=>count_0_EXMPLR);
   nextCount : NBitAdder_13_unfolded6 port map ( a(12)=>count_12_EXMPLR, 
      a(11)=>count_11_EXMPLR, a(10)=>count_10_EXMPLR, a(9)=>count_9_EXMPLR, 
      a(8)=>count_8_EXMPLR, a(7)=>count_7_EXMPLR, a(6)=>count_6_EXMPLR, a(5)
      =>count_5_EXMPLR, a(4)=>count_4_EXMPLR, a(3)=>count_3_EXMPLR, a(2)=>
      count_2_EXMPLR, a(1)=>count_1_EXMPLR, a(0)=>count_0_EXMPLR, b(12)=>
      zerosSignal_12, b(11)=>zerosSignal_12, b(10)=>zerosSignal_12, b(9)=>
      zerosSignal_12, b(8)=>zerosSignal_12, b(7)=>zerosSignal_12, b(6)=>
      zerosSignal_12, b(5)=>zerosSignal_12, b(4)=>zerosSignal_12, b(3)=>
      zerosSignal_12, b(2)=>zerosSignal_12, b(1)=>zerosSignal_12, b(0)=>
      zerosSignal_12, carryIn=>PWR, sum(12)=>countAdded_12, sum(11)=>
      countAdded_11, sum(10)=>countAdded_10, sum(9)=>countAdded_9, sum(8)=>
      countAdded_8, sum(7)=>countAdded_7, sum(6)=>countAdded_6, sum(5)=>
      countAdded_5, sum(4)=>countAdded_4, sum(3)=>countAdded_3, sum(2)=>
      countAdded_2, sum(1)=>countAdded_1, sum(0)=>countAdded_0, carryOut=>
      DANGLING(0));
   muxloadOrCurrent : Mux2_13_unfolded2 port map ( A(12)=>countAdded_12, 
      A(11)=>countAdded_11, A(10)=>countAdded_10, A(9)=>countAdded_9, A(8)=>
      countAdded_8, A(7)=>countAdded_7, A(6)=>countAdded_6, A(5)=>
      countAdded_5, A(4)=>countAdded_4, A(3)=>countAdded_3, A(2)=>
      countAdded_2, A(1)=>countAdded_1, A(0)=>countAdded_0, B(12)=>load(12), 
      B(11)=>load(11), B(10)=>load(10), B(9)=>load(9), B(8)=>load(8), B(7)=>
      load(7), B(6)=>load(6), B(5)=>load(5), B(4)=>load(4), B(3)=>load(3), 
      B(2)=>load(2), B(1)=>load(1), B(0)=>load(0), S=>isLoad, C(12)=>
      counterInput_12, C(11)=>counterInput_11, C(10)=>counterInput_10, C(9)
      =>counterInput_9, C(8)=>counterInput_8, C(7)=>counterInput_7, C(6)=>
      counterInput_6, C(5)=>counterInput_5, C(4)=>counterInput_4, C(3)=>
      counterInput_3, C(2)=>counterInput_2, C(1)=>counterInput_1, C(0)=>
      counterInput_0);
   ix4 : fake_vcc port map ( Y=>PWR);
   ix2 : fake_gnd port map ( Y=>zerosSignal_12);
end Counter2Arch_unfold_4074 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Reg_13_unfolded4 is
   port (
      D : IN std_logic_vector (12 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      Q : OUT std_logic_vector (12 DOWNTO 0)) ;
end Reg_13_unfolded4 ;

architecture RegArch_unfold_3575_xmplrcopy of Reg_13_unfolded4 is
   signal Q_12_EXMPLR, Q_11_EXMPLR, Q_10_EXMPLR, Q_9_EXMPLR, Q_8_EXMPLR, 
      Q_7_EXMPLR, Q_6_EXMPLR, Q_5_EXMPLR, Q_4_EXMPLR, Q_3_EXMPLR, Q_2_EXMPLR, 
      Q_1_EXMPLR, Q_0_EXMPLR, nx78, nx88, nx98, nx108, nx118, nx128, nx138, 
      nx148, nx158, nx168, nx178, nx188, nx198, nx210, nx214, nx219, nx221, 
      nx226, nx228, nx233, nx235, nx240, nx242, nx247, nx249, nx254, nx256, 
      nx261, nx263, nx268, nx270, nx275, nx277, nx282, nx284, nx289, nx291, 
      nx296, nx298, nx306, nx308, nx314, nx316, nx318: std_logic ;

begin
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
   reg_Q_0 : dff port map ( Q=>Q_0_EXMPLR, QB=>OPEN, D=>nx78, CLK=>clk);
   ix79 : nand02 port map ( Y=>nx78, A0=>nx210, A1=>nx214);
   ix211 : nand02 port map ( Y=>nx210, A0=>Q_0_EXMPLR, A1=>nx318);
   ix215 : nand02 port map ( Y=>nx214, A0=>D(0), A1=>nx314);
   reg_Q_1 : dff port map ( Q=>Q_1_EXMPLR, QB=>OPEN, D=>nx88, CLK=>clk);
   ix89 : nand02 port map ( Y=>nx88, A0=>nx219, A1=>nx221);
   ix220 : nand02 port map ( Y=>nx219, A0=>Q_1_EXMPLR, A1=>nx318);
   ix222 : nand02 port map ( Y=>nx221, A0=>D(1), A1=>nx314);
   reg_Q_2 : dff port map ( Q=>Q_2_EXMPLR, QB=>OPEN, D=>nx98, CLK=>clk);
   ix99 : nand02 port map ( Y=>nx98, A0=>nx226, A1=>nx228);
   ix227 : nand02 port map ( Y=>nx226, A0=>Q_2_EXMPLR, A1=>nx318);
   ix229 : nand02 port map ( Y=>nx228, A0=>D(2), A1=>nx314);
   reg_Q_3 : dff port map ( Q=>Q_3_EXMPLR, QB=>OPEN, D=>nx108, CLK=>clk);
   ix109 : nand02 port map ( Y=>nx108, A0=>nx233, A1=>nx235);
   ix234 : nand02 port map ( Y=>nx233, A0=>Q_3_EXMPLR, A1=>nx318);
   ix236 : nand02 port map ( Y=>nx235, A0=>D(3), A1=>nx314);
   reg_Q_4 : dff port map ( Q=>Q_4_EXMPLR, QB=>OPEN, D=>nx118, CLK=>clk);
   ix119 : nand02 port map ( Y=>nx118, A0=>nx240, A1=>nx242);
   ix241 : nand02 port map ( Y=>nx240, A0=>Q_4_EXMPLR, A1=>nx318);
   ix243 : nand02 port map ( Y=>nx242, A0=>D(4), A1=>nx314);
   reg_Q_5 : dff port map ( Q=>Q_5_EXMPLR, QB=>OPEN, D=>nx128, CLK=>clk);
   ix129 : nand02 port map ( Y=>nx128, A0=>nx247, A1=>nx249);
   ix248 : nand02 port map ( Y=>nx247, A0=>Q_5_EXMPLR, A1=>nx318);
   ix250 : nand02 port map ( Y=>nx249, A0=>D(5), A1=>nx314);
   reg_Q_6 : dff port map ( Q=>Q_6_EXMPLR, QB=>OPEN, D=>nx138, CLK=>clk);
   ix139 : nand02 port map ( Y=>nx138, A0=>nx254, A1=>nx256);
   ix255 : nand02 port map ( Y=>nx254, A0=>Q_6_EXMPLR, A1=>nx318);
   ix257 : nand02 port map ( Y=>nx256, A0=>D(6), A1=>nx314);
   reg_Q_7 : dff port map ( Q=>Q_7_EXMPLR, QB=>OPEN, D=>nx148, CLK=>clk);
   ix149 : nand02 port map ( Y=>nx148, A0=>nx261, A1=>nx263);
   ix262 : nand02 port map ( Y=>nx261, A0=>Q_7_EXMPLR, A1=>nx308);
   ix264 : nand02 port map ( Y=>nx263, A0=>D(7), A1=>nx316);
   reg_Q_8 : dff port map ( Q=>Q_8_EXMPLR, QB=>OPEN, D=>nx158, CLK=>clk);
   ix159 : nand02 port map ( Y=>nx158, A0=>nx268, A1=>nx270);
   ix269 : nand02 port map ( Y=>nx268, A0=>Q_8_EXMPLR, A1=>nx308);
   ix271 : nand02 port map ( Y=>nx270, A0=>D(8), A1=>nx316);
   reg_Q_9 : dff port map ( Q=>Q_9_EXMPLR, QB=>OPEN, D=>nx168, CLK=>clk);
   ix169 : nand02 port map ( Y=>nx168, A0=>nx275, A1=>nx277);
   ix276 : nand02 port map ( Y=>nx275, A0=>Q_9_EXMPLR, A1=>nx308);
   ix278 : nand02 port map ( Y=>nx277, A0=>D(9), A1=>nx316);
   reg_Q_10 : dff port map ( Q=>Q_10_EXMPLR, QB=>OPEN, D=>nx178, CLK=>clk);
   ix179 : nand02 port map ( Y=>nx178, A0=>nx282, A1=>nx284);
   ix283 : nand02 port map ( Y=>nx282, A0=>Q_10_EXMPLR, A1=>nx308);
   ix285 : nand02 port map ( Y=>nx284, A0=>D(10), A1=>nx316);
   reg_Q_11 : dff port map ( Q=>Q_11_EXMPLR, QB=>OPEN, D=>nx188, CLK=>clk);
   ix189 : nand02 port map ( Y=>nx188, A0=>nx289, A1=>nx291);
   ix290 : nand02 port map ( Y=>nx289, A0=>Q_11_EXMPLR, A1=>nx308);
   ix292 : nand02 port map ( Y=>nx291, A0=>D(11), A1=>nx316);
   reg_Q_12 : dff port map ( Q=>Q_12_EXMPLR, QB=>OPEN, D=>nx198, CLK=>clk);
   ix199 : nand02 port map ( Y=>nx198, A0=>nx296, A1=>nx298);
   ix297 : nand02 port map ( Y=>nx296, A0=>Q_12_EXMPLR, A1=>nx308);
   ix299 : nand02 port map ( Y=>nx298, A0=>D(12), A1=>nx316);
   ix305 : inv02 port map ( Y=>nx306, A=>en);
   ix307 : inv02 port map ( Y=>nx308, A=>nx316);
   ix313 : inv02 port map ( Y=>nx314, A=>nx306);
   ix315 : inv02 port map ( Y=>nx316, A=>nx306);
   ix317 : inv02 port map ( Y=>nx318, A=>en);
end RegArch_unfold_3575_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ReadLogic_13_80_false is
   port (
      clk : IN std_logic ;
      resetState : IN std_logic ;
      switchRam : IN std_logic ;
      ramBasedAddress : IN std_logic_vector (12 DOWNTO 0) ;
      internalBus : OUT std_logic_vector (79 DOWNTO 0) ;
      ramDataInBus : IN std_logic_vector (79 DOWNTO 0) ;
      ramRead : OUT std_logic ;
      ramAddress : OUT std_logic_vector (12 DOWNTO 0) ;
      MFC : IN std_logic ;
      inputSize : IN std_logic_vector (12 DOWNTO 0) ;
      filterSize : IN std_logic_vector (12 DOWNTO 0) ;
      loadNextWordList : IN std_logic ;
      loadWord : IN std_logic ;
      finishSlice : IN std_logic ;
      readOne : OUT std_logic ;
      readFinal : OUT std_logic ;
      aluNumber : OUT std_logic_vector (2 DOWNTO 0)) ;
end ReadLogic_13_80_false ;

architecture ReadLogicArch_unfold_3547 of ReadLogic_13_80_false is
   component DMA_13_80
      port (
         initialCount : IN std_logic_vector (2 DOWNTO 0) ;
         readBaseAddress : IN std_logic_vector (12 DOWNTO 0) ;
         readStep : IN std_logic_vector (12 DOWNTO 0) ;
         initAddress : IN std_logic ;
         initCounter : IN std_logic ;
         load : IN std_logic ;
         internalBus : OUT std_logic_vector (79 DOWNTO 0) ;
         finishedOneReadOut : OUT std_logic ;
         finishedReading : OUT std_logic ;
         clk : IN std_logic ;
         ramDataInBus : IN std_logic_vector (79 DOWNTO 0) ;
         ramRead : OUT std_logic ;
         ramReadAddress : OUT std_logic_vector (12 DOWNTO 0) ;
         MFC : IN std_logic) ;
   end component ;
   component NBitAdder_13_unfolded5
      port (
         a : IN std_logic_vector (12 DOWNTO 0) ;
         b : IN std_logic_vector (12 DOWNTO 0) ;
         carryIn : IN std_logic ;
         sum : OUT std_logic_vector (12 DOWNTO 0) ;
         carryOut : OUT std_logic) ;
   end component ;
   component Mux2_13_unfolded3
      port (
         A : IN std_logic_vector (12 DOWNTO 0) ;
         B : IN std_logic_vector (12 DOWNTO 0) ;
         S : IN std_logic ;
         C : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
   component Counter2_13
      port (
         load : IN std_logic_vector (12 DOWNTO 0) ;
         reset : IN std_logic ;
         clk : IN std_logic ;
         isLoad : IN std_logic ;
         count : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
   component Reg_13_unfolded4
      port (
         D : IN std_logic_vector (12 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
   signal ramAddress_12_EXMPLR, ramAddress_11_EXMPLR, ramAddress_10_EXMPLR, 
      ramAddress_9_EXMPLR, ramAddress_8_EXMPLR, ramAddress_7_EXMPLR, 
      ramAddress_6_EXMPLR, ramAddress_5_EXMPLR, ramAddress_4_EXMPLR, 
      ramAddress_3_EXMPLR, ramAddress_2_EXMPLR, ramAddress_1_EXMPLR, 
      ramAddress_0_EXMPLR, readFinal_EXMPLR, addressRegOut_12, 
      addressRegOut_11, addressRegOut_10, addressRegOut_9, addressRegOut_8, 
      addressRegOut_7, addressRegOut_6, addressRegOut_5, addressRegOut_4, 
      addressRegOut_3, addressRegOut_2, addressRegOut_1, addressRegOut_0, 
      addressRegInFinal_12, addressRegInFinal_11, addressRegInFinal_10, 
      addressRegInFinal_9, addressRegInFinal_8, addressRegInFinal_7, 
      addressRegInFinal_6, addressRegInFinal_5, addressRegInFinal_4, 
      addressRegInFinal_3, addressRegInFinal_2, addressRegInFinal_1, 
      addressRegInFinal_0, dmaInitAddress, resetAddressReg, 
      baseAddressCounterClk, ramAddressKeeperOut_12, ramAddressKeeperOut_11, 
      ramAddressKeeperOut_10, ramAddressKeeperOut_9, ramAddressKeeperOut_8, 
      ramAddressKeeperOut_7, ramAddressKeeperOut_6, ramAddressKeeperOut_5, 
      ramAddressKeeperOut_4, ramAddressKeeperOut_3, ramAddressKeeperOut_2, 
      ramAddressKeeperOut_1, ramAddressKeeperOut_0, 
      ramAddressKeeperOutPlusFS_12, ramAddressKeeperOutPlusFS_11, 
      ramAddressKeeperOutPlusFS_10, ramAddressKeeperOutPlusFS_9, 
      ramAddressKeeperOutPlusFS_8, ramAddressKeeperOutPlusFS_7, 
      ramAddressKeeperOutPlusFS_6, ramAddressKeeperOutPlusFS_5, 
      ramAddressKeeperOutPlusFS_4, ramAddressKeeperOutPlusFS_3, 
      ramAddressKeeperOutPlusFS_2, ramAddressKeeperOutPlusFS_1, 
      ramAddressKeeperOutPlusFS_0, addressRegIn_5, dmaCountIn_2, 
      dmaCountIn_1, dmaInitCounter, PWR, dmaInitRamBaseAddress, NOT_clk, 
      nx53, nx24, nx84, nx57, nx59, nx61, nx71, nx83, nx89, nx93, nx97, 
      nx100, nx102, nx104, nx106, nx109, nx112, nx115, nx118, nx121, nx124, 
      nx127, nx130, nx132, nx135, nx142, nx144, nx146, nx148, nx154, nx156, 
      nx158: std_logic ;
   
   signal DANGLING : std_logic_vector (82 downto 0 );

begin
   internalBus(79) <= dmaInitRamBaseAddress ;
   internalBus(78) <= dmaInitRamBaseAddress ;
   internalBus(77) <= dmaInitRamBaseAddress ;
   internalBus(76) <= dmaInitRamBaseAddress ;
   internalBus(75) <= dmaInitRamBaseAddress ;
   internalBus(74) <= dmaInitRamBaseAddress ;
   internalBus(73) <= dmaInitRamBaseAddress ;
   internalBus(72) <= dmaInitRamBaseAddress ;
   internalBus(71) <= dmaInitRamBaseAddress ;
   internalBus(70) <= dmaInitRamBaseAddress ;
   internalBus(69) <= dmaInitRamBaseAddress ;
   internalBus(68) <= dmaInitRamBaseAddress ;
   internalBus(67) <= dmaInitRamBaseAddress ;
   internalBus(66) <= dmaInitRamBaseAddress ;
   internalBus(65) <= dmaInitRamBaseAddress ;
   internalBus(64) <= dmaInitRamBaseAddress ;
   internalBus(63) <= dmaInitRamBaseAddress ;
   internalBus(62) <= dmaInitRamBaseAddress ;
   internalBus(61) <= dmaInitRamBaseAddress ;
   internalBus(60) <= dmaInitRamBaseAddress ;
   internalBus(59) <= dmaInitRamBaseAddress ;
   internalBus(58) <= dmaInitRamBaseAddress ;
   internalBus(57) <= dmaInitRamBaseAddress ;
   internalBus(56) <= dmaInitRamBaseAddress ;
   internalBus(55) <= dmaInitRamBaseAddress ;
   internalBus(54) <= dmaInitRamBaseAddress ;
   internalBus(53) <= dmaInitRamBaseAddress ;
   internalBus(52) <= dmaInitRamBaseAddress ;
   internalBus(51) <= dmaInitRamBaseAddress ;
   internalBus(50) <= dmaInitRamBaseAddress ;
   internalBus(49) <= dmaInitRamBaseAddress ;
   internalBus(48) <= dmaInitRamBaseAddress ;
   internalBus(47) <= dmaInitRamBaseAddress ;
   internalBus(46) <= dmaInitRamBaseAddress ;
   internalBus(45) <= dmaInitRamBaseAddress ;
   internalBus(44) <= dmaInitRamBaseAddress ;
   internalBus(43) <= dmaInitRamBaseAddress ;
   internalBus(42) <= dmaInitRamBaseAddress ;
   internalBus(41) <= dmaInitRamBaseAddress ;
   internalBus(40) <= dmaInitRamBaseAddress ;
   internalBus(39) <= dmaInitRamBaseAddress ;
   internalBus(38) <= dmaInitRamBaseAddress ;
   internalBus(37) <= dmaInitRamBaseAddress ;
   internalBus(36) <= dmaInitRamBaseAddress ;
   internalBus(35) <= dmaInitRamBaseAddress ;
   internalBus(34) <= dmaInitRamBaseAddress ;
   internalBus(33) <= dmaInitRamBaseAddress ;
   internalBus(32) <= dmaInitRamBaseAddress ;
   internalBus(31) <= dmaInitRamBaseAddress ;
   internalBus(30) <= dmaInitRamBaseAddress ;
   internalBus(29) <= dmaInitRamBaseAddress ;
   internalBus(28) <= dmaInitRamBaseAddress ;
   internalBus(27) <= dmaInitRamBaseAddress ;
   internalBus(26) <= dmaInitRamBaseAddress ;
   internalBus(25) <= dmaInitRamBaseAddress ;
   internalBus(24) <= dmaInitRamBaseAddress ;
   internalBus(23) <= dmaInitRamBaseAddress ;
   internalBus(22) <= dmaInitRamBaseAddress ;
   internalBus(21) <= dmaInitRamBaseAddress ;
   internalBus(20) <= dmaInitRamBaseAddress ;
   internalBus(19) <= dmaInitRamBaseAddress ;
   internalBus(18) <= dmaInitRamBaseAddress ;
   internalBus(17) <= dmaInitRamBaseAddress ;
   internalBus(16) <= dmaInitRamBaseAddress ;
   internalBus(15) <= dmaInitRamBaseAddress ;
   internalBus(14) <= dmaInitRamBaseAddress ;
   internalBus(13) <= dmaInitRamBaseAddress ;
   internalBus(12) <= dmaInitRamBaseAddress ;
   internalBus(11) <= dmaInitRamBaseAddress ;
   internalBus(10) <= dmaInitRamBaseAddress ;
   internalBus(9) <= dmaInitRamBaseAddress ;
   internalBus(8) <= dmaInitRamBaseAddress ;
   internalBus(7) <= dmaInitRamBaseAddress ;
   internalBus(6) <= dmaInitRamBaseAddress ;
   internalBus(5) <= dmaInitRamBaseAddress ;
   internalBus(4) <= dmaInitRamBaseAddress ;
   internalBus(3) <= dmaInitRamBaseAddress ;
   internalBus(2) <= dmaInitRamBaseAddress ;
   internalBus(1) <= dmaInitRamBaseAddress ;
   internalBus(0) <= dmaInitRamBaseAddress ;
   ramAddress(12) <= ramAddress_12_EXMPLR ;
   ramAddress(11) <= ramAddress_11_EXMPLR ;
   ramAddress(10) <= ramAddress_10_EXMPLR ;
   ramAddress(9) <= ramAddress_9_EXMPLR ;
   ramAddress(8) <= ramAddress_8_EXMPLR ;
   ramAddress(7) <= ramAddress_7_EXMPLR ;
   ramAddress(6) <= ramAddress_6_EXMPLR ;
   ramAddress(5) <= ramAddress_5_EXMPLR ;
   ramAddress(4) <= ramAddress_4_EXMPLR ;
   ramAddress(3) <= ramAddress_3_EXMPLR ;
   ramAddress(2) <= ramAddress_2_EXMPLR ;
   ramAddress(1) <= ramAddress_1_EXMPLR ;
   ramAddress(0) <= ramAddress_0_EXMPLR ;
   readOne <= dmaInitRamBaseAddress ;
   readFinal <= readFinal_EXMPLR ;
   aluNumber(2) <= dmaInitRamBaseAddress ;
   aluNumber(1) <= dmaInitRamBaseAddress ;
   aluNumber(0) <= dmaInitRamBaseAddress ;
   dma : DMA_13_80 port map ( initialCount(2)=>dmaCountIn_2, initialCount(1)
      =>dmaCountIn_1, initialCount(0)=>dmaInitCounter, readBaseAddress(12)=>
      addressRegOut_12, readBaseAddress(11)=>addressRegOut_11, 
      readBaseAddress(10)=>addressRegOut_10, readBaseAddress(9)=>
      addressRegOut_9, readBaseAddress(8)=>addressRegOut_8, 
      readBaseAddress(7)=>addressRegOut_7, readBaseAddress(6)=>
      addressRegOut_6, readBaseAddress(5)=>addressRegOut_5, 
      readBaseAddress(4)=>addressRegOut_4, readBaseAddress(3)=>
      addressRegOut_3, readBaseAddress(2)=>addressRegOut_2, 
      readBaseAddress(1)=>addressRegOut_1, readBaseAddress(0)=>
      addressRegOut_0, readStep(12)=>dmaInitRamBaseAddress, readStep(11)=>
      dmaInitRamBaseAddress, readStep(10)=>dmaInitRamBaseAddress, 
      readStep(9)=>dmaInitRamBaseAddress, readStep(8)=>dmaInitRamBaseAddress, 
      readStep(7)=>dmaInitRamBaseAddress, readStep(6)=>dmaInitRamBaseAddress, 
      readStep(5)=>dmaInitRamBaseAddress, readStep(4)=>inputSize(4), 
      readStep(3)=>inputSize(3), readStep(2)=>inputSize(2), readStep(1)=>
      inputSize(1), readStep(0)=>inputSize(0), initAddress=>dmaInitAddress, 
      initCounter=>dmaInitCounter, load=>nx142, internalBus(79)=>DANGLING(0), 
      internalBus(78)=>DANGLING(1), internalBus(77)=>DANGLING(2), 
      internalBus(76)=>DANGLING(3), internalBus(75)=>DANGLING(4), 
      internalBus(74)=>DANGLING(5), internalBus(73)=>DANGLING(6), 
      internalBus(72)=>DANGLING(7), internalBus(71)=>DANGLING(8), 
      internalBus(70)=>DANGLING(9), internalBus(69)=>DANGLING(10), 
      internalBus(68)=>DANGLING(11), internalBus(67)=>DANGLING(12), 
      internalBus(66)=>DANGLING(13), internalBus(65)=>DANGLING(14), 
      internalBus(64)=>DANGLING(15), internalBus(63)=>DANGLING(16), 
      internalBus(62)=>DANGLING(17), internalBus(61)=>DANGLING(18), 
      internalBus(60)=>DANGLING(19), internalBus(59)=>DANGLING(20), 
      internalBus(58)=>DANGLING(21), internalBus(57)=>DANGLING(22), 
      internalBus(56)=>DANGLING(23), internalBus(55)=>DANGLING(24), 
      internalBus(54)=>DANGLING(25), internalBus(53)=>DANGLING(26), 
      internalBus(52)=>DANGLING(27), internalBus(51)=>DANGLING(28), 
      internalBus(50)=>DANGLING(29), internalBus(49)=>DANGLING(30), 
      internalBus(48)=>DANGLING(31), internalBus(47)=>DANGLING(32), 
      internalBus(46)=>DANGLING(33), internalBus(45)=>DANGLING(34), 
      internalBus(44)=>DANGLING(35), internalBus(43)=>DANGLING(36), 
      internalBus(42)=>DANGLING(37), internalBus(41)=>DANGLING(38), 
      internalBus(40)=>DANGLING(39), internalBus(39)=>DANGLING(40), 
      internalBus(38)=>DANGLING(41), internalBus(37)=>DANGLING(42), 
      internalBus(36)=>DANGLING(43), internalBus(35)=>DANGLING(44), 
      internalBus(34)=>DANGLING(45), internalBus(33)=>DANGLING(46), 
      internalBus(32)=>DANGLING(47), internalBus(31)=>DANGLING(48), 
      internalBus(30)=>DANGLING(49), internalBus(29)=>DANGLING(50), 
      internalBus(28)=>DANGLING(51), internalBus(27)=>DANGLING(52), 
      internalBus(26)=>DANGLING(53), internalBus(25)=>DANGLING(54), 
      internalBus(24)=>DANGLING(55), internalBus(23)=>DANGLING(56), 
      internalBus(22)=>DANGLING(57), internalBus(21)=>DANGLING(58), 
      internalBus(20)=>DANGLING(59), internalBus(19)=>DANGLING(60), 
      internalBus(18)=>DANGLING(61), internalBus(17)=>DANGLING(62), 
      internalBus(16)=>DANGLING(63), internalBus(15)=>DANGLING(64), 
      internalBus(14)=>DANGLING(65), internalBus(13)=>DANGLING(66), 
      internalBus(12)=>DANGLING(67), internalBus(11)=>DANGLING(68), 
      internalBus(10)=>DANGLING(69), internalBus(9)=>DANGLING(70), 
      internalBus(8)=>DANGLING(71), internalBus(7)=>DANGLING(72), 
      internalBus(6)=>DANGLING(73), internalBus(5)=>DANGLING(74), 
      internalBus(4)=>DANGLING(75), internalBus(3)=>DANGLING(76), 
      internalBus(2)=>DANGLING(77), internalBus(1)=>DANGLING(78), 
      internalBus(0)=>DANGLING(79), finishedOneReadOut=>DANGLING(80), 
      finishedReading=>readFinal_EXMPLR, clk=>clk, ramDataInBus(79)=>
      dmaInitRamBaseAddress, ramDataInBus(78)=>dmaInitRamBaseAddress, 
      ramDataInBus(77)=>dmaInitRamBaseAddress, ramDataInBus(76)=>
      dmaInitRamBaseAddress, ramDataInBus(75)=>dmaInitRamBaseAddress, 
      ramDataInBus(74)=>dmaInitRamBaseAddress, ramDataInBus(73)=>
      dmaInitRamBaseAddress, ramDataInBus(72)=>dmaInitRamBaseAddress, 
      ramDataInBus(71)=>dmaInitRamBaseAddress, ramDataInBus(70)=>
      dmaInitRamBaseAddress, ramDataInBus(69)=>dmaInitRamBaseAddress, 
      ramDataInBus(68)=>dmaInitRamBaseAddress, ramDataInBus(67)=>
      dmaInitRamBaseAddress, ramDataInBus(66)=>dmaInitRamBaseAddress, 
      ramDataInBus(65)=>dmaInitRamBaseAddress, ramDataInBus(64)=>
      dmaInitRamBaseAddress, ramDataInBus(63)=>dmaInitRamBaseAddress, 
      ramDataInBus(62)=>dmaInitRamBaseAddress, ramDataInBus(61)=>
      dmaInitRamBaseAddress, ramDataInBus(60)=>dmaInitRamBaseAddress, 
      ramDataInBus(59)=>dmaInitRamBaseAddress, ramDataInBus(58)=>
      dmaInitRamBaseAddress, ramDataInBus(57)=>dmaInitRamBaseAddress, 
      ramDataInBus(56)=>dmaInitRamBaseAddress, ramDataInBus(55)=>
      dmaInitRamBaseAddress, ramDataInBus(54)=>dmaInitRamBaseAddress, 
      ramDataInBus(53)=>dmaInitRamBaseAddress, ramDataInBus(52)=>
      dmaInitRamBaseAddress, ramDataInBus(51)=>dmaInitRamBaseAddress, 
      ramDataInBus(50)=>dmaInitRamBaseAddress, ramDataInBus(49)=>
      dmaInitRamBaseAddress, ramDataInBus(48)=>dmaInitRamBaseAddress, 
      ramDataInBus(47)=>dmaInitRamBaseAddress, ramDataInBus(46)=>
      dmaInitRamBaseAddress, ramDataInBus(45)=>dmaInitRamBaseAddress, 
      ramDataInBus(44)=>dmaInitRamBaseAddress, ramDataInBus(43)=>
      dmaInitRamBaseAddress, ramDataInBus(42)=>dmaInitRamBaseAddress, 
      ramDataInBus(41)=>dmaInitRamBaseAddress, ramDataInBus(40)=>
      dmaInitRamBaseAddress, ramDataInBus(39)=>dmaInitRamBaseAddress, 
      ramDataInBus(38)=>dmaInitRamBaseAddress, ramDataInBus(37)=>
      dmaInitRamBaseAddress, ramDataInBus(36)=>dmaInitRamBaseAddress, 
      ramDataInBus(35)=>dmaInitRamBaseAddress, ramDataInBus(34)=>
      dmaInitRamBaseAddress, ramDataInBus(33)=>dmaInitRamBaseAddress, 
      ramDataInBus(32)=>dmaInitRamBaseAddress, ramDataInBus(31)=>
      dmaInitRamBaseAddress, ramDataInBus(30)=>dmaInitRamBaseAddress, 
      ramDataInBus(29)=>dmaInitRamBaseAddress, ramDataInBus(28)=>
      dmaInitRamBaseAddress, ramDataInBus(27)=>dmaInitRamBaseAddress, 
      ramDataInBus(26)=>dmaInitRamBaseAddress, ramDataInBus(25)=>
      dmaInitRamBaseAddress, ramDataInBus(24)=>dmaInitRamBaseAddress, 
      ramDataInBus(23)=>dmaInitRamBaseAddress, ramDataInBus(22)=>
      dmaInitRamBaseAddress, ramDataInBus(21)=>dmaInitRamBaseAddress, 
      ramDataInBus(20)=>dmaInitRamBaseAddress, ramDataInBus(19)=>
      dmaInitRamBaseAddress, ramDataInBus(18)=>dmaInitRamBaseAddress, 
      ramDataInBus(17)=>dmaInitRamBaseAddress, ramDataInBus(16)=>
      dmaInitRamBaseAddress, ramDataInBus(15)=>dmaInitRamBaseAddress, 
      ramDataInBus(14)=>dmaInitRamBaseAddress, ramDataInBus(13)=>
      dmaInitRamBaseAddress, ramDataInBus(12)=>dmaInitRamBaseAddress, 
      ramDataInBus(11)=>dmaInitRamBaseAddress, ramDataInBus(10)=>
      dmaInitRamBaseAddress, ramDataInBus(9)=>dmaInitRamBaseAddress, 
      ramDataInBus(8)=>dmaInitRamBaseAddress, ramDataInBus(7)=>
      dmaInitRamBaseAddress, ramDataInBus(6)=>dmaInitRamBaseAddress, 
      ramDataInBus(5)=>dmaInitRamBaseAddress, ramDataInBus(4)=>
      dmaInitRamBaseAddress, ramDataInBus(3)=>dmaInitRamBaseAddress, 
      ramDataInBus(2)=>dmaInitRamBaseAddress, ramDataInBus(1)=>
      dmaInitRamBaseAddress, ramDataInBus(0)=>dmaInitRamBaseAddress, ramRead
      =>DANGLING(81), ramReadAddress(12)=>ramAddress_12_EXMPLR, 
      ramReadAddress(11)=>ramAddress_11_EXMPLR, ramReadAddress(10)=>
      ramAddress_10_EXMPLR, ramReadAddress(9)=>ramAddress_9_EXMPLR, 
      ramReadAddress(8)=>ramAddress_8_EXMPLR, ramReadAddress(7)=>
      ramAddress_7_EXMPLR, ramReadAddress(6)=>ramAddress_6_EXMPLR, 
      ramReadAddress(5)=>ramAddress_5_EXMPLR, ramReadAddress(4)=>
      ramAddress_4_EXMPLR, ramReadAddress(3)=>ramAddress_3_EXMPLR, 
      ramReadAddress(2)=>ramAddress_2_EXMPLR, ramReadAddress(1)=>
      ramAddress_1_EXMPLR, ramReadAddress(0)=>ramAddress_0_EXMPLR, MFC=>MFC
   );
   window_g_ramAddressIncrement : NBitAdder_13_unfolded5 port map ( a(12)=>
      ramAddressKeeperOut_12, a(11)=>ramAddressKeeperOut_11, a(10)=>
      ramAddressKeeperOut_10, a(9)=>ramAddressKeeperOut_9, a(8)=>
      ramAddressKeeperOut_8, a(7)=>ramAddressKeeperOut_7, a(6)=>
      ramAddressKeeperOut_6, a(5)=>ramAddressKeeperOut_5, a(4)=>
      ramAddressKeeperOut_4, a(3)=>ramAddressKeeperOut_3, a(2)=>
      ramAddressKeeperOut_2, a(1)=>ramAddressKeeperOut_1, a(0)=>
      ramAddressKeeperOut_0, b(12)=>dmaInitRamBaseAddress, b(11)=>
      dmaInitRamBaseAddress, b(10)=>dmaInitRamBaseAddress, b(9)=>
      dmaInitRamBaseAddress, b(8)=>dmaInitRamBaseAddress, b(7)=>
      dmaInitRamBaseAddress, b(6)=>dmaInitRamBaseAddress, b(5)=>
      dmaInitRamBaseAddress, b(4)=>dmaInitRamBaseAddress, b(3)=>
      dmaInitRamBaseAddress, b(2)=>filterSize(2), b(1)=>filterSize(1), b(0)
      =>PWR, carryIn=>dmaInitRamBaseAddress, sum(12)=>
      ramAddressKeeperOutPlusFS_12, sum(11)=>ramAddressKeeperOutPlusFS_11, 
      sum(10)=>ramAddressKeeperOutPlusFS_10, sum(9)=>
      ramAddressKeeperOutPlusFS_9, sum(8)=>ramAddressKeeperOutPlusFS_8, 
      sum(7)=>ramAddressKeeperOutPlusFS_7, sum(6)=>
      ramAddressKeeperOutPlusFS_6, sum(5)=>ramAddressKeeperOutPlusFS_5, 
      sum(4)=>ramAddressKeeperOutPlusFS_4, sum(3)=>
      ramAddressKeeperOutPlusFS_3, sum(2)=>ramAddressKeeperOutPlusFS_2, 
      sum(1)=>ramAddressKeeperOutPlusFS_1, sum(0)=>
      ramAddressKeeperOutPlusFS_0, carryOut=>DANGLING(82));
   window_g_baseAddressLoadMux : Mux2_13_unfolded3 port map ( A(12)=>
      dmaInitRamBaseAddress, A(11)=>addressRegIn_5, A(10)=>addressRegIn_5, 
      A(9)=>addressRegIn_5, A(8)=>addressRegIn_5, A(7)=>
      dmaInitRamBaseAddress, A(6)=>dmaInitRamBaseAddress, A(5)=>
      addressRegIn_5, A(4)=>dmaInitRamBaseAddress, A(3)=>
      dmaInitRamBaseAddress, A(2)=>dmaInitRamBaseAddress, A(1)=>
      dmaInitRamBaseAddress, A(0)=>dmaInitRamBaseAddress, B(12)=>
      ramAddressKeeperOutPlusFS_12, B(11)=>ramAddressKeeperOutPlusFS_11, 
      B(10)=>ramAddressKeeperOutPlusFS_10, B(9)=>ramAddressKeeperOutPlusFS_9, 
      B(8)=>ramAddressKeeperOutPlusFS_8, B(7)=>ramAddressKeeperOutPlusFS_7, 
      B(6)=>ramAddressKeeperOutPlusFS_6, B(5)=>ramAddressKeeperOutPlusFS_5, 
      B(4)=>ramAddressKeeperOutPlusFS_4, B(3)=>ramAddressKeeperOutPlusFS_3, 
      B(2)=>ramAddressKeeperOutPlusFS_2, B(1)=>ramAddressKeeperOutPlusFS_1, 
      B(0)=>ramAddressKeeperOutPlusFS_0, S=>nx156, C(12)=>
      addressRegInFinal_12, C(11)=>addressRegInFinal_11, C(10)=>
      addressRegInFinal_10, C(9)=>addressRegInFinal_9, C(8)=>
      addressRegInFinal_8, C(7)=>addressRegInFinal_7, C(6)=>
      addressRegInFinal_6, C(5)=>addressRegInFinal_5, C(4)=>
      addressRegInFinal_4, C(3)=>addressRegInFinal_3, C(2)=>
      addressRegInFinal_2, C(1)=>addressRegInFinal_1, C(0)=>
      addressRegInFinal_0);
   window_g_baseAddressCounter : Counter2_13 port map ( load(12)=>
      addressRegInFinal_12, load(11)=>addressRegInFinal_11, load(10)=>
      addressRegInFinal_10, load(9)=>addressRegInFinal_9, load(8)=>
      addressRegInFinal_8, load(7)=>addressRegInFinal_7, load(6)=>
      addressRegInFinal_6, load(5)=>addressRegInFinal_5, load(4)=>
      addressRegInFinal_4, load(3)=>addressRegInFinal_3, load(2)=>
      addressRegInFinal_2, load(1)=>addressRegInFinal_1, load(0)=>
      addressRegInFinal_0, reset=>dmaInitRamBaseAddress, clk=>
      baseAddressCounterClk, isLoad=>resetAddressReg, count(12)=>
      addressRegOut_12, count(11)=>addressRegOut_11, count(10)=>
      addressRegOut_10, count(9)=>addressRegOut_9, count(8)=>addressRegOut_8, 
      count(7)=>addressRegOut_7, count(6)=>addressRegOut_6, count(5)=>
      addressRegOut_5, count(4)=>addressRegOut_4, count(3)=>addressRegOut_3, 
      count(2)=>addressRegOut_2, count(1)=>addressRegOut_1, count(0)=>
      addressRegOut_0);
   window_g_ramAddressKeeper : Reg_13_unfolded4 port map ( D(12)=>
      ramAddress_12_EXMPLR, D(11)=>ramAddress_11_EXMPLR, D(10)=>
      ramAddress_10_EXMPLR, D(9)=>ramAddress_9_EXMPLR, D(8)=>
      ramAddress_8_EXMPLR, D(7)=>ramAddress_7_EXMPLR, D(6)=>
      ramAddress_6_EXMPLR, D(5)=>ramAddress_5_EXMPLR, D(4)=>
      ramAddress_4_EXMPLR, D(3)=>ramAddress_3_EXMPLR, D(2)=>
      ramAddress_2_EXMPLR, D(1)=>ramAddress_1_EXMPLR, D(0)=>
      ramAddress_0_EXMPLR, en=>nx142, clk=>clk, rst=>dmaInitRamBaseAddress, 
      Q(12)=>ramAddressKeeperOut_12, Q(11)=>ramAddressKeeperOut_11, Q(10)=>
      ramAddressKeeperOut_10, Q(9)=>ramAddressKeeperOut_9, Q(8)=>
      ramAddressKeeperOut_8, Q(7)=>ramAddressKeeperOut_7, Q(6)=>
      ramAddressKeeperOut_6, Q(5)=>ramAddressKeeperOut_5, Q(4)=>
      ramAddressKeeperOut_4, Q(3)=>ramAddressKeeperOut_3, Q(2)=>
      ramAddressKeeperOut_2, Q(1)=>ramAddressKeeperOut_1, Q(0)=>
      ramAddressKeeperOut_0);
   ix35 : fake_gnd port map ( Y=>dmaInitRamBaseAddress);
   ix33 : fake_vcc port map ( Y=>PWR);
   ix61 : nor03_2x port map ( Y=>dmaInitCounter, A0=>nx142, A1=>nx146, A2=>
      nx112);
   ix72 : nand02 port map ( Y=>nx71, A0=>nx83, A1=>nx106);
   ix84 : nand04 port map ( Y=>nx83, A0=>nx142, A1=>nx146, A2=>nx104, A3=>
      nx102);
   ix62 : inv01 port map ( Y=>nx61, A=>nx89);
   ix90 : nor02_2x port map ( Y=>nx89, A0=>nx57, A1=>nx59);
   ix58 : nor04 port map ( Y=>nx57, A0=>nx93, A1=>nx97, A2=>readFinal_EXMPLR, 
      A3=>switchRam);
   reg_currentState_0 : dff port map ( Q=>OPEN, QB=>nx93, D=>nx61, CLK=>
      NOT_clk);
   ix96 : inv01 port map ( Y=>NOT_clk, A=>clk);
   reg_currentState_1 : dff port map ( Q=>ramRead, QB=>nx97, D=>nx71, CLK=>
      NOT_clk);
   ix60 : oai221 port map ( Y=>nx59, A0=>nx154, A1=>nx100, B0=>nx146, B1=>
      nx97, C0=>nx102);
   ix101 : oai21 port map ( Y=>nx100, A0=>nx154, A1=>loadWord, B0=>nx93);
   ix103 : inv01 port map ( Y=>nx102, A=>switchRam);
   ix105 : inv01 port map ( Y=>nx104, A=>readFinal_EXMPLR);
   ix107 : oai21 port map ( Y=>nx106, A0=>nx24, A1=>nx53, B0=>nx102);
   ix25 : nor02_2x port map ( Y=>nx24, A0=>nx146, A1=>nx109);
   ix110 : nor02_2x port map ( Y=>nx109, A0=>nx154, A1=>loadWord);
   ix19 : nor02_2x port map ( Y=>nx53, A0=>nx146, A1=>nx97);
   ix113 : nor02_2x port map ( Y=>nx112, A0=>nx154, A1=>loadWord);
   ix67 : nor03_2x port map ( Y=>dmaCountIn_1, A0=>nx142, A1=>nx146, A2=>
      nx115);
   ix116 : nand02 port map ( Y=>nx115, A0=>filterSize(1), A1=>nx154);
   ix73 : nor03_2x port map ( Y=>dmaCountIn_2, A0=>nx142, A1=>nx146, A2=>
      nx118);
   ix119 : nand02 port map ( Y=>nx118, A0=>filterSize(2), A1=>nx154);
   ix79 : nor02_2x port map ( Y=>addressRegIn_5, A0=>nx144, A1=>nx121);
   ix122 : nand02 port map ( Y=>nx121, A0=>ramBasedAddress(11), A1=>nx148);
   ix93 : oai21 port map ( Y=>baseAddressCounterClk, A0=>clk, A1=>nx124, B0
      =>nx127);
   ix125 : nor02_2x port map ( Y=>nx124, A0=>nx84, A1=>nx158);
   ix85 : nor02_2x port map ( Y=>nx84, A0=>nx93, A1=>nx144);
   ix128 : nand03 port map ( Y=>nx127, A0=>clk, A1=>nx93, A2=>nx144);
   ix87 : nand02 port map ( Y=>resetAddressReg, A0=>nx130, A1=>nx132);
   ix131 : nand02 port map ( Y=>nx130, A0=>nx148, A1=>nx97);
   ix133 : inv01 port map ( Y=>nx132, A=>finishSlice);
   ix55 : nor02_2x port map ( Y=>dmaInitAddress, A0=>nx144, A1=>nx135);
   ix136 : nor02_2x port map ( Y=>nx135, A0=>nx148, A1=>nx154);
   ix141 : inv02 port map ( Y=>nx142, A=>nx97);
   ix143 : inv02 port map ( Y=>nx144, A=>nx97);
   ix145 : inv02 port map ( Y=>nx146, A=>nx93);
   ix147 : inv02 port map ( Y=>nx148, A=>nx93);
   ix153 : buf02 port map ( Y=>nx154, A=>loadNextWordList);
   ix155 : inv02 port map ( Y=>nx156, A=>nx132);
   ix157 : inv02 port map ( Y=>nx158, A=>nx132);
end ReadLogicArch_unfold_3547 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Tristate_40 is
   port (
      input : IN std_logic_vector (39 DOWNTO 0) ;
      en : IN std_logic ;
      output : OUT std_logic_vector (39 DOWNTO 0)) ;
end Tristate_40 ;

architecture TriStateArch_unfold_2195 of Tristate_40 is
   signal input_39_EXMPLR, nx49: std_logic ;

begin
   output(39) <= input_39_EXMPLR ;
   output(38) <= input_39_EXMPLR ;
   output(37) <= input_39_EXMPLR ;
   output(36) <= input_39_EXMPLR ;
   output(35) <= input_39_EXMPLR ;
   output(34) <= input_39_EXMPLR ;
   output(33) <= input_39_EXMPLR ;
   output(32) <= input_39_EXMPLR ;
   output(31) <= input_39_EXMPLR ;
   output(30) <= input_39_EXMPLR ;
   output(29) <= input_39_EXMPLR ;
   output(28) <= input_39_EXMPLR ;
   output(27) <= input_39_EXMPLR ;
   output(26) <= input_39_EXMPLR ;
   output(25) <= input_39_EXMPLR ;
   output(24) <= input_39_EXMPLR ;
   output(18) <= input_39_EXMPLR ;
   output(17) <= input_39_EXMPLR ;
   output(16) <= input_39_EXMPLR ;
   output(10) <= input_39_EXMPLR ;
   output(9) <= input_39_EXMPLR ;
   output(8) <= input_39_EXMPLR ;
   ix50 : fake_vcc port map ( Y=>nx49);
   ix46 : fake_gnd port map ( Y=>input_39_EXMPLR);
   tri_output_0 : tri01 port map ( Y=>output(0), A=>nx49, E=>input_39_EXMPLR
   );
   tri_output_1 : tri01 port map ( Y=>output(1), A=>nx49, E=>input_39_EXMPLR
   );
   tri_output_2 : tri01 port map ( Y=>output(2), A=>nx49, E=>input_39_EXMPLR
   );
   tri_output_3 : tri01 port map ( Y=>output(3), A=>nx49, E=>input_39_EXMPLR
   );
   tri_output_4 : tri01 port map ( Y=>output(4), A=>nx49, E=>input_39_EXMPLR
   );
   tri_output_5 : tri01 port map ( Y=>output(5), A=>nx49, E=>input_39_EXMPLR
   );
   tri_output_6 : tri01 port map ( Y=>output(6), A=>nx49, E=>input_39_EXMPLR
   );
   tri_output_7 : tri01 port map ( Y=>output(7), A=>nx49, E=>input_39_EXMPLR
   );
   tri_output_11 : tri01 port map ( Y=>output(11), A=>nx49, E=>
      input_39_EXMPLR);
   tri_output_12 : tri01 port map ( Y=>output(12), A=>nx49, E=>
      input_39_EXMPLR);
   tri_output_13 : tri01 port map ( Y=>output(13), A=>nx49, E=>
      input_39_EXMPLR);
   tri_output_14 : tri01 port map ( Y=>output(14), A=>nx49, E=>
      input_39_EXMPLR);
   tri_output_15 : tri01 port map ( Y=>output(15), A=>nx49, E=>
      input_39_EXMPLR);
   tri_output_19 : tri01 port map ( Y=>output(19), A=>nx49, E=>
      input_39_EXMPLR);
   tri_output_20 : tri01 port map ( Y=>output(20), A=>nx49, E=>
      input_39_EXMPLR);
   tri_output_21 : tri01 port map ( Y=>output(21), A=>nx49, E=>
      input_39_EXMPLR);
   tri_output_22 : tri01 port map ( Y=>output(22), A=>nx49, E=>
      input_39_EXMPLR);
   tri_output_23 : tri01 port map ( Y=>output(23), A=>nx49, E=>
      input_39_EXMPLR);
end TriStateArch_unfold_2195 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DMA_12_40 is
   port (
      initialCount : IN std_logic_vector (2 DOWNTO 0) ;
      readBaseAddress : IN std_logic_vector (11 DOWNTO 0) ;
      readStep : IN std_logic_vector (11 DOWNTO 0) ;
      initAddress : IN std_logic ;
      initCounter : IN std_logic ;
      load : IN std_logic ;
      internalBus : OUT std_logic_vector (39 DOWNTO 0) ;
      finishedOneReadOut : OUT std_logic ;
      finishedReading : OUT std_logic ;
      clk : IN std_logic ;
      ramDataInBus : IN std_logic_vector (39 DOWNTO 0) ;
      ramRead : OUT std_logic ;
      ramReadAddress : OUT std_logic_vector (11 DOWNTO 0) ;
      MFC : IN std_logic) ;
end DMA_12_40 ;

architecture DMAArch_unfold_1870 of DMA_12_40 is
   component Tristate_40
      port (
         input : IN std_logic_vector (39 DOWNTO 0) ;
         en : IN std_logic ;
         output : OUT std_logic_vector (39 DOWNTO 0)) ;
   end component ;
   signal GND: std_logic ;
   
   signal DANGLING : std_logic_vector (21 downto 0 );

begin
   internalBus(39) <= GND ;
   internalBus(38) <= GND ;
   internalBus(37) <= GND ;
   internalBus(36) <= GND ;
   internalBus(35) <= GND ;
   internalBus(34) <= GND ;
   internalBus(33) <= GND ;
   internalBus(32) <= GND ;
   internalBus(31) <= GND ;
   internalBus(30) <= GND ;
   internalBus(29) <= GND ;
   internalBus(28) <= GND ;
   internalBus(27) <= GND ;
   internalBus(26) <= GND ;
   internalBus(25) <= GND ;
   internalBus(24) <= GND ;
   internalBus(18) <= GND ;
   internalBus(17) <= GND ;
   internalBus(16) <= GND ;
   internalBus(10) <= GND ;
   internalBus(9) <= GND ;
   internalBus(8) <= GND ;
   finishedOneReadOut <= GND ;
   finishedReading <= GND ;
   ramRead <= GND ;
   ramReadAddress(11) <= GND ;
   ramReadAddress(10) <= GND ;
   ramReadAddress(9) <= GND ;
   ramReadAddress(8) <= GND ;
   ramReadAddress(7) <= GND ;
   ramReadAddress(6) <= GND ;
   ramReadAddress(5) <= GND ;
   ramReadAddress(4) <= GND ;
   ramReadAddress(3) <= GND ;
   ramReadAddress(2) <= GND ;
   ramReadAddress(1) <= GND ;
   ramReadAddress(0) <= GND ;
   tristateLabel : Tristate_40 port map ( input(39)=>GND, input(38)=>GND, 
      input(37)=>GND, input(36)=>GND, input(35)=>GND, input(34)=>GND, 
      input(33)=>GND, input(32)=>GND, input(31)=>GND, input(30)=>GND, 
      input(29)=>GND, input(28)=>GND, input(27)=>GND, input(26)=>GND, 
      input(25)=>GND, input(24)=>GND, input(23)=>GND, input(22)=>GND, 
      input(21)=>GND, input(20)=>GND, input(19)=>GND, input(18)=>GND, 
      input(17)=>GND, input(16)=>GND, input(15)=>GND, input(14)=>GND, 
      input(13)=>GND, input(12)=>GND, input(11)=>GND, input(10)=>GND, 
      input(9)=>GND, input(8)=>GND, input(7)=>GND, input(6)=>GND, input(5)=>
      GND, input(4)=>GND, input(3)=>GND, input(2)=>GND, input(1)=>GND, 
      input(0)=>GND, en=>GND, output(39)=>DANGLING(0), output(38)=>DANGLING(
      1), output(37)=>DANGLING(2), output(36)=>DANGLING(3), output(35)=>
      DANGLING(4), output(34)=>DANGLING(5), output(33)=>DANGLING(6), 
      output(32)=>DANGLING(7), output(31)=>DANGLING(8), output(30)=>DANGLING
      (9), output(29)=>DANGLING(10), output(28)=>DANGLING(11), output(27)=>
      DANGLING(12), output(26)=>DANGLING(13), output(25)=>DANGLING(14), 
      output(24)=>DANGLING(15), output(23)=>internalBus(23), output(22)=>
      internalBus(22), output(21)=>internalBus(21), output(20)=>
      internalBus(20), output(19)=>internalBus(19), output(18)=>DANGLING(16), 
      output(17)=>DANGLING(17), output(16)=>DANGLING(18), output(15)=>
      internalBus(15), output(14)=>internalBus(14), output(13)=>
      internalBus(13), output(12)=>internalBus(12), output(11)=>
      internalBus(11), output(10)=>DANGLING(19), output(9)=>DANGLING(20), 
      output(8)=>DANGLING(21), output(7)=>internalBus(7), output(6)=>
      internalBus(6), output(5)=>internalBus(5), output(4)=>internalBus(4), 
      output(3)=>internalBus(3), output(2)=>internalBus(2), output(1)=>
      internalBus(1), output(0)=>internalBus(0));
   ix43 : fake_gnd port map ( Y=>GND);
end DMAArch_unfold_1870 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ReadLogic_12_40_true is
   port (
      clk : IN std_logic ;
      resetState : IN std_logic ;
      switchRam : IN std_logic ;
      ramBasedAddress : IN std_logic_vector (11 DOWNTO 0) ;
      internalBus : OUT std_logic_vector (39 DOWNTO 0) ;
      ramDataInBus : IN std_logic_vector (39 DOWNTO 0) ;
      ramRead : OUT std_logic ;
      ramAddress : OUT std_logic_vector (11 DOWNTO 0) ;
      MFC : IN std_logic ;
      inputSize : IN std_logic_vector (11 DOWNTO 0) ;
      filterSize : IN std_logic_vector (11 DOWNTO 0) ;
      loadNextWordList : IN std_logic ;
      loadWord : IN std_logic ;
      finishSlice : IN std_logic ;
      readOne : OUT std_logic ;
      readFinal : OUT std_logic ;
      aluNumber : OUT std_logic_vector (2 DOWNTO 0)) ;
end ReadLogic_12_40_true ;

architecture ReadLogicArch_unfold_3529 of ReadLogic_12_40_true is
   component DMA_12_40
      port (
         initialCount : IN std_logic_vector (2 DOWNTO 0) ;
         readBaseAddress : IN std_logic_vector (11 DOWNTO 0) ;
         readStep : IN std_logic_vector (11 DOWNTO 0) ;
         initAddress : IN std_logic ;
         initCounter : IN std_logic ;
         load : IN std_logic ;
         internalBus : OUT std_logic_vector (39 DOWNTO 0) ;
         finishedOneReadOut : OUT std_logic ;
         finishedReading : OUT std_logic ;
         clk : IN std_logic ;
         ramDataInBus : IN std_logic_vector (39 DOWNTO 0) ;
         ramRead : OUT std_logic ;
         ramReadAddress : OUT std_logic_vector (11 DOWNTO 0) ;
         MFC : IN std_logic) ;
   end component ;
   signal PWR, addressRegOut_11: std_logic ;
   
   signal DANGLING : std_logic_vector (36 downto 0 );

begin
   internalBus(39) <= addressRegOut_11 ;
   internalBus(38) <= addressRegOut_11 ;
   internalBus(37) <= addressRegOut_11 ;
   internalBus(36) <= addressRegOut_11 ;
   internalBus(35) <= addressRegOut_11 ;
   internalBus(34) <= addressRegOut_11 ;
   internalBus(33) <= addressRegOut_11 ;
   internalBus(32) <= addressRegOut_11 ;
   internalBus(31) <= addressRegOut_11 ;
   internalBus(30) <= addressRegOut_11 ;
   internalBus(29) <= addressRegOut_11 ;
   internalBus(28) <= addressRegOut_11 ;
   internalBus(27) <= addressRegOut_11 ;
   internalBus(26) <= addressRegOut_11 ;
   internalBus(25) <= addressRegOut_11 ;
   internalBus(24) <= addressRegOut_11 ;
   internalBus(18) <= addressRegOut_11 ;
   internalBus(17) <= addressRegOut_11 ;
   internalBus(16) <= addressRegOut_11 ;
   internalBus(10) <= addressRegOut_11 ;
   internalBus(9) <= addressRegOut_11 ;
   internalBus(8) <= addressRegOut_11 ;
   ramRead <= addressRegOut_11 ;
   ramAddress(11) <= addressRegOut_11 ;
   ramAddress(10) <= addressRegOut_11 ;
   ramAddress(9) <= addressRegOut_11 ;
   ramAddress(8) <= addressRegOut_11 ;
   ramAddress(7) <= addressRegOut_11 ;
   ramAddress(6) <= addressRegOut_11 ;
   ramAddress(5) <= addressRegOut_11 ;
   ramAddress(4) <= addressRegOut_11 ;
   ramAddress(3) <= addressRegOut_11 ;
   ramAddress(2) <= addressRegOut_11 ;
   ramAddress(1) <= addressRegOut_11 ;
   ramAddress(0) <= addressRegOut_11 ;
   readOne <= addressRegOut_11 ;
   readFinal <= addressRegOut_11 ;
   aluNumber(2) <= addressRegOut_11 ;
   aluNumber(1) <= addressRegOut_11 ;
   aluNumber(0) <= addressRegOut_11 ;
   dma : DMA_12_40 port map ( initialCount(2)=>addressRegOut_11, 
      initialCount(1)=>addressRegOut_11, initialCount(0)=>addressRegOut_11, 
      readBaseAddress(11)=>addressRegOut_11, readBaseAddress(10)=>
      addressRegOut_11, readBaseAddress(9)=>addressRegOut_11, 
      readBaseAddress(8)=>addressRegOut_11, readBaseAddress(7)=>
      addressRegOut_11, readBaseAddress(6)=>addressRegOut_11, 
      readBaseAddress(5)=>addressRegOut_11, readBaseAddress(4)=>
      addressRegOut_11, readBaseAddress(3)=>addressRegOut_11, 
      readBaseAddress(2)=>addressRegOut_11, readBaseAddress(1)=>
      addressRegOut_11, readBaseAddress(0)=>addressRegOut_11, readStep(11)=>
      addressRegOut_11, readStep(10)=>addressRegOut_11, readStep(9)=>
      addressRegOut_11, readStep(8)=>addressRegOut_11, readStep(7)=>
      addressRegOut_11, readStep(6)=>addressRegOut_11, readStep(5)=>
      addressRegOut_11, readStep(4)=>addressRegOut_11, readStep(3)=>
      addressRegOut_11, readStep(2)=>addressRegOut_11, readStep(1)=>
      addressRegOut_11, readStep(0)=>PWR, initAddress=>addressRegOut_11, 
      initCounter=>addressRegOut_11, load=>addressRegOut_11, internalBus(39)
      =>DANGLING(0), internalBus(38)=>DANGLING(1), internalBus(37)=>DANGLING
      (2), internalBus(36)=>DANGLING(3), internalBus(35)=>DANGLING(4), 
      internalBus(34)=>DANGLING(5), internalBus(33)=>DANGLING(6), 
      internalBus(32)=>DANGLING(7), internalBus(31)=>DANGLING(8), 
      internalBus(30)=>DANGLING(9), internalBus(29)=>DANGLING(10), 
      internalBus(28)=>DANGLING(11), internalBus(27)=>DANGLING(12), 
      internalBus(26)=>DANGLING(13), internalBus(25)=>DANGLING(14), 
      internalBus(24)=>DANGLING(15), internalBus(23)=>internalBus(23), 
      internalBus(22)=>internalBus(22), internalBus(21)=>internalBus(21), 
      internalBus(20)=>internalBus(20), internalBus(19)=>internalBus(19), 
      internalBus(18)=>DANGLING(16), internalBus(17)=>DANGLING(17), 
      internalBus(16)=>DANGLING(18), internalBus(15)=>internalBus(15), 
      internalBus(14)=>internalBus(14), internalBus(13)=>internalBus(13), 
      internalBus(12)=>internalBus(12), internalBus(11)=>internalBus(11), 
      internalBus(10)=>DANGLING(19), internalBus(9)=>DANGLING(20), 
      internalBus(8)=>DANGLING(21), internalBus(7)=>internalBus(7), 
      internalBus(6)=>internalBus(6), internalBus(5)=>internalBus(5), 
      internalBus(4)=>internalBus(4), internalBus(3)=>internalBus(3), 
      internalBus(2)=>internalBus(2), internalBus(1)=>internalBus(1), 
      internalBus(0)=>internalBus(0), finishedOneReadOut=>DANGLING(22), 
      finishedReading=>DANGLING(23), clk=>addressRegOut_11, ramDataInBus(39)
      =>addressRegOut_11, ramDataInBus(38)=>addressRegOut_11, 
      ramDataInBus(37)=>addressRegOut_11, ramDataInBus(36)=>addressRegOut_11, 
      ramDataInBus(35)=>addressRegOut_11, ramDataInBus(34)=>addressRegOut_11, 
      ramDataInBus(33)=>addressRegOut_11, ramDataInBus(32)=>addressRegOut_11, 
      ramDataInBus(31)=>addressRegOut_11, ramDataInBus(30)=>addressRegOut_11, 
      ramDataInBus(29)=>addressRegOut_11, ramDataInBus(28)=>addressRegOut_11, 
      ramDataInBus(27)=>addressRegOut_11, ramDataInBus(26)=>addressRegOut_11, 
      ramDataInBus(25)=>addressRegOut_11, ramDataInBus(24)=>addressRegOut_11, 
      ramDataInBus(23)=>addressRegOut_11, ramDataInBus(22)=>addressRegOut_11, 
      ramDataInBus(21)=>addressRegOut_11, ramDataInBus(20)=>addressRegOut_11, 
      ramDataInBus(19)=>addressRegOut_11, ramDataInBus(18)=>addressRegOut_11, 
      ramDataInBus(17)=>addressRegOut_11, ramDataInBus(16)=>addressRegOut_11, 
      ramDataInBus(15)=>addressRegOut_11, ramDataInBus(14)=>addressRegOut_11, 
      ramDataInBus(13)=>addressRegOut_11, ramDataInBus(12)=>addressRegOut_11, 
      ramDataInBus(11)=>addressRegOut_11, ramDataInBus(10)=>addressRegOut_11, 
      ramDataInBus(9)=>addressRegOut_11, ramDataInBus(8)=>addressRegOut_11, 
      ramDataInBus(7)=>addressRegOut_11, ramDataInBus(6)=>addressRegOut_11, 
      ramDataInBus(5)=>addressRegOut_11, ramDataInBus(4)=>addressRegOut_11, 
      ramDataInBus(3)=>addressRegOut_11, ramDataInBus(2)=>addressRegOut_11, 
      ramDataInBus(1)=>addressRegOut_11, ramDataInBus(0)=>addressRegOut_11, 
      ramRead=>DANGLING(24), ramReadAddress(11)=>DANGLING(25), 
      ramReadAddress(10)=>DANGLING(26), ramReadAddress(9)=>DANGLING(27), 
      ramReadAddress(8)=>DANGLING(28), ramReadAddress(7)=>DANGLING(29), 
      ramReadAddress(6)=>DANGLING(30), ramReadAddress(5)=>DANGLING(31), 
      ramReadAddress(4)=>DANGLING(32), ramReadAddress(3)=>DANGLING(33), 
      ramReadAddress(2)=>DANGLING(34), ramReadAddress(1)=>DANGLING(35), 
      ramReadAddress(0)=>DANGLING(36), MFC=>addressRegOut_11);
   ix4 : fake_gnd port map ( Y=>addressRegOut_11);
   ix2 : fake_vcc port map ( Y=>PWR);
end ReadLogicArch_unfold_3529 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Reg_13_unfolded5 is
   port (
      D : IN std_logic_vector (12 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      Q : OUT std_logic_vector (12 DOWNTO 0)) ;
end Reg_13_unfolded5 ;

architecture RegArch_unfold_2508_xmplrcopy of Reg_13_unfolded5 is
   signal Q_12_EXMPLR: std_logic ;

begin
   Q(12) <= Q_12_EXMPLR ;
   Q(11) <= Q_12_EXMPLR ;
   Q(10) <= Q_12_EXMPLR ;
   Q(9) <= Q_12_EXMPLR ;
   Q(8) <= Q_12_EXMPLR ;
   Q(7) <= Q_12_EXMPLR ;
   Q(6) <= Q_12_EXMPLR ;
   ix2 : fake_gnd port map ( Y=>Q_12_EXMPLR);
   reg_Q_0 : dff port map ( Q=>Q(0), QB=>OPEN, D=>D(0), CLK=>clk);
   reg_Q_1 : dff port map ( Q=>Q(1), QB=>OPEN, D=>D(1), CLK=>clk);
   reg_Q_2 : dff port map ( Q=>Q(2), QB=>OPEN, D=>D(2), CLK=>clk);
   reg_Q_3 : dff port map ( Q=>Q(3), QB=>OPEN, D=>D(3), CLK=>clk);
   reg_Q_4 : dff port map ( Q=>Q(4), QB=>OPEN, D=>D(4), CLK=>clk);
   reg_Q_5 : dff port map ( Q=>Q(5), QB=>OPEN, D=>D(5), CLK=>clk);
end RegArch_unfold_2508_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FullAdder_unfolded22 is
   port (
      a : IN std_logic ;
      b : IN std_logic ;
      cin : IN std_logic ;
      s : OUT std_logic ;
      cout : OUT std_logic) ;
end FullAdder_unfolded22 ;

architecture FullAdderArch_unfold_2268_xmplrcopy of FullAdder_unfolded22 is
   signal nx95, nx97: std_logic ;

begin
   ix1 : nor02_2x port map ( Y=>cout, A0=>nx95, A1=>nx97);
   ix96 : inv01 port map ( Y=>nx95, A=>cin);
   ix98 : inv01 port map ( Y=>nx97, A=>a);
   ix7 : xnor2 port map ( Y=>s, A0=>cin, A1=>nx97);
end FullAdderArch_unfold_2268_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FullAdder_unfolded23 is
   port (
      a : IN std_logic ;
      b : IN std_logic ;
      cin : IN std_logic ;
      s : OUT std_logic ;
      cout : OUT std_logic) ;
end FullAdder_unfolded23 ;

architecture FullAdderArch_unfold_2281_3_xmplrcopy of FullAdder_unfolded23
    is
   signal nx55: std_logic ;

begin
   ix45 : fake_gnd port map ( Y=>cout);
   ix1 : xnor2 port map ( Y=>s, A0=>cin, A1=>nx55);
   ix56 : inv01 port map ( Y=>nx55, A=>a);
end FullAdderArch_unfold_2281_3_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NBitAdder_13_unfolded7 is
   port (
      a : IN std_logic_vector (12 DOWNTO 0) ;
      b : IN std_logic_vector (12 DOWNTO 0) ;
      carryIn : IN std_logic ;
      sum : OUT std_logic_vector (12 DOWNTO 0) ;
      carryOut : OUT std_logic) ;
end NBitAdder_13_unfolded7 ;

architecture NBitAdderArch_unfold_2875_xmplrcopy of NBitAdder_13_unfolded7
    is
   component FullAdder_unfolded16
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   component FullAdder_unfolded17
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   component FullAdder_unfolded22
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   component FullAdder_unfolded23
      port (
         a : IN std_logic ;
         b : IN std_logic ;
         cin : IN std_logic ;
         s : OUT std_logic ;
         cout : OUT std_logic) ;
   end component ;
   signal temp_11, temp_10, temp_9, temp_8, temp_7, temp_6, temp_5, temp_4, 
      temp_3, temp_2, temp_1, temp_0, carryIn_EXMPLR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   carryOut <= carryIn_EXMPLR ;
   f0 : FullAdder_unfolded16 port map ( a=>a(0), b=>b(0), cin=>
      carryIn_EXMPLR, s=>sum(0), cout=>temp_0);
   loop1_1_fx : FullAdder_unfolded17 port map ( a=>a(1), b=>b(1), cin=>
      temp_0, s=>sum(1), cout=>temp_1);
   loop1_2_fx : FullAdder_unfolded17 port map ( a=>a(2), b=>b(2), cin=>
      temp_1, s=>sum(2), cout=>temp_2);
   loop1_3_fx : FullAdder_unfolded17 port map ( a=>a(3), b=>b(3), cin=>
      temp_2, s=>sum(3), cout=>temp_3);
   loop1_4_fx : FullAdder_unfolded17 port map ( a=>a(4), b=>b(4), cin=>
      temp_3, s=>sum(4), cout=>temp_4);
   loop1_5_fx : FullAdder_unfolded17 port map ( a=>a(5), b=>b(5), cin=>
      temp_4, s=>sum(5), cout=>temp_5);
   loop1_6_fx : FullAdder_unfolded22 port map ( a=>a(6), b=>carryIn_EXMPLR, 
      cin=>temp_5, s=>sum(6), cout=>temp_6);
   loop1_7_fx : FullAdder_unfolded22 port map ( a=>a(7), b=>carryIn_EXMPLR, 
      cin=>temp_6, s=>sum(7), cout=>temp_7);
   loop1_8_fx : FullAdder_unfolded22 port map ( a=>a(8), b=>carryIn_EXMPLR, 
      cin=>temp_7, s=>sum(8), cout=>temp_8);
   loop1_9_fx : FullAdder_unfolded22 port map ( a=>a(9), b=>carryIn_EXMPLR, 
      cin=>temp_8, s=>sum(9), cout=>temp_9);
   loop1_10_fx : FullAdder_unfolded22 port map ( a=>a(10), b=>carryIn_EXMPLR, 
      cin=>temp_9, s=>sum(10), cout=>temp_10);
   loop1_11_fx : FullAdder_unfolded22 port map ( a=>a(11), b=>carryIn_EXMPLR, 
      cin=>temp_10, s=>sum(11), cout=>temp_11);
   loop1_12_fx : FullAdder_unfolded23 port map ( a=>a(12), b=>carryIn_EXMPLR, 
      cin=>temp_11, s=>sum(12), cout=>DANGLING(0));
   ix44 : fake_gnd port map ( Y=>carryIn_EXMPLR);
end NBitAdderArch_unfold_2875_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MultiStepCounter_13_unfolded1 is
   port (
      load : IN std_logic_vector (12 DOWNTO 0) ;
      toBeAdded : IN std_logic_vector (12 DOWNTO 0) ;
      reset : IN std_logic ;
      clk : IN std_logic ;
      isLoad : IN std_logic ;
      MFC : IN std_logic ;
      count : OUT std_logic_vector (12 DOWNTO 0)) ;
end MultiStepCounter_13_unfolded1 ;

architecture MultiStepCounterArch_unfold_2954_xmplrcopy of 
   MultiStepCounter_13_unfolded1 is
   component Reg_13
      port (
         D : IN std_logic_vector (12 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
   component NBitAdder_13_unfolded7
      port (
         a : IN std_logic_vector (12 DOWNTO 0) ;
         b : IN std_logic_vector (12 DOWNTO 0) ;
         carryIn : IN std_logic ;
         sum : OUT std_logic_vector (12 DOWNTO 0) ;
         carryOut : OUT std_logic) ;
   end component ;
   component Mux2_13_unfolded2
      port (
         A : IN std_logic_vector (12 DOWNTO 0) ;
         B : IN std_logic_vector (12 DOWNTO 0) ;
         S : IN std_logic ;
         C : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
   signal count_12_EXMPLR, count_11_EXMPLR, count_10_EXMPLR, count_9_EXMPLR, 
      count_8_EXMPLR, count_7_EXMPLR, count_6_EXMPLR, count_5_EXMPLR, 
      count_4_EXMPLR, count_3_EXMPLR, count_2_EXMPLR, count_1_EXMPLR, 
      count_0_EXMPLR, loadOrCurrent_12, loadOrCurrent_11, loadOrCurrent_10, 
      loadOrCurrent_9, loadOrCurrent_8, loadOrCurrent_7, loadOrCurrent_6, 
      loadOrCurrent_5, loadOrCurrent_4, loadOrCurrent_3, loadOrCurrent_2, 
      loadOrCurrent_1, loadOrCurrent_0, counterInput_12, counterInput_11, 
      counterInput_10, counterInput_9, counterInput_8, counterInput_7, 
      counterInput_6, counterInput_5, counterInput_4, counterInput_3, 
      counterInput_2, counterInput_1, counterInput_0, countAdded_12, 
      countAdded_11, countAdded_10, countAdded_9, countAdded_8, countAdded_7, 
      countAdded_6, countAdded_5, countAdded_4, countAdded_3, countAdded_2, 
      countAdded_1, countAdded_0, GND, PWR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
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
   counterReg : Reg_13 port map ( D(12)=>counterInput_12, D(11)=>
      counterInput_11, D(10)=>counterInput_10, D(9)=>counterInput_9, D(8)=>
      counterInput_8, D(7)=>counterInput_7, D(6)=>counterInput_6, D(5)=>
      counterInput_5, D(4)=>counterInput_4, D(3)=>counterInput_3, D(2)=>
      counterInput_2, D(1)=>counterInput_1, D(0)=>counterInput_0, en=>PWR, 
      clk=>clk, rst=>GND, Q(12)=>count_12_EXMPLR, Q(11)=>count_11_EXMPLR, 
      Q(10)=>count_10_EXMPLR, Q(9)=>count_9_EXMPLR, Q(8)=>count_8_EXMPLR, 
      Q(7)=>count_7_EXMPLR, Q(6)=>count_6_EXMPLR, Q(5)=>count_5_EXMPLR, Q(4)
      =>count_4_EXMPLR, Q(3)=>count_3_EXMPLR, Q(2)=>count_2_EXMPLR, Q(1)=>
      count_1_EXMPLR, Q(0)=>count_0_EXMPLR);
   nextCount : NBitAdder_13_unfolded7 port map ( a(12)=>count_12_EXMPLR, 
      a(11)=>count_11_EXMPLR, a(10)=>count_10_EXMPLR, a(9)=>count_9_EXMPLR, 
      a(8)=>count_8_EXMPLR, a(7)=>count_7_EXMPLR, a(6)=>count_6_EXMPLR, a(5)
      =>count_5_EXMPLR, a(4)=>count_4_EXMPLR, a(3)=>count_3_EXMPLR, a(2)=>
      count_2_EXMPLR, a(1)=>count_1_EXMPLR, a(0)=>count_0_EXMPLR, b(12)=>GND, 
      b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, 
      b(5)=>toBeAdded(5), b(4)=>toBeAdded(4), b(3)=>toBeAdded(3), b(2)=>
      toBeAdded(2), b(1)=>toBeAdded(1), b(0)=>toBeAdded(0), carryIn=>GND, 
      sum(12)=>countAdded_12, sum(11)=>countAdded_11, sum(10)=>countAdded_10, 
      sum(9)=>countAdded_9, sum(8)=>countAdded_8, sum(7)=>countAdded_7, 
      sum(6)=>countAdded_6, sum(5)=>countAdded_5, sum(4)=>countAdded_4, 
      sum(3)=>countAdded_3, sum(2)=>countAdded_2, sum(1)=>countAdded_1, 
      sum(0)=>countAdded_0, carryOut=>DANGLING(0));
   muxloadOrCurrent : Mux2_13_unfolded2 port map ( A(12)=>count_12_EXMPLR, 
      A(11)=>count_11_EXMPLR, A(10)=>count_10_EXMPLR, A(9)=>count_9_EXMPLR, 
      A(8)=>count_8_EXMPLR, A(7)=>count_7_EXMPLR, A(6)=>count_6_EXMPLR, A(5)
      =>count_5_EXMPLR, A(4)=>count_4_EXMPLR, A(3)=>count_3_EXMPLR, A(2)=>
      count_2_EXMPLR, A(1)=>count_1_EXMPLR, A(0)=>count_0_EXMPLR, B(12)=>
      load(12), B(11)=>load(11), B(10)=>load(10), B(9)=>load(9), B(8)=>
      load(8), B(7)=>load(7), B(6)=>load(6), B(5)=>load(5), B(4)=>load(4), 
      B(3)=>load(3), B(2)=>load(2), B(1)=>load(1), B(0)=>load(0), S=>isLoad, 
      C(12)=>loadOrCurrent_12, C(11)=>loadOrCurrent_11, C(10)=>
      loadOrCurrent_10, C(9)=>loadOrCurrent_9, C(8)=>loadOrCurrent_8, C(7)=>
      loadOrCurrent_7, C(6)=>loadOrCurrent_6, C(5)=>loadOrCurrent_5, C(4)=>
      loadOrCurrent_4, C(3)=>loadOrCurrent_3, C(2)=>loadOrCurrent_2, C(1)=>
      loadOrCurrent_1, C(0)=>loadOrCurrent_0);
   muxInput : Mux2_13_unfolded2 port map ( A(12)=>loadOrCurrent_12, A(11)=>
      loadOrCurrent_11, A(10)=>loadOrCurrent_10, A(9)=>loadOrCurrent_9, A(8)
      =>loadOrCurrent_8, A(7)=>loadOrCurrent_7, A(6)=>loadOrCurrent_6, A(5)
      =>loadOrCurrent_5, A(4)=>loadOrCurrent_4, A(3)=>loadOrCurrent_3, A(2)
      =>loadOrCurrent_2, A(1)=>loadOrCurrent_1, A(0)=>loadOrCurrent_0, B(12)
      =>countAdded_12, B(11)=>countAdded_11, B(10)=>countAdded_10, B(9)=>
      countAdded_9, B(8)=>countAdded_8, B(7)=>countAdded_7, B(6)=>
      countAdded_6, B(5)=>countAdded_5, B(4)=>countAdded_4, B(3)=>
      countAdded_3, B(2)=>countAdded_2, B(1)=>countAdded_1, B(0)=>
      countAdded_0, S=>MFC, C(12)=>counterInput_12, C(11)=>counterInput_11, 
      C(10)=>counterInput_10, C(9)=>counterInput_9, C(8)=>counterInput_8, 
      C(7)=>counterInput_7, C(6)=>counterInput_6, C(5)=>counterInput_5, C(4)
      =>counterInput_4, C(3)=>counterInput_3, C(2)=>counterInput_2, C(1)=>
      counterInput_1, C(0)=>counterInput_0);
   ix4 : fake_vcc port map ( Y=>PWR);
   ix2 : fake_gnd port map ( Y=>GND);
end MultiStepCounterArch_unfold_2954_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Reg_5_unfolded2 is
   port (
      D : IN std_logic_vector (4 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      Q : OUT std_logic_vector (4 DOWNTO 0)) ;
end Reg_5_unfolded2 ;

architecture RegArch_unfold_2180_xmplrcopy of Reg_5_unfolded2 is
   signal Q_4_EXMPLR, Q_3_EXMPLR, Q_2_EXMPLR, Q_1_EXMPLR, Q_0_EXMPLR, nx62, 
      nx72, nx82, nx92, nx102, nx114, nx116, nx118, nx123, nx125, nx130, 
      nx132, nx137, nx139, nx144, nx146: std_logic ;

begin
   Q(4) <= Q_4_EXMPLR ;
   Q(3) <= Q_3_EXMPLR ;
   Q(2) <= Q_2_EXMPLR ;
   Q(1) <= Q_1_EXMPLR ;
   Q(0) <= Q_0_EXMPLR ;
   reg_Q_0 : dff port map ( Q=>Q_0_EXMPLR, QB=>OPEN, D=>nx62, CLK=>clk);
   ix63 : nand02 port map ( Y=>nx62, A0=>nx114, A1=>nx118);
   ix115 : nand02 port map ( Y=>nx114, A0=>Q_0_EXMPLR, A1=>nx116);
   ix117 : inv01 port map ( Y=>nx116, A=>en);
   ix119 : nand02 port map ( Y=>nx118, A0=>D(0), A1=>en);
   reg_Q_1 : dff port map ( Q=>Q_1_EXMPLR, QB=>OPEN, D=>nx72, CLK=>clk);
   ix73 : nand02 port map ( Y=>nx72, A0=>nx123, A1=>nx125);
   ix124 : nand02 port map ( Y=>nx123, A0=>Q_1_EXMPLR, A1=>nx116);
   ix126 : nand02 port map ( Y=>nx125, A0=>D(1), A1=>en);
   reg_Q_2 : dff port map ( Q=>Q_2_EXMPLR, QB=>OPEN, D=>nx82, CLK=>clk);
   ix83 : nand02 port map ( Y=>nx82, A0=>nx130, A1=>nx132);
   ix131 : nand02 port map ( Y=>nx130, A0=>Q_2_EXMPLR, A1=>nx116);
   ix133 : nand02 port map ( Y=>nx132, A0=>D(2), A1=>en);
   reg_Q_3 : dff port map ( Q=>Q_3_EXMPLR, QB=>OPEN, D=>nx92, CLK=>clk);
   ix93 : nand02 port map ( Y=>nx92, A0=>nx137, A1=>nx139);
   ix138 : nand02 port map ( Y=>nx137, A0=>Q_3_EXMPLR, A1=>nx116);
   ix140 : nand02 port map ( Y=>nx139, A0=>D(3), A1=>en);
   reg_Q_4 : dff port map ( Q=>Q_4_EXMPLR, QB=>OPEN, D=>nx102, CLK=>clk);
   ix103 : nand02 port map ( Y=>nx102, A0=>nx144, A1=>nx146);
   ix145 : nand02 port map ( Y=>nx144, A0=>Q_4_EXMPLR, A1=>nx116);
   ix147 : nand02 port map ( Y=>nx146, A0=>D(4), A1=>en);
end RegArch_unfold_2180_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NBitSubtractor_5 is
   port (
      x : IN std_logic_vector (4 DOWNTO 0) ;
      y : IN std_logic_vector (4 DOWNTO 0) ;
      bin : IN std_logic ;
      difference : OUT std_logic_vector (4 DOWNTO 0) ;
      borrowOut : OUT std_logic) ;
end NBitSubtractor_5 ;

architecture NBitSubtractorArch_unfold_2918 of NBitSubtractor_5 is
   component FullSubtractor
      port (
         x : IN std_logic ;
         y : IN std_logic ;
         bin : IN std_logic ;
         difference : OUT std_logic ;
         bout : OUT std_logic) ;
   end component ;
   component FullSubtractor_unfolded2
      port (
         x : IN std_logic ;
         y : IN std_logic ;
         bin : IN std_logic ;
         difference : OUT std_logic ;
         bout : OUT std_logic) ;
   end component ;
   component FullSubtractor_unfolded3
      port (
         x : IN std_logic ;
         y : IN std_logic ;
         bin : IN std_logic ;
         difference : OUT std_logic ;
         bout : OUT std_logic) ;
   end component ;
   signal difference_0_EXMPLR, temp_3, temp_2, temp_1, bin_EXMPLR, 
      y_4_EXMPLR: std_logic ;
   
   signal DANGLING : std_logic_vector (1 downto 0 );

begin
   difference(0) <= difference_0_EXMPLR ;
   borrowOut <= y_4_EXMPLR ;
   f0 : FullSubtractor port map ( x=>x(0), y=>y_4_EXMPLR, bin=>bin_EXMPLR, 
      difference=>difference_0_EXMPLR, bout=>DANGLING(0));
   loop1_1_fx : FullSubtractor_unfolded2 port map ( x=>x(1), y=>y_4_EXMPLR, 
      bin=>difference_0_EXMPLR, difference=>difference(1), bout=>temp_1);
   loop1_2_fx : FullSubtractor_unfolded2 port map ( x=>x(2), y=>y_4_EXMPLR, 
      bin=>temp_1, difference=>difference(2), bout=>temp_2);
   loop1_3_fx : FullSubtractor_unfolded2 port map ( x=>x(3), y=>y_4_EXMPLR, 
      bin=>temp_2, difference=>difference(3), bout=>temp_3);
   loop1_4_fx : FullSubtractor_unfolded3 port map ( x=>x(4), y=>y_4_EXMPLR, 
      bin=>temp_3, difference=>difference(4), bout=>DANGLING(1));
   ix4 : fake_gnd port map ( Y=>y_4_EXMPLR);
   ix2 : fake_vcc port map ( Y=>bin_EXMPLR);
end NBitSubtractorArch_unfold_2918 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_5 is
   port (
      A : IN std_logic_vector (4 DOWNTO 0) ;
      B : IN std_logic_vector (4 DOWNTO 0) ;
      S : IN std_logic ;
      C : OUT std_logic_vector (4 DOWNTO 0)) ;
end Mux2_5 ;

architecture Mux2Arch of Mux2_5 is
   signal nx131, nx133, nx135, nx138, nx140, nx143, nx145, nx148, nx150, 
      nx153, nx155: std_logic ;

begin
   ix7 : nand02 port map ( Y=>C(0), A0=>nx131, A1=>nx133);
   ix132 : nand02 port map ( Y=>nx131, A0=>B(0), A1=>S);
   ix134 : nand02 port map ( Y=>nx133, A0=>A(0), A1=>nx135);
   ix136 : inv01 port map ( Y=>nx135, A=>S);
   ix15 : nand02 port map ( Y=>C(1), A0=>nx138, A1=>nx140);
   ix139 : nand02 port map ( Y=>nx138, A0=>B(1), A1=>S);
   ix141 : nand02 port map ( Y=>nx140, A0=>A(1), A1=>nx135);
   ix23 : nand02 port map ( Y=>C(2), A0=>nx143, A1=>nx145);
   ix144 : nand02 port map ( Y=>nx143, A0=>B(2), A1=>S);
   ix146 : nand02 port map ( Y=>nx145, A0=>A(2), A1=>nx135);
   ix31 : nand02 port map ( Y=>C(3), A0=>nx148, A1=>nx150);
   ix149 : nand02 port map ( Y=>nx148, A0=>B(3), A1=>S);
   ix151 : nand02 port map ( Y=>nx150, A0=>A(3), A1=>nx135);
   ix39 : nand02 port map ( Y=>C(4), A0=>nx153, A1=>nx155);
   ix154 : nand02 port map ( Y=>nx153, A0=>S, A1=>B(4));
   ix156 : nand02 port map ( Y=>nx155, A0=>nx135, A1=>A(4));
end Mux2Arch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DownCounter_5 is
   port (
      load : IN std_logic_vector (4 DOWNTO 0) ;
      enable : IN std_logic ;
      clk : IN std_logic ;
      isLoad : IN std_logic ;
      currentCount : INOUT std_logic_vector (4 DOWNTO 0)) ;
end DownCounter_5 ;

architecture DownCounterArch of DownCounter_5 is
   component Reg_5_unfolded2
      port (
         D : IN std_logic_vector (4 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (4 DOWNTO 0)) ;
   end component ;
   component NBitSubtractor_5
      port (
         x : IN std_logic_vector (4 DOWNTO 0) ;
         y : IN std_logic_vector (4 DOWNTO 0) ;
         bin : IN std_logic ;
         difference : OUT std_logic_vector (4 DOWNTO 0) ;
         borrowOut : OUT std_logic) ;
   end component ;
   component Mux2_5
      port (
         A : IN std_logic_vector (4 DOWNTO 0) ;
         B : IN std_logic_vector (4 DOWNTO 0) ;
         S : IN std_logic ;
         C : OUT std_logic_vector (4 DOWNTO 0)) ;
   end component ;
   signal counterInput_4, counterInput_3, counterInput_2, counterInput_1, 
      counterInput_0, subtractorOutput_4, subtractorOutput_3, 
      subtractorOutput_2, subtractorOutput_1, subtractorOutput_0, PWR, 
      zerosSignal_4: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   counterReg : Reg_5_unfolded2 port map ( D(4)=>counterInput_4, D(3)=>
      counterInput_3, D(2)=>counterInput_2, D(1)=>counterInput_1, D(0)=>
      counterInput_0, en=>enable, clk=>clk, rst=>zerosSignal_4, Q(4)=>
      currentCount(4), Q(3)=>currentCount(3), Q(2)=>currentCount(2), Q(1)=>
      currentCount(1), Q(0)=>currentCount(0));
   nextCount : NBitSubtractor_5 port map ( x(4)=>currentCount(4), x(3)=>
      currentCount(3), x(2)=>currentCount(2), x(1)=>currentCount(1), x(0)=>
      currentCount(0), y(4)=>zerosSignal_4, y(3)=>zerosSignal_4, y(2)=>
      zerosSignal_4, y(1)=>zerosSignal_4, y(0)=>zerosSignal_4, bin=>PWR, 
      difference(4)=>subtractorOutput_4, difference(3)=>subtractorOutput_3, 
      difference(2)=>subtractorOutput_2, difference(1)=>subtractorOutput_1, 
      difference(0)=>subtractorOutput_0, borrowOut=>DANGLING(0));
   muxloadOrCurrent : Mux2_5 port map ( A(4)=>subtractorOutput_4, A(3)=>
      subtractorOutput_3, A(2)=>subtractorOutput_2, A(1)=>subtractorOutput_1, 
      A(0)=>subtractorOutput_0, B(4)=>load(4), B(3)=>load(3), B(2)=>load(2), 
      B(1)=>load(1), B(0)=>load(0), S=>isLoad, C(4)=>counterInput_4, C(3)=>
      counterInput_3, C(2)=>counterInput_2, C(1)=>counterInput_1, C(0)=>
      counterInput_0);
   ix24 : fake_gnd port map ( Y=>zerosSignal_4);
   ix22 : fake_vcc port map ( Y=>PWR);
end DownCounterArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity WriteDMA_13_16 is
   port (
      clk : IN std_logic ;
      writeBaseAddress : IN std_logic_vector (12 DOWNTO 0) ;
      writeStep : IN std_logic_vector (12 DOWNTO 0) ;
      writeToRam : IN std_logic ;
      counter : IN std_logic_vector (4 DOWNTO 0) ;
      initCounter : IN std_logic ;
      initAddress : IN std_logic ;
      internalBus : IN std_logic_vector (15 DOWNTO 0) ;
      ramWrite : OUT std_logic ;
      ramDataOutBus : OUT std_logic_vector (15 DOWNTO 0) ;
      ramWriteAddress : OUT std_logic_vector (12 DOWNTO 0) ;
      MFC : IN std_logic ;
      writeComplete : OUT std_logic ;
      writeCompleteOneOut : OUT std_logic) ;
end WriteDMA_13_16 ;

architecture WriteDMAArch_unfold_1965 of WriteDMA_13_16 is
   component Reg_13_unfolded5
      port (
         D : IN std_logic_vector (12 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
   component MultiStepCounter_13_unfolded1
      port (
         load : IN std_logic_vector (12 DOWNTO 0) ;
         toBeAdded : IN std_logic_vector (12 DOWNTO 0) ;
         reset : IN std_logic ;
         clk : IN std_logic ;
         isLoad : IN std_logic ;
         MFC : IN std_logic ;
         count : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
   component DownCounter_5
      port (
         load : IN std_logic_vector (4 DOWNTO 0) ;
         enable : IN std_logic ;
         clk : IN std_logic ;
         isLoad : IN std_logic ;
         currentCount : INOUT std_logic_vector (4 DOWNTO 0)) ;
   
   end component ;
   signal toBeAdded_5, toBeAdded_4, toBeAdded_3, toBeAdded_2, toBeAdded_1, 
      toBeAdded_0, currentCount_4, currentCount_3, currentCount_2, 
      currentCount_1, currentCount_0, enableCounter, 
      writeCompleteOneOut_EXMPLR, GND, PWR, NOT_MFC, nx6, nx12, nx22, nx26, 
      nx25, nx30, nx33, nx37, nx40, nx43, nx1, nx5, nx56, nx58: std_logic ;
   
   signal DANGLING : std_logic_vector (6 downto 0 );

begin
   ramWrite <= GND ;
   ramDataOutBus(15) <= GND ;
   ramDataOutBus(14) <= GND ;
   ramDataOutBus(13) <= GND ;
   ramDataOutBus(12) <= GND ;
   ramDataOutBus(11) <= GND ;
   ramDataOutBus(10) <= GND ;
   ramDataOutBus(9) <= GND ;
   ramDataOutBus(8) <= GND ;
   ramDataOutBus(7) <= GND ;
   ramDataOutBus(6) <= GND ;
   ramDataOutBus(5) <= GND ;
   ramDataOutBus(4) <= GND ;
   ramDataOutBus(3) <= GND ;
   ramDataOutBus(2) <= GND ;
   ramDataOutBus(1) <= GND ;
   ramDataOutBus(0) <= GND ;
   writeCompleteOneOut <= writeCompleteOneOut_EXMPLR ;
   writeStepRegister : Reg_13_unfolded5 port map ( D(12)=>GND, D(11)=>GND, 
      D(10)=>GND, D(9)=>GND, D(8)=>GND, D(7)=>GND, D(6)=>GND, D(5)=>
      writeStep(5), D(4)=>writeStep(4), D(3)=>writeStep(3), D(2)=>
      writeStep(2), D(1)=>writeStep(1), D(0)=>writeStep(0), en=>PWR, clk=>
      nx58, rst=>GND, Q(12)=>DANGLING(0), Q(11)=>DANGLING(1), Q(10)=>
      DANGLING(2), Q(9)=>DANGLING(3), Q(8)=>DANGLING(4), Q(7)=>DANGLING(5), 
      Q(6)=>DANGLING(6), Q(5)=>toBeAdded_5, Q(4)=>toBeAdded_4, Q(3)=>
      toBeAdded_3, Q(2)=>toBeAdded_2, Q(1)=>toBeAdded_1, Q(0)=>toBeAdded_0);
   writeAddressRegister : MultiStepCounter_13_unfolded1 port map ( load(12)
      =>writeBaseAddress(12), load(11)=>writeBaseAddress(11), load(10)=>
      writeBaseAddress(10), load(9)=>writeBaseAddress(9), load(8)=>
      writeBaseAddress(8), load(7)=>writeBaseAddress(7), load(6)=>
      writeBaseAddress(6), load(5)=>writeBaseAddress(5), load(4)=>
      writeBaseAddress(4), load(3)=>writeBaseAddress(3), load(2)=>
      writeBaseAddress(2), load(1)=>writeBaseAddress(1), load(0)=>
      writeBaseAddress(0), toBeAdded(12)=>GND, toBeAdded(11)=>GND, 
      toBeAdded(10)=>GND, toBeAdded(9)=>GND, toBeAdded(8)=>GND, toBeAdded(7)
      =>GND, toBeAdded(6)=>GND, toBeAdded(5)=>toBeAdded_5, toBeAdded(4)=>
      toBeAdded_4, toBeAdded(3)=>toBeAdded_3, toBeAdded(2)=>toBeAdded_2, 
      toBeAdded(1)=>toBeAdded_1, toBeAdded(0)=>toBeAdded_0, reset=>GND, clk
      =>clk, isLoad=>nx56, MFC=>writeCompleteOneOut_EXMPLR, count(12)=>
      ramWriteAddress(12), count(11)=>ramWriteAddress(11), count(10)=>
      ramWriteAddress(10), count(9)=>ramWriteAddress(9), count(8)=>
      ramWriteAddress(8), count(7)=>ramWriteAddress(7), count(6)=>
      ramWriteAddress(6), count(5)=>ramWriteAddress(5), count(4)=>
      ramWriteAddress(4), count(3)=>ramWriteAddress(3), count(2)=>
      ramWriteAddress(2), count(1)=>ramWriteAddress(1), count(0)=>
      ramWriteAddress(0));
   writecounter : DownCounter_5 port map ( load(4)=>counter(4), load(3)=>
      counter(3), load(2)=>counter(2), load(1)=>counter(1), load(0)=>
      counter(0), enable=>enableCounter, clk=>clk, isLoad=>nx56, 
      currentCount(4)=>currentCount_4, currentCount(3)=>currentCount_3, 
      currentCount(2)=>currentCount_2, currentCount(1)=>currentCount_1, 
      currentCount(0)=>currentCount_0);
   ix8 : fake_vcc port map ( Y=>PWR);
   ix6 : fake_gnd port map ( Y=>GND);
   ix17 : nor02_2x port map ( Y=>writeCompleteOneOut_EXMPLR, A0=>nx25, A1=>
      NOT_MFC);
   ix26 : inv01 port map ( Y=>nx25, A=>writeToRam);
   ix28 : inv16 port map ( Y=>NOT_MFC, A=>MFC);
   ix31 : nand02 port map ( Y=>enableCounter, A0=>nx30, A1=>nx33);
   ix32 : nand02 port map ( Y=>nx30, A0=>writeToRam, A1=>MFC);
   ix34 : inv01 port map ( Y=>nx33, A=>initCounter);
   ix27 : nor02_2x port map ( Y=>nx26, A0=>nx37, A1=>nx43);
   ix38 : nand02 port map ( Y=>nx37, A0=>nx6, A1=>nx12);
   ix7 : nor02_2x port map ( Y=>nx6, A0=>nx40, A1=>currentCount_4);
   ix41 : inv01 port map ( Y=>nx40, A=>currentCount_0);
   ix13 : nor02_2x port map ( Y=>nx12, A0=>currentCount_3, A1=>
      currentCount_2);
   ix44 : nand02 port map ( Y=>nx43, A0=>writeCompleteOneOut_EXMPLR, A1=>
      nx22);
   ix23 : nor02_2x port map ( Y=>nx22, A0=>currentCount_1, A1=>clk);
   lat_internalWriteComplete_u1 : latchs_ni port map ( QB=>nx5, D=>GND, CLK
      =>NOT_MFC, S=>nx26);
   lat_internalWriteComplete_u2 : inv02 port map ( Y=>writeComplete, A=>nx5
   );
   lat_internalWriteComplete_u3 : buf02 port map ( Y=>nx1, A=>nx5);
   ix55 : inv02 port map ( Y=>nx56, A=>nx33);
   ix57 : inv02 port map ( Y=>nx58, A=>nx33);
end WriteDMAArch_unfold_1965 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity WriteLogic_13_16 is
   port (
      clk : IN std_logic ;
      resetState : IN std_logic ;
      switchRam : IN std_logic ;
      ramBasedAddress : IN std_logic_vector (12 DOWNTO 0) ;
      internalBus : IN std_logic_vector (15 DOWNTO 0) ;
      ramWrite : OUT std_logic ;
      ramDataOutBus : OUT std_logic_vector (15 DOWNTO 0) ;
      ramAddress : OUT std_logic_vector (12 DOWNTO 0) ;
      MFC : IN std_logic ;
      outputSize : IN std_logic_vector (12 DOWNTO 0) ;
      write : IN std_logic ;
      finishFilter : IN std_logic ;
      writeDoneOne : OUT std_logic) ;
end WriteLogic_13_16 ;

architecture WriteLogicArch_unfold_3329 of WriteLogic_13_16 is
   component Reg_13_unfolded4
      port (
         D : IN std_logic_vector (12 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
   component WriteDMA_13_16
      port (
         clk : IN std_logic ;
         writeBaseAddress : IN std_logic_vector (12 DOWNTO 0) ;
         writeStep : IN std_logic_vector (12 DOWNTO 0) ;
         writeToRam : IN std_logic ;
         counter : IN std_logic_vector (4 DOWNTO 0) ;
         initCounter : IN std_logic ;
         initAddress : IN std_logic ;
         internalBus : IN std_logic_vector (15 DOWNTO 0) ;
         ramWrite : OUT std_logic ;
         ramDataOutBus : OUT std_logic_vector (15 DOWNTO 0) ;
         ramWriteAddress : OUT std_logic_vector (12 DOWNTO 0) ;
         MFC : IN std_logic ;
         writeComplete : OUT std_logic ;
         writeCompleteOneOut : OUT std_logic) ;
   end component ;
   component NBitAdder_13_unfolded6
      port (
         a : IN std_logic_vector (12 DOWNTO 0) ;
         b : IN std_logic_vector (12 DOWNTO 0) ;
         carryIn : IN std_logic ;
         sum : OUT std_logic_vector (12 DOWNTO 0) ;
         carryOut : OUT std_logic) ;
   end component ;
   component Mux2_13_unfolded3
      port (
         A : IN std_logic_vector (12 DOWNTO 0) ;
         B : IN std_logic_vector (12 DOWNTO 0) ;
         S : IN std_logic ;
         C : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
   component Counter2_13
      port (
         load : IN std_logic_vector (12 DOWNTO 0) ;
         reset : IN std_logic ;
         clk : IN std_logic ;
         isLoad : IN std_logic ;
         count : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
   signal ramAddress_12_EXMPLR, ramAddress_11_EXMPLR, ramAddress_10_EXMPLR, 
      ramAddress_9_EXMPLR, ramAddress_8_EXMPLR, ramAddress_7_EXMPLR, 
      ramAddress_6_EXMPLR, ramAddress_5_EXMPLR, ramAddress_4_EXMPLR, 
      ramAddress_3_EXMPLR, ramAddress_2_EXMPLR, ramAddress_1_EXMPLR, 
      ramAddress_0_EXMPLR, currentState_2, addressRegOut_12, 
      addressRegOut_11, addressRegOut_10, addressRegOut_9, addressRegOut_8, 
      addressRegOut_7, addressRegOut_6, addressRegOut_5, addressRegOut_4, 
      addressRegOut_3, addressRegOut_2, addressRegOut_1, addressRegOut_0, 
      addressRegInFinal_12, addressRegInFinal_11, addressRegInFinal_10, 
      addressRegInFinal_9, addressRegInFinal_8, addressRegInFinal_7, 
      addressRegInFinal_6, addressRegInFinal_5, addressRegInFinal_4, 
      addressRegInFinal_3, addressRegInFinal_2, addressRegInFinal_1, 
      addressRegInFinal_0, dmaFinishAll, resetAddressReg, 
      baseAddressCounterClk, ramAddressKeeperOut_12, ramAddressKeeperOut_11, 
      ramAddressKeeperOut_10, ramAddressKeeperOut_9, ramAddressKeeperOut_8, 
      ramAddressKeeperOut_7, ramAddressKeeperOut_6, ramAddressKeeperOut_5, 
      ramAddressKeeperOut_4, ramAddressKeeperOut_3, ramAddressKeeperOut_2, 
      ramAddressKeeperOut_1, ramAddressKeeperOut_0, 
      ramAddressKeeperOutPlus1_12, ramAddressKeeperOutPlus1_11, 
      ramAddressKeeperOutPlus1_10, ramAddressKeeperOutPlus1_9, 
      ramAddressKeeperOutPlus1_8, ramAddressKeeperOutPlus1_7, 
      ramAddressKeeperOutPlus1_6, ramAddressKeeperOutPlus1_5, 
      ramAddressKeeperOutPlus1_4, ramAddressKeeperOutPlus1_3, 
      ramAddressKeeperOutPlus1_2, ramAddressKeeperOutPlus1_1, 
      ramAddressKeeperOutPlus1_0, addressRegIn_5, dmaCountIn_4, dmaCountIn_3, 
      dmaCountIn_2, dmaCountIn_1, dmaCountIn_0, ramWrite_EXMPLR, nextState_1, 
      PWR, currentState_4, currentState_0, nx17, NOT_clk, currentState_1, 
      nx22, nx26, currentState_3, nx25, nx35, nx45, nx55, nx65, nx74, nx76, 
      nx79, nx81, nx85, nx89, nx93, nx97, nx102, nx105, nx107, nx109, nx111, 
      nx115, nx117, nx120, nx123, nx126, nx129, nx132, nx135, nx138, nx140: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (17 downto 0 );

begin
   ramWrite <= ramWrite_EXMPLR ;
   ramDataOutBus(15) <= nextState_1 ;
   ramDataOutBus(14) <= nextState_1 ;
   ramDataOutBus(13) <= nextState_1 ;
   ramDataOutBus(12) <= nextState_1 ;
   ramDataOutBus(11) <= nextState_1 ;
   ramDataOutBus(10) <= nextState_1 ;
   ramDataOutBus(9) <= nextState_1 ;
   ramDataOutBus(8) <= nextState_1 ;
   ramDataOutBus(7) <= nextState_1 ;
   ramDataOutBus(6) <= nextState_1 ;
   ramDataOutBus(5) <= nextState_1 ;
   ramDataOutBus(4) <= nextState_1 ;
   ramDataOutBus(3) <= nextState_1 ;
   ramDataOutBus(2) <= nextState_1 ;
   ramDataOutBus(1) <= nextState_1 ;
   ramDataOutBus(0) <= nextState_1 ;
   ramAddress(12) <= ramAddress_12_EXMPLR ;
   ramAddress(11) <= ramAddress_11_EXMPLR ;
   ramAddress(10) <= ramAddress_10_EXMPLR ;
   ramAddress(9) <= ramAddress_9_EXMPLR ;
   ramAddress(8) <= ramAddress_8_EXMPLR ;
   ramAddress(7) <= ramAddress_7_EXMPLR ;
   ramAddress(6) <= ramAddress_6_EXMPLR ;
   ramAddress(5) <= ramAddress_5_EXMPLR ;
   ramAddress(4) <= ramAddress_4_EXMPLR ;
   ramAddress(3) <= ramAddress_3_EXMPLR ;
   ramAddress(2) <= ramAddress_2_EXMPLR ;
   ramAddress(1) <= ramAddress_1_EXMPLR ;
   ramAddress(0) <= ramAddress_0_EXMPLR ;
   ramAddressKeeper : Reg_13_unfolded4 port map ( D(12)=>
      ramAddress_12_EXMPLR, D(11)=>ramAddress_11_EXMPLR, D(10)=>
      ramAddress_10_EXMPLR, D(9)=>ramAddress_9_EXMPLR, D(8)=>
      ramAddress_8_EXMPLR, D(7)=>ramAddress_7_EXMPLR, D(6)=>
      ramAddress_6_EXMPLR, D(5)=>ramAddress_5_EXMPLR, D(4)=>
      ramAddress_4_EXMPLR, D(3)=>ramAddress_3_EXMPLR, D(2)=>
      ramAddress_2_EXMPLR, D(1)=>ramAddress_1_EXMPLR, D(0)=>
      ramAddress_0_EXMPLR, en=>ramWrite_EXMPLR, clk=>clk, rst=>nextState_1, 
      Q(12)=>ramAddressKeeperOut_12, Q(11)=>ramAddressKeeperOut_11, Q(10)=>
      ramAddressKeeperOut_10, Q(9)=>ramAddressKeeperOut_9, Q(8)=>
      ramAddressKeeperOut_8, Q(7)=>ramAddressKeeperOut_7, Q(6)=>
      ramAddressKeeperOut_6, Q(5)=>ramAddressKeeperOut_5, Q(4)=>
      ramAddressKeeperOut_4, Q(3)=>ramAddressKeeperOut_3, Q(2)=>
      ramAddressKeeperOut_2, Q(1)=>ramAddressKeeperOut_1, Q(0)=>
      ramAddressKeeperOut_0);
   dma : WriteDMA_13_16 port map ( clk=>clk, writeBaseAddress(12)=>
      addressRegOut_12, writeBaseAddress(11)=>addressRegOut_11, 
      writeBaseAddress(10)=>addressRegOut_10, writeBaseAddress(9)=>
      addressRegOut_9, writeBaseAddress(8)=>addressRegOut_8, 
      writeBaseAddress(7)=>addressRegOut_7, writeBaseAddress(6)=>
      addressRegOut_6, writeBaseAddress(5)=>addressRegOut_5, 
      writeBaseAddress(4)=>addressRegOut_4, writeBaseAddress(3)=>
      addressRegOut_3, writeBaseAddress(2)=>addressRegOut_2, 
      writeBaseAddress(1)=>addressRegOut_1, writeBaseAddress(0)=>
      addressRegOut_0, writeStep(12)=>nextState_1, writeStep(11)=>
      nextState_1, writeStep(10)=>nextState_1, writeStep(9)=>nextState_1, 
      writeStep(8)=>nextState_1, writeStep(7)=>nextState_1, writeStep(6)=>
      nextState_1, writeStep(5)=>outputSize(5), writeStep(4)=>outputSize(4), 
      writeStep(3)=>outputSize(3), writeStep(2)=>outputSize(2), writeStep(1)
      =>outputSize(1), writeStep(0)=>outputSize(0), writeToRam=>
      ramWrite_EXMPLR, counter(4)=>dmaCountIn_4, counter(3)=>dmaCountIn_3, 
      counter(2)=>dmaCountIn_2, counter(1)=>dmaCountIn_1, counter(0)=>
      dmaCountIn_0, initCounter=>currentState_2, initAddress=>nextState_1, 
      internalBus(15)=>nextState_1, internalBus(14)=>nextState_1, 
      internalBus(13)=>nextState_1, internalBus(12)=>nextState_1, 
      internalBus(11)=>nextState_1, internalBus(10)=>nextState_1, 
      internalBus(9)=>nextState_1, internalBus(8)=>nextState_1, 
      internalBus(7)=>nextState_1, internalBus(6)=>nextState_1, 
      internalBus(5)=>nextState_1, internalBus(4)=>nextState_1, 
      internalBus(3)=>nextState_1, internalBus(2)=>nextState_1, 
      internalBus(1)=>nextState_1, internalBus(0)=>nextState_1, ramWrite=>
      DANGLING(0), ramDataOutBus(15)=>DANGLING(1), ramDataOutBus(14)=>
      DANGLING(2), ramDataOutBus(13)=>DANGLING(3), ramDataOutBus(12)=>
      DANGLING(4), ramDataOutBus(11)=>DANGLING(5), ramDataOutBus(10)=>
      DANGLING(6), ramDataOutBus(9)=>DANGLING(7), ramDataOutBus(8)=>DANGLING
      (8), ramDataOutBus(7)=>DANGLING(9), ramDataOutBus(6)=>DANGLING(10), 
      ramDataOutBus(5)=>DANGLING(11), ramDataOutBus(4)=>DANGLING(12), 
      ramDataOutBus(3)=>DANGLING(13), ramDataOutBus(2)=>DANGLING(14), 
      ramDataOutBus(1)=>DANGLING(15), ramDataOutBus(0)=>DANGLING(16), 
      ramWriteAddress(12)=>ramAddress_12_EXMPLR, ramWriteAddress(11)=>
      ramAddress_11_EXMPLR, ramWriteAddress(10)=>ramAddress_10_EXMPLR, 
      ramWriteAddress(9)=>ramAddress_9_EXMPLR, ramWriteAddress(8)=>
      ramAddress_8_EXMPLR, ramWriteAddress(7)=>ramAddress_7_EXMPLR, 
      ramWriteAddress(6)=>ramAddress_6_EXMPLR, ramWriteAddress(5)=>
      ramAddress_5_EXMPLR, ramWriteAddress(4)=>ramAddress_4_EXMPLR, 
      ramWriteAddress(3)=>ramAddress_3_EXMPLR, ramWriteAddress(2)=>
      ramAddress_2_EXMPLR, ramWriteAddress(1)=>ramAddress_1_EXMPLR, 
      ramWriteAddress(0)=>ramAddress_0_EXMPLR, MFC=>MFC, writeComplete=>
      dmaFinishAll, writeCompleteOneOut=>writeDoneOne);
   ramAddressIncrement : NBitAdder_13_unfolded6 port map ( a(12)=>
      ramAddressKeeperOut_12, a(11)=>ramAddressKeeperOut_11, a(10)=>
      ramAddressKeeperOut_10, a(9)=>ramAddressKeeperOut_9, a(8)=>
      ramAddressKeeperOut_8, a(7)=>ramAddressKeeperOut_7, a(6)=>
      ramAddressKeeperOut_6, a(5)=>ramAddressKeeperOut_5, a(4)=>
      ramAddressKeeperOut_4, a(3)=>ramAddressKeeperOut_3, a(2)=>
      ramAddressKeeperOut_2, a(1)=>ramAddressKeeperOut_1, a(0)=>
      ramAddressKeeperOut_0, b(12)=>nextState_1, b(11)=>nextState_1, b(10)=>
      nextState_1, b(9)=>nextState_1, b(8)=>nextState_1, b(7)=>nextState_1, 
      b(6)=>nextState_1, b(5)=>nextState_1, b(4)=>nextState_1, b(3)=>
      nextState_1, b(2)=>nextState_1, b(1)=>nextState_1, b(0)=>nextState_1, 
      carryIn=>PWR, sum(12)=>ramAddressKeeperOutPlus1_12, sum(11)=>
      ramAddressKeeperOutPlus1_11, sum(10)=>ramAddressKeeperOutPlus1_10, 
      sum(9)=>ramAddressKeeperOutPlus1_9, sum(8)=>ramAddressKeeperOutPlus1_8, 
      sum(7)=>ramAddressKeeperOutPlus1_7, sum(6)=>ramAddressKeeperOutPlus1_6, 
      sum(5)=>ramAddressKeeperOutPlus1_5, sum(4)=>ramAddressKeeperOutPlus1_4, 
      sum(3)=>ramAddressKeeperOutPlus1_3, sum(2)=>ramAddressKeeperOutPlus1_2, 
      sum(1)=>ramAddressKeeperOutPlus1_1, sum(0)=>ramAddressKeeperOutPlus1_0, 
      carryOut=>DANGLING(17));
   baseAddressLoadMux : Mux2_13_unfolded3 port map ( A(12)=>nextState_1, 
      A(11)=>addressRegIn_5, A(10)=>addressRegIn_5, A(9)=>addressRegIn_5, 
      A(8)=>addressRegIn_5, A(7)=>nextState_1, A(6)=>nextState_1, A(5)=>
      addressRegIn_5, A(4)=>nextState_1, A(3)=>nextState_1, A(2)=>
      nextState_1, A(1)=>nextState_1, A(0)=>nextState_1, B(12)=>
      ramAddressKeeperOutPlus1_12, B(11)=>ramAddressKeeperOutPlus1_11, B(10)
      =>ramAddressKeeperOutPlus1_10, B(9)=>ramAddressKeeperOutPlus1_9, B(8)
      =>ramAddressKeeperOutPlus1_8, B(7)=>ramAddressKeeperOutPlus1_7, B(6)=>
      ramAddressKeeperOutPlus1_6, B(5)=>ramAddressKeeperOutPlus1_5, B(4)=>
      ramAddressKeeperOutPlus1_4, B(3)=>ramAddressKeeperOutPlus1_3, B(2)=>
      ramAddressKeeperOutPlus1_2, B(1)=>ramAddressKeeperOutPlus1_1, B(0)=>
      ramAddressKeeperOutPlus1_0, S=>finishFilter, C(12)=>
      addressRegInFinal_12, C(11)=>addressRegInFinal_11, C(10)=>
      addressRegInFinal_10, C(9)=>addressRegInFinal_9, C(8)=>
      addressRegInFinal_8, C(7)=>addressRegInFinal_7, C(6)=>
      addressRegInFinal_6, C(5)=>addressRegInFinal_5, C(4)=>
      addressRegInFinal_4, C(3)=>addressRegInFinal_3, C(2)=>
      addressRegInFinal_2, C(1)=>addressRegInFinal_1, C(0)=>
      addressRegInFinal_0);
   baseAddressCounter : Counter2_13 port map ( load(12)=>
      addressRegInFinal_12, load(11)=>addressRegInFinal_11, load(10)=>
      addressRegInFinal_10, load(9)=>addressRegInFinal_9, load(8)=>
      addressRegInFinal_8, load(7)=>addressRegInFinal_7, load(6)=>
      addressRegInFinal_6, load(5)=>addressRegInFinal_5, load(4)=>
      addressRegInFinal_4, load(3)=>addressRegInFinal_3, load(2)=>
      addressRegInFinal_2, load(1)=>addressRegInFinal_1, load(0)=>
      addressRegInFinal_0, reset=>nextState_1, clk=>baseAddressCounterClk, 
      isLoad=>resetAddressReg, count(12)=>addressRegOut_12, count(11)=>
      addressRegOut_11, count(10)=>addressRegOut_10, count(9)=>
      addressRegOut_9, count(8)=>addressRegOut_8, count(7)=>addressRegOut_7, 
      count(6)=>addressRegOut_6, count(5)=>addressRegOut_5, count(4)=>
      addressRegOut_4, count(3)=>addressRegOut_3, count(2)=>addressRegOut_2, 
      count(1)=>addressRegOut_1, count(0)=>addressRegOut_0);
   ix4 : fake_vcc port map ( Y=>PWR);
   ix2 : fake_gnd port map ( Y=>nextState_1);
   ix49 : nor02_2x port map ( Y=>ramWrite_EXMPLR, A0=>nx74, A1=>nx76);
   ix75 : inv01 port map ( Y=>nx74, A=>write);
   ix66 : mux21 port map ( Y=>nx65, A0=>nx79, A1=>nx76, S0=>nx111);
   ix80 : nand02 port map ( Y=>nx79, A0=>nx81, A1=>currentState_3);
   ix82 : inv01 port map ( Y=>nx81, A=>switchRam);
   ix56 : mux21 port map ( Y=>nx55, A0=>nx85, A1=>nx117, S0=>nx111);
   ix86 : nand02 port map ( Y=>nx85, A0=>nx81, A1=>currentState_2);
   ix46 : mux21 port map ( Y=>nx45, A0=>nx89, A1=>nx115, S0=>nx111);
   ix90 : nand02 port map ( Y=>nx89, A0=>nx81, A1=>currentState_0);
   ix36 : mux21 port map ( Y=>nx35, A0=>nx93, A1=>nx109, S0=>nx111);
   ix94 : oai21 port map ( Y=>nx93, A0=>currentState_1, A1=>currentState_4, 
      B0=>nx81);
   ix26 : oai21 port map ( Y=>nx25, A0=>nx97, A1=>nx17, B0=>nx81);
   reg_currentState_1 : dff port map ( Q=>currentState_1, QB=>nx97, D=>nx25, 
      CLK=>NOT_clk);
   ix100 : inv01 port map ( Y=>NOT_clk, A=>clk);
   ix29 : nand04 port map ( Y=>nx17, A0=>nx102, A1=>nx81, A2=>nx105, A3=>
      nx107);
   ix103 : nand02 port map ( Y=>nx102, A0=>dmaFinishAll, A1=>currentState_4
   );
   reg_currentState_4 : dff port map ( Q=>currentState_4, QB=>nx76, D=>nx65, 
      CLK=>NOT_clk);
   ix106 : nand02 port map ( Y=>nx105, A0=>write, A1=>currentState_0);
   ix108 : nand02 port map ( Y=>nx107, A0=>nx76, A1=>nx109);
   reg_currentState_0 : dff port map ( Q=>currentState_0, QB=>nx109, D=>nx35, 
      CLK=>NOT_clk);
   ix112 : nor02_2x port map ( Y=>nx111, A0=>nx26, A1=>nx22);
   ix27 : nand02 port map ( Y=>nx26, A0=>nx102, A1=>nx81);
   ix23 : nand02 port map ( Y=>nx22, A0=>nx105, A1=>nx107);
   reg_currentState_2 : dff port map ( Q=>currentState_2, QB=>nx115, D=>nx45, 
      CLK=>NOT_clk);
   reg_currentState_3 : dff port map ( Q=>currentState_3, QB=>nx117, D=>nx55, 
      CLK=>NOT_clk);
   ix51 : nor02_2x port map ( Y=>dmaCountIn_0, A0=>nx120, A1=>nx115);
   ix121 : inv01 port map ( Y=>nx120, A=>outputSize(0));
   ix53 : nor02_2x port map ( Y=>dmaCountIn_1, A0=>nx123, A1=>nx115);
   ix124 : inv01 port map ( Y=>nx123, A=>outputSize(1));
   ix55 : nor02_2x port map ( Y=>dmaCountIn_2, A0=>nx126, A1=>nx115);
   ix127 : inv01 port map ( Y=>nx126, A=>outputSize(2));
   ix57 : nor02_2x port map ( Y=>dmaCountIn_3, A0=>nx129, A1=>nx115);
   ix130 : inv01 port map ( Y=>nx129, A=>outputSize(3));
   ix59 : nor02_2x port map ( Y=>dmaCountIn_4, A0=>nx132, A1=>nx115);
   ix133 : inv01 port map ( Y=>nx132, A=>outputSize(4));
   ix61 : nor02_2x port map ( Y=>addressRegIn_5, A0=>nx135, A1=>nx97);
   ix136 : inv01 port map ( Y=>nx135, A=>ramBasedAddress(11));
   ix71 : oai21 port map ( Y=>baseAddressCounterClk, A0=>clk, A1=>nx138, B0
      =>nx140);
   ix139 : nor02_2x port map ( Y=>nx138, A0=>currentState_1, A1=>
      finishFilter);
   ix141 : nand02 port map ( Y=>nx140, A0=>clk, A1=>currentState_3);
   ix63 : inv01 port map ( Y=>resetAddressReg, A=>nx138);
end WriteLogicArch_unfold_3329 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DMAController_12_13_8_16_5 is
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      weightsInternalBus : OUT std_logic_vector (39 DOWNTO 0) ;
      windowInternalBus : OUT std_logic_vector (79 DOWNTO 0) ;
      writeInternalBus : IN std_logic_vector (15 DOWNTO 0) ;
      weightsRamAddress : OUT std_logic_vector (11 DOWNTO 0) ;
      windowRamAddressRead : OUT std_logic_vector (12 DOWNTO 0) ;
      windowRamAddressWrite : OUT std_logic_vector (12 DOWNTO 0) ;
      weightsRamDataInBus : IN std_logic_vector (39 DOWNTO 0) ;
      windowRamDataInBus : IN std_logic_vector (79 DOWNTO 0) ;
      weightsRamRead : OUT std_logic ;
      windowRamRead : OUT std_logic ;
      windowRamWrite : OUT std_logic ;
      windowRamDataOutBus : OUT std_logic_vector (15 DOWNTO 0) ;
      MFCWindowRam : IN std_logic ;
      MFCWeightsRam : IN std_logic ;
      MFCWrite : IN std_logic ;
      loadNextFilter : IN std_logic ;
      loadNextWindow : IN std_logic ;
      loadNextRow : IN std_logic ;
      loadOneWord : IN std_logic ;
      loadThreeWord : IN std_logic ;
      filterFinished : IN std_logic ;
      sliceFinished : IN std_logic ;
      layerFinished : IN std_logic ;
      layerType : IN std_logic ;
      write : IN std_logic ;
      weightsSizeType : IN std_logic ;
      inputSize : IN std_logic_vector (12 DOWNTO 0) ;
      outputSize : IN std_logic_vector (12 DOWNTO 0) ;
      windowRamBaseAddress1 : IN std_logic_vector (12 DOWNTO 0) ;
      windowRamBaseAddress2 : IN std_logic_vector (12 DOWNTO 0) ;
      filterRamBaseAddress : IN std_logic_vector (11 DOWNTO 0) ;
      windowReadOne : OUT std_logic ;
      windowReadFinal : OUT std_logic ;
      weightsReadOne : OUT std_logic ;
      weightsReadFinal : OUT std_logic ;
      writeDoneOne : OUT std_logic ;
      filterAluNumber : OUT std_logic_vector (2 DOWNTO 0) ;
      windowAluNumber : OUT std_logic_vector (2 DOWNTO 0)) ;
end DMAController_12_13_8_16_5 ;

architecture DMAControllerArch_unfold_3463 of DMAController_12_13_8_16_5 is
   component Mux2_13
      port (
         A : IN std_logic_vector (12 DOWNTO 0) ;
         B : IN std_logic_vector (12 DOWNTO 0) ;
         S : IN std_logic ;
         C : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
   component ReadLogic_13_80_false
      port (
         clk : IN std_logic ;
         resetState : IN std_logic ;
         switchRam : IN std_logic ;
         ramBasedAddress : IN std_logic_vector (12 DOWNTO 0) ;
         internalBus : OUT std_logic_vector (79 DOWNTO 0) ;
         ramDataInBus : IN std_logic_vector (79 DOWNTO 0) ;
         ramRead : OUT std_logic ;
         ramAddress : OUT std_logic_vector (12 DOWNTO 0) ;
         MFC : IN std_logic ;
         inputSize : IN std_logic_vector (12 DOWNTO 0) ;
         filterSize : IN std_logic_vector (12 DOWNTO 0) ;
         loadNextWordList : IN std_logic ;
         loadWord : IN std_logic ;
         finishSlice : IN std_logic ;
         readOne : OUT std_logic ;
         readFinal : OUT std_logic ;
         aluNumber : OUT std_logic_vector (2 DOWNTO 0)) ;
   end component ;
   component ReadLogic_12_40_true
      port (
         clk : IN std_logic ;
         resetState : IN std_logic ;
         switchRam : IN std_logic ;
         ramBasedAddress : IN std_logic_vector (11 DOWNTO 0) ;
         internalBus : OUT std_logic_vector (39 DOWNTO 0) ;
         ramDataInBus : IN std_logic_vector (39 DOWNTO 0) ;
         ramRead : OUT std_logic ;
         ramAddress : OUT std_logic_vector (11 DOWNTO 0) ;
         MFC : IN std_logic ;
         inputSize : IN std_logic_vector (11 DOWNTO 0) ;
         filterSize : IN std_logic_vector (11 DOWNTO 0) ;
         loadNextWordList : IN std_logic ;
         loadWord : IN std_logic ;
         finishSlice : IN std_logic ;
         readOne : OUT std_logic ;
         readFinal : OUT std_logic ;
         aluNumber : OUT std_logic_vector (2 DOWNTO 0)) ;
   end component ;
   component WriteLogic_13_16
      port (
         clk : IN std_logic ;
         resetState : IN std_logic ;
         switchRam : IN std_logic ;
         ramBasedAddress : IN std_logic_vector (12 DOWNTO 0) ;
         internalBus : IN std_logic_vector (15 DOWNTO 0) ;
         ramWrite : OUT std_logic ;
         ramDataOutBus : OUT std_logic_vector (15 DOWNTO 0) ;
         ramAddress : OUT std_logic_vector (12 DOWNTO 0) ;
         MFC : IN std_logic ;
         outputSize : IN std_logic_vector (12 DOWNTO 0) ;
         write : IN std_logic ;
         finishFilter : IN std_logic ;
         writeDoneOne : OUT std_logic) ;
   end component ;
   signal currentWriteRamBaseAddress_11, ramBaseAddressSelector, switchRam, 
      windowRLSwitchRam, writeFinishFilter, NOT_weightsSizeType, resetLogics, 
      weightsSizeForWindow_0, NOT_2428, nx20, nx22, nx25: std_logic ;
   
   signal DANGLING : std_logic_vector (151 downto 0 );

begin
   weightsInternalBus(39) <= resetLogics ;
   weightsInternalBus(38) <= resetLogics ;
   weightsInternalBus(37) <= resetLogics ;
   weightsInternalBus(36) <= resetLogics ;
   weightsInternalBus(35) <= resetLogics ;
   weightsInternalBus(34) <= resetLogics ;
   weightsInternalBus(33) <= resetLogics ;
   weightsInternalBus(32) <= resetLogics ;
   weightsInternalBus(31) <= resetLogics ;
   weightsInternalBus(30) <= resetLogics ;
   weightsInternalBus(29) <= resetLogics ;
   weightsInternalBus(28) <= resetLogics ;
   weightsInternalBus(27) <= resetLogics ;
   weightsInternalBus(26) <= resetLogics ;
   weightsInternalBus(25) <= resetLogics ;
   weightsInternalBus(24) <= resetLogics ;
   weightsInternalBus(18) <= resetLogics ;
   weightsInternalBus(17) <= resetLogics ;
   weightsInternalBus(16) <= resetLogics ;
   weightsInternalBus(10) <= resetLogics ;
   weightsInternalBus(9) <= resetLogics ;
   weightsInternalBus(8) <= resetLogics ;
   windowInternalBus(79) <= resetLogics ;
   windowInternalBus(78) <= resetLogics ;
   windowInternalBus(77) <= resetLogics ;
   windowInternalBus(76) <= resetLogics ;
   windowInternalBus(75) <= resetLogics ;
   windowInternalBus(74) <= resetLogics ;
   windowInternalBus(73) <= resetLogics ;
   windowInternalBus(72) <= resetLogics ;
   windowInternalBus(71) <= resetLogics ;
   windowInternalBus(70) <= resetLogics ;
   windowInternalBus(69) <= resetLogics ;
   windowInternalBus(68) <= resetLogics ;
   windowInternalBus(67) <= resetLogics ;
   windowInternalBus(66) <= resetLogics ;
   windowInternalBus(65) <= resetLogics ;
   windowInternalBus(64) <= resetLogics ;
   windowInternalBus(63) <= resetLogics ;
   windowInternalBus(62) <= resetLogics ;
   windowInternalBus(61) <= resetLogics ;
   windowInternalBus(60) <= resetLogics ;
   windowInternalBus(59) <= resetLogics ;
   windowInternalBus(58) <= resetLogics ;
   windowInternalBus(57) <= resetLogics ;
   windowInternalBus(56) <= resetLogics ;
   windowInternalBus(55) <= resetLogics ;
   windowInternalBus(54) <= resetLogics ;
   windowInternalBus(53) <= resetLogics ;
   windowInternalBus(52) <= resetLogics ;
   windowInternalBus(51) <= resetLogics ;
   windowInternalBus(50) <= resetLogics ;
   windowInternalBus(49) <= resetLogics ;
   windowInternalBus(48) <= resetLogics ;
   windowInternalBus(47) <= resetLogics ;
   windowInternalBus(46) <= resetLogics ;
   windowInternalBus(45) <= resetLogics ;
   windowInternalBus(44) <= resetLogics ;
   windowInternalBus(43) <= resetLogics ;
   windowInternalBus(42) <= resetLogics ;
   windowInternalBus(41) <= resetLogics ;
   windowInternalBus(40) <= resetLogics ;
   windowInternalBus(39) <= resetLogics ;
   windowInternalBus(38) <= resetLogics ;
   windowInternalBus(37) <= resetLogics ;
   windowInternalBus(36) <= resetLogics ;
   windowInternalBus(35) <= resetLogics ;
   windowInternalBus(34) <= resetLogics ;
   windowInternalBus(33) <= resetLogics ;
   windowInternalBus(32) <= resetLogics ;
   windowInternalBus(31) <= resetLogics ;
   windowInternalBus(30) <= resetLogics ;
   windowInternalBus(29) <= resetLogics ;
   windowInternalBus(28) <= resetLogics ;
   windowInternalBus(27) <= resetLogics ;
   windowInternalBus(26) <= resetLogics ;
   windowInternalBus(25) <= resetLogics ;
   windowInternalBus(24) <= resetLogics ;
   windowInternalBus(23) <= resetLogics ;
   windowInternalBus(22) <= resetLogics ;
   windowInternalBus(21) <= resetLogics ;
   windowInternalBus(20) <= resetLogics ;
   windowInternalBus(19) <= resetLogics ;
   windowInternalBus(18) <= resetLogics ;
   windowInternalBus(17) <= resetLogics ;
   windowInternalBus(16) <= resetLogics ;
   windowInternalBus(15) <= resetLogics ;
   windowInternalBus(14) <= resetLogics ;
   windowInternalBus(13) <= resetLogics ;
   windowInternalBus(12) <= resetLogics ;
   windowInternalBus(11) <= resetLogics ;
   windowInternalBus(10) <= resetLogics ;
   windowInternalBus(9) <= resetLogics ;
   windowInternalBus(8) <= resetLogics ;
   windowInternalBus(7) <= resetLogics ;
   windowInternalBus(6) <= resetLogics ;
   windowInternalBus(5) <= resetLogics ;
   windowInternalBus(4) <= resetLogics ;
   windowInternalBus(3) <= resetLogics ;
   windowInternalBus(2) <= resetLogics ;
   windowInternalBus(1) <= resetLogics ;
   windowInternalBus(0) <= resetLogics ;
   weightsRamAddress(11) <= resetLogics ;
   weightsRamAddress(10) <= resetLogics ;
   weightsRamAddress(9) <= resetLogics ;
   weightsRamAddress(8) <= resetLogics ;
   weightsRamAddress(7) <= resetLogics ;
   weightsRamAddress(6) <= resetLogics ;
   weightsRamAddress(5) <= resetLogics ;
   weightsRamAddress(4) <= resetLogics ;
   weightsRamAddress(3) <= resetLogics ;
   weightsRamAddress(2) <= resetLogics ;
   weightsRamAddress(1) <= resetLogics ;
   weightsRamAddress(0) <= resetLogics ;
   weightsRamRead <= resetLogics ;
   windowRamDataOutBus(15) <= resetLogics ;
   windowRamDataOutBus(14) <= resetLogics ;
   windowRamDataOutBus(13) <= resetLogics ;
   windowRamDataOutBus(12) <= resetLogics ;
   windowRamDataOutBus(11) <= resetLogics ;
   windowRamDataOutBus(10) <= resetLogics ;
   windowRamDataOutBus(9) <= resetLogics ;
   windowRamDataOutBus(8) <= resetLogics ;
   windowRamDataOutBus(7) <= resetLogics ;
   windowRamDataOutBus(6) <= resetLogics ;
   windowRamDataOutBus(5) <= resetLogics ;
   windowRamDataOutBus(4) <= resetLogics ;
   windowRamDataOutBus(3) <= resetLogics ;
   windowRamDataOutBus(2) <= resetLogics ;
   windowRamDataOutBus(1) <= resetLogics ;
   windowRamDataOutBus(0) <= resetLogics ;
   windowReadOne <= resetLogics ;
   weightsReadOne <= resetLogics ;
   weightsReadFinal <= resetLogics ;
   filterAluNumber(2) <= resetLogics ;
   filterAluNumber(1) <= resetLogics ;
   filterAluNumber(0) <= resetLogics ;
   windowAluNumber(2) <= resetLogics ;
   windowAluNumber(1) <= resetLogics ;
   windowAluNumber(0) <= resetLogics ;
   writeRamMux : Mux2_13 port map ( A(12)=>resetLogics, A(11)=>
      weightsSizeForWindow_0, A(10)=>weightsSizeForWindow_0, A(9)=>
      weightsSizeForWindow_0, A(8)=>weightsSizeForWindow_0, A(7)=>
      resetLogics, A(6)=>resetLogics, A(5)=>weightsSizeForWindow_0, A(4)=>
      resetLogics, A(3)=>resetLogics, A(2)=>resetLogics, A(1)=>resetLogics, 
      A(0)=>resetLogics, B(12)=>resetLogics, B(11)=>resetLogics, B(10)=>
      resetLogics, B(9)=>resetLogics, B(8)=>resetLogics, B(7)=>resetLogics, 
      B(6)=>resetLogics, B(5)=>resetLogics, B(4)=>resetLogics, B(3)=>
      resetLogics, B(2)=>resetLogics, B(1)=>resetLogics, B(0)=>resetLogics, 
      S=>ramBaseAddressSelector, C(12)=>DANGLING(0), C(11)=>
      currentWriteRamBaseAddress_11, C(10)=>DANGLING(1), C(9)=>DANGLING(2), 
      C(8)=>DANGLING(3), C(7)=>DANGLING(4), C(6)=>DANGLING(5), C(5)=>
      DANGLING(6), C(4)=>DANGLING(7), C(3)=>DANGLING(8), C(2)=>DANGLING(9), 
      C(1)=>DANGLING(10), C(0)=>DANGLING(11));
   windowReadLogicEnt : ReadLogic_13_80_false port map ( clk=>clk, 
      resetState=>resetLogics, switchRam=>windowRLSwitchRam, 
      ramBasedAddress(12)=>resetLogics, ramBasedAddress(11)=>
      ramBaseAddressSelector, ramBasedAddress(10)=>resetLogics, 
      ramBasedAddress(9)=>resetLogics, ramBasedAddress(8)=>resetLogics, 
      ramBasedAddress(7)=>resetLogics, ramBasedAddress(6)=>resetLogics, 
      ramBasedAddress(5)=>resetLogics, ramBasedAddress(4)=>resetLogics, 
      ramBasedAddress(3)=>resetLogics, ramBasedAddress(2)=>resetLogics, 
      ramBasedAddress(1)=>resetLogics, ramBasedAddress(0)=>resetLogics, 
      internalBus(79)=>DANGLING(12), internalBus(78)=>DANGLING(13), 
      internalBus(77)=>DANGLING(14), internalBus(76)=>DANGLING(15), 
      internalBus(75)=>DANGLING(16), internalBus(74)=>DANGLING(17), 
      internalBus(73)=>DANGLING(18), internalBus(72)=>DANGLING(19), 
      internalBus(71)=>DANGLING(20), internalBus(70)=>DANGLING(21), 
      internalBus(69)=>DANGLING(22), internalBus(68)=>DANGLING(23), 
      internalBus(67)=>DANGLING(24), internalBus(66)=>DANGLING(25), 
      internalBus(65)=>DANGLING(26), internalBus(64)=>DANGLING(27), 
      internalBus(63)=>DANGLING(28), internalBus(62)=>DANGLING(29), 
      internalBus(61)=>DANGLING(30), internalBus(60)=>DANGLING(31), 
      internalBus(59)=>DANGLING(32), internalBus(58)=>DANGLING(33), 
      internalBus(57)=>DANGLING(34), internalBus(56)=>DANGLING(35), 
      internalBus(55)=>DANGLING(36), internalBus(54)=>DANGLING(37), 
      internalBus(53)=>DANGLING(38), internalBus(52)=>DANGLING(39), 
      internalBus(51)=>DANGLING(40), internalBus(50)=>DANGLING(41), 
      internalBus(49)=>DANGLING(42), internalBus(48)=>DANGLING(43), 
      internalBus(47)=>DANGLING(44), internalBus(46)=>DANGLING(45), 
      internalBus(45)=>DANGLING(46), internalBus(44)=>DANGLING(47), 
      internalBus(43)=>DANGLING(48), internalBus(42)=>DANGLING(49), 
      internalBus(41)=>DANGLING(50), internalBus(40)=>DANGLING(51), 
      internalBus(39)=>DANGLING(52), internalBus(38)=>DANGLING(53), 
      internalBus(37)=>DANGLING(54), internalBus(36)=>DANGLING(55), 
      internalBus(35)=>DANGLING(56), internalBus(34)=>DANGLING(57), 
      internalBus(33)=>DANGLING(58), internalBus(32)=>DANGLING(59), 
      internalBus(31)=>DANGLING(60), internalBus(30)=>DANGLING(61), 
      internalBus(29)=>DANGLING(62), internalBus(28)=>DANGLING(63), 
      internalBus(27)=>DANGLING(64), internalBus(26)=>DANGLING(65), 
      internalBus(25)=>DANGLING(66), internalBus(24)=>DANGLING(67), 
      internalBus(23)=>DANGLING(68), internalBus(22)=>DANGLING(69), 
      internalBus(21)=>DANGLING(70), internalBus(20)=>DANGLING(71), 
      internalBus(19)=>DANGLING(72), internalBus(18)=>DANGLING(73), 
      internalBus(17)=>DANGLING(74), internalBus(16)=>DANGLING(75), 
      internalBus(15)=>DANGLING(76), internalBus(14)=>DANGLING(77), 
      internalBus(13)=>DANGLING(78), internalBus(12)=>DANGLING(79), 
      internalBus(11)=>DANGLING(80), internalBus(10)=>DANGLING(81), 
      internalBus(9)=>DANGLING(82), internalBus(8)=>DANGLING(83), 
      internalBus(7)=>DANGLING(84), internalBus(6)=>DANGLING(85), 
      internalBus(5)=>DANGLING(86), internalBus(4)=>DANGLING(87), 
      internalBus(3)=>DANGLING(88), internalBus(2)=>DANGLING(89), 
      internalBus(1)=>DANGLING(90), internalBus(0)=>DANGLING(91), 
      ramDataInBus(79)=>resetLogics, ramDataInBus(78)=>resetLogics, 
      ramDataInBus(77)=>resetLogics, ramDataInBus(76)=>resetLogics, 
      ramDataInBus(75)=>resetLogics, ramDataInBus(74)=>resetLogics, 
      ramDataInBus(73)=>resetLogics, ramDataInBus(72)=>resetLogics, 
      ramDataInBus(71)=>resetLogics, ramDataInBus(70)=>resetLogics, 
      ramDataInBus(69)=>resetLogics, ramDataInBus(68)=>resetLogics, 
      ramDataInBus(67)=>resetLogics, ramDataInBus(66)=>resetLogics, 
      ramDataInBus(65)=>resetLogics, ramDataInBus(64)=>resetLogics, 
      ramDataInBus(63)=>resetLogics, ramDataInBus(62)=>resetLogics, 
      ramDataInBus(61)=>resetLogics, ramDataInBus(60)=>resetLogics, 
      ramDataInBus(59)=>resetLogics, ramDataInBus(58)=>resetLogics, 
      ramDataInBus(57)=>resetLogics, ramDataInBus(56)=>resetLogics, 
      ramDataInBus(55)=>resetLogics, ramDataInBus(54)=>resetLogics, 
      ramDataInBus(53)=>resetLogics, ramDataInBus(52)=>resetLogics, 
      ramDataInBus(51)=>resetLogics, ramDataInBus(50)=>resetLogics, 
      ramDataInBus(49)=>resetLogics, ramDataInBus(48)=>resetLogics, 
      ramDataInBus(47)=>resetLogics, ramDataInBus(46)=>resetLogics, 
      ramDataInBus(45)=>resetLogics, ramDataInBus(44)=>resetLogics, 
      ramDataInBus(43)=>resetLogics, ramDataInBus(42)=>resetLogics, 
      ramDataInBus(41)=>resetLogics, ramDataInBus(40)=>resetLogics, 
      ramDataInBus(39)=>resetLogics, ramDataInBus(38)=>resetLogics, 
      ramDataInBus(37)=>resetLogics, ramDataInBus(36)=>resetLogics, 
      ramDataInBus(35)=>resetLogics, ramDataInBus(34)=>resetLogics, 
      ramDataInBus(33)=>resetLogics, ramDataInBus(32)=>resetLogics, 
      ramDataInBus(31)=>resetLogics, ramDataInBus(30)=>resetLogics, 
      ramDataInBus(29)=>resetLogics, ramDataInBus(28)=>resetLogics, 
      ramDataInBus(27)=>resetLogics, ramDataInBus(26)=>resetLogics, 
      ramDataInBus(25)=>resetLogics, ramDataInBus(24)=>resetLogics, 
      ramDataInBus(23)=>resetLogics, ramDataInBus(22)=>resetLogics, 
      ramDataInBus(21)=>resetLogics, ramDataInBus(20)=>resetLogics, 
      ramDataInBus(19)=>resetLogics, ramDataInBus(18)=>resetLogics, 
      ramDataInBus(17)=>resetLogics, ramDataInBus(16)=>resetLogics, 
      ramDataInBus(15)=>resetLogics, ramDataInBus(14)=>resetLogics, 
      ramDataInBus(13)=>resetLogics, ramDataInBus(12)=>resetLogics, 
      ramDataInBus(11)=>resetLogics, ramDataInBus(10)=>resetLogics, 
      ramDataInBus(9)=>resetLogics, ramDataInBus(8)=>resetLogics, 
      ramDataInBus(7)=>resetLogics, ramDataInBus(6)=>resetLogics, 
      ramDataInBus(5)=>resetLogics, ramDataInBus(4)=>resetLogics, 
      ramDataInBus(3)=>resetLogics, ramDataInBus(2)=>resetLogics, 
      ramDataInBus(1)=>resetLogics, ramDataInBus(0)=>resetLogics, ramRead=>
      windowRamRead, ramAddress(12)=>windowRamAddressRead(12), 
      ramAddress(11)=>windowRamAddressRead(11), ramAddress(10)=>
      windowRamAddressRead(10), ramAddress(9)=>windowRamAddressRead(9), 
      ramAddress(8)=>windowRamAddressRead(8), ramAddress(7)=>
      windowRamAddressRead(7), ramAddress(6)=>windowRamAddressRead(6), 
      ramAddress(5)=>windowRamAddressRead(5), ramAddress(4)=>
      windowRamAddressRead(4), ramAddress(3)=>windowRamAddressRead(3), 
      ramAddress(2)=>windowRamAddressRead(2), ramAddress(1)=>
      windowRamAddressRead(1), ramAddress(0)=>windowRamAddressRead(0), MFC=>
      MFCWindowRam, inputSize(12)=>resetLogics, inputSize(11)=>resetLogics, 
      inputSize(10)=>resetLogics, inputSize(9)=>resetLogics, inputSize(8)=>
      resetLogics, inputSize(7)=>resetLogics, inputSize(6)=>resetLogics, 
      inputSize(5)=>resetLogics, inputSize(4)=>inputSize(4), inputSize(3)=>
      inputSize(3), inputSize(2)=>inputSize(2), inputSize(1)=>inputSize(1), 
      inputSize(0)=>inputSize(0), filterSize(12)=>resetLogics, 
      filterSize(11)=>resetLogics, filterSize(10)=>resetLogics, 
      filterSize(9)=>resetLogics, filterSize(8)=>resetLogics, filterSize(7)
      =>resetLogics, filterSize(6)=>resetLogics, filterSize(5)=>resetLogics, 
      filterSize(4)=>resetLogics, filterSize(3)=>resetLogics, filterSize(2)
      =>weightsSizeType, filterSize(1)=>NOT_weightsSizeType, filterSize(0)=>
      weightsSizeForWindow_0, loadNextWordList=>loadNextWindow, loadWord=>
      loadNextRow, finishSlice=>sliceFinished, readOne=>DANGLING(92), 
      readFinal=>windowReadFinal, aluNumber(2)=>DANGLING(93), aluNumber(1)=>
      DANGLING(94), aluNumber(0)=>DANGLING(95));
   filterReadLogicEnt : ReadLogic_12_40_true port map ( clk=>resetLogics, 
      resetState=>resetLogics, switchRam=>resetLogics, ramBasedAddress(11)=>
      resetLogics, ramBasedAddress(10)=>resetLogics, ramBasedAddress(9)=>
      resetLogics, ramBasedAddress(8)=>resetLogics, ramBasedAddress(7)=>
      resetLogics, ramBasedAddress(6)=>resetLogics, ramBasedAddress(5)=>
      resetLogics, ramBasedAddress(4)=>resetLogics, ramBasedAddress(3)=>
      resetLogics, ramBasedAddress(2)=>resetLogics, ramBasedAddress(1)=>
      resetLogics, ramBasedAddress(0)=>resetLogics, internalBus(39)=>
      DANGLING(96), internalBus(38)=>DANGLING(97), internalBus(37)=>DANGLING
      (98), internalBus(36)=>DANGLING(99), internalBus(35)=>DANGLING(100), 
      internalBus(34)=>DANGLING(101), internalBus(33)=>DANGLING(102), 
      internalBus(32)=>DANGLING(103), internalBus(31)=>DANGLING(104), 
      internalBus(30)=>DANGLING(105), internalBus(29)=>DANGLING(106), 
      internalBus(28)=>DANGLING(107), internalBus(27)=>DANGLING(108), 
      internalBus(26)=>DANGLING(109), internalBus(25)=>DANGLING(110), 
      internalBus(24)=>DANGLING(111), internalBus(23)=>
      weightsInternalBus(23), internalBus(22)=>weightsInternalBus(22), 
      internalBus(21)=>weightsInternalBus(21), internalBus(20)=>
      weightsInternalBus(20), internalBus(19)=>weightsInternalBus(19), 
      internalBus(18)=>DANGLING(112), internalBus(17)=>DANGLING(113), 
      internalBus(16)=>DANGLING(114), internalBus(15)=>
      weightsInternalBus(15), internalBus(14)=>weightsInternalBus(14), 
      internalBus(13)=>weightsInternalBus(13), internalBus(12)=>
      weightsInternalBus(12), internalBus(11)=>weightsInternalBus(11), 
      internalBus(10)=>DANGLING(115), internalBus(9)=>DANGLING(116), 
      internalBus(8)=>DANGLING(117), internalBus(7)=>weightsInternalBus(7), 
      internalBus(6)=>weightsInternalBus(6), internalBus(5)=>
      weightsInternalBus(5), internalBus(4)=>weightsInternalBus(4), 
      internalBus(3)=>weightsInternalBus(3), internalBus(2)=>
      weightsInternalBus(2), internalBus(1)=>weightsInternalBus(1), 
      internalBus(0)=>weightsInternalBus(0), ramDataInBus(39)=>resetLogics, 
      ramDataInBus(38)=>resetLogics, ramDataInBus(37)=>resetLogics, 
      ramDataInBus(36)=>resetLogics, ramDataInBus(35)=>resetLogics, 
      ramDataInBus(34)=>resetLogics, ramDataInBus(33)=>resetLogics, 
      ramDataInBus(32)=>resetLogics, ramDataInBus(31)=>resetLogics, 
      ramDataInBus(30)=>resetLogics, ramDataInBus(29)=>resetLogics, 
      ramDataInBus(28)=>resetLogics, ramDataInBus(27)=>resetLogics, 
      ramDataInBus(26)=>resetLogics, ramDataInBus(25)=>resetLogics, 
      ramDataInBus(24)=>resetLogics, ramDataInBus(23)=>resetLogics, 
      ramDataInBus(22)=>resetLogics, ramDataInBus(21)=>resetLogics, 
      ramDataInBus(20)=>resetLogics, ramDataInBus(19)=>resetLogics, 
      ramDataInBus(18)=>resetLogics, ramDataInBus(17)=>resetLogics, 
      ramDataInBus(16)=>resetLogics, ramDataInBus(15)=>resetLogics, 
      ramDataInBus(14)=>resetLogics, ramDataInBus(13)=>resetLogics, 
      ramDataInBus(12)=>resetLogics, ramDataInBus(11)=>resetLogics, 
      ramDataInBus(10)=>resetLogics, ramDataInBus(9)=>resetLogics, 
      ramDataInBus(8)=>resetLogics, ramDataInBus(7)=>resetLogics, 
      ramDataInBus(6)=>resetLogics, ramDataInBus(5)=>resetLogics, 
      ramDataInBus(4)=>resetLogics, ramDataInBus(3)=>resetLogics, 
      ramDataInBus(2)=>resetLogics, ramDataInBus(1)=>resetLogics, 
      ramDataInBus(0)=>resetLogics, ramRead=>DANGLING(118), ramAddress(11)=>
      DANGLING(119), ramAddress(10)=>DANGLING(120), ramAddress(9)=>DANGLING(
      121), ramAddress(8)=>DANGLING(122), ramAddress(7)=>DANGLING(123), 
      ramAddress(6)=>DANGLING(124), ramAddress(5)=>DANGLING(125), 
      ramAddress(4)=>DANGLING(126), ramAddress(3)=>DANGLING(127), 
      ramAddress(2)=>DANGLING(128), ramAddress(1)=>DANGLING(129), 
      ramAddress(0)=>DANGLING(130), MFC=>resetLogics, inputSize(11)=>
      resetLogics, inputSize(10)=>resetLogics, inputSize(9)=>resetLogics, 
      inputSize(8)=>resetLogics, inputSize(7)=>resetLogics, inputSize(6)=>
      resetLogics, inputSize(5)=>resetLogics, inputSize(4)=>resetLogics, 
      inputSize(3)=>resetLogics, inputSize(2)=>resetLogics, inputSize(1)=>
      resetLogics, inputSize(0)=>weightsSizeForWindow_0, filterSize(11)=>
      resetLogics, filterSize(10)=>resetLogics, filterSize(9)=>resetLogics, 
      filterSize(8)=>resetLogics, filterSize(7)=>resetLogics, filterSize(6)
      =>resetLogics, filterSize(5)=>resetLogics, filterSize(4)=>resetLogics, 
      filterSize(3)=>resetLogics, filterSize(2)=>resetLogics, filterSize(1)
      =>resetLogics, filterSize(0)=>weightsSizeForWindow_0, loadNextWordList
      =>resetLogics, loadWord=>resetLogics, finishSlice=>resetLogics, 
      readOne=>DANGLING(131), readFinal=>DANGLING(132), aluNumber(2)=>
      DANGLING(133), aluNumber(1)=>DANGLING(134), aluNumber(0)=>DANGLING(135
      ));
   writeLogicEnt : WriteLogic_13_16 port map ( clk=>clk, resetState=>
      resetLogics, switchRam=>switchRam, ramBasedAddress(12)=>resetLogics, 
      ramBasedAddress(11)=>currentWriteRamBaseAddress_11, 
      ramBasedAddress(10)=>resetLogics, ramBasedAddress(9)=>resetLogics, 
      ramBasedAddress(8)=>resetLogics, ramBasedAddress(7)=>resetLogics, 
      ramBasedAddress(6)=>resetLogics, ramBasedAddress(5)=>resetLogics, 
      ramBasedAddress(4)=>resetLogics, ramBasedAddress(3)=>resetLogics, 
      ramBasedAddress(2)=>resetLogics, ramBasedAddress(1)=>resetLogics, 
      ramBasedAddress(0)=>resetLogics, internalBus(15)=>resetLogics, 
      internalBus(14)=>resetLogics, internalBus(13)=>resetLogics, 
      internalBus(12)=>resetLogics, internalBus(11)=>resetLogics, 
      internalBus(10)=>resetLogics, internalBus(9)=>resetLogics, 
      internalBus(8)=>resetLogics, internalBus(7)=>resetLogics, 
      internalBus(6)=>resetLogics, internalBus(5)=>resetLogics, 
      internalBus(4)=>resetLogics, internalBus(3)=>resetLogics, 
      internalBus(2)=>resetLogics, internalBus(1)=>resetLogics, 
      internalBus(0)=>resetLogics, ramWrite=>windowRamWrite, 
      ramDataOutBus(15)=>DANGLING(136), ramDataOutBus(14)=>DANGLING(137), 
      ramDataOutBus(13)=>DANGLING(138), ramDataOutBus(12)=>DANGLING(139), 
      ramDataOutBus(11)=>DANGLING(140), ramDataOutBus(10)=>DANGLING(141), 
      ramDataOutBus(9)=>DANGLING(142), ramDataOutBus(8)=>DANGLING(143), 
      ramDataOutBus(7)=>DANGLING(144), ramDataOutBus(6)=>DANGLING(145), 
      ramDataOutBus(5)=>DANGLING(146), ramDataOutBus(4)=>DANGLING(147), 
      ramDataOutBus(3)=>DANGLING(148), ramDataOutBus(2)=>DANGLING(149), 
      ramDataOutBus(1)=>DANGLING(150), ramDataOutBus(0)=>DANGLING(151), 
      ramAddress(12)=>windowRamAddressWrite(12), ramAddress(11)=>
      windowRamAddressWrite(11), ramAddress(10)=>windowRamAddressWrite(10), 
      ramAddress(9)=>windowRamAddressWrite(9), ramAddress(8)=>
      windowRamAddressWrite(8), ramAddress(7)=>windowRamAddressWrite(7), 
      ramAddress(6)=>windowRamAddressWrite(6), ramAddress(5)=>
      windowRamAddressWrite(5), ramAddress(4)=>windowRamAddressWrite(4), 
      ramAddress(3)=>windowRamAddressWrite(3), ramAddress(2)=>
      windowRamAddressWrite(2), ramAddress(1)=>windowRamAddressWrite(1), 
      ramAddress(0)=>windowRamAddressWrite(0), MFC=>MFCWrite, outputSize(12)
      =>resetLogics, outputSize(11)=>resetLogics, outputSize(10)=>
      resetLogics, outputSize(9)=>resetLogics, outputSize(8)=>resetLogics, 
      outputSize(7)=>resetLogics, outputSize(6)=>resetLogics, outputSize(5)
      =>outputSize(5), outputSize(4)=>outputSize(4), outputSize(3)=>
      outputSize(3), outputSize(2)=>outputSize(2), outputSize(1)=>
      outputSize(1), outputSize(0)=>outputSize(0), write=>write, 
      finishFilter=>writeFinishFilter, writeDoneOne=>writeDoneOne);
   ix4 : fake_vcc port map ( Y=>weightsSizeForWindow_0);
   ix2 : fake_gnd port map ( Y=>resetLogics);
   ix18 : inv01 port map ( Y=>NOT_weightsSizeType, A=>weightsSizeType);
   ix15 : nand02 port map ( Y=>writeFinishFilter, A0=>nx20, A1=>nx22);
   ix21 : nand02 port map ( Y=>nx20, A0=>sliceFinished, A1=>layerType);
   ix23 : inv01 port map ( Y=>nx22, A=>filterFinished);
   ix9 : nand02 port map ( Y=>windowRLSwitchRam, A0=>nx25, A1=>nx22);
   ix26 : nor02_2x port map ( Y=>nx25, A0=>reset, A1=>layerFinished);
   ix7 : inv01 port map ( Y=>switchRam, A=>nx25);
   reg_ramBaseAddressSelector : dffr port map ( Q=>ramBaseAddressSelector, 
      QB=>NOT_2428, D=>NOT_2428, CLK=>layerFinished, R=>reset);
end DMAControllerArch_unfold_3463 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Reg_2_unfolded1 is
   port (
      D : IN std_logic_vector (1 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      Q : OUT std_logic_vector (1 DOWNTO 0)) ;
end Reg_2_unfolded1 ;

architecture RegArch_unfold_2044_xmplrcopy of Reg_2_unfolded1 is
   signal Q_0_EXMPLR: std_logic ;

begin
   Q(1) <= Q_0_EXMPLR ;
   Q(0) <= Q_0_EXMPLR ;
   ix43 : fake_gnd port map ( Y=>Q_0_EXMPLR);
end RegArch_unfold_2044_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Reg_3_unfolded3 is
   port (
      D : IN std_logic_vector (2 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      Q : OUT std_logic_vector (2 DOWNTO 0)) ;
end Reg_3_unfolded3 ;

architecture RegArch_unfold_2200_xmplrcopy of Reg_3_unfolded3 is
   signal Q_0_EXMPLR: std_logic ;

begin
   Q(2) <= Q_0_EXMPLR ;
   Q(1) <= Q_0_EXMPLR ;
   Q(0) <= Q_0_EXMPLR ;
   ix43 : fake_gnd port map ( Y=>Q_0_EXMPLR);
end RegArch_unfold_2200_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Reg_5_unfolded3 is
   port (
      D : IN std_logic_vector (4 DOWNTO 0) ;
      en : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      Q : OUT std_logic_vector (4 DOWNTO 0)) ;
end Reg_5_unfolded3 ;

architecture RegArch_unfold_2138_xmplrcopy of Reg_5_unfolded3 is
   signal Q_0_EXMPLR: std_logic ;

begin
   Q(4) <= Q_0_EXMPLR ;
   Q(3) <= Q_0_EXMPLR ;
   Q(2) <= Q_0_EXMPLR ;
   Q(1) <= Q_0_EXMPLR ;
   Q(0) <= Q_0_EXMPLR ;
   ix43 : fake_gnd port map ( Y=>Q_0_EXMPLR);
end RegArch_unfold_2138_xmplrcopy ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Config_40 is
   port (
      filterBus : IN std_logic_vector (39 DOWNTO 0) ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      readNumLayers : IN std_logic ;
      readLayerConfig : IN std_logic ;
      numLayers : OUT std_logic_vector (1 DOWNTO 0) ;
      layerType : OUT std_logic ;
      filterType : OUT std_logic ;
      numFilters : OUT std_logic_vector (2 DOWNTO 0) ;
      filterDepth : OUT std_logic_vector (2 DOWNTO 0) ;
      inputSize : OUT std_logic_vector (4 DOWNTO 0) ;
      outputSize : OUT std_logic_vector (4 DOWNTO 0)) ;
end Config_40 ;

architecture ConfigArch_unfold_2599 of Config_40 is
   component Reg_2_unfolded1
      port (
         D : IN std_logic_vector (1 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (1 DOWNTO 0)) ;
   end component ;
   component Reg_3_unfolded3
      port (
         D : IN std_logic_vector (2 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (2 DOWNTO 0)) ;
   end component ;
   component Reg_5_unfolded3
      port (
         D : IN std_logic_vector (4 DOWNTO 0) ;
         en : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         Q : OUT std_logic_vector (4 DOWNTO 0)) ;
   end component ;
   signal numLayers_1_EXMPLR, layerType_EXMPLR, numFilters_2_EXMPLR, 
      filterDepth_2_EXMPLR, inputSize_4_EXMPLR, outputSize_4_EXMPLR, 
      readNumLayers_EXMPLR: std_logic ;
   
   signal DANGLING : std_logic_vector (13 downto 0 );

begin
   numLayers(1) <= numLayers_1_EXMPLR ;
   numLayers(0) <= numLayers_1_EXMPLR ;
   layerType <= layerType_EXMPLR ;
   filterType <= layerType_EXMPLR ;
   numFilters(2) <= numFilters_2_EXMPLR ;
   numFilters(1) <= numFilters_2_EXMPLR ;
   numFilters(0) <= numFilters_2_EXMPLR ;
   filterDepth(2) <= filterDepth_2_EXMPLR ;
   filterDepth(1) <= filterDepth_2_EXMPLR ;
   filterDepth(0) <= filterDepth_2_EXMPLR ;
   inputSize(4) <= inputSize_4_EXMPLR ;
   inputSize(3) <= inputSize_4_EXMPLR ;
   inputSize(2) <= inputSize_4_EXMPLR ;
   inputSize(1) <= inputSize_4_EXMPLR ;
   inputSize(0) <= inputSize_4_EXMPLR ;
   outputSize(4) <= outputSize_4_EXMPLR ;
   outputSize(3) <= outputSize_4_EXMPLR ;
   outputSize(2) <= outputSize_4_EXMPLR ;
   outputSize(1) <= outputSize_4_EXMPLR ;
   outputSize(0) <= outputSize_4_EXMPLR ;
   numLayerRegMap : Reg_2_unfolded1 port map ( D(1)=>readNumLayers_EXMPLR, 
      D(0)=>readNumLayers_EXMPLR, en=>readNumLayers_EXMPLR, clk=>
      readNumLayers_EXMPLR, rst=>readNumLayers_EXMPLR, Q(1)=>
      numLayers_1_EXMPLR, Q(0)=>DANGLING(0));
   numFiltersRegMap : Reg_3_unfolded3 port map ( D(2)=>readNumLayers_EXMPLR, 
      D(1)=>readNumLayers_EXMPLR, D(0)=>readNumLayers_EXMPLR, en=>
      readNumLayers_EXMPLR, clk=>readNumLayers_EXMPLR, rst=>
      readNumLayers_EXMPLR, Q(2)=>numFilters_2_EXMPLR, Q(1)=>DANGLING(1), 
      Q(0)=>DANGLING(2));
   filterDepthRegMap : Reg_3_unfolded3 port map ( D(2)=>readNumLayers_EXMPLR, 
      D(1)=>readNumLayers_EXMPLR, D(0)=>readNumLayers_EXMPLR, en=>
      readNumLayers_EXMPLR, clk=>readNumLayers_EXMPLR, rst=>
      readNumLayers_EXMPLR, Q(2)=>filterDepth_2_EXMPLR, Q(1)=>DANGLING(3), 
      Q(0)=>DANGLING(4));
   layerTypeRegMap : Reg_2_unfolded1 port map ( D(1)=>readNumLayers_EXMPLR, 
      D(0)=>readNumLayers_EXMPLR, en=>readNumLayers_EXMPLR, clk=>
      readNumLayers_EXMPLR, rst=>readNumLayers_EXMPLR, Q(1)=>
      layerType_EXMPLR, Q(0)=>DANGLING(5));
   inputSizeRegMap : Reg_5_unfolded3 port map ( D(4)=>readNumLayers_EXMPLR, 
      D(3)=>readNumLayers_EXMPLR, D(2)=>readNumLayers_EXMPLR, D(1)=>
      readNumLayers_EXMPLR, D(0)=>readNumLayers_EXMPLR, en=>
      readNumLayers_EXMPLR, clk=>readNumLayers_EXMPLR, rst=>
      readNumLayers_EXMPLR, Q(4)=>inputSize_4_EXMPLR, Q(3)=>DANGLING(6), 
      Q(2)=>DANGLING(7), Q(1)=>DANGLING(8), Q(0)=>DANGLING(9));
   outputSizeRegMap : Reg_5_unfolded3 port map ( D(4)=>readNumLayers_EXMPLR, 
      D(3)=>readNumLayers_EXMPLR, D(2)=>readNumLayers_EXMPLR, D(1)=>
      readNumLayers_EXMPLR, D(0)=>readNumLayers_EXMPLR, en=>
      readNumLayers_EXMPLR, clk=>readNumLayers_EXMPLR, rst=>
      readNumLayers_EXMPLR, Q(4)=>outputSize_4_EXMPLR, Q(3)=>DANGLING(10), 
      Q(2)=>DANGLING(11), Q(1)=>DANGLING(12), Q(0)=>DANGLING(13));
   ix44 : fake_gnd port map ( Y=>readNumLayers_EXMPLR);
end ConfigArch_unfold_2599 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CNNModule_8_16_5_5_3_12_13 is
   port (
      startCNN : IN std_logic ;
      clk : IN std_logic ;
      rst : IN std_logic ;
      weightsRamDataInBus : IN std_logic_vector (39 DOWNTO 0) ;
      windowRamDataInBus : IN std_logic_vector (79 DOWNTO 0) ;
      MFCWindowRam : IN std_logic ;
      MFCWeightsRam : IN std_logic ;
      MFCWrite : IN std_logic ;
      weightsRamAddress : OUT std_logic_vector (11 DOWNTO 0) ;
      windowRamAddressRead : OUT std_logic_vector (12 DOWNTO 0) ;
      windowRamAddressWrite : OUT std_logic_vector (12 DOWNTO 0) ;
      weightsRamRead : OUT std_logic ;
      windowRamRead : OUT std_logic ;
      windowRamWrite : OUT std_logic ;
      windowRamDataOutBus : OUT std_logic_vector (15 DOWNTO 0) ;
      finishNetwork : OUT std_logic) ;
end CNNModule_8_16_5_5_3_12_13 ;

architecture CNNModuleArch_unfold_1785 of CNNModule_8_16_5_5_3_12_13 is
   component CNNCores_8_16_5_5_3
      port (
         filterBus : IN std_logic_vector (39 DOWNTO 0) ;
         windowBus : IN std_logic_vector (79 DOWNTO 0) ;
         decoderRow : IN std_logic_vector (2 DOWNTO 0) ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         writePage1 : IN std_logic ;
         writePage2 : IN std_logic ;
         writeFilter : IN std_logic ;
         shift2To1 : IN std_logic ;
         shift1To2 : IN std_logic ;
         pageTurn : IN std_logic ;
         start : IN std_logic ;
         layerType : IN std_logic ;
         filterType : IN std_logic ;
         doneCores : OUT std_logic ;
         finalSumConv : OUT std_logic_vector (15 DOWNTO 0)) ;
   
   end component ;
   component ControlUnit
      port (
         clk : IN std_logic ;
         layersNumber : IN std_logic_vector (1 DOWNTO 0) ;
         filtersNumber : IN std_logic_vector (2 DOWNTO 0) ;
         filterDepth : IN std_logic_vector (2 DOWNTO 0) ;
         filterOutputSize : IN std_logic_vector (4 DOWNTO 0) ;
         startNetwork : IN std_logic ;
         layerType : IN std_logic ;
         convFinish : IN std_logic ;
         dmaAFinish : IN std_logic ;
         dmaBFinish : IN std_logic ;
         dmaCFinish : IN std_logic ;
         resetNetwork : IN std_logic ;
         sliceFirstLoad : OUT std_logic ;
         loadLayerConfig : OUT std_logic ;
         loadNetworkConfig : OUT std_logic ;
         loadFilterConfig : OUT std_logic ;
         loadWindow : OUT std_logic ;
         loadFilter : OUT std_logic ;
         conv : OUT std_logic ;
         pool : OUT std_logic ;
         shift12 : OUT std_logic ;
         shift21 : OUT std_logic ;
         readNextCol : OUT std_logic ;
         addToOutputBuffer : OUT std_logic ;
         outputBufferEn : OUT std_logic ;
         saveToRAM : OUT std_logic ;
         currentPage : OUT std_logic_vector (0 DOWNTO 0) ;
         finishCurrentSlice : OUT std_logic ;
         finishFilter : OUT std_logic ;
         finishOneLayer : OUT std_logic ;
         finishNetwork : OUT std_logic) ;
   end component ;
   component NBitAdder_13
      port (
         a : IN std_logic_vector (12 DOWNTO 0) ;
         b : IN std_logic_vector (12 DOWNTO 0) ;
         carryIn : IN std_logic ;
         sum : OUT std_logic_vector (12 DOWNTO 0) ;
         carryOut : OUT std_logic) ;
   end component ;
   component DMAController_12_13_8_16_5
      port (
         clk : IN std_logic ;
         reset : IN std_logic ;
         weightsInternalBus : OUT std_logic_vector (39 DOWNTO 0) ;
         windowInternalBus : OUT std_logic_vector (79 DOWNTO 0) ;
         writeInternalBus : IN std_logic_vector (15 DOWNTO 0) ;
         weightsRamAddress : OUT std_logic_vector (11 DOWNTO 0) ;
         windowRamAddressRead : OUT std_logic_vector (12 DOWNTO 0) ;
         windowRamAddressWrite : OUT std_logic_vector (12 DOWNTO 0) ;
         weightsRamDataInBus : IN std_logic_vector (39 DOWNTO 0) ;
         windowRamDataInBus : IN std_logic_vector (79 DOWNTO 0) ;
         weightsRamRead : OUT std_logic ;
         windowRamRead : OUT std_logic ;
         windowRamWrite : OUT std_logic ;
         windowRamDataOutBus : OUT std_logic_vector (15 DOWNTO 0) ;
         MFCWindowRam : IN std_logic ;
         MFCWeightsRam : IN std_logic ;
         MFCWrite : IN std_logic ;
         loadNextFilter : IN std_logic ;
         loadNextWindow : IN std_logic ;
         loadNextRow : IN std_logic ;
         loadOneWord : IN std_logic ;
         loadThreeWord : IN std_logic ;
         filterFinished : IN std_logic ;
         sliceFinished : IN std_logic ;
         layerFinished : IN std_logic ;
         layerType : IN std_logic ;
         write : IN std_logic ;
         weightsSizeType : IN std_logic ;
         inputSize : IN std_logic_vector (12 DOWNTO 0) ;
         outputSize : IN std_logic_vector (12 DOWNTO 0) ;
         windowRamBaseAddress1 : IN std_logic_vector (12 DOWNTO 0) ;
         windowRamBaseAddress2 : IN std_logic_vector (12 DOWNTO 0) ;
         filterRamBaseAddress : IN std_logic_vector (11 DOWNTO 0) ;
         windowReadOne : OUT std_logic ;
         windowReadFinal : OUT std_logic ;
         weightsReadOne : OUT std_logic ;
         weightsReadFinal : OUT std_logic ;
         writeDoneOne : OUT std_logic ;
         filterAluNumber : OUT std_logic_vector (2 DOWNTO 0) ;
         windowAluNumber : OUT std_logic_vector (2 DOWNTO 0)) ;
   
   end component ;
   component Config_40
      port (
         filterBus : IN std_logic_vector (39 DOWNTO 0) ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         readNumLayers : IN std_logic ;
         readLayerConfig : IN std_logic ;
         numLayers : OUT std_logic_vector (1 DOWNTO 0) ;
         layerType : OUT std_logic ;
         filterType : OUT std_logic ;
         numFilters : OUT std_logic_vector (2 DOWNTO 0) ;
         filterDepth : OUT std_logic_vector (2 DOWNTO 0) ;
         inputSize : OUT std_logic_vector (4 DOWNTO 0) ;
         outputSize : OUT std_logic_vector (4 DOWNTO 0)) ;
   end component ;
   signal conv, pool, layerType, doneCores, startConv, readAllFinish, 
      writeOneFinish, loadWindow, readNextCol, finishLayer, finishSlice, 
      inputSizeAddress_4, outputSizeAddress_4, outputSizeAddressForDMA_5, 
      outputSizeAddressForDMA_4, outputSizeAddressForDMA_3, 
      outputSizeAddressForDMA_2, outputSizeAddressForDMA_1, 
      outputSizeAddressForDMA_0, layersNumber_1, filtersNumber_2, 
      filterDepth_2, saveToRAM, finishFilter, baseAddressTwo_11, 
      inputSizeAddress_12, nx10: std_logic ;
   
   signal DANGLING : std_logic_vector (205 downto 0 );

begin
   weightsRamAddress(11) <= inputSizeAddress_12 ;
   weightsRamAddress(10) <= inputSizeAddress_12 ;
   weightsRamAddress(9) <= inputSizeAddress_12 ;
   weightsRamAddress(8) <= inputSizeAddress_12 ;
   weightsRamAddress(7) <= inputSizeAddress_12 ;
   weightsRamAddress(6) <= inputSizeAddress_12 ;
   weightsRamAddress(5) <= inputSizeAddress_12 ;
   weightsRamAddress(4) <= inputSizeAddress_12 ;
   weightsRamAddress(3) <= inputSizeAddress_12 ;
   weightsRamAddress(2) <= inputSizeAddress_12 ;
   weightsRamAddress(1) <= inputSizeAddress_12 ;
   weightsRamAddress(0) <= inputSizeAddress_12 ;
   weightsRamRead <= inputSizeAddress_12 ;
   windowRamDataOutBus(15) <= inputSizeAddress_12 ;
   windowRamDataOutBus(14) <= inputSizeAddress_12 ;
   windowRamDataOutBus(13) <= inputSizeAddress_12 ;
   windowRamDataOutBus(12) <= inputSizeAddress_12 ;
   windowRamDataOutBus(11) <= inputSizeAddress_12 ;
   windowRamDataOutBus(10) <= inputSizeAddress_12 ;
   windowRamDataOutBus(9) <= inputSizeAddress_12 ;
   windowRamDataOutBus(8) <= inputSizeAddress_12 ;
   windowRamDataOutBus(7) <= inputSizeAddress_12 ;
   windowRamDataOutBus(6) <= inputSizeAddress_12 ;
   windowRamDataOutBus(5) <= inputSizeAddress_12 ;
   windowRamDataOutBus(4) <= inputSizeAddress_12 ;
   windowRamDataOutBus(3) <= inputSizeAddress_12 ;
   windowRamDataOutBus(2) <= inputSizeAddress_12 ;
   windowRamDataOutBus(1) <= inputSizeAddress_12 ;
   windowRamDataOutBus(0) <= inputSizeAddress_12 ;
   coresMap : CNNCores_8_16_5_5_3 port map ( filterBus(39)=>
      inputSizeAddress_12, filterBus(38)=>inputSizeAddress_12, filterBus(37)
      =>inputSizeAddress_12, filterBus(36)=>inputSizeAddress_12, 
      filterBus(35)=>inputSizeAddress_12, filterBus(34)=>inputSizeAddress_12, 
      filterBus(33)=>inputSizeAddress_12, filterBus(32)=>inputSizeAddress_12, 
      filterBus(31)=>inputSizeAddress_12, filterBus(30)=>inputSizeAddress_12, 
      filterBus(29)=>inputSizeAddress_12, filterBus(28)=>inputSizeAddress_12, 
      filterBus(27)=>inputSizeAddress_12, filterBus(26)=>inputSizeAddress_12, 
      filterBus(25)=>inputSizeAddress_12, filterBus(24)=>inputSizeAddress_12, 
      filterBus(23)=>inputSizeAddress_12, filterBus(22)=>inputSizeAddress_12, 
      filterBus(21)=>inputSizeAddress_12, filterBus(20)=>inputSizeAddress_12, 
      filterBus(19)=>inputSizeAddress_12, filterBus(18)=>inputSizeAddress_12, 
      filterBus(17)=>inputSizeAddress_12, filterBus(16)=>inputSizeAddress_12, 
      filterBus(15)=>inputSizeAddress_12, filterBus(14)=>inputSizeAddress_12, 
      filterBus(13)=>inputSizeAddress_12, filterBus(12)=>inputSizeAddress_12, 
      filterBus(11)=>inputSizeAddress_12, filterBus(10)=>inputSizeAddress_12, 
      filterBus(9)=>inputSizeAddress_12, filterBus(8)=>inputSizeAddress_12, 
      filterBus(7)=>inputSizeAddress_12, filterBus(6)=>inputSizeAddress_12, 
      filterBus(5)=>inputSizeAddress_12, filterBus(4)=>inputSizeAddress_12, 
      filterBus(3)=>inputSizeAddress_12, filterBus(2)=>inputSizeAddress_12, 
      filterBus(1)=>inputSizeAddress_12, filterBus(0)=>inputSizeAddress_12, 
      windowBus(79)=>inputSizeAddress_12, windowBus(78)=>inputSizeAddress_12, 
      windowBus(77)=>inputSizeAddress_12, windowBus(76)=>inputSizeAddress_12, 
      windowBus(75)=>inputSizeAddress_12, windowBus(74)=>inputSizeAddress_12, 
      windowBus(73)=>inputSizeAddress_12, windowBus(72)=>inputSizeAddress_12, 
      windowBus(71)=>inputSizeAddress_12, windowBus(70)=>inputSizeAddress_12, 
      windowBus(69)=>inputSizeAddress_12, windowBus(68)=>inputSizeAddress_12, 
      windowBus(67)=>inputSizeAddress_12, windowBus(66)=>inputSizeAddress_12, 
      windowBus(65)=>inputSizeAddress_12, windowBus(64)=>inputSizeAddress_12, 
      windowBus(63)=>inputSizeAddress_12, windowBus(62)=>inputSizeAddress_12, 
      windowBus(61)=>inputSizeAddress_12, windowBus(60)=>inputSizeAddress_12, 
      windowBus(59)=>inputSizeAddress_12, windowBus(58)=>inputSizeAddress_12, 
      windowBus(57)=>inputSizeAddress_12, windowBus(56)=>inputSizeAddress_12, 
      windowBus(55)=>inputSizeAddress_12, windowBus(54)=>inputSizeAddress_12, 
      windowBus(53)=>inputSizeAddress_12, windowBus(52)=>inputSizeAddress_12, 
      windowBus(51)=>inputSizeAddress_12, windowBus(50)=>inputSizeAddress_12, 
      windowBus(49)=>inputSizeAddress_12, windowBus(48)=>inputSizeAddress_12, 
      windowBus(47)=>inputSizeAddress_12, windowBus(46)=>inputSizeAddress_12, 
      windowBus(45)=>inputSizeAddress_12, windowBus(44)=>inputSizeAddress_12, 
      windowBus(43)=>inputSizeAddress_12, windowBus(42)=>inputSizeAddress_12, 
      windowBus(41)=>inputSizeAddress_12, windowBus(40)=>inputSizeAddress_12, 
      windowBus(39)=>inputSizeAddress_12, windowBus(38)=>inputSizeAddress_12, 
      windowBus(37)=>inputSizeAddress_12, windowBus(36)=>inputSizeAddress_12, 
      windowBus(35)=>inputSizeAddress_12, windowBus(34)=>inputSizeAddress_12, 
      windowBus(33)=>inputSizeAddress_12, windowBus(32)=>inputSizeAddress_12, 
      windowBus(31)=>inputSizeAddress_12, windowBus(30)=>inputSizeAddress_12, 
      windowBus(29)=>inputSizeAddress_12, windowBus(28)=>inputSizeAddress_12, 
      windowBus(27)=>inputSizeAddress_12, windowBus(26)=>inputSizeAddress_12, 
      windowBus(25)=>inputSizeAddress_12, windowBus(24)=>inputSizeAddress_12, 
      windowBus(23)=>inputSizeAddress_12, windowBus(22)=>inputSizeAddress_12, 
      windowBus(21)=>inputSizeAddress_12, windowBus(20)=>inputSizeAddress_12, 
      windowBus(19)=>inputSizeAddress_12, windowBus(18)=>inputSizeAddress_12, 
      windowBus(17)=>inputSizeAddress_12, windowBus(16)=>inputSizeAddress_12, 
      windowBus(15)=>inputSizeAddress_12, windowBus(14)=>inputSizeAddress_12, 
      windowBus(13)=>inputSizeAddress_12, windowBus(12)=>inputSizeAddress_12, 
      windowBus(11)=>inputSizeAddress_12, windowBus(10)=>inputSizeAddress_12, 
      windowBus(9)=>inputSizeAddress_12, windowBus(8)=>inputSizeAddress_12, 
      windowBus(7)=>inputSizeAddress_12, windowBus(6)=>inputSizeAddress_12, 
      windowBus(5)=>inputSizeAddress_12, windowBus(4)=>inputSizeAddress_12, 
      windowBus(3)=>inputSizeAddress_12, windowBus(2)=>inputSizeAddress_12, 
      windowBus(1)=>inputSizeAddress_12, windowBus(0)=>inputSizeAddress_12, 
      decoderRow(2)=>inputSizeAddress_12, decoderRow(1)=>inputSizeAddress_12, 
      decoderRow(0)=>inputSizeAddress_12, clk=>clk, rst=>rst, writePage1=>
      inputSizeAddress_12, writePage2=>inputSizeAddress_12, writeFilter=>
      inputSizeAddress_12, shift2To1=>inputSizeAddress_12, shift1To2=>
      inputSizeAddress_12, pageTurn=>inputSizeAddress_12, start=>startConv, 
      layerType=>layerType, filterType=>inputSizeAddress_12, doneCores=>
      doneCores, finalSumConv(15)=>DANGLING(0), finalSumConv(14)=>DANGLING(1
      ), finalSumConv(13)=>DANGLING(2), finalSumConv(12)=>DANGLING(3), 
      finalSumConv(11)=>DANGLING(4), finalSumConv(10)=>DANGLING(5), 
      finalSumConv(9)=>DANGLING(6), finalSumConv(8)=>DANGLING(7), 
      finalSumConv(7)=>DANGLING(8), finalSumConv(6)=>DANGLING(9), 
      finalSumConv(5)=>DANGLING(10), finalSumConv(4)=>DANGLING(11), 
      finalSumConv(3)=>DANGLING(12), finalSumConv(2)=>DANGLING(13), 
      finalSumConv(1)=>DANGLING(14), finalSumConv(0)=>DANGLING(15));
   controlUnitMap : ControlUnit port map ( clk=>clk, layersNumber(1)=>
      layersNumber_1, layersNumber(0)=>layersNumber_1, filtersNumber(2)=>
      filtersNumber_2, filtersNumber(1)=>filtersNumber_2, filtersNumber(0)=>
      filtersNumber_2, filterDepth(2)=>filterDepth_2, filterDepth(1)=>
      filterDepth_2, filterDepth(0)=>filterDepth_2, filterOutputSize(4)=>
      outputSizeAddress_4, filterOutputSize(3)=>outputSizeAddress_4, 
      filterOutputSize(2)=>outputSizeAddress_4, filterOutputSize(1)=>
      outputSizeAddress_4, filterOutputSize(0)=>outputSizeAddress_4, 
      startNetwork=>startCNN, layerType=>layerType, convFinish=>doneCores, 
      dmaAFinish=>inputSizeAddress_12, dmaBFinish=>readAllFinish, dmaCFinish
      =>writeOneFinish, resetNetwork=>rst, sliceFirstLoad=>DANGLING(16), 
      loadLayerConfig=>DANGLING(17), loadNetworkConfig=>DANGLING(18), 
      loadFilterConfig=>DANGLING(19), loadWindow=>loadWindow, loadFilter=>
      DANGLING(20), conv=>conv, pool=>pool, shift12=>DANGLING(21), shift21=>
      DANGLING(22), readNextCol=>readNextCol, addToOutputBuffer=>DANGLING(23
      ), outputBufferEn=>DANGLING(24), saveToRAM=>saveToRAM, currentPage(0)
      =>DANGLING(25), finishCurrentSlice=>finishSlice, finishFilter=>
      finishFilter, finishOneLayer=>finishLayer, finishNetwork=>
      finishNetwork);
   outputSizeAddMap : NBitAdder_13 port map ( a(12)=>inputSizeAddress_12, 
      a(11)=>inputSizeAddress_12, a(10)=>inputSizeAddress_12, a(9)=>
      inputSizeAddress_12, a(8)=>inputSizeAddress_12, a(7)=>
      inputSizeAddress_12, a(6)=>inputSizeAddress_12, a(5)=>
      inputSizeAddress_12, a(4)=>outputSizeAddress_4, a(3)=>
      outputSizeAddress_4, a(2)=>outputSizeAddress_4, a(1)=>
      outputSizeAddress_4, a(0)=>outputSizeAddress_4, b(12)=>
      inputSizeAddress_12, b(11)=>inputSizeAddress_12, b(10)=>
      inputSizeAddress_12, b(9)=>inputSizeAddress_12, b(8)=>
      inputSizeAddress_12, b(7)=>inputSizeAddress_12, b(6)=>
      inputSizeAddress_12, b(5)=>inputSizeAddress_12, b(4)=>
      inputSizeAddress_12, b(3)=>inputSizeAddress_12, b(2)=>
      inputSizeAddress_12, b(1)=>inputSizeAddress_12, b(0)=>
      inputSizeAddress_12, carryIn=>baseAddressTwo_11, sum(12)=>DANGLING(26), 
      sum(11)=>DANGLING(27), sum(10)=>DANGLING(28), sum(9)=>DANGLING(29), 
      sum(8)=>DANGLING(30), sum(7)=>DANGLING(31), sum(6)=>DANGLING(32), 
      sum(5)=>outputSizeAddressForDMA_5, sum(4)=>outputSizeAddressForDMA_4, 
      sum(3)=>outputSizeAddressForDMA_3, sum(2)=>outputSizeAddressForDMA_2, 
      sum(1)=>outputSizeAddressForDMA_1, sum(0)=>outputSizeAddressForDMA_0, 
      carryOut=>DANGLING(33));
   DMAControllerMap : DMAController_12_13_8_16_5 port map ( clk=>clk, reset
      =>rst, weightsInternalBus(39)=>DANGLING(34), weightsInternalBus(38)=>
      DANGLING(35), weightsInternalBus(37)=>DANGLING(36), 
      weightsInternalBus(36)=>DANGLING(37), weightsInternalBus(35)=>DANGLING
      (38), weightsInternalBus(34)=>DANGLING(39), weightsInternalBus(33)=>
      DANGLING(40), weightsInternalBus(32)=>DANGLING(41), 
      weightsInternalBus(31)=>DANGLING(42), weightsInternalBus(30)=>DANGLING
      (43), weightsInternalBus(29)=>DANGLING(44), weightsInternalBus(28)=>
      DANGLING(45), weightsInternalBus(27)=>DANGLING(46), 
      weightsInternalBus(26)=>DANGLING(47), weightsInternalBus(25)=>DANGLING
      (48), weightsInternalBus(24)=>DANGLING(49), weightsInternalBus(23)=>
      DANGLING(50), weightsInternalBus(22)=>DANGLING(51), 
      weightsInternalBus(21)=>DANGLING(52), weightsInternalBus(20)=>DANGLING
      (53), weightsInternalBus(19)=>DANGLING(54), weightsInternalBus(18)=>
      DANGLING(55), weightsInternalBus(17)=>DANGLING(56), 
      weightsInternalBus(16)=>DANGLING(57), weightsInternalBus(15)=>DANGLING
      (58), weightsInternalBus(14)=>DANGLING(59), weightsInternalBus(13)=>
      DANGLING(60), weightsInternalBus(12)=>DANGLING(61), 
      weightsInternalBus(11)=>DANGLING(62), weightsInternalBus(10)=>DANGLING
      (63), weightsInternalBus(9)=>DANGLING(64), weightsInternalBus(8)=>
      DANGLING(65), weightsInternalBus(7)=>DANGLING(66), 
      weightsInternalBus(6)=>DANGLING(67), weightsInternalBus(5)=>DANGLING(
      68), weightsInternalBus(4)=>DANGLING(69), weightsInternalBus(3)=>
      DANGLING(70), weightsInternalBus(2)=>DANGLING(71), 
      weightsInternalBus(1)=>DANGLING(72), weightsInternalBus(0)=>DANGLING(
      73), windowInternalBus(79)=>DANGLING(74), windowInternalBus(78)=>
      DANGLING(75), windowInternalBus(77)=>DANGLING(76), 
      windowInternalBus(76)=>DANGLING(77), windowInternalBus(75)=>DANGLING(
      78), windowInternalBus(74)=>DANGLING(79), windowInternalBus(73)=>
      DANGLING(80), windowInternalBus(72)=>DANGLING(81), 
      windowInternalBus(71)=>DANGLING(82), windowInternalBus(70)=>DANGLING(
      83), windowInternalBus(69)=>DANGLING(84), windowInternalBus(68)=>
      DANGLING(85), windowInternalBus(67)=>DANGLING(86), 
      windowInternalBus(66)=>DANGLING(87), windowInternalBus(65)=>DANGLING(
      88), windowInternalBus(64)=>DANGLING(89), windowInternalBus(63)=>
      DANGLING(90), windowInternalBus(62)=>DANGLING(91), 
      windowInternalBus(61)=>DANGLING(92), windowInternalBus(60)=>DANGLING(
      93), windowInternalBus(59)=>DANGLING(94), windowInternalBus(58)=>
      DANGLING(95), windowInternalBus(57)=>DANGLING(96), 
      windowInternalBus(56)=>DANGLING(97), windowInternalBus(55)=>DANGLING(
      98), windowInternalBus(54)=>DANGLING(99), windowInternalBus(53)=>
      DANGLING(100), windowInternalBus(52)=>DANGLING(101), 
      windowInternalBus(51)=>DANGLING(102), windowInternalBus(50)=>DANGLING(
      103), windowInternalBus(49)=>DANGLING(104), windowInternalBus(48)=>
      DANGLING(105), windowInternalBus(47)=>DANGLING(106), 
      windowInternalBus(46)=>DANGLING(107), windowInternalBus(45)=>DANGLING(
      108), windowInternalBus(44)=>DANGLING(109), windowInternalBus(43)=>
      DANGLING(110), windowInternalBus(42)=>DANGLING(111), 
      windowInternalBus(41)=>DANGLING(112), windowInternalBus(40)=>DANGLING(
      113), windowInternalBus(39)=>DANGLING(114), windowInternalBus(38)=>
      DANGLING(115), windowInternalBus(37)=>DANGLING(116), 
      windowInternalBus(36)=>DANGLING(117), windowInternalBus(35)=>DANGLING(
      118), windowInternalBus(34)=>DANGLING(119), windowInternalBus(33)=>
      DANGLING(120), windowInternalBus(32)=>DANGLING(121), 
      windowInternalBus(31)=>DANGLING(122), windowInternalBus(30)=>DANGLING(
      123), windowInternalBus(29)=>DANGLING(124), windowInternalBus(28)=>
      DANGLING(125), windowInternalBus(27)=>DANGLING(126), 
      windowInternalBus(26)=>DANGLING(127), windowInternalBus(25)=>DANGLING(
      128), windowInternalBus(24)=>DANGLING(129), windowInternalBus(23)=>
      DANGLING(130), windowInternalBus(22)=>DANGLING(131), 
      windowInternalBus(21)=>DANGLING(132), windowInternalBus(20)=>DANGLING(
      133), windowInternalBus(19)=>DANGLING(134), windowInternalBus(18)=>
      DANGLING(135), windowInternalBus(17)=>DANGLING(136), 
      windowInternalBus(16)=>DANGLING(137), windowInternalBus(15)=>DANGLING(
      138), windowInternalBus(14)=>DANGLING(139), windowInternalBus(13)=>
      DANGLING(140), windowInternalBus(12)=>DANGLING(141), 
      windowInternalBus(11)=>DANGLING(142), windowInternalBus(10)=>DANGLING(
      143), windowInternalBus(9)=>DANGLING(144), windowInternalBus(8)=>
      DANGLING(145), windowInternalBus(7)=>DANGLING(146), 
      windowInternalBus(6)=>DANGLING(147), windowInternalBus(5)=>DANGLING(
      148), windowInternalBus(4)=>DANGLING(149), windowInternalBus(3)=>
      DANGLING(150), windowInternalBus(2)=>DANGLING(151), 
      windowInternalBus(1)=>DANGLING(152), windowInternalBus(0)=>DANGLING(
      153), writeInternalBus(15)=>inputSizeAddress_12, writeInternalBus(14)
      =>inputSizeAddress_12, writeInternalBus(13)=>inputSizeAddress_12, 
      writeInternalBus(12)=>inputSizeAddress_12, writeInternalBus(11)=>
      inputSizeAddress_12, writeInternalBus(10)=>inputSizeAddress_12, 
      writeInternalBus(9)=>inputSizeAddress_12, writeInternalBus(8)=>
      inputSizeAddress_12, writeInternalBus(7)=>inputSizeAddress_12, 
      writeInternalBus(6)=>inputSizeAddress_12, writeInternalBus(5)=>
      inputSizeAddress_12, writeInternalBus(4)=>inputSizeAddress_12, 
      writeInternalBus(3)=>inputSizeAddress_12, writeInternalBus(2)=>
      inputSizeAddress_12, writeInternalBus(1)=>inputSizeAddress_12, 
      writeInternalBus(0)=>inputSizeAddress_12, weightsRamAddress(11)=>
      DANGLING(154), weightsRamAddress(10)=>DANGLING(155), 
      weightsRamAddress(9)=>DANGLING(156), weightsRamAddress(8)=>DANGLING(
      157), weightsRamAddress(7)=>DANGLING(158), weightsRamAddress(6)=>
      DANGLING(159), weightsRamAddress(5)=>DANGLING(160), 
      weightsRamAddress(4)=>DANGLING(161), weightsRamAddress(3)=>DANGLING(
      162), weightsRamAddress(2)=>DANGLING(163), weightsRamAddress(1)=>
      DANGLING(164), weightsRamAddress(0)=>DANGLING(165), 
      windowRamAddressRead(12)=>windowRamAddressRead(12), 
      windowRamAddressRead(11)=>windowRamAddressRead(11), 
      windowRamAddressRead(10)=>windowRamAddressRead(10), 
      windowRamAddressRead(9)=>windowRamAddressRead(9), 
      windowRamAddressRead(8)=>windowRamAddressRead(8), 
      windowRamAddressRead(7)=>windowRamAddressRead(7), 
      windowRamAddressRead(6)=>windowRamAddressRead(6), 
      windowRamAddressRead(5)=>windowRamAddressRead(5), 
      windowRamAddressRead(4)=>windowRamAddressRead(4), 
      windowRamAddressRead(3)=>windowRamAddressRead(3), 
      windowRamAddressRead(2)=>windowRamAddressRead(2), 
      windowRamAddressRead(1)=>windowRamAddressRead(1), 
      windowRamAddressRead(0)=>windowRamAddressRead(0), 
      windowRamAddressWrite(12)=>windowRamAddressWrite(12), 
      windowRamAddressWrite(11)=>windowRamAddressWrite(11), 
      windowRamAddressWrite(10)=>windowRamAddressWrite(10), 
      windowRamAddressWrite(9)=>windowRamAddressWrite(9), 
      windowRamAddressWrite(8)=>windowRamAddressWrite(8), 
      windowRamAddressWrite(7)=>windowRamAddressWrite(7), 
      windowRamAddressWrite(6)=>windowRamAddressWrite(6), 
      windowRamAddressWrite(5)=>windowRamAddressWrite(5), 
      windowRamAddressWrite(4)=>windowRamAddressWrite(4), 
      windowRamAddressWrite(3)=>windowRamAddressWrite(3), 
      windowRamAddressWrite(2)=>windowRamAddressWrite(2), 
      windowRamAddressWrite(1)=>windowRamAddressWrite(1), 
      windowRamAddressWrite(0)=>windowRamAddressWrite(0), 
      weightsRamDataInBus(39)=>inputSizeAddress_12, weightsRamDataInBus(38)
      =>inputSizeAddress_12, weightsRamDataInBus(37)=>inputSizeAddress_12, 
      weightsRamDataInBus(36)=>inputSizeAddress_12, weightsRamDataInBus(35)
      =>inputSizeAddress_12, weightsRamDataInBus(34)=>inputSizeAddress_12, 
      weightsRamDataInBus(33)=>inputSizeAddress_12, weightsRamDataInBus(32)
      =>inputSizeAddress_12, weightsRamDataInBus(31)=>inputSizeAddress_12, 
      weightsRamDataInBus(30)=>inputSizeAddress_12, weightsRamDataInBus(29)
      =>inputSizeAddress_12, weightsRamDataInBus(28)=>inputSizeAddress_12, 
      weightsRamDataInBus(27)=>inputSizeAddress_12, weightsRamDataInBus(26)
      =>inputSizeAddress_12, weightsRamDataInBus(25)=>inputSizeAddress_12, 
      weightsRamDataInBus(24)=>inputSizeAddress_12, weightsRamDataInBus(23)
      =>inputSizeAddress_12, weightsRamDataInBus(22)=>inputSizeAddress_12, 
      weightsRamDataInBus(21)=>inputSizeAddress_12, weightsRamDataInBus(20)
      =>inputSizeAddress_12, weightsRamDataInBus(19)=>inputSizeAddress_12, 
      weightsRamDataInBus(18)=>inputSizeAddress_12, weightsRamDataInBus(17)
      =>inputSizeAddress_12, weightsRamDataInBus(16)=>inputSizeAddress_12, 
      weightsRamDataInBus(15)=>inputSizeAddress_12, weightsRamDataInBus(14)
      =>inputSizeAddress_12, weightsRamDataInBus(13)=>inputSizeAddress_12, 
      weightsRamDataInBus(12)=>inputSizeAddress_12, weightsRamDataInBus(11)
      =>inputSizeAddress_12, weightsRamDataInBus(10)=>inputSizeAddress_12, 
      weightsRamDataInBus(9)=>inputSizeAddress_12, weightsRamDataInBus(8)=>
      inputSizeAddress_12, weightsRamDataInBus(7)=>inputSizeAddress_12, 
      weightsRamDataInBus(6)=>inputSizeAddress_12, weightsRamDataInBus(5)=>
      inputSizeAddress_12, weightsRamDataInBus(4)=>inputSizeAddress_12, 
      weightsRamDataInBus(3)=>inputSizeAddress_12, weightsRamDataInBus(2)=>
      inputSizeAddress_12, weightsRamDataInBus(1)=>inputSizeAddress_12, 
      weightsRamDataInBus(0)=>inputSizeAddress_12, windowRamDataInBus(79)=>
      inputSizeAddress_12, windowRamDataInBus(78)=>inputSizeAddress_12, 
      windowRamDataInBus(77)=>inputSizeAddress_12, windowRamDataInBus(76)=>
      inputSizeAddress_12, windowRamDataInBus(75)=>inputSizeAddress_12, 
      windowRamDataInBus(74)=>inputSizeAddress_12, windowRamDataInBus(73)=>
      inputSizeAddress_12, windowRamDataInBus(72)=>inputSizeAddress_12, 
      windowRamDataInBus(71)=>inputSizeAddress_12, windowRamDataInBus(70)=>
      inputSizeAddress_12, windowRamDataInBus(69)=>inputSizeAddress_12, 
      windowRamDataInBus(68)=>inputSizeAddress_12, windowRamDataInBus(67)=>
      inputSizeAddress_12, windowRamDataInBus(66)=>inputSizeAddress_12, 
      windowRamDataInBus(65)=>inputSizeAddress_12, windowRamDataInBus(64)=>
      inputSizeAddress_12, windowRamDataInBus(63)=>inputSizeAddress_12, 
      windowRamDataInBus(62)=>inputSizeAddress_12, windowRamDataInBus(61)=>
      inputSizeAddress_12, windowRamDataInBus(60)=>inputSizeAddress_12, 
      windowRamDataInBus(59)=>inputSizeAddress_12, windowRamDataInBus(58)=>
      inputSizeAddress_12, windowRamDataInBus(57)=>inputSizeAddress_12, 
      windowRamDataInBus(56)=>inputSizeAddress_12, windowRamDataInBus(55)=>
      inputSizeAddress_12, windowRamDataInBus(54)=>inputSizeAddress_12, 
      windowRamDataInBus(53)=>inputSizeAddress_12, windowRamDataInBus(52)=>
      inputSizeAddress_12, windowRamDataInBus(51)=>inputSizeAddress_12, 
      windowRamDataInBus(50)=>inputSizeAddress_12, windowRamDataInBus(49)=>
      inputSizeAddress_12, windowRamDataInBus(48)=>inputSizeAddress_12, 
      windowRamDataInBus(47)=>inputSizeAddress_12, windowRamDataInBus(46)=>
      inputSizeAddress_12, windowRamDataInBus(45)=>inputSizeAddress_12, 
      windowRamDataInBus(44)=>inputSizeAddress_12, windowRamDataInBus(43)=>
      inputSizeAddress_12, windowRamDataInBus(42)=>inputSizeAddress_12, 
      windowRamDataInBus(41)=>inputSizeAddress_12, windowRamDataInBus(40)=>
      inputSizeAddress_12, windowRamDataInBus(39)=>inputSizeAddress_12, 
      windowRamDataInBus(38)=>inputSizeAddress_12, windowRamDataInBus(37)=>
      inputSizeAddress_12, windowRamDataInBus(36)=>inputSizeAddress_12, 
      windowRamDataInBus(35)=>inputSizeAddress_12, windowRamDataInBus(34)=>
      inputSizeAddress_12, windowRamDataInBus(33)=>inputSizeAddress_12, 
      windowRamDataInBus(32)=>inputSizeAddress_12, windowRamDataInBus(31)=>
      inputSizeAddress_12, windowRamDataInBus(30)=>inputSizeAddress_12, 
      windowRamDataInBus(29)=>inputSizeAddress_12, windowRamDataInBus(28)=>
      inputSizeAddress_12, windowRamDataInBus(27)=>inputSizeAddress_12, 
      windowRamDataInBus(26)=>inputSizeAddress_12, windowRamDataInBus(25)=>
      inputSizeAddress_12, windowRamDataInBus(24)=>inputSizeAddress_12, 
      windowRamDataInBus(23)=>inputSizeAddress_12, windowRamDataInBus(22)=>
      inputSizeAddress_12, windowRamDataInBus(21)=>inputSizeAddress_12, 
      windowRamDataInBus(20)=>inputSizeAddress_12, windowRamDataInBus(19)=>
      inputSizeAddress_12, windowRamDataInBus(18)=>inputSizeAddress_12, 
      windowRamDataInBus(17)=>inputSizeAddress_12, windowRamDataInBus(16)=>
      inputSizeAddress_12, windowRamDataInBus(15)=>inputSizeAddress_12, 
      windowRamDataInBus(14)=>inputSizeAddress_12, windowRamDataInBus(13)=>
      inputSizeAddress_12, windowRamDataInBus(12)=>inputSizeAddress_12, 
      windowRamDataInBus(11)=>inputSizeAddress_12, windowRamDataInBus(10)=>
      inputSizeAddress_12, windowRamDataInBus(9)=>inputSizeAddress_12, 
      windowRamDataInBus(8)=>inputSizeAddress_12, windowRamDataInBus(7)=>
      inputSizeAddress_12, windowRamDataInBus(6)=>inputSizeAddress_12, 
      windowRamDataInBus(5)=>inputSizeAddress_12, windowRamDataInBus(4)=>
      inputSizeAddress_12, windowRamDataInBus(3)=>inputSizeAddress_12, 
      windowRamDataInBus(2)=>inputSizeAddress_12, windowRamDataInBus(1)=>
      inputSizeAddress_12, windowRamDataInBus(0)=>inputSizeAddress_12, 
      weightsRamRead=>DANGLING(166), windowRamRead=>windowRamRead, 
      windowRamWrite=>windowRamWrite, windowRamDataOutBus(15)=>DANGLING(167), 
      windowRamDataOutBus(14)=>DANGLING(168), windowRamDataOutBus(13)=>
      DANGLING(169), windowRamDataOutBus(12)=>DANGLING(170), 
      windowRamDataOutBus(11)=>DANGLING(171), windowRamDataOutBus(10)=>
      DANGLING(172), windowRamDataOutBus(9)=>DANGLING(173), 
      windowRamDataOutBus(8)=>DANGLING(174), windowRamDataOutBus(7)=>
      DANGLING(175), windowRamDataOutBus(6)=>DANGLING(176), 
      windowRamDataOutBus(5)=>DANGLING(177), windowRamDataOutBus(4)=>
      DANGLING(178), windowRamDataOutBus(3)=>DANGLING(179), 
      windowRamDataOutBus(2)=>DANGLING(180), windowRamDataOutBus(1)=>
      DANGLING(181), windowRamDataOutBus(0)=>DANGLING(182), MFCWindowRam=>
      MFCWindowRam, MFCWeightsRam=>inputSizeAddress_12, MFCWrite=>MFCWrite, 
      loadNextFilter=>inputSizeAddress_12, loadNextWindow=>loadWindow, 
      loadNextRow=>readNextCol, loadOneWord=>inputSizeAddress_12, 
      loadThreeWord=>inputSizeAddress_12, filterFinished=>finishFilter, 
      sliceFinished=>finishSlice, layerFinished=>finishLayer, layerType=>
      layerType, write=>saveToRAM, weightsSizeType=>layerType, inputSize(12)
      =>inputSizeAddress_12, inputSize(11)=>inputSizeAddress_12, 
      inputSize(10)=>inputSizeAddress_12, inputSize(9)=>inputSizeAddress_12, 
      inputSize(8)=>inputSizeAddress_12, inputSize(7)=>inputSizeAddress_12, 
      inputSize(6)=>inputSizeAddress_12, inputSize(5)=>inputSizeAddress_12, 
      inputSize(4)=>inputSizeAddress_4, inputSize(3)=>inputSizeAddress_4, 
      inputSize(2)=>inputSizeAddress_4, inputSize(1)=>inputSizeAddress_4, 
      inputSize(0)=>inputSizeAddress_4, outputSize(12)=>inputSizeAddress_12, 
      outputSize(11)=>inputSizeAddress_12, outputSize(10)=>
      inputSizeAddress_12, outputSize(9)=>inputSizeAddress_12, outputSize(8)
      =>inputSizeAddress_12, outputSize(7)=>inputSizeAddress_12, 
      outputSize(6)=>inputSizeAddress_12, outputSize(5)=>
      outputSizeAddressForDMA_5, outputSize(4)=>outputSizeAddressForDMA_4, 
      outputSize(3)=>outputSizeAddressForDMA_3, outputSize(2)=>
      outputSizeAddressForDMA_2, outputSize(1)=>outputSizeAddressForDMA_1, 
      outputSize(0)=>outputSizeAddressForDMA_0, windowRamBaseAddress1(12)=>
      inputSizeAddress_12, windowRamBaseAddress1(11)=>inputSizeAddress_12, 
      windowRamBaseAddress1(10)=>inputSizeAddress_12, 
      windowRamBaseAddress1(9)=>inputSizeAddress_12, 
      windowRamBaseAddress1(8)=>inputSizeAddress_12, 
      windowRamBaseAddress1(7)=>inputSizeAddress_12, 
      windowRamBaseAddress1(6)=>inputSizeAddress_12, 
      windowRamBaseAddress1(5)=>inputSizeAddress_12, 
      windowRamBaseAddress1(4)=>inputSizeAddress_12, 
      windowRamBaseAddress1(3)=>inputSizeAddress_12, 
      windowRamBaseAddress1(2)=>inputSizeAddress_12, 
      windowRamBaseAddress1(1)=>inputSizeAddress_12, 
      windowRamBaseAddress1(0)=>inputSizeAddress_12, 
      windowRamBaseAddress2(12)=>inputSizeAddress_12, 
      windowRamBaseAddress2(11)=>baseAddressTwo_11, 
      windowRamBaseAddress2(10)=>baseAddressTwo_11, windowRamBaseAddress2(9)
      =>baseAddressTwo_11, windowRamBaseAddress2(8)=>baseAddressTwo_11, 
      windowRamBaseAddress2(7)=>inputSizeAddress_12, 
      windowRamBaseAddress2(6)=>inputSizeAddress_12, 
      windowRamBaseAddress2(5)=>baseAddressTwo_11, windowRamBaseAddress2(4)
      =>inputSizeAddress_12, windowRamBaseAddress2(3)=>inputSizeAddress_12, 
      windowRamBaseAddress2(2)=>inputSizeAddress_12, 
      windowRamBaseAddress2(1)=>inputSizeAddress_12, 
      windowRamBaseAddress2(0)=>inputSizeAddress_12, 
      filterRamBaseAddress(11)=>inputSizeAddress_12, 
      filterRamBaseAddress(10)=>inputSizeAddress_12, filterRamBaseAddress(9)
      =>inputSizeAddress_12, filterRamBaseAddress(8)=>inputSizeAddress_12, 
      filterRamBaseAddress(7)=>inputSizeAddress_12, filterRamBaseAddress(6)
      =>inputSizeAddress_12, filterRamBaseAddress(5)=>inputSizeAddress_12, 
      filterRamBaseAddress(4)=>inputSizeAddress_12, filterRamBaseAddress(3)
      =>inputSizeAddress_12, filterRamBaseAddress(2)=>inputSizeAddress_12, 
      filterRamBaseAddress(1)=>inputSizeAddress_12, filterRamBaseAddress(0)
      =>inputSizeAddress_12, windowReadOne=>DANGLING(183), windowReadFinal=>
      readAllFinish, weightsReadOne=>DANGLING(184), weightsReadFinal=>
      DANGLING(185), writeDoneOne=>writeOneFinish, filterAluNumber(2)=>
      DANGLING(186), filterAluNumber(1)=>DANGLING(187), filterAluNumber(0)=>
      DANGLING(188), windowAluNumber(2)=>DANGLING(189), windowAluNumber(1)=>
      DANGLING(190), windowAluNumber(0)=>DANGLING(191));
   configMap : Config_40 port map ( filterBus(39)=>inputSizeAddress_12, 
      filterBus(38)=>inputSizeAddress_12, filterBus(37)=>inputSizeAddress_12, 
      filterBus(36)=>inputSizeAddress_12, filterBus(35)=>inputSizeAddress_12, 
      filterBus(34)=>inputSizeAddress_12, filterBus(33)=>inputSizeAddress_12, 
      filterBus(32)=>inputSizeAddress_12, filterBus(31)=>inputSizeAddress_12, 
      filterBus(30)=>inputSizeAddress_12, filterBus(29)=>inputSizeAddress_12, 
      filterBus(28)=>inputSizeAddress_12, filterBus(27)=>inputSizeAddress_12, 
      filterBus(26)=>inputSizeAddress_12, filterBus(25)=>inputSizeAddress_12, 
      filterBus(24)=>inputSizeAddress_12, filterBus(23)=>inputSizeAddress_12, 
      filterBus(22)=>inputSizeAddress_12, filterBus(21)=>inputSizeAddress_12, 
      filterBus(20)=>inputSizeAddress_12, filterBus(19)=>inputSizeAddress_12, 
      filterBus(18)=>inputSizeAddress_12, filterBus(17)=>inputSizeAddress_12, 
      filterBus(16)=>inputSizeAddress_12, filterBus(15)=>inputSizeAddress_12, 
      filterBus(14)=>inputSizeAddress_12, filterBus(13)=>inputSizeAddress_12, 
      filterBus(12)=>inputSizeAddress_12, filterBus(11)=>inputSizeAddress_12, 
      filterBus(10)=>inputSizeAddress_12, filterBus(9)=>inputSizeAddress_12, 
      filterBus(8)=>inputSizeAddress_12, filterBus(7)=>inputSizeAddress_12, 
      filterBus(6)=>inputSizeAddress_12, filterBus(5)=>inputSizeAddress_12, 
      filterBus(4)=>inputSizeAddress_12, filterBus(3)=>inputSizeAddress_12, 
      filterBus(2)=>inputSizeAddress_12, filterBus(1)=>inputSizeAddress_12, 
      filterBus(0)=>inputSizeAddress_12, clk=>inputSizeAddress_12, rst=>
      inputSizeAddress_12, readNumLayers=>inputSizeAddress_12, 
      readLayerConfig=>inputSizeAddress_12, numLayers(1)=>layersNumber_1, 
      numLayers(0)=>DANGLING(192), layerType=>layerType, filterType=>
      DANGLING(193), numFilters(2)=>filtersNumber_2, numFilters(1)=>DANGLING
      (194), numFilters(0)=>DANGLING(195), filterDepth(2)=>filterDepth_2, 
      filterDepth(1)=>DANGLING(196), filterDepth(0)=>DANGLING(197), 
      inputSize(4)=>inputSizeAddress_4, inputSize(3)=>DANGLING(198), 
      inputSize(2)=>DANGLING(199), inputSize(1)=>DANGLING(200), inputSize(0)
      =>DANGLING(201), outputSize(4)=>outputSizeAddress_4, outputSize(3)=>
      DANGLING(202), outputSize(2)=>DANGLING(203), outputSize(1)=>DANGLING(
      204), outputSize(0)=>DANGLING(205));
   ix4 : fake_gnd port map ( Y=>inputSizeAddress_12);
   ix2 : fake_vcc port map ( Y=>baseAddressTwo_11);
   ix1 : inv01 port map ( Y=>startConv, A=>nx10);
   ix11 : nor02_2x port map ( Y=>nx10, A0=>conv, A1=>pool);
end CNNModuleArch_unfold_1785 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RAM_13_16_80 is
   port (
      clk : IN std_logic ;
      rd : IN std_logic ;
      we : IN std_logic ;
      reset : IN std_logic ;
      addressRead : IN std_logic_vector (12 DOWNTO 0) ;
      addressWrite : IN std_logic_vector (12 DOWNTO 0) ;
      dataIn : IN std_logic_vector (15 DOWNTO 0) ;
      dataOut : OUT std_logic_vector (79 DOWNTO 0) ;
      MFCReadOut : OUT std_logic ;
      MFCWriteOut : OUT std_logic) ;
end RAM_13_16_80 ;

architecture RAMArch_unfold_1711 of RAM_13_16_80 is
   signal dataOut_79_EXMPLR, NOT_clk, nx4, nx36, nx38, nx40, nx58, nx60, 
      nx62, nx68, nx82, nx84, NOT_nx84, nx90, nx93, nx95, nx97, nx99, nx101, 
      nx103, nx105, nx108, nx110, nx112, nx114, nx116, nx118, nx120, nx122, 
      nx124, nx126, nx128, nx135, nx139, nx142, nx146, nx149: std_logic ;

begin
   dataOut(79) <= dataOut_79_EXMPLR ;
   dataOut(78) <= dataOut_79_EXMPLR ;
   dataOut(77) <= dataOut_79_EXMPLR ;
   dataOut(76) <= dataOut_79_EXMPLR ;
   dataOut(75) <= dataOut_79_EXMPLR ;
   dataOut(74) <= dataOut_79_EXMPLR ;
   dataOut(73) <= dataOut_79_EXMPLR ;
   dataOut(72) <= dataOut_79_EXMPLR ;
   dataOut(71) <= dataOut_79_EXMPLR ;
   dataOut(70) <= dataOut_79_EXMPLR ;
   dataOut(69) <= dataOut_79_EXMPLR ;
   dataOut(68) <= dataOut_79_EXMPLR ;
   dataOut(67) <= dataOut_79_EXMPLR ;
   dataOut(66) <= dataOut_79_EXMPLR ;
   dataOut(65) <= dataOut_79_EXMPLR ;
   dataOut(64) <= dataOut_79_EXMPLR ;
   dataOut(63) <= dataOut_79_EXMPLR ;
   dataOut(62) <= dataOut_79_EXMPLR ;
   dataOut(61) <= dataOut_79_EXMPLR ;
   dataOut(60) <= dataOut_79_EXMPLR ;
   dataOut(59) <= dataOut_79_EXMPLR ;
   dataOut(58) <= dataOut_79_EXMPLR ;
   dataOut(57) <= dataOut_79_EXMPLR ;
   dataOut(56) <= dataOut_79_EXMPLR ;
   dataOut(55) <= dataOut_79_EXMPLR ;
   dataOut(54) <= dataOut_79_EXMPLR ;
   dataOut(53) <= dataOut_79_EXMPLR ;
   dataOut(52) <= dataOut_79_EXMPLR ;
   dataOut(51) <= dataOut_79_EXMPLR ;
   dataOut(50) <= dataOut_79_EXMPLR ;
   dataOut(49) <= dataOut_79_EXMPLR ;
   dataOut(48) <= dataOut_79_EXMPLR ;
   dataOut(47) <= dataOut_79_EXMPLR ;
   dataOut(46) <= dataOut_79_EXMPLR ;
   dataOut(45) <= dataOut_79_EXMPLR ;
   dataOut(44) <= dataOut_79_EXMPLR ;
   dataOut(43) <= dataOut_79_EXMPLR ;
   dataOut(42) <= dataOut_79_EXMPLR ;
   dataOut(41) <= dataOut_79_EXMPLR ;
   dataOut(40) <= dataOut_79_EXMPLR ;
   dataOut(39) <= dataOut_79_EXMPLR ;
   dataOut(38) <= dataOut_79_EXMPLR ;
   dataOut(37) <= dataOut_79_EXMPLR ;
   dataOut(36) <= dataOut_79_EXMPLR ;
   dataOut(35) <= dataOut_79_EXMPLR ;
   dataOut(34) <= dataOut_79_EXMPLR ;
   dataOut(33) <= dataOut_79_EXMPLR ;
   dataOut(32) <= dataOut_79_EXMPLR ;
   dataOut(31) <= dataOut_79_EXMPLR ;
   dataOut(30) <= dataOut_79_EXMPLR ;
   dataOut(29) <= dataOut_79_EXMPLR ;
   dataOut(28) <= dataOut_79_EXMPLR ;
   dataOut(27) <= dataOut_79_EXMPLR ;
   dataOut(26) <= dataOut_79_EXMPLR ;
   dataOut(25) <= dataOut_79_EXMPLR ;
   dataOut(24) <= dataOut_79_EXMPLR ;
   dataOut(23) <= dataOut_79_EXMPLR ;
   dataOut(22) <= dataOut_79_EXMPLR ;
   dataOut(21) <= dataOut_79_EXMPLR ;
   dataOut(20) <= dataOut_79_EXMPLR ;
   dataOut(19) <= dataOut_79_EXMPLR ;
   dataOut(18) <= dataOut_79_EXMPLR ;
   dataOut(17) <= dataOut_79_EXMPLR ;
   dataOut(16) <= dataOut_79_EXMPLR ;
   dataOut(15) <= dataOut_79_EXMPLR ;
   dataOut(14) <= dataOut_79_EXMPLR ;
   dataOut(13) <= dataOut_79_EXMPLR ;
   dataOut(12) <= dataOut_79_EXMPLR ;
   dataOut(11) <= dataOut_79_EXMPLR ;
   dataOut(10) <= dataOut_79_EXMPLR ;
   dataOut(9) <= dataOut_79_EXMPLR ;
   dataOut(8) <= dataOut_79_EXMPLR ;
   dataOut(7) <= dataOut_79_EXMPLR ;
   dataOut(6) <= dataOut_79_EXMPLR ;
   dataOut(5) <= dataOut_79_EXMPLR ;
   dataOut(4) <= dataOut_79_EXMPLR ;
   dataOut(3) <= dataOut_79_EXMPLR ;
   dataOut(2) <= dataOut_79_EXMPLR ;
   dataOut(1) <= dataOut_79_EXMPLR ;
   dataOut(0) <= dataOut_79_EXMPLR ;
   ix44 : fake_gnd port map ( Y=>dataOut_79_EXMPLR);
   reg_MFCWriteOut : dff port map ( Q=>MFCWriteOut, QB=>OPEN, D=>NOT_nx84, 
      CLK=>NOT_clk);
   ix88 : nand02 port map ( Y=>NOT_nx84, A0=>nx36, A1=>nx82);
   ix37 : nor02_2x port map ( Y=>nx36, A0=>nx90, A1=>nx97);
   ix91 : nand03 port map ( Y=>nx90, A0=>nx4, A1=>rd, A2=>nx95);
   ix5 : nor02_2x port map ( Y=>nx4, A0=>reset, A1=>nx93);
   ix94 : inv01 port map ( Y=>nx93, A=>we);
   ix96 : xnor2 port map ( Y=>nx95, A0=>addressRead(0), A1=>addressWrite(0)
   );
   ix98 : nand04 port map ( Y=>nx97, A0=>nx99, A1=>nx101, A2=>nx103, A3=>
      nx105);
   ix100 : xnor2 port map ( Y=>nx99, A0=>addressRead(1), A1=>addressWrite(1)
   );
   ix102 : xnor2 port map ( Y=>nx101, A0=>addressRead(2), A1=>
      addressWrite(2));
   ix104 : xnor2 port map ( Y=>nx103, A0=>addressRead(3), A1=>
      addressWrite(3));
   ix106 : xnor2 port map ( Y=>nx105, A0=>addressRead(4), A1=>
      addressWrite(4));
   ix83 : nor03_2x port map ( Y=>nx82, A0=>nx108, A1=>nx114, A2=>nx120);
   ix109 : nand02 port map ( Y=>nx108, A0=>nx110, A1=>nx112);
   ix111 : xnor2 port map ( Y=>nx110, A0=>addressRead(5), A1=>
      addressWrite(5));
   ix113 : xnor2 port map ( Y=>nx112, A0=>addressRead(6), A1=>
      addressWrite(6));
   ix115 : nand02 port map ( Y=>nx114, A0=>nx116, A1=>nx118);
   ix117 : xnor2 port map ( Y=>nx116, A0=>addressRead(7), A1=>
      addressWrite(7));
   ix119 : xnor2 port map ( Y=>nx118, A0=>addressRead(12), A1=>
      addressWrite(12));
   ix121 : nand04 port map ( Y=>nx120, A0=>nx122, A1=>nx124, A2=>nx126, A3=>
      nx128);
   ix123 : xnor2 port map ( Y=>nx122, A0=>addressRead(8), A1=>
      addressWrite(8));
   ix125 : xnor2 port map ( Y=>nx124, A0=>addressRead(9), A1=>
      addressWrite(9));
   ix127 : xnor2 port map ( Y=>nx126, A0=>addressRead(10), A1=>
      addressWrite(10));
   ix129 : xnor2 port map ( Y=>nx128, A0=>addressRead(11), A1=>
      addressWrite(11));
   ix131 : inv01 port map ( Y=>NOT_clk, A=>clk);
   reg_MFCReadOut : dff port map ( Q=>MFCReadOut, QB=>OPEN, D=>nx84, CLK=>
      NOT_clk);
   ix85 : nor03_2x port map ( Y=>nx84, A0=>nx90, A1=>nx97, A2=>nx135);
   ix136 : nand04 port map ( Y=>nx135, A0=>nx58, A1=>nx68, A2=>nx126, A3=>
      nx128);
   ix59 : nor03_2x port map ( Y=>nx58, A0=>nx38, A1=>nx40, A2=>nx114);
   ix39 : xnor2 port map ( Y=>nx38, A0=>addressRead(5), A1=>nx139);
   ix140 : inv01 port map ( Y=>nx139, A=>addressWrite(5));
   ix41 : xnor2 port map ( Y=>nx40, A0=>addressRead(6), A1=>nx142);
   ix143 : inv01 port map ( Y=>nx142, A=>addressWrite(6));
   ix69 : nor02_2x port map ( Y=>nx68, A0=>nx60, A1=>nx62);
   ix61 : xnor2 port map ( Y=>nx60, A0=>addressRead(8), A1=>nx146);
   ix147 : inv01 port map ( Y=>nx146, A=>addressWrite(8));
   ix63 : xnor2 port map ( Y=>nx62, A0=>addressRead(9), A1=>nx149);
   ix150 : inv01 port map ( Y=>nx149, A=>addressWrite(9));
end RAMArch_unfold_1711 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CNNWithRAM is
   port (
      clk : IN std_logic ;
      rst : IN std_logic ;
      start : IN std_logic ;
      finishCNN : OUT std_logic) ;
end CNNWithRAM ;

architecture CNNWithRAMArch of CNNWithRAM is
   component CNNModule_8_16_5_5_3_12_13
      port (
         startCNN : IN std_logic ;
         clk : IN std_logic ;
         rst : IN std_logic ;
         weightsRamDataInBus : IN std_logic_vector (39 DOWNTO 0) ;
         windowRamDataInBus : IN std_logic_vector (79 DOWNTO 0) ;
         MFCWindowRam : IN std_logic ;
         MFCWeightsRam : IN std_logic ;
         MFCWrite : IN std_logic ;
         weightsRamAddress : OUT std_logic_vector (11 DOWNTO 0) ;
         windowRamAddressRead : OUT std_logic_vector (12 DOWNTO 0) ;
         windowRamAddressWrite : OUT std_logic_vector (12 DOWNTO 0) ;
         weightsRamRead : OUT std_logic ;
         windowRamRead : OUT std_logic ;
         windowRamWrite : OUT std_logic ;
         windowRamDataOutBus : OUT std_logic_vector (15 DOWNTO 0) ;
         finishNetwork : OUT std_logic) ;
   end component ;
   component RAM_13_16_80
      port (
         clk : IN std_logic ;
         rd : IN std_logic ;
         we : IN std_logic ;
         reset : IN std_logic ;
         addressRead : IN std_logic_vector (12 DOWNTO 0) ;
         addressWrite : IN std_logic_vector (12 DOWNTO 0) ;
         dataIn : IN std_logic_vector (15 DOWNTO 0) ;
         dataOut : OUT std_logic_vector (79 DOWNTO 0) ;
         MFCReadOut : OUT std_logic ;
         MFCWriteOut : OUT std_logic) ;
   end component ;
   signal MFCWindowRam, MFCWrite, windowRamAddressRead_12, 
      windowRamAddressRead_11, windowRamAddressRead_10, 
      windowRamAddressRead_9, windowRamAddressRead_8, windowRamAddressRead_7, 
      windowRamAddressRead_6, windowRamAddressRead_5, windowRamAddressRead_4, 
      windowRamAddressRead_3, windowRamAddressRead_2, windowRamAddressRead_1, 
      windowRamAddressRead_0, windowRamAddressWrite_12, 
      windowRamAddressWrite_11, windowRamAddressWrite_10, 
      windowRamAddressWrite_9, windowRamAddressWrite_8, 
      windowRamAddressWrite_7, windowRamAddressWrite_6, 
      windowRamAddressWrite_5, windowRamAddressWrite_4, 
      windowRamAddressWrite_3, windowRamAddressWrite_2, 
      windowRamAddressWrite_1, windowRamAddressWrite_0, windowRamRead, 
      windowRamWrite, GND: std_logic ;
   
   signal DANGLING : std_logic_vector (108 downto 0 );

begin
   CNNMap : CNNModule_8_16_5_5_3_12_13 port map ( startCNN=>start, clk=>clk, 
      rst=>rst, weightsRamDataInBus(39)=>GND, weightsRamDataInBus(38)=>GND, 
      weightsRamDataInBus(37)=>GND, weightsRamDataInBus(36)=>GND, 
      weightsRamDataInBus(35)=>GND, weightsRamDataInBus(34)=>GND, 
      weightsRamDataInBus(33)=>GND, weightsRamDataInBus(32)=>GND, 
      weightsRamDataInBus(31)=>GND, weightsRamDataInBus(30)=>GND, 
      weightsRamDataInBus(29)=>GND, weightsRamDataInBus(28)=>GND, 
      weightsRamDataInBus(27)=>GND, weightsRamDataInBus(26)=>GND, 
      weightsRamDataInBus(25)=>GND, weightsRamDataInBus(24)=>GND, 
      weightsRamDataInBus(23)=>GND, weightsRamDataInBus(22)=>GND, 
      weightsRamDataInBus(21)=>GND, weightsRamDataInBus(20)=>GND, 
      weightsRamDataInBus(19)=>GND, weightsRamDataInBus(18)=>GND, 
      weightsRamDataInBus(17)=>GND, weightsRamDataInBus(16)=>GND, 
      weightsRamDataInBus(15)=>GND, weightsRamDataInBus(14)=>GND, 
      weightsRamDataInBus(13)=>GND, weightsRamDataInBus(12)=>GND, 
      weightsRamDataInBus(11)=>GND, weightsRamDataInBus(10)=>GND, 
      weightsRamDataInBus(9)=>GND, weightsRamDataInBus(8)=>GND, 
      weightsRamDataInBus(7)=>GND, weightsRamDataInBus(6)=>GND, 
      weightsRamDataInBus(5)=>GND, weightsRamDataInBus(4)=>GND, 
      weightsRamDataInBus(3)=>GND, weightsRamDataInBus(2)=>GND, 
      weightsRamDataInBus(1)=>GND, weightsRamDataInBus(0)=>GND, 
      windowRamDataInBus(79)=>GND, windowRamDataInBus(78)=>GND, 
      windowRamDataInBus(77)=>GND, windowRamDataInBus(76)=>GND, 
      windowRamDataInBus(75)=>GND, windowRamDataInBus(74)=>GND, 
      windowRamDataInBus(73)=>GND, windowRamDataInBus(72)=>GND, 
      windowRamDataInBus(71)=>GND, windowRamDataInBus(70)=>GND, 
      windowRamDataInBus(69)=>GND, windowRamDataInBus(68)=>GND, 
      windowRamDataInBus(67)=>GND, windowRamDataInBus(66)=>GND, 
      windowRamDataInBus(65)=>GND, windowRamDataInBus(64)=>GND, 
      windowRamDataInBus(63)=>GND, windowRamDataInBus(62)=>GND, 
      windowRamDataInBus(61)=>GND, windowRamDataInBus(60)=>GND, 
      windowRamDataInBus(59)=>GND, windowRamDataInBus(58)=>GND, 
      windowRamDataInBus(57)=>GND, windowRamDataInBus(56)=>GND, 
      windowRamDataInBus(55)=>GND, windowRamDataInBus(54)=>GND, 
      windowRamDataInBus(53)=>GND, windowRamDataInBus(52)=>GND, 
      windowRamDataInBus(51)=>GND, windowRamDataInBus(50)=>GND, 
      windowRamDataInBus(49)=>GND, windowRamDataInBus(48)=>GND, 
      windowRamDataInBus(47)=>GND, windowRamDataInBus(46)=>GND, 
      windowRamDataInBus(45)=>GND, windowRamDataInBus(44)=>GND, 
      windowRamDataInBus(43)=>GND, windowRamDataInBus(42)=>GND, 
      windowRamDataInBus(41)=>GND, windowRamDataInBus(40)=>GND, 
      windowRamDataInBus(39)=>GND, windowRamDataInBus(38)=>GND, 
      windowRamDataInBus(37)=>GND, windowRamDataInBus(36)=>GND, 
      windowRamDataInBus(35)=>GND, windowRamDataInBus(34)=>GND, 
      windowRamDataInBus(33)=>GND, windowRamDataInBus(32)=>GND, 
      windowRamDataInBus(31)=>GND, windowRamDataInBus(30)=>GND, 
      windowRamDataInBus(29)=>GND, windowRamDataInBus(28)=>GND, 
      windowRamDataInBus(27)=>GND, windowRamDataInBus(26)=>GND, 
      windowRamDataInBus(25)=>GND, windowRamDataInBus(24)=>GND, 
      windowRamDataInBus(23)=>GND, windowRamDataInBus(22)=>GND, 
      windowRamDataInBus(21)=>GND, windowRamDataInBus(20)=>GND, 
      windowRamDataInBus(19)=>GND, windowRamDataInBus(18)=>GND, 
      windowRamDataInBus(17)=>GND, windowRamDataInBus(16)=>GND, 
      windowRamDataInBus(15)=>GND, windowRamDataInBus(14)=>GND, 
      windowRamDataInBus(13)=>GND, windowRamDataInBus(12)=>GND, 
      windowRamDataInBus(11)=>GND, windowRamDataInBus(10)=>GND, 
      windowRamDataInBus(9)=>GND, windowRamDataInBus(8)=>GND, 
      windowRamDataInBus(7)=>GND, windowRamDataInBus(6)=>GND, 
      windowRamDataInBus(5)=>GND, windowRamDataInBus(4)=>GND, 
      windowRamDataInBus(3)=>GND, windowRamDataInBus(2)=>GND, 
      windowRamDataInBus(1)=>GND, windowRamDataInBus(0)=>GND, MFCWindowRam=>
      MFCWindowRam, MFCWeightsRam=>GND, MFCWrite=>MFCWrite, 
      weightsRamAddress(11)=>DANGLING(0), weightsRamAddress(10)=>DANGLING(1), 
      weightsRamAddress(9)=>DANGLING(2), weightsRamAddress(8)=>DANGLING(3), 
      weightsRamAddress(7)=>DANGLING(4), weightsRamAddress(6)=>DANGLING(5), 
      weightsRamAddress(5)=>DANGLING(6), weightsRamAddress(4)=>DANGLING(7), 
      weightsRamAddress(3)=>DANGLING(8), weightsRamAddress(2)=>DANGLING(9), 
      weightsRamAddress(1)=>DANGLING(10), weightsRamAddress(0)=>DANGLING(11), 
      windowRamAddressRead(12)=>windowRamAddressRead_12, 
      windowRamAddressRead(11)=>windowRamAddressRead_11, 
      windowRamAddressRead(10)=>windowRamAddressRead_10, 
      windowRamAddressRead(9)=>windowRamAddressRead_9, 
      windowRamAddressRead(8)=>windowRamAddressRead_8, 
      windowRamAddressRead(7)=>windowRamAddressRead_7, 
      windowRamAddressRead(6)=>windowRamAddressRead_6, 
      windowRamAddressRead(5)=>windowRamAddressRead_5, 
      windowRamAddressRead(4)=>windowRamAddressRead_4, 
      windowRamAddressRead(3)=>windowRamAddressRead_3, 
      windowRamAddressRead(2)=>windowRamAddressRead_2, 
      windowRamAddressRead(1)=>windowRamAddressRead_1, 
      windowRamAddressRead(0)=>windowRamAddressRead_0, 
      windowRamAddressWrite(12)=>windowRamAddressWrite_12, 
      windowRamAddressWrite(11)=>windowRamAddressWrite_11, 
      windowRamAddressWrite(10)=>windowRamAddressWrite_10, 
      windowRamAddressWrite(9)=>windowRamAddressWrite_9, 
      windowRamAddressWrite(8)=>windowRamAddressWrite_8, 
      windowRamAddressWrite(7)=>windowRamAddressWrite_7, 
      windowRamAddressWrite(6)=>windowRamAddressWrite_6, 
      windowRamAddressWrite(5)=>windowRamAddressWrite_5, 
      windowRamAddressWrite(4)=>windowRamAddressWrite_4, 
      windowRamAddressWrite(3)=>windowRamAddressWrite_3, 
      windowRamAddressWrite(2)=>windowRamAddressWrite_2, 
      windowRamAddressWrite(1)=>windowRamAddressWrite_1, 
      windowRamAddressWrite(0)=>windowRamAddressWrite_0, weightsRamRead=>
      DANGLING(12), windowRamRead=>windowRamRead, windowRamWrite=>
      windowRamWrite, windowRamDataOutBus(15)=>DANGLING(13), 
      windowRamDataOutBus(14)=>DANGLING(14), windowRamDataOutBus(13)=>
      DANGLING(15), windowRamDataOutBus(12)=>DANGLING(16), 
      windowRamDataOutBus(11)=>DANGLING(17), windowRamDataOutBus(10)=>
      DANGLING(18), windowRamDataOutBus(9)=>DANGLING(19), 
      windowRamDataOutBus(8)=>DANGLING(20), windowRamDataOutBus(7)=>DANGLING
      (21), windowRamDataOutBus(6)=>DANGLING(22), windowRamDataOutBus(5)=>
      DANGLING(23), windowRamDataOutBus(4)=>DANGLING(24), 
      windowRamDataOutBus(3)=>DANGLING(25), windowRamDataOutBus(2)=>DANGLING
      (26), windowRamDataOutBus(1)=>DANGLING(27), windowRamDataOutBus(0)=>
      DANGLING(28), finishNetwork=>finishCNN);
   windowRam : RAM_13_16_80 port map ( clk=>clk, rd=>windowRamRead, we=>
      windowRamWrite, reset=>rst, addressRead(12)=>windowRamAddressRead_12, 
      addressRead(11)=>windowRamAddressRead_11, addressRead(10)=>
      windowRamAddressRead_10, addressRead(9)=>windowRamAddressRead_9, 
      addressRead(8)=>windowRamAddressRead_8, addressRead(7)=>
      windowRamAddressRead_7, addressRead(6)=>windowRamAddressRead_6, 
      addressRead(5)=>windowRamAddressRead_5, addressRead(4)=>
      windowRamAddressRead_4, addressRead(3)=>windowRamAddressRead_3, 
      addressRead(2)=>windowRamAddressRead_2, addressRead(1)=>
      windowRamAddressRead_1, addressRead(0)=>windowRamAddressRead_0, 
      addressWrite(12)=>windowRamAddressWrite_12, addressWrite(11)=>
      windowRamAddressWrite_11, addressWrite(10)=>windowRamAddressWrite_10, 
      addressWrite(9)=>windowRamAddressWrite_9, addressWrite(8)=>
      windowRamAddressWrite_8, addressWrite(7)=>windowRamAddressWrite_7, 
      addressWrite(6)=>windowRamAddressWrite_6, addressWrite(5)=>
      windowRamAddressWrite_5, addressWrite(4)=>windowRamAddressWrite_4, 
      addressWrite(3)=>windowRamAddressWrite_3, addressWrite(2)=>
      windowRamAddressWrite_2, addressWrite(1)=>windowRamAddressWrite_1, 
      addressWrite(0)=>windowRamAddressWrite_0, dataIn(15)=>GND, dataIn(14)
      =>GND, dataIn(13)=>GND, dataIn(12)=>GND, dataIn(11)=>GND, dataIn(10)=>
      GND, dataIn(9)=>GND, dataIn(8)=>GND, dataIn(7)=>GND, dataIn(6)=>GND, 
      dataIn(5)=>GND, dataIn(4)=>GND, dataIn(3)=>GND, dataIn(2)=>GND, 
      dataIn(1)=>GND, dataIn(0)=>GND, dataOut(79)=>DANGLING(29), dataOut(78)
      =>DANGLING(30), dataOut(77)=>DANGLING(31), dataOut(76)=>DANGLING(32), 
      dataOut(75)=>DANGLING(33), dataOut(74)=>DANGLING(34), dataOut(73)=>
      DANGLING(35), dataOut(72)=>DANGLING(36), dataOut(71)=>DANGLING(37), 
      dataOut(70)=>DANGLING(38), dataOut(69)=>DANGLING(39), dataOut(68)=>
      DANGLING(40), dataOut(67)=>DANGLING(41), dataOut(66)=>DANGLING(42), 
      dataOut(65)=>DANGLING(43), dataOut(64)=>DANGLING(44), dataOut(63)=>
      DANGLING(45), dataOut(62)=>DANGLING(46), dataOut(61)=>DANGLING(47), 
      dataOut(60)=>DANGLING(48), dataOut(59)=>DANGLING(49), dataOut(58)=>
      DANGLING(50), dataOut(57)=>DANGLING(51), dataOut(56)=>DANGLING(52), 
      dataOut(55)=>DANGLING(53), dataOut(54)=>DANGLING(54), dataOut(53)=>
      DANGLING(55), dataOut(52)=>DANGLING(56), dataOut(51)=>DANGLING(57), 
      dataOut(50)=>DANGLING(58), dataOut(49)=>DANGLING(59), dataOut(48)=>
      DANGLING(60), dataOut(47)=>DANGLING(61), dataOut(46)=>DANGLING(62), 
      dataOut(45)=>DANGLING(63), dataOut(44)=>DANGLING(64), dataOut(43)=>
      DANGLING(65), dataOut(42)=>DANGLING(66), dataOut(41)=>DANGLING(67), 
      dataOut(40)=>DANGLING(68), dataOut(39)=>DANGLING(69), dataOut(38)=>
      DANGLING(70), dataOut(37)=>DANGLING(71), dataOut(36)=>DANGLING(72), 
      dataOut(35)=>DANGLING(73), dataOut(34)=>DANGLING(74), dataOut(33)=>
      DANGLING(75), dataOut(32)=>DANGLING(76), dataOut(31)=>DANGLING(77), 
      dataOut(30)=>DANGLING(78), dataOut(29)=>DANGLING(79), dataOut(28)=>
      DANGLING(80), dataOut(27)=>DANGLING(81), dataOut(26)=>DANGLING(82), 
      dataOut(25)=>DANGLING(83), dataOut(24)=>DANGLING(84), dataOut(23)=>
      DANGLING(85), dataOut(22)=>DANGLING(86), dataOut(21)=>DANGLING(87), 
      dataOut(20)=>DANGLING(88), dataOut(19)=>DANGLING(89), dataOut(18)=>
      DANGLING(90), dataOut(17)=>DANGLING(91), dataOut(16)=>DANGLING(92), 
      dataOut(15)=>DANGLING(93), dataOut(14)=>DANGLING(94), dataOut(13)=>
      DANGLING(95), dataOut(12)=>DANGLING(96), dataOut(11)=>DANGLING(97), 
      dataOut(10)=>DANGLING(98), dataOut(9)=>DANGLING(99), dataOut(8)=>
      DANGLING(100), dataOut(7)=>DANGLING(101), dataOut(6)=>DANGLING(102), 
      dataOut(5)=>DANGLING(103), dataOut(4)=>DANGLING(104), dataOut(3)=>
      DANGLING(105), dataOut(2)=>DANGLING(106), dataOut(1)=>DANGLING(107), 
      dataOut(0)=>DANGLING(108), MFCReadOut=>MFCWindowRam, MFCWriteOut=>
      MFCWrite);
   ix327 : fake_gnd port map ( Y=>GND);
end CNNWithRAMArch ;

