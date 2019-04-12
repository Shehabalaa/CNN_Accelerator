
-- 
-- Definition of  ControlUnit
-- 
--      Fri Apr 12 18:02:15 2019
--      
--      LeonardoSpectrum Level 3, 2018a.2
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity SliceFilterController_5 is
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
end SliceFilterController_5 ;

architecture SliceFilterControllerArch of SliceFilterController_5 is
   signal outputBufferEn_EXMPLR, addToOutputBuffer_EXMPLR, currentState_3, 
      nx587, currentState_1, currentState_0, currentState_4, nx14, 
      outerCounterOut_1, altOuterCounterOut_1, innerCounterOut_1, 
      altInnerCounterOut_1, altInnerCounterOut_0, nx588, nx26, nx32, 
      altInnerCounterOut_4, altInnerCounterOut_3, nx589, 
      altInnerCounterOut_2, nx590, innerCounterOut_0, nx100, nx108, nx116, 
      nx118, nx120, nx124, altOuterCounterOut_0, nx130, altOuterCounterOut_4, 
      altOuterCounterOut_3, altOuterCounterOut_2, nx592, outerCounterOut_0, 
      nx212, nx220, nx224, nx232, nx250, nx260, nx270, nx274, nx280, nx286, 
      currentPage_0, nx308, nx316, nx322, nx599, nx607, nx617, nx629, nx639, 
      nx649, nx659, nx669, nx679, nx689, nx699, nx709, nx719, nx727, nx739, 
      nx749, nx759, nx767, nx779, nx790, nx793, nx796, nx802, nx805, nx811, 
      nx814, nx817, nx820, nx825, nx831, nx836, nx839, nx842, nx846, nx849, 
      nx854, nx858, nx864, nx867, nx870, nx875, nx878, nx882, nx886, nx888, 
      nx890, nx892, nx894, nx895, nx896, nx900, nx901, nx903, nx907, nx912, 
      nx915, nx918, nx919, nx923, nx925, nx927, nx930, nx931, nx935, nx940, 
      nx942, nx945, nx946, nx950, nx953, nx956, nx960, nx962, nx965, nx967, 
      nx970, nx972, nx976, nx979, nx984, nx987, nx990, nx992, nx996, nx998, 
      nx1001, nx1004, nx1007, nx1009, nx1012, nx1014, nx1017, nx1024, nx1026, 
      nx1028, nx1030, nx1036, nx1038, nx1040, nx1042, nx1044, nx1046, nx1048, 
      nx1050, nx1052, nx1054, nx1056: std_logic ;

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
   ix740 : oai21 port map ( Y=>nx739, A0=>nx1028, A1=>nx587, B0=>nx805);
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
   ix121 : nand04 port map ( Y=>nx120, A0=>nx858, A1=>nx903, A2=>nx907, A3=>
      nx919);
   ix859 : nor02_2x port map ( Y=>nx858, A0=>nx116, A1=>nx108);
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
      nx875, B1=>outputBufferEn_EXMPLR, B2=>currentState_0);
   ix879 : nor02_2x port map ( Y=>nx878, A0=>altInnerCounterOut_0, A1=>
      altInnerCounterOut_1);
   innerCounterMap_counterReg_reg_Q_0 : dffr port map ( Q=>
      altInnerCounterOut_0, QB=>nx886, D=>nx629, CLK=>clk, R=>nx26);
   ix883 : nor02_2x port map ( Y=>nx882, A0=>outputBufferEn_EXMPLR, A1=>
      currentState_0);
   reg_currentState_6 : dffr port map ( Q=>outputBufferEn_EXMPLR, QB=>OPEN, 
      D=>nx617, CLK=>nx1024, R=>resetState);
   reg_currentState_0 : dffs_ni port map ( Q=>currentState_0, QB=>OPEN, D=>
      nx739, CLK=>nx1024, S=>resetState);
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
   ix904 : xnor2 port map ( Y=>nx903, A0=>innerCounterOut_0, A1=>
      outputSize(0));
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
   ix920 : xnor2 port map ( Y=>nx919, A0=>innerCounterOut_1, A1=>
      outputSize(1));
   reg_innerCounterOut_1 : dff port map ( Q=>innerCounterOut_1, QB=>OPEN, D
      =>altInnerCounterOut_1, CLK=>clk);
   ix127 : oai21 port map ( Y=>nx588, A0=>nx120, A1=>nx1054, B0=>nx1028);
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
   ix720 : mux21 port map ( Y=>nx719, A0=>nx940, A1=>nx942, S0=>nx588);
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
   ix961 : nand02 port map ( Y=>nx960, A0=>nx796, A1=>currentState_0);
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
      nx779, CLK=>clk, R=>currentState_0);
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
   ix1023 : inv02 port map ( Y=>nx1024, A=>clk);
   ix1025 : inv02 port map ( Y=>nx1026, A=>clk);
   ix1027 : inv02 port map ( Y=>nx1028, A=>currentState_0);
   ix1029 : inv02 port map ( Y=>nx1030, A=>currentState_0);
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
   ix680 : xnor2 port map ( Y=>nx679, A0=>nx923, A1=>nx1040);
   ix1039 : inv01 port map ( Y=>nx1040, A=>nx854);
   ix855 : nor02_2x port map ( Y=>nx854, A0=>nx124, A1=>currentState_0);
   ix125 : nor02_2x port map ( Y=>nx124, A0=>nx120, A1=>nx1056);
   ix117 : xnor2 port map ( Y=>nx116, A0=>nx895, A1=>outputSize(3));
   ix865 : xnor2 port map ( Y=>nx864, A0=>nx894, A1=>nx1042);
   ix1041 : inv01 port map ( Y=>nx1042, A=>nx590);
   ix871 : xnor2 port map ( Y=>nx870, A0=>nx867, A1=>nx1044);
   ix1043 : inv01 port map ( Y=>nx1044, A=>nx32);
   ix630 : xnor2 port map ( Y=>nx629, A0=>nx886, A1=>nx1046);
   ix1045 : inv01 port map ( Y=>nx1046, A=>nx882);
   ix109 : xnor2 port map ( Y=>nx108, A0=>nx900, A1=>outputSize(2));
   ix908 : xnor2 port map ( Y=>nx907, A0=>nx918, A1=>nx1048);
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
   ix1053 : inv02 port map ( Y=>nx1054, A=>outputBufferEn_EXMPLR);
   ix1055 : inv02 port map ( Y=>nx1056, A=>outputBufferEn_EXMPLR);
