//
// Verilog description for cell SliceFilterController, 
// Fri Apr 12 17:45:02 2019
//
// LeonardoSpectrum Level 3, 2018a.2 
//


module SliceFilterController ( start, convPoolSelect, filterLastLayer, 
                               finishConv, dmaAFinish, dmaBFinish, resetState, 
                               clk, outputSize, loadBias, loadFilter, loadWindow, 
                               conv, pool, shift12, shift21, readNextCol, 
                               addToOutputBuffer, outputBufferEn, saveToRAM, 
                               finish ) ;

    input start ;
    input convPoolSelect ;
    input filterLastLayer ;
    input finishConv ;
    input dmaAFinish ;
    input dmaBFinish ;
    input resetState ;
    input clk ;
    input [4:0]outputSize ;
    output loadBias ;
    output loadFilter ;
    output loadWindow ;
    output conv ;
    output pool ;
    output shift12 ;
    output shift21 ;
    output readNextCol ;
    output addToOutputBuffer ;
    output outputBufferEn ;
    output saveToRAM ;
    output finish ;

    wire currentState_3, nx587, currentState_1, currentState_4, nx14, 
         outerCounterOut_1, altOuterCounterOut_1, innerCounterOut_1, 
         altInnerCounterOut_1, altInnerCounterOut_0, nx26, nx32, 
         altInnerCounterOut_4, altInnerCounterOut_3, nx589, altInnerCounterOut_2, 
         nx590, innerCounterOut_0, nx100, nx108, nx116, nx118, 
         altOuterCounterOut_0, nx130, altOuterCounterOut_4, altOuterCounterOut_3, 
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
         nx679, nx1056, nx124, nx1084, nx1085;
    wire [13:0] \$dummy ;




    nor02_2x ix351 (.Y (loadFilter), .A0 (convPoolSelect), .A1 (nx790)) ;
    dffr reg_currentState_2 (.Q (\$dummy [0]), .QB (nx790), .D (nx759), .CLK (
         nx1026), .R (resetState)) ;
    mux21 ix760 (.Y (nx759), .A0 (nx793), .A1 (nx790), .S0 (nx802)) ;
    nor02_2x ix251 (.Y (nx250), .A0 (nx796), .A1 (nx1030)) ;
    inv01 ix797 (.Y (nx796), .A (convPoolSelect)) ;
    inv01 ix283 (.Y (nx587), .A (nx802)) ;
    nor03_2x ix803 (.Y (nx802), .A0 (nx280), .A1 (nx274), .A2 (nx270)) ;
    nand03 ix281 (.Y (nx280), .A0 (nx805), .A1 (nx950), .A2 (nx817)) ;
    dffr reg_currentState_7 (.Q (finish), .QB (nx805), .D (nx727), .CLK (nx1026)
         , .R (resetState)) ;
    nor03_2x ix728 (.Y (nx727), .A0 (nx1054), .A1 (nx224), .A2 (nx120)) ;
    nor02_2x ix618 (.Y (nx617), .A0 (nx811), .A1 (nx802)) ;
    nor02_2x ix15 (.Y (nx14), .A0 (nx796), .A1 (nx814)) ;
    dffr reg_currentState_4 (.Q (currentState_4), .QB (nx814), .D (nx599), .CLK (
         nx1024), .R (resetState)) ;
    oai21 ix600 (.Y (nx599), .A0 (nx814), .A1 (nx587), .B0 (nx817)) ;
    dffr reg_currentState_3 (.Q (currentState_3), .QB (nx817), .D (nx767), .CLK (
         nx1024), .R (resetState)) ;
    nor02ii ix821 (.Y (nx820), .A0 (nx286), .A1 (nx790)) ;
    nor03_2x ix233 (.Y (nx232), .A0 (nx1054), .A1 (nx224), .A2 (nx120)) ;
    nand04 ix225 (.Y (nx224), .A0 (nx825), .A1 (nx931), .A2 (nx935), .A3 (nx946)
           ) ;
    nor02_2x ix826 (.Y (nx825), .A0 (nx220), .A1 (nx212)) ;
    dff reg_outerCounterOut_3 (.Q (\$dummy [1]), .QB (nx927), .D (
        altOuterCounterOut_3), .CLK (clk)) ;
    mux21 ix710 (.Y (nx709), .A0 (nx831), .A1 (nx836), .S0 (nx588)) ;
    dffr outerCounterMap_counterReg_reg_Q_3 (.Q (altOuterCounterOut_3), .QB (
         nx831), .D (nx709), .CLK (clk), .R (nx130)) ;
    nor02_2x ix131 (.Y (nx130), .A0 (nx1024), .A1 (nx1028)) ;
    nor02_2x ix167 (.Y (nx592), .A0 (nx839), .A1 (nx925)) ;
    mux21 ix700 (.Y (nx699), .A0 (nx839), .A1 (nx842), .S0 (nx588)) ;
    dffr outerCounterMap_counterReg_reg_Q_2 (.Q (altOuterCounterOut_2), .QB (
         nx839), .D (nx699), .CLK (clk), .R (nx130)) ;
    mux21 ix690 (.Y (nx689), .A0 (nx846), .A1 (nx849), .S0 (nx588)) ;
    dffr outerCounterMap_counterReg_reg_Q_1 (.Q (altOuterCounterOut_1), .QB (
         nx846), .D (nx689), .CLK (clk), .R (nx130)) ;
    dffr outerCounterMap_counterReg_reg_Q_0 (.Q (altOuterCounterOut_0), .QB (
         nx923), .D (nx679), .CLK (clk), .R (nx130)) ;
    dff reg_innerCounterOut_3 (.Q (\$dummy [2]), .QB (nx895), .D (
        altInnerCounterOut_3), .CLK (clk)) ;
    dffr innerCounterMap_counterReg_reg_Q_3 (.Q (altInnerCounterOut_3), .QB (
         nx894), .D (nx659), .CLK (clk), .R (nx26)) ;
    oai21 ix660 (.Y (nx659), .A0 (nx864), .A1 (nx882), .B0 (nx892)) ;
    nor02_2x ix63 (.Y (nx590), .A0 (nx867), .A1 (nx890)) ;
    oai21 ix650 (.Y (nx649), .A0 (nx870), .A1 (nx882), .B0 (nx888)) ;
    dffr innerCounterMap_counterReg_reg_Q_2 (.Q (altInnerCounterOut_2), .QB (
         nx867), .D (nx649), .CLK (clk), .R (nx26)) ;
    nor02_2x ix27 (.Y (nx26), .A0 (nx1024), .A1 (nx854)) ;
    nor02_2x ix33 (.Y (nx32), .A0 (nx875), .A1 (nx886)) ;
    oai33 ix640 (.Y (nx639), .A0 (nx32), .A1 (nx878), .A2 (nx882), .B0 (nx875), 
          .B1 (outputBufferEn), .B2 (nx1084)) ;
    nor02_2x ix879 (.Y (nx878), .A0 (altInnerCounterOut_0), .A1 (
             altInnerCounterOut_1)) ;
    dffr innerCounterMap_counterReg_reg_Q_0 (.Q (altInnerCounterOut_0), .QB (
         nx886), .D (nx629), .CLK (clk), .R (nx26)) ;
    nor02_2x ix883 (.Y (nx882), .A0 (outputBufferEn), .A1 (nx1084)) ;
    dffr reg_currentState_6 (.Q (outputBufferEn), .QB (\$dummy [3]), .D (nx617)
         , .CLK (nx1024), .R (resetState)) ;
    dffr innerCounterMap_counterReg_reg_Q_1 (.Q (altInnerCounterOut_1), .QB (
         nx875), .D (nx639), .CLK (clk), .R (nx26)) ;
    nand03 ix889 (.Y (nx888), .A0 (altInnerCounterOut_2), .A1 (nx1054), .A2 (
           nx1028)) ;
    nand02 ix891 (.Y (nx890), .A0 (altInnerCounterOut_1), .A1 (
           altInnerCounterOut_0)) ;
    nand03 ix893 (.Y (nx892), .A0 (altInnerCounterOut_3), .A1 (nx1054), .A2 (
           nx1028)) ;
    inv01 ix897 (.Y (nx896), .A (outputSize[3])) ;
    dff reg_innerCounterOut_2 (.Q (\$dummy [4]), .QB (nx900), .D (
        altInnerCounterOut_2), .CLK (clk)) ;
    inv01 ix902 (.Y (nx901), .A (outputSize[2])) ;
    dff reg_innerCounterOut_0 (.Q (innerCounterOut_0), .QB (\$dummy [5]), .D (
        altInnerCounterOut_0), .CLK (clk)) ;
    dff reg_innerCounterOut_4 (.Q (\$dummy [6]), .QB (nx918), .D (
        altInnerCounterOut_4), .CLK (clk)) ;
    dffr innerCounterMap_counterReg_reg_Q_4 (.Q (altInnerCounterOut_4), .QB (
         \$dummy [7]), .D (nx669), .CLK (clk), .R (nx26)) ;
    oai21 ix670 (.Y (nx669), .A0 (nx912), .A1 (nx882), .B0 (nx915)) ;
    xnor2 ix913 (.Y (nx912), .A0 (altInnerCounterOut_4), .A1 (nx589)) ;
    nor03_2x ix75 (.Y (nx589), .A0 (nx894), .A1 (nx867), .A2 (nx890)) ;
    nand03 ix916 (.Y (nx915), .A0 (altInnerCounterOut_4), .A1 (nx1054), .A2 (
           nx1028)) ;
    dff reg_innerCounterOut_1 (.Q (innerCounterOut_1), .QB (\$dummy [8]), .D (
        altInnerCounterOut_1), .CLK (clk)) ;
    nand02 ix926 (.Y (nx925), .A0 (altOuterCounterOut_1), .A1 (
           altOuterCounterOut_0)) ;
    dff reg_outerCounterOut_2 (.Q (\$dummy [9]), .QB (nx930), .D (
        altOuterCounterOut_2), .CLK (clk)) ;
    xnor2 ix932 (.Y (nx931), .A0 (outerCounterOut_0), .A1 (outputSize[0])) ;
    dff reg_outerCounterOut_0 (.Q (outerCounterOut_0), .QB (\$dummy [10]), .D (
        altOuterCounterOut_0), .CLK (clk)) ;
    dff reg_outerCounterOut_4 (.Q (\$dummy [11]), .QB (nx945), .D (
        altOuterCounterOut_4), .CLK (clk)) ;
    dffr outerCounterMap_counterReg_reg_Q_4 (.Q (altOuterCounterOut_4), .QB (
         nx940), .D (nx719), .CLK (clk), .R (nx130)) ;
    xnor2 ix947 (.Y (nx946), .A0 (outerCounterOut_1), .A1 (outputSize[1])) ;
    dff reg_outerCounterOut_1 (.Q (outerCounterOut_1), .QB (\$dummy [12]), .D (
        altOuterCounterOut_1), .CLK (clk)) ;
    dffr reg_currentState_5 (.Q (addToOutputBuffer), .QB (nx950), .D (nx607), .CLK (
         nx1024), .R (resetState)) ;
    nor02_2x ix608 (.Y (nx607), .A0 (nx953), .A1 (nx802)) ;
    nand02 ix954 (.Y (nx953), .A0 (nx796), .A1 (currentState_4)) ;
    nand02 ix275 (.Y (nx274), .A0 (nx956), .A1 (nx1054)) ;
    nand02 ix957 (.Y (nx956), .A0 (dmaAFinish), .A1 (currentState_1)) ;
    mux21 ix750 (.Y (nx749), .A0 (nx960), .A1 (nx962), .S0 (nx802)) ;
    nand02 ix961 (.Y (nx960), .A0 (nx796), .A1 (nx1084)) ;
    dffr reg_currentState_1 (.Q (currentState_1), .QB (nx962), .D (nx749), .CLK (
         nx1026), .R (resetState)) ;
    oai21 ix271 (.Y (nx270), .A0 (nx965), .A1 (nx967), .B0 (nx972)) ;
    inv01 ix966 (.Y (nx965), .A (dmaBFinish)) ;
    aoi21 ix968 (.Y (nx967), .A0 (finishConv), .A1 (currentState_4), .B0 (nx260)
          ) ;
    nor02_2x ix261 (.Y (nx260), .A0 (nx790), .A1 (nx970)) ;
    nor02_2x ix971 (.Y (nx970), .A0 (convPoolSelect), .A1 (dmaAFinish)) ;
    nand02 ix973 (.Y (nx972), .A0 (start), .A1 (currentState_0)) ;
    nand02 ix357 (.Y (conv), .A0 (nx976), .A1 (nx953)) ;
    nand02 ix977 (.Y (nx976), .A0 (nx796), .A1 (currentState_3)) ;
    nor02_2x ix361 (.Y (pool), .A0 (nx796), .A1 (nx979)) ;
    nor02_2x ix980 (.Y (nx979), .A0 (currentState_3), .A1 (currentState_4)) ;
    nor02_2x ix365 (.Y (shift12), .A0 (nx817), .A1 (currentPage_0)) ;
    dffr pageRegMap_reg_Q_0 (.Q (currentPage_0), .QB (nx984), .D (nx779), .CLK (
         clk), .R (nx1084)) ;
    nor02_2x ix301 (.Y (shift21), .A0 (nx817), .A1 (nx984)) ;
    nor02_2x ix367 (.Y (readNextCol), .A0 (nx814), .A1 (nx987)) ;
    nor02_2x ix988 (.Y (nx987), .A0 (nx118), .A1 (nx100)) ;
    nand02 ix119 (.Y (nx118), .A0 (nx990), .A1 (nx992)) ;
    nand03 ix101 (.Y (nx100), .A0 (nx903), .A1 (nx907), .A2 (nx919)) ;
    aoi21 ix329 (.Y (saveToRAM), .A0 (nx796), .A1 (nx996), .B0 (nx998)) ;
    inv01 ix997 (.Y (nx996), .A (filterLastLayer)) ;
    nor02ii ix999 (.Y (nx998), .A0 (nx322), .A1 (nx1009)) ;
    oai21 ix323 (.Y (nx322), .A0 (nx817), .A1 (nx1001), .B0 (nx805)) ;
    nor02_2x ix1002 (.Y (nx1001), .A0 (nx316), .A1 (nx308)) ;
    nand04 ix317 (.Y (nx316), .A0 (nx1004), .A1 (nx927), .A2 (nx945), .A3 (nx930
           )) ;
    nor02_2x ix1005 (.Y (nx1004), .A0 (outerCounterOut_0), .A1 (
             outerCounterOut_1)) ;
    nand04 ix309 (.Y (nx308), .A0 (nx1007), .A1 (nx895), .A2 (nx918), .A3 (nx900
           )) ;
    nor02_2x ix1008 (.Y (nx1007), .A0 (innerCounterOut_0), .A1 (
             innerCounterOut_1)) ;
    nand02 ix1010 (.Y (nx1009), .A0 (currentState_3), .A1 (currentPage_0)) ;
    oai221 ix347 (.Y (loadWindow), .A0 (nx120), .A1 (nx1012), .B0 (nx1030), .B1 (
           nx1014), .C0 (nx790)) ;
    nand02 ix1013 (.Y (nx1012), .A0 (currentState_4), .A1 (nx224)) ;
    nand02 ix1015 (.Y (nx1014), .A0 (start), .A1 (convPoolSelect)) ;
    oai21 ix333 (.Y (loadBias), .A0 (nx1017), .A1 (nx960), .B0 (nx962)) ;
    inv01 ix1018 (.Y (nx1017), .A (start)) ;
    inv02 ix1025 (.Y (nx1026), .A (clk)) ;
    inv02 ix1029 (.Y (nx1030), .A (nx1085)) ;
    nor02_2x ix794 (.Y (nx793), .A0 (nx250), .A1 (currentState_1)) ;
    nor02_2x ix812 (.Y (nx811), .A0 (nx14), .A1 (addToOutputBuffer)) ;
    nor02_2x ix768 (.Y (nx767), .A0 (nx820), .A1 (nx802)) ;
    nor02_2x ix287 (.Y (nx286), .A0 (nx232), .A1 (nx1056)) ;
    xnor2 ix221 (.Y (nx220), .A0 (nx927), .A1 (outputSize[3])) ;
    xnor2 ix837 (.Y (nx836), .A0 (nx831), .A1 (nx1036)) ;
    inv01 ix1035 (.Y (nx1036), .A (nx592)) ;
    xnor2 ix843 (.Y (nx842), .A0 (nx839), .A1 (nx1038)) ;
    nand02 ix137 (.Y (nx1038), .A0 (altOuterCounterOut_1), .A1 (
           altOuterCounterOut_0)) ;
    xnor2 ix850 (.Y (nx849), .A0 (nx846), .A1 (nx923)) ;
    nor02_2x ix855 (.Y (nx854), .A0 (nx124), .A1 (nx1085)) ;
    xnor2 ix117 (.Y (nx116), .A0 (nx895), .A1 (outputSize[3])) ;
    xnor2 ix865 (.Y (nx864), .A0 (nx894), .A1 (nx1042)) ;
    inv01 ix1041 (.Y (nx1042), .A (nx590)) ;
    xnor2 ix871 (.Y (nx870), .A0 (nx867), .A1 (nx1044)) ;
    inv01 ix1043 (.Y (nx1044), .A (nx32)) ;
    xnor2 ix630 (.Y (nx629), .A0 (nx886), .A1 (nx1046)) ;
    inv01 ix1045 (.Y (nx1046), .A (nx882)) ;
    xnor2 ix109 (.Y (nx108), .A0 (nx900), .A1 (outputSize[2])) ;
    inv01 ix1047 (.Y (nx1048), .A (outputSize[4])) ;
    xnor2 ix213 (.Y (nx212), .A0 (nx930), .A1 (outputSize[2])) ;
    xnor2 ix936 (.Y (nx935), .A0 (nx945), .A1 (nx1048)) ;
    xnor2 ix943 (.Y (nx942), .A0 (nx940), .A1 (nx1050)) ;
    nand03 ix179 (.Y (nx1050), .A0 (altOuterCounterOut_3), .A1 (
           altOuterCounterOut_2), .A2 (nx1052)) ;
    inv01 ix1051 (.Y (nx1052), .A (nx925)) ;
    xnor2 ix780 (.Y (nx779), .A0 (nx984), .A1 (nx1046)) ;
    xnor2 ix991 (.Y (nx990), .A0 (nx895), .A1 (nx896)) ;
    xnor2 ix993 (.Y (nx992), .A0 (nx900), .A1 (nx901)) ;
    dffs_ni reg_currentState_0 (.Q (currentState_0), .QB (\$dummy [13]), .D (
            nx739), .CLK (nx1024), .S (resetState)) ;
    oai21 ix740 (.Y (nx739), .A0 (nx1028), .A1 (nx587), .B0 (nx805)) ;
    inv02 ix1023 (.Y (nx1024), .A (clk)) ;
    nor02_2x ix859 (.Y (nx858), .A0 (nx116), .A1 (nx108)) ;
    xnor2 ix904 (.Y (nx903), .A0 (innerCounterOut_0), .A1 (outputSize[0])) ;
    xnor2 ix908 (.Y (nx907), .A0 (nx918), .A1 (nx1048)) ;
    xnor2 ix920 (.Y (nx919), .A0 (innerCounterOut_1), .A1 (outputSize[1])) ;
    nand04 ix121 (.Y (nx120), .A0 (nx858), .A1 (nx903), .A2 (nx907), .A3 (nx919)
           ) ;
    buf04 ix1086 (.Y (nx1079), .A (currentState_0)) ;
    inv02 reg_nx1054 (.Y (nx1054), .A (outputBufferEn)) ;
    nor02_2x ix1087 (.Y (nx1080), .A0 (nx1054), .A1 (nx120)) ;
    nor02_2x ix1088 (.Y (nx1081), .A0 (nx1085), .A1 (nx1080)) ;
    oai32 reg_nx719 (.Y (nx719), .A0 (nx1080), .A1 (nx1085), .A2 (nx940), .B0 (
          nx1081), .B1 (nx942)) ;
    inv02 reg_nx1028 (.Y (nx1028), .A (nx1085)) ;
    oai21 reg_nx588 (.Y (nx588), .A0 (nx1054), .A1 (nx120), .B0 (nx1028)) ;
    inv01 ix1089 (.Y (nx1082), .A (nx854)) ;
    inv02 ix1090 (.Y (nx1083), .A (nx923)) ;
    oai22 reg_nx679 (.Y (nx679), .A0 (nx1082), .A1 (nx923), .B0 (nx1083), .B1 (
          nx854)) ;
    inv02 reg_nx1056 (.Y (nx1056), .A (outputBufferEn)) ;
    nor02_2x reg_nx124 (.Y (nx124), .A0 (nx1056), .A1 (nx120)) ;
    buf16 ix1091 (.Y (nx1084), .A (nx1079)) ;
    buf16 ix1092 (.Y (nx1085), .A (nx1079)) ;
endmodule

