
-- 
-- Definition of  SliceFilterController
-- 
--      Fri Apr 12 17:45:02 2019
--      
--      LeonardoSpectrum Level 3, 2018a.2
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SliceFilterController is
   port (
      start : IN std_logic ;
      convPoolSelect : IN std_logic ;
      filterLastLayer : IN std_logic ;
      finishConv : IN std_logic ;
      dmaAFinish : IN std_logic ;
      dmaBFinish : IN std_logic ;
      resetState : IN std_logic ;
      clk : IN std_logic ;
      outputSize : IN std_logic_vector (4 DOWNTO 0) ;
      loadBias : OUT std_logic ;
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
end SliceFilterController ;

architecture SliceFilterControllerArch of SliceFilterController is
   signal outputBufferEn_EXMPLR, addToOutputBuffer_EXMPLR, currentState_3, 
      nx587, currentState_1, currentState_4, nx14, outerCounterOut_1, 
      altOuterCounterOut_1, innerCounterOut_1, altInnerCounterOut_1, 
      altInnerCounterOut_0, nx26, nx32, altInnerCounterOut_4, 
      altInnerCounterOut_3, nx589, altInnerCounterOut_2, nx590, 
      innerCounterOut_0, nx100, nx108, nx116, nx118, altOuterCounterOut_0, 
      nx130, altOuterCounterOut_4, altOuterCounterOut_3, 
      altOuterCounterOut_2, nx592, outerCounterOut_0, nx212, nx220, nx224, 
      nx232, nx250, nx260, nx270, nx274, nx280, nx286, currentPage_0, nx308, 
      nx316, nx322, nx599, nx607, nx617, nx629, nx639, nx649, nx659, nx669, 
      nx689, nx699, nx709, nx727, nx749, nx759, nx767, nx779, nx790, nx793, 
      nx796, nx802, nx805, nx811, nx814, nx817, nx820, nx825, nx831, nx836, 
      nx839, nx842, nx846, nx849, nx854, nx864, nx867, nx870, nx875, nx878, 
      nx882, nx886, nx888, nx890, nx892, nx894, nx895, nx896, nx900, nx901, 
      nx912, nx915, nx918, nx923, nx925, nx927, nx930, nx931, nx935, nx940, 
      nx942, nx945, nx946, nx950, nx953, nx956, nx960, nx962, nx965, nx967, 
      nx970, nx972, nx976, nx979, nx984, nx987, nx990, nx992, nx996, nx998, 
      nx1001, nx1004, nx1007, nx1009, nx1012, nx1014, nx1017, nx1026, nx1030, 
      nx1036, nx1038, nx1042, nx1044, nx1046, nx1048, nx1050, nx1052, 
      currentState_0, nx739, nx1024, nx858, nx903, nx907, nx919, nx120, 
      nx1079, nx1054, nx1080, nx1081, nx719, nx1028, nx588, nx1082, nx1083, 
      nx679, nx1056, nx124, nx1084, nx1085: std_logic ;

begin
   addToOutputBuffer <= addToOutputBuffer_EXMPLR ;
   outputBufferEn <= outputBufferEn_EXMPLR ;
   ix351 : nor02_2x port map ( Y=>loadFilter, A0=>convPoolSelect, A1=>nx790
   );
   reg_currentState_2 : dffr port map ( Q=>OPEN, QB=>nx790, D=>nx759, CLK=>
      nx1026, R=>resetState);
   ix760 : mux21 port map ( Y=>nx759, A0=>nx793, A1=>nx790, S0=>nx802);
   ix251 : nor02_2x port map ( Y=>nx250, A0=>nx796, A1=>nx1030);
   ix797 : inv01 port map ( Y=>nx796, A=>convPoolSelect);
   ix283 : inv01 port map ( Y=>nx587, A=>nx802);
   ix803 : nor03_2x port map ( Y=>nx802, A0=>nx280, A1=>nx274, A2=>nx270);
   ix281 : nand03 port map ( Y=>nx280, A0=>nx805, A1=>nx950, A2=>nx817);
   reg_currentState_7 : dffr port map ( Q=>finish, QB=>nx805, D=>nx727, CLK
      =>nx1026, R=>resetState);
   ix728 : nor03_2x port map ( Y=>nx727, A0=>nx1054, A1=>nx224, A2=>nx120);
   ix618 : nor02_2x port map ( Y=>nx617, A0=>nx811, A1=>nx802);
   ix15 : nor02_2x port map ( Y=>nx14, A0=>nx796, A1=>nx814);
   reg_currentState_4 : dffr port map ( Q=>currentState_4, QB=>nx814, D=>
      nx599, CLK=>nx1024, R=>resetState);
   ix600 : oai21 port map ( Y=>nx599, A0=>nx814, A1=>nx587, B0=>nx817);
   reg_currentState_3 : dffr port map ( Q=>currentState_3, QB=>nx817, D=>
      nx767, CLK=>nx1024, R=>resetState);
   ix821 : nor02ii port map ( Y=>nx820, A0=>nx286, A1=>nx790);
   ix233 : nor03_2x port map ( Y=>nx232, A0=>nx1054, A1=>nx224, A2=>nx120);
   ix225 : nand04 port map ( Y=>nx224, A0=>nx825, A1=>nx931, A2=>nx935, A3=>
      nx946);
   ix826 : nor02_2x port map ( Y=>nx825, A0=>nx220, A1=>nx212);
   reg_outerCounterOut_3 : dff port map ( Q=>OPEN, QB=>nx927, D=>
      altOuterCounterOut_3, CLK=>clk);
   ix710 : mux21 port map ( Y=>nx709, A0=>nx831, A1=>nx836, S0=>nx588);
   outerCounterMap_counterReg_reg_Q_3 : dffr port map ( Q=>
      altOuterCounterOut_3, QB=>nx831, D=>nx709, CLK=>clk, R=>nx130);
   ix131 : nor02_2x port map ( Y=>nx130, A0=>nx1024, A1=>nx1028);
   ix167 : nor02_2x port map ( Y=>nx592, A0=>nx839, A1=>nx925);
   ix700 : mux21 port map ( Y=>nx699, A0=>nx839, A1=>nx842, S0=>nx588);
   outerCounterMap_counterReg_reg_Q_2 : dffr port map ( Q=>
      altOuterCounterOut_2, QB=>nx839, D=>nx699, CLK=>clk, R=>nx130);
   ix690 : mux21 port map ( Y=>nx689, A0=>nx846, A1=>nx849, S0=>nx588);
   outerCounterMap_counterReg_reg_Q_1 : dffr port map ( Q=>
      altOuterCounterOut_1, QB=>nx846, D=>nx689, CLK=>clk, R=>nx130);
   outerCounterMap_counterReg_reg_Q_0 : dffr port map ( Q=>
      altOuterCounterOut_0, QB=>nx923, D=>nx679, CLK=>clk, R=>nx130);
   reg_innerCounterOut_3 : dff port map ( Q=>OPEN, QB=>nx895, D=>
      altInnerCounterOut_3, CLK=>clk);
   innerCounterMap_counterReg_reg_Q_3 : dffr port map ( Q=>
      altInnerCounterOut_3, QB=>nx894, D=>nx659, CLK=>clk, R=>nx26);
   ix660 : oai21 port map ( Y=>nx659, A0=>nx864, A1=>nx882, B0=>nx892);
   ix63 : nor02_2x port map ( Y=>nx590, A0=>nx867, A1=>nx890);
   ix650 : oai21 port map ( Y=>nx649, A0=>nx870, A1=>nx882, B0=>nx888);
   innerCounterMap_counterReg_reg_Q_2 : dffr port map ( Q=>
      altInnerCounterOut_2, QB=>nx867, D=>nx649, CLK=>clk, R=>nx26);
   ix27 : nor02_2x port map ( Y=>nx26, A0=>nx1024, A1=>nx854);
   ix33 : nor02_2x port map ( Y=>nx32, A0=>nx875, A1=>nx886);
   ix640 : oai33 port map ( Y=>nx639, A0=>nx32, A1=>nx878, A2=>nx882, B0=>
      nx875, B1=>outputBufferEn_EXMPLR, B2=>nx1084);
   ix879 : nor02_2x port map ( Y=>nx878, A0=>altInnerCounterOut_0, A1=>
      altInnerCounterOut_1);
   innerCounterMap_counterReg_reg_Q_0 : dffr port map ( Q=>
      altInnerCounterOut_0, QB=>nx886, D=>nx629, CLK=>clk, R=>nx26);
   ix883 : nor02_2x port map ( Y=>nx882, A0=>outputBufferEn_EXMPLR, A1=>
      nx1084);
   reg_currentState_6 : dffr port map ( Q=>outputBufferEn_EXMPLR, QB=>OPEN, 
      D=>nx617, CLK=>nx1024, R=>resetState);
   innerCounterMap_counterReg_reg_Q_1 : dffr port map ( Q=>
      altInnerCounterOut_1, QB=>nx875, D=>nx639, CLK=>clk, R=>nx26);
   ix889 : nand03 port map ( Y=>nx888, A0=>altInnerCounterOut_2, A1=>nx1054, 
      A2=>nx1028);
   ix891 : nand02 port map ( Y=>nx890, A0=>altInnerCounterOut_1, A1=>
      altInnerCounterOut_0);
   ix893 : nand03 port map ( Y=>nx892, A0=>altInnerCounterOut_3, A1=>nx1054, 
      A2=>nx1028);
   ix897 : inv01 port map ( Y=>nx896, A=>outputSize(3));
   reg_innerCounterOut_2 : dff port map ( Q=>OPEN, QB=>nx900, D=>
      altInnerCounterOut_2, CLK=>clk);
   ix902 : inv01 port map ( Y=>nx901, A=>outputSize(2));
   reg_innerCounterOut_0 : dff port map ( Q=>innerCounterOut_0, QB=>OPEN, D
      =>altInnerCounterOut_0, CLK=>clk);
   reg_innerCounterOut_4 : dff port map ( Q=>OPEN, QB=>nx918, D=>
      altInnerCounterOut_4, CLK=>clk);
   innerCounterMap_counterReg_reg_Q_4 : dffr port map ( Q=>
      altInnerCounterOut_4, QB=>OPEN, D=>nx669, CLK=>clk, R=>nx26);
   ix670 : oai21 port map ( Y=>nx669, A0=>nx912, A1=>nx882, B0=>nx915);
   ix913 : xnor2 port map ( Y=>nx912, A0=>altInnerCounterOut_4, A1=>nx589);
   ix75 : nor03_2x port map ( Y=>nx589, A0=>nx894, A1=>nx867, A2=>nx890);
   ix916 : nand03 port map ( Y=>nx915, A0=>altInnerCounterOut_4, A1=>nx1054, 
      A2=>nx1028);
   reg_innerCounterOut_1 : dff port map ( Q=>innerCounterOut_1, QB=>OPEN, D
      =>altInnerCounterOut_1, CLK=>clk);
   ix926 : nand02 port map ( Y=>nx925, A0=>altOuterCounterOut_1, A1=>
      altOuterCounterOut_0);
   reg_outerCounterOut_2 : dff port map ( Q=>OPEN, QB=>nx930, D=>
      altOuterCounterOut_2, CLK=>clk);
   ix932 : xnor2 port map ( Y=>nx931, A0=>outerCounterOut_0, A1=>
      outputSize(0));
   reg_outerCounterOut_0 : dff port map ( Q=>outerCounterOut_0, QB=>OPEN, D
      =>altOuterCounterOut_0, CLK=>clk);
   reg_outerCounterOut_4 : dff port map ( Q=>OPEN, QB=>nx945, D=>
      altOuterCounterOut_4, CLK=>clk);
   outerCounterMap_counterReg_reg_Q_4 : dffr port map ( Q=>
      altOuterCounterOut_4, QB=>nx940, D=>nx719, CLK=>clk, R=>nx130);
   ix947 : xnor2 port map ( Y=>nx946, A0=>outerCounterOut_1, A1=>
      outputSize(1));
   reg_outerCounterOut_1 : dff port map ( Q=>outerCounterOut_1, QB=>OPEN, D
      =>altOuterCounterOut_1, CLK=>clk);
   reg_currentState_5 : dffr port map ( Q=>addToOutputBuffer_EXMPLR, QB=>
      nx950, D=>nx607, CLK=>nx1024, R=>resetState);
   ix608 : nor02_2x port map ( Y=>nx607, A0=>nx953, A1=>nx802);
   ix954 : nand02 port map ( Y=>nx953, A0=>nx796, A1=>currentState_4);
   ix275 : nand02 port map ( Y=>nx274, A0=>nx956, A1=>nx1054);
   ix957 : nand02 port map ( Y=>nx956, A0=>dmaAFinish, A1=>currentState_1);
   ix750 : mux21 port map ( Y=>nx749, A0=>nx960, A1=>nx962, S0=>nx802);
   ix961 : nand02 port map ( Y=>nx960, A0=>nx796, A1=>nx1084);
   reg_currentState_1 : dffr port map ( Q=>currentState_1, QB=>nx962, D=>
      nx749, CLK=>nx1026, R=>resetState);
   ix271 : oai21 port map ( Y=>nx270, A0=>nx965, A1=>nx967, B0=>nx972);
   ix966 : inv01 port map ( Y=>nx965, A=>dmaBFinish);
   ix968 : aoi21 port map ( Y=>nx967, A0=>finishConv, A1=>currentState_4, B0
      =>nx260);
   ix261 : nor02_2x port map ( Y=>nx260, A0=>nx790, A1=>nx970);
   ix971 : nor02_2x port map ( Y=>nx970, A0=>convPoolSelect, A1=>dmaAFinish
   );
   ix973 : nand02 port map ( Y=>nx972, A0=>start, A1=>currentState_0);
   ix357 : nand02 port map ( Y=>conv, A0=>nx976, A1=>nx953);
   ix977 : nand02 port map ( Y=>nx976, A0=>nx796, A1=>currentState_3);
   ix361 : nor02_2x port map ( Y=>pool, A0=>nx796, A1=>nx979);
   ix980 : nor02_2x port map ( Y=>nx979, A0=>currentState_3, A1=>
      currentState_4);
   ix365 : nor02_2x port map ( Y=>shift12, A0=>nx817, A1=>currentPage_0);
   pageRegMap_reg_Q_0 : dffr port map ( Q=>currentPage_0, QB=>nx984, D=>
      nx779, CLK=>clk, R=>nx1084);
   ix301 : nor02_2x port map ( Y=>shift21, A0=>nx817, A1=>nx984);
   ix367 : nor02_2x port map ( Y=>readNextCol, A0=>nx814, A1=>nx987);
   ix988 : nor02_2x port map ( Y=>nx987, A0=>nx118, A1=>nx100);
   ix119 : nand02 port map ( Y=>nx118, A0=>nx990, A1=>nx992);
   ix101 : nand03 port map ( Y=>nx100, A0=>nx903, A1=>nx907, A2=>nx919);
   ix329 : aoi21 port map ( Y=>saveToRAM, A0=>nx796, A1=>nx996, B0=>nx998);
   ix997 : inv01 port map ( Y=>nx996, A=>filterLastLayer);
   ix999 : nor02ii port map ( Y=>nx998, A0=>nx322, A1=>nx1009);
   ix323 : oai21 port map ( Y=>nx322, A0=>nx817, A1=>nx1001, B0=>nx805);
   ix1002 : nor02_2x port map ( Y=>nx1001, A0=>nx316, A1=>nx308);
   ix317 : nand04 port map ( Y=>nx316, A0=>nx1004, A1=>nx927, A2=>nx945, A3
      =>nx930);
   ix1005 : nor02_2x port map ( Y=>nx1004, A0=>outerCounterOut_0, A1=>
      outerCounterOut_1);
   ix309 : nand04 port map ( Y=>nx308, A0=>nx1007, A1=>nx895, A2=>nx918, A3
      =>nx900);
   ix1008 : nor02_2x port map ( Y=>nx1007, A0=>innerCounterOut_0, A1=>
      innerCounterOut_1);
   ix1010 : nand02 port map ( Y=>nx1009, A0=>currentState_3, A1=>
      currentPage_0);
   ix347 : oai221 port map ( Y=>loadWindow, A0=>nx120, A1=>nx1012, B0=>
      nx1030, B1=>nx1014, C0=>nx790);
   ix1013 : nand02 port map ( Y=>nx1012, A0=>currentState_4, A1=>nx224);
   ix1015 : nand02 port map ( Y=>nx1014, A0=>start, A1=>convPoolSelect);
   ix333 : oai21 port map ( Y=>loadBias, A0=>nx1017, A1=>nx960, B0=>nx962);
   ix1018 : inv01 port map ( Y=>nx1017, A=>start);
   ix1025 : inv02 port map ( Y=>nx1026, A=>clk);
   ix1029 : inv02 port map ( Y=>nx1030, A=>nx1085);
   ix794 : nor02_2x port map ( Y=>nx793, A0=>nx250, A1=>currentState_1);
   ix812 : nor02_2x port map ( Y=>nx811, A0=>nx14, A1=>
      addToOutputBuffer_EXMPLR);
   ix768 : nor02_2x port map ( Y=>nx767, A0=>nx820, A1=>nx802);
   ix287 : nor02_2x port map ( Y=>nx286, A0=>nx232, A1=>nx1056);
   ix221 : xnor2 port map ( Y=>nx220, A0=>nx927, A1=>outputSize(3));
   ix837 : xnor2 port map ( Y=>nx836, A0=>nx831, A1=>nx1036);
   ix1035 : inv01 port map ( Y=>nx1036, A=>nx592);
   ix843 : xnor2 port map ( Y=>nx842, A0=>nx839, A1=>nx1038);
   ix137 : nand02 port map ( Y=>nx1038, A0=>altOuterCounterOut_1, A1=>
      altOuterCounterOut_0);
   ix850 : xnor2 port map ( Y=>nx849, A0=>nx846, A1=>nx923);
   ix855 : nor02_2x port map ( Y=>nx854, A0=>nx124, A1=>nx1085);
   ix117 : xnor2 port map ( Y=>nx116, A0=>nx895, A1=>outputSize(3));
   ix865 : xnor2 port map ( Y=>nx864, A0=>nx894, A1=>nx1042);
   ix1041 : inv01 port map ( Y=>nx1042, A=>nx590);
   ix871 : xnor2 port map ( Y=>nx870, A0=>nx867, A1=>nx1044);
   ix1043 : inv01 port map ( Y=>nx1044, A=>nx32);
   ix630 : xnor2 port map ( Y=>nx629, A0=>nx886, A1=>nx1046);
   ix1045 : inv01 port map ( Y=>nx1046, A=>nx882);
   ix109 : xnor2 port map ( Y=>nx108, A0=>nx900, A1=>outputSize(2));
   ix1047 : inv01 port map ( Y=>nx1048, A=>outputSize(4));
   ix213 : xnor2 port map ( Y=>nx212, A0=>nx930, A1=>outputSize(2));
   ix936 : xnor2 port map ( Y=>nx935, A0=>nx945, A1=>nx1048);
   ix943 : xnor2 port map ( Y=>nx942, A0=>nx940, A1=>nx1050);
   ix179 : nand03 port map ( Y=>nx1050, A0=>altOuterCounterOut_3, A1=>
      altOuterCounterOut_2, A2=>nx1052);
   ix1051 : inv01 port map ( Y=>nx1052, A=>nx925);
   ix780 : xnor2 port map ( Y=>nx779, A0=>nx984, A1=>nx1046);
   ix991 : xnor2 port map ( Y=>nx990, A0=>nx895, A1=>nx896);
   ix993 : xnor2 port map ( Y=>nx992, A0=>nx900, A1=>nx901);
   reg_currentState_0 : dffs_ni port map ( Q=>currentState_0, QB=>OPEN, D=>
      nx739, CLK=>nx1024, S=>resetState);
   ix740 : oai21 port map ( Y=>nx739, A0=>nx1028, A1=>nx587, B0=>nx805);
   ix1023 : inv02 port map ( Y=>nx1024, A=>clk);
   ix859 : nor02_2x port map ( Y=>nx858, A0=>nx116, A1=>nx108);
   ix904 : xnor2 port map ( Y=>nx903, A0=>innerCounterOut_0, A1=>
      outputSize(0));
   ix908 : xnor2 port map ( Y=>nx907, A0=>nx918, A1=>nx1048);
   ix920 : xnor2 port map ( Y=>nx919, A0=>innerCounterOut_1, A1=>
      outputSize(1));
   ix121 : nand04 port map ( Y=>nx120, A0=>nx858, A1=>nx903, A2=>nx907, A3=>
      nx919);
   ix1086 : buf04 port map ( Y=>nx1079, A=>currentState_0);
   reg_nx1054 : inv02 port map ( Y=>nx1054, A=>outputBufferEn_EXMPLR);
   ix1087 : nor02_2x port map ( Y=>nx1080, A0=>nx1054, A1=>nx120);
   ix1088 : nor02_2x port map ( Y=>nx1081, A0=>nx1085, A1=>nx1080);
   reg_nx719 : oai32 port map ( Y=>nx719, A0=>nx1080, A1=>nx1085, A2=>nx940, 
      B0=>nx1081, B1=>nx942);
   reg_nx1028 : inv02 port map ( Y=>nx1028, A=>nx1085);
   reg_nx588 : oai21 port map ( Y=>nx588, A0=>nx1054, A1=>nx120, B0=>nx1028
   );
   ix1089 : inv01 port map ( Y=>nx1082, A=>nx854);
   ix1090 : inv02 port map ( Y=>nx1083, A=>nx923);
   reg_nx679 : oai22 port map ( Y=>nx679, A0=>nx1082, A1=>nx923, B0=>nx1083, 
      B1=>nx854);
   reg_nx1056 : inv02 port map ( Y=>nx1056, A=>outputBufferEn_EXMPLR);
   reg_nx124 : nor02_2x port map ( Y=>nx124, A0=>nx1056, A1=>nx120);
   ix1091 : buf16 port map ( Y=>nx1084, A=>nx1079);
   ix1092 : buf16 port map ( Y=>nx1085, A=>nx1079);
end SliceFilterControllerArch ;