end SliceFilterControllerArch ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.adk_components.all;

entity ControlUnit is
   port (
      clk : IN std_logic ;
      layersNumber : IN std_logic_vector (1 DOWNTO 0) ;
      filtersNumber : IN std_logic_vector (2 DOWNTO 0) ;
      filterDepth : IN std_logic_vector (2 DOWNTO 0) ;
      filterOutputSize : IN std_logic_vector (4 DOWNTO 0) ;
      startNetwork : IN std_logic ;
      convPoolSelect : IN std_logic ;
      convFinish : IN std_logic ;
      dmaAFinish : IN std_logic ;
      dmaBFinish : IN std_logic ;
      resetNetwork : IN std_logic ;
      loadLayerConfig : OUT std_logic ;
      loadNetworkConfig : OUT std_logic ;
      loadFilterConfig : OUT std_logic ;
      loadBias : OUT std_logic ;
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
      finishNetwork : OUT std_logic) ;
end ControlUnit ;

architecture ControlUnitArch of ControlUnit is
   component SliceFilterController_5
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
   end component ;
   signal loadNetworkConfig_EXMPLR, loadFilterConfig_EXMPLR, filterLastLayer, 
      startSlice, finishSlice, filterMap_currentState_1, nx197, NOT_clk, 
      nx14, filterMap_counterOut_2, filterMap_altCounterOut_2, 
      filterMap_altCounterOut_1, nx199, filterMap_altCounterOut_0, nx24, 
      nx54, filterMap_counterOut_0, nx62, filterMap_counterOut_1, 
      oneLayerMap_currentState_1, oneLayerMap_currentState_0, nx200, nx116, 
      networkMap_currentState_1, networkMap_currentState_0, nx134, nx138, 
      nx144, networkMap_counterOut_1, networkMap_altCounterOut_1, 
      networkMap_altCounterOut_0, nx156, nx174, networkMap_counterOut_0, 
      nx192, nx212, oneLayerMap_counterOut_2, oneLayerMap_altCounterOut_2, 
      oneLayerMap_altCounterOut_1, oneLayerMap_altCounterOut_0, nx228, nx258, 
      oneLayerMap_counterOut_0, oneLayerMap_counterOut_1, nx286, nx290, 
      nx308, nx209, nx219, nx229, nx239, nx249, nx259, nx269, nx279, nx289, 
      nx299, nx309, nx319, nx329, nx339, nx353, nx360, nx367, nx370, nx373, 
      nx377, nx381, nx383, nx385, nx386, nx388, nx392, nx397, nx399, nx401, 
      nx406, nx412, nx417, nx420, nx423, nx425, nx432, nx435, nx438, nx442, 
      nx446, nx447, nx450, nx452, nx454, nx458, nx462, nx465, nx468, nx473, 
      nx476, nx479, nx481, nx488, nx492, nx496, nx501, nx503, nx505, nx509, 
      nx511, nx513, nx515, nx519, nx522, nx524, nx526, nx530, nx537, nx539, 
      nx541, nx547, nx549, nx551, nx553, nx555, nx557, nx559, nx561, nx563: 
   std_logic ;

begin
   loadNetworkConfig <= loadNetworkConfig_EXMPLR ;
   loadFilterConfig <= loadFilterConfig_EXMPLR ;
   sliceFilterMap : SliceFilterController_5 port map ( start=>startSlice, 
      convPoolSelect=>convPoolSelect, filterLastLayer=>filterLastLayer, 
      finishConv=>convFinish, dmaAFinish=>dmaAFinish, dmaBFinish=>dmaBFinish, 
      resetState=>resetNetwork, clk=>clk, outputSize(4)=>filterOutputSize(4), 
      outputSize(3)=>filterOutputSize(3), outputSize(2)=>filterOutputSize(2), 
      outputSize(1)=>filterOutputSize(1), outputSize(0)=>filterOutputSize(0), 
      loadBias=>loadBias, loadFilter=>loadFilter, loadWindow=>loadWindow, 
      conv=>conv, pool=>pool, shift12=>shift12, shift21=>shift21, 
      readNextCol=>readNextCol, addToOutputBuffer=>addToOutputBuffer, 
      outputBufferEn=>outputBufferEn, saveToRAM=>saveToRAM, finish=>
      finishSlice);
   ix81 : nor02_2x port map ( Y=>startSlice, A0=>nx559, A1=>nx539);
   ix250 : mux21 port map ( Y=>nx249, A0=>nx557, A1=>nx353, S0=>nx197);
   filterMap_reg_currentState_1 : dffr port map ( Q=>
      filterMap_currentState_1, QB=>OPEN, D=>nx249, CLK=>NOT_clk, R=>
      resetNetwork);
   ix357 : inv02 port map ( Y=>NOT_clk, A=>clk);
   ix210 : oai21 port map ( Y=>nx209, A0=>nx537, A1=>nx360, B0=>nx519);
   ix361 : oai21 port map ( Y=>nx360, A0=>filterLastLayer, A1=>
      loadFilterConfig_EXMPLR, B0=>nx14);
   ix87 : nor03_2x port map ( Y=>filterLastLayer, A0=>nx54, A1=>nx62, A2=>
      nx399);
   ix55 : xnor2 port map ( Y=>nx54, A0=>filterMap_counterOut_2, A1=>nx392);
   filterMap_reg_counterOut_2 : dff port map ( Q=>filterMap_counterOut_2, QB
      =>OPEN, D=>filterMap_altCounterOut_2, CLK=>clk);
   filterMap_counterMap_counterReg_reg_Q_2 : dffr port map ( Q=>
      filterMap_altCounterOut_2, QB=>OPEN, D=>nx239, CLK=>clk, R=>nx24);
   ix240 : oai21 port map ( Y=>nx239, A0=>nx367, A1=>nx381, B0=>nx386);
   ix368 : xnor2 port map ( Y=>nx367, A0=>filterMap_altCounterOut_2, A1=>
      nx199);
   ix41 : nor02_2x port map ( Y=>nx199, A0=>nx370, A1=>nx385);
   ix230 : mux21 port map ( Y=>nx229, A0=>nx373, A1=>nx370, S0=>nx381);
   filterMap_counterMap_counterReg_reg_Q_1 : dffr port map ( Q=>
      filterMap_altCounterOut_1, QB=>nx370, D=>nx229, CLK=>clk, R=>nx24);
   ix25 : nor02_2x port map ( Y=>nx24, A0=>nx537, A1=>nx377);
   ix378 : nand02 port map ( Y=>nx377, A0=>clk, A1=>nx557);
   filterMap_counterMap_counterReg_reg_Q_0 : dffr port map ( Q=>
      filterMap_altCounterOut_0, QB=>nx385, D=>nx219, CLK=>clk, R=>nx24);
   ix382 : oai21 port map ( Y=>nx381, A0=>nx557, A1=>finishSlice, B0=>nx383
   );
   filterMap_reg_currentState_0 : dffr port map ( Q=>OPEN, QB=>nx383, D=>
      nx209, CLK=>NOT_clk, R=>resetNetwork);
   ix387 : oai21 port map ( Y=>nx386, A0=>nx537, A1=>nx388, B0=>
      filterMap_altCounterOut_2);
   ix389 : nor02_2x port map ( Y=>nx388, A0=>nx557, A1=>finishSlice);
   ix393 : inv01 port map ( Y=>nx392, A=>filterDepth(2));
   ix63 : xnor2 port map ( Y=>nx62, A0=>filterMap_counterOut_0, A1=>nx397);
   filterMap_reg_counterOut_0 : dff port map ( Q=>filterMap_counterOut_0, QB
      =>OPEN, D=>filterMap_altCounterOut_0, CLK=>clk);
   ix398 : inv01 port map ( Y=>nx397, A=>filterDepth(0));
   ix400 : nand02 port map ( Y=>nx399, A0=>nx401, A1=>startSlice);
   ix402 : xnor2 port map ( Y=>nx401, A0=>filterMap_counterOut_1, A1=>
      filterDepth(1));
   filterMap_reg_counterOut_1 : dff port map ( Q=>filterMap_counterOut_1, QB
      =>OPEN, D=>filterMap_altCounterOut_1, CLK=>clk);
   ix315 : nor02_2x port map ( Y=>loadFilterConfig_EXMPLR, A0=>
      filterMap_currentState_1, A1=>nx406);
   ix407 : nor02ii port map ( Y=>nx406, A0=>nx308, A1=>nx383);
   ix309 : nor02_2x port map ( Y=>nx308, A0=>nx563, A1=>
      oneLayerMap_currentState_0);
   ix340 : mux21 port map ( Y=>nx339, A0=>nx561, A1=>nx412, S0=>nx200);
   oneLayerMap_reg_currentState_1 : dffr port map ( Q=>
      oneLayerMap_currentState_1, QB=>OPEN, D=>nx339, CLK=>NOT_clk, R=>
      resetNetwork);
   ix260 : oai21 port map ( Y=>nx259, A0=>oneLayerMap_currentState_0, A1=>
      nx417, B0=>nx513);
   ix418 : nor02ii port map ( Y=>nx417, A0=>nx290, A1=>nx511);
   ix291 : nor02_2x port map ( Y=>nx290, A0=>nx541, A1=>nx425);
   ix421 : oai21 port map ( Y=>nx420, A0=>nx116, A1=>nx561, B0=>nx423);
   ix117 : nor02_2x port map ( Y=>nx116, A0=>nx557, A1=>nx383);
   oneLayerMap_reg_currentState_0 : dffr port map ( Q=>
      oneLayerMap_currentState_0, QB=>nx423, D=>nx259, CLK=>NOT_clk, R=>
      resetNetwork);
   ix426 : nor02ii port map ( Y=>nx425, A0=>nx286, A1=>nx462);
   ix287 : nor03_2x port map ( Y=>nx286, A0=>nx561, A1=>nx258, A2=>nx452);
   ix259 : xnor2 port map ( Y=>nx258, A0=>oneLayerMap_counterOut_2, A1=>
      nx450);
   oneLayerMap_reg_counterOut_2 : dff port map ( Q=>oneLayerMap_counterOut_2, 
      QB=>OPEN, D=>oneLayerMap_altCounterOut_2, CLK=>clk);
   ix330 : mux21 port map ( Y=>nx329, A0=>nx432, A1=>nx447, S0=>nx541);
   ix320 : mux21 port map ( Y=>nx319, A0=>nx438, A1=>nx435, S0=>nx541);
   oneLayerMap_counterMap_counterReg_reg_Q_1 : dffr port map ( Q=>
      oneLayerMap_altCounterOut_1, QB=>nx435, D=>nx319, CLK=>clk, R=>nx228);
   ix229 : nor02_2x port map ( Y=>nx228, A0=>oneLayerMap_currentState_0, A1
      =>nx442);
   ix443 : nand02 port map ( Y=>nx442, A0=>clk, A1=>nx561);
   oneLayerMap_counterMap_counterReg_reg_Q_0 : dffr port map ( Q=>
      oneLayerMap_altCounterOut_0, QB=>nx446, D=>nx309, CLK=>clk, R=>nx228);
   oneLayerMap_counterMap_counterReg_reg_Q_2 : dffr port map ( Q=>
      oneLayerMap_altCounterOut_2, QB=>nx447, D=>nx329, CLK=>clk, R=>nx228);
   ix451 : inv01 port map ( Y=>nx450, A=>filtersNumber(2));
   ix453 : nand02 port map ( Y=>nx452, A0=>nx454, A1=>nx458);
   ix455 : xnor2 port map ( Y=>nx454, A0=>oneLayerMap_counterOut_0, A1=>
      filtersNumber(0));
   oneLayerMap_reg_counterOut_0 : dff port map ( Q=>oneLayerMap_counterOut_0, 
      QB=>OPEN, D=>oneLayerMap_altCounterOut_0, CLK=>clk);
   ix459 : xnor2 port map ( Y=>nx458, A0=>oneLayerMap_counterOut_1, A1=>
      filtersNumber(1));
   oneLayerMap_reg_counterOut_1 : dff port map ( Q=>oneLayerMap_counterOut_1, 
      QB=>OPEN, D=>oneLayerMap_altCounterOut_1, CLK=>clk);
   ix463 : oai21 port map ( Y=>nx462, A0=>nx212, A1=>
      oneLayerMap_currentState_0, B0=>nx561);
   ix213 : nor02_2x port map ( Y=>nx212, A0=>nx465, A1=>
      networkMap_currentState_0);
   ix300 : mux21 port map ( Y=>nx299, A0=>nx468, A1=>nx465, S0=>nx473);
   networkMap_reg_currentState_1 : dffr port map ( Q=>
      networkMap_currentState_1, QB=>nx465, D=>nx299, CLK=>NOT_clk, R=>
      resetNetwork);
   ix474 : aoi222 port map ( Y=>nx473, A0=>dmaAFinish, A1=>
      loadNetworkConfig_EXMPLR, B0=>networkMap_currentState_1, B1=>
      networkMap_currentState_0, C0=>nx144, C1=>nx192);
   ix151 : nor02_2x port map ( Y=>loadNetworkConfig_EXMPLR, A0=>
      networkMap_currentState_1, A1=>nx476);
   ix477 : nor02_2x port map ( Y=>nx476, A0=>networkMap_currentState_0, A1=>
      startNetwork);
   ix145 : oai22 port map ( Y=>nx144, A0=>nx423, A1=>nx479, B0=>
      networkMap_currentState_0, B1=>networkMap_currentState_1);
   ix480 : nand02 port map ( Y=>nx479, A0=>nx481, A1=>
      oneLayerMap_currentState_1);
   networkMap_reg_currentState_0 : dffr port map ( Q=>
      networkMap_currentState_0, QB=>nx481, D=>nx269, CLK=>NOT_clk, R=>
      resetNetwork);
   ix193 : oai21 port map ( Y=>nx192, A0=>nx174, A1=>nx503, B0=>nx509);
   ix175 : xnor2 port map ( Y=>nx174, A0=>networkMap_counterOut_1, A1=>nx501
   );
   networkMap_reg_counterOut_1 : dff port map ( Q=>networkMap_counterOut_1, 
      QB=>OPEN, D=>networkMap_altCounterOut_1, CLK=>clk);
   ix290 : mux21 port map ( Y=>nx289, A0=>nx488, A1=>nx492, S0=>nx144);
   networkMap_counterMap_counterReg_reg_Q_1 : dffr port map ( Q=>
      networkMap_altCounterOut_1, QB=>nx488, D=>nx289, CLK=>clk, R=>nx156);
   ix157 : nor02_2x port map ( Y=>nx156, A0=>NOT_clk, A1=>nx134);
   ix135 : nand02 port map ( Y=>nx134, A0=>nx481, A1=>nx465);
   networkMap_counterMap_counterReg_reg_Q_0 : dffr port map ( Q=>
      networkMap_altCounterOut_0, QB=>OPEN, D=>nx279, CLK=>clk, R=>nx156);
   ix280 : xnor2 port map ( Y=>nx279, A0=>networkMap_altCounterOut_0, A1=>
      nx496);
   ix497 : aoi22 port map ( Y=>nx496, A0=>nx481, A1=>nx465, B0=>
      oneLayerMap_currentState_0, B1=>nx138);
   ix139 : nor02_2x port map ( Y=>nx138, A0=>networkMap_currentState_0, A1=>
      nx561);
   ix502 : inv01 port map ( Y=>nx501, A=>layersNumber(1));
   ix504 : nand02 port map ( Y=>nx503, A0=>networkMap_currentState_1, A1=>
      nx505);
   ix506 : xnor2 port map ( Y=>nx505, A0=>networkMap_counterOut_0, A1=>
      layersNumber(0));
   networkMap_reg_counterOut_0 : dff port map ( Q=>networkMap_counterOut_0, 
      QB=>OPEN, D=>networkMap_altCounterOut_0, CLK=>clk);
   ix510 : oai21 port map ( Y=>nx509, A0=>networkMap_currentState_0, A1=>
      startNetwork, B0=>nx465);
   ix512 : oai21 port map ( Y=>nx511, A0=>oneLayerMap_currentState_1, A1=>
      dmaAFinish, B0=>oneLayerMap_currentState_0);
   ix514 : nand03 port map ( Y=>nx513, A0=>oneLayerMap_currentState_0, A1=>
      nx561, A2=>nx515);
   ix516 : inv01 port map ( Y=>nx515, A=>dmaAFinish);
   ix299 : oai21 port map ( Y=>nx200, A0=>nx541, A1=>nx425, B0=>nx511);
   ix15 : nor02_2x port map ( Y=>nx14, A0=>nx537, A1=>nx388);
   ix520 : nand03 port map ( Y=>nx519, A0=>nx537, A1=>nx557, A2=>nx515);
   ix99 : oai21 port map ( Y=>nx197, A0=>nx381, A1=>nx522, B0=>nx526);
   ix523 : nor02ii port map ( Y=>nx522, A0=>filterLastLayer, A1=>nx524);
   ix525 : oai21 port map ( Y=>nx524, A0=>nx308, A1=>nx537, B0=>nx557);
   ix527 : oai21 port map ( Y=>nx526, A0=>filterMap_currentState_1, A1=>
      dmaAFinish, B0=>nx539);
   ix133 : nor02_2x port map ( Y=>finishNetwork, A0=>nx465, A1=>nx481);
   ix219 : nor02_2x port map ( Y=>loadLayerConfig, A0=>
      oneLayerMap_currentState_1, A1=>nx530);
   ix536 : inv02 port map ( Y=>nx537, A=>nx383);
   ix538 : inv02 port map ( Y=>nx539, A=>nx383);
   ix540 : buf02 port map ( Y=>nx541, A=>nx420);
   ix354 : xnor2 port map ( Y=>nx353, A0=>nx559, A1=>nx383);
   ix374 : xnor2 port map ( Y=>nx373, A0=>nx370, A1=>nx385);
   ix220 : xnor2 port map ( Y=>nx219, A0=>nx385, A1=>nx547);
   ix546 : inv01 port map ( Y=>nx547, A=>nx381);
   ix413 : xnor2 port map ( Y=>nx412, A0=>nx563, A1=>nx423);
   ix433 : xnor2 port map ( Y=>nx432, A0=>nx447, A1=>nx549);
   ix245 : nand02 port map ( Y=>nx549, A0=>oneLayerMap_altCounterOut_1, A1=>
      oneLayerMap_altCounterOut_0);
   ix439 : xnor2 port map ( Y=>nx438, A0=>nx435, A1=>nx446);
   ix310 : xnor2 port map ( Y=>nx309, A0=>nx446, A1=>nx551);
   ix550 : inv01 port map ( Y=>nx551, A=>nx541);
   ix469 : xnor2 port map ( Y=>nx468, A0=>nx465, A1=>nx481);
   ix270 : xnor2 port map ( Y=>nx269, A0=>nx481, A1=>nx553);
   ix552 : inv01 port map ( Y=>nx553, A=>nx473);
   ix493 : xnor2 port map ( Y=>nx492, A0=>nx488, A1=>nx555);
   ix554 : inv01 port map ( Y=>nx555, A=>networkMap_altCounterOut_0);
   ix531 : nor02_2x port map ( Y=>nx530, A0=>nx212, A1=>
      oneLayerMap_currentState_0);
   ix556 : inv02 port map ( Y=>nx557, A=>filterMap_currentState_1);
   ix558 : inv02 port map ( Y=>nx559, A=>filterMap_currentState_1);
   ix560 : inv02 port map ( Y=>nx561, A=>oneLayerMap_currentState_1);
   ix562 : inv02 port map ( Y=>nx563, A=>oneLayerMap_currentState_1);
end ControlUnitArch ;


