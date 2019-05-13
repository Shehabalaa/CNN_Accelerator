//
// Verilog description for cell FcMain, 
// Sat May 11 17:08:32 2019
//
// LeonardoSpectrum Level 3, 2018a.2 
//


module FcMain ( cnnDone, ioDone, clk, reset, defaultAddressNeorons, 
                dmaAddRamNeorons, readRamNeorons, finishRamNeorons, 
                dataOutRamNeorons, dmaAddRamWeights, readRamWeights, 
                finishRamWeights, dataOutRamWeights, fcDone, MAXPrediction ) ;

    input cnnDone ;
    input ioDone ;
    input clk ;
    input reset ;
    input [12:0]defaultAddressNeorons ;
    output [12:0]dmaAddRamNeorons ;
    output readRamNeorons ;
    input finishRamNeorons ;
    input [79:0]dataOutRamNeorons ;
    output [15:0]dmaAddRamWeights ;
    output readRamWeights ;
    input finishRamWeights ;
    input [79:0]dataOutRamWeights ;
    output fcDone ;
    output [3:0]MAXPrediction ;

    wire state_10, state_8, state_6, neoronMuxOutput_15, neoronMuxOutput_14, 
         neoronMuxOutput_13, neoronMuxOutput_12, neoronMuxOutput_11, 
         neoronMuxOutput_10, neoronMuxOutput_9, neoronMuxOutput_8, 
         neoronMuxOutput_7, neoronMuxOutput_6, neoronMuxOutput_5, 
         neoronMuxOutput_4, neoronMuxOutput_3, neoronMuxOutput_2, 
         neoronMuxOutput_1, neoronMuxOutput_0, numberOFNeorons_15, 
         numberOFNeorons_14, numberOFNeorons_13, numberOFNeorons_12, 
         numberOFNeorons_11, numberOFNeorons_10, numberOFNeorons_9, 
         numberOFNeorons_8, numberOFNeorons_7, numberOFNeorons_6, 
         numberOFNeorons_5, numberOFNeorons_4, numberOFNeorons_3, 
         numberOFNeorons_2, numberOFNeorons_1, numberOFNeorons_0, doneMax, 
         labelReg_9__15, labelReg_9__14, labelReg_9__13, labelReg_9__12, 
         labelReg_9__11, labelReg_9__10, labelReg_9__9, labelReg_9__8, 
         labelReg_9__7, labelReg_9__6, labelReg_9__5, labelReg_9__4, 
         labelReg_9__3, labelReg_9__2, labelReg_9__1, labelReg_9__0, 
         labelReg_8__15, labelReg_8__14, labelReg_8__13, labelReg_8__12, 
         labelReg_8__11, labelReg_8__10, labelReg_8__9, labelReg_8__8, 
         labelReg_8__7, labelReg_8__6, labelReg_8__5, labelReg_8__4, 
         labelReg_8__3, labelReg_8__2, labelReg_8__1, labelReg_8__0, 
         labelReg_7__15, labelReg_7__14, labelReg_7__13, labelReg_7__12, 
         labelReg_7__11, labelReg_7__10, labelReg_7__9, labelReg_7__8, 
         labelReg_7__7, labelReg_7__6, labelReg_7__5, labelReg_7__4, 
         labelReg_7__3, labelReg_7__2, labelReg_7__1, labelReg_7__0, 
         labelReg_6__15, labelReg_6__14, labelReg_6__13, labelReg_6__12, 
         labelReg_6__11, labelReg_6__10, labelReg_6__9, labelReg_6__8, 
         labelReg_6__7, labelReg_6__6, labelReg_6__5, labelReg_6__4, 
         labelReg_6__3, labelReg_6__2, labelReg_6__1, labelReg_6__0, 
         labelReg_5__15, labelReg_5__14, labelReg_5__13, labelReg_5__12, 
         labelReg_5__11, labelReg_5__10, labelReg_5__9, labelReg_5__8, 
         labelReg_5__7, labelReg_5__6, labelReg_5__5, labelReg_5__4, 
         labelReg_5__3, labelReg_5__2, labelReg_5__1, labelReg_5__0, 
         labelReg_4__15, labelReg_4__14, labelReg_4__13, labelReg_4__12, 
         labelReg_4__11, labelReg_4__10, labelReg_4__9, labelReg_4__8, 
         labelReg_4__7, labelReg_4__6, labelReg_4__5, labelReg_4__4, 
         labelReg_4__3, labelReg_4__2, labelReg_4__1, labelReg_4__0, 
         labelReg_3__15, labelReg_3__14, labelReg_3__13, labelReg_3__12, 
         labelReg_3__11, labelReg_3__10, labelReg_3__9, labelReg_3__8, 
         labelReg_3__7, labelReg_3__6, labelReg_3__5, labelReg_3__4, 
         labelReg_3__3, labelReg_3__2, labelReg_3__1, labelReg_3__0, 
         labelReg_2__15, labelReg_2__14, labelReg_2__13, labelReg_2__12, 
         labelReg_2__11, labelReg_2__10, labelReg_2__9, labelReg_2__8, 
         labelReg_2__7, labelReg_2__6, labelReg_2__5, labelReg_2__4, 
         labelReg_2__3, labelReg_2__2, labelReg_2__1, labelReg_2__0, 
         labelReg_1__15, labelReg_1__14, labelReg_1__13, labelReg_1__12, 
         labelReg_1__11, labelReg_1__10, labelReg_1__9, labelReg_1__8, 
         labelReg_1__7, labelReg_1__6, labelReg_1__5, labelReg_1__4, 
         labelReg_1__3, labelReg_1__2, labelReg_1__1, labelReg_1__0, 
         labelReg_0__15, labelReg_0__14, labelReg_0__13, labelReg_0__12, 
         labelReg_0__11, labelReg_0__10, labelReg_0__9, labelReg_0__8, 
         labelReg_0__7, labelReg_0__6, labelReg_0__5, labelReg_0__4, 
         labelReg_0__3, labelReg_0__2, labelReg_0__1, labelReg_0__0, maxNumber_3, 
         maxNumber_2, maxNumber_1, maxNumber_0, multiplyWorkDelayed, 
         multiplyWorkIn, clkInverted, bufferTwoInput, cnnDoneOneCycle, 
         beginSignal, incrementWeightAdd, neoronValueSelection, decrement, 
         loadNumberOFNeorons, oneNeoron_8, oneNeoron_15, state_4, state_9, nx0, 
         state_3, nx1076, state_2, state_1, nx12, state_0, nx20, nx34, nx44, 
         nx54, nx98, nx106, nx120, nx126, nx152, nx158, nx160, nx166, nx176, 
         nx1082, nx1084, nx1093, nx1100, nx1102, nx1104, nx1106, nx1108, nx1110, 
         nx1112, nx1120, nx1122, nx1133, nx1138, nx1144, nx1158, nx1160, nx1162, 
         nx1164, nx1166, nx1168, nx1170, nx1172, nx1174, nx1176, nx1178, nx1180, 
         nx1182, nx1184, nx1186, nx1188, nx1190, nx1192, nx1194, nx1196, nx1198, 
         nx1200, nx1202, nx1204, nx1206, nx1208, nx1210, nx1212, nx1214, nx1216, 
         nx1218, nx1220, nx1222, nx1224, nx1226, nx1228, nx1230, nx1232, nx1234, 
         nx1236, nx1238, nx1240, nx1242, nx1244, nx1246, nx1248, nx1250, nx1252, 
         nx1254, nx1256, nx1258, nx1260, nx1262, nx1264, nx1266, nx1268, nx1270, 
         nx1272, nx1274, nx1276, nx1278, nx1280, nx1282, nx1284, nx1286, nx1288, 
         nx1290, nx1292, nx1294, nx1296, nx1298, nx1300, nx1302, nx1304, nx1306, 
         nx1308, nx1310, nx1312, nx1314, nx1316, nx1318, nx1320, nx1326, nx1352;
    wire [15:0] \$dummy ;




    RisingHolderFullCycle CNNDONEHOLDER (.transition (beginSignal), .clk (clk), .rst (
                          reset), .f (cnnDoneOneCycle)) ;
    CounterUpDown_16 NEORONSLASTSTAGES (.load ({dataOutRamWeights[15],
                     dataOutRamWeights[14],dataOutRamWeights[13],
                     dataOutRamWeights[12],dataOutRamWeights[11],
                     dataOutRamWeights[10],dataOutRamWeights[9],
                     dataOutRamWeights[8],dataOutRamWeights[7],
                     dataOutRamWeights[6],dataOutRamWeights[5],
                     dataOutRamWeights[4],dataOutRamWeights[3],
                     dataOutRamWeights[2],dataOutRamWeights[1],
                     dataOutRamWeights[0]}), .resetValue ({oneNeoron_15,
                     oneNeoron_15,oneNeoron_15,oneNeoron_15,oneNeoron_15,
                     oneNeoron_15,oneNeoron_15,oneNeoron_15,oneNeoron_15,
                     oneNeoron_15,oneNeoron_15,oneNeoron_15,oneNeoron_15,
                     oneNeoron_15,oneNeoron_15,oneNeoron_15}), .clk (clk), .en (
                     decrement), .rst (reset), .isLoad (nx1326), .upOrDown (
                     oneNeoron_8), .count ({numberOFNeorons_15,
                     numberOFNeorons_14,numberOFNeorons_13,numberOFNeorons_12,
                     numberOFNeorons_11,numberOFNeorons_10,numberOFNeorons_9,
                     numberOFNeorons_8,numberOFNeorons_7,numberOFNeorons_6,
                     numberOFNeorons_5,numberOFNeorons_4,numberOFNeorons_3,
                     numberOFNeorons_2,numberOFNeorons_1,numberOFNeorons_0})) ;
    Mux2_16 NEORONREGMux (.A ({dataOutRamNeorons[15],dataOutRamNeorons[14],
            dataOutRamNeorons[13],dataOutRamNeorons[12],dataOutRamNeorons[11],
            dataOutRamNeorons[10],dataOutRamNeorons[9],dataOutRamNeorons[8],
            dataOutRamNeorons[7],dataOutRamNeorons[6],dataOutRamNeorons[5],
            dataOutRamNeorons[4],dataOutRamNeorons[3],dataOutRamNeorons[2],
            dataOutRamNeorons[1],dataOutRamNeorons[0]}), .B ({oneNeoron_15,
            oneNeoron_15,oneNeoron_15,oneNeoron_15,oneNeoron_15,oneNeoron_15,
            oneNeoron_15,oneNeoron_8,oneNeoron_15,oneNeoron_15,oneNeoron_15,
            oneNeoron_15,oneNeoron_15,oneNeoron_15,oneNeoron_15,oneNeoron_15}), 
            .S (neoronValueSelection), .C ({neoronMuxOutput_15,
            neoronMuxOutput_14,neoronMuxOutput_13,neoronMuxOutput_12,
            neoronMuxOutput_11,neoronMuxOutput_10,neoronMuxOutput_9,
            neoronMuxOutput_8,neoronMuxOutput_7,neoronMuxOutput_6,
            neoronMuxOutput_5,neoronMuxOutput_4,neoronMuxOutput_3,
            neoronMuxOutput_2,neoronMuxOutput_1,neoronMuxOutput_0})) ;
    ngetMax_16_10 MAXIMIZATIONMAP (.inputArray_9__15 (labelReg_9__15), .inputArray_9__14 (
                  labelReg_9__14), .inputArray_9__13 (labelReg_9__13), .inputArray_9__12 (
                  labelReg_9__12), .inputArray_9__11 (labelReg_9__11), .inputArray_9__10 (
                  labelReg_9__10), .inputArray_9__9 (labelReg_9__9), .inputArray_9__8 (
                  labelReg_9__8), .inputArray_9__7 (labelReg_9__7), .inputArray_9__6 (
                  labelReg_9__6), .inputArray_9__5 (labelReg_9__5), .inputArray_9__4 (
                  labelReg_9__4), .inputArray_9__3 (labelReg_9__3), .inputArray_9__2 (
                  labelReg_9__2), .inputArray_9__1 (labelReg_9__1), .inputArray_9__0 (
                  labelReg_9__0), .inputArray_8__15 (labelReg_8__15), .inputArray_8__14 (
                  labelReg_8__14), .inputArray_8__13 (labelReg_8__13), .inputArray_8__12 (
                  labelReg_8__12), .inputArray_8__11 (labelReg_8__11), .inputArray_8__10 (
                  labelReg_8__10), .inputArray_8__9 (labelReg_8__9), .inputArray_8__8 (
                  labelReg_8__8), .inputArray_8__7 (labelReg_8__7), .inputArray_8__6 (
                  labelReg_8__6), .inputArray_8__5 (labelReg_8__5), .inputArray_8__4 (
                  labelReg_8__4), .inputArray_8__3 (labelReg_8__3), .inputArray_8__2 (
                  labelReg_8__2), .inputArray_8__1 (labelReg_8__1), .inputArray_8__0 (
                  labelReg_8__0), .inputArray_7__15 (labelReg_7__15), .inputArray_7__14 (
                  labelReg_7__14), .inputArray_7__13 (labelReg_7__13), .inputArray_7__12 (
                  labelReg_7__12), .inputArray_7__11 (labelReg_7__11), .inputArray_7__10 (
                  labelReg_7__10), .inputArray_7__9 (labelReg_7__9), .inputArray_7__8 (
                  labelReg_7__8), .inputArray_7__7 (labelReg_7__7), .inputArray_7__6 (
                  labelReg_7__6), .inputArray_7__5 (labelReg_7__5), .inputArray_7__4 (
                  labelReg_7__4), .inputArray_7__3 (labelReg_7__3), .inputArray_7__2 (
                  labelReg_7__2), .inputArray_7__1 (labelReg_7__1), .inputArray_7__0 (
                  labelReg_7__0), .inputArray_6__15 (labelReg_6__15), .inputArray_6__14 (
                  labelReg_6__14), .inputArray_6__13 (labelReg_6__13), .inputArray_6__12 (
                  labelReg_6__12), .inputArray_6__11 (labelReg_6__11), .inputArray_6__10 (
                  labelReg_6__10), .inputArray_6__9 (labelReg_6__9), .inputArray_6__8 (
                  labelReg_6__8), .inputArray_6__7 (labelReg_6__7), .inputArray_6__6 (
                  labelReg_6__6), .inputArray_6__5 (labelReg_6__5), .inputArray_6__4 (
                  labelReg_6__4), .inputArray_6__3 (labelReg_6__3), .inputArray_6__2 (
                  labelReg_6__2), .inputArray_6__1 (labelReg_6__1), .inputArray_6__0 (
                  labelReg_6__0), .inputArray_5__15 (labelReg_5__15), .inputArray_5__14 (
                  labelReg_5__14), .inputArray_5__13 (labelReg_5__13), .inputArray_5__12 (
                  labelReg_5__12), .inputArray_5__11 (labelReg_5__11), .inputArray_5__10 (
                  labelReg_5__10), .inputArray_5__9 (labelReg_5__9), .inputArray_5__8 (
                  labelReg_5__8), .inputArray_5__7 (labelReg_5__7), .inputArray_5__6 (
                  labelReg_5__6), .inputArray_5__5 (labelReg_5__5), .inputArray_5__4 (
                  labelReg_5__4), .inputArray_5__3 (labelReg_5__3), .inputArray_5__2 (
                  labelReg_5__2), .inputArray_5__1 (labelReg_5__1), .inputArray_5__0 (
                  labelReg_5__0), .inputArray_4__15 (labelReg_4__15), .inputArray_4__14 (
                  labelReg_4__14), .inputArray_4__13 (labelReg_4__13), .inputArray_4__12 (
                  labelReg_4__12), .inputArray_4__11 (labelReg_4__11), .inputArray_4__10 (
                  labelReg_4__10), .inputArray_4__9 (labelReg_4__9), .inputArray_4__8 (
                  labelReg_4__8), .inputArray_4__7 (labelReg_4__7), .inputArray_4__6 (
                  labelReg_4__6), .inputArray_4__5 (labelReg_4__5), .inputArray_4__4 (
                  labelReg_4__4), .inputArray_4__3 (labelReg_4__3), .inputArray_4__2 (
                  labelReg_4__2), .inputArray_4__1 (labelReg_4__1), .inputArray_4__0 (
                  labelReg_4__0), .inputArray_3__15 (labelReg_3__15), .inputArray_3__14 (
                  labelReg_3__14), .inputArray_3__13 (labelReg_3__13), .inputArray_3__12 (
                  labelReg_3__12), .inputArray_3__11 (labelReg_3__11), .inputArray_3__10 (
                  labelReg_3__10), .inputArray_3__9 (labelReg_3__9), .inputArray_3__8 (
                  labelReg_3__8), .inputArray_3__7 (labelReg_3__7), .inputArray_3__6 (
                  labelReg_3__6), .inputArray_3__5 (labelReg_3__5), .inputArray_3__4 (
                  labelReg_3__4), .inputArray_3__3 (labelReg_3__3), .inputArray_3__2 (
                  labelReg_3__2), .inputArray_3__1 (labelReg_3__1), .inputArray_3__0 (
                  labelReg_3__0), .inputArray_2__15 (labelReg_2__15), .inputArray_2__14 (
                  labelReg_2__14), .inputArray_2__13 (labelReg_2__13), .inputArray_2__12 (
                  labelReg_2__12), .inputArray_2__11 (labelReg_2__11), .inputArray_2__10 (
                  labelReg_2__10), .inputArray_2__9 (labelReg_2__9), .inputArray_2__8 (
                  labelReg_2__8), .inputArray_2__7 (labelReg_2__7), .inputArray_2__6 (
                  labelReg_2__6), .inputArray_2__5 (labelReg_2__5), .inputArray_2__4 (
                  labelReg_2__4), .inputArray_2__3 (labelReg_2__3), .inputArray_2__2 (
                  labelReg_2__2), .inputArray_2__1 (labelReg_2__1), .inputArray_2__0 (
                  labelReg_2__0), .inputArray_1__15 (labelReg_1__15), .inputArray_1__14 (
                  labelReg_1__14), .inputArray_1__13 (labelReg_1__13), .inputArray_1__12 (
                  labelReg_1__12), .inputArray_1__11 (labelReg_1__11), .inputArray_1__10 (
                  labelReg_1__10), .inputArray_1__9 (labelReg_1__9), .inputArray_1__8 (
                  labelReg_1__8), .inputArray_1__7 (labelReg_1__7), .inputArray_1__6 (
                  labelReg_1__6), .inputArray_1__5 (labelReg_1__5), .inputArray_1__4 (
                  labelReg_1__4), .inputArray_1__3 (labelReg_1__3), .inputArray_1__2 (
                  labelReg_1__2), .inputArray_1__1 (labelReg_1__1), .inputArray_1__0 (
                  labelReg_1__0), .inputArray_0__15 (labelReg_0__15), .inputArray_0__14 (
                  labelReg_0__14), .inputArray_0__13 (labelReg_0__13), .inputArray_0__12 (
                  labelReg_0__12), .inputArray_0__11 (labelReg_0__11), .inputArray_0__10 (
                  labelReg_0__10), .inputArray_0__9 (labelReg_0__9), .inputArray_0__8 (
                  labelReg_0__8), .inputArray_0__7 (labelReg_0__7), .inputArray_0__6 (
                  labelReg_0__6), .inputArray_0__5 (labelReg_0__5), .inputArray_0__4 (
                  labelReg_0__4), .inputArray_0__3 (labelReg_0__3), .inputArray_0__2 (
                  labelReg_0__2), .inputArray_0__1 (labelReg_0__1), .inputArray_0__0 (
                  labelReg_0__0), .en (state_6), .clk (clk), .rst (state_10), .outLabel (
                  {maxNumber_3,maxNumber_2,maxNumber_1,maxNumber_0}), .done (
                  doneMax)) ;
    Alus8x16_10 ALUMAP (.q_9__7 (dataOutRamWeights[79]), .q_9__6 (
                dataOutRamWeights[78]), .q_9__5 (dataOutRamWeights[77]), .q_9__4 (
                dataOutRamWeights[76]), .q_9__3 (dataOutRamWeights[75]), .q_9__2 (
                dataOutRamWeights[74]), .q_9__1 (dataOutRamWeights[73]), .q_9__0 (
                dataOutRamWeights[72]), .q_8__7 (dataOutRamWeights[71]), .q_8__6 (
                dataOutRamWeights[70]), .q_8__5 (dataOutRamWeights[69]), .q_8__4 (
                dataOutRamWeights[68]), .q_8__3 (dataOutRamWeights[67]), .q_8__2 (
                dataOutRamWeights[66]), .q_8__1 (dataOutRamWeights[65]), .q_8__0 (
                dataOutRamWeights[64]), .q_7__7 (dataOutRamWeights[63]), .q_7__6 (
                dataOutRamWeights[62]), .q_7__5 (dataOutRamWeights[61]), .q_7__4 (
                dataOutRamWeights[60]), .q_7__3 (dataOutRamWeights[59]), .q_7__2 (
                dataOutRamWeights[58]), .q_7__1 (dataOutRamWeights[57]), .q_7__0 (
                dataOutRamWeights[56]), .q_6__7 (dataOutRamWeights[55]), .q_6__6 (
                dataOutRamWeights[54]), .q_6__5 (dataOutRamWeights[53]), .q_6__4 (
                dataOutRamWeights[52]), .q_6__3 (dataOutRamWeights[51]), .q_6__2 (
                dataOutRamWeights[50]), .q_6__1 (dataOutRamWeights[49]), .q_6__0 (
                dataOutRamWeights[48]), .q_5__7 (dataOutRamWeights[47]), .q_5__6 (
                dataOutRamWeights[46]), .q_5__5 (dataOutRamWeights[45]), .q_5__4 (
                dataOutRamWeights[44]), .q_5__3 (dataOutRamWeights[43]), .q_5__2 (
                dataOutRamWeights[42]), .q_5__1 (dataOutRamWeights[41]), .q_5__0 (
                dataOutRamWeights[40]), .q_4__7 (dataOutRamWeights[39]), .q_4__6 (
                dataOutRamWeights[38]), .q_4__5 (dataOutRamWeights[37]), .q_4__4 (
                dataOutRamWeights[36]), .q_4__3 (dataOutRamWeights[35]), .q_4__2 (
                dataOutRamWeights[34]), .q_4__1 (dataOutRamWeights[33]), .q_4__0 (
                dataOutRamWeights[32]), .q_3__7 (dataOutRamWeights[31]), .q_3__6 (
                dataOutRamWeights[30]), .q_3__5 (dataOutRamWeights[29]), .q_3__4 (
                dataOutRamWeights[28]), .q_3__3 (dataOutRamWeights[27]), .q_3__2 (
                dataOutRamWeights[26]), .q_3__1 (dataOutRamWeights[25]), .q_3__0 (
                dataOutRamWeights[24]), .q_2__7 (dataOutRamWeights[23]), .q_2__6 (
                dataOutRamWeights[22]), .q_2__5 (dataOutRamWeights[21]), .q_2__4 (
                dataOutRamWeights[20]), .q_2__3 (dataOutRamWeights[19]), .q_2__2 (
                dataOutRamWeights[18]), .q_2__1 (dataOutRamWeights[17]), .q_2__0 (
                dataOutRamWeights[16]), .q_1__7 (dataOutRamWeights[15]), .q_1__6 (
                dataOutRamWeights[14]), .q_1__5 (dataOutRamWeights[13]), .q_1__4 (
                dataOutRamWeights[12]), .q_1__3 (dataOutRamWeights[11]), .q_1__2 (
                dataOutRamWeights[10]), .q_1__1 (dataOutRamWeights[9]), .q_1__0 (
                dataOutRamWeights[8]), .q_0__7 (dataOutRamWeights[7]), .q_0__6 (
                dataOutRamWeights[6]), .q_0__5 (dataOutRamWeights[5]), .q_0__4 (
                dataOutRamWeights[4]), .q_0__3 (dataOutRamWeights[3]), .q_0__2 (
                dataOutRamWeights[2]), .q_0__1 (dataOutRamWeights[1]), .q_0__0 (
                dataOutRamWeights[0]), .m_9__15 (nx1160), .m_9__14 (nx1170), .m_9__13 (
                nx1180), .m_9__12 (nx1190), .m_9__11 (nx1200), .m_9__10 (nx1210)
                , .m_9__9 (nx1220), .m_9__8 (nx1230), .m_9__7 (nx1240), .m_9__6 (
                nx1250), .m_9__5 (nx1260), .m_9__4 (nx1270), .m_9__3 (nx1280), .m_9__2 (
                nx1290), .m_9__1 (nx1300), .m_9__0 (nx1310), .m_8__15 (nx1160), 
                .m_8__14 (nx1170), .m_8__13 (nx1180), .m_8__12 (nx1190), .m_8__11 (
                nx1200), .m_8__10 (nx1210), .m_8__9 (nx1220), .m_8__8 (nx1230), 
                .m_8__7 (nx1240), .m_8__6 (nx1250), .m_8__5 (nx1260), .m_8__4 (
                nx1270), .m_8__3 (nx1280), .m_8__2 (nx1290), .m_8__1 (nx1300), .m_8__0 (
                nx1310), .m_7__15 (nx1160), .m_7__14 (nx1170), .m_7__13 (nx1180)
                , .m_7__12 (nx1190), .m_7__11 (nx1200), .m_7__10 (nx1210), .m_7__9 (
                nx1220), .m_7__8 (nx1230), .m_7__7 (nx1240), .m_7__6 (nx1250), .m_7__5 (
                nx1260), .m_7__4 (nx1270), .m_7__3 (nx1280), .m_7__2 (nx1290), .m_7__1 (
                nx1300), .m_7__0 (nx1310), .m_6__15 (nx1162), .m_6__14 (nx1172)
                , .m_6__13 (nx1182), .m_6__12 (nx1192), .m_6__11 (nx1202), .m_6__10 (
                nx1212), .m_6__9 (nx1222), .m_6__8 (nx1232), .m_6__7 (nx1242), .m_6__6 (
                nx1252), .m_6__5 (nx1262), .m_6__4 (nx1272), .m_6__3 (nx1282), .m_6__2 (
                nx1292), .m_6__1 (nx1302), .m_6__0 (nx1312), .m_5__15 (nx1162), 
                .m_5__14 (nx1172), .m_5__13 (nx1182), .m_5__12 (nx1192), .m_5__11 (
                nx1202), .m_5__10 (nx1212), .m_5__9 (nx1222), .m_5__8 (nx1232), 
                .m_5__7 (nx1242), .m_5__6 (nx1252), .m_5__5 (nx1262), .m_5__4 (
                nx1272), .m_5__3 (nx1282), .m_5__2 (nx1292), .m_5__1 (nx1302), .m_5__0 (
                nx1312), .m_4__15 (nx1162), .m_4__14 (nx1172), .m_4__13 (nx1182)
                , .m_4__12 (nx1192), .m_4__11 (nx1202), .m_4__10 (nx1212), .m_4__9 (
                nx1222), .m_4__8 (nx1232), .m_4__7 (nx1242), .m_4__6 (nx1252), .m_4__5 (
                nx1262), .m_4__4 (nx1272), .m_4__3 (nx1282), .m_4__2 (nx1292), .m_4__1 (
                nx1302), .m_4__0 (nx1312), .m_3__15 (nx1164), .m_3__14 (nx1174)
                , .m_3__13 (nx1184), .m_3__12 (nx1194), .m_3__11 (nx1204), .m_3__10 (
                nx1214), .m_3__9 (nx1224), .m_3__8 (nx1234), .m_3__7 (nx1244), .m_3__6 (
                nx1254), .m_3__5 (nx1264), .m_3__4 (nx1274), .m_3__3 (nx1284), .m_3__2 (
                nx1294), .m_3__1 (nx1304), .m_3__0 (nx1314), .m_2__15 (nx1164), 
                .m_2__14 (nx1174), .m_2__13 (nx1184), .m_2__12 (nx1194), .m_2__11 (
                nx1204), .m_2__10 (nx1214), .m_2__9 (nx1224), .m_2__8 (nx1234), 
                .m_2__7 (nx1244), .m_2__6 (nx1254), .m_2__5 (nx1264), .m_2__4 (
                nx1274), .m_2__3 (nx1284), .m_2__2 (nx1294), .m_2__1 (nx1304), .m_2__0 (
                nx1314), .m_1__15 (nx1164), .m_1__14 (nx1174), .m_1__13 (nx1184)
                , .m_1__12 (nx1194), .m_1__11 (nx1204), .m_1__10 (nx1214), .m_1__9 (
                nx1224), .m_1__8 (nx1234), .m_1__7 (nx1244), .m_1__6 (nx1254), .m_1__5 (
                nx1264), .m_1__4 (nx1274), .m_1__3 (nx1284), .m_1__2 (nx1294), .m_1__1 (
                nx1304), .m_1__0 (nx1314), .m_0__15 (nx1166), .m_0__14 (nx1176)
                , .m_0__13 (nx1186), .m_0__12 (nx1196), .m_0__11 (nx1206), .m_0__10 (
                nx1216), .m_0__9 (nx1226), .m_0__8 (nx1236), .m_0__7 (nx1246), .m_0__6 (
                nx1256), .m_0__5 (nx1266), .m_0__4 (nx1276), .m_0__3 (nx1286), .m_0__2 (
                nx1296), .m_0__1 (nx1306), .m_0__0 (nx1316), .f_9__15 (
                labelReg_9__15), .f_9__14 (labelReg_9__14), .f_9__13 (
                labelReg_9__13), .f_9__12 (labelReg_9__12), .f_9__11 (
                labelReg_9__11), .f_9__10 (labelReg_9__10), .f_9__9 (
                labelReg_9__9), .f_9__8 (labelReg_9__8), .f_9__7 (labelReg_9__7)
                , .f_9__6 (labelReg_9__6), .f_9__5 (labelReg_9__5), .f_9__4 (
                labelReg_9__4), .f_9__3 (labelReg_9__3), .f_9__2 (labelReg_9__2)
                , .f_9__1 (labelReg_9__1), .f_9__0 (labelReg_9__0), .f_8__15 (
                labelReg_8__15), .f_8__14 (labelReg_8__14), .f_8__13 (
                labelReg_8__13), .f_8__12 (labelReg_8__12), .f_8__11 (
                labelReg_8__11), .f_8__10 (labelReg_8__10), .f_8__9 (
                labelReg_8__9), .f_8__8 (labelReg_8__8), .f_8__7 (labelReg_8__7)
                , .f_8__6 (labelReg_8__6), .f_8__5 (labelReg_8__5), .f_8__4 (
                labelReg_8__4), .f_8__3 (labelReg_8__3), .f_8__2 (labelReg_8__2)
                , .f_8__1 (labelReg_8__1), .f_8__0 (labelReg_8__0), .f_7__15 (
                labelReg_7__15), .f_7__14 (labelReg_7__14), .f_7__13 (
                labelReg_7__13), .f_7__12 (labelReg_7__12), .f_7__11 (
                labelReg_7__11), .f_7__10 (labelReg_7__10), .f_7__9 (
                labelReg_7__9), .f_7__8 (labelReg_7__8), .f_7__7 (labelReg_7__7)
                , .f_7__6 (labelReg_7__6), .f_7__5 (labelReg_7__5), .f_7__4 (
                labelReg_7__4), .f_7__3 (labelReg_7__3), .f_7__2 (labelReg_7__2)
                , .f_7__1 (labelReg_7__1), .f_7__0 (labelReg_7__0), .f_6__15 (
                labelReg_6__15), .f_6__14 (labelReg_6__14), .f_6__13 (
                labelReg_6__13), .f_6__12 (labelReg_6__12), .f_6__11 (
                labelReg_6__11), .f_6__10 (labelReg_6__10), .f_6__9 (
                labelReg_6__9), .f_6__8 (labelReg_6__8), .f_6__7 (labelReg_6__7)
                , .f_6__6 (labelReg_6__6), .f_6__5 (labelReg_6__5), .f_6__4 (
                labelReg_6__4), .f_6__3 (labelReg_6__3), .f_6__2 (labelReg_6__2)
                , .f_6__1 (labelReg_6__1), .f_6__0 (labelReg_6__0), .f_5__15 (
                labelReg_5__15), .f_5__14 (labelReg_5__14), .f_5__13 (
                labelReg_5__13), .f_5__12 (labelReg_5__12), .f_5__11 (
                labelReg_5__11), .f_5__10 (labelReg_5__10), .f_5__9 (
                labelReg_5__9), .f_5__8 (labelReg_5__8), .f_5__7 (labelReg_5__7)
                , .f_5__6 (labelReg_5__6), .f_5__5 (labelReg_5__5), .f_5__4 (
                labelReg_5__4), .f_5__3 (labelReg_5__3), .f_5__2 (labelReg_5__2)
                , .f_5__1 (labelReg_5__1), .f_5__0 (labelReg_5__0), .f_4__15 (
                labelReg_4__15), .f_4__14 (labelReg_4__14), .f_4__13 (
                labelReg_4__13), .f_4__12 (labelReg_4__12), .f_4__11 (
                labelReg_4__11), .f_4__10 (labelReg_4__10), .f_4__9 (
                labelReg_4__9), .f_4__8 (labelReg_4__8), .f_4__7 (labelReg_4__7)
                , .f_4__6 (labelReg_4__6), .f_4__5 (labelReg_4__5), .f_4__4 (
                labelReg_4__4), .f_4__3 (labelReg_4__3), .f_4__2 (labelReg_4__2)
                , .f_4__1 (labelReg_4__1), .f_4__0 (labelReg_4__0), .f_3__15 (
                labelReg_3__15), .f_3__14 (labelReg_3__14), .f_3__13 (
                labelReg_3__13), .f_3__12 (labelReg_3__12), .f_3__11 (
                labelReg_3__11), .f_3__10 (labelReg_3__10), .f_3__9 (
                labelReg_3__9), .f_3__8 (labelReg_3__8), .f_3__7 (labelReg_3__7)
                , .f_3__6 (labelReg_3__6), .f_3__5 (labelReg_3__5), .f_3__4 (
                labelReg_3__4), .f_3__3 (labelReg_3__3), .f_3__2 (labelReg_3__2)
                , .f_3__1 (labelReg_3__1), .f_3__0 (labelReg_3__0), .f_2__15 (
                labelReg_2__15), .f_2__14 (labelReg_2__14), .f_2__13 (
                labelReg_2__13), .f_2__12 (labelReg_2__12), .f_2__11 (
                labelReg_2__11), .f_2__10 (labelReg_2__10), .f_2__9 (
                labelReg_2__9), .f_2__8 (labelReg_2__8), .f_2__7 (labelReg_2__7)
                , .f_2__6 (labelReg_2__6), .f_2__5 (labelReg_2__5), .f_2__4 (
                labelReg_2__4), .f_2__3 (labelReg_2__3), .f_2__2 (labelReg_2__2)
                , .f_2__1 (labelReg_2__1), .f_2__0 (labelReg_2__0), .f_1__15 (
                labelReg_1__15), .f_1__14 (labelReg_1__14), .f_1__13 (
                labelReg_1__13), .f_1__12 (labelReg_1__12), .f_1__11 (
                labelReg_1__11), .f_1__10 (labelReg_1__10), .f_1__9 (
                labelReg_1__9), .f_1__8 (labelReg_1__8), .f_1__7 (labelReg_1__7)
                , .f_1__6 (labelReg_1__6), .f_1__5 (labelReg_1__5), .f_1__4 (
                labelReg_1__4), .f_1__3 (labelReg_1__3), .f_1__2 (labelReg_1__2)
                , .f_1__1 (labelReg_1__1), .f_1__0 (labelReg_1__0), .f_0__15 (
                labelReg_0__15), .f_0__14 (labelReg_0__14), .f_0__13 (
                labelReg_0__13), .f_0__12 (labelReg_0__12), .f_0__11 (
                labelReg_0__11), .f_0__10 (labelReg_0__10), .f_0__9 (
                labelReg_0__9), .f_0__8 (labelReg_0__8), .f_0__7 (labelReg_0__7)
                , .f_0__6 (labelReg_0__6), .f_0__5 (labelReg_0__5), .f_0__4 (
                labelReg_0__4), .f_0__3 (labelReg_0__3), .f_0__2 (labelReg_0__2)
                , .f_0__1 (labelReg_0__1), .f_0__0 (labelReg_0__0), .clk (clk), 
                .start (decrement), .rst (nx1352), .done (\$dummy [0]), .working (
                multiplyWorkIn)) ;
    FlibFlob bufferRegOne (.D (multiplyWorkIn), .en (oneNeoron_8), .clk (
             clkInverted), .rst (reset), .Q (bufferTwoInput), .Qbar (\$dummy [1]
             )) ;
    FlibFlob bufferRegTwo (.D (bufferTwoInput), .en (oneNeoron_8), .clk (clk), .rst (
             reset), .Q (multiplyWorkDelayed), .Qbar (\$dummy [2])) ;
    CounterUpDown_16 WeightAddressCounter (.load ({oneNeoron_15,oneNeoron_15,
                     oneNeoron_15,oneNeoron_15,oneNeoron_15,oneNeoron_15,
                     oneNeoron_15,oneNeoron_15,oneNeoron_15,oneNeoron_15,
                     oneNeoron_15,oneNeoron_15,oneNeoron_15,oneNeoron_15,
                     oneNeoron_15,oneNeoron_15}), .resetValue ({oneNeoron_15,
                     oneNeoron_15,oneNeoron_15,oneNeoron_15,oneNeoron_15,
                     oneNeoron_15,oneNeoron_15,oneNeoron_15,oneNeoron_15,
                     oneNeoron_15,oneNeoron_15,oneNeoron_15,oneNeoron_15,
                     oneNeoron_15,oneNeoron_15,oneNeoron_15}), .clk (clk), .en (
                     incrementWeightAdd), .rst (reset), .isLoad (nx1318), .upOrDown (
                     oneNeoron_15), .count ({dmaAddRamWeights[15],
                     dmaAddRamWeights[14],dmaAddRamWeights[13],
                     dmaAddRamWeights[12],dmaAddRamWeights[11],
                     dmaAddRamWeights[10],dmaAddRamWeights[9],
                     dmaAddRamWeights[8],dmaAddRamWeights[7],dmaAddRamWeights[6]
                     ,dmaAddRamWeights[5],dmaAddRamWeights[4],
                     dmaAddRamWeights[3],dmaAddRamWeights[2],dmaAddRamWeights[1]
                     ,dmaAddRamWeights[0]})) ;
    CounterUpDown_13 NeoronAddressCounter (.load ({defaultAddressNeorons[12],
                     defaultAddressNeorons[11],defaultAddressNeorons[10],
                     defaultAddressNeorons[9],defaultAddressNeorons[8],
                     defaultAddressNeorons[7],defaultAddressNeorons[6],
                     defaultAddressNeorons[5],defaultAddressNeorons[4],
                     defaultAddressNeorons[3],defaultAddressNeorons[2],
                     defaultAddressNeorons[1],defaultAddressNeorons[0]}), .resetValue (
                     {defaultAddressNeorons[12],defaultAddressNeorons[11],
                     defaultAddressNeorons[10],defaultAddressNeorons[9],
                     defaultAddressNeorons[8],defaultAddressNeorons[7],
                     defaultAddressNeorons[6],defaultAddressNeorons[5],
                     defaultAddressNeorons[4],defaultAddressNeorons[3],
                     defaultAddressNeorons[2],defaultAddressNeorons[1],
                     defaultAddressNeorons[0]}), .clk (clk), .en (state_8), .rst (
                     reset), .isLoad (nx1352), .upOrDown (oneNeoron_15), .count (
                     {dmaAddRamNeorons[12],dmaAddRamNeorons[11],
                     dmaAddRamNeorons[10],dmaAddRamNeorons[9],
                     dmaAddRamNeorons[8],dmaAddRamNeorons[7],dmaAddRamNeorons[6]
                     ,dmaAddRamNeorons[5],dmaAddRamNeorons[4],
                     dmaAddRamNeorons[3],dmaAddRamNeorons[2],dmaAddRamNeorons[1]
                     ,dmaAddRamNeorons[0]})) ;
    Reg_4 MAXVALUEREGMAP (.D ({maxNumber_3,maxNumber_2,maxNumber_1,maxNumber_0})
          , .en (oneNeoron_8), .clk (doneMax), .rst (reset), .Q ({
          MAXPrediction[3],MAXPrediction[2],MAXPrediction[1],MAXPrediction[0]})
          , .Qbar ({\$dummy [3],\$dummy [4],\$dummy [5],\$dummy [6]})) ;
    oai21 ix35 (.Y (nx34), .A0 (finishRamWeights), .A1 (nx1082), .B0 (nx1084)) ;
    dffr reg_state_1 (.Q (state_1), .QB (nx1082), .D (nx34), .CLK (clk), .R (
         reset)) ;
    oai21 ix1085 (.Y (nx1084), .A0 (state_0), .A1 (fcDone), .B0 (nx1320)) ;
    dffs_ni reg_state_0 (.Q (state_0), .QB (\$dummy [7]), .D (nx20), .CLK (clk)
            , .S (reset)) ;
    dffr reg_state_7 (.Q (fcDone), .QB (\$dummy [8]), .D (nx12), .CLK (clk), .R (
         reset)) ;
    ao22 ix13 (.Y (nx12), .A0 (doneMax), .A1 (state_6), .B0 (nx1144), .B1 (
         fcDone)) ;
    dffr reg_state_6 (.Q (state_6), .QB (\$dummy [9]), .D (nx176), .CLK (clk), .R (
         reset)) ;
    ao21 ix177 (.Y (nx176), .A0 (nx1093), .A1 (state_6), .B0 (state_10)) ;
    inv01 ix1094 (.Y (nx1093), .A (doneMax)) ;
    dffr reg_state_10 (.Q (state_10), .QB (\$dummy [10]), .D (nx166), .CLK (clk)
         , .R (reset)) ;
    or02 ix161 (.Y (nx160), .A0 (nx158), .A1 (decrement)) ;
    nor03_2x ix159 (.Y (nx158), .A0 (nx1100), .A1 (nx1112), .A2 (nx152)) ;
    nor03_2x ix1101 (.Y (nx1100), .A0 (nx1102), .A1 (finishRamNeorons), .A2 (
             finishRamWeights)) ;
    nor04 ix1105 (.Y (nx1104), .A0 (numberOFNeorons_0), .A1 (numberOFNeorons_1)
          , .A2 (numberOFNeorons_2), .A3 (numberOFNeorons_3)) ;
    nor04 ix1107 (.Y (nx1106), .A0 (numberOFNeorons_4), .A1 (numberOFNeorons_5)
          , .A2 (numberOFNeorons_6), .A3 (numberOFNeorons_7)) ;
    nor04 ix1109 (.Y (nx1108), .A0 (numberOFNeorons_8), .A1 (numberOFNeorons_9)
          , .A2 (numberOFNeorons_10), .A3 (numberOFNeorons_11)) ;
    nor04 ix1111 (.Y (nx1110), .A0 (numberOFNeorons_12), .A1 (numberOFNeorons_13
          ), .A2 (numberOFNeorons_14), .A3 (numberOFNeorons_15)) ;
    dffr reg_state_4 (.Q (state_4), .QB (nx1112), .D (nx160), .CLK (clk), .R (
         reset)) ;
    nor04 ix153 (.Y (nx152), .A0 (finishRamNeorons), .A1 (finishRamWeights), .A2 (
          nx98), .A3 (nx0)) ;
    nand04 ix99 (.Y (nx98), .A0 (nx1104), .A1 (nx1106), .A2 (nx1108), .A3 (
           nx1110)) ;
    or02 ix133 (.Y (decrement), .A0 (state_8), .A1 (state_9)) ;
    dffr reg_state_8 (.Q (state_8), .QB (\$dummy [11]), .D (nx126), .CLK (clk), 
         .R (reset)) ;
    nor02ii ix127 (.Y (nx126), .A0 (nx1120), .A1 (readRamNeorons)) ;
    nand03 ix1121 (.Y (nx1120), .A0 (nx1122), .A1 (finishRamNeorons), .A2 (
           finishRamWeights)) ;
    nand02 ix1123 (.Y (nx1122), .A0 (multiplyWorkIn), .A1 (multiplyWorkDelayed)
           ) ;
    dffr reg_state_5 (.Q (readRamNeorons), .QB (\$dummy [12]), .D (nx120), .CLK (
         clk), .R (reset)) ;
    ao22 ix121 (.Y (nx120), .A0 (readRamNeorons), .A1 (nx1120), .B0 (state_4), .B1 (
         nx106)) ;
    nor03_2x ix107 (.Y (nx106), .A0 (nx1102), .A1 (finishRamNeorons), .A2 (
             finishRamWeights)) ;
    dffr reg_state_9 (.Q (state_9), .QB (\$dummy [13]), .D (nx1076), .CLK (clk)
         , .R (reset)) ;
    dffr reg_state_3 (.Q (state_3), .QB (\$dummy [14]), .D (nx54), .CLK (clk), .R (
         reset)) ;
    ao22 ix55 (.Y (nx54), .A0 (nx1133), .A1 (state_2), .B0 (state_3), .B1 (
         nx1138)) ;
    inv01 ix1134 (.Y (nx1133), .A (finishRamWeights)) ;
    dffr reg_state_2 (.Q (state_2), .QB (\$dummy [15]), .D (nx44), .CLK (clk), .R (
         reset)) ;
    ao21 ix45 (.Y (nx44), .A0 (finishRamWeights), .A1 (state_2), .B0 (nx1326)) ;
    nand03 ix1139 (.Y (nx1138), .A0 (nx1122), .A1 (finishRamWeights), .A2 (
           state_3)) ;
    inv01 ix1145 (.Y (nx1144), .A (cnnDoneOneCycle)) ;
    or02 ix183 (.Y (neoronValueSelection), .A0 (state_3), .A1 (state_9)) ;
    or02 ix185 (.Y (incrementWeightAdd), .A0 (nx1326), .A1 (decrement)) ;
    or03 ix189 (.Y (readRamWeights), .A0 (state_3), .A1 (readRamNeorons), .A2 (
         state_1)) ;
    and02 ix193 (.Y (beginSignal), .A0 (ioDone), .A1 (cnnDone)) ;
    inv01 ix1152 (.Y (clkInverted), .A (clk)) ;
    inv01 ix1103 (.Y (nx1102), .A (nx98)) ;
    inv01 ix65 (.Y (nx1076), .A (nx1138)) ;
    inv01 ix1 (.Y (nx0), .A (nx1122)) ;
    inv01 ix1157 (.Y (nx1158), .A (neoronMuxOutput_15)) ;
    inv01 ix1159 (.Y (nx1160), .A (nx1158)) ;
    inv01 ix1161 (.Y (nx1162), .A (nx1158)) ;
    inv01 ix1163 (.Y (nx1164), .A (nx1158)) ;
    inv01 ix1165 (.Y (nx1166), .A (nx1158)) ;
    inv01 ix1167 (.Y (nx1168), .A (neoronMuxOutput_14)) ;
    inv01 ix1169 (.Y (nx1170), .A (nx1168)) ;
    inv01 ix1171 (.Y (nx1172), .A (nx1168)) ;
    inv01 ix1173 (.Y (nx1174), .A (nx1168)) ;
    inv01 ix1175 (.Y (nx1176), .A (nx1168)) ;
    inv01 ix1177 (.Y (nx1178), .A (neoronMuxOutput_13)) ;
    inv01 ix1179 (.Y (nx1180), .A (nx1178)) ;
    inv01 ix1181 (.Y (nx1182), .A (nx1178)) ;
    inv01 ix1183 (.Y (nx1184), .A (nx1178)) ;
    inv01 ix1185 (.Y (nx1186), .A (nx1178)) ;
    inv01 ix1187 (.Y (nx1188), .A (neoronMuxOutput_12)) ;
    inv01 ix1189 (.Y (nx1190), .A (nx1188)) ;
    inv01 ix1191 (.Y (nx1192), .A (nx1188)) ;
    inv01 ix1193 (.Y (nx1194), .A (nx1188)) ;
    inv01 ix1195 (.Y (nx1196), .A (nx1188)) ;
    inv01 ix1197 (.Y (nx1198), .A (neoronMuxOutput_11)) ;
    inv01 ix1199 (.Y (nx1200), .A (nx1198)) ;
    inv01 ix1201 (.Y (nx1202), .A (nx1198)) ;
    inv01 ix1203 (.Y (nx1204), .A (nx1198)) ;
    inv01 ix1205 (.Y (nx1206), .A (nx1198)) ;
    inv01 ix1207 (.Y (nx1208), .A (neoronMuxOutput_10)) ;
    inv01 ix1209 (.Y (nx1210), .A (nx1208)) ;
    inv01 ix1211 (.Y (nx1212), .A (nx1208)) ;
    inv01 ix1213 (.Y (nx1214), .A (nx1208)) ;
    inv01 ix1215 (.Y (nx1216), .A (nx1208)) ;
    inv01 ix1217 (.Y (nx1218), .A (neoronMuxOutput_9)) ;
    inv01 ix1219 (.Y (nx1220), .A (nx1218)) ;
    inv01 ix1221 (.Y (nx1222), .A (nx1218)) ;
    inv01 ix1223 (.Y (nx1224), .A (nx1218)) ;
    inv01 ix1225 (.Y (nx1226), .A (nx1218)) ;
    inv01 ix1227 (.Y (nx1228), .A (neoronMuxOutput_8)) ;
    inv01 ix1229 (.Y (nx1230), .A (nx1228)) ;
    inv01 ix1231 (.Y (nx1232), .A (nx1228)) ;
    inv01 ix1233 (.Y (nx1234), .A (nx1228)) ;
    inv01 ix1235 (.Y (nx1236), .A (nx1228)) ;
    inv01 ix1237 (.Y (nx1238), .A (neoronMuxOutput_7)) ;
    inv01 ix1239 (.Y (nx1240), .A (nx1238)) ;
    inv01 ix1241 (.Y (nx1242), .A (nx1238)) ;
    inv01 ix1243 (.Y (nx1244), .A (nx1238)) ;
    inv01 ix1245 (.Y (nx1246), .A (nx1238)) ;
    inv01 ix1247 (.Y (nx1248), .A (neoronMuxOutput_6)) ;
    inv01 ix1249 (.Y (nx1250), .A (nx1248)) ;
    inv01 ix1251 (.Y (nx1252), .A (nx1248)) ;
    inv01 ix1253 (.Y (nx1254), .A (nx1248)) ;
    inv01 ix1255 (.Y (nx1256), .A (nx1248)) ;
    inv01 ix1257 (.Y (nx1258), .A (neoronMuxOutput_5)) ;
    inv01 ix1259 (.Y (nx1260), .A (nx1258)) ;
    inv01 ix1261 (.Y (nx1262), .A (nx1258)) ;
    inv01 ix1263 (.Y (nx1264), .A (nx1258)) ;
    inv01 ix1265 (.Y (nx1266), .A (nx1258)) ;
    inv01 ix1267 (.Y (nx1268), .A (neoronMuxOutput_4)) ;
    inv01 ix1269 (.Y (nx1270), .A (nx1268)) ;
    inv01 ix1271 (.Y (nx1272), .A (nx1268)) ;
    inv01 ix1273 (.Y (nx1274), .A (nx1268)) ;
    inv01 ix1275 (.Y (nx1276), .A (nx1268)) ;
    inv01 ix1277 (.Y (nx1278), .A (neoronMuxOutput_3)) ;
    inv01 ix1279 (.Y (nx1280), .A (nx1278)) ;
    inv01 ix1281 (.Y (nx1282), .A (nx1278)) ;
    inv01 ix1283 (.Y (nx1284), .A (nx1278)) ;
    inv01 ix1285 (.Y (nx1286), .A (nx1278)) ;
    inv01 ix1287 (.Y (nx1288), .A (neoronMuxOutput_2)) ;
    inv01 ix1289 (.Y (nx1290), .A (nx1288)) ;
    inv01 ix1291 (.Y (nx1292), .A (nx1288)) ;
    inv01 ix1293 (.Y (nx1294), .A (nx1288)) ;
    inv01 ix1295 (.Y (nx1296), .A (nx1288)) ;
    inv01 ix1297 (.Y (nx1298), .A (neoronMuxOutput_1)) ;
    inv01 ix1299 (.Y (nx1300), .A (nx1298)) ;
    inv01 ix1301 (.Y (nx1302), .A (nx1298)) ;
    inv01 ix1303 (.Y (nx1304), .A (nx1298)) ;
    inv01 ix1305 (.Y (nx1306), .A (nx1298)) ;
    inv01 ix1307 (.Y (nx1308), .A (neoronMuxOutput_0)) ;
    inv01 ix1309 (.Y (nx1310), .A (nx1308)) ;
    inv01 ix1311 (.Y (nx1312), .A (nx1308)) ;
    inv01 ix1313 (.Y (nx1314), .A (nx1308)) ;
    inv01 ix1315 (.Y (nx1316), .A (nx1308)) ;
    inv02 ix1317 (.Y (nx1318), .A (nx1144)) ;
    inv02 ix1319 (.Y (nx1320), .A (nx1144)) ;
    nor02ii ix41 (.Y (loadNumberOFNeorons), .A0 (nx1082), .A1 (finishRamWeights)
            ) ;
    and02 ix21 (.Y (nx20), .A0 (nx1144), .A1 (state_0)) ;
    nor02ii ix167 (.Y (nx166), .A0 (nx1112), .A1 (nx152)) ;
    buf02 ix1325 (.Y (nx1326), .A (loadNumberOFNeorons)) ;
    inv02 ix1351 (.Y (nx1352), .A (nx1144)) ;
endmodule


module Reg_4 ( D, en, clk, rst, Q, Qbar ) ;

    input [3:0]D ;
    input en ;
    input clk ;
    input rst ;
    output [3:0]Q ;
    output [3:0]Qbar ;

    wire nx146, nx156, nx166, nx176, nx186, nx196, nx206, nx216, nx228, nx233, 
         nx238, nx243, nx263, nx265;
    wire [7:0] \$dummy ;




    dffs_ni reg_Qbar_0 (.Q (Qbar[0]), .QB (\$dummy [0]), .D (nx186), .CLK (nx263
            ), .S (rst)) ;
    mux21_ni ix187 (.Y (nx186), .A0 (Qbar[0]), .A1 (nx228), .S0 (en)) ;
    inv01 ix229 (.Y (nx228), .A (D[0])) ;
    dffs_ni reg_Qbar_1 (.Q (Qbar[1]), .QB (\$dummy [1]), .D (nx196), .CLK (nx263
            ), .S (rst)) ;
    mux21_ni ix197 (.Y (nx196), .A0 (Qbar[1]), .A1 (nx233), .S0 (en)) ;
    inv01 ix234 (.Y (nx233), .A (D[1])) ;
    dffs_ni reg_Qbar_2 (.Q (Qbar[2]), .QB (\$dummy [2]), .D (nx206), .CLK (nx263
            ), .S (rst)) ;
    mux21_ni ix207 (.Y (nx206), .A0 (Qbar[2]), .A1 (nx238), .S0 (en)) ;
    inv01 ix239 (.Y (nx238), .A (D[2])) ;
    dffs_ni reg_Qbar_3 (.Q (Qbar[3]), .QB (\$dummy [3]), .D (nx216), .CLK (nx263
            ), .S (rst)) ;
    mux21_ni ix217 (.Y (nx216), .A0 (Qbar[3]), .A1 (nx243), .S0 (en)) ;
    inv01 ix244 (.Y (nx243), .A (D[3])) ;
    dffr reg_Q_0 (.Q (Q[0]), .QB (\$dummy [4]), .D (nx146), .CLK (nx263), .R (
         rst)) ;
    mux21_ni ix147 (.Y (nx146), .A0 (Q[0]), .A1 (D[0]), .S0 (en)) ;
    dffr reg_Q_1 (.Q (Q[1]), .QB (\$dummy [5]), .D (nx156), .CLK (nx263), .R (
         rst)) ;
    mux21_ni ix157 (.Y (nx156), .A0 (Q[1]), .A1 (D[1]), .S0 (en)) ;
    dffr reg_Q_2 (.Q (Q[2]), .QB (\$dummy [6]), .D (nx166), .CLK (nx263), .R (
         rst)) ;
    mux21_ni ix167 (.Y (nx166), .A0 (Q[2]), .A1 (D[2]), .S0 (en)) ;
    dffr reg_Q_3 (.Q (Q[3]), .QB (\$dummy [7]), .D (nx176), .CLK (nx265), .R (
         rst)) ;
    mux21_ni ix177 (.Y (nx176), .A0 (Q[3]), .A1 (D[3]), .S0 (en)) ;
    buf02 ix262 (.Y (nx263), .A (clk)) ;
    buf02 ix264 (.Y (nx265), .A (clk)) ;
endmodule


module CounterUpDown_13 ( load, resetValue, clk, en, rst, isLoad, upOrDown, 
                          count ) ;

    input [12:0]load ;
    input [12:0]resetValue ;
    input clk ;
    input en ;
    input rst ;
    input isLoad ;
    input upOrDown ;
    output [12:0]count ;

    wire countAdded_12, countAdded_11, countAdded_10, countAdded_9, countAdded_8, 
         countAdded_7, countAdded_6, countAdded_5, countAdded_4, countAdded_3, 
         countAdded_2, countAdded_1, countAdded_0, NOT_upOrDown, nx8, nx10, nx14, 
         nx24, nx26, nx30, nx40, nx42, nx46, nx56, nx58, nx62, nx72, nx74, nx78, 
         nx88, nx90, nx94, nx104, nx106, nx110, nx120, nx122, nx126, nx136, 
         nx138, nx142, nx152, nx154, nx158, nx168, nx170, nx174, nx184, nx186, 
         nx190, nx200, nx202, nx206, nx499, nx509, nx519, nx529, nx539, nx549, 
         nx559, nx569, nx579, nx589, nx599, nx609, nx619, nx636, nx720, nx722, 
         nx732, nx734;
    wire [13:0] \$dummy ;




    NBitAdder_13 nextCount (.a ({count[12],count[11],count[10],count[9],count[8]
                 ,count[7],count[6],count[5],count[4],count[3],count[2],count[1]
                 ,count[0]}), .b ({upOrDown,upOrDown,upOrDown,upOrDown,upOrDown,
                 upOrDown,upOrDown,upOrDown,upOrDown,upOrDown,upOrDown,upOrDown,
                 upOrDown}), .carryIn (NOT_upOrDown), .sum ({countAdded_12,
                 countAdded_11,countAdded_10,countAdded_9,countAdded_8,
                 countAdded_7,countAdded_6,countAdded_5,countAdded_4,
                 countAdded_3,countAdded_2,countAdded_1,countAdded_0}), .carryOut (
                 \$dummy [0])) ;
    inv01 ix632 (.Y (NOT_upOrDown), .A (upOrDown)) ;
    dffsr_ni reg_currentCount_0 (.Q (count[0]), .QB (\$dummy [1]), .D (nx499), .CLK (
             clk), .S (nx10), .R (nx14)) ;
    mux21_ni ix500 (.Y (nx499), .A0 (nx8), .A1 (count[0]), .S0 (nx720)) ;
    mux21_ni ix9 (.Y (nx8), .A0 (load[0]), .A1 (countAdded_0), .S0 (nx732)) ;
    nor02_2x ix637 (.Y (nx636), .A0 (nx732), .A1 (isLoad)) ;
    and02 ix11 (.Y (nx10), .A0 (resetValue[0]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_1 (.Q (count[1]), .QB (\$dummy [2]), .D (nx509), .CLK (
             clk), .S (nx26), .R (nx30)) ;
    mux21_ni ix510 (.Y (nx509), .A0 (nx24), .A1 (count[1]), .S0 (nx720)) ;
    mux21_ni ix25 (.Y (nx24), .A0 (load[1]), .A1 (countAdded_1), .S0 (nx732)) ;
    and02 ix27 (.Y (nx26), .A0 (resetValue[1]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_2 (.Q (count[2]), .QB (\$dummy [3]), .D (nx519), .CLK (
             clk), .S (nx42), .R (nx46)) ;
    mux21_ni ix520 (.Y (nx519), .A0 (nx40), .A1 (count[2]), .S0 (nx720)) ;
    mux21_ni ix41 (.Y (nx40), .A0 (load[2]), .A1 (countAdded_2), .S0 (nx732)) ;
    and02 ix43 (.Y (nx42), .A0 (resetValue[2]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_3 (.Q (count[3]), .QB (\$dummy [4]), .D (nx529), .CLK (
             clk), .S (nx58), .R (nx62)) ;
    mux21_ni ix530 (.Y (nx529), .A0 (nx56), .A1 (count[3]), .S0 (nx720)) ;
    mux21_ni ix57 (.Y (nx56), .A0 (load[3]), .A1 (countAdded_3), .S0 (nx732)) ;
    and02 ix59 (.Y (nx58), .A0 (resetValue[3]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_4 (.Q (count[4]), .QB (\$dummy [5]), .D (nx539), .CLK (
             clk), .S (nx74), .R (nx78)) ;
    mux21_ni ix540 (.Y (nx539), .A0 (nx72), .A1 (count[4]), .S0 (nx720)) ;
    mux21_ni ix73 (.Y (nx72), .A0 (load[4]), .A1 (countAdded_4), .S0 (nx732)) ;
    and02 ix75 (.Y (nx74), .A0 (resetValue[4]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_5 (.Q (count[5]), .QB (\$dummy [6]), .D (nx549), .CLK (
             clk), .S (nx90), .R (nx94)) ;
    mux21_ni ix550 (.Y (nx549), .A0 (nx88), .A1 (count[5]), .S0 (nx720)) ;
    mux21_ni ix89 (.Y (nx88), .A0 (load[5]), .A1 (countAdded_5), .S0 (nx732)) ;
    and02 ix91 (.Y (nx90), .A0 (resetValue[5]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_6 (.Q (count[6]), .QB (\$dummy [7]), .D (nx559), .CLK (
             clk), .S (nx106), .R (nx110)) ;
    mux21_ni ix560 (.Y (nx559), .A0 (nx104), .A1 (count[6]), .S0 (nx720)) ;
    mux21_ni ix105 (.Y (nx104), .A0 (load[6]), .A1 (countAdded_6), .S0 (nx734)
             ) ;
    and02 ix107 (.Y (nx106), .A0 (resetValue[6]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_7 (.Q (count[7]), .QB (\$dummy [8]), .D (nx569), .CLK (
             clk), .S (nx122), .R (nx126)) ;
    mux21_ni ix570 (.Y (nx569), .A0 (nx120), .A1 (count[7]), .S0 (nx722)) ;
    mux21_ni ix121 (.Y (nx120), .A0 (load[7]), .A1 (countAdded_7), .S0 (nx734)
             ) ;
    and02 ix123 (.Y (nx122), .A0 (resetValue[7]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_8 (.Q (count[8]), .QB (\$dummy [9]), .D (nx579), .CLK (
             clk), .S (nx138), .R (nx142)) ;
    mux21_ni ix580 (.Y (nx579), .A0 (nx136), .A1 (count[8]), .S0 (nx722)) ;
    mux21_ni ix137 (.Y (nx136), .A0 (load[8]), .A1 (countAdded_8), .S0 (nx734)
             ) ;
    and02 ix139 (.Y (nx138), .A0 (resetValue[8]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_9 (.Q (count[9]), .QB (\$dummy [10]), .D (nx589), 
             .CLK (clk), .S (nx154), .R (nx158)) ;
    mux21_ni ix590 (.Y (nx589), .A0 (nx152), .A1 (count[9]), .S0 (nx722)) ;
    mux21_ni ix153 (.Y (nx152), .A0 (load[9]), .A1 (countAdded_9), .S0 (nx734)
             ) ;
    and02 ix155 (.Y (nx154), .A0 (resetValue[9]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_10 (.Q (count[10]), .QB (\$dummy [11]), .D (nx599)
             , .CLK (clk), .S (nx170), .R (nx174)) ;
    mux21_ni ix600 (.Y (nx599), .A0 (nx168), .A1 (count[10]), .S0 (nx722)) ;
    mux21_ni ix169 (.Y (nx168), .A0 (load[10]), .A1 (countAdded_10), .S0 (nx734)
             ) ;
    and02 ix171 (.Y (nx170), .A0 (resetValue[10]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_11 (.Q (count[11]), .QB (\$dummy [12]), .D (nx609)
             , .CLK (clk), .S (nx186), .R (nx190)) ;
    mux21_ni ix610 (.Y (nx609), .A0 (nx184), .A1 (count[11]), .S0 (nx722)) ;
    mux21_ni ix185 (.Y (nx184), .A0 (load[11]), .A1 (countAdded_11), .S0 (nx734)
             ) ;
    and02 ix187 (.Y (nx186), .A0 (resetValue[11]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_12 (.Q (count[12]), .QB (\$dummy [13]), .D (nx619)
             , .CLK (clk), .S (nx202), .R (nx206)) ;
    mux21_ni ix620 (.Y (nx619), .A0 (nx200), .A1 (count[12]), .S0 (nx722)) ;
    mux21_ni ix201 (.Y (nx200), .A0 (load[12]), .A1 (countAdded_12), .S0 (nx734)
             ) ;
    and02 ix203 (.Y (nx202), .A0 (resetValue[12]), .A1 (rst)) ;
    buf02 ix719 (.Y (nx720), .A (nx636)) ;
    buf02 ix721 (.Y (nx722), .A (nx636)) ;
    nor02ii ix15 (.Y (nx14), .A0 (resetValue[0]), .A1 (rst)) ;
    nor02ii ix31 (.Y (nx30), .A0 (resetValue[1]), .A1 (rst)) ;
    nor02ii ix47 (.Y (nx46), .A0 (resetValue[2]), .A1 (rst)) ;
    nor02ii ix63 (.Y (nx62), .A0 (resetValue[3]), .A1 (rst)) ;
    nor02ii ix79 (.Y (nx78), .A0 (resetValue[4]), .A1 (rst)) ;
    nor02ii ix95 (.Y (nx94), .A0 (resetValue[5]), .A1 (rst)) ;
    nor02ii ix111 (.Y (nx110), .A0 (resetValue[6]), .A1 (rst)) ;
    nor02ii ix127 (.Y (nx126), .A0 (resetValue[7]), .A1 (rst)) ;
    nor02ii ix143 (.Y (nx142), .A0 (resetValue[8]), .A1 (rst)) ;
    nor02ii ix159 (.Y (nx158), .A0 (resetValue[9]), .A1 (rst)) ;
    nor02ii ix175 (.Y (nx174), .A0 (resetValue[10]), .A1 (rst)) ;
    nor02ii ix191 (.Y (nx190), .A0 (resetValue[11]), .A1 (rst)) ;
    nor02ii ix207 (.Y (nx206), .A0 (resetValue[12]), .A1 (rst)) ;
    buf02 ix731 (.Y (nx732), .A (en)) ;
    buf02 ix733 (.Y (nx734), .A (en)) ;
endmodule


module NBitAdder_13 ( a, b, carryIn, sum, carryOut ) ;

    input [12:0]a ;
    input [12:0]b ;
    input carryIn ;
    output [12:0]sum ;
    output carryOut ;

    wire temp_11, temp_10, temp_9, temp_8, temp_7, temp_6, temp_5, temp_4, 
         temp_3, temp_2, temp_1, temp_0;



    FullAdder f0 (.a (a[0]), .b (b[0]), .cin (carryIn), .s (sum[0]), .cout (
              temp_0)) ;
    FullAdder loop1_1_fx (.a (a[1]), .b (b[1]), .cin (temp_0), .s (sum[1]), .cout (
              temp_1)) ;
    FullAdder loop1_2_fx (.a (a[2]), .b (b[2]), .cin (temp_1), .s (sum[2]), .cout (
              temp_2)) ;
    FullAdder loop1_3_fx (.a (a[3]), .b (b[3]), .cin (temp_2), .s (sum[3]), .cout (
              temp_3)) ;
    FullAdder loop1_4_fx (.a (a[4]), .b (b[4]), .cin (temp_3), .s (sum[4]), .cout (
              temp_4)) ;
    FullAdder loop1_5_fx (.a (a[5]), .b (b[5]), .cin (temp_4), .s (sum[5]), .cout (
              temp_5)) ;
    FullAdder loop1_6_fx (.a (a[6]), .b (b[6]), .cin (temp_5), .s (sum[6]), .cout (
              temp_6)) ;
    FullAdder loop1_7_fx (.a (a[7]), .b (b[7]), .cin (temp_6), .s (sum[7]), .cout (
              temp_7)) ;
    FullAdder loop1_8_fx (.a (a[8]), .b (b[8]), .cin (temp_7), .s (sum[8]), .cout (
              temp_8)) ;
    FullAdder loop1_9_fx (.a (a[9]), .b (b[9]), .cin (temp_8), .s (sum[9]), .cout (
              temp_9)) ;
    FullAdder loop1_10_fx (.a (a[10]), .b (b[10]), .cin (temp_9), .s (sum[10]), 
              .cout (temp_10)) ;
    FullAdder loop1_11_fx (.a (a[11]), .b (b[11]), .cin (temp_10), .s (sum[11])
              , .cout (temp_11)) ;
    FullAdder loop1_12_fx (.a (a[12]), .b (b[12]), .cin (temp_11), .s (sum[12])
              , .cout (carryOut)) ;
endmodule


module FlibFlob ( D, en, clk, rst, Q, Qbar ) ;

    input D ;
    input en ;
    input clk ;
    input rst ;
    output Q ;
    output Qbar ;

    wire nx65, nx75, nx87;
    wire [1:0] \$dummy ;




    dffs_ni reg_Qbar (.Q (Qbar), .QB (\$dummy [0]), .D (nx75), .CLK (clk), .S (
            rst)) ;
    mux21_ni ix76 (.Y (nx75), .A0 (Qbar), .A1 (nx87), .S0 (en)) ;
    inv01 ix88 (.Y (nx87), .A (D)) ;
    dffr reg_Q (.Q (Q), .QB (\$dummy [1]), .D (nx65), .CLK (clk), .R (rst)) ;
    mux21_ni ix66 (.Y (nx65), .A0 (Q), .A1 (D), .S0 (en)) ;
endmodule


module Alus8x16_10 ( q_9__7, q_9__6, q_9__5, q_9__4, q_9__3, q_9__2, q_9__1, 
                     q_9__0, q_8__7, q_8__6, q_8__5, q_8__4, q_8__3, q_8__2, 
                     q_8__1, q_8__0, q_7__7, q_7__6, q_7__5, q_7__4, q_7__3, 
                     q_7__2, q_7__1, q_7__0, q_6__7, q_6__6, q_6__5, q_6__4, 
                     q_6__3, q_6__2, q_6__1, q_6__0, q_5__7, q_5__6, q_5__5, 
                     q_5__4, q_5__3, q_5__2, q_5__1, q_5__0, q_4__7, q_4__6, 
                     q_4__5, q_4__4, q_4__3, q_4__2, q_4__1, q_4__0, q_3__7, 
                     q_3__6, q_3__5, q_3__4, q_3__3, q_3__2, q_3__1, q_3__0, 
                     q_2__7, q_2__6, q_2__5, q_2__4, q_2__3, q_2__2, q_2__1, 
                     q_2__0, q_1__7, q_1__6, q_1__5, q_1__4, q_1__3, q_1__2, 
                     q_1__1, q_1__0, q_0__7, q_0__6, q_0__5, q_0__4, q_0__3, 
                     q_0__2, q_0__1, q_0__0, m_9__15, m_9__14, m_9__13, m_9__12, 
                     m_9__11, m_9__10, m_9__9, m_9__8, m_9__7, m_9__6, m_9__5, 
                     m_9__4, m_9__3, m_9__2, m_9__1, m_9__0, m_8__15, m_8__14, 
                     m_8__13, m_8__12, m_8__11, m_8__10, m_8__9, m_8__8, m_8__7, 
                     m_8__6, m_8__5, m_8__4, m_8__3, m_8__2, m_8__1, m_8__0, 
                     m_7__15, m_7__14, m_7__13, m_7__12, m_7__11, m_7__10, 
                     m_7__9, m_7__8, m_7__7, m_7__6, m_7__5, m_7__4, m_7__3, 
                     m_7__2, m_7__1, m_7__0, m_6__15, m_6__14, m_6__13, m_6__12, 
                     m_6__11, m_6__10, m_6__9, m_6__8, m_6__7, m_6__6, m_6__5, 
                     m_6__4, m_6__3, m_6__2, m_6__1, m_6__0, m_5__15, m_5__14, 
                     m_5__13, m_5__12, m_5__11, m_5__10, m_5__9, m_5__8, m_5__7, 
                     m_5__6, m_5__5, m_5__4, m_5__3, m_5__2, m_5__1, m_5__0, 
                     m_4__15, m_4__14, m_4__13, m_4__12, m_4__11, m_4__10, 
                     m_4__9, m_4__8, m_4__7, m_4__6, m_4__5, m_4__4, m_4__3, 
                     m_4__2, m_4__1, m_4__0, m_3__15, m_3__14, m_3__13, m_3__12, 
                     m_3__11, m_3__10, m_3__9, m_3__8, m_3__7, m_3__6, m_3__5, 
                     m_3__4, m_3__3, m_3__2, m_3__1, m_3__0, m_2__15, m_2__14, 
                     m_2__13, m_2__12, m_2__11, m_2__10, m_2__9, m_2__8, m_2__7, 
                     m_2__6, m_2__5, m_2__4, m_2__3, m_2__2, m_2__1, m_2__0, 
                     m_1__15, m_1__14, m_1__13, m_1__12, m_1__11, m_1__10, 
                     m_1__9, m_1__8, m_1__7, m_1__6, m_1__5, m_1__4, m_1__3, 
                     m_1__2, m_1__1, m_1__0, m_0__15, m_0__14, m_0__13, m_0__12, 
                     m_0__11, m_0__10, m_0__9, m_0__8, m_0__7, m_0__6, m_0__5, 
                     m_0__4, m_0__3, m_0__2, m_0__1, m_0__0, f_9__15, f_9__14, 
                     f_9__13, f_9__12, f_9__11, f_9__10, f_9__9, f_9__8, f_9__7, 
                     f_9__6, f_9__5, f_9__4, f_9__3, f_9__2, f_9__1, f_9__0, 
                     f_8__15, f_8__14, f_8__13, f_8__12, f_8__11, f_8__10, 
                     f_8__9, f_8__8, f_8__7, f_8__6, f_8__5, f_8__4, f_8__3, 
                     f_8__2, f_8__1, f_8__0, f_7__15, f_7__14, f_7__13, f_7__12, 
                     f_7__11, f_7__10, f_7__9, f_7__8, f_7__7, f_7__6, f_7__5, 
                     f_7__4, f_7__3, f_7__2, f_7__1, f_7__0, f_6__15, f_6__14, 
                     f_6__13, f_6__12, f_6__11, f_6__10, f_6__9, f_6__8, f_6__7, 
                     f_6__6, f_6__5, f_6__4, f_6__3, f_6__2, f_6__1, f_6__0, 
                     f_5__15, f_5__14, f_5__13, f_5__12, f_5__11, f_5__10, 
                     f_5__9, f_5__8, f_5__7, f_5__6, f_5__5, f_5__4, f_5__3, 
                     f_5__2, f_5__1, f_5__0, f_4__15, f_4__14, f_4__13, f_4__12, 
                     f_4__11, f_4__10, f_4__9, f_4__8, f_4__7, f_4__6, f_4__5, 
                     f_4__4, f_4__3, f_4__2, f_4__1, f_4__0, f_3__15, f_3__14, 
                     f_3__13, f_3__12, f_3__11, f_3__10, f_3__9, f_3__8, f_3__7, 
                     f_3__6, f_3__5, f_3__4, f_3__3, f_3__2, f_3__1, f_3__0, 
                     f_2__15, f_2__14, f_2__13, f_2__12, f_2__11, f_2__10, 
                     f_2__9, f_2__8, f_2__7, f_2__6, f_2__5, f_2__4, f_2__3, 
                     f_2__2, f_2__1, f_2__0, f_1__15, f_1__14, f_1__13, f_1__12, 
                     f_1__11, f_1__10, f_1__9, f_1__8, f_1__7, f_1__6, f_1__5, 
                     f_1__4, f_1__3, f_1__2, f_1__1, f_1__0, f_0__15, f_0__14, 
                     f_0__13, f_0__12, f_0__11, f_0__10, f_0__9, f_0__8, f_0__7, 
                     f_0__6, f_0__5, f_0__4, f_0__3, f_0__2, f_0__1, f_0__0, clk, 
                     start, rst, done, working ) ;

    input q_9__7 ;
    input q_9__6 ;
    input q_9__5 ;
    input q_9__4 ;
    input q_9__3 ;
    input q_9__2 ;
    input q_9__1 ;
    input q_9__0 ;
    input q_8__7 ;
    input q_8__6 ;
    input q_8__5 ;
    input q_8__4 ;
    input q_8__3 ;
    input q_8__2 ;
    input q_8__1 ;
    input q_8__0 ;
    input q_7__7 ;
    input q_7__6 ;
    input q_7__5 ;
    input q_7__4 ;
    input q_7__3 ;
    input q_7__2 ;
    input q_7__1 ;
    input q_7__0 ;
    input q_6__7 ;
    input q_6__6 ;
    input q_6__5 ;
    input q_6__4 ;
    input q_6__3 ;
    input q_6__2 ;
    input q_6__1 ;
    input q_6__0 ;
    input q_5__7 ;
    input q_5__6 ;
    input q_5__5 ;
    input q_5__4 ;
    input q_5__3 ;
    input q_5__2 ;
    input q_5__1 ;
    input q_5__0 ;
    input q_4__7 ;
    input q_4__6 ;
    input q_4__5 ;
    input q_4__4 ;
    input q_4__3 ;
    input q_4__2 ;
    input q_4__1 ;
    input q_4__0 ;
    input q_3__7 ;
    input q_3__6 ;
    input q_3__5 ;
    input q_3__4 ;
    input q_3__3 ;
    input q_3__2 ;
    input q_3__1 ;
    input q_3__0 ;
    input q_2__7 ;
    input q_2__6 ;
    input q_2__5 ;
    input q_2__4 ;
    input q_2__3 ;
    input q_2__2 ;
    input q_2__1 ;
    input q_2__0 ;
    input q_1__7 ;
    input q_1__6 ;
    input q_1__5 ;
    input q_1__4 ;
    input q_1__3 ;
    input q_1__2 ;
    input q_1__1 ;
    input q_1__0 ;
    input q_0__7 ;
    input q_0__6 ;
    input q_0__5 ;
    input q_0__4 ;
    input q_0__3 ;
    input q_0__2 ;
    input q_0__1 ;
    input q_0__0 ;
    input m_9__15 ;
    input m_9__14 ;
    input m_9__13 ;
    input m_9__12 ;
    input m_9__11 ;
    input m_9__10 ;
    input m_9__9 ;
    input m_9__8 ;
    input m_9__7 ;
    input m_9__6 ;
    input m_9__5 ;
    input m_9__4 ;
    input m_9__3 ;
    input m_9__2 ;
    input m_9__1 ;
    input m_9__0 ;
    input m_8__15 ;
    input m_8__14 ;
    input m_8__13 ;
    input m_8__12 ;
    input m_8__11 ;
    input m_8__10 ;
    input m_8__9 ;
    input m_8__8 ;
    input m_8__7 ;
    input m_8__6 ;
    input m_8__5 ;
    input m_8__4 ;
    input m_8__3 ;
    input m_8__2 ;
    input m_8__1 ;
    input m_8__0 ;
    input m_7__15 ;
    input m_7__14 ;
    input m_7__13 ;
    input m_7__12 ;
    input m_7__11 ;
    input m_7__10 ;
    input m_7__9 ;
    input m_7__8 ;
    input m_7__7 ;
    input m_7__6 ;
    input m_7__5 ;
    input m_7__4 ;
    input m_7__3 ;
    input m_7__2 ;
    input m_7__1 ;
    input m_7__0 ;
    input m_6__15 ;
    input m_6__14 ;
    input m_6__13 ;
    input m_6__12 ;
    input m_6__11 ;
    input m_6__10 ;
    input m_6__9 ;
    input m_6__8 ;
    input m_6__7 ;
    input m_6__6 ;
    input m_6__5 ;
    input m_6__4 ;
    input m_6__3 ;
    input m_6__2 ;
    input m_6__1 ;
    input m_6__0 ;
    input m_5__15 ;
    input m_5__14 ;
    input m_5__13 ;
    input m_5__12 ;
    input m_5__11 ;
    input m_5__10 ;
    input m_5__9 ;
    input m_5__8 ;
    input m_5__7 ;
    input m_5__6 ;
    input m_5__5 ;
    input m_5__4 ;
    input m_5__3 ;
    input m_5__2 ;
    input m_5__1 ;
    input m_5__0 ;
    input m_4__15 ;
    input m_4__14 ;
    input m_4__13 ;
    input m_4__12 ;
    input m_4__11 ;
    input m_4__10 ;
    input m_4__9 ;
    input m_4__8 ;
    input m_4__7 ;
    input m_4__6 ;
    input m_4__5 ;
    input m_4__4 ;
    input m_4__3 ;
    input m_4__2 ;
    input m_4__1 ;
    input m_4__0 ;
    input m_3__15 ;
    input m_3__14 ;
    input m_3__13 ;
    input m_3__12 ;
    input m_3__11 ;
    input m_3__10 ;
    input m_3__9 ;
    input m_3__8 ;
    input m_3__7 ;
    input m_3__6 ;
    input m_3__5 ;
    input m_3__4 ;
    input m_3__3 ;
    input m_3__2 ;
    input m_3__1 ;
    input m_3__0 ;
    input m_2__15 ;
    input m_2__14 ;
    input m_2__13 ;
    input m_2__12 ;
    input m_2__11 ;
    input m_2__10 ;
    input m_2__9 ;
    input m_2__8 ;
    input m_2__7 ;
    input m_2__6 ;
    input m_2__5 ;
    input m_2__4 ;
    input m_2__3 ;
    input m_2__2 ;
    input m_2__1 ;
    input m_2__0 ;
    input m_1__15 ;
    input m_1__14 ;
    input m_1__13 ;
    input m_1__12 ;
    input m_1__11 ;
    input m_1__10 ;
    input m_1__9 ;
    input m_1__8 ;
    input m_1__7 ;
    input m_1__6 ;
    input m_1__5 ;
    input m_1__4 ;
    input m_1__3 ;
    input m_1__2 ;
    input m_1__1 ;
    input m_1__0 ;
    input m_0__15 ;
    input m_0__14 ;
    input m_0__13 ;
    input m_0__12 ;
    input m_0__11 ;
    input m_0__10 ;
    input m_0__9 ;
    input m_0__8 ;
    input m_0__7 ;
    input m_0__6 ;
    input m_0__5 ;
    input m_0__4 ;
    input m_0__3 ;
    input m_0__2 ;
    input m_0__1 ;
    input m_0__0 ;
    inout f_9__15 ;
    inout f_9__14 ;
    inout f_9__13 ;
    inout f_9__12 ;
    inout f_9__11 ;
    inout f_9__10 ;
    inout f_9__9 ;
    inout f_9__8 ;
    inout f_9__7 ;
    inout f_9__6 ;
    inout f_9__5 ;
    inout f_9__4 ;
    inout f_9__3 ;
    inout f_9__2 ;
    inout f_9__1 ;
    inout f_9__0 ;
    inout f_8__15 ;
    inout f_8__14 ;
    inout f_8__13 ;
    inout f_8__12 ;
    inout f_8__11 ;
    inout f_8__10 ;
    inout f_8__9 ;
    inout f_8__8 ;
    inout f_8__7 ;
    inout f_8__6 ;
    inout f_8__5 ;
    inout f_8__4 ;
    inout f_8__3 ;
    inout f_8__2 ;
    inout f_8__1 ;
    inout f_8__0 ;
    inout f_7__15 ;
    inout f_7__14 ;
    inout f_7__13 ;
    inout f_7__12 ;
    inout f_7__11 ;
    inout f_7__10 ;
    inout f_7__9 ;
    inout f_7__8 ;
    inout f_7__7 ;
    inout f_7__6 ;
    inout f_7__5 ;
    inout f_7__4 ;
    inout f_7__3 ;
    inout f_7__2 ;
    inout f_7__1 ;
    inout f_7__0 ;
    inout f_6__15 ;
    inout f_6__14 ;
    inout f_6__13 ;
    inout f_6__12 ;
    inout f_6__11 ;
    inout f_6__10 ;
    inout f_6__9 ;
    inout f_6__8 ;
    inout f_6__7 ;
    inout f_6__6 ;
    inout f_6__5 ;
    inout f_6__4 ;
    inout f_6__3 ;
    inout f_6__2 ;
    inout f_6__1 ;
    inout f_6__0 ;
    inout f_5__15 ;
    inout f_5__14 ;
    inout f_5__13 ;
    inout f_5__12 ;
    inout f_5__11 ;
    inout f_5__10 ;
    inout f_5__9 ;
    inout f_5__8 ;
    inout f_5__7 ;
    inout f_5__6 ;
    inout f_5__5 ;
    inout f_5__4 ;
    inout f_5__3 ;
    inout f_5__2 ;
    inout f_5__1 ;
    inout f_5__0 ;
    inout f_4__15 ;
    inout f_4__14 ;
    inout f_4__13 ;
    inout f_4__12 ;
    inout f_4__11 ;
    inout f_4__10 ;
    inout f_4__9 ;
    inout f_4__8 ;
    inout f_4__7 ;
    inout f_4__6 ;
    inout f_4__5 ;
    inout f_4__4 ;
    inout f_4__3 ;
    inout f_4__2 ;
    inout f_4__1 ;
    inout f_4__0 ;
    inout f_3__15 ;
    inout f_3__14 ;
    inout f_3__13 ;
    inout f_3__12 ;
    inout f_3__11 ;
    inout f_3__10 ;
    inout f_3__9 ;
    inout f_3__8 ;
    inout f_3__7 ;
    inout f_3__6 ;
    inout f_3__5 ;
    inout f_3__4 ;
    inout f_3__3 ;
    inout f_3__2 ;
    inout f_3__1 ;
    inout f_3__0 ;
    inout f_2__15 ;
    inout f_2__14 ;
    inout f_2__13 ;
    inout f_2__12 ;
    inout f_2__11 ;
    inout f_2__10 ;
    inout f_2__9 ;
    inout f_2__8 ;
    inout f_2__7 ;
    inout f_2__6 ;
    inout f_2__5 ;
    inout f_2__4 ;
    inout f_2__3 ;
    inout f_2__2 ;
    inout f_2__1 ;
    inout f_2__0 ;
    inout f_1__15 ;
    inout f_1__14 ;
    inout f_1__13 ;
    inout f_1__12 ;
    inout f_1__11 ;
    inout f_1__10 ;
    inout f_1__9 ;
    inout f_1__8 ;
    inout f_1__7 ;
    inout f_1__6 ;
    inout f_1__5 ;
    inout f_1__4 ;
    inout f_1__3 ;
    inout f_1__2 ;
    inout f_1__1 ;
    inout f_1__0 ;
    inout f_0__15 ;
    inout f_0__14 ;
    inout f_0__13 ;
    inout f_0__12 ;
    inout f_0__11 ;
    inout f_0__10 ;
    inout f_0__9 ;
    inout f_0__8 ;
    inout f_0__7 ;
    inout f_0__6 ;
    inout f_0__5 ;
    inout f_0__4 ;
    inout f_0__3 ;
    inout f_0__2 ;
    inout f_0__1 ;
    inout f_0__0 ;
    input clk ;
    input start ;
    input rst ;
    inout done ;
    inout working ;

    wire mulOut_9__15, mulOut_9__14, mulOut_9__13, mulOut_9__12, mulOut_9__11, 
         mulOut_9__10, mulOut_9__9, mulOut_9__8, mulOut_9__7, mulOut_9__6, 
         mulOut_9__5, mulOut_9__4, mulOut_9__3, mulOut_9__2, mulOut_9__1, 
         mulOut_9__0, mulOut_8__15, mulOut_8__14, mulOut_8__13, mulOut_8__12, 
         mulOut_8__11, mulOut_8__10, mulOut_8__9, mulOut_8__8, mulOut_8__7, 
         mulOut_8__6, mulOut_8__5, mulOut_8__4, mulOut_8__3, mulOut_8__2, 
         mulOut_8__1, mulOut_8__0, mulOut_7__15, mulOut_7__14, mulOut_7__13, 
         mulOut_7__12, mulOut_7__11, mulOut_7__10, mulOut_7__9, mulOut_7__8, 
         mulOut_7__7, mulOut_7__6, mulOut_7__5, mulOut_7__4, mulOut_7__3, 
         mulOut_7__2, mulOut_7__1, mulOut_7__0, mulOut_6__15, mulOut_6__14, 
         mulOut_6__13, mulOut_6__12, mulOut_6__11, mulOut_6__10, mulOut_6__9, 
         mulOut_6__8, mulOut_6__7, mulOut_6__6, mulOut_6__5, mulOut_6__4, 
         mulOut_6__3, mulOut_6__2, mulOut_6__1, mulOut_6__0, mulOut_5__15, 
         mulOut_5__14, mulOut_5__13, mulOut_5__12, mulOut_5__11, mulOut_5__10, 
         mulOut_5__9, mulOut_5__8, mulOut_5__7, mulOut_5__6, mulOut_5__5, 
         mulOut_5__4, mulOut_5__3, mulOut_5__2, mulOut_5__1, mulOut_5__0, 
         mulOut_4__15, mulOut_4__14, mulOut_4__13, mulOut_4__12, mulOut_4__11, 
         mulOut_4__10, mulOut_4__9, mulOut_4__8, mulOut_4__7, mulOut_4__6, 
         mulOut_4__5, mulOut_4__4, mulOut_4__3, mulOut_4__2, mulOut_4__1, 
         mulOut_4__0, mulOut_3__15, mulOut_3__14, mulOut_3__13, mulOut_3__12, 
         mulOut_3__11, mulOut_3__10, mulOut_3__9, mulOut_3__8, mulOut_3__7, 
         mulOut_3__6, mulOut_3__5, mulOut_3__4, mulOut_3__3, mulOut_3__2, 
         mulOut_3__1, mulOut_3__0, mulOut_2__15, mulOut_2__14, mulOut_2__13, 
         mulOut_2__12, mulOut_2__11, mulOut_2__10, mulOut_2__9, mulOut_2__8, 
         mulOut_2__7, mulOut_2__6, mulOut_2__5, mulOut_2__4, mulOut_2__3, 
         mulOut_2__2, mulOut_2__1, mulOut_2__0, mulOut_1__15, mulOut_1__14, 
         mulOut_1__13, mulOut_1__12, mulOut_1__11, mulOut_1__10, mulOut_1__9, 
         mulOut_1__8, mulOut_1__7, mulOut_1__6, mulOut_1__5, mulOut_1__4, 
         mulOut_1__3, mulOut_1__2, mulOut_1__1, mulOut_1__0, mulOut_0__15, 
         mulOut_0__14, mulOut_0__13, mulOut_0__12, mulOut_0__11, mulOut_0__10, 
         mulOut_0__9, mulOut_0__8, mulOut_0__7, mulOut_0__6, mulOut_0__5, 
         mulOut_0__4, mulOut_0__3, mulOut_0__2, mulOut_0__1, mulOut_0__0;



    nMul8x16_10 cmp1 (.q_9__7 (q_9__7), .q_9__6 (q_9__6), .q_9__5 (q_9__5), .q_9__4 (
                q_9__4), .q_9__3 (q_9__3), .q_9__2 (q_9__2), .q_9__1 (q_9__1), .q_9__0 (
                q_9__0), .q_8__7 (q_8__7), .q_8__6 (q_8__6), .q_8__5 (q_8__5), .q_8__4 (
                q_8__4), .q_8__3 (q_8__3), .q_8__2 (q_8__2), .q_8__1 (q_8__1), .q_8__0 (
                q_8__0), .q_7__7 (q_7__7), .q_7__6 (q_7__6), .q_7__5 (q_7__5), .q_7__4 (
                q_7__4), .q_7__3 (q_7__3), .q_7__2 (q_7__2), .q_7__1 (q_7__1), .q_7__0 (
                q_7__0), .q_6__7 (q_6__7), .q_6__6 (q_6__6), .q_6__5 (q_6__5), .q_6__4 (
                q_6__4), .q_6__3 (q_6__3), .q_6__2 (q_6__2), .q_6__1 (q_6__1), .q_6__0 (
                q_6__0), .q_5__7 (q_5__7), .q_5__6 (q_5__6), .q_5__5 (q_5__5), .q_5__4 (
                q_5__4), .q_5__3 (q_5__3), .q_5__2 (q_5__2), .q_5__1 (q_5__1), .q_5__0 (
                q_5__0), .q_4__7 (q_4__7), .q_4__6 (q_4__6), .q_4__5 (q_4__5), .q_4__4 (
                q_4__4), .q_4__3 (q_4__3), .q_4__2 (q_4__2), .q_4__1 (q_4__1), .q_4__0 (
                q_4__0), .q_3__7 (q_3__7), .q_3__6 (q_3__6), .q_3__5 (q_3__5), .q_3__4 (
                q_3__4), .q_3__3 (q_3__3), .q_3__2 (q_3__2), .q_3__1 (q_3__1), .q_3__0 (
                q_3__0), .q_2__7 (q_2__7), .q_2__6 (q_2__6), .q_2__5 (q_2__5), .q_2__4 (
                q_2__4), .q_2__3 (q_2__3), .q_2__2 (q_2__2), .q_2__1 (q_2__1), .q_2__0 (
                q_2__0), .q_1__7 (q_1__7), .q_1__6 (q_1__6), .q_1__5 (q_1__5), .q_1__4 (
                q_1__4), .q_1__3 (q_1__3), .q_1__2 (q_1__2), .q_1__1 (q_1__1), .q_1__0 (
                q_1__0), .q_0__7 (q_0__7), .q_0__6 (q_0__6), .q_0__5 (q_0__5), .q_0__4 (
                q_0__4), .q_0__3 (q_0__3), .q_0__2 (q_0__2), .q_0__1 (q_0__1), .q_0__0 (
                q_0__0), .m_9__15 (m_9__15), .m_9__14 (m_9__14), .m_9__13 (
                m_9__13), .m_9__12 (m_9__12), .m_9__11 (m_9__11), .m_9__10 (
                m_9__10), .m_9__9 (m_9__9), .m_9__8 (m_9__8), .m_9__7 (m_9__7), 
                .m_9__6 (m_9__6), .m_9__5 (m_9__5), .m_9__4 (m_9__4), .m_9__3 (
                m_9__3), .m_9__2 (m_9__2), .m_9__1 (m_9__1), .m_9__0 (m_9__0), .m_8__15 (
                m_8__15), .m_8__14 (m_8__14), .m_8__13 (m_8__13), .m_8__12 (
                m_8__12), .m_8__11 (m_8__11), .m_8__10 (m_8__10), .m_8__9 (
                m_8__9), .m_8__8 (m_8__8), .m_8__7 (m_8__7), .m_8__6 (m_8__6), .m_8__5 (
                m_8__5), .m_8__4 (m_8__4), .m_8__3 (m_8__3), .m_8__2 (m_8__2), .m_8__1 (
                m_8__1), .m_8__0 (m_8__0), .m_7__15 (m_7__15), .m_7__14 (m_7__14
                ), .m_7__13 (m_7__13), .m_7__12 (m_7__12), .m_7__11 (m_7__11), .m_7__10 (
                m_7__10), .m_7__9 (m_7__9), .m_7__8 (m_7__8), .m_7__7 (m_7__7), 
                .m_7__6 (m_7__6), .m_7__5 (m_7__5), .m_7__4 (m_7__4), .m_7__3 (
                m_7__3), .m_7__2 (m_7__2), .m_7__1 (m_7__1), .m_7__0 (m_7__0), .m_6__15 (
                m_6__15), .m_6__14 (m_6__14), .m_6__13 (m_6__13), .m_6__12 (
                m_6__12), .m_6__11 (m_6__11), .m_6__10 (m_6__10), .m_6__9 (
                m_6__9), .m_6__8 (m_6__8), .m_6__7 (m_6__7), .m_6__6 (m_6__6), .m_6__5 (
                m_6__5), .m_6__4 (m_6__4), .m_6__3 (m_6__3), .m_6__2 (m_6__2), .m_6__1 (
                m_6__1), .m_6__0 (m_6__0), .m_5__15 (m_5__15), .m_5__14 (m_5__14
                ), .m_5__13 (m_5__13), .m_5__12 (m_5__12), .m_5__11 (m_5__11), .m_5__10 (
                m_5__10), .m_5__9 (m_5__9), .m_5__8 (m_5__8), .m_5__7 (m_5__7), 
                .m_5__6 (m_5__6), .m_5__5 (m_5__5), .m_5__4 (m_5__4), .m_5__3 (
                m_5__3), .m_5__2 (m_5__2), .m_5__1 (m_5__1), .m_5__0 (m_5__0), .m_4__15 (
                m_4__15), .m_4__14 (m_4__14), .m_4__13 (m_4__13), .m_4__12 (
                m_4__12), .m_4__11 (m_4__11), .m_4__10 (m_4__10), .m_4__9 (
                m_4__9), .m_4__8 (m_4__8), .m_4__7 (m_4__7), .m_4__6 (m_4__6), .m_4__5 (
                m_4__5), .m_4__4 (m_4__4), .m_4__3 (m_4__3), .m_4__2 (m_4__2), .m_4__1 (
                m_4__1), .m_4__0 (m_4__0), .m_3__15 (m_3__15), .m_3__14 (m_3__14
                ), .m_3__13 (m_3__13), .m_3__12 (m_3__12), .m_3__11 (m_3__11), .m_3__10 (
                m_3__10), .m_3__9 (m_3__9), .m_3__8 (m_3__8), .m_3__7 (m_3__7), 
                .m_3__6 (m_3__6), .m_3__5 (m_3__5), .m_3__4 (m_3__4), .m_3__3 (
                m_3__3), .m_3__2 (m_3__2), .m_3__1 (m_3__1), .m_3__0 (m_3__0), .m_2__15 (
                m_2__15), .m_2__14 (m_2__14), .m_2__13 (m_2__13), .m_2__12 (
                m_2__12), .m_2__11 (m_2__11), .m_2__10 (m_2__10), .m_2__9 (
                m_2__9), .m_2__8 (m_2__8), .m_2__7 (m_2__7), .m_2__6 (m_2__6), .m_2__5 (
                m_2__5), .m_2__4 (m_2__4), .m_2__3 (m_2__3), .m_2__2 (m_2__2), .m_2__1 (
                m_2__1), .m_2__0 (m_2__0), .m_1__15 (m_1__15), .m_1__14 (m_1__14
                ), .m_1__13 (m_1__13), .m_1__12 (m_1__12), .m_1__11 (m_1__11), .m_1__10 (
                m_1__10), .m_1__9 (m_1__9), .m_1__8 (m_1__8), .m_1__7 (m_1__7), 
                .m_1__6 (m_1__6), .m_1__5 (m_1__5), .m_1__4 (m_1__4), .m_1__3 (
                m_1__3), .m_1__2 (m_1__2), .m_1__1 (m_1__1), .m_1__0 (m_1__0), .m_0__15 (
                m_0__15), .m_0__14 (m_0__14), .m_0__13 (m_0__13), .m_0__12 (
                m_0__12), .m_0__11 (m_0__11), .m_0__10 (m_0__10), .m_0__9 (
                m_0__9), .m_0__8 (m_0__8), .m_0__7 (m_0__7), .m_0__6 (m_0__6), .m_0__5 (
                m_0__5), .m_0__4 (m_0__4), .m_0__3 (m_0__3), .m_0__2 (m_0__2), .m_0__1 (
                m_0__1), .m_0__0 (m_0__0), .f_9__15 (mulOut_9__15), .f_9__14 (
                mulOut_9__14), .f_9__13 (mulOut_9__13), .f_9__12 (mulOut_9__12)
                , .f_9__11 (mulOut_9__11), .f_9__10 (mulOut_9__10), .f_9__9 (
                mulOut_9__9), .f_9__8 (mulOut_9__8), .f_9__7 (mulOut_9__7), .f_9__6 (
                mulOut_9__6), .f_9__5 (mulOut_9__5), .f_9__4 (mulOut_9__4), .f_9__3 (
                mulOut_9__3), .f_9__2 (mulOut_9__2), .f_9__1 (mulOut_9__1), .f_9__0 (
                mulOut_9__0), .f_8__15 (mulOut_8__15), .f_8__14 (mulOut_8__14), 
                .f_8__13 (mulOut_8__13), .f_8__12 (mulOut_8__12), .f_8__11 (
                mulOut_8__11), .f_8__10 (mulOut_8__10), .f_8__9 (mulOut_8__9), .f_8__8 (
                mulOut_8__8), .f_8__7 (mulOut_8__7), .f_8__6 (mulOut_8__6), .f_8__5 (
                mulOut_8__5), .f_8__4 (mulOut_8__4), .f_8__3 (mulOut_8__3), .f_8__2 (
                mulOut_8__2), .f_8__1 (mulOut_8__1), .f_8__0 (mulOut_8__0), .f_7__15 (
                mulOut_7__15), .f_7__14 (mulOut_7__14), .f_7__13 (mulOut_7__13)
                , .f_7__12 (mulOut_7__12), .f_7__11 (mulOut_7__11), .f_7__10 (
                mulOut_7__10), .f_7__9 (mulOut_7__9), .f_7__8 (mulOut_7__8), .f_7__7 (
                mulOut_7__7), .f_7__6 (mulOut_7__6), .f_7__5 (mulOut_7__5), .f_7__4 (
                mulOut_7__4), .f_7__3 (mulOut_7__3), .f_7__2 (mulOut_7__2), .f_7__1 (
                mulOut_7__1), .f_7__0 (mulOut_7__0), .f_6__15 (mulOut_6__15), .f_6__14 (
                mulOut_6__14), .f_6__13 (mulOut_6__13), .f_6__12 (mulOut_6__12)
                , .f_6__11 (mulOut_6__11), .f_6__10 (mulOut_6__10), .f_6__9 (
                mulOut_6__9), .f_6__8 (mulOut_6__8), .f_6__7 (mulOut_6__7), .f_6__6 (
                mulOut_6__6), .f_6__5 (mulOut_6__5), .f_6__4 (mulOut_6__4), .f_6__3 (
                mulOut_6__3), .f_6__2 (mulOut_6__2), .f_6__1 (mulOut_6__1), .f_6__0 (
                mulOut_6__0), .f_5__15 (mulOut_5__15), .f_5__14 (mulOut_5__14), 
                .f_5__13 (mulOut_5__13), .f_5__12 (mulOut_5__12), .f_5__11 (
                mulOut_5__11), .f_5__10 (mulOut_5__10), .f_5__9 (mulOut_5__9), .f_5__8 (
                mulOut_5__8), .f_5__7 (mulOut_5__7), .f_5__6 (mulOut_5__6), .f_5__5 (
                mulOut_5__5), .f_5__4 (mulOut_5__4), .f_5__3 (mulOut_5__3), .f_5__2 (
                mulOut_5__2), .f_5__1 (mulOut_5__1), .f_5__0 (mulOut_5__0), .f_4__15 (
                mulOut_4__15), .f_4__14 (mulOut_4__14), .f_4__13 (mulOut_4__13)
                , .f_4__12 (mulOut_4__12), .f_4__11 (mulOut_4__11), .f_4__10 (
                mulOut_4__10), .f_4__9 (mulOut_4__9), .f_4__8 (mulOut_4__8), .f_4__7 (
                mulOut_4__7), .f_4__6 (mulOut_4__6), .f_4__5 (mulOut_4__5), .f_4__4 (
                mulOut_4__4), .f_4__3 (mulOut_4__3), .f_4__2 (mulOut_4__2), .f_4__1 (
                mulOut_4__1), .f_4__0 (mulOut_4__0), .f_3__15 (mulOut_3__15), .f_3__14 (
                mulOut_3__14), .f_3__13 (mulOut_3__13), .f_3__12 (mulOut_3__12)
                , .f_3__11 (mulOut_3__11), .f_3__10 (mulOut_3__10), .f_3__9 (
                mulOut_3__9), .f_3__8 (mulOut_3__8), .f_3__7 (mulOut_3__7), .f_3__6 (
                mulOut_3__6), .f_3__5 (mulOut_3__5), .f_3__4 (mulOut_3__4), .f_3__3 (
                mulOut_3__3), .f_3__2 (mulOut_3__2), .f_3__1 (mulOut_3__1), .f_3__0 (
                mulOut_3__0), .f_2__15 (mulOut_2__15), .f_2__14 (mulOut_2__14), 
                .f_2__13 (mulOut_2__13), .f_2__12 (mulOut_2__12), .f_2__11 (
                mulOut_2__11), .f_2__10 (mulOut_2__10), .f_2__9 (mulOut_2__9), .f_2__8 (
                mulOut_2__8), .f_2__7 (mulOut_2__7), .f_2__6 (mulOut_2__6), .f_2__5 (
                mulOut_2__5), .f_2__4 (mulOut_2__4), .f_2__3 (mulOut_2__3), .f_2__2 (
                mulOut_2__2), .f_2__1 (mulOut_2__1), .f_2__0 (mulOut_2__0), .f_1__15 (
                mulOut_1__15), .f_1__14 (mulOut_1__14), .f_1__13 (mulOut_1__13)
                , .f_1__12 (mulOut_1__12), .f_1__11 (mulOut_1__11), .f_1__10 (
                mulOut_1__10), .f_1__9 (mulOut_1__9), .f_1__8 (mulOut_1__8), .f_1__7 (
                mulOut_1__7), .f_1__6 (mulOut_1__6), .f_1__5 (mulOut_1__5), .f_1__4 (
                mulOut_1__4), .f_1__3 (mulOut_1__3), .f_1__2 (mulOut_1__2), .f_1__1 (
                mulOut_1__1), .f_1__0 (mulOut_1__0), .f_0__15 (mulOut_0__15), .f_0__14 (
                mulOut_0__14), .f_0__13 (mulOut_0__13), .f_0__12 (mulOut_0__12)
                , .f_0__11 (mulOut_0__11), .f_0__10 (mulOut_0__10), .f_0__9 (
                mulOut_0__9), .f_0__8 (mulOut_0__8), .f_0__7 (mulOut_0__7), .f_0__6 (
                mulOut_0__6), .f_0__5 (mulOut_0__5), .f_0__4 (mulOut_0__4), .f_0__3 (
                mulOut_0__3), .f_0__2 (mulOut_0__2), .f_0__1 (mulOut_0__1), .f_0__0 (
                mulOut_0__0), .clk (clk), .start (start), .rst (rst), .done (
                done), .working (working)) ;
    Accumulator_10 cmp2 (.a_9__15 (mulOut_9__15), .a_9__14 (mulOut_9__14), .a_9__13 (
                   mulOut_9__13), .a_9__12 (mulOut_9__12), .a_9__11 (
                   mulOut_9__11), .a_9__10 (mulOut_9__10), .a_9__9 (mulOut_9__9)
                   , .a_9__8 (mulOut_9__8), .a_9__7 (mulOut_9__7), .a_9__6 (
                   mulOut_9__6), .a_9__5 (mulOut_9__5), .a_9__4 (mulOut_9__4), .a_9__3 (
                   mulOut_9__3), .a_9__2 (mulOut_9__2), .a_9__1 (mulOut_9__1), .a_9__0 (
                   mulOut_9__0), .a_8__15 (mulOut_8__15), .a_8__14 (mulOut_8__14
                   ), .a_8__13 (mulOut_8__13), .a_8__12 (mulOut_8__12), .a_8__11 (
                   mulOut_8__11), .a_8__10 (mulOut_8__10), .a_8__9 (mulOut_8__9)
                   , .a_8__8 (mulOut_8__8), .a_8__7 (mulOut_8__7), .a_8__6 (
                   mulOut_8__6), .a_8__5 (mulOut_8__5), .a_8__4 (mulOut_8__4), .a_8__3 (
                   mulOut_8__3), .a_8__2 (mulOut_8__2), .a_8__1 (mulOut_8__1), .a_8__0 (
                   mulOut_8__0), .a_7__15 (mulOut_7__15), .a_7__14 (mulOut_7__14
                   ), .a_7__13 (mulOut_7__13), .a_7__12 (mulOut_7__12), .a_7__11 (
                   mulOut_7__11), .a_7__10 (mulOut_7__10), .a_7__9 (mulOut_7__9)
                   , .a_7__8 (mulOut_7__8), .a_7__7 (mulOut_7__7), .a_7__6 (
                   mulOut_7__6), .a_7__5 (mulOut_7__5), .a_7__4 (mulOut_7__4), .a_7__3 (
                   mulOut_7__3), .a_7__2 (mulOut_7__2), .a_7__1 (mulOut_7__1), .a_7__0 (
                   mulOut_7__0), .a_6__15 (mulOut_6__15), .a_6__14 (mulOut_6__14
                   ), .a_6__13 (mulOut_6__13), .a_6__12 (mulOut_6__12), .a_6__11 (
                   mulOut_6__11), .a_6__10 (mulOut_6__10), .a_6__9 (mulOut_6__9)
                   , .a_6__8 (mulOut_6__8), .a_6__7 (mulOut_6__7), .a_6__6 (
                   mulOut_6__6), .a_6__5 (mulOut_6__5), .a_6__4 (mulOut_6__4), .a_6__3 (
                   mulOut_6__3), .a_6__2 (mulOut_6__2), .a_6__1 (mulOut_6__1), .a_6__0 (
                   mulOut_6__0), .a_5__15 (mulOut_5__15), .a_5__14 (mulOut_5__14
                   ), .a_5__13 (mulOut_5__13), .a_5__12 (mulOut_5__12), .a_5__11 (
                   mulOut_5__11), .a_5__10 (mulOut_5__10), .a_5__9 (mulOut_5__9)
                   , .a_5__8 (mulOut_5__8), .a_5__7 (mulOut_5__7), .a_5__6 (
                   mulOut_5__6), .a_5__5 (mulOut_5__5), .a_5__4 (mulOut_5__4), .a_5__3 (
                   mulOut_5__3), .a_5__2 (mulOut_5__2), .a_5__1 (mulOut_5__1), .a_5__0 (
                   mulOut_5__0), .a_4__15 (mulOut_4__15), .a_4__14 (mulOut_4__14
                   ), .a_4__13 (mulOut_4__13), .a_4__12 (mulOut_4__12), .a_4__11 (
                   mulOut_4__11), .a_4__10 (mulOut_4__10), .a_4__9 (mulOut_4__9)
                   , .a_4__8 (mulOut_4__8), .a_4__7 (mulOut_4__7), .a_4__6 (
                   mulOut_4__6), .a_4__5 (mulOut_4__5), .a_4__4 (mulOut_4__4), .a_4__3 (
                   mulOut_4__3), .a_4__2 (mulOut_4__2), .a_4__1 (mulOut_4__1), .a_4__0 (
                   mulOut_4__0), .a_3__15 (mulOut_3__15), .a_3__14 (mulOut_3__14
                   ), .a_3__13 (mulOut_3__13), .a_3__12 (mulOut_3__12), .a_3__11 (
                   mulOut_3__11), .a_3__10 (mulOut_3__10), .a_3__9 (mulOut_3__9)
                   , .a_3__8 (mulOut_3__8), .a_3__7 (mulOut_3__7), .a_3__6 (
                   mulOut_3__6), .a_3__5 (mulOut_3__5), .a_3__4 (mulOut_3__4), .a_3__3 (
                   mulOut_3__3), .a_3__2 (mulOut_3__2), .a_3__1 (mulOut_3__1), .a_3__0 (
                   mulOut_3__0), .a_2__15 (mulOut_2__15), .a_2__14 (mulOut_2__14
                   ), .a_2__13 (mulOut_2__13), .a_2__12 (mulOut_2__12), .a_2__11 (
                   mulOut_2__11), .a_2__10 (mulOut_2__10), .a_2__9 (mulOut_2__9)
                   , .a_2__8 (mulOut_2__8), .a_2__7 (mulOut_2__7), .a_2__6 (
                   mulOut_2__6), .a_2__5 (mulOut_2__5), .a_2__4 (mulOut_2__4), .a_2__3 (
                   mulOut_2__3), .a_2__2 (mulOut_2__2), .a_2__1 (mulOut_2__1), .a_2__0 (
                   mulOut_2__0), .a_1__15 (mulOut_1__15), .a_1__14 (mulOut_1__14
                   ), .a_1__13 (mulOut_1__13), .a_1__12 (mulOut_1__12), .a_1__11 (
                   mulOut_1__11), .a_1__10 (mulOut_1__10), .a_1__9 (mulOut_1__9)
                   , .a_1__8 (mulOut_1__8), .a_1__7 (mulOut_1__7), .a_1__6 (
                   mulOut_1__6), .a_1__5 (mulOut_1__5), .a_1__4 (mulOut_1__4), .a_1__3 (
                   mulOut_1__3), .a_1__2 (mulOut_1__2), .a_1__1 (mulOut_1__1), .a_1__0 (
                   mulOut_1__0), .a_0__15 (mulOut_0__15), .a_0__14 (mulOut_0__14
                   ), .a_0__13 (mulOut_0__13), .a_0__12 (mulOut_0__12), .a_0__11 (
                   mulOut_0__11), .a_0__10 (mulOut_0__10), .a_0__9 (mulOut_0__9)
                   , .a_0__8 (mulOut_0__8), .a_0__7 (mulOut_0__7), .a_0__6 (
                   mulOut_0__6), .a_0__5 (mulOut_0__5), .a_0__4 (mulOut_0__4), .a_0__3 (
                   mulOut_0__3), .a_0__2 (mulOut_0__2), .a_0__1 (mulOut_0__1), .a_0__0 (
                   mulOut_0__0), .f_9__15 (f_9__15), .f_9__14 (f_9__14), .f_9__13 (
                   f_9__13), .f_9__12 (f_9__12), .f_9__11 (f_9__11), .f_9__10 (
                   f_9__10), .f_9__9 (f_9__9), .f_9__8 (f_9__8), .f_9__7 (f_9__7
                   ), .f_9__6 (f_9__6), .f_9__5 (f_9__5), .f_9__4 (f_9__4), .f_9__3 (
                   f_9__3), .f_9__2 (f_9__2), .f_9__1 (f_9__1), .f_9__0 (f_9__0)
                   , .f_8__15 (f_8__15), .f_8__14 (f_8__14), .f_8__13 (f_8__13)
                   , .f_8__12 (f_8__12), .f_8__11 (f_8__11), .f_8__10 (f_8__10)
                   , .f_8__9 (f_8__9), .f_8__8 (f_8__8), .f_8__7 (f_8__7), .f_8__6 (
                   f_8__6), .f_8__5 (f_8__5), .f_8__4 (f_8__4), .f_8__3 (f_8__3)
                   , .f_8__2 (f_8__2), .f_8__1 (f_8__1), .f_8__0 (f_8__0), .f_7__15 (
                   f_7__15), .f_7__14 (f_7__14), .f_7__13 (f_7__13), .f_7__12 (
                   f_7__12), .f_7__11 (f_7__11), .f_7__10 (f_7__10), .f_7__9 (
                   f_7__9), .f_7__8 (f_7__8), .f_7__7 (f_7__7), .f_7__6 (f_7__6)
                   , .f_7__5 (f_7__5), .f_7__4 (f_7__4), .f_7__3 (f_7__3), .f_7__2 (
                   f_7__2), .f_7__1 (f_7__1), .f_7__0 (f_7__0), .f_6__15 (
                   f_6__15), .f_6__14 (f_6__14), .f_6__13 (f_6__13), .f_6__12 (
                   f_6__12), .f_6__11 (f_6__11), .f_6__10 (f_6__10), .f_6__9 (
                   f_6__9), .f_6__8 (f_6__8), .f_6__7 (f_6__7), .f_6__6 (f_6__6)
                   , .f_6__5 (f_6__5), .f_6__4 (f_6__4), .f_6__3 (f_6__3), .f_6__2 (
                   f_6__2), .f_6__1 (f_6__1), .f_6__0 (f_6__0), .f_5__15 (
                   f_5__15), .f_5__14 (f_5__14), .f_5__13 (f_5__13), .f_5__12 (
                   f_5__12), .f_5__11 (f_5__11), .f_5__10 (f_5__10), .f_5__9 (
                   f_5__9), .f_5__8 (f_5__8), .f_5__7 (f_5__7), .f_5__6 (f_5__6)
                   , .f_5__5 (f_5__5), .f_5__4 (f_5__4), .f_5__3 (f_5__3), .f_5__2 (
                   f_5__2), .f_5__1 (f_5__1), .f_5__0 (f_5__0), .f_4__15 (
                   f_4__15), .f_4__14 (f_4__14), .f_4__13 (f_4__13), .f_4__12 (
                   f_4__12), .f_4__11 (f_4__11), .f_4__10 (f_4__10), .f_4__9 (
                   f_4__9), .f_4__8 (f_4__8), .f_4__7 (f_4__7), .f_4__6 (f_4__6)
                   , .f_4__5 (f_4__5), .f_4__4 (f_4__4), .f_4__3 (f_4__3), .f_4__2 (
                   f_4__2), .f_4__1 (f_4__1), .f_4__0 (f_4__0), .f_3__15 (
                   f_3__15), .f_3__14 (f_3__14), .f_3__13 (f_3__13), .f_3__12 (
                   f_3__12), .f_3__11 (f_3__11), .f_3__10 (f_3__10), .f_3__9 (
                   f_3__9), .f_3__8 (f_3__8), .f_3__7 (f_3__7), .f_3__6 (f_3__6)
                   , .f_3__5 (f_3__5), .f_3__4 (f_3__4), .f_3__3 (f_3__3), .f_3__2 (
                   f_3__2), .f_3__1 (f_3__1), .f_3__0 (f_3__0), .f_2__15 (
                   f_2__15), .f_2__14 (f_2__14), .f_2__13 (f_2__13), .f_2__12 (
                   f_2__12), .f_2__11 (f_2__11), .f_2__10 (f_2__10), .f_2__9 (
                   f_2__9), .f_2__8 (f_2__8), .f_2__7 (f_2__7), .f_2__6 (f_2__6)
                   , .f_2__5 (f_2__5), .f_2__4 (f_2__4), .f_2__3 (f_2__3), .f_2__2 (
                   f_2__2), .f_2__1 (f_2__1), .f_2__0 (f_2__0), .f_1__15 (
                   f_1__15), .f_1__14 (f_1__14), .f_1__13 (f_1__13), .f_1__12 (
                   f_1__12), .f_1__11 (f_1__11), .f_1__10 (f_1__10), .f_1__9 (
                   f_1__9), .f_1__8 (f_1__8), .f_1__7 (f_1__7), .f_1__6 (f_1__6)
                   , .f_1__5 (f_1__5), .f_1__4 (f_1__4), .f_1__3 (f_1__3), .f_1__2 (
                   f_1__2), .f_1__1 (f_1__1), .f_1__0 (f_1__0), .f_0__15 (
                   f_0__15), .f_0__14 (f_0__14), .f_0__13 (f_0__13), .f_0__12 (
                   f_0__12), .f_0__11 (f_0__11), .f_0__10 (f_0__10), .f_0__9 (
                   f_0__9), .f_0__8 (f_0__8), .f_0__7 (f_0__7), .f_0__6 (f_0__6)
                   , .f_0__5 (f_0__5), .f_0__4 (f_0__4), .f_0__3 (f_0__3), .f_0__2 (
                   f_0__2), .f_0__1 (f_0__1), .f_0__0 (f_0__0), .save (working)
                   , .rst (rst)) ;
endmodule


module Accumulator_10 ( a_9__15, a_9__14, a_9__13, a_9__12, a_9__11, a_9__10, 
                        a_9__9, a_9__8, a_9__7, a_9__6, a_9__5, a_9__4, a_9__3, 
                        a_9__2, a_9__1, a_9__0, a_8__15, a_8__14, a_8__13, 
                        a_8__12, a_8__11, a_8__10, a_8__9, a_8__8, a_8__7, 
                        a_8__6, a_8__5, a_8__4, a_8__3, a_8__2, a_8__1, a_8__0, 
                        a_7__15, a_7__14, a_7__13, a_7__12, a_7__11, a_7__10, 
                        a_7__9, a_7__8, a_7__7, a_7__6, a_7__5, a_7__4, a_7__3, 
                        a_7__2, a_7__1, a_7__0, a_6__15, a_6__14, a_6__13, 
                        a_6__12, a_6__11, a_6__10, a_6__9, a_6__8, a_6__7, 
                        a_6__6, a_6__5, a_6__4, a_6__3, a_6__2, a_6__1, a_6__0, 
                        a_5__15, a_5__14, a_5__13, a_5__12, a_5__11, a_5__10, 
                        a_5__9, a_5__8, a_5__7, a_5__6, a_5__5, a_5__4, a_5__3, 
                        a_5__2, a_5__1, a_5__0, a_4__15, a_4__14, a_4__13, 
                        a_4__12, a_4__11, a_4__10, a_4__9, a_4__8, a_4__7, 
                        a_4__6, a_4__5, a_4__4, a_4__3, a_4__2, a_4__1, a_4__0, 
                        a_3__15, a_3__14, a_3__13, a_3__12, a_3__11, a_3__10, 
                        a_3__9, a_3__8, a_3__7, a_3__6, a_3__5, a_3__4, a_3__3, 
                        a_3__2, a_3__1, a_3__0, a_2__15, a_2__14, a_2__13, 
                        a_2__12, a_2__11, a_2__10, a_2__9, a_2__8, a_2__7, 
                        a_2__6, a_2__5, a_2__4, a_2__3, a_2__2, a_2__1, a_2__0, 
                        a_1__15, a_1__14, a_1__13, a_1__12, a_1__11, a_1__10, 
                        a_1__9, a_1__8, a_1__7, a_1__6, a_1__5, a_1__4, a_1__3, 
                        a_1__2, a_1__1, a_1__0, a_0__15, a_0__14, a_0__13, 
                        a_0__12, a_0__11, a_0__10, a_0__9, a_0__8, a_0__7, 
                        a_0__6, a_0__5, a_0__4, a_0__3, a_0__2, a_0__1, a_0__0, 
                        f_9__15, f_9__14, f_9__13, f_9__12, f_9__11, f_9__10, 
                        f_9__9, f_9__8, f_9__7, f_9__6, f_9__5, f_9__4, f_9__3, 
                        f_9__2, f_9__1, f_9__0, f_8__15, f_8__14, f_8__13, 
                        f_8__12, f_8__11, f_8__10, f_8__9, f_8__8, f_8__7, 
                        f_8__6, f_8__5, f_8__4, f_8__3, f_8__2, f_8__1, f_8__0, 
                        f_7__15, f_7__14, f_7__13, f_7__12, f_7__11, f_7__10, 
                        f_7__9, f_7__8, f_7__7, f_7__6, f_7__5, f_7__4, f_7__3, 
                        f_7__2, f_7__1, f_7__0, f_6__15, f_6__14, f_6__13, 
                        f_6__12, f_6__11, f_6__10, f_6__9, f_6__8, f_6__7, 
                        f_6__6, f_6__5, f_6__4, f_6__3, f_6__2, f_6__1, f_6__0, 
                        f_5__15, f_5__14, f_5__13, f_5__12, f_5__11, f_5__10, 
                        f_5__9, f_5__8, f_5__7, f_5__6, f_5__5, f_5__4, f_5__3, 
                        f_5__2, f_5__1, f_5__0, f_4__15, f_4__14, f_4__13, 
                        f_4__12, f_4__11, f_4__10, f_4__9, f_4__8, f_4__7, 
                        f_4__6, f_4__5, f_4__4, f_4__3, f_4__2, f_4__1, f_4__0, 
                        f_3__15, f_3__14, f_3__13, f_3__12, f_3__11, f_3__10, 
                        f_3__9, f_3__8, f_3__7, f_3__6, f_3__5, f_3__4, f_3__3, 
                        f_3__2, f_3__1, f_3__0, f_2__15, f_2__14, f_2__13, 
                        f_2__12, f_2__11, f_2__10, f_2__9, f_2__8, f_2__7, 
                        f_2__6, f_2__5, f_2__4, f_2__3, f_2__2, f_2__1, f_2__0, 
                        f_1__15, f_1__14, f_1__13, f_1__12, f_1__11, f_1__10, 
                        f_1__9, f_1__8, f_1__7, f_1__6, f_1__5, f_1__4, f_1__3, 
                        f_1__2, f_1__1, f_1__0, f_0__15, f_0__14, f_0__13, 
                        f_0__12, f_0__11, f_0__10, f_0__9, f_0__8, f_0__7, 
                        f_0__6, f_0__5, f_0__4, f_0__3, f_0__2, f_0__1, f_0__0, 
                        save, rst ) ;

    input a_9__15 ;
    input a_9__14 ;
    input a_9__13 ;
    input a_9__12 ;
    input a_9__11 ;
    input a_9__10 ;
    input a_9__9 ;
    input a_9__8 ;
    input a_9__7 ;
    input a_9__6 ;
    input a_9__5 ;
    input a_9__4 ;
    input a_9__3 ;
    input a_9__2 ;
    input a_9__1 ;
    input a_9__0 ;
    input a_8__15 ;
    input a_8__14 ;
    input a_8__13 ;
    input a_8__12 ;
    input a_8__11 ;
    input a_8__10 ;
    input a_8__9 ;
    input a_8__8 ;
    input a_8__7 ;
    input a_8__6 ;
    input a_8__5 ;
    input a_8__4 ;
    input a_8__3 ;
    input a_8__2 ;
    input a_8__1 ;
    input a_8__0 ;
    input a_7__15 ;
    input a_7__14 ;
    input a_7__13 ;
    input a_7__12 ;
    input a_7__11 ;
    input a_7__10 ;
    input a_7__9 ;
    input a_7__8 ;
    input a_7__7 ;
    input a_7__6 ;
    input a_7__5 ;
    input a_7__4 ;
    input a_7__3 ;
    input a_7__2 ;
    input a_7__1 ;
    input a_7__0 ;
    input a_6__15 ;
    input a_6__14 ;
    input a_6__13 ;
    input a_6__12 ;
    input a_6__11 ;
    input a_6__10 ;
    input a_6__9 ;
    input a_6__8 ;
    input a_6__7 ;
    input a_6__6 ;
    input a_6__5 ;
    input a_6__4 ;
    input a_6__3 ;
    input a_6__2 ;
    input a_6__1 ;
    input a_6__0 ;
    input a_5__15 ;
    input a_5__14 ;
    input a_5__13 ;
    input a_5__12 ;
    input a_5__11 ;
    input a_5__10 ;
    input a_5__9 ;
    input a_5__8 ;
    input a_5__7 ;
    input a_5__6 ;
    input a_5__5 ;
    input a_5__4 ;
    input a_5__3 ;
    input a_5__2 ;
    input a_5__1 ;
    input a_5__0 ;
    input a_4__15 ;
    input a_4__14 ;
    input a_4__13 ;
    input a_4__12 ;
    input a_4__11 ;
    input a_4__10 ;
    input a_4__9 ;
    input a_4__8 ;
    input a_4__7 ;
    input a_4__6 ;
    input a_4__5 ;
    input a_4__4 ;
    input a_4__3 ;
    input a_4__2 ;
    input a_4__1 ;
    input a_4__0 ;
    input a_3__15 ;
    input a_3__14 ;
    input a_3__13 ;
    input a_3__12 ;
    input a_3__11 ;
    input a_3__10 ;
    input a_3__9 ;
    input a_3__8 ;
    input a_3__7 ;
    input a_3__6 ;
    input a_3__5 ;
    input a_3__4 ;
    input a_3__3 ;
    input a_3__2 ;
    input a_3__1 ;
    input a_3__0 ;
    input a_2__15 ;
    input a_2__14 ;
    input a_2__13 ;
    input a_2__12 ;
    input a_2__11 ;
    input a_2__10 ;
    input a_2__9 ;
    input a_2__8 ;
    input a_2__7 ;
    input a_2__6 ;
    input a_2__5 ;
    input a_2__4 ;
    input a_2__3 ;
    input a_2__2 ;
    input a_2__1 ;
    input a_2__0 ;
    input a_1__15 ;
    input a_1__14 ;
    input a_1__13 ;
    input a_1__12 ;
    input a_1__11 ;
    input a_1__10 ;
    input a_1__9 ;
    input a_1__8 ;
    input a_1__7 ;
    input a_1__6 ;
    input a_1__5 ;
    input a_1__4 ;
    input a_1__3 ;
    input a_1__2 ;
    input a_1__1 ;
    input a_1__0 ;
    input a_0__15 ;
    input a_0__14 ;
    input a_0__13 ;
    input a_0__12 ;
    input a_0__11 ;
    input a_0__10 ;
    input a_0__9 ;
    input a_0__8 ;
    input a_0__7 ;
    input a_0__6 ;
    input a_0__5 ;
    input a_0__4 ;
    input a_0__3 ;
    input a_0__2 ;
    input a_0__1 ;
    input a_0__0 ;
    inout f_9__15 ;
    inout f_9__14 ;
    inout f_9__13 ;
    inout f_9__12 ;
    inout f_9__11 ;
    inout f_9__10 ;
    inout f_9__9 ;
    inout f_9__8 ;
    inout f_9__7 ;
    inout f_9__6 ;
    inout f_9__5 ;
    inout f_9__4 ;
    inout f_9__3 ;
    inout f_9__2 ;
    inout f_9__1 ;
    inout f_9__0 ;
    inout f_8__15 ;
    inout f_8__14 ;
    inout f_8__13 ;
    inout f_8__12 ;
    inout f_8__11 ;
    inout f_8__10 ;
    inout f_8__9 ;
    inout f_8__8 ;
    inout f_8__7 ;
    inout f_8__6 ;
    inout f_8__5 ;
    inout f_8__4 ;
    inout f_8__3 ;
    inout f_8__2 ;
    inout f_8__1 ;
    inout f_8__0 ;
    inout f_7__15 ;
    inout f_7__14 ;
    inout f_7__13 ;
    inout f_7__12 ;
    inout f_7__11 ;
    inout f_7__10 ;
    inout f_7__9 ;
    inout f_7__8 ;
    inout f_7__7 ;
    inout f_7__6 ;
    inout f_7__5 ;
    inout f_7__4 ;
    inout f_7__3 ;
    inout f_7__2 ;
    inout f_7__1 ;
    inout f_7__0 ;
    inout f_6__15 ;
    inout f_6__14 ;
    inout f_6__13 ;
    inout f_6__12 ;
    inout f_6__11 ;
    inout f_6__10 ;
    inout f_6__9 ;
    inout f_6__8 ;
    inout f_6__7 ;
    inout f_6__6 ;
    inout f_6__5 ;
    inout f_6__4 ;
    inout f_6__3 ;
    inout f_6__2 ;
    inout f_6__1 ;
    inout f_6__0 ;
    inout f_5__15 ;
    inout f_5__14 ;
    inout f_5__13 ;
    inout f_5__12 ;
    inout f_5__11 ;
    inout f_5__10 ;
    inout f_5__9 ;
    inout f_5__8 ;
    inout f_5__7 ;
    inout f_5__6 ;
    inout f_5__5 ;
    inout f_5__4 ;
    inout f_5__3 ;
    inout f_5__2 ;
    inout f_5__1 ;
    inout f_5__0 ;
    inout f_4__15 ;
    inout f_4__14 ;
    inout f_4__13 ;
    inout f_4__12 ;
    inout f_4__11 ;
    inout f_4__10 ;
    inout f_4__9 ;
    inout f_4__8 ;
    inout f_4__7 ;
    inout f_4__6 ;
    inout f_4__5 ;
    inout f_4__4 ;
    inout f_4__3 ;
    inout f_4__2 ;
    inout f_4__1 ;
    inout f_4__0 ;
    inout f_3__15 ;
    inout f_3__14 ;
    inout f_3__13 ;
    inout f_3__12 ;
    inout f_3__11 ;
    inout f_3__10 ;
    inout f_3__9 ;
    inout f_3__8 ;
    inout f_3__7 ;
    inout f_3__6 ;
    inout f_3__5 ;
    inout f_3__4 ;
    inout f_3__3 ;
    inout f_3__2 ;
    inout f_3__1 ;
    inout f_3__0 ;
    inout f_2__15 ;
    inout f_2__14 ;
    inout f_2__13 ;
    inout f_2__12 ;
    inout f_2__11 ;
    inout f_2__10 ;
    inout f_2__9 ;
    inout f_2__8 ;
    inout f_2__7 ;
    inout f_2__6 ;
    inout f_2__5 ;
    inout f_2__4 ;
    inout f_2__3 ;
    inout f_2__2 ;
    inout f_2__1 ;
    inout f_2__0 ;
    inout f_1__15 ;
    inout f_1__14 ;
    inout f_1__13 ;
    inout f_1__12 ;
    inout f_1__11 ;
    inout f_1__10 ;
    inout f_1__9 ;
    inout f_1__8 ;
    inout f_1__7 ;
    inout f_1__6 ;
    inout f_1__5 ;
    inout f_1__4 ;
    inout f_1__3 ;
    inout f_1__2 ;
    inout f_1__1 ;
    inout f_1__0 ;
    inout f_0__15 ;
    inout f_0__14 ;
    inout f_0__13 ;
    inout f_0__12 ;
    inout f_0__11 ;
    inout f_0__10 ;
    inout f_0__9 ;
    inout f_0__8 ;
    inout f_0__7 ;
    inout f_0__6 ;
    inout f_0__5 ;
    inout f_0__4 ;
    inout f_0__3 ;
    inout f_0__2 ;
    inout f_0__1 ;
    inout f_0__0 ;
    input save ;
    input rst ;

    wire outReg_9__15, outReg_9__14, outReg_9__13, outReg_9__12, outReg_9__11, 
         outReg_9__10, outReg_9__9, outReg_9__8, outReg_9__7, outReg_9__6, 
         outReg_9__5, outReg_9__4, outReg_9__3, outReg_9__2, outReg_9__1, 
         outReg_9__0, outReg_8__15, outReg_8__14, outReg_8__13, outReg_8__12, 
         outReg_8__11, outReg_8__10, outReg_8__9, outReg_8__8, outReg_8__7, 
         outReg_8__6, outReg_8__5, outReg_8__4, outReg_8__3, outReg_8__2, 
         outReg_8__1, outReg_8__0, outReg_7__15, outReg_7__14, outReg_7__13, 
         outReg_7__12, outReg_7__11, outReg_7__10, outReg_7__9, outReg_7__8, 
         outReg_7__7, outReg_7__6, outReg_7__5, outReg_7__4, outReg_7__3, 
         outReg_7__2, outReg_7__1, outReg_7__0, outReg_6__15, outReg_6__14, 
         outReg_6__13, outReg_6__12, outReg_6__11, outReg_6__10, outReg_6__9, 
         outReg_6__8, outReg_6__7, outReg_6__6, outReg_6__5, outReg_6__4, 
         outReg_6__3, outReg_6__2, outReg_6__1, outReg_6__0, outReg_5__15, 
         outReg_5__14, outReg_5__13, outReg_5__12, outReg_5__11, outReg_5__10, 
         outReg_5__9, outReg_5__8, outReg_5__7, outReg_5__6, outReg_5__5, 
         outReg_5__4, outReg_5__3, outReg_5__2, outReg_5__1, outReg_5__0, 
         outReg_4__15, outReg_4__14, outReg_4__13, outReg_4__12, outReg_4__11, 
         outReg_4__10, outReg_4__9, outReg_4__8, outReg_4__7, outReg_4__6, 
         outReg_4__5, outReg_4__4, outReg_4__3, outReg_4__2, outReg_4__1, 
         outReg_4__0, outReg_3__15, outReg_3__14, outReg_3__13, outReg_3__12, 
         outReg_3__11, outReg_3__10, outReg_3__9, outReg_3__8, outReg_3__7, 
         outReg_3__6, outReg_3__5, outReg_3__4, outReg_3__3, outReg_3__2, 
         outReg_3__1, outReg_3__0, outReg_2__15, outReg_2__14, outReg_2__13, 
         outReg_2__12, outReg_2__11, outReg_2__10, outReg_2__9, outReg_2__8, 
         outReg_2__7, outReg_2__6, outReg_2__5, outReg_2__4, outReg_2__3, 
         outReg_2__2, outReg_2__1, outReg_2__0, outReg_1__15, outReg_1__14, 
         outReg_1__13, outReg_1__12, outReg_1__11, outReg_1__10, outReg_1__9, 
         outReg_1__8, outReg_1__7, outReg_1__6, outReg_1__5, outReg_1__4, 
         outReg_1__3, outReg_1__2, outReg_1__1, outReg_1__0, outReg_0__15, 
         outReg_0__14, outReg_0__13, outReg_0__12, outReg_0__11, outReg_0__10, 
         outReg_0__9, outReg_0__8, outReg_0__7, outReg_0__6, outReg_0__5, 
         outReg_0__4, outReg_0__3, outReg_0__2, outReg_0__1, outReg_0__0, PWR, 
         GND, nx947, nx949, nx951, nx953, nx1129, nx1131, nx1133, nx1135, nx1137, 
         nx1139, nx1141, nx1143;
    wire [169:0] \$dummy ;




    NBitAdder_16 gen_9_cmp1 (.a ({a_9__15,a_9__14,a_9__13,a_9__12,a_9__11,
                 a_9__10,a_9__9,a_9__8,a_9__7,a_9__6,a_9__5,a_9__4,a_9__3,a_9__2
                 ,a_9__1,a_9__0}), .b ({outReg_9__15,outReg_9__14,outReg_9__13,
                 outReg_9__12,outReg_9__11,outReg_9__10,outReg_9__9,outReg_9__8,
                 outReg_9__7,outReg_9__6,outReg_9__5,outReg_9__4,outReg_9__3,
                 outReg_9__2,outReg_9__1,outReg_9__0}), .carryIn (GND), .sum ({
                 f_9__15,f_9__14,f_9__13,f_9__12,f_9__11,f_9__10,f_9__9,f_9__8,
                 f_9__7,f_9__6,f_9__5,f_9__4,f_9__3,f_9__2,f_9__1,f_9__0}), .carryOut (
                 \$dummy [0])) ;
    Reg_16 gen_9_cmp2 (.D ({f_9__15,f_9__14,f_9__13,f_9__12,f_9__11,f_9__10,
           f_9__9,f_9__8,f_9__7,f_9__6,f_9__5,f_9__4,f_9__3,f_9__2,f_9__1,f_9__0
           }), .en (PWR), .clk (nx1131), .rst (nx1139), .Q ({outReg_9__15,
           outReg_9__14,outReg_9__13,outReg_9__12,outReg_9__11,outReg_9__10,
           outReg_9__9,outReg_9__8,outReg_9__7,outReg_9__6,outReg_9__5,
           outReg_9__4,outReg_9__3,outReg_9__2,outReg_9__1,outReg_9__0}), .Qbar (
           {\$dummy [1],\$dummy [2],\$dummy [3],\$dummy [4],\$dummy [5],
           \$dummy [6],\$dummy [7],\$dummy [8],\$dummy [9],\$dummy [10],
           \$dummy [11],\$dummy [12],\$dummy [13],\$dummy [14],\$dummy [15],
           \$dummy [16]})) ;
    NBitAdder_16 gen_8_cmp1 (.a ({a_8__15,a_8__14,a_8__13,a_8__12,a_8__11,
                 a_8__10,a_8__9,a_8__8,a_8__7,a_8__6,a_8__5,a_8__4,a_8__3,a_8__2
                 ,a_8__1,a_8__0}), .b ({outReg_8__15,outReg_8__14,outReg_8__13,
                 outReg_8__12,outReg_8__11,outReg_8__10,outReg_8__9,outReg_8__8,
                 outReg_8__7,outReg_8__6,outReg_8__5,outReg_8__4,outReg_8__3,
                 outReg_8__2,outReg_8__1,outReg_8__0}), .carryIn (GND), .sum ({
                 f_8__15,f_8__14,f_8__13,f_8__12,f_8__11,f_8__10,f_8__9,f_8__8,
                 f_8__7,f_8__6,f_8__5,f_8__4,f_8__3,f_8__2,f_8__1,f_8__0}), .carryOut (
                 \$dummy [17])) ;
    Reg_16 gen_8_cmp2 (.D ({f_8__15,f_8__14,f_8__13,f_8__12,f_8__11,f_8__10,
           f_8__9,f_8__8,f_8__7,f_8__6,f_8__5,f_8__4,f_8__3,f_8__2,f_8__1,f_8__0
           }), .en (PWR), .clk (nx1131), .rst (nx1139), .Q ({outReg_8__15,
           outReg_8__14,outReg_8__13,outReg_8__12,outReg_8__11,outReg_8__10,
           outReg_8__9,outReg_8__8,outReg_8__7,outReg_8__6,outReg_8__5,
           outReg_8__4,outReg_8__3,outReg_8__2,outReg_8__1,outReg_8__0}), .Qbar (
           {\$dummy [18],\$dummy [19],\$dummy [20],\$dummy [21],\$dummy [22],
           \$dummy [23],\$dummy [24],\$dummy [25],\$dummy [26],\$dummy [27],
           \$dummy [28],\$dummy [29],\$dummy [30],\$dummy [31],\$dummy [32],
           \$dummy [33]})) ;
    NBitAdder_16 gen_7_cmp1 (.a ({a_7__15,a_7__14,a_7__13,a_7__12,a_7__11,
                 a_7__10,a_7__9,a_7__8,a_7__7,a_7__6,a_7__5,a_7__4,a_7__3,a_7__2
                 ,a_7__1,a_7__0}), .b ({outReg_7__15,outReg_7__14,outReg_7__13,
                 outReg_7__12,outReg_7__11,outReg_7__10,outReg_7__9,outReg_7__8,
                 outReg_7__7,outReg_7__6,outReg_7__5,outReg_7__4,outReg_7__3,
                 outReg_7__2,outReg_7__1,outReg_7__0}), .carryIn (GND), .sum ({
                 f_7__15,f_7__14,f_7__13,f_7__12,f_7__11,f_7__10,f_7__9,f_7__8,
                 f_7__7,f_7__6,f_7__5,f_7__4,f_7__3,f_7__2,f_7__1,f_7__0}), .carryOut (
                 \$dummy [34])) ;
    Reg_16 gen_7_cmp2 (.D ({f_7__15,f_7__14,f_7__13,f_7__12,f_7__11,f_7__10,
           f_7__9,f_7__8,f_7__7,f_7__6,f_7__5,f_7__4,f_7__3,f_7__2,f_7__1,f_7__0
           }), .en (PWR), .clk (nx1131), .rst (nx1139), .Q ({outReg_7__15,
           outReg_7__14,outReg_7__13,outReg_7__12,outReg_7__11,outReg_7__10,
           outReg_7__9,outReg_7__8,outReg_7__7,outReg_7__6,outReg_7__5,
           outReg_7__4,outReg_7__3,outReg_7__2,outReg_7__1,outReg_7__0}), .Qbar (
           {\$dummy [35],\$dummy [36],\$dummy [37],\$dummy [38],\$dummy [39],
           \$dummy [40],\$dummy [41],\$dummy [42],\$dummy [43],\$dummy [44],
           \$dummy [45],\$dummy [46],\$dummy [47],\$dummy [48],\$dummy [49],
           \$dummy [50]})) ;
    NBitAdder_16 gen_6_cmp1 (.a ({a_6__15,a_6__14,a_6__13,a_6__12,a_6__11,
                 a_6__10,a_6__9,a_6__8,a_6__7,a_6__6,a_6__5,a_6__4,a_6__3,a_6__2
                 ,a_6__1,a_6__0}), .b ({outReg_6__15,outReg_6__14,outReg_6__13,
                 outReg_6__12,outReg_6__11,outReg_6__10,outReg_6__9,outReg_6__8,
                 outReg_6__7,outReg_6__6,outReg_6__5,outReg_6__4,outReg_6__3,
                 outReg_6__2,outReg_6__1,outReg_6__0}), .carryIn (GND), .sum ({
                 f_6__15,f_6__14,f_6__13,f_6__12,f_6__11,f_6__10,f_6__9,f_6__8,
                 f_6__7,f_6__6,f_6__5,f_6__4,f_6__3,f_6__2,f_6__1,f_6__0}), .carryOut (
                 \$dummy [51])) ;
    Reg_16 gen_6_cmp2 (.D ({f_6__15,f_6__14,f_6__13,f_6__12,f_6__11,f_6__10,
           f_6__9,f_6__8,f_6__7,f_6__6,f_6__5,f_6__4,f_6__3,f_6__2,f_6__1,f_6__0
           }), .en (PWR), .clk (nx1133), .rst (nx1141), .Q ({outReg_6__15,
           outReg_6__14,outReg_6__13,outReg_6__12,outReg_6__11,outReg_6__10,
           outReg_6__9,outReg_6__8,outReg_6__7,outReg_6__6,outReg_6__5,
           outReg_6__4,outReg_6__3,outReg_6__2,outReg_6__1,outReg_6__0}), .Qbar (
           {\$dummy [52],\$dummy [53],\$dummy [54],\$dummy [55],\$dummy [56],
           \$dummy [57],\$dummy [58],\$dummy [59],\$dummy [60],\$dummy [61],
           \$dummy [62],\$dummy [63],\$dummy [64],\$dummy [65],\$dummy [66],
           \$dummy [67]})) ;
    NBitAdder_16 gen_5_cmp1 (.a ({a_5__15,a_5__14,a_5__13,a_5__12,a_5__11,
                 a_5__10,a_5__9,a_5__8,a_5__7,a_5__6,a_5__5,a_5__4,a_5__3,a_5__2
                 ,a_5__1,a_5__0}), .b ({outReg_5__15,outReg_5__14,outReg_5__13,
                 outReg_5__12,outReg_5__11,outReg_5__10,outReg_5__9,outReg_5__8,
                 outReg_5__7,outReg_5__6,outReg_5__5,outReg_5__4,outReg_5__3,
                 outReg_5__2,outReg_5__1,outReg_5__0}), .carryIn (GND), .sum ({
                 f_5__15,f_5__14,f_5__13,f_5__12,f_5__11,f_5__10,f_5__9,f_5__8,
                 f_5__7,f_5__6,f_5__5,f_5__4,f_5__3,f_5__2,f_5__1,f_5__0}), .carryOut (
                 \$dummy [68])) ;
    Reg_16 gen_5_cmp2 (.D ({f_5__15,f_5__14,f_5__13,f_5__12,f_5__11,f_5__10,
           f_5__9,f_5__8,f_5__7,f_5__6,f_5__5,f_5__4,f_5__3,f_5__2,f_5__1,f_5__0
           }), .en (PWR), .clk (nx1133), .rst (nx1141), .Q ({outReg_5__15,
           outReg_5__14,outReg_5__13,outReg_5__12,outReg_5__11,outReg_5__10,
           outReg_5__9,outReg_5__8,outReg_5__7,outReg_5__6,outReg_5__5,
           outReg_5__4,outReg_5__3,outReg_5__2,outReg_5__1,outReg_5__0}), .Qbar (
           {\$dummy [69],\$dummy [70],\$dummy [71],\$dummy [72],\$dummy [73],
           \$dummy [74],\$dummy [75],\$dummy [76],\$dummy [77],\$dummy [78],
           \$dummy [79],\$dummy [80],\$dummy [81],\$dummy [82],\$dummy [83],
           \$dummy [84]})) ;
    NBitAdder_16 gen_4_cmp1 (.a ({a_4__15,a_4__14,a_4__13,a_4__12,a_4__11,
                 a_4__10,a_4__9,a_4__8,a_4__7,a_4__6,a_4__5,a_4__4,a_4__3,a_4__2
                 ,a_4__1,a_4__0}), .b ({outReg_4__15,outReg_4__14,outReg_4__13,
                 outReg_4__12,outReg_4__11,outReg_4__10,outReg_4__9,outReg_4__8,
                 outReg_4__7,outReg_4__6,outReg_4__5,outReg_4__4,outReg_4__3,
                 outReg_4__2,outReg_4__1,outReg_4__0}), .carryIn (GND), .sum ({
                 f_4__15,f_4__14,f_4__13,f_4__12,f_4__11,f_4__10,f_4__9,f_4__8,
                 f_4__7,f_4__6,f_4__5,f_4__4,f_4__3,f_4__2,f_4__1,f_4__0}), .carryOut (
                 \$dummy [85])) ;
    Reg_16 gen_4_cmp2 (.D ({f_4__15,f_4__14,f_4__13,f_4__12,f_4__11,f_4__10,
           f_4__9,f_4__8,f_4__7,f_4__6,f_4__5,f_4__4,f_4__3,f_4__2,f_4__1,f_4__0
           }), .en (PWR), .clk (nx1133), .rst (nx1141), .Q ({outReg_4__15,
           outReg_4__14,outReg_4__13,outReg_4__12,outReg_4__11,outReg_4__10,
           outReg_4__9,outReg_4__8,outReg_4__7,outReg_4__6,outReg_4__5,
           outReg_4__4,outReg_4__3,outReg_4__2,outReg_4__1,outReg_4__0}), .Qbar (
           {\$dummy [86],\$dummy [87],\$dummy [88],\$dummy [89],\$dummy [90],
           \$dummy [91],\$dummy [92],\$dummy [93],\$dummy [94],\$dummy [95],
           \$dummy [96],\$dummy [97],\$dummy [98],\$dummy [99],\$dummy [100],
           \$dummy [101]})) ;
    NBitAdder_16 gen_3_cmp1 (.a ({a_3__15,a_3__14,a_3__13,a_3__12,a_3__11,
                 a_3__10,a_3__9,a_3__8,a_3__7,a_3__6,a_3__5,a_3__4,a_3__3,a_3__2
                 ,a_3__1,a_3__0}), .b ({outReg_3__15,outReg_3__14,outReg_3__13,
                 outReg_3__12,outReg_3__11,outReg_3__10,outReg_3__9,outReg_3__8,
                 outReg_3__7,outReg_3__6,outReg_3__5,outReg_3__4,outReg_3__3,
                 outReg_3__2,outReg_3__1,outReg_3__0}), .carryIn (GND), .sum ({
                 f_3__15,f_3__14,f_3__13,f_3__12,f_3__11,f_3__10,f_3__9,f_3__8,
                 f_3__7,f_3__6,f_3__5,f_3__4,f_3__3,f_3__2,f_3__1,f_3__0}), .carryOut (
                 \$dummy [102])) ;
    Reg_16 gen_3_cmp2 (.D ({f_3__15,f_3__14,f_3__13,f_3__12,f_3__11,f_3__10,
           f_3__9,f_3__8,f_3__7,f_3__6,f_3__5,f_3__4,f_3__3,f_3__2,f_3__1,f_3__0
           }), .en (PWR), .clk (nx1135), .rst (nx1143), .Q ({outReg_3__15,
           outReg_3__14,outReg_3__13,outReg_3__12,outReg_3__11,outReg_3__10,
           outReg_3__9,outReg_3__8,outReg_3__7,outReg_3__6,outReg_3__5,
           outReg_3__4,outReg_3__3,outReg_3__2,outReg_3__1,outReg_3__0}), .Qbar (
           {\$dummy [103],\$dummy [104],\$dummy [105],\$dummy [106],
           \$dummy [107],\$dummy [108],\$dummy [109],\$dummy [110],\$dummy [111]
           ,\$dummy [112],\$dummy [113],\$dummy [114],\$dummy [115],
           \$dummy [116],\$dummy [117],\$dummy [118]})) ;
    NBitAdder_16 gen_2_cmp1 (.a ({a_2__15,a_2__14,a_2__13,a_2__12,a_2__11,
                 a_2__10,a_2__9,a_2__8,a_2__7,a_2__6,a_2__5,a_2__4,a_2__3,a_2__2
                 ,a_2__1,a_2__0}), .b ({outReg_2__15,outReg_2__14,outReg_2__13,
                 outReg_2__12,outReg_2__11,outReg_2__10,outReg_2__9,outReg_2__8,
                 outReg_2__7,outReg_2__6,outReg_2__5,outReg_2__4,outReg_2__3,
                 outReg_2__2,outReg_2__1,outReg_2__0}), .carryIn (GND), .sum ({
                 f_2__15,f_2__14,f_2__13,f_2__12,f_2__11,f_2__10,f_2__9,f_2__8,
                 f_2__7,f_2__6,f_2__5,f_2__4,f_2__3,f_2__2,f_2__1,f_2__0}), .carryOut (
                 \$dummy [119])) ;
    Reg_16 gen_2_cmp2 (.D ({f_2__15,f_2__14,f_2__13,f_2__12,f_2__11,f_2__10,
           f_2__9,f_2__8,f_2__7,f_2__6,f_2__5,f_2__4,f_2__3,f_2__2,f_2__1,f_2__0
           }), .en (PWR), .clk (nx949), .rst (nx953), .Q ({outReg_2__15,
           outReg_2__14,outReg_2__13,outReg_2__12,outReg_2__11,outReg_2__10,
           outReg_2__9,outReg_2__8,outReg_2__7,outReg_2__6,outReg_2__5,
           outReg_2__4,outReg_2__3,outReg_2__2,outReg_2__1,outReg_2__0}), .Qbar (
           {\$dummy [120],\$dummy [121],\$dummy [122],\$dummy [123],
           \$dummy [124],\$dummy [125],\$dummy [126],\$dummy [127],\$dummy [128]
           ,\$dummy [129],\$dummy [130],\$dummy [131],\$dummy [132],
           \$dummy [133],\$dummy [134],\$dummy [135]})) ;
    NBitAdder_16 gen_1_cmp1 (.a ({a_1__15,a_1__14,a_1__13,a_1__12,a_1__11,
                 a_1__10,a_1__9,a_1__8,a_1__7,a_1__6,a_1__5,a_1__4,a_1__3,a_1__2
                 ,a_1__1,a_1__0}), .b ({outReg_1__15,outReg_1__14,outReg_1__13,
                 outReg_1__12,outReg_1__11,outReg_1__10,outReg_1__9,outReg_1__8,
                 outReg_1__7,outReg_1__6,outReg_1__5,outReg_1__4,outReg_1__3,
                 outReg_1__2,outReg_1__1,outReg_1__0}), .carryIn (GND), .sum ({
                 f_1__15,f_1__14,f_1__13,f_1__12,f_1__11,f_1__10,f_1__9,f_1__8,
                 f_1__7,f_1__6,f_1__5,f_1__4,f_1__3,f_1__2,f_1__1,f_1__0}), .carryOut (
                 \$dummy [136])) ;
    Reg_16 gen_1_cmp2 (.D ({f_1__15,f_1__14,f_1__13,f_1__12,f_1__11,f_1__10,
           f_1__9,f_1__8,f_1__7,f_1__6,f_1__5,f_1__4,f_1__3,f_1__2,f_1__1,f_1__0
           }), .en (PWR), .clk (nx949), .rst (nx953), .Q ({outReg_1__15,
           outReg_1__14,outReg_1__13,outReg_1__12,outReg_1__11,outReg_1__10,
           outReg_1__9,outReg_1__8,outReg_1__7,outReg_1__6,outReg_1__5,
           outReg_1__4,outReg_1__3,outReg_1__2,outReg_1__1,outReg_1__0}), .Qbar (
           {\$dummy [137],\$dummy [138],\$dummy [139],\$dummy [140],
           \$dummy [141],\$dummy [142],\$dummy [143],\$dummy [144],\$dummy [145]
           ,\$dummy [146],\$dummy [147],\$dummy [148],\$dummy [149],
           \$dummy [150],\$dummy [151],\$dummy [152]})) ;
    NBitAdder_16 gen_0_cmp1 (.a ({a_0__15,a_0__14,a_0__13,a_0__12,a_0__11,
                 a_0__10,a_0__9,a_0__8,a_0__7,a_0__6,a_0__5,a_0__4,a_0__3,a_0__2
                 ,a_0__1,a_0__0}), .b ({outReg_0__15,outReg_0__14,outReg_0__13,
                 outReg_0__12,outReg_0__11,outReg_0__10,outReg_0__9,outReg_0__8,
                 outReg_0__7,outReg_0__6,outReg_0__5,outReg_0__4,outReg_0__3,
                 outReg_0__2,outReg_0__1,outReg_0__0}), .carryIn (GND), .sum ({
                 f_0__15,f_0__14,f_0__13,f_0__12,f_0__11,f_0__10,f_0__9,f_0__8,
                 f_0__7,f_0__6,f_0__5,f_0__4,f_0__3,f_0__2,f_0__1,f_0__0}), .carryOut (
                 \$dummy [153])) ;
    Reg_16 gen_0_cmp2 (.D ({f_0__15,f_0__14,f_0__13,f_0__12,f_0__11,f_0__10,
           f_0__9,f_0__8,f_0__7,f_0__6,f_0__5,f_0__4,f_0__3,f_0__2,f_0__1,f_0__0
           }), .en (PWR), .clk (nx949), .rst (nx953), .Q ({outReg_0__15,
           outReg_0__14,outReg_0__13,outReg_0__12,outReg_0__11,outReg_0__10,
           outReg_0__9,outReg_0__8,outReg_0__7,outReg_0__6,outReg_0__5,
           outReg_0__4,outReg_0__3,outReg_0__2,outReg_0__1,outReg_0__0}), .Qbar (
           {\$dummy [154],\$dummy [155],\$dummy [156],\$dummy [157],
           \$dummy [158],\$dummy [159],\$dummy [160],\$dummy [161],\$dummy [162]
           ,\$dummy [163],\$dummy [164],\$dummy [165],\$dummy [166],
           \$dummy [167],\$dummy [168],\$dummy [169]})) ;
    buf02 ix946 (.Y (nx947), .A (save)) ;
    buf02 ix948 (.Y (nx949), .A (save)) ;
    buf02 ix950 (.Y (nx951), .A (rst)) ;
    buf02 ix952 (.Y (nx953), .A (rst)) ;
    inv01 ix1128 (.Y (nx1129), .A (nx947)) ;
    inv01 ix1130 (.Y (nx1131), .A (nx1129)) ;
    inv01 ix1132 (.Y (nx1133), .A (nx1129)) ;
    inv01 ix1134 (.Y (nx1135), .A (nx1129)) ;
    inv01 ix1136 (.Y (nx1137), .A (nx951)) ;
    inv01 ix1138 (.Y (nx1139), .A (nx1137)) ;
    inv01 ix1140 (.Y (nx1141), .A (nx1137)) ;
    inv01 ix1142 (.Y (nx1143), .A (nx1137)) ;
endmodule


module nMul8x16_10 ( q_9__7, q_9__6, q_9__5, q_9__4, q_9__3, q_9__2, q_9__1, 
                     q_9__0, q_8__7, q_8__6, q_8__5, q_8__4, q_8__3, q_8__2, 
                     q_8__1, q_8__0, q_7__7, q_7__6, q_7__5, q_7__4, q_7__3, 
                     q_7__2, q_7__1, q_7__0, q_6__7, q_6__6, q_6__5, q_6__4, 
                     q_6__3, q_6__2, q_6__1, q_6__0, q_5__7, q_5__6, q_5__5, 
                     q_5__4, q_5__3, q_5__2, q_5__1, q_5__0, q_4__7, q_4__6, 
                     q_4__5, q_4__4, q_4__3, q_4__2, q_4__1, q_4__0, q_3__7, 
                     q_3__6, q_3__5, q_3__4, q_3__3, q_3__2, q_3__1, q_3__0, 
                     q_2__7, q_2__6, q_2__5, q_2__4, q_2__3, q_2__2, q_2__1, 
                     q_2__0, q_1__7, q_1__6, q_1__5, q_1__4, q_1__3, q_1__2, 
                     q_1__1, q_1__0, q_0__7, q_0__6, q_0__5, q_0__4, q_0__3, 
                     q_0__2, q_0__1, q_0__0, m_9__15, m_9__14, m_9__13, m_9__12, 
                     m_9__11, m_9__10, m_9__9, m_9__8, m_9__7, m_9__6, m_9__5, 
                     m_9__4, m_9__3, m_9__2, m_9__1, m_9__0, m_8__15, m_8__14, 
                     m_8__13, m_8__12, m_8__11, m_8__10, m_8__9, m_8__8, m_8__7, 
                     m_8__6, m_8__5, m_8__4, m_8__3, m_8__2, m_8__1, m_8__0, 
                     m_7__15, m_7__14, m_7__13, m_7__12, m_7__11, m_7__10, 
                     m_7__9, m_7__8, m_7__7, m_7__6, m_7__5, m_7__4, m_7__3, 
                     m_7__2, m_7__1, m_7__0, m_6__15, m_6__14, m_6__13, m_6__12, 
                     m_6__11, m_6__10, m_6__9, m_6__8, m_6__7, m_6__6, m_6__5, 
                     m_6__4, m_6__3, m_6__2, m_6__1, m_6__0, m_5__15, m_5__14, 
                     m_5__13, m_5__12, m_5__11, m_5__10, m_5__9, m_5__8, m_5__7, 
                     m_5__6, m_5__5, m_5__4, m_5__3, m_5__2, m_5__1, m_5__0, 
                     m_4__15, m_4__14, m_4__13, m_4__12, m_4__11, m_4__10, 
                     m_4__9, m_4__8, m_4__7, m_4__6, m_4__5, m_4__4, m_4__3, 
                     m_4__2, m_4__1, m_4__0, m_3__15, m_3__14, m_3__13, m_3__12, 
                     m_3__11, m_3__10, m_3__9, m_3__8, m_3__7, m_3__6, m_3__5, 
                     m_3__4, m_3__3, m_3__2, m_3__1, m_3__0, m_2__15, m_2__14, 
                     m_2__13, m_2__12, m_2__11, m_2__10, m_2__9, m_2__8, m_2__7, 
                     m_2__6, m_2__5, m_2__4, m_2__3, m_2__2, m_2__1, m_2__0, 
                     m_1__15, m_1__14, m_1__13, m_1__12, m_1__11, m_1__10, 
                     m_1__9, m_1__8, m_1__7, m_1__6, m_1__5, m_1__4, m_1__3, 
                     m_1__2, m_1__1, m_1__0, m_0__15, m_0__14, m_0__13, m_0__12, 
                     m_0__11, m_0__10, m_0__9, m_0__8, m_0__7, m_0__6, m_0__5, 
                     m_0__4, m_0__3, m_0__2, m_0__1, m_0__0, f_9__15, f_9__14, 
                     f_9__13, f_9__12, f_9__11, f_9__10, f_9__9, f_9__8, f_9__7, 
                     f_9__6, f_9__5, f_9__4, f_9__3, f_9__2, f_9__1, f_9__0, 
                     f_8__15, f_8__14, f_8__13, f_8__12, f_8__11, f_8__10, 
                     f_8__9, f_8__8, f_8__7, f_8__6, f_8__5, f_8__4, f_8__3, 
                     f_8__2, f_8__1, f_8__0, f_7__15, f_7__14, f_7__13, f_7__12, 
                     f_7__11, f_7__10, f_7__9, f_7__8, f_7__7, f_7__6, f_7__5, 
                     f_7__4, f_7__3, f_7__2, f_7__1, f_7__0, f_6__15, f_6__14, 
                     f_6__13, f_6__12, f_6__11, f_6__10, f_6__9, f_6__8, f_6__7, 
                     f_6__6, f_6__5, f_6__4, f_6__3, f_6__2, f_6__1, f_6__0, 
                     f_5__15, f_5__14, f_5__13, f_5__12, f_5__11, f_5__10, 
                     f_5__9, f_5__8, f_5__7, f_5__6, f_5__5, f_5__4, f_5__3, 
                     f_5__2, f_5__1, f_5__0, f_4__15, f_4__14, f_4__13, f_4__12, 
                     f_4__11, f_4__10, f_4__9, f_4__8, f_4__7, f_4__6, f_4__5, 
                     f_4__4, f_4__3, f_4__2, f_4__1, f_4__0, f_3__15, f_3__14, 
                     f_3__13, f_3__12, f_3__11, f_3__10, f_3__9, f_3__8, f_3__7, 
                     f_3__6, f_3__5, f_3__4, f_3__3, f_3__2, f_3__1, f_3__0, 
                     f_2__15, f_2__14, f_2__13, f_2__12, f_2__11, f_2__10, 
                     f_2__9, f_2__8, f_2__7, f_2__6, f_2__5, f_2__4, f_2__3, 
                     f_2__2, f_2__1, f_2__0, f_1__15, f_1__14, f_1__13, f_1__12, 
                     f_1__11, f_1__10, f_1__9, f_1__8, f_1__7, f_1__6, f_1__5, 
                     f_1__4, f_1__3, f_1__2, f_1__1, f_1__0, f_0__15, f_0__14, 
                     f_0__13, f_0__12, f_0__11, f_0__10, f_0__9, f_0__8, f_0__7, 
                     f_0__6, f_0__5, f_0__4, f_0__3, f_0__2, f_0__1, f_0__0, clk, 
                     start, rst, done, working ) ;

    input q_9__7 ;
    input q_9__6 ;
    input q_9__5 ;
    input q_9__4 ;
    input q_9__3 ;
    input q_9__2 ;
    input q_9__1 ;
    input q_9__0 ;
    input q_8__7 ;
    input q_8__6 ;
    input q_8__5 ;
    input q_8__4 ;
    input q_8__3 ;
    input q_8__2 ;
    input q_8__1 ;
    input q_8__0 ;
    input q_7__7 ;
    input q_7__6 ;
    input q_7__5 ;
    input q_7__4 ;
    input q_7__3 ;
    input q_7__2 ;
    input q_7__1 ;
    input q_7__0 ;
    input q_6__7 ;
    input q_6__6 ;
    input q_6__5 ;
    input q_6__4 ;
    input q_6__3 ;
    input q_6__2 ;
    input q_6__1 ;
    input q_6__0 ;
    input q_5__7 ;
    input q_5__6 ;
    input q_5__5 ;
    input q_5__4 ;
    input q_5__3 ;
    input q_5__2 ;
    input q_5__1 ;
    input q_5__0 ;
    input q_4__7 ;
    input q_4__6 ;
    input q_4__5 ;
    input q_4__4 ;
    input q_4__3 ;
    input q_4__2 ;
    input q_4__1 ;
    input q_4__0 ;
    input q_3__7 ;
    input q_3__6 ;
    input q_3__5 ;
    input q_3__4 ;
    input q_3__3 ;
    input q_3__2 ;
    input q_3__1 ;
    input q_3__0 ;
    input q_2__7 ;
    input q_2__6 ;
    input q_2__5 ;
    input q_2__4 ;
    input q_2__3 ;
    input q_2__2 ;
    input q_2__1 ;
    input q_2__0 ;
    input q_1__7 ;
    input q_1__6 ;
    input q_1__5 ;
    input q_1__4 ;
    input q_1__3 ;
    input q_1__2 ;
    input q_1__1 ;
    input q_1__0 ;
    input q_0__7 ;
    input q_0__6 ;
    input q_0__5 ;
    input q_0__4 ;
    input q_0__3 ;
    input q_0__2 ;
    input q_0__1 ;
    input q_0__0 ;
    input m_9__15 ;
    input m_9__14 ;
    input m_9__13 ;
    input m_9__12 ;
    input m_9__11 ;
    input m_9__10 ;
    input m_9__9 ;
    input m_9__8 ;
    input m_9__7 ;
    input m_9__6 ;
    input m_9__5 ;
    input m_9__4 ;
    input m_9__3 ;
    input m_9__2 ;
    input m_9__1 ;
    input m_9__0 ;
    input m_8__15 ;
    input m_8__14 ;
    input m_8__13 ;
    input m_8__12 ;
    input m_8__11 ;
    input m_8__10 ;
    input m_8__9 ;
    input m_8__8 ;
    input m_8__7 ;
    input m_8__6 ;
    input m_8__5 ;
    input m_8__4 ;
    input m_8__3 ;
    input m_8__2 ;
    input m_8__1 ;
    input m_8__0 ;
    input m_7__15 ;
    input m_7__14 ;
    input m_7__13 ;
    input m_7__12 ;
    input m_7__11 ;
    input m_7__10 ;
    input m_7__9 ;
    input m_7__8 ;
    input m_7__7 ;
    input m_7__6 ;
    input m_7__5 ;
    input m_7__4 ;
    input m_7__3 ;
    input m_7__2 ;
    input m_7__1 ;
    input m_7__0 ;
    input m_6__15 ;
    input m_6__14 ;
    input m_6__13 ;
    input m_6__12 ;
    input m_6__11 ;
    input m_6__10 ;
    input m_6__9 ;
    input m_6__8 ;
    input m_6__7 ;
    input m_6__6 ;
    input m_6__5 ;
    input m_6__4 ;
    input m_6__3 ;
    input m_6__2 ;
    input m_6__1 ;
    input m_6__0 ;
    input m_5__15 ;
    input m_5__14 ;
    input m_5__13 ;
    input m_5__12 ;
    input m_5__11 ;
    input m_5__10 ;
    input m_5__9 ;
    input m_5__8 ;
    input m_5__7 ;
    input m_5__6 ;
    input m_5__5 ;
    input m_5__4 ;
    input m_5__3 ;
    input m_5__2 ;
    input m_5__1 ;
    input m_5__0 ;
    input m_4__15 ;
    input m_4__14 ;
    input m_4__13 ;
    input m_4__12 ;
    input m_4__11 ;
    input m_4__10 ;
    input m_4__9 ;
    input m_4__8 ;
    input m_4__7 ;
    input m_4__6 ;
    input m_4__5 ;
    input m_4__4 ;
    input m_4__3 ;
    input m_4__2 ;
    input m_4__1 ;
    input m_4__0 ;
    input m_3__15 ;
    input m_3__14 ;
    input m_3__13 ;
    input m_3__12 ;
    input m_3__11 ;
    input m_3__10 ;
    input m_3__9 ;
    input m_3__8 ;
    input m_3__7 ;
    input m_3__6 ;
    input m_3__5 ;
    input m_3__4 ;
    input m_3__3 ;
    input m_3__2 ;
    input m_3__1 ;
    input m_3__0 ;
    input m_2__15 ;
    input m_2__14 ;
    input m_2__13 ;
    input m_2__12 ;
    input m_2__11 ;
    input m_2__10 ;
    input m_2__9 ;
    input m_2__8 ;
    input m_2__7 ;
    input m_2__6 ;
    input m_2__5 ;
    input m_2__4 ;
    input m_2__3 ;
    input m_2__2 ;
    input m_2__1 ;
    input m_2__0 ;
    input m_1__15 ;
    input m_1__14 ;
    input m_1__13 ;
    input m_1__12 ;
    input m_1__11 ;
    input m_1__10 ;
    input m_1__9 ;
    input m_1__8 ;
    input m_1__7 ;
    input m_1__6 ;
    input m_1__5 ;
    input m_1__4 ;
    input m_1__3 ;
    input m_1__2 ;
    input m_1__1 ;
    input m_1__0 ;
    input m_0__15 ;
    input m_0__14 ;
    input m_0__13 ;
    input m_0__12 ;
    input m_0__11 ;
    input m_0__10 ;
    input m_0__9 ;
    input m_0__8 ;
    input m_0__7 ;
    input m_0__6 ;
    input m_0__5 ;
    input m_0__4 ;
    input m_0__3 ;
    input m_0__2 ;
    input m_0__1 ;
    input m_0__0 ;
    inout f_9__15 ;
    inout f_9__14 ;
    inout f_9__13 ;
    inout f_9__12 ;
    inout f_9__11 ;
    inout f_9__10 ;
    inout f_9__9 ;
    inout f_9__8 ;
    inout f_9__7 ;
    inout f_9__6 ;
    inout f_9__5 ;
    inout f_9__4 ;
    inout f_9__3 ;
    inout f_9__2 ;
    inout f_9__1 ;
    inout f_9__0 ;
    inout f_8__15 ;
    inout f_8__14 ;
    inout f_8__13 ;
    inout f_8__12 ;
    inout f_8__11 ;
    inout f_8__10 ;
    inout f_8__9 ;
    inout f_8__8 ;
    inout f_8__7 ;
    inout f_8__6 ;
    inout f_8__5 ;
    inout f_8__4 ;
    inout f_8__3 ;
    inout f_8__2 ;
    inout f_8__1 ;
    inout f_8__0 ;
    inout f_7__15 ;
    inout f_7__14 ;
    inout f_7__13 ;
    inout f_7__12 ;
    inout f_7__11 ;
    inout f_7__10 ;
    inout f_7__9 ;
    inout f_7__8 ;
    inout f_7__7 ;
    inout f_7__6 ;
    inout f_7__5 ;
    inout f_7__4 ;
    inout f_7__3 ;
    inout f_7__2 ;
    inout f_7__1 ;
    inout f_7__0 ;
    inout f_6__15 ;
    inout f_6__14 ;
    inout f_6__13 ;
    inout f_6__12 ;
    inout f_6__11 ;
    inout f_6__10 ;
    inout f_6__9 ;
    inout f_6__8 ;
    inout f_6__7 ;
    inout f_6__6 ;
    inout f_6__5 ;
    inout f_6__4 ;
    inout f_6__3 ;
    inout f_6__2 ;
    inout f_6__1 ;
    inout f_6__0 ;
    inout f_5__15 ;
    inout f_5__14 ;
    inout f_5__13 ;
    inout f_5__12 ;
    inout f_5__11 ;
    inout f_5__10 ;
    inout f_5__9 ;
    inout f_5__8 ;
    inout f_5__7 ;
    inout f_5__6 ;
    inout f_5__5 ;
    inout f_5__4 ;
    inout f_5__3 ;
    inout f_5__2 ;
    inout f_5__1 ;
    inout f_5__0 ;
    inout f_4__15 ;
    inout f_4__14 ;
    inout f_4__13 ;
    inout f_4__12 ;
    inout f_4__11 ;
    inout f_4__10 ;
    inout f_4__9 ;
    inout f_4__8 ;
    inout f_4__7 ;
    inout f_4__6 ;
    inout f_4__5 ;
    inout f_4__4 ;
    inout f_4__3 ;
    inout f_4__2 ;
    inout f_4__1 ;
    inout f_4__0 ;
    inout f_3__15 ;
    inout f_3__14 ;
    inout f_3__13 ;
    inout f_3__12 ;
    inout f_3__11 ;
    inout f_3__10 ;
    inout f_3__9 ;
    inout f_3__8 ;
    inout f_3__7 ;
    inout f_3__6 ;
    inout f_3__5 ;
    inout f_3__4 ;
    inout f_3__3 ;
    inout f_3__2 ;
    inout f_3__1 ;
    inout f_3__0 ;
    inout f_2__15 ;
    inout f_2__14 ;
    inout f_2__13 ;
    inout f_2__12 ;
    inout f_2__11 ;
    inout f_2__10 ;
    inout f_2__9 ;
    inout f_2__8 ;
    inout f_2__7 ;
    inout f_2__6 ;
    inout f_2__5 ;
    inout f_2__4 ;
    inout f_2__3 ;
    inout f_2__2 ;
    inout f_2__1 ;
    inout f_2__0 ;
    inout f_1__15 ;
    inout f_1__14 ;
    inout f_1__13 ;
    inout f_1__12 ;
    inout f_1__11 ;
    inout f_1__10 ;
    inout f_1__9 ;
    inout f_1__8 ;
    inout f_1__7 ;
    inout f_1__6 ;
    inout f_1__5 ;
    inout f_1__4 ;
    inout f_1__3 ;
    inout f_1__2 ;
    inout f_1__1 ;
    inout f_1__0 ;
    inout f_0__15 ;
    inout f_0__14 ;
    inout f_0__13 ;
    inout f_0__12 ;
    inout f_0__11 ;
    inout f_0__10 ;
    inout f_0__9 ;
    inout f_0__8 ;
    inout f_0__7 ;
    inout f_0__6 ;
    inout f_0__5 ;
    inout f_0__4 ;
    inout f_0__3 ;
    inout f_0__2 ;
    inout f_0__1 ;
    inout f_0__0 ;
    input clk ;
    input start ;
    input rst ;
    inout done ;
    inout working ;

    wire counter_0, counterRst, restartDetection, firstStart, PWR, nx364, nx366, 
         nx368, nx370, nx372, nx374, nx382, nx384, nx392, nx396, nx398, nx400, 
         nx402, nx404, nx406, nx408, nx410, nx412, nx414, nx416, nx418, nx420, 
         nx394, nx394_XX0_XREP41, nx380, nx380_XX0_XREP43, nx433, nx435, nx437, 
         nx439, nx441, nx443, nx445, nx447, nx449, nx451, nx453, nx455, nx457, 
         nx459, nx461, nx463, nx465, nx467;
    wire [2:0] \$dummy ;




    Mul8x16 gen_9_cmp (.q ({q_9__7,q_9__6,q_9__5,q_9__4,q_9__3,q_9__2,q_9__1,
            q_9__0}), .m ({m_9__15,m_9__14,m_9__13,m_9__12,m_9__11,m_9__10,
            m_9__9,m_9__8,m_9__7,m_9__6,m_9__5,m_9__4,m_9__3,m_9__2,m_9__1,
            m_9__0}), .fMul ({f_9__15,f_9__14,f_9__13,f_9__12,f_9__11,f_9__10,
            f_9__9,f_9__8,f_9__7,f_9__6,f_9__5,f_9__4,f_9__3,f_9__2,f_9__1,
            f_9__0}), .clk (nx414), .start (nx445), .rst (nx418), .sel (nx368), 
            .startAndPause (nx451)) ;
    Mul8x16 gen_8_cmp (.q ({q_8__7,q_8__6,q_8__5,q_8__4,q_8__3,q_8__2,q_8__1,
            q_8__0}), .m ({m_8__15,m_8__14,m_8__13,m_8__12,m_8__11,m_8__10,
            m_8__9,m_8__8,m_8__7,m_8__6,m_8__5,m_8__4,m_8__3,m_8__2,m_8__1,
            m_8__0}), .fMul ({f_8__15,f_8__14,f_8__13,f_8__12,f_8__11,f_8__10,
            f_8__9,f_8__8,f_8__7,f_8__6,f_8__5,f_8__4,f_8__3,f_8__2,f_8__1,
            f_8__0}), .clk (nx414), .start (nx445), .rst (nx382), .sel (nx368), 
            .startAndPause (nx453)) ;
    Mul8x16 gen_7_cmp (.q ({q_7__7,q_7__6,q_7__5,q_7__4,q_7__3,q_7__2,q_7__1,
            q_7__0}), .m ({m_7__15,m_7__14,m_7__13,m_7__12,m_7__11,m_7__10,
            m_7__9,m_7__8,m_7__7,m_7__6,m_7__5,m_7__4,m_7__3,m_7__2,m_7__1,
            m_7__0}), .fMul ({f_7__15,f_7__14,f_7__13,f_7__12,f_7__11,f_7__10,
            f_7__9,f_7__8,f_7__7,f_7__6,f_7__5,f_7__4,f_7__3,f_7__2,f_7__1,
            f_7__0}), .clk (nx414), .start (nx396), .rst (nx420), .sel (nx368), 
            .startAndPause (nx406)) ;
    Mul8x16 gen_6_cmp (.q ({q_6__7,q_6__6,q_6__5,q_6__4,q_6__3,q_6__2,q_6__1,
            q_6__0}), .m ({m_6__15,m_6__14,m_6__13,m_6__12,m_6__11,m_6__10,
            m_6__9,m_6__8,m_6__7,m_6__6,m_6__5,m_6__4,m_6__3,m_6__2,m_6__1,
            m_6__0}), .fMul ({f_6__15,f_6__14,f_6__13,f_6__12,f_6__11,f_6__10,
            f_6__9,f_6__8,f_6__7,f_6__6,f_6__5,f_6__4,f_6__3,f_6__2,f_6__1,
            f_6__0}), .clk (nx416), .start (nx447), .rst (nx384), .sel (nx368), 
            .startAndPause (nx455)) ;
    Mul8x16 gen_5_cmp (.q ({q_5__7,q_5__6,q_5__5,q_5__4,q_5__3,q_5__2,q_5__1,
            q_5__0}), .m ({m_5__15,m_5__14,m_5__13,m_5__12,m_5__11,m_5__10,
            m_5__9,m_5__8,m_5__7,m_5__6,m_5__5,m_5__4,m_5__3,m_5__2,m_5__1,
            m_5__0}), .fMul ({f_5__15,f_5__14,f_5__13,f_5__12,f_5__11,f_5__10,
            f_5__9,f_5__8,f_5__7,f_5__6,f_5__5,f_5__4,f_5__3,f_5__2,f_5__1,
            f_5__0}), .clk (nx416), .start (nx447), .rst (nx433), .sel (nx368), 
            .startAndPause (nx457)) ;
    Mul8x16 gen_4_cmp (.q ({q_4__7,q_4__6,q_4__5,q_4__4,q_4__3,q_4__2,q_4__1,
            q_4__0}), .m ({m_4__15,m_4__14,m_4__13,m_4__12,m_4__11,m_4__10,
            m_4__9,m_4__8,m_4__7,m_4__6,m_4__5,m_4__4,m_4__3,m_4__2,m_4__1,
            m_4__0}), .fMul ({f_4__15,f_4__14,f_4__13,f_4__12,f_4__11,f_4__10,
            f_4__9,f_4__8,f_4__7,f_4__6,f_4__5,f_4__4,f_4__3,f_4__2,f_4__1,
            f_4__0}), .clk (nx416), .start (nx398), .rst (nx435), .sel (nx368), 
            .startAndPause (nx408)) ;
    Mul8x16 gen_3_cmp (.q ({q_3__7,q_3__6,q_3__5,q_3__4,q_3__3,q_3__2,q_3__1,
            q_3__0}), .m ({m_3__15,m_3__14,m_3__13,m_3__12,m_3__11,m_3__10,
            m_3__9,m_3__8,m_3__7,m_3__6,m_3__5,m_3__4,m_3__3,m_3__2,m_3__1,
            m_3__0}), .fMul ({f_3__15,f_3__14,f_3__13,f_3__12,f_3__11,f_3__10,
            f_3__9,f_3__8,f_3__7,f_3__6,f_3__5,f_3__4,f_3__3,f_3__2,f_3__1,
            f_3__0}), .clk (nx372), .start (nx449), .rst (nx437), .sel (nx368), 
            .startAndPause (nx410)) ;
    Mul8x16 gen_2_cmp (.q ({q_2__7,q_2__6,q_2__5,q_2__4,q_2__3,q_2__2,q_2__1,
            q_2__0}), .m ({m_2__15,m_2__14,m_2__13,m_2__12,m_2__11,m_2__10,
            m_2__9,m_2__8,m_2__7,m_2__6,m_2__5,m_2__4,m_2__3,m_2__2,m_2__1,
            m_2__0}), .fMul ({f_2__15,f_2__14,f_2__13,f_2__12,f_2__11,f_2__10,
            f_2__9,f_2__8,f_2__7,f_2__6,f_2__5,f_2__4,f_2__3,f_2__2,f_2__1,
            f_2__0}), .clk (nx374), .start (nx449), .rst (nx439), .sel (nx370), 
            .startAndPause (nx461)) ;
    Mul8x16 gen_1_cmp (.q ({q_1__7,q_1__6,q_1__5,q_1__4,q_1__3,q_1__2,q_1__1,
            q_1__0}), .m ({m_1__15,m_1__14,m_1__13,m_1__12,m_1__11,m_1__10,
            m_1__9,m_1__8,m_1__7,m_1__6,m_1__5,m_1__4,m_1__3,m_1__2,m_1__1,
            m_1__0}), .fMul ({f_1__15,f_1__14,f_1__13,f_1__12,f_1__11,f_1__10,
            f_1__9,f_1__8,f_1__7,f_1__6,f_1__5,f_1__4,f_1__3,f_1__2,f_1__1,
            f_1__0}), .clk (nx374), .start (nx400), .rst (nx441), .sel (nx370), 
            .startAndPause (nx463)) ;
    Mul8x16 gen_0_cmp (.q ({q_0__7,q_0__6,q_0__5,q_0__4,q_0__3,q_0__2,q_0__1,
            q_0__0}), .m ({m_0__15,m_0__14,m_0__13,m_0__12,m_0__11,m_0__10,
            m_0__9,m_0__8,m_0__7,m_0__6,m_0__5,m_0__4,m_0__3,m_0__2,m_0__1,
            m_0__0}), .fMul ({f_0__15,f_0__14,f_0__13,f_0__12,f_0__11,f_0__10,
            f_0__9,f_0__8,f_0__7,f_0__6,f_0__5,f_0__4,f_0__3,f_0__2,f_0__1,
            f_0__0}), .clk (nx374), .start (nx402), .rst (nx443), .sel (nx370), 
            .startAndPause (nx465)) ;
    RisingHolderHalfCycle StartCaptuerCmp (.transition (nx445), .clk (clk), .rst (
                          nx418), .f (restartDetection)) ;
    ShiftReg_3 CounterCmp (.outp ({done,\$dummy [0],\$dummy [1],counter_0}), .clk (
               clk), .en (nx366), .rst (counterRst)) ;
    Reg_1 firtStartLachCmp (.D ({PWR}), .en (PWR), .clk (nx402), .rst (nx392), .Q (
          {firstStart}), .Qbar ({\$dummy [2]})) ;
    or02 ix3 (.Y (counterRst), .A0 (nx420), .A1 (restartDetection)) ;
    nor02ii ix7 (.Y (working), .A0 (done), .A1 (firstStart)) ;
    buf02 ix363 (.Y (nx364), .A (working)) ;
    buf02 ix365 (.Y (nx366), .A (working)) ;
    buf02 ix367 (.Y (nx368), .A (counter_0)) ;
    buf02 ix369 (.Y (nx370), .A (counter_0)) ;
    inv01 ix371 (.Y (nx372), .A (clk)) ;
    inv01 ix373 (.Y (nx374), .A (clk)) ;
    inv01 ix381 (.Y (nx382), .A (nx380)) ;
    inv01 ix383 (.Y (nx384), .A (nx380)) ;
    inv01 ix391 (.Y (nx392), .A (nx380)) ;
    inv02 ix395 (.Y (nx396), .A (nx394_XX0_XREP41)) ;
    inv02 ix397 (.Y (nx398), .A (nx394_XX0_XREP41)) ;
    inv02 ix399 (.Y (nx400), .A (nx394)) ;
    inv02 ix401 (.Y (nx402), .A (nx394)) ;
    inv01 ix403 (.Y (nx404), .A (nx364)) ;
    inv01 ix405 (.Y (nx406), .A (nx404)) ;
    inv01 ix407 (.Y (nx408), .A (nx404)) ;
    inv01 ix409 (.Y (nx410), .A (nx404)) ;
    buf02 ix411 (.Y (nx412), .A (working)) ;
    inv01 ix413 (.Y (nx414), .A (clk)) ;
    inv01 ix415 (.Y (nx416), .A (clk)) ;
    inv01 ix417 (.Y (nx418), .A (nx380)) ;
    inv01 ix419 (.Y (nx420), .A (nx467)) ;
    inv01 ix393 (.Y (nx394), .A (start)) ;
    inv01 ix393_0_XREP41 (.Y (nx394_XX0_XREP41), .A (start)) ;
    inv01 ix379 (.Y (nx380), .A (rst)) ;
    inv01 ix379_0_XREP43 (.Y (nx380_XX0_XREP43), .A (rst)) ;
    inv01 ix432 (.Y (nx433), .A (nx467)) ;
    inv01 ix434 (.Y (nx435), .A (nx467)) ;
    inv01 ix436 (.Y (nx437), .A (nx467)) ;
    inv01 ix438 (.Y (nx439), .A (nx380_XX0_XREP43)) ;
    inv01 ix440 (.Y (nx441), .A (nx380_XX0_XREP43)) ;
    inv01 ix442 (.Y (nx443), .A (nx380_XX0_XREP43)) ;
    inv02 ix444 (.Y (nx445), .A (nx394_XX0_XREP41)) ;
    inv02 ix446 (.Y (nx447), .A (nx394_XX0_XREP41)) ;
    inv02 ix448 (.Y (nx449), .A (nx394)) ;
    inv01 ix450 (.Y (nx451), .A (nx404)) ;
    inv01 ix452 (.Y (nx453), .A (nx404)) ;
    inv01 ix454 (.Y (nx455), .A (nx404)) ;
    inv01 ix456 (.Y (nx457), .A (nx404)) ;
    inv01 ix458 (.Y (nx459), .A (nx412)) ;
    inv01 ix460 (.Y (nx461), .A (nx459)) ;
    inv01 ix462 (.Y (nx463), .A (nx459)) ;
    inv01 ix464 (.Y (nx465), .A (nx459)) ;
    inv01 ix379_0_XREP43_rep_1 (.Y (nx467), .A (rst)) ;
endmodule


module Reg_1 ( D, en, clk, rst, Q, Qbar ) ;

    input [0:0]D ;
    input en ;
    input clk ;
    input rst ;
    output [0:0]Q ;
    output [0:0]Qbar ;

    wire nx65, nx75, nx87;
    wire [1:0] \$dummy ;




    dffs_ni reg_Qbar_0 (.Q (Qbar[0]), .QB (\$dummy [0]), .D (nx75), .CLK (clk), 
            .S (rst)) ;
    mux21_ni ix76 (.Y (nx75), .A0 (Qbar[0]), .A1 (nx87), .S0 (en)) ;
    inv01 ix88 (.Y (nx87), .A (D[0])) ;
    dffr reg_Q_0 (.Q (Q[0]), .QB (\$dummy [1]), .D (nx65), .CLK (clk), .R (rst)
         ) ;
    mux21_ni ix66 (.Y (nx65), .A0 (Q[0]), .A1 (D[0]), .S0 (en)) ;
endmodule


module ShiftReg_3 ( outp, clk, en, rst ) ;

    inout [3:0]outp ;
    input clk ;
    input en ;
    input rst ;

    wire nx80, nx94, nx104, nx114;
    wire [3:0] \$dummy ;




    dffs_ni reg_outp_0 (.Q (outp[0]), .QB (\$dummy [0]), .D (nx80), .CLK (clk), 
            .S (rst)) ;
    nor02ii ix81 (.Y (nx80), .A0 (en), .A1 (outp[0])) ;
    dffr reg_outp_1 (.Q (outp[1]), .QB (\$dummy [1]), .D (nx94), .CLK (clk), .R (
         rst)) ;
    mux21_ni ix95 (.Y (nx94), .A0 (outp[1]), .A1 (outp[0]), .S0 (en)) ;
    dffr reg_outp_2 (.Q (outp[2]), .QB (\$dummy [2]), .D (nx104), .CLK (clk), .R (
         rst)) ;
    mux21_ni ix105 (.Y (nx104), .A0 (outp[2]), .A1 (outp[1]), .S0 (en)) ;
    dffr reg_outp_3 (.Q (outp[3]), .QB (\$dummy [3]), .D (nx114), .CLK (clk), .R (
         rst)) ;
    mux21_ni ix115 (.Y (nx114), .A0 (outp[3]), .A1 (outp[2]), .S0 (en)) ;
endmodule


module RisingHolderHalfCycle ( transition, clk, rst, f ) ;

    input transition ;
    input clk ;
    input rst ;
    inout f ;

    wire nx0, d, NOT_clk, nx10;
    wire [1:0] \$dummy ;




    dffr reg_f (.Q (f), .QB (\$dummy [0]), .D (nx0), .CLK (transition), .R (nx10)) ;
    or02 ix11 (.Y (nx10), .A0 (d), .A1 (rst)) ;
    dff reg_d (.Q (d), .QB (\$dummy [1]), .D (f), .CLK (NOT_clk)) ;
    inv01 ix31 (.Y (NOT_clk), .A (clk)) ;
endmodule


module Mul8x16 ( q, m, fMul, clk, start, rst, sel, startAndPause ) ;

    input [7:0]q ;
    input [15:0]m ;
    output [15:0]fMul ;
    input clk ;
    input start ;
    input rst ;
    input sel ;
    input startAndPause ;

    wire pInit_8, pInit_7, pInit_6, pInit_5, pInit_4, pInit_3, pInit_2, pInit_1, 
         pBs_32, pBs_30, pBs_29, pBs_28, pBs_27, pBs_26, pBs_25, pBs_24, pBs_23, 
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
         pInit_32, nx277, nx279, nx281, nx283, nx285, nx287, nx289, nx291, nx293
         ;
    wire [64:0] \$dummy ;




    Reg_33 pRegCmp (.D ({pBs_32,pBs_32,pBs_30,pBs_29,pBs_28,pBs_27,pBs_26,pBs_25
           ,pBs_24,pBs_23,fMul[15],fMul[14],fMul[13],fMul[12],fMul[11],fMul[10],
           fMul[9],fMul[8],fMul[7],fMul[6],fMul[5],fMul[4],fMul[3],fMul[2],
           fMul[1],fMul[0],pMux_8,pMux_7,pMux_6,pMux_5,pMux_4,pMux_3,pMux_2}), .en (
           startAndPause), .clk (clk), .rst (rst), .Q ({pReg_32,pReg_31,pReg_30,
           pReg_29,pReg_28,pReg_27,pReg_26,pReg_25,pReg_24,pReg_23,pReg_22,
           pReg_21,pReg_20,pReg_19,pReg_18,pReg_17,pReg_16,pReg_15,pReg_14,
           pReg_13,pReg_12,pReg_11,pReg_10,pReg_9,pReg_8,pReg_7,pReg_6,pReg_5,
           pReg_4,pReg_3,pReg_2,pReg_1,pReg_0}), .Qbar ({\$dummy [0],\$dummy [1]
           ,\$dummy [2],\$dummy [3],\$dummy [4],\$dummy [5],\$dummy [6],
           \$dummy [7],\$dummy [8],\$dummy [9],\$dummy [10],\$dummy [11],
           \$dummy [12],\$dummy [13],\$dummy [14],\$dummy [15],\$dummy [16],
           \$dummy [17],\$dummy [18],\$dummy [19],\$dummy [20],\$dummy [21],
           \$dummy [22],\$dummy [23],\$dummy [24],\$dummy [25],\$dummy [26],
           \$dummy [27],\$dummy [28],\$dummy [29],\$dummy [30],\$dummy [31],
           \$dummy [32]})) ;
    Reg_16 mRegCmp (.D ({m[15],m[14],m[13],m[12],m[11],m[10],m[9],m[8],m[7],m[6]
           ,m[5],m[4],m[3],m[2],m[1],m[0]}), .en (PWR), .clk (start), .rst (rst)
           , .Q ({mReg_15,mReg_14,mReg_13,mReg_12,mReg_11,mReg_10,mReg_9,mReg_8,
           mReg_7,mReg_6,mReg_5,mReg_4,mReg_3,mReg_2,mReg_1,mReg_0}), .Qbar ({
           \$dummy [33],\$dummy [34],\$dummy [35],\$dummy [36],\$dummy [37],
           \$dummy [38],\$dummy [39],\$dummy [40],\$dummy [41],\$dummy [42],
           \$dummy [43],\$dummy [44],\$dummy [45],\$dummy [46],\$dummy [47],
           \$dummy [48]})) ;
    Reg_8 qRegCmp (.D ({q[7],q[6],q[5],q[4],q[3],q[2],q[1],q[0]}), .en (PWR), .clk (
          start), .rst (rst), .Q ({pInit_8,pInit_7,pInit_6,pInit_5,pInit_4,
          pInit_3,pInit_2,pInit_1}), .Qbar ({\$dummy [49],\$dummy [50],
          \$dummy [51],\$dummy [52],\$dummy [53],\$dummy [54],\$dummy [55],
          \$dummy [56]})) ;
    BinaryMux_33 MuxCmp (.a ({pReg_32,pReg_31,pReg_30,pReg_29,pReg_28,pReg_27,
                 pReg_26,pReg_25,pReg_24,pReg_23,pReg_22,pReg_21,pReg_20,pReg_19
                 ,pReg_18,pReg_17,pReg_16,pReg_15,pReg_14,pReg_13,pReg_12,
                 pReg_11,pReg_10,pReg_9,pReg_8,pReg_7,pReg_6,pReg_5,pReg_4,
                 pReg_3,pReg_2,pReg_1,pReg_0}), .b ({pInit_32,pInit_32,pInit_32,
                 pInit_32,pInit_32,pInit_32,pInit_32,pInit_32,pInit_32,pInit_32,
                 pInit_32,pInit_32,pInit_32,pInit_32,pInit_32,pInit_32,pInit_32,
                 pInit_32,pInit_32,pInit_32,pInit_32,pInit_32,pInit_32,pInit_32,
                 pInit_8,pInit_7,pInit_6,pInit_5,pInit_4,pInit_3,pInit_2,pInit_1
                 ,pInit_32}), .sel (sel), .f ({pMux_32,pMux_31,pMux_30,pMux_29,
                 pMux_28,pMux_27,pMux_26,pMux_25,pMux_24,pMux_23,pMux_22,pMux_21
                 ,pMux_20,pMux_19,pMux_18,pMux_17,pMux_16,pMux_15,pMux_14,
                 pMux_13,pMux_12,pMux_11,pMux_10,pMux_9,pMux_8,pMux_7,pMux_6,
                 pMux_5,pMux_4,pMux_3,pMux_2,pMux_1,pMux_0})) ;
    BoothStep BSCmp (.p ({pMux_32,pMux_31,pMux_30,pMux_29,pMux_28,pMux_27,
              pMux_26,pMux_25,pMux_24,pMux_23,pMux_22,pMux_21,pMux_20,pMux_19,
              pMux_18,pMux_17,pMux_16,pMux_15,pMux_14,pMux_13,pMux_12,pMux_11,
              pMux_10,pMux_9,pMux_8,pMux_7,pMux_6,pMux_5,pMux_4,pMux_3,pMux_2,
              pMux_1,pMux_0}), .x ({nx279,nx279,nx281,nx283,nx285,nx287,nx289,
              nx291,nx293,mReg_14,mReg_13,mReg_12,mReg_11,mReg_10,mReg_9,mReg_8,
              mReg_7,mReg_6,mReg_5,mReg_4,mReg_3,mReg_2,mReg_1,mReg_0}), .f ({
              pBs_32,\$dummy [57],pBs_30,pBs_29,pBs_28,pBs_27,pBs_26,pBs_25,
              pBs_24,pBs_23,fMul[15],fMul[14],fMul[13],fMul[12],fMul[11],
              fMul[10],fMul[9],fMul[8],fMul[7],fMul[6],fMul[5],fMul[4],fMul[3],
              fMul[2],fMul[1],fMul[0],\$dummy [58],\$dummy [59],\$dummy [60],
              \$dummy [61],\$dummy [62],\$dummy [63],\$dummy [64]})) ;
    inv01 ix276 (.Y (nx277), .A (mReg_15)) ;
    inv01 ix278 (.Y (nx279), .A (nx277)) ;
    inv01 ix280 (.Y (nx281), .A (nx277)) ;
    inv01 ix282 (.Y (nx283), .A (nx277)) ;
    inv01 ix284 (.Y (nx285), .A (nx277)) ;
    inv01 ix286 (.Y (nx287), .A (nx277)) ;
    inv01 ix288 (.Y (nx289), .A (nx277)) ;
    inv01 ix290 (.Y (nx291), .A (nx277)) ;
    inv01 ix292 (.Y (nx293), .A (nx277)) ;
endmodule


module BoothStep ( p, x, f ) ;

    input [32:0]p ;
    input [23:0]x ;
    output [32:0]f ;

    wire op2_0, op2_23, op2_22, op2_21, op2_20, op2_19, op2_18, op2_17, op2_16, 
         op2_15, op2_14, op2_13, op2_12, op2_11, op2_10, op2_9, op2_8, op2_7, 
         op2_6, op2_5, op2_4, op2_3, op2_2, op2_1, nx28, nx307, nx311, nx317, 
         nx321, nx325, nx329, nx333, nx337, nx341, nx345, nx349, nx353, nx357, 
         nx361, nx365, nx369, nx373, nx377, nx381, nx385, nx389, nx393, nx397, 
         nx401, nx405, nx407, nx414, nx416, nx418, nx421, nx423, nx425, nx427, 
         nx429, nx431, nx433, nx435, nx437, nx439, nx441, nx443, nx445, nx447, 
         nx449, nx451, nx458, nx305, carryIn;
    wire [0:0] \$dummy ;




    assign f[31] = f[32] ;
    assign f[6] = p[8] ;
    assign f[5] = p[7] ;
    assign f[4] = p[6] ;
    assign f[3] = p[5] ;
    assign f[2] = p[4] ;
    assign f[1] = p[3] ;
    assign f[0] = p[2] ;
    NBitAdder_24 AdderCmp (.a ({p[32],p[31],p[30],p[29],p[28],p[27],p[26],p[25],
                 p[24],p[23],p[22],p[21],p[20],p[19],p[18],p[17],p[16],p[15],
                 p[14],p[13],p[12],p[11],p[10],p[9]}), .b ({op2_23,op2_22,op2_21
                 ,op2_20,op2_19,op2_18,op2_17,op2_16,op2_15,op2_14,op2_13,op2_12
                 ,op2_11,op2_10,op2_9,op2_8,op2_7,op2_6,op2_5,op2_4,op2_3,op2_2,
                 op2_1,op2_0}), .carryIn (carryIn), .sum ({f[30],f[29],f[28],
                 f[27],f[26],f[25],f[24],f[23],f[22],f[21],f[20],f[19],f[18],
                 f[17],f[16],f[15],f[14],f[13],f[12],f[11],f[10],f[9],f[8],f[7]}
                 ), .carryOut (\$dummy [0])) ;
    oai221 ix59 (.Y (op2_1), .A0 (x[0]), .A1 (nx435), .B0 (x[1]), .B1 (nx445), .C0 (
           nx307)) ;
    aoi22 ix308 (.Y (nx307), .A0 (x[1]), .A1 (nx414), .B0 (x[0]), .B1 (nx425)) ;
    nor02_2x ix29 (.Y (nx28), .A0 (p[2]), .A1 (nx311)) ;
    xnor2 ix312 (.Y (nx311), .A0 (p[0]), .A1 (p[1])) ;
    oai221 ix77 (.Y (op2_2), .A0 (x[1]), .A1 (nx435), .B0 (x[2]), .B1 (nx445), .C0 (
           nx317)) ;
    aoi22 ix318 (.Y (nx317), .A0 (x[2]), .A1 (nx414), .B0 (x[1]), .B1 (nx425)) ;
    oai221 ix95 (.Y (op2_3), .A0 (x[2]), .A1 (nx435), .B0 (x[3]), .B1 (nx445), .C0 (
           nx321)) ;
    aoi22 ix322 (.Y (nx321), .A0 (x[3]), .A1 (nx414), .B0 (x[2]), .B1 (nx425)) ;
    oai221 ix113 (.Y (op2_4), .A0 (x[3]), .A1 (nx435), .B0 (x[4]), .B1 (nx445), 
           .C0 (nx325)) ;
    aoi22 ix326 (.Y (nx325), .A0 (x[4]), .A1 (nx414), .B0 (x[3]), .B1 (nx425)) ;
    oai221 ix131 (.Y (op2_5), .A0 (x[4]), .A1 (nx435), .B0 (x[5]), .B1 (nx445), 
           .C0 (nx329)) ;
    aoi22 ix330 (.Y (nx329), .A0 (x[5]), .A1 (nx414), .B0 (x[4]), .B1 (nx425)) ;
    oai221 ix149 (.Y (op2_6), .A0 (x[5]), .A1 (nx435), .B0 (x[6]), .B1 (nx445), 
           .C0 (nx333)) ;
    aoi22 ix334 (.Y (nx333), .A0 (x[6]), .A1 (nx414), .B0 (x[5]), .B1 (nx425)) ;
    oai221 ix167 (.Y (op2_7), .A0 (x[6]), .A1 (nx437), .B0 (x[7]), .B1 (nx445), 
           .C0 (nx337)) ;
    aoi22 ix338 (.Y (nx337), .A0 (x[7]), .A1 (nx414), .B0 (x[6]), .B1 (nx425)) ;
    oai221 ix185 (.Y (op2_8), .A0 (x[7]), .A1 (nx437), .B0 (x[8]), .B1 (nx447), 
           .C0 (nx341)) ;
    aoi22 ix342 (.Y (nx341), .A0 (x[8]), .A1 (nx416), .B0 (x[7]), .B1 (nx427)) ;
    oai221 ix203 (.Y (op2_9), .A0 (x[8]), .A1 (nx437), .B0 (x[9]), .B1 (nx447), 
           .C0 (nx345)) ;
    aoi22 ix346 (.Y (nx345), .A0 (x[9]), .A1 (nx416), .B0 (x[8]), .B1 (nx427)) ;
    oai221 ix221 (.Y (op2_10), .A0 (x[9]), .A1 (nx437), .B0 (x[10]), .B1 (nx447)
           , .C0 (nx349)) ;
    aoi22 ix350 (.Y (nx349), .A0 (x[10]), .A1 (nx416), .B0 (x[9]), .B1 (nx427)
          ) ;
    oai221 ix239 (.Y (op2_11), .A0 (x[10]), .A1 (nx437), .B0 (x[11]), .B1 (nx447
           ), .C0 (nx353)) ;
    aoi22 ix354 (.Y (nx353), .A0 (x[11]), .A1 (nx416), .B0 (x[10]), .B1 (nx427)
          ) ;
    oai221 ix257 (.Y (op2_12), .A0 (x[11]), .A1 (nx437), .B0 (x[12]), .B1 (nx447
           ), .C0 (nx357)) ;
    aoi22 ix358 (.Y (nx357), .A0 (x[12]), .A1 (nx416), .B0 (x[11]), .B1 (nx427)
          ) ;
    oai221 ix275 (.Y (op2_13), .A0 (x[12]), .A1 (nx437), .B0 (x[13]), .B1 (nx447
           ), .C0 (nx361)) ;
    aoi22 ix362 (.Y (nx361), .A0 (x[13]), .A1 (nx416), .B0 (x[12]), .B1 (nx427)
          ) ;
    oai221 ix293 (.Y (op2_14), .A0 (x[13]), .A1 (nx439), .B0 (x[14]), .B1 (nx447
           ), .C0 (nx365)) ;
    aoi22 ix366 (.Y (nx365), .A0 (x[14]), .A1 (nx416), .B0 (x[13]), .B1 (nx427)
          ) ;
    oai221 ix311 (.Y (op2_15), .A0 (x[14]), .A1 (nx439), .B0 (x[15]), .B1 (nx449
           ), .C0 (nx369)) ;
    aoi22 ix370 (.Y (nx369), .A0 (x[15]), .A1 (nx418), .B0 (x[14]), .B1 (nx429)
          ) ;
    oai221 ix329 (.Y (op2_16), .A0 (x[15]), .A1 (nx439), .B0 (x[16]), .B1 (nx449
           ), .C0 (nx373)) ;
    aoi22 ix374 (.Y (nx373), .A0 (x[16]), .A1 (nx418), .B0 (x[15]), .B1 (nx429)
          ) ;
    oai221 ix347 (.Y (op2_17), .A0 (x[16]), .A1 (nx439), .B0 (x[17]), .B1 (nx449
           ), .C0 (nx377)) ;
    aoi22 ix378 (.Y (nx377), .A0 (x[17]), .A1 (nx418), .B0 (x[16]), .B1 (nx429)
          ) ;
    oai221 ix365 (.Y (op2_18), .A0 (x[17]), .A1 (nx439), .B0 (x[18]), .B1 (nx449
           ), .C0 (nx381)) ;
    aoi22 ix382 (.Y (nx381), .A0 (x[18]), .A1 (nx418), .B0 (x[17]), .B1 (nx429)
          ) ;
    oai221 ix383 (.Y (op2_19), .A0 (x[18]), .A1 (nx439), .B0 (x[19]), .B1 (nx449
           ), .C0 (nx385)) ;
    aoi22 ix386 (.Y (nx385), .A0 (x[19]), .A1 (nx418), .B0 (x[18]), .B1 (nx429)
          ) ;
    oai221 ix401 (.Y (op2_20), .A0 (x[19]), .A1 (nx439), .B0 (x[20]), .B1 (nx449
           ), .C0 (nx389)) ;
    aoi22 ix390 (.Y (nx389), .A0 (x[20]), .A1 (nx418), .B0 (x[19]), .B1 (nx429)
          ) ;
    oai221 ix419 (.Y (op2_21), .A0 (x[20]), .A1 (nx441), .B0 (x[21]), .B1 (nx449
           ), .C0 (nx393)) ;
    aoi22 ix394 (.Y (nx393), .A0 (x[21]), .A1 (nx418), .B0 (x[20]), .B1 (nx429)
          ) ;
    oai221 ix437 (.Y (op2_22), .A0 (x[21]), .A1 (nx441), .B0 (x[22]), .B1 (nx451
           ), .C0 (nx397)) ;
    aoi22 ix398 (.Y (nx397), .A0 (x[22]), .A1 (nx421), .B0 (x[21]), .B1 (nx431)
          ) ;
    oai221 ix455 (.Y (op2_23), .A0 (x[22]), .A1 (nx441), .B0 (x[23]), .B1 (nx451
           ), .C0 (nx401)) ;
    aoi22 ix402 (.Y (nx401), .A0 (x[23]), .A1 (nx421), .B0 (x[22]), .B1 (nx431)
          ) ;
    nand02 ix35 (.Y (op2_0), .A0 (nx405), .A1 (nx441)) ;
    inv01 ix408 (.Y (nx407), .A (nx28)) ;
    inv02 ix413 (.Y (nx414), .A (nx407)) ;
    inv02 ix415 (.Y (nx416), .A (nx407)) ;
    inv02 ix417 (.Y (nx418), .A (nx407)) ;
    inv02 ix420 (.Y (nx421), .A (nx407)) ;
    inv02 ix424 (.Y (nx425), .A (nx423)) ;
    inv02 ix426 (.Y (nx427), .A (nx423)) ;
    inv02 ix428 (.Y (nx429), .A (nx423)) ;
    inv02 ix430 (.Y (nx431), .A (nx423)) ;
    inv02 ix434 (.Y (nx435), .A (nx433)) ;
    inv02 ix436 (.Y (nx437), .A (nx433)) ;
    inv02 ix438 (.Y (nx439), .A (nx433)) ;
    inv02 ix440 (.Y (nx441), .A (nx433)) ;
    inv02 ix444 (.Y (nx445), .A (nx443)) ;
    inv02 ix446 (.Y (nx447), .A (nx458)) ;
    inv02 ix448 (.Y (nx449), .A (nx458)) ;
    inv02 ix450 (.Y (nx451), .A (nx458)) ;
    nor03_2x ix296 (.Y (nx433), .A0 (p[1]), .A1 (nx305), .A2 (p[0])) ;
    nor02ii ix302 (.Y (nx443), .A0 (nx433), .A1 (carryIn)) ;
    nand03 ix51 (.Y (nx423), .A0 (p[1]), .A1 (nx305), .A2 (p[0])) ;
    mux21 ix406 (.Y (nx405), .A0 (nx458), .A1 (nx28), .S0 (x[0])) ;
    inv01 ix457 (.Y (nx458), .A (nx445)) ;
    inv02 reg_nx305 (.Y (nx305), .A (p[2])) ;
    aoi21 reg_carryIn (.Y (carryIn), .A0 (p[1]), .A1 (p[0]), .B0 (nx305)) ;
endmodule


module NBitAdder_24 ( a, b, carryIn, sum, carryOut ) ;

    input [23:0]a ;
    input [23:0]b ;
    input carryIn ;
    output [23:0]sum ;
    output carryOut ;

    wire temp_22, temp_21, temp_20, temp_19, temp_18, temp_17, temp_16, temp_15, 
         temp_14, temp_13, temp_12, temp_11, temp_10, temp_9, temp_8, temp_7, 
         temp_6, temp_5, temp_4, temp_3, temp_2, temp_1, temp_0;



    FullAdder f0 (.a (a[0]), .b (b[0]), .cin (carryIn), .s (sum[0]), .cout (
              temp_0)) ;
    FullAdder loop1_1_fx (.a (a[1]), .b (b[1]), .cin (temp_0), .s (sum[1]), .cout (
              temp_1)) ;
    FullAdder loop1_2_fx (.a (a[2]), .b (b[2]), .cin (temp_1), .s (sum[2]), .cout (
              temp_2)) ;
    FullAdder loop1_3_fx (.a (a[3]), .b (b[3]), .cin (temp_2), .s (sum[3]), .cout (
              temp_3)) ;
    FullAdder loop1_4_fx (.a (a[4]), .b (b[4]), .cin (temp_3), .s (sum[4]), .cout (
              temp_4)) ;
    FullAdder loop1_5_fx (.a (a[5]), .b (b[5]), .cin (temp_4), .s (sum[5]), .cout (
              temp_5)) ;
    FullAdder loop1_6_fx (.a (a[6]), .b (b[6]), .cin (temp_5), .s (sum[6]), .cout (
              temp_6)) ;
    FullAdder loop1_7_fx (.a (a[7]), .b (b[7]), .cin (temp_6), .s (sum[7]), .cout (
              temp_7)) ;
    FullAdder loop1_8_fx (.a (a[8]), .b (b[8]), .cin (temp_7), .s (sum[8]), .cout (
              temp_8)) ;
    FullAdder loop1_9_fx (.a (a[9]), .b (b[9]), .cin (temp_8), .s (sum[9]), .cout (
              temp_9)) ;
    FullAdder loop1_10_fx (.a (a[10]), .b (b[10]), .cin (temp_9), .s (sum[10]), 
              .cout (temp_10)) ;
    FullAdder loop1_11_fx (.a (a[11]), .b (b[11]), .cin (temp_10), .s (sum[11])
              , .cout (temp_11)) ;
    FullAdder loop1_12_fx (.a (a[12]), .b (b[12]), .cin (temp_11), .s (sum[12])
              , .cout (temp_12)) ;
    FullAdder loop1_13_fx (.a (a[13]), .b (b[13]), .cin (temp_12), .s (sum[13])
              , .cout (temp_13)) ;
    FullAdder loop1_14_fx (.a (a[14]), .b (b[14]), .cin (temp_13), .s (sum[14])
              , .cout (temp_14)) ;
    FullAdder loop1_15_fx (.a (a[15]), .b (b[15]), .cin (temp_14), .s (sum[15])
              , .cout (temp_15)) ;
    FullAdder loop1_16_fx (.a (a[16]), .b (b[16]), .cin (temp_15), .s (sum[16])
              , .cout (temp_16)) ;
    FullAdder loop1_17_fx (.a (a[17]), .b (b[17]), .cin (temp_16), .s (sum[17])
              , .cout (temp_17)) ;
    FullAdder loop1_18_fx (.a (a[18]), .b (b[18]), .cin (temp_17), .s (sum[18])
              , .cout (temp_18)) ;
    FullAdder loop1_19_fx (.a (a[19]), .b (b[19]), .cin (temp_18), .s (sum[19])
              , .cout (temp_19)) ;
    FullAdder loop1_20_fx (.a (a[20]), .b (b[20]), .cin (temp_19), .s (sum[20])
              , .cout (temp_20)) ;
    FullAdder loop1_21_fx (.a (a[21]), .b (b[21]), .cin (temp_20), .s (sum[21])
              , .cout (temp_21)) ;
    FullAdder loop1_22_fx (.a (a[22]), .b (b[22]), .cin (temp_21), .s (sum[22])
              , .cout (temp_22)) ;
    FullAdder loop1_23_fx (.a (a[23]), .b (b[23]), .cin (temp_22), .s (sum[23])
              , .cout (carryOut)) ;
endmodule


module BinaryMux_33 ( a, b, sel, f ) ;

    input [32:0]a ;
    input [32:0]b ;
    input sel ;
    output [32:0]f ;

    wire nx302, nx304, nx306, nx308, nx298, nx314;



    mux21_ni ix15 (.Y (f[1]), .A0 (a[1]), .A1 (b[1]), .S0 (nx314)) ;
    mux21_ni ix23 (.Y (f[2]), .A0 (a[2]), .A1 (b[2]), .S0 (nx314)) ;
    mux21_ni ix31 (.Y (f[3]), .A0 (a[3]), .A1 (b[3]), .S0 (nx314)) ;
    mux21_ni ix39 (.Y (f[4]), .A0 (a[4]), .A1 (b[4]), .S0 (nx314)) ;
    mux21_ni ix47 (.Y (f[5]), .A0 (a[5]), .A1 (b[5]), .S0 (nx314)) ;
    mux21_ni ix55 (.Y (f[6]), .A0 (a[6]), .A1 (b[6]), .S0 (nx314)) ;
    mux21_ni ix63 (.Y (f[7]), .A0 (a[7]), .A1 (b[7]), .S0 (nx302)) ;
    mux21_ni ix71 (.Y (f[8]), .A0 (a[8]), .A1 (b[8]), .S0 (nx302)) ;
    mux21_ni ix79 (.Y (f[9]), .A0 (a[9]), .A1 (b[9]), .S0 (nx302)) ;
    mux21_ni ix87 (.Y (f[10]), .A0 (a[10]), .A1 (b[10]), .S0 (nx302)) ;
    mux21_ni ix95 (.Y (f[11]), .A0 (a[11]), .A1 (b[11]), .S0 (nx302)) ;
    mux21_ni ix103 (.Y (f[12]), .A0 (a[12]), .A1 (b[12]), .S0 (nx302)) ;
    mux21_ni ix111 (.Y (f[13]), .A0 (a[13]), .A1 (b[13]), .S0 (nx302)) ;
    mux21_ni ix119 (.Y (f[14]), .A0 (a[14]), .A1 (b[14]), .S0 (nx304)) ;
    mux21_ni ix127 (.Y (f[15]), .A0 (a[15]), .A1 (b[15]), .S0 (nx304)) ;
    mux21_ni ix135 (.Y (f[16]), .A0 (a[16]), .A1 (b[16]), .S0 (nx304)) ;
    mux21_ni ix143 (.Y (f[17]), .A0 (a[17]), .A1 (b[17]), .S0 (nx304)) ;
    mux21_ni ix151 (.Y (f[18]), .A0 (a[18]), .A1 (b[18]), .S0 (nx304)) ;
    mux21_ni ix159 (.Y (f[19]), .A0 (a[19]), .A1 (b[19]), .S0 (nx304)) ;
    mux21_ni ix167 (.Y (f[20]), .A0 (a[20]), .A1 (b[20]), .S0 (nx304)) ;
    mux21_ni ix175 (.Y (f[21]), .A0 (a[21]), .A1 (b[21]), .S0 (nx306)) ;
    mux21_ni ix183 (.Y (f[22]), .A0 (a[22]), .A1 (b[22]), .S0 (nx306)) ;
    mux21_ni ix191 (.Y (f[23]), .A0 (a[23]), .A1 (b[23]), .S0 (nx306)) ;
    mux21_ni ix199 (.Y (f[24]), .A0 (a[24]), .A1 (b[24]), .S0 (nx306)) ;
    mux21_ni ix207 (.Y (f[25]), .A0 (a[25]), .A1 (b[25]), .S0 (nx306)) ;
    mux21_ni ix215 (.Y (f[26]), .A0 (a[26]), .A1 (b[26]), .S0 (nx306)) ;
    mux21_ni ix223 (.Y (f[27]), .A0 (a[27]), .A1 (b[27]), .S0 (nx306)) ;
    mux21_ni ix231 (.Y (f[28]), .A0 (a[28]), .A1 (b[28]), .S0 (nx308)) ;
    mux21_ni ix239 (.Y (f[29]), .A0 (a[29]), .A1 (b[29]), .S0 (nx308)) ;
    mux21_ni ix247 (.Y (f[30]), .A0 (a[30]), .A1 (b[30]), .S0 (nx308)) ;
    mux21_ni ix255 (.Y (f[31]), .A0 (a[31]), .A1 (b[31]), .S0 (nx308)) ;
    mux21_ni ix263 (.Y (f[32]), .A0 (a[32]), .A1 (b[32]), .S0 (nx308)) ;
    inv02 ix301 (.Y (nx302), .A (nx298)) ;
    inv02 ix303 (.Y (nx304), .A (nx298)) ;
    inv02 ix305 (.Y (nx306), .A (nx298)) ;
    inv02 ix307 (.Y (nx308), .A (nx298)) ;
    inv02 reg_nx298 (.Y (nx298), .A (sel)) ;
    ao22 reg_f_0 (.Y (f[0]), .A0 (a[0]), .A1 (nx298), .B0 (b[0]), .B1 (nx314)) ;
    inv02 ix313 (.Y (nx314), .A (nx298)) ;
endmodule


module Reg_8 ( D, en, clk, rst, Q, Qbar ) ;

    input [7:0]D ;
    input en ;
    input clk ;
    input rst ;
    output [7:0]Q ;
    output [7:0]Qbar ;

    wire nx254, nx264, nx274, nx284, nx294, nx304, nx314, nx324, nx334, nx344, 
         nx354, nx364, nx374, nx384, nx394, nx404, nx416, nx421, nx426, nx431, 
         nx436, nx441, nx446, nx451, nx483, nx485, nx487, nx489, nx491, nx493, 
         nx495, nx497;
    wire [15:0] \$dummy ;




    dffs_ni reg_Qbar_0 (.Q (Qbar[0]), .QB (\$dummy [0]), .D (nx334), .CLK (nx493
            ), .S (nx485)) ;
    mux21_ni ix335 (.Y (nx334), .A0 (Qbar[0]), .A1 (nx416), .S0 (en)) ;
    inv01 ix417 (.Y (nx416), .A (D[0])) ;
    dffs_ni reg_Qbar_1 (.Q (Qbar[1]), .QB (\$dummy [1]), .D (nx344), .CLK (nx493
            ), .S (nx485)) ;
    mux21_ni ix345 (.Y (nx344), .A0 (Qbar[1]), .A1 (nx421), .S0 (en)) ;
    inv01 ix422 (.Y (nx421), .A (D[1])) ;
    dffs_ni reg_Qbar_2 (.Q (Qbar[2]), .QB (\$dummy [2]), .D (nx354), .CLK (nx493
            ), .S (nx485)) ;
    mux21_ni ix355 (.Y (nx354), .A0 (Qbar[2]), .A1 (nx426), .S0 (en)) ;
    inv01 ix427 (.Y (nx426), .A (D[2])) ;
    dffs_ni reg_Qbar_3 (.Q (Qbar[3]), .QB (\$dummy [3]), .D (nx364), .CLK (nx493
            ), .S (nx485)) ;
    mux21_ni ix365 (.Y (nx364), .A0 (Qbar[3]), .A1 (nx431), .S0 (en)) ;
    inv01 ix432 (.Y (nx431), .A (D[3])) ;
    dffs_ni reg_Qbar_4 (.Q (Qbar[4]), .QB (\$dummy [4]), .D (nx374), .CLK (nx493
            ), .S (nx485)) ;
    mux21_ni ix375 (.Y (nx374), .A0 (Qbar[4]), .A1 (nx436), .S0 (en)) ;
    inv01 ix437 (.Y (nx436), .A (D[4])) ;
    dffs_ni reg_Qbar_5 (.Q (Qbar[5]), .QB (\$dummy [5]), .D (nx384), .CLK (nx493
            ), .S (nx485)) ;
    mux21_ni ix385 (.Y (nx384), .A0 (Qbar[5]), .A1 (nx441), .S0 (en)) ;
    inv01 ix442 (.Y (nx441), .A (D[5])) ;
    dffs_ni reg_Qbar_6 (.Q (Qbar[6]), .QB (\$dummy [6]), .D (nx394), .CLK (nx493
            ), .S (nx485)) ;
    mux21_ni ix395 (.Y (nx394), .A0 (Qbar[6]), .A1 (nx446), .S0 (en)) ;
    inv01 ix447 (.Y (nx446), .A (D[6])) ;
    dffs_ni reg_Qbar_7 (.Q (Qbar[7]), .QB (\$dummy [7]), .D (nx404), .CLK (nx495
            ), .S (nx487)) ;
    mux21_ni ix405 (.Y (nx404), .A0 (Qbar[7]), .A1 (nx451), .S0 (en)) ;
    inv01 ix452 (.Y (nx451), .A (D[7])) ;
    dffr reg_Q_0 (.Q (Q[0]), .QB (\$dummy [8]), .D (nx254), .CLK (nx495), .R (
         nx487)) ;
    mux21_ni ix255 (.Y (nx254), .A0 (Q[0]), .A1 (D[0]), .S0 (en)) ;
    dffr reg_Q_1 (.Q (Q[1]), .QB (\$dummy [9]), .D (nx264), .CLK (nx495), .R (
         nx487)) ;
    mux21_ni ix265 (.Y (nx264), .A0 (Q[1]), .A1 (D[1]), .S0 (en)) ;
    dffr reg_Q_2 (.Q (Q[2]), .QB (\$dummy [10]), .D (nx274), .CLK (nx495), .R (
         nx487)) ;
    mux21_ni ix275 (.Y (nx274), .A0 (Q[2]), .A1 (D[2]), .S0 (en)) ;
    dffr reg_Q_3 (.Q (Q[3]), .QB (\$dummy [11]), .D (nx284), .CLK (nx495), .R (
         nx487)) ;
    mux21_ni ix285 (.Y (nx284), .A0 (Q[3]), .A1 (D[3]), .S0 (en)) ;
    dffr reg_Q_4 (.Q (Q[4]), .QB (\$dummy [12]), .D (nx294), .CLK (nx495), .R (
         nx487)) ;
    mux21_ni ix295 (.Y (nx294), .A0 (Q[4]), .A1 (D[4]), .S0 (en)) ;
    dffr reg_Q_5 (.Q (Q[5]), .QB (\$dummy [13]), .D (nx304), .CLK (nx495), .R (
         nx487)) ;
    mux21_ni ix305 (.Y (nx304), .A0 (Q[5]), .A1 (D[5]), .S0 (en)) ;
    dffr reg_Q_6 (.Q (Q[6]), .QB (\$dummy [14]), .D (nx314), .CLK (nx497), .R (
         nx489)) ;
    mux21_ni ix315 (.Y (nx314), .A0 (Q[6]), .A1 (D[6]), .S0 (en)) ;
    dffr reg_Q_7 (.Q (Q[7]), .QB (\$dummy [15]), .D (nx324), .CLK (nx497), .R (
         nx489)) ;
    mux21_ni ix325 (.Y (nx324), .A0 (Q[7]), .A1 (D[7]), .S0 (en)) ;
    inv01 ix482 (.Y (nx483), .A (rst)) ;
    inv02 ix484 (.Y (nx485), .A (nx483)) ;
    inv02 ix486 (.Y (nx487), .A (nx483)) ;
    inv02 ix488 (.Y (nx489), .A (nx483)) ;
    inv01 ix490 (.Y (nx491), .A (clk)) ;
    inv02 ix492 (.Y (nx493), .A (nx491)) ;
    inv02 ix494 (.Y (nx495), .A (nx491)) ;
    inv02 ix496 (.Y (nx497), .A (nx491)) ;
endmodule


module Reg_16 ( D, en, clk, rst, Q, Qbar ) ;

    input [15:0]D ;
    input en ;
    input clk ;
    input rst ;
    output [15:0]Q ;
    output [15:0]Qbar ;

    wire nx470, nx480, nx490, nx500, nx510, nx520, nx530, nx540, nx550, nx560, 
         nx570, nx580, nx590, nx600, nx610, nx620, nx630, nx640, nx650, nx660, 
         nx670, nx680, nx690, nx700, nx710, nx720, nx730, nx740, nx750, nx760, 
         nx770, nx780, nx792, nx797, nx802, nx807, nx812, nx817, nx822, nx827, 
         nx832, nx837, nx842, nx847, nx852, nx857, nx862, nx867, nx929, nx931, 
         nx933, nx937, nx939, nx941, nx943, nx945, nx923, nx935, 
         nx935_XX0_XREP23, nx925, nx927, nx923_XX0_XREP21, nx982, nx983, nx984, 
         nx985;
    wire [31:0] \$dummy ;




    dffs_ni reg_Qbar_0 (.Q (Qbar[0]), .QB (\$dummy [0]), .D (nx630), .CLK (nx925
            ), .S (nx937)) ;
    mux21_ni ix631 (.Y (nx630), .A0 (Qbar[0]), .A1 (nx792), .S0 (en)) ;
    inv01 ix793 (.Y (nx792), .A (D[0])) ;
    dffs_ni reg_Qbar_1 (.Q (Qbar[1]), .QB (\$dummy [1]), .D (nx640), .CLK (nx983
            ), .S (nx937)) ;
    mux21_ni ix641 (.Y (nx640), .A0 (Qbar[1]), .A1 (nx797), .S0 (en)) ;
    inv01 ix798 (.Y (nx797), .A (D[1])) ;
    dffs_ni reg_Qbar_2 (.Q (Qbar[2]), .QB (\$dummy [2]), .D (nx650), .CLK (nx983
            ), .S (nx937)) ;
    mux21_ni ix651 (.Y (nx650), .A0 (Qbar[2]), .A1 (nx802), .S0 (en)) ;
    inv01 ix803 (.Y (nx802), .A (D[2])) ;
    dffs_ni reg_Qbar_3 (.Q (Qbar[3]), .QB (\$dummy [3]), .D (nx660), .CLK (nx983
            ), .S (nx937)) ;
    mux21_ni ix661 (.Y (nx660), .A0 (Qbar[3]), .A1 (nx807), .S0 (en)) ;
    inv01 ix808 (.Y (nx807), .A (D[3])) ;
    dffs_ni reg_Qbar_4 (.Q (Qbar[4]), .QB (\$dummy [4]), .D (nx670), .CLK (nx982
            ), .S (nx937)) ;
    mux21_ni ix671 (.Y (nx670), .A0 (Qbar[4]), .A1 (nx812), .S0 (en)) ;
    inv01 ix813 (.Y (nx812), .A (D[4])) ;
    dffs_ni reg_Qbar_5 (.Q (Qbar[5]), .QB (\$dummy [5]), .D (nx680), .CLK (nx982
            ), .S (nx937)) ;
    mux21_ni ix681 (.Y (nx680), .A0 (Qbar[5]), .A1 (nx817), .S0 (en)) ;
    inv01 ix818 (.Y (nx817), .A (D[5])) ;
    dffs_ni reg_Qbar_6 (.Q (Qbar[6]), .QB (\$dummy [6]), .D (nx690), .CLK (nx982
            ), .S (nx937)) ;
    mux21_ni ix691 (.Y (nx690), .A0 (Qbar[6]), .A1 (nx822), .S0 (en)) ;
    inv01 ix823 (.Y (nx822), .A (D[6])) ;
    dffs_ni reg_Qbar_7 (.Q (Qbar[7]), .QB (\$dummy [7]), .D (nx700), .CLK (nx927
            ), .S (nx939)) ;
    mux21_ni ix701 (.Y (nx700), .A0 (Qbar[7]), .A1 (nx827), .S0 (en)) ;
    inv01 ix828 (.Y (nx827), .A (D[7])) ;
    dffs_ni reg_Qbar_8 (.Q (Qbar[8]), .QB (\$dummy [8]), .D (nx710), .CLK (nx985
            ), .S (nx939)) ;
    mux21_ni ix711 (.Y (nx710), .A0 (Qbar[8]), .A1 (nx832), .S0 (en)) ;
    inv01 ix833 (.Y (nx832), .A (D[8])) ;
    dffs_ni reg_Qbar_9 (.Q (Qbar[9]), .QB (\$dummy [9]), .D (nx720), .CLK (nx985
            ), .S (nx939)) ;
    mux21_ni ix721 (.Y (nx720), .A0 (Qbar[9]), .A1 (nx837), .S0 (en)) ;
    inv01 ix838 (.Y (nx837), .A (D[9])) ;
    dffs_ni reg_Qbar_10 (.Q (Qbar[10]), .QB (\$dummy [10]), .D (nx730), .CLK (
            nx985), .S (nx939)) ;
    mux21_ni ix731 (.Y (nx730), .A0 (Qbar[10]), .A1 (nx842), .S0 (en)) ;
    inv01 ix843 (.Y (nx842), .A (D[10])) ;
    dffs_ni reg_Qbar_11 (.Q (Qbar[11]), .QB (\$dummy [11]), .D (nx740), .CLK (
            nx984), .S (nx939)) ;
    mux21_ni ix741 (.Y (nx740), .A0 (Qbar[11]), .A1 (nx847), .S0 (en)) ;
    inv01 ix848 (.Y (nx847), .A (D[11])) ;
    dffs_ni reg_Qbar_12 (.Q (Qbar[12]), .QB (\$dummy [12]), .D (nx750), .CLK (
            nx984), .S (nx939)) ;
    mux21_ni ix751 (.Y (nx750), .A0 (Qbar[12]), .A1 (nx852), .S0 (en)) ;
    inv01 ix853 (.Y (nx852), .A (D[12])) ;
    dffs_ni reg_Qbar_13 (.Q (Qbar[13]), .QB (\$dummy [13]), .D (nx760), .CLK (
            nx984), .S (nx939)) ;
    mux21_ni ix761 (.Y (nx760), .A0 (Qbar[13]), .A1 (nx857), .S0 (en)) ;
    inv01 ix858 (.Y (nx857), .A (D[13])) ;
    dffs_ni reg_Qbar_14 (.Q (Qbar[14]), .QB (\$dummy [14]), .D (nx770), .CLK (
            nx929), .S (nx941)) ;
    mux21_ni ix771 (.Y (nx770), .A0 (Qbar[14]), .A1 (nx862), .S0 (en)) ;
    inv01 ix863 (.Y (nx862), .A (D[14])) ;
    dffs_ni reg_Qbar_15 (.Q (Qbar[15]), .QB (\$dummy [15]), .D (nx780), .CLK (
            nx929), .S (nx941)) ;
    mux21_ni ix781 (.Y (nx780), .A0 (Qbar[15]), .A1 (nx867), .S0 (en)) ;
    inv01 ix868 (.Y (nx867), .A (D[15])) ;
    dffr reg_Q_0 (.Q (Q[0]), .QB (\$dummy [16]), .D (nx470), .CLK (nx929), .R (
         nx941)) ;
    mux21_ni ix471 (.Y (nx470), .A0 (Q[0]), .A1 (D[0]), .S0 (en)) ;
    dffr reg_Q_1 (.Q (Q[1]), .QB (\$dummy [17]), .D (nx480), .CLK (nx929), .R (
         nx941)) ;
    mux21_ni ix481 (.Y (nx480), .A0 (Q[1]), .A1 (D[1]), .S0 (en)) ;
    dffr reg_Q_2 (.Q (Q[2]), .QB (\$dummy [18]), .D (nx490), .CLK (nx929), .R (
         nx941)) ;
    mux21_ni ix491 (.Y (nx490), .A0 (Q[2]), .A1 (D[2]), .S0 (en)) ;
    dffr reg_Q_3 (.Q (Q[3]), .QB (\$dummy [19]), .D (nx500), .CLK (nx929), .R (
         nx941)) ;
    mux21_ni ix501 (.Y (nx500), .A0 (Q[3]), .A1 (D[3]), .S0 (en)) ;
    dffr reg_Q_4 (.Q (Q[4]), .QB (\$dummy [20]), .D (nx510), .CLK (nx929), .R (
         nx941)) ;
    mux21_ni ix511 (.Y (nx510), .A0 (Q[4]), .A1 (D[4]), .S0 (en)) ;
    dffr reg_Q_5 (.Q (Q[5]), .QB (\$dummy [21]), .D (nx520), .CLK (nx931), .R (
         nx943)) ;
    mux21_ni ix521 (.Y (nx520), .A0 (Q[5]), .A1 (D[5]), .S0 (en)) ;
    dffr reg_Q_6 (.Q (Q[6]), .QB (\$dummy [22]), .D (nx530), .CLK (nx931), .R (
         nx943)) ;
    mux21_ni ix531 (.Y (nx530), .A0 (Q[6]), .A1 (D[6]), .S0 (en)) ;
    dffr reg_Q_7 (.Q (Q[7]), .QB (\$dummy [23]), .D (nx540), .CLK (nx931), .R (
         nx943)) ;
    mux21_ni ix541 (.Y (nx540), .A0 (Q[7]), .A1 (D[7]), .S0 (en)) ;
    dffr reg_Q_8 (.Q (Q[8]), .QB (\$dummy [24]), .D (nx550), .CLK (nx931), .R (
         nx943)) ;
    mux21_ni ix551 (.Y (nx550), .A0 (Q[8]), .A1 (D[8]), .S0 (en)) ;
    dffr reg_Q_9 (.Q (Q[9]), .QB (\$dummy [25]), .D (nx560), .CLK (nx931), .R (
         nx943)) ;
    mux21_ni ix561 (.Y (nx560), .A0 (Q[9]), .A1 (D[9]), .S0 (en)) ;
    dffr reg_Q_10 (.Q (Q[10]), .QB (\$dummy [26]), .D (nx570), .CLK (nx931), .R (
         nx943)) ;
    mux21_ni ix571 (.Y (nx570), .A0 (Q[10]), .A1 (D[10]), .S0 (en)) ;
    dffr reg_Q_11 (.Q (Q[11]), .QB (\$dummy [27]), .D (nx580), .CLK (nx931), .R (
         nx943)) ;
    mux21_ni ix581 (.Y (nx580), .A0 (Q[11]), .A1 (D[11]), .S0 (en)) ;
    dffr reg_Q_12 (.Q (Q[12]), .QB (\$dummy [28]), .D (nx590), .CLK (nx933), .R (
         nx945)) ;
    mux21_ni ix591 (.Y (nx590), .A0 (Q[12]), .A1 (D[12]), .S0 (en)) ;
    dffr reg_Q_13 (.Q (Q[13]), .QB (\$dummy [29]), .D (nx600), .CLK (nx933), .R (
         nx945)) ;
    mux21_ni ix601 (.Y (nx600), .A0 (Q[13]), .A1 (D[13]), .S0 (en)) ;
    dffr reg_Q_14 (.Q (Q[14]), .QB (\$dummy [30]), .D (nx610), .CLK (nx933), .R (
         nx945)) ;
    mux21_ni ix611 (.Y (nx610), .A0 (Q[14]), .A1 (D[14]), .S0 (en)) ;
    dffr reg_Q_15 (.Q (Q[15]), .QB (\$dummy [31]), .D (nx620), .CLK (nx933), .R (
         nx945)) ;
    mux21_ni ix621 (.Y (nx620), .A0 (Q[15]), .A1 (D[15]), .S0 (en)) ;
    inv02 ix928 (.Y (nx929), .A (nx923)) ;
    inv02 ix930 (.Y (nx931), .A (nx923)) ;
    inv02 ix932 (.Y (nx933), .A (nx923)) ;
    inv02 ix936 (.Y (nx937), .A (nx935)) ;
    inv02 ix938 (.Y (nx939), .A (nx935)) ;
    inv02 ix940 (.Y (nx941), .A (nx935_XX0_XREP23)) ;
    inv02 ix942 (.Y (nx943), .A (nx935_XX0_XREP23)) ;
    inv02 ix944 (.Y (nx945), .A (nx935)) ;
    inv01 ix922 (.Y (nx923), .A (clk)) ;
    inv01 ix934 (.Y (nx935), .A (rst)) ;
    inv01 ix934_0_XREP23 (.Y (nx935_XX0_XREP23), .A (rst)) ;
    inv02 ix924 (.Y (nx925), .A (nx923_XX0_XREP21)) ;
    inv02 ix926 (.Y (nx927), .A (nx923_XX0_XREP21)) ;
    inv01 ix922_0_XREP21 (.Y (nx923_XX0_XREP21), .A (clk)) ;
    buf04 ix986 (.Y (nx982), .A (nx925)) ;
    buf04 ix987 (.Y (nx983), .A (nx925)) ;
    buf04 ix988 (.Y (nx984), .A (nx927)) ;
    buf04 ix989 (.Y (nx985), .A (nx927)) ;
endmodule


module Reg_33 ( D, en, clk, rst, Q, Qbar ) ;

    input [32:0]D ;
    input en ;
    input clk ;
    input rst ;
    output [32:0]Q ;
    output [32:0]Qbar ;

    wire nx929, nx939, nx949, nx959, nx969, nx979, nx989, nx999, nx1009, nx1019, 
         nx1029, nx1039, nx1049, nx1059, nx1069, nx1079, nx1089, nx1099, nx1109, 
         nx1119, nx1129, nx1139, nx1149, nx1159, nx1169, nx1179, nx1189, nx1199, 
         nx1209, nx1219, nx1229, nx1239, nx1249, nx1259, nx1269, nx1279, nx1289, 
         nx1299, nx1309, nx1319, nx1329, nx1339, nx1349, nx1359, nx1369, nx1379, 
         nx1389, nx1399, nx1409, nx1419, nx1429, nx1439, nx1449, nx1459, nx1469, 
         nx1479, nx1489, nx1499, nx1509, nx1519, nx1529, nx1539, nx1549, nx1559, 
         nx1569, nx1579, nx1591, nx1596, nx1601, nx1606, nx1611, nx1616, nx1621, 
         nx1626, nx1631, nx1636, nx1641, nx1646, nx1651, nx1656, nx1661, nx1666, 
         nx1671, nx1676, nx1681, nx1686, nx1691, nx1696, nx1701, nx1706, nx1711, 
         nx1716, nx1721, nx1726, nx1731, nx1736, nx1741, nx1746, nx1751, nx1860, 
         nx1862, nx1864, nx1866, nx1868, nx1870, nx1872, nx1874, nx1876, nx1878, 
         nx1880, nx1882, nx1884, nx1886, nx1888, nx1890, nx1892, nx1894, nx1896, 
         nx1898, nx1900, nx1904, nx1906, nx1908, nx1910, nx1912, nx1914, nx1916, 
         nx1918, nx1920, nx1922, nx1926, nx1924, nx1924_XX0_XREP13, nx1928, 
         nx1928_XX0_XREP15, nx1858, nx1858_XX0_XREP17, nx1902, nx1902_XX0_XREP19
         ;
    wire [65:0] \$dummy ;




    dffs_ni reg_Qbar_0 (.Q (Qbar[0]), .QB (\$dummy [0]), .D (nx1259), .CLK (
            nx1882), .S (nx1904)) ;
    mux21_ni ix1260 (.Y (nx1259), .A0 (Qbar[0]), .A1 (nx1591), .S0 (nx1860)) ;
    inv01 ix1592 (.Y (nx1591), .A (D[0])) ;
    dffs_ni reg_Qbar_1 (.Q (Qbar[1]), .QB (\$dummy [1]), .D (nx1269), .CLK (
            nx1882), .S (nx1904)) ;
    mux21_ni ix1270 (.Y (nx1269), .A0 (Qbar[1]), .A1 (nx1596), .S0 (nx1860)) ;
    inv01 ix1597 (.Y (nx1596), .A (D[1])) ;
    dffs_ni reg_Qbar_2 (.Q (Qbar[2]), .QB (\$dummy [2]), .D (nx1279), .CLK (
            nx1882), .S (nx1904)) ;
    mux21_ni ix1280 (.Y (nx1279), .A0 (Qbar[2]), .A1 (nx1601), .S0 (nx1860)) ;
    inv01 ix1602 (.Y (nx1601), .A (D[2])) ;
    dffs_ni reg_Qbar_3 (.Q (Qbar[3]), .QB (\$dummy [3]), .D (nx1289), .CLK (
            nx1882), .S (nx1904)) ;
    mux21_ni ix1290 (.Y (nx1289), .A0 (Qbar[3]), .A1 (nx1606), .S0 (nx1860)) ;
    inv01 ix1607 (.Y (nx1606), .A (D[3])) ;
    dffs_ni reg_Qbar_4 (.Q (Qbar[4]), .QB (\$dummy [4]), .D (nx1299), .CLK (
            nx1882), .S (nx1904)) ;
    mux21_ni ix1300 (.Y (nx1299), .A0 (Qbar[4]), .A1 (nx1611), .S0 (nx1860)) ;
    inv01 ix1612 (.Y (nx1611), .A (D[4])) ;
    dffs_ni reg_Qbar_5 (.Q (Qbar[5]), .QB (\$dummy [5]), .D (nx1309), .CLK (
            nx1882), .S (nx1904)) ;
    mux21_ni ix1310 (.Y (nx1309), .A0 (Qbar[5]), .A1 (nx1616), .S0 (nx1860)) ;
    inv01 ix1617 (.Y (nx1616), .A (D[5])) ;
    dffs_ni reg_Qbar_6 (.Q (Qbar[6]), .QB (\$dummy [6]), .D (nx1319), .CLK (
            nx1882), .S (nx1904)) ;
    mux21_ni ix1320 (.Y (nx1319), .A0 (Qbar[6]), .A1 (nx1621), .S0 (nx1860)) ;
    inv01 ix1622 (.Y (nx1621), .A (D[6])) ;
    dffs_ni reg_Qbar_7 (.Q (Qbar[7]), .QB (\$dummy [7]), .D (nx1329), .CLK (
            nx1884), .S (nx1906)) ;
    mux21_ni ix1330 (.Y (nx1329), .A0 (Qbar[7]), .A1 (nx1626), .S0 (nx1862)) ;
    inv01 ix1627 (.Y (nx1626), .A (D[7])) ;
    dffs_ni reg_Qbar_8 (.Q (Qbar[8]), .QB (\$dummy [8]), .D (nx1339), .CLK (
            nx1884), .S (nx1906)) ;
    mux21_ni ix1340 (.Y (nx1339), .A0 (Qbar[8]), .A1 (nx1631), .S0 (nx1862)) ;
    inv01 ix1632 (.Y (nx1631), .A (D[8])) ;
    dffs_ni reg_Qbar_9 (.Q (Qbar[9]), .QB (\$dummy [9]), .D (nx1349), .CLK (
            nx1884), .S (nx1906)) ;
    mux21_ni ix1350 (.Y (nx1349), .A0 (Qbar[9]), .A1 (nx1636), .S0 (nx1862)) ;
    inv01 ix1637 (.Y (nx1636), .A (D[9])) ;
    dffs_ni reg_Qbar_10 (.Q (Qbar[10]), .QB (\$dummy [10]), .D (nx1359), .CLK (
            nx1884), .S (nx1906)) ;
    mux21_ni ix1360 (.Y (nx1359), .A0 (Qbar[10]), .A1 (nx1641), .S0 (nx1862)) ;
    inv01 ix1642 (.Y (nx1641), .A (D[10])) ;
    dffs_ni reg_Qbar_11 (.Q (Qbar[11]), .QB (\$dummy [11]), .D (nx1369), .CLK (
            nx1884), .S (nx1906)) ;
    mux21_ni ix1370 (.Y (nx1369), .A0 (Qbar[11]), .A1 (nx1646), .S0 (nx1862)) ;
    inv01 ix1647 (.Y (nx1646), .A (D[11])) ;
    dffs_ni reg_Qbar_12 (.Q (Qbar[12]), .QB (\$dummy [12]), .D (nx1379), .CLK (
            nx1884), .S (nx1906)) ;
    mux21_ni ix1380 (.Y (nx1379), .A0 (Qbar[12]), .A1 (nx1651), .S0 (nx1862)) ;
    inv01 ix1652 (.Y (nx1651), .A (D[12])) ;
    dffs_ni reg_Qbar_13 (.Q (Qbar[13]), .QB (\$dummy [13]), .D (nx1389), .CLK (
            nx1884), .S (nx1906)) ;
    mux21_ni ix1390 (.Y (nx1389), .A0 (Qbar[13]), .A1 (nx1656), .S0 (nx1862)) ;
    inv01 ix1657 (.Y (nx1656), .A (D[13])) ;
    dffs_ni reg_Qbar_14 (.Q (Qbar[14]), .QB (\$dummy [14]), .D (nx1399), .CLK (
            nx1886), .S (nx1908)) ;
    mux21_ni ix1400 (.Y (nx1399), .A0 (Qbar[14]), .A1 (nx1661), .S0 (nx1864)) ;
    inv01 ix1662 (.Y (nx1661), .A (D[14])) ;
    dffs_ni reg_Qbar_15 (.Q (Qbar[15]), .QB (\$dummy [15]), .D (nx1409), .CLK (
            nx1886), .S (nx1908)) ;
    mux21_ni ix1410 (.Y (nx1409), .A0 (Qbar[15]), .A1 (nx1666), .S0 (nx1864)) ;
    inv01 ix1667 (.Y (nx1666), .A (D[15])) ;
    dffs_ni reg_Qbar_16 (.Q (Qbar[16]), .QB (\$dummy [16]), .D (nx1419), .CLK (
            nx1886), .S (nx1908)) ;
    mux21_ni ix1420 (.Y (nx1419), .A0 (Qbar[16]), .A1 (nx1671), .S0 (nx1864)) ;
    inv01 ix1672 (.Y (nx1671), .A (D[16])) ;
    dffs_ni reg_Qbar_17 (.Q (Qbar[17]), .QB (\$dummy [17]), .D (nx1429), .CLK (
            nx1886), .S (nx1908)) ;
    mux21_ni ix1430 (.Y (nx1429), .A0 (Qbar[17]), .A1 (nx1676), .S0 (nx1864)) ;
    inv01 ix1677 (.Y (nx1676), .A (D[17])) ;
    dffs_ni reg_Qbar_18 (.Q (Qbar[18]), .QB (\$dummy [18]), .D (nx1439), .CLK (
            nx1886), .S (nx1908)) ;
    mux21_ni ix1440 (.Y (nx1439), .A0 (Qbar[18]), .A1 (nx1681), .S0 (nx1864)) ;
    inv01 ix1682 (.Y (nx1681), .A (D[18])) ;
    dffs_ni reg_Qbar_19 (.Q (Qbar[19]), .QB (\$dummy [19]), .D (nx1449), .CLK (
            nx1886), .S (nx1908)) ;
    mux21_ni ix1450 (.Y (nx1449), .A0 (Qbar[19]), .A1 (nx1686), .S0 (nx1864)) ;
    inv01 ix1687 (.Y (nx1686), .A (D[19])) ;
    dffs_ni reg_Qbar_20 (.Q (Qbar[20]), .QB (\$dummy [20]), .D (nx1459), .CLK (
            nx1886), .S (nx1908)) ;
    mux21_ni ix1460 (.Y (nx1459), .A0 (Qbar[20]), .A1 (nx1691), .S0 (nx1864)) ;
    inv01 ix1692 (.Y (nx1691), .A (D[20])) ;
    dffs_ni reg_Qbar_21 (.Q (Qbar[21]), .QB (\$dummy [21]), .D (nx1469), .CLK (
            nx1888), .S (nx1910)) ;
    mux21_ni ix1470 (.Y (nx1469), .A0 (Qbar[21]), .A1 (nx1696), .S0 (nx1866)) ;
    inv01 ix1697 (.Y (nx1696), .A (D[21])) ;
    dffs_ni reg_Qbar_22 (.Q (Qbar[22]), .QB (\$dummy [22]), .D (nx1479), .CLK (
            nx1888), .S (nx1910)) ;
    mux21_ni ix1480 (.Y (nx1479), .A0 (Qbar[22]), .A1 (nx1701), .S0 (nx1866)) ;
    inv01 ix1702 (.Y (nx1701), .A (D[22])) ;
    dffs_ni reg_Qbar_23 (.Q (Qbar[23]), .QB (\$dummy [23]), .D (nx1489), .CLK (
            nx1888), .S (nx1910)) ;
    mux21_ni ix1490 (.Y (nx1489), .A0 (Qbar[23]), .A1 (nx1706), .S0 (nx1866)) ;
    inv01 ix1707 (.Y (nx1706), .A (D[23])) ;
    dffs_ni reg_Qbar_24 (.Q (Qbar[24]), .QB (\$dummy [24]), .D (nx1499), .CLK (
            nx1888), .S (nx1910)) ;
    mux21_ni ix1500 (.Y (nx1499), .A0 (Qbar[24]), .A1 (nx1711), .S0 (nx1866)) ;
    inv01 ix1712 (.Y (nx1711), .A (D[24])) ;
    dffs_ni reg_Qbar_25 (.Q (Qbar[25]), .QB (\$dummy [25]), .D (nx1509), .CLK (
            nx1888), .S (nx1910)) ;
    mux21_ni ix1510 (.Y (nx1509), .A0 (Qbar[25]), .A1 (nx1716), .S0 (nx1866)) ;
    inv01 ix1717 (.Y (nx1716), .A (D[25])) ;
    dffs_ni reg_Qbar_26 (.Q (Qbar[26]), .QB (\$dummy [26]), .D (nx1519), .CLK (
            nx1888), .S (nx1910)) ;
    mux21_ni ix1520 (.Y (nx1519), .A0 (Qbar[26]), .A1 (nx1721), .S0 (nx1866)) ;
    inv01 ix1722 (.Y (nx1721), .A (D[26])) ;
    dffs_ni reg_Qbar_27 (.Q (Qbar[27]), .QB (\$dummy [27]), .D (nx1529), .CLK (
            nx1888), .S (nx1910)) ;
    mux21_ni ix1530 (.Y (nx1529), .A0 (Qbar[27]), .A1 (nx1726), .S0 (nx1866)) ;
    inv01 ix1727 (.Y (nx1726), .A (D[27])) ;
    dffs_ni reg_Qbar_28 (.Q (Qbar[28]), .QB (\$dummy [28]), .D (nx1539), .CLK (
            nx1890), .S (nx1912)) ;
    mux21_ni ix1540 (.Y (nx1539), .A0 (Qbar[28]), .A1 (nx1731), .S0 (nx1868)) ;
    inv01 ix1732 (.Y (nx1731), .A (D[28])) ;
    dffs_ni reg_Qbar_29 (.Q (Qbar[29]), .QB (\$dummy [29]), .D (nx1549), .CLK (
            nx1890), .S (nx1912)) ;
    mux21_ni ix1550 (.Y (nx1549), .A0 (Qbar[29]), .A1 (nx1736), .S0 (nx1868)) ;
    inv01 ix1737 (.Y (nx1736), .A (D[29])) ;
    dffs_ni reg_Qbar_30 (.Q (Qbar[30]), .QB (\$dummy [30]), .D (nx1559), .CLK (
            nx1890), .S (nx1912)) ;
    mux21_ni ix1560 (.Y (nx1559), .A0 (Qbar[30]), .A1 (nx1741), .S0 (nx1868)) ;
    inv01 ix1742 (.Y (nx1741), .A (D[30])) ;
    dffs_ni reg_Qbar_31 (.Q (Qbar[31]), .QB (\$dummy [31]), .D (nx1569), .CLK (
            nx1890), .S (nx1912)) ;
    mux21_ni ix1570 (.Y (nx1569), .A0 (Qbar[31]), .A1 (nx1746), .S0 (nx1868)) ;
    inv01 ix1747 (.Y (nx1746), .A (D[31])) ;
    dffs_ni reg_Qbar_32 (.Q (Qbar[32]), .QB (\$dummy [32]), .D (nx1579), .CLK (
            nx1890), .S (nx1912)) ;
    mux21_ni ix1580 (.Y (nx1579), .A0 (Qbar[32]), .A1 (nx1751), .S0 (nx1868)) ;
    inv01 ix1752 (.Y (nx1751), .A (D[32])) ;
    dffr reg_Q_0 (.Q (Q[0]), .QB (\$dummy [33]), .D (nx929), .CLK (nx1890), .R (
         nx1912)) ;
    mux21_ni ix930 (.Y (nx929), .A0 (Q[0]), .A1 (D[0]), .S0 (nx1868)) ;
    dffr reg_Q_1 (.Q (Q[1]), .QB (\$dummy [34]), .D (nx939), .CLK (nx1890), .R (
         nx1912)) ;
    mux21_ni ix940 (.Y (nx939), .A0 (Q[1]), .A1 (D[1]), .S0 (nx1868)) ;
    dffr reg_Q_2 (.Q (Q[2]), .QB (\$dummy [35]), .D (nx949), .CLK (nx1892), .R (
         nx1914)) ;
    mux21_ni ix950 (.Y (nx949), .A0 (Q[2]), .A1 (D[2]), .S0 (nx1870)) ;
    dffr reg_Q_3 (.Q (Q[3]), .QB (\$dummy [36]), .D (nx959), .CLK (nx1892), .R (
         nx1914)) ;
    mux21_ni ix960 (.Y (nx959), .A0 (Q[3]), .A1 (D[3]), .S0 (nx1870)) ;
    dffr reg_Q_4 (.Q (Q[4]), .QB (\$dummy [37]), .D (nx969), .CLK (nx1892), .R (
         nx1914)) ;
    mux21_ni ix970 (.Y (nx969), .A0 (Q[4]), .A1 (D[4]), .S0 (nx1870)) ;
    dffr reg_Q_5 (.Q (Q[5]), .QB (\$dummy [38]), .D (nx979), .CLK (nx1892), .R (
         nx1914)) ;
    mux21_ni ix980 (.Y (nx979), .A0 (Q[5]), .A1 (D[5]), .S0 (nx1870)) ;
    dffr reg_Q_6 (.Q (Q[6]), .QB (\$dummy [39]), .D (nx989), .CLK (nx1892), .R (
         nx1914)) ;
    mux21_ni ix990 (.Y (nx989), .A0 (Q[6]), .A1 (D[6]), .S0 (nx1870)) ;
    dffr reg_Q_7 (.Q (Q[7]), .QB (\$dummy [40]), .D (nx999), .CLK (nx1892), .R (
         nx1914)) ;
    mux21_ni ix1000 (.Y (nx999), .A0 (Q[7]), .A1 (D[7]), .S0 (nx1870)) ;
    dffr reg_Q_8 (.Q (Q[8]), .QB (\$dummy [41]), .D (nx1009), .CLK (nx1892), .R (
         nx1914)) ;
    mux21_ni ix1010 (.Y (nx1009), .A0 (Q[8]), .A1 (D[8]), .S0 (nx1870)) ;
    dffr reg_Q_9 (.Q (Q[9]), .QB (\$dummy [42]), .D (nx1019), .CLK (nx1894), .R (
         nx1916)) ;
    mux21_ni ix1020 (.Y (nx1019), .A0 (Q[9]), .A1 (D[9]), .S0 (nx1872)) ;
    dffr reg_Q_10 (.Q (Q[10]), .QB (\$dummy [43]), .D (nx1029), .CLK (nx1894), .R (
         nx1916)) ;
    mux21_ni ix1030 (.Y (nx1029), .A0 (Q[10]), .A1 (D[10]), .S0 (nx1872)) ;
    dffr reg_Q_11 (.Q (Q[11]), .QB (\$dummy [44]), .D (nx1039), .CLK (nx1894), .R (
         nx1916)) ;
    mux21_ni ix1040 (.Y (nx1039), .A0 (Q[11]), .A1 (D[11]), .S0 (nx1872)) ;
    dffr reg_Q_12 (.Q (Q[12]), .QB (\$dummy [45]), .D (nx1049), .CLK (nx1894), .R (
         nx1916)) ;
    mux21_ni ix1050 (.Y (nx1049), .A0 (Q[12]), .A1 (D[12]), .S0 (nx1872)) ;
    dffr reg_Q_13 (.Q (Q[13]), .QB (\$dummy [46]), .D (nx1059), .CLK (nx1894), .R (
         nx1916)) ;
    mux21_ni ix1060 (.Y (nx1059), .A0 (Q[13]), .A1 (D[13]), .S0 (nx1872)) ;
    dffr reg_Q_14 (.Q (Q[14]), .QB (\$dummy [47]), .D (nx1069), .CLK (nx1894), .R (
         nx1916)) ;
    mux21_ni ix1070 (.Y (nx1069), .A0 (Q[14]), .A1 (D[14]), .S0 (nx1872)) ;
    dffr reg_Q_15 (.Q (Q[15]), .QB (\$dummy [48]), .D (nx1079), .CLK (nx1894), .R (
         nx1916)) ;
    mux21_ni ix1080 (.Y (nx1079), .A0 (Q[15]), .A1 (D[15]), .S0 (nx1872)) ;
    dffr reg_Q_16 (.Q (Q[16]), .QB (\$dummy [49]), .D (nx1089), .CLK (nx1896), .R (
         nx1918)) ;
    mux21_ni ix1090 (.Y (nx1089), .A0 (Q[16]), .A1 (D[16]), .S0 (nx1874)) ;
    dffr reg_Q_17 (.Q (Q[17]), .QB (\$dummy [50]), .D (nx1099), .CLK (nx1896), .R (
         nx1918)) ;
    mux21_ni ix1100 (.Y (nx1099), .A0 (Q[17]), .A1 (D[17]), .S0 (nx1874)) ;
    dffr reg_Q_18 (.Q (Q[18]), .QB (\$dummy [51]), .D (nx1109), .CLK (nx1896), .R (
         nx1918)) ;
    mux21_ni ix1110 (.Y (nx1109), .A0 (Q[18]), .A1 (D[18]), .S0 (nx1874)) ;
    dffr reg_Q_19 (.Q (Q[19]), .QB (\$dummy [52]), .D (nx1119), .CLK (nx1896), .R (
         nx1918)) ;
    mux21_ni ix1120 (.Y (nx1119), .A0 (Q[19]), .A1 (D[19]), .S0 (nx1874)) ;
    dffr reg_Q_20 (.Q (Q[20]), .QB (\$dummy [53]), .D (nx1129), .CLK (nx1896), .R (
         nx1918)) ;
    mux21_ni ix1130 (.Y (nx1129), .A0 (Q[20]), .A1 (D[20]), .S0 (nx1874)) ;
    dffr reg_Q_21 (.Q (Q[21]), .QB (\$dummy [54]), .D (nx1139), .CLK (nx1896), .R (
         nx1918)) ;
    mux21_ni ix1140 (.Y (nx1139), .A0 (Q[21]), .A1 (D[21]), .S0 (nx1874)) ;
    dffr reg_Q_22 (.Q (Q[22]), .QB (\$dummy [55]), .D (nx1149), .CLK (nx1896), .R (
         nx1918)) ;
    mux21_ni ix1150 (.Y (nx1149), .A0 (Q[22]), .A1 (D[22]), .S0 (nx1874)) ;
    dffr reg_Q_23 (.Q (Q[23]), .QB (\$dummy [56]), .D (nx1159), .CLK (nx1898), .R (
         nx1920)) ;
    mux21_ni ix1160 (.Y (nx1159), .A0 (Q[23]), .A1 (D[23]), .S0 (nx1876)) ;
    dffr reg_Q_24 (.Q (Q[24]), .QB (\$dummy [57]), .D (nx1169), .CLK (nx1898), .R (
         nx1920)) ;
    mux21_ni ix1170 (.Y (nx1169), .A0 (Q[24]), .A1 (D[24]), .S0 (nx1876)) ;
    dffr reg_Q_25 (.Q (Q[25]), .QB (\$dummy [58]), .D (nx1179), .CLK (nx1898), .R (
         nx1920)) ;
    mux21_ni ix1180 (.Y (nx1179), .A0 (Q[25]), .A1 (D[25]), .S0 (nx1876)) ;
    dffr reg_Q_26 (.Q (Q[26]), .QB (\$dummy [59]), .D (nx1189), .CLK (nx1898), .R (
         nx1920)) ;
    mux21_ni ix1190 (.Y (nx1189), .A0 (Q[26]), .A1 (D[26]), .S0 (nx1876)) ;
    dffr reg_Q_27 (.Q (Q[27]), .QB (\$dummy [60]), .D (nx1199), .CLK (nx1898), .R (
         nx1920)) ;
    mux21_ni ix1200 (.Y (nx1199), .A0 (Q[27]), .A1 (D[27]), .S0 (nx1876)) ;
    dffr reg_Q_28 (.Q (Q[28]), .QB (\$dummy [61]), .D (nx1209), .CLK (nx1898), .R (
         nx1920)) ;
    mux21_ni ix1210 (.Y (nx1209), .A0 (Q[28]), .A1 (D[28]), .S0 (nx1876)) ;
    dffr reg_Q_29 (.Q (Q[29]), .QB (\$dummy [62]), .D (nx1219), .CLK (nx1898), .R (
         nx1920)) ;
    mux21_ni ix1220 (.Y (nx1219), .A0 (Q[29]), .A1 (D[29]), .S0 (nx1876)) ;
    dffr reg_Q_30 (.Q (Q[30]), .QB (\$dummy [63]), .D (nx1229), .CLK (nx1900), .R (
         nx1922)) ;
    mux21_ni ix1230 (.Y (nx1229), .A0 (Q[30]), .A1 (D[30]), .S0 (nx1878)) ;
    dffr reg_Q_31 (.Q (Q[31]), .QB (\$dummy [64]), .D (nx1239), .CLK (nx1900), .R (
         nx1922)) ;
    mux21_ni ix1240 (.Y (nx1239), .A0 (Q[31]), .A1 (D[31]), .S0 (nx1878)) ;
    dffr reg_Q_32 (.Q (Q[32]), .QB (\$dummy [65]), .D (nx1249), .CLK (nx1900), .R (
         nx1922)) ;
    mux21_ni ix1250 (.Y (nx1249), .A0 (Q[32]), .A1 (D[32]), .S0 (nx1878)) ;
    inv02 ix1859 (.Y (nx1860), .A (nx1924_XX0_XREP13)) ;
    inv02 ix1861 (.Y (nx1862), .A (nx1924_XX0_XREP13)) ;
    inv02 ix1863 (.Y (nx1864), .A (nx1924)) ;
    inv02 ix1865 (.Y (nx1866), .A (nx1924)) ;
    inv02 ix1867 (.Y (nx1868), .A (nx1924)) ;
    inv02 ix1869 (.Y (nx1870), .A (nx1858_XX0_XREP17)) ;
    inv02 ix1871 (.Y (nx1872), .A (nx1858_XX0_XREP17)) ;
    inv02 ix1873 (.Y (nx1874), .A (nx1858)) ;
    inv02 ix1875 (.Y (nx1876), .A (nx1858)) ;
    inv02 ix1877 (.Y (nx1878), .A (nx1858)) ;
    inv01 ix1879 (.Y (nx1880), .A (clk)) ;
    inv02 ix1881 (.Y (nx1882), .A (nx1926)) ;
    inv02 ix1883 (.Y (nx1884), .A (nx1926)) ;
    inv02 ix1885 (.Y (nx1886), .A (nx1926)) ;
    inv02 ix1887 (.Y (nx1888), .A (nx1926)) ;
    inv02 ix1889 (.Y (nx1890), .A (nx1926)) ;
    inv02 ix1891 (.Y (nx1892), .A (nx1880)) ;
    inv02 ix1893 (.Y (nx1894), .A (nx1880)) ;
    inv02 ix1895 (.Y (nx1896), .A (nx1880)) ;
    inv02 ix1897 (.Y (nx1898), .A (nx1880)) ;
    inv02 ix1899 (.Y (nx1900), .A (nx1880)) ;
    inv02 ix1903 (.Y (nx1904), .A (nx1928)) ;
    inv02 ix1905 (.Y (nx1906), .A (nx1928_XX0_XREP15)) ;
    inv02 ix1907 (.Y (nx1908), .A (nx1928)) ;
    inv02 ix1909 (.Y (nx1910), .A (nx1928)) ;
    inv02 ix1911 (.Y (nx1912), .A (nx1928_XX0_XREP15)) ;
    inv02 ix1913 (.Y (nx1914), .A (nx1902_XX0_XREP19)) ;
    inv02 ix1915 (.Y (nx1916), .A (nx1902_XX0_XREP19)) ;
    inv02 ix1917 (.Y (nx1918), .A (nx1902)) ;
    inv02 ix1919 (.Y (nx1920), .A (nx1902)) ;
    inv02 ix1921 (.Y (nx1922), .A (nx1902)) ;
    inv01 ix1925 (.Y (nx1926), .A (clk)) ;
    inv01 ix1923 (.Y (nx1924), .A (en)) ;
    inv01 ix1923_0_XREP13 (.Y (nx1924_XX0_XREP13), .A (en)) ;
    inv01 ix1927 (.Y (nx1928), .A (rst)) ;
    inv01 ix1927_0_XREP15 (.Y (nx1928_XX0_XREP15), .A (rst)) ;
    inv01 ix1857 (.Y (nx1858), .A (en)) ;
    inv01 ix1857_0_XREP17 (.Y (nx1858_XX0_XREP17), .A (en)) ;
    inv01 ix1901 (.Y (nx1902), .A (rst)) ;
    inv01 ix1901_0_XREP19 (.Y (nx1902_XX0_XREP19), .A (rst)) ;
endmodule


module ngetMax_16_10 ( inputArray_9__15, inputArray_9__14, inputArray_9__13, 
                       inputArray_9__12, inputArray_9__11, inputArray_9__10, 
                       inputArray_9__9, inputArray_9__8, inputArray_9__7, 
                       inputArray_9__6, inputArray_9__5, inputArray_9__4, 
                       inputArray_9__3, inputArray_9__2, inputArray_9__1, 
                       inputArray_9__0, inputArray_8__15, inputArray_8__14, 
                       inputArray_8__13, inputArray_8__12, inputArray_8__11, 
                       inputArray_8__10, inputArray_8__9, inputArray_8__8, 
                       inputArray_8__7, inputArray_8__6, inputArray_8__5, 
                       inputArray_8__4, inputArray_8__3, inputArray_8__2, 
                       inputArray_8__1, inputArray_8__0, inputArray_7__15, 
                       inputArray_7__14, inputArray_7__13, inputArray_7__12, 
                       inputArray_7__11, inputArray_7__10, inputArray_7__9, 
                       inputArray_7__8, inputArray_7__7, inputArray_7__6, 
                       inputArray_7__5, inputArray_7__4, inputArray_7__3, 
                       inputArray_7__2, inputArray_7__1, inputArray_7__0, 
                       inputArray_6__15, inputArray_6__14, inputArray_6__13, 
                       inputArray_6__12, inputArray_6__11, inputArray_6__10, 
                       inputArray_6__9, inputArray_6__8, inputArray_6__7, 
                       inputArray_6__6, inputArray_6__5, inputArray_6__4, 
                       inputArray_6__3, inputArray_6__2, inputArray_6__1, 
                       inputArray_6__0, inputArray_5__15, inputArray_5__14, 
                       inputArray_5__13, inputArray_5__12, inputArray_5__11, 
                       inputArray_5__10, inputArray_5__9, inputArray_5__8, 
                       inputArray_5__7, inputArray_5__6, inputArray_5__5, 
                       inputArray_5__4, inputArray_5__3, inputArray_5__2, 
                       inputArray_5__1, inputArray_5__0, inputArray_4__15, 
                       inputArray_4__14, inputArray_4__13, inputArray_4__12, 
                       inputArray_4__11, inputArray_4__10, inputArray_4__9, 
                       inputArray_4__8, inputArray_4__7, inputArray_4__6, 
                       inputArray_4__5, inputArray_4__4, inputArray_4__3, 
                       inputArray_4__2, inputArray_4__1, inputArray_4__0, 
                       inputArray_3__15, inputArray_3__14, inputArray_3__13, 
                       inputArray_3__12, inputArray_3__11, inputArray_3__10, 
                       inputArray_3__9, inputArray_3__8, inputArray_3__7, 
                       inputArray_3__6, inputArray_3__5, inputArray_3__4, 
                       inputArray_3__3, inputArray_3__2, inputArray_3__1, 
                       inputArray_3__0, inputArray_2__15, inputArray_2__14, 
                       inputArray_2__13, inputArray_2__12, inputArray_2__11, 
                       inputArray_2__10, inputArray_2__9, inputArray_2__8, 
                       inputArray_2__7, inputArray_2__6, inputArray_2__5, 
                       inputArray_2__4, inputArray_2__3, inputArray_2__2, 
                       inputArray_2__1, inputArray_2__0, inputArray_1__15, 
                       inputArray_1__14, inputArray_1__13, inputArray_1__12, 
                       inputArray_1__11, inputArray_1__10, inputArray_1__9, 
                       inputArray_1__8, inputArray_1__7, inputArray_1__6, 
                       inputArray_1__5, inputArray_1__4, inputArray_1__3, 
                       inputArray_1__2, inputArray_1__1, inputArray_1__0, 
                       inputArray_0__15, inputArray_0__14, inputArray_0__13, 
                       inputArray_0__12, inputArray_0__11, inputArray_0__10, 
                       inputArray_0__9, inputArray_0__8, inputArray_0__7, 
                       inputArray_0__6, inputArray_0__5, inputArray_0__4, 
                       inputArray_0__3, inputArray_0__2, inputArray_0__1, 
                       inputArray_0__0, en, clk, rst, outLabel, done ) ;

    input inputArray_9__15 ;
    input inputArray_9__14 ;
    input inputArray_9__13 ;
    input inputArray_9__12 ;
    input inputArray_9__11 ;
    input inputArray_9__10 ;
    input inputArray_9__9 ;
    input inputArray_9__8 ;
    input inputArray_9__7 ;
    input inputArray_9__6 ;
    input inputArray_9__5 ;
    input inputArray_9__4 ;
    input inputArray_9__3 ;
    input inputArray_9__2 ;
    input inputArray_9__1 ;
    input inputArray_9__0 ;
    input inputArray_8__15 ;
    input inputArray_8__14 ;
    input inputArray_8__13 ;
    input inputArray_8__12 ;
    input inputArray_8__11 ;
    input inputArray_8__10 ;
    input inputArray_8__9 ;
    input inputArray_8__8 ;
    input inputArray_8__7 ;
    input inputArray_8__6 ;
    input inputArray_8__5 ;
    input inputArray_8__4 ;
    input inputArray_8__3 ;
    input inputArray_8__2 ;
    input inputArray_8__1 ;
    input inputArray_8__0 ;
    input inputArray_7__15 ;
    input inputArray_7__14 ;
    input inputArray_7__13 ;
    input inputArray_7__12 ;
    input inputArray_7__11 ;
    input inputArray_7__10 ;
    input inputArray_7__9 ;
    input inputArray_7__8 ;
    input inputArray_7__7 ;
    input inputArray_7__6 ;
    input inputArray_7__5 ;
    input inputArray_7__4 ;
    input inputArray_7__3 ;
    input inputArray_7__2 ;
    input inputArray_7__1 ;
    input inputArray_7__0 ;
    input inputArray_6__15 ;
    input inputArray_6__14 ;
    input inputArray_6__13 ;
    input inputArray_6__12 ;
    input inputArray_6__11 ;
    input inputArray_6__10 ;
    input inputArray_6__9 ;
    input inputArray_6__8 ;
    input inputArray_6__7 ;
    input inputArray_6__6 ;
    input inputArray_6__5 ;
    input inputArray_6__4 ;
    input inputArray_6__3 ;
    input inputArray_6__2 ;
    input inputArray_6__1 ;
    input inputArray_6__0 ;
    input inputArray_5__15 ;
    input inputArray_5__14 ;
    input inputArray_5__13 ;
    input inputArray_5__12 ;
    input inputArray_5__11 ;
    input inputArray_5__10 ;
    input inputArray_5__9 ;
    input inputArray_5__8 ;
    input inputArray_5__7 ;
    input inputArray_5__6 ;
    input inputArray_5__5 ;
    input inputArray_5__4 ;
    input inputArray_5__3 ;
    input inputArray_5__2 ;
    input inputArray_5__1 ;
    input inputArray_5__0 ;
    input inputArray_4__15 ;
    input inputArray_4__14 ;
    input inputArray_4__13 ;
    input inputArray_4__12 ;
    input inputArray_4__11 ;
    input inputArray_4__10 ;
    input inputArray_4__9 ;
    input inputArray_4__8 ;
    input inputArray_4__7 ;
    input inputArray_4__6 ;
    input inputArray_4__5 ;
    input inputArray_4__4 ;
    input inputArray_4__3 ;
    input inputArray_4__2 ;
    input inputArray_4__1 ;
    input inputArray_4__0 ;
    input inputArray_3__15 ;
    input inputArray_3__14 ;
    input inputArray_3__13 ;
    input inputArray_3__12 ;
    input inputArray_3__11 ;
    input inputArray_3__10 ;
    input inputArray_3__9 ;
    input inputArray_3__8 ;
    input inputArray_3__7 ;
    input inputArray_3__6 ;
    input inputArray_3__5 ;
    input inputArray_3__4 ;
    input inputArray_3__3 ;
    input inputArray_3__2 ;
    input inputArray_3__1 ;
    input inputArray_3__0 ;
    input inputArray_2__15 ;
    input inputArray_2__14 ;
    input inputArray_2__13 ;
    input inputArray_2__12 ;
    input inputArray_2__11 ;
    input inputArray_2__10 ;
    input inputArray_2__9 ;
    input inputArray_2__8 ;
    input inputArray_2__7 ;
    input inputArray_2__6 ;
    input inputArray_2__5 ;
    input inputArray_2__4 ;
    input inputArray_2__3 ;
    input inputArray_2__2 ;
    input inputArray_2__1 ;
    input inputArray_2__0 ;
    input inputArray_1__15 ;
    input inputArray_1__14 ;
    input inputArray_1__13 ;
    input inputArray_1__12 ;
    input inputArray_1__11 ;
    input inputArray_1__10 ;
    input inputArray_1__9 ;
    input inputArray_1__8 ;
    input inputArray_1__7 ;
    input inputArray_1__6 ;
    input inputArray_1__5 ;
    input inputArray_1__4 ;
    input inputArray_1__3 ;
    input inputArray_1__2 ;
    input inputArray_1__1 ;
    input inputArray_1__0 ;
    input inputArray_0__15 ;
    input inputArray_0__14 ;
    input inputArray_0__13 ;
    input inputArray_0__12 ;
    input inputArray_0__11 ;
    input inputArray_0__10 ;
    input inputArray_0__9 ;
    input inputArray_0__8 ;
    input inputArray_0__7 ;
    input inputArray_0__6 ;
    input inputArray_0__5 ;
    input inputArray_0__4 ;
    input inputArray_0__3 ;
    input inputArray_0__2 ;
    input inputArray_0__1 ;
    input inputArray_0__0 ;
    input en ;
    input clk ;
    input rst ;
    output [3:0]outLabel ;
    output done ;

    wire regMaxout_15, regMaxout_14, regMaxout_13, regMaxout_12, regMaxout_11, 
         regMaxout_10, regMaxout_9, regMaxout_8, regMaxout_7, regMaxout_6, 
         regMaxout_5, regMaxout_4, regMaxout_3, regMaxout_2, regMaxout_1, 
         regMaxout_0, regMaxin_15, regMaxin_14, regMaxin_13, regMaxin_12, 
         regMaxin_11, regMaxin_10, regMaxin_9, regMaxin_8, regMaxin_7, 
         regMaxin_6, regMaxin_5, regMaxin_4, regMaxin_3, regMaxin_2, regMaxin_1, 
         regMaxin_0, indexMaxin_3, indexMaxin_2, indexMaxin_1, indexMaxin_0, 
         ComparatorG, Count_3, Count_2, Count_1, Count_0, InputBcomparator_15, 
         InputBcomparator_14, InputBcomparator_13, InputBcomparator_12, 
         InputBcomparator_11, InputBcomparator_10, InputBcomparator_9, 
         InputBcomparator_8, InputBcomparator_7, InputBcomparator_6, 
         InputBcomparator_5, InputBcomparator_4, InputBcomparator_3, 
         InputBcomparator_2, InputBcomparator_1, InputBcomparator_0, GND, PWR, 
         nx108, nx116, nx130, nx138, nx178, nx188, nx232, nx282, nx332, nx382, 
         nx432, nx482, nx532, nx582, nx632, nx682, nx732, nx782, nx832, nx882, 
         nx701, nx703, nx709, nx715, nx719, nx723, nx727, nx733, nx739, nx741, 
         nx747, nx749, nx751, nx753, nx759, nx761, nx763, nx765, nx771, nx773, 
         nx775, nx777, nx783, nx785, nx787, nx789, nx795, nx797, nx799, nx801, 
         nx807, nx809, nx811, nx813, nx819, nx821, nx823, nx825, nx831, nx833, 
         nx835, nx837, nx841, nx843, nx845, nx847, nx853, nx855, nx857, nx859, 
         nx865, nx867, nx869, nx871, nx877, nx879, nx881, nx883, nx887, nx889, 
         nx891, nx893, nx897, nx899, nx901, nx903, nx909, nx911, nx913, nx915, 
         nx951, nx953, nx955, nx959, nx961, nx963, nx965, nx967, nx969, nx971, 
         nx973, nx975, nx977, nx979, nx981, nx983, nx985, nx987, nx989, nx991, 
         nx993, nx995, nx997, nx999, nx1001, nx1003, nx1005, nx1007, nx1009, 
         nx1011, nx1013, nx1015, nx1017, nx1019, nx1021, nx1023, nx1025, nx1027, 
         nx1029, nx1031, nx1033, nx1035, nx1037, nx1039, nx1041, nx1043, nx1045, 
         nx1047, nx1049, nx1051, nx1065, nx1069, nx1071, nx1073, nx1075, nx1077, 
         nx1079, nx1081, nx1083, nx1085, nx1087, nx1089, nx1091, nx1093, nx1095, 
         nx1067, nx1067_XX0_XREP11;
    wire [20:0] \$dummy ;




    RegTony_16 regMaxValue (.D ({regMaxin_15,regMaxin_14,regMaxin_13,regMaxin_12
               ,regMaxin_11,regMaxin_10,regMaxin_9,regMaxin_8,regMaxin_7,
               regMaxin_6,regMaxin_5,regMaxin_4,regMaxin_3,regMaxin_2,regMaxin_1
               ,regMaxin_0}), .load ({PWR,GND,GND,GND,GND,GND,GND,GND,GND,GND,
               GND,GND,GND,GND,GND,GND}), .en (en), .clk (clk), .rst (nx1073), .Q (
               {regMaxout_15,regMaxout_14,regMaxout_13,regMaxout_12,regMaxout_11
               ,regMaxout_10,regMaxout_9,regMaxout_8,regMaxout_7,regMaxout_6,
               regMaxout_5,regMaxout_4,regMaxout_3,regMaxout_2,regMaxout_1,
               regMaxout_0}), .Qbar ({\$dummy [0],\$dummy [1],\$dummy [2],
               \$dummy [3],\$dummy [4],\$dummy [5],\$dummy [6],\$dummy [7],
               \$dummy [8],\$dummy [9],\$dummy [10],\$dummy [11],\$dummy [12],
               \$dummy [13],\$dummy [14],\$dummy [15]})) ;
    RegTony_4 regMaxIndex (.D ({indexMaxin_3,indexMaxin_2,indexMaxin_1,
              indexMaxin_0}), .load ({GND,GND,GND,GND}), .en (en), .clk (clk), .rst (
              nx1069), .Q ({outLabel[3],outLabel[2],outLabel[1],outLabel[0]}), .Qbar (
              {\$dummy [16],\$dummy [17],\$dummy [18],\$dummy [19]})) ;
    CounterUpDown_4 CounterLabel (.load ({GND,GND,GND,GND}), .resetValue ({GND,
                    GND,GND,GND}), .clk (clk), .en (en), .rst (nx1071), .isLoad (
                    GND), .upOrDown (GND), .count ({Count_3,Count_2,Count_1,
                    Count_0})) ;
    Comparator_16 ComparatorLabel (.inputA ({regMaxout_15,regMaxout_14,
                  regMaxout_13,regMaxout_12,regMaxout_11,regMaxout_10,
                  regMaxout_9,regMaxout_8,regMaxout_7,regMaxout_6,regMaxout_5,
                  regMaxout_4,regMaxout_3,regMaxout_2,regMaxout_1,regMaxout_0})
                  , .inputB ({InputBcomparator_15,InputBcomparator_14,
                  InputBcomparator_13,InputBcomparator_12,InputBcomparator_11,
                  InputBcomparator_10,InputBcomparator_9,InputBcomparator_8,
                  InputBcomparator_7,InputBcomparator_6,InputBcomparator_5,
                  InputBcomparator_4,InputBcomparator_3,InputBcomparator_2,
                  InputBcomparator_1,InputBcomparator_0}), .outputG (ComparatorG
                  ), .outputEqual (\$dummy [20])) ;
    inv02 ix702 (.Y (nx701), .A (Count_1)) ;
    inv02 ix704 (.Y (nx703), .A (Count_3)) ;
    latch lat_InputBcomparator_0 (.Q (InputBcomparator_0), .D (nx178), .CLK (
          nx961)) ;
    nand04 ix179 (.Y (nx178), .A0 (nx709), .A1 (nx715), .A2 (nx727), .A3 (nx733)
           ) ;
    aoi22 ix710 (.Y (nx709), .A0 (inputArray_8__0), .A1 (nx1039), .B0 (
          inputArray_0__0), .B1 (nx1033)) ;
    aoi222 ix716 (.Y (nx715), .A0 (inputArray_3__0), .A1 (nx1025), .B0 (
           inputArray_4__0), .B1 (nx1017), .C0 (inputArray_5__0), .C1 (nx1009)
           ) ;
    inv02 ix720 (.Y (nx719), .A (Count_0)) ;
    aoi22 ix728 (.Y (nx727), .A0 (inputArray_6__0), .A1 (nx1001), .B0 (
          inputArray_7__0), .B1 (nx993)) ;
    aoi222 ix734 (.Y (nx733), .A0 (inputArray_9__0), .A1 (nx969), .B0 (
           inputArray_1__0), .B1 (nx985), .C0 (inputArray_2__0), .C1 (nx977)) ;
    inv02 ix742 (.Y (nx741), .A (Count_2)) ;
    latch lat_InputBcomparator_1 (.Q (InputBcomparator_1), .D (nx232), .CLK (
          nx961)) ;
    nand04 ix233 (.Y (nx232), .A0 (nx747), .A1 (nx749), .A2 (nx751), .A3 (nx753)
           ) ;
    aoi22 ix748 (.Y (nx747), .A0 (inputArray_8__1), .A1 (nx1039), .B0 (
          inputArray_0__1), .B1 (nx1033)) ;
    aoi222 ix750 (.Y (nx749), .A0 (inputArray_3__1), .A1 (nx1025), .B0 (
           inputArray_4__1), .B1 (nx1017), .C0 (inputArray_5__1), .C1 (nx1009)
           ) ;
    aoi22 ix752 (.Y (nx751), .A0 (inputArray_6__1), .A1 (nx1001), .B0 (
          inputArray_7__1), .B1 (nx993)) ;
    aoi222 ix754 (.Y (nx753), .A0 (inputArray_9__1), .A1 (nx969), .B0 (
           inputArray_1__1), .B1 (nx985), .C0 (inputArray_2__1), .C1 (nx977)) ;
    latch lat_InputBcomparator_2 (.Q (InputBcomparator_2), .D (nx282), .CLK (
          nx961)) ;
    nand04 ix283 (.Y (nx282), .A0 (nx759), .A1 (nx761), .A2 (nx763), .A3 (nx765)
           ) ;
    aoi22 ix760 (.Y (nx759), .A0 (inputArray_8__2), .A1 (nx1039), .B0 (
          inputArray_0__2), .B1 (nx1033)) ;
    aoi222 ix762 (.Y (nx761), .A0 (inputArray_3__2), .A1 (nx1025), .B0 (
           inputArray_4__2), .B1 (nx1017), .C0 (inputArray_5__2), .C1 (nx1009)
           ) ;
    aoi22 ix764 (.Y (nx763), .A0 (inputArray_6__2), .A1 (nx1001), .B0 (
          inputArray_7__2), .B1 (nx993)) ;
    aoi222 ix766 (.Y (nx765), .A0 (inputArray_9__2), .A1 (nx969), .B0 (
           inputArray_1__2), .B1 (nx985), .C0 (inputArray_2__2), .C1 (nx977)) ;
    latch lat_InputBcomparator_3 (.Q (InputBcomparator_3), .D (nx332), .CLK (
          nx961)) ;
    nand04 ix333 (.Y (nx332), .A0 (nx771), .A1 (nx773), .A2 (nx775), .A3 (nx777)
           ) ;
    aoi22 ix772 (.Y (nx771), .A0 (inputArray_8__3), .A1 (nx1039), .B0 (
          inputArray_0__3), .B1 (nx1033)) ;
    aoi222 ix774 (.Y (nx773), .A0 (inputArray_3__3), .A1 (nx1025), .B0 (
           inputArray_4__3), .B1 (nx1017), .C0 (inputArray_5__3), .C1 (nx1009)
           ) ;
    aoi22 ix776 (.Y (nx775), .A0 (inputArray_6__3), .A1 (nx1001), .B0 (
          inputArray_7__3), .B1 (nx993)) ;
    aoi222 ix778 (.Y (nx777), .A0 (inputArray_9__3), .A1 (nx969), .B0 (
           inputArray_1__3), .B1 (nx985), .C0 (inputArray_2__3), .C1 (nx977)) ;
    latch lat_InputBcomparator_4 (.Q (InputBcomparator_4), .D (nx382), .CLK (
          nx961)) ;
    nand04 ix383 (.Y (nx382), .A0 (nx783), .A1 (nx785), .A2 (nx787), .A3 (nx789)
           ) ;
    aoi22 ix784 (.Y (nx783), .A0 (inputArray_8__4), .A1 (nx1039), .B0 (
          inputArray_0__4), .B1 (nx1033)) ;
    aoi222 ix786 (.Y (nx785), .A0 (inputArray_3__4), .A1 (nx1025), .B0 (
           inputArray_4__4), .B1 (nx1017), .C0 (inputArray_5__4), .C1 (nx1009)
           ) ;
    aoi22 ix788 (.Y (nx787), .A0 (inputArray_6__4), .A1 (nx1001), .B0 (
          inputArray_7__4), .B1 (nx993)) ;
    aoi222 ix790 (.Y (nx789), .A0 (inputArray_9__4), .A1 (nx969), .B0 (
           inputArray_1__4), .B1 (nx985), .C0 (inputArray_2__4), .C1 (nx977)) ;
    latch lat_InputBcomparator_5 (.Q (InputBcomparator_5), .D (nx432), .CLK (
          nx961)) ;
    nand04 ix433 (.Y (nx432), .A0 (nx795), .A1 (nx797), .A2 (nx799), .A3 (nx801)
           ) ;
    aoi22 ix796 (.Y (nx795), .A0 (inputArray_8__5), .A1 (nx1039), .B0 (
          inputArray_0__5), .B1 (nx1033)) ;
    aoi222 ix798 (.Y (nx797), .A0 (inputArray_3__5), .A1 (nx1025), .B0 (
           inputArray_4__5), .B1 (nx1017), .C0 (inputArray_5__5), .C1 (nx1009)
           ) ;
    aoi22 ix800 (.Y (nx799), .A0 (inputArray_6__5), .A1 (nx1001), .B0 (
          inputArray_7__5), .B1 (nx993)) ;
    aoi222 ix802 (.Y (nx801), .A0 (inputArray_9__5), .A1 (nx969), .B0 (
           inputArray_1__5), .B1 (nx985), .C0 (inputArray_2__5), .C1 (nx977)) ;
    latch lat_InputBcomparator_6 (.Q (InputBcomparator_6), .D (nx482), .CLK (
          nx961)) ;
    nand04 ix483 (.Y (nx482), .A0 (nx807), .A1 (nx809), .A2 (nx811), .A3 (nx813)
           ) ;
    aoi22 ix808 (.Y (nx807), .A0 (inputArray_8__6), .A1 (nx1039), .B0 (
          inputArray_0__6), .B1 (nx1033)) ;
    aoi222 ix810 (.Y (nx809), .A0 (inputArray_3__6), .A1 (nx1025), .B0 (
           inputArray_4__6), .B1 (nx1017), .C0 (inputArray_5__6), .C1 (nx1009)
           ) ;
    aoi22 ix812 (.Y (nx811), .A0 (inputArray_6__6), .A1 (nx1001), .B0 (
          inputArray_7__6), .B1 (nx993)) ;
    aoi222 ix814 (.Y (nx813), .A0 (inputArray_9__6), .A1 (nx969), .B0 (
           inputArray_1__6), .B1 (nx985), .C0 (inputArray_2__6), .C1 (nx977)) ;
    latch lat_InputBcomparator_7 (.Q (InputBcomparator_7), .D (nx532), .CLK (
          nx963)) ;
    nand04 ix533 (.Y (nx532), .A0 (nx819), .A1 (nx821), .A2 (nx823), .A3 (nx825)
           ) ;
    aoi22 ix820 (.Y (nx819), .A0 (inputArray_8__7), .A1 (nx1041), .B0 (
          inputArray_0__7), .B1 (nx1035)) ;
    aoi222 ix822 (.Y (nx821), .A0 (inputArray_3__7), .A1 (nx1027), .B0 (
           inputArray_4__7), .B1 (nx1019), .C0 (inputArray_5__7), .C1 (nx1011)
           ) ;
    aoi22 ix824 (.Y (nx823), .A0 (inputArray_6__7), .A1 (nx1003), .B0 (
          inputArray_7__7), .B1 (nx995)) ;
    aoi222 ix826 (.Y (nx825), .A0 (inputArray_9__7), .A1 (nx971), .B0 (
           inputArray_1__7), .B1 (nx987), .C0 (inputArray_2__7), .C1 (nx979)) ;
    latch lat_InputBcomparator_8 (.Q (InputBcomparator_8), .D (nx582), .CLK (
          nx963)) ;
    nand04 ix583 (.Y (nx582), .A0 (nx831), .A1 (nx833), .A2 (nx835), .A3 (nx837)
           ) ;
    aoi22 ix832 (.Y (nx831), .A0 (inputArray_8__8), .A1 (nx1041), .B0 (
          inputArray_0__8), .B1 (nx1035)) ;
    aoi222 ix834 (.Y (nx833), .A0 (inputArray_3__8), .A1 (nx1027), .B0 (
           inputArray_4__8), .B1 (nx1019), .C0 (inputArray_5__8), .C1 (nx1011)
           ) ;
    aoi22 ix836 (.Y (nx835), .A0 (inputArray_6__8), .A1 (nx1003), .B0 (
          inputArray_7__8), .B1 (nx995)) ;
    aoi222 ix838 (.Y (nx837), .A0 (inputArray_9__8), .A1 (nx971), .B0 (
           inputArray_1__8), .B1 (nx987), .C0 (inputArray_2__8), .C1 (nx979)) ;
    latch lat_InputBcomparator_9 (.Q (InputBcomparator_9), .D (nx632), .CLK (
          nx963)) ;
    nand04 ix633 (.Y (nx632), .A0 (nx841), .A1 (nx843), .A2 (nx845), .A3 (nx847)
           ) ;
    aoi22 ix842 (.Y (nx841), .A0 (inputArray_8__9), .A1 (nx1041), .B0 (
          inputArray_0__9), .B1 (nx1035)) ;
    aoi222 ix844 (.Y (nx843), .A0 (inputArray_3__9), .A1 (nx1027), .B0 (
           inputArray_4__9), .B1 (nx1019), .C0 (inputArray_5__9), .C1 (nx1011)
           ) ;
    aoi22 ix846 (.Y (nx845), .A0 (inputArray_6__9), .A1 (nx1003), .B0 (
          inputArray_7__9), .B1 (nx995)) ;
    aoi222 ix848 (.Y (nx847), .A0 (inputArray_9__9), .A1 (nx971), .B0 (
           inputArray_1__9), .B1 (nx987), .C0 (inputArray_2__9), .C1 (nx979)) ;
    latch lat_InputBcomparator_10 (.Q (InputBcomparator_10), .D (nx682), .CLK (
          nx963)) ;
    nand04 ix683 (.Y (nx682), .A0 (nx853), .A1 (nx855), .A2 (nx857), .A3 (nx859)
           ) ;
    aoi22 ix854 (.Y (nx853), .A0 (inputArray_8__10), .A1 (nx1041), .B0 (
          inputArray_0__10), .B1 (nx1035)) ;
    aoi222 ix856 (.Y (nx855), .A0 (inputArray_3__10), .A1 (nx1027), .B0 (
           inputArray_4__10), .B1 (nx1019), .C0 (inputArray_5__10), .C1 (nx1011)
           ) ;
    aoi22 ix858 (.Y (nx857), .A0 (inputArray_6__10), .A1 (nx1003), .B0 (
          inputArray_7__10), .B1 (nx995)) ;
    aoi222 ix860 (.Y (nx859), .A0 (inputArray_9__10), .A1 (nx971), .B0 (
           inputArray_1__10), .B1 (nx987), .C0 (inputArray_2__10), .C1 (nx979)
           ) ;
    latch lat_InputBcomparator_11 (.Q (InputBcomparator_11), .D (nx732), .CLK (
          nx963)) ;
    nand04 ix733 (.Y (nx732), .A0 (nx865), .A1 (nx867), .A2 (nx869), .A3 (nx871)
           ) ;
    aoi22 ix866 (.Y (nx865), .A0 (inputArray_8__11), .A1 (nx1041), .B0 (
          inputArray_0__11), .B1 (nx1035)) ;
    aoi222 ix868 (.Y (nx867), .A0 (inputArray_3__11), .A1 (nx1027), .B0 (
           inputArray_4__11), .B1 (nx1019), .C0 (inputArray_5__11), .C1 (nx1011)
           ) ;
    aoi22 ix870 (.Y (nx869), .A0 (inputArray_6__11), .A1 (nx1003), .B0 (
          inputArray_7__11), .B1 (nx995)) ;
    aoi222 ix872 (.Y (nx871), .A0 (inputArray_9__11), .A1 (nx971), .B0 (
           inputArray_1__11), .B1 (nx987), .C0 (inputArray_2__11), .C1 (nx979)
           ) ;
    latch lat_InputBcomparator_12 (.Q (InputBcomparator_12), .D (nx782), .CLK (
          nx963)) ;
    nand04 ix783 (.Y (nx782), .A0 (nx877), .A1 (nx879), .A2 (nx881), .A3 (nx883)
           ) ;
    aoi22 ix878 (.Y (nx877), .A0 (inputArray_8__12), .A1 (nx1041), .B0 (
          inputArray_0__12), .B1 (nx1035)) ;
    aoi222 ix880 (.Y (nx879), .A0 (inputArray_3__12), .A1 (nx1027), .B0 (
           inputArray_4__12), .B1 (nx1019), .C0 (inputArray_5__12), .C1 (nx1011)
           ) ;
    aoi22 ix882 (.Y (nx881), .A0 (inputArray_6__12), .A1 (nx1003), .B0 (
          inputArray_7__12), .B1 (nx995)) ;
    aoi222 ix884 (.Y (nx883), .A0 (inputArray_9__12), .A1 (nx971), .B0 (
           inputArray_1__12), .B1 (nx987), .C0 (inputArray_2__12), .C1 (nx979)
           ) ;
    latch lat_InputBcomparator_13 (.Q (InputBcomparator_13), .D (nx832), .CLK (
          nx963)) ;
    nand04 ix833 (.Y (nx832), .A0 (nx887), .A1 (nx889), .A2 (nx891), .A3 (nx893)
           ) ;
    aoi22 ix888 (.Y (nx887), .A0 (inputArray_8__13), .A1 (nx1041), .B0 (
          inputArray_0__13), .B1 (nx1035)) ;
    aoi222 ix890 (.Y (nx889), .A0 (inputArray_3__13), .A1 (nx1027), .B0 (
           inputArray_4__13), .B1 (nx1019), .C0 (inputArray_5__13), .C1 (nx1011)
           ) ;
    aoi22 ix892 (.Y (nx891), .A0 (inputArray_6__13), .A1 (nx1003), .B0 (
          inputArray_7__13), .B1 (nx995)) ;
    aoi222 ix894 (.Y (nx893), .A0 (inputArray_9__13), .A1 (nx971), .B0 (
           inputArray_1__13), .B1 (nx987), .C0 (inputArray_2__13), .C1 (nx979)
           ) ;
    latch lat_InputBcomparator_14 (.Q (InputBcomparator_14), .D (nx882), .CLK (
          nx965)) ;
    nand04 ix883 (.Y (nx882), .A0 (nx897), .A1 (nx899), .A2 (nx901), .A3 (nx903)
           ) ;
    aoi22 ix898 (.Y (nx897), .A0 (inputArray_8__14), .A1 (nx108), .B0 (
          inputArray_0__14), .B1 (nx1037)) ;
    aoi222 ix900 (.Y (nx899), .A0 (inputArray_3__14), .A1 (nx1029), .B0 (
           inputArray_4__14), .B1 (nx1021), .C0 (inputArray_5__14), .C1 (nx1013)
           ) ;
    aoi22 ix902 (.Y (nx901), .A0 (inputArray_6__14), .A1 (nx1005), .B0 (
          inputArray_7__14), .B1 (nx997)) ;
    aoi222 ix904 (.Y (nx903), .A0 (inputArray_9__14), .A1 (nx973), .B0 (
           inputArray_1__14), .B1 (nx989), .C0 (inputArray_2__14), .C1 (nx981)
           ) ;
    latch lat_InputBcomparator_15 (.Q (InputBcomparator_15), .D (nx116), .CLK (
          nx965)) ;
    nand04 ix117 (.Y (nx116), .A0 (nx909), .A1 (nx911), .A2 (nx913), .A3 (nx915)
           ) ;
    aoi22 ix910 (.Y (nx909), .A0 (inputArray_8__15), .A1 (nx108), .B0 (
          inputArray_0__15), .B1 (nx1037)) ;
    aoi222 ix912 (.Y (nx911), .A0 (inputArray_3__15), .A1 (nx1029), .B0 (
           inputArray_4__15), .B1 (nx1021), .C0 (inputArray_5__15), .C1 (nx1013)
           ) ;
    aoi22 ix914 (.Y (nx913), .A0 (inputArray_6__15), .A1 (nx1005), .B0 (
          inputArray_7__15), .B1 (nx997)) ;
    aoi222 ix916 (.Y (nx915), .A0 (inputArray_9__15), .A1 (nx973), .B0 (
           inputArray_1__15), .B1 (nx989), .C0 (inputArray_2__15), .C1 (nx981)
           ) ;
    ao22 ix193 (.Y (regMaxin_0), .A0 (regMaxout_0), .A1 (nx1089), .B0 (
         InputBcomparator_0), .B1 (nx1093)) ;
    ao22 ix243 (.Y (regMaxin_1), .A0 (regMaxout_1), .A1 (nx1089), .B0 (
         InputBcomparator_1), .B1 (nx1093)) ;
    ao22 ix293 (.Y (regMaxin_2), .A0 (regMaxout_2), .A1 (nx1089), .B0 (
         InputBcomparator_2), .B1 (nx1093)) ;
    ao22 ix343 (.Y (regMaxin_3), .A0 (regMaxout_3), .A1 (nx1089), .B0 (
         InputBcomparator_3), .B1 (nx1093)) ;
    ao22 ix393 (.Y (regMaxin_4), .A0 (regMaxout_4), .A1 (nx1089), .B0 (
         InputBcomparator_4), .B1 (nx1093)) ;
    ao22 ix443 (.Y (regMaxin_5), .A0 (regMaxout_5), .A1 (nx1089), .B0 (
         InputBcomparator_5), .B1 (nx1093)) ;
    ao22 ix493 (.Y (regMaxin_6), .A0 (regMaxout_6), .A1 (nx1089), .B0 (
         InputBcomparator_6), .B1 (nx1093)) ;
    ao22 ix543 (.Y (regMaxin_7), .A0 (regMaxout_7), .A1 (nx1091), .B0 (
         InputBcomparator_7), .B1 (nx1095)) ;
    ao22 ix593 (.Y (regMaxin_8), .A0 (regMaxout_8), .A1 (nx1091), .B0 (
         InputBcomparator_8), .B1 (nx1095)) ;
    ao22 ix643 (.Y (regMaxin_9), .A0 (regMaxout_9), .A1 (nx1091), .B0 (
         InputBcomparator_9), .B1 (nx1095)) ;
    ao22 ix693 (.Y (regMaxin_10), .A0 (regMaxout_10), .A1 (nx1091), .B0 (
         InputBcomparator_10), .B1 (nx1095)) ;
    ao22 ix743 (.Y (regMaxin_11), .A0 (regMaxout_11), .A1 (nx1091), .B0 (
         InputBcomparator_11), .B1 (nx1095)) ;
    ao22 ix793 (.Y (regMaxin_12), .A0 (regMaxout_12), .A1 (nx1091), .B0 (
         InputBcomparator_12), .B1 (nx1095)) ;
    ao22 ix843 (.Y (regMaxin_13), .A0 (regMaxout_13), .A1 (nx1091), .B0 (
         InputBcomparator_13), .B1 (nx1095)) ;
    ao22 ix893 (.Y (regMaxin_14), .A0 (regMaxout_14), .A1 (nx138), .B0 (
         InputBcomparator_14), .B1 (nx188)) ;
    or02 ix133 (.Y (regMaxin_15), .A0 (nx130), .A1 (nx1073)) ;
    inv02 ix950 (.Y (nx951), .A (nx703)) ;
    inv02 ix952 (.Y (nx953), .A (nx741)) ;
    inv02 ix954 (.Y (nx955), .A (nx701)) ;
    inv02 ix960 (.Y (nx961), .A (nx959)) ;
    inv02 ix962 (.Y (nx963), .A (nx959)) ;
    inv02 ix964 (.Y (nx965), .A (nx959)) ;
    inv02 ix968 (.Y (nx969), .A (nx967)) ;
    inv02 ix970 (.Y (nx971), .A (nx967)) ;
    inv02 ix972 (.Y (nx973), .A (nx967)) ;
    inv02 ix976 (.Y (nx977), .A (nx975)) ;
    inv02 ix978 (.Y (nx979), .A (nx975)) ;
    inv02 ix980 (.Y (nx981), .A (nx975)) ;
    inv02 ix984 (.Y (nx985), .A (nx983)) ;
    inv02 ix986 (.Y (nx987), .A (nx983)) ;
    inv02 ix988 (.Y (nx989), .A (nx983)) ;
    inv02 ix992 (.Y (nx993), .A (nx991)) ;
    inv02 ix994 (.Y (nx995), .A (nx991)) ;
    inv02 ix996 (.Y (nx997), .A (nx991)) ;
    inv02 ix1000 (.Y (nx1001), .A (nx999)) ;
    inv02 ix1002 (.Y (nx1003), .A (nx999)) ;
    inv02 ix1004 (.Y (nx1005), .A (nx999)) ;
    inv02 ix1008 (.Y (nx1009), .A (nx1007)) ;
    inv02 ix1010 (.Y (nx1011), .A (nx1007)) ;
    inv02 ix1012 (.Y (nx1013), .A (nx1007)) ;
    inv02 ix1016 (.Y (nx1017), .A (nx1015)) ;
    inv02 ix1018 (.Y (nx1019), .A (nx1015)) ;
    inv02 ix1020 (.Y (nx1021), .A (nx1015)) ;
    inv02 ix1024 (.Y (nx1025), .A (nx1023)) ;
    inv02 ix1026 (.Y (nx1027), .A (nx1023)) ;
    inv02 ix1028 (.Y (nx1029), .A (nx1023)) ;
    inv02 ix1032 (.Y (nx1033), .A (nx1031)) ;
    inv02 ix1034 (.Y (nx1035), .A (nx1031)) ;
    inv02 ix1036 (.Y (nx1037), .A (nx1031)) ;
    inv02 ix1050 (.Y (nx1051), .A (nx1083)) ;
    and04 ix9 (.Y (done), .A0 (nx1083), .A1 (nx1079), .A2 (nx741), .A3 (nx1077)
          ) ;
    and02 ix109 (.Y (nx108), .A0 (nx1083), .A1 (nx1077)) ;
    nand04 ix103 (.Y (nx1031), .A0 (nx741), .A1 (nx703), .A2 (nx1083), .A3 (
           nx701)) ;
    nand04 ix89 (.Y (nx1023), .A0 (nx741), .A1 (nx703), .A2 (nx1081), .A3 (
           nx1079)) ;
    nand03 ix83 (.Y (nx1015), .A0 (nx1065), .A1 (nx1083), .A2 (nx701)) ;
    inv01 ix1064 (.Y (nx1065), .A (nx723)) ;
    or02 ix724 (.Y (nx723), .A0 (nx741), .A1 (nx1077)) ;
    nand03 ix73 (.Y (nx1007), .A0 (nx1065), .A1 (nx1081), .A2 (nx701)) ;
    nand03 ix61 (.Y (nx999), .A0 (nx1065), .A1 (nx1083), .A2 (nx1079)) ;
    nand03 ix57 (.Y (nx991), .A0 (nx1065), .A1 (nx1081), .A2 (nx1079)) ;
    nand02 ix25 (.Y (nx967), .A0 (nx1081), .A1 (nx1077)) ;
    nand04 ix43 (.Y (nx983), .A0 (nx741), .A1 (nx703), .A2 (nx1081), .A3 (nx701)
           ) ;
    nand04 ix35 (.Y (nx975), .A0 (nx741), .A1 (nx703), .A2 (nx1083), .A3 (nx1079
           )) ;
    ao21 ix23 (.Y (nx959), .A0 (nx739), .A1 (nx951), .B0 (nx1073)) ;
    or02 ix740 (.Y (nx739), .A0 (nx1079), .A1 (Count_2)) ;
    mux21_ni ix901 (.Y (indexMaxin_0), .A0 (nx1051), .A1 (outLabel[0]), .S0 (
             nx1085)) ;
    mux21_ni ix909 (.Y (indexMaxin_1), .A0 (nx955), .A1 (outLabel[1]), .S0 (
             nx1085)) ;
    mux21_ni ix917 (.Y (indexMaxin_2), .A0 (nx953), .A1 (outLabel[2]), .S0 (
             nx1085)) ;
    mux21_ni ix925 (.Y (indexMaxin_3), .A0 (nx951), .A1 (outLabel[3]), .S0 (
             nx1085)) ;
    nor02ii ix139 (.Y (nx138), .A0 (nx1073), .A1 (nx1085)) ;
    nor02ii ix189 (.Y (nx188), .A0 (nx1073), .A1 (ComparatorG)) ;
    mux21_ni ix131 (.Y (nx130), .A0 (InputBcomparator_15), .A1 (regMaxout_15), .S0 (
             nx1085)) ;
    and02 ix1038 (.Y (nx1039), .A0 (nx719), .A1 (nx1077)) ;
    and02 ix1040 (.Y (nx1041), .A0 (nx719), .A1 (nx1077)) ;
    nor02ii ix1042 (.Y (nx1043), .A0 (nx1073), .A1 (nx1085)) ;
    nor02ii ix1044 (.Y (nx1045), .A0 (nx1073), .A1 (nx1087)) ;
    nor02ii ix1046 (.Y (nx1047), .A0 (nx1075), .A1 (ComparatorG)) ;
    nor02ii ix1048 (.Y (nx1049), .A0 (nx1075), .A1 (ComparatorG)) ;
    inv01 ix1068 (.Y (nx1069), .A (nx1067)) ;
    inv01 ix1070 (.Y (nx1071), .A (nx1067)) ;
    inv01 ix1072 (.Y (nx1073), .A (nx1067_XX0_XREP11)) ;
    inv01 ix1074 (.Y (nx1075), .A (nx1067)) ;
    inv02 ix1076 (.Y (nx1077), .A (nx703)) ;
    inv02 ix1078 (.Y (nx1079), .A (nx701)) ;
    inv01 ix1080 (.Y (nx1081), .A (nx719)) ;
    inv02 ix1082 (.Y (nx1083), .A (Count_0)) ;
    inv02 ix1084 (.Y (nx1085), .A (ComparatorG)) ;
    inv02 ix1086 (.Y (nx1087), .A (ComparatorG)) ;
    buf02 ix1088 (.Y (nx1089), .A (nx1043)) ;
    buf02 ix1090 (.Y (nx1091), .A (nx1045)) ;
    buf02 ix1092 (.Y (nx1093), .A (nx1047)) ;
    buf02 ix1094 (.Y (nx1095), .A (nx1049)) ;
    inv01 ix1066 (.Y (nx1067), .A (rst)) ;
    inv01 ix1066_0_XREP11 (.Y (nx1067_XX0_XREP11), .A (rst)) ;
endmodule


module Comparator_16 ( inputA, inputB, outputG, outputEqual ) ;

    input [15:0]inputA ;
    input [15:0]inputB ;
    output outputG ;
    output outputEqual ;

    wire nx91, nx170, nx137, nx213, nx215, nx5, nx332, nx333, nx334, nx335, 
         nx336, nx337, nx338, nx339, nx88, nx340, nx341, nx342, nx343, nx344, 
         nx345, nx346, nx347, nx348, nx349, nx350, nx351, nx352, nx353, nx354, 
         nx355, nx356, nx357, nx358, nx359, nx177, nx360, nx361, nx362, nx363, 
         nx364, nx365, nx366, nx367, nx368, nx369, nx370, nx371, nx372, nx373, 
         nx374, nx375, nx376, nx377, nx378, nx379, nx380, nx381, nx382, nx383, 
         nx384, nx385, nx386, nx387, nx388, nx389, nx390, nx391, nx392, nx393, 
         nx394, nx395, nx396, nx397, nx398, nx399, nx400, nx401, nx402, nx403, 
         nx404, nx405, nx406, nx407, nx408, nx409, nx410, nx411, nx412, nx413, 
         nx414, nx415, nx416, nx417, nx418, nx419, nx420, nx421, nx422, nx423, 
         nx424, nx425, nx426, nx427, nx428, nx429, nx430, nx431, nx72, nx432, 
         nx433, nx434, nx435, nx436, nx437, nx438, nx439, nx440, nx441, nx442, 
         nx48, nx443, nx44, nx444, nx445, nx446, nx447, nx448, nx449, nx450, 
         nx451, nx452, NOT_nx277, nx453, nx454, nx56, nx455, nx456, nx52, nx457, 
         nx458, nx286, nx459, nx460, nx461, nx209, nx462, nx463, nx464, nx465, 
         nx466, nx467, nx468, nx469, nx470, nx471, nx472, nx473, nx474, nx475, 
         nx476, nx477, nx478, nx188, nx479, NOT_nx141, nx480, nx481, nx633, 
         nx635, nx637, nx639, nx641, nx643, nx649, nx651;



    and02 ix93 (.Y (outputEqual), .A0 (nx137), .A1 (nx88)) ;
    xnor2 ix138 (.Y (nx137), .A0 (inputA[0]), .A1 (inputB[0])) ;
    oai33 ix171 (.Y (nx170), .A0 (nx209), .A1 (nx213), .A2 (inputB[12]), .B0 (
          nx177), .B1 (nx215), .B2 (inputB[13])) ;
    inv01 ix214 (.Y (nx213), .A (inputA[12])) ;
    inv01 ix216 (.Y (nx215), .A (inputA[13])) ;
    latchs_ni lat_outputG_u1 (.QB (nx5), .D (nx91), .CLK (nx188), .S (nx286)) ;
    inv02 lat_outputG_u2 (.Y (outputG), .A (nx5)) ;
    inv02 ix482 (.Y (nx332), .A (inputA[2])) ;
    inv02 ix483 (.Y (nx333), .A (inputA[3])) ;
    inv02 ix484 (.Y (nx334), .A (inputB[1])) ;
    inv02 ix485 (.Y (nx335), .A (inputB[0])) ;
    aoi22 ix486 (.Y (nx336), .A0 (inputA[1]), .A1 (nx334), .B0 (inputA[0]), .B1 (
          nx335)) ;
    nor02ii ix487 (.Y (nx337), .A0 (inputA[1]), .A1 (inputB[1])) ;
    inv02 ix488 (.Y (nx338), .A (inputA[1])) ;
    aoi22 ix489 (.Y (nx339), .A0 (inputB[1]), .A1 (inputA[1]), .B0 (nx334), .B1 (
          nx338)) ;
    nor02_2x reg_nx88 (.Y (nx88), .A0 (nx339), .A1 (nx372)) ;
    inv02 ix490 (.Y (nx340), .A (nx334)) ;
    nand02_2x ix491 (.Y (nx341), .A0 (inputB[1]), .A1 (nx338)) ;
    nor02ii ix492 (.Y (nx342), .A0 (inputA[0]), .A1 (inputB[0])) ;
    inv02 ix493 (.Y (nx343), .A (inputB[0])) ;
    inv02 ix494 (.Y (nx344), .A (inputB[1])) ;
    oai21 ix495 (.Y (nx345), .A0 (nx343), .A1 (inputA[0]), .B0 (nx344)) ;
    inv02 ix496 (.Y (nx346), .A (inputA[1])) ;
    aoi32 ix497 (.Y (nx347), .A0 (nx340), .A1 (nx341), .A2 (nx342), .B0 (nx345)
          , .B1 (nx346)) ;
    inv02 ix498 (.Y (nx348), .A (inputB[2])) ;
    inv02 ix499 (.Y (nx349), .A (inputA[2])) ;
    oai22 ix500 (.Y (nx350), .A0 (nx348), .A1 (inputA[2]), .B0 (nx349), .B1 (
          inputB[2])) ;
    inv02 ix501 (.Y (nx351), .A (inputB[14])) ;
    inv02 ix502 (.Y (nx352), .A (inputA[14])) ;
    inv02 ix503 (.Y (nx353), .A (inputB[15])) ;
    inv02 ix504 (.Y (nx354), .A (inputA[15])) ;
    inv02 ix505 (.Y (nx355), .A (inputB[12])) ;
    inv02 ix506 (.Y (nx356), .A (inputA[12])) ;
    inv02 ix507 (.Y (nx357), .A (inputB[13])) ;
    inv02 ix508 (.Y (nx358), .A (inputA[13])) ;
    oai22 ix509 (.Y (nx359), .A0 (nx358), .A1 (nx357), .B0 (inputA[13]), .B1 (
          inputB[13])) ;
    inv01 reg_nx177 (.Y (nx177), .A (nx417)) ;
    inv02 ix510 (.Y (nx360), .A (inputB[4])) ;
    inv02 ix511 (.Y (nx361), .A (inputA[4])) ;
    aoi22 ix512 (.Y (nx362), .A0 (inputA[4]), .A1 (nx360), .B0 (nx651), .B1 (
          nx361)) ;
    inv02 ix513 (.Y (nx363), .A (inputB[3])) ;
    inv02 ix514 (.Y (nx364), .A (inputA[3])) ;
    aoi22 ix515 (.Y (nx365), .A0 (inputA[3]), .A1 (nx363), .B0 (inputB[3]), .B1 (
          nx364)) ;
    oai221 ix516 (.Y (nx366), .A0 (nx348), .A1 (inputA[2]), .B0 (inputB[2]), .B1 (
           nx349), .C0 (nx365)) ;
    inv02 ix517 (.Y (nx367), .A (inputA[5])) ;
    oai22 ix518 (.Y (nx368), .A0 (nx360), .A1 (nx361), .B0 (nx651), .B1 (
          inputA[4])) ;
    aoi22 ix519 (.Y (nx369), .A0 (inputB[3]), .A1 (inputA[3]), .B0 (nx363), .B1 (
          nx364)) ;
    oai32 ix520 (.Y (nx370), .A0 (nx369), .A1 (nx332), .A2 (inputB[2]), .B0 (
          nx333), .B1 (inputB[3])) ;
    or02 ix521 (.Y (nx371), .A0 (nx336), .A1 (nx337)) ;
    inv01 ix522 (.Y (nx372), .A (NOT_nx141)) ;
    inv02 ix523 (.Y (nx373), .A (inputB[10])) ;
    inv02 ix524 (.Y (nx374), .A (inputA[10])) ;
    inv02 ix525 (.Y (nx375), .A (inputB[11])) ;
    inv02 ix526 (.Y (nx376), .A (inputA[11])) ;
    oai22 ix527 (.Y (nx377), .A0 (nx375), .A1 (inputA[11]), .B0 (nx376), .B1 (
          inputB[11])) ;
    oai22 ix528 (.Y (nx378), .A0 (nx376), .A1 (nx375), .B0 (inputA[11]), .B1 (
          inputB[11])) ;
    inv02 ix529 (.Y (nx379), .A (inputB[6])) ;
    inv02 ix530 (.Y (nx380), .A (inputA[6])) ;
    aoi22 ix531 (.Y (nx381), .A0 (inputB[6]), .A1 (inputA[6]), .B0 (nx379), .B1 (
          nx380)) ;
    inv02 ix532 (.Y (nx382), .A (inputB[5])) ;
    inv02 ix533 (.Y (nx383), .A (inputA[5])) ;
    aoi22 ix534 (.Y (nx384), .A0 (inputB[5]), .A1 (inputA[5]), .B0 (nx382), .B1 (
          nx383)) ;
    oai32 ix535 (.Y (nx385), .A0 (nx637), .A1 (nx361), .A2 (nx651), .B0 (nx367)
          , .B1 (inputB[5])) ;
    nor02ii ix536 (.Y (nx386), .A0 (nx635), .A1 (nx385)) ;
    inv02 ix537 (.Y (nx387), .A (inputA[7])) ;
    aoi22 ix538 (.Y (nx388), .A0 (inputA[6]), .A1 (nx379), .B0 (inputB[6]), .B1 (
          nx380)) ;
    aoi22 ix539 (.Y (nx389), .A0 (inputA[5]), .A1 (nx382), .B0 (inputB[5]), .B1 (
          nx383)) ;
    inv02 ix540 (.Y (nx390), .A (inputA[9])) ;
    inv02 ix541 (.Y (nx391), .A (inputB[9])) ;
    inv02 ix542 (.Y (nx392), .A (inputA[8])) ;
    inv02 ix543 (.Y (nx393), .A (inputB[8])) ;
    inv01 ix544 (.Y (nx394), .A (nx362)) ;
    inv02 ix545 (.Y (nx395), .A (inputA[7])) ;
    inv02 ix546 (.Y (nx396), .A (inputB[7])) ;
    aoi22 ix547 (.Y (nx397), .A0 (inputA[7]), .A1 (inputB[7]), .B0 (nx395), .B1 (
          nx396)) ;
    or03 ix548 (.Y (nx398), .A0 (nx635), .A1 (nx394), .A2 (nx397)) ;
    nor02_2x ix549 (.Y (nx399), .A0 (nx635), .A1 (nx637)) ;
    aoi22 ix550 (.Y (nx400), .A0 (inputB[7]), .A1 (nx395), .B0 (inputA[7]), .B1 (
          nx396)) ;
    oai22 ix551 (.Y (nx401), .A0 (nx357), .A1 (inputA[13]), .B0 (nx358), .B1 (
          inputB[13])) ;
    oai22 ix552 (.Y (nx402), .A0 (nx353), .A1 (inputA[15]), .B0 (nx354), .B1 (
          nx649)) ;
    oai22 ix553 (.Y (nx403), .A0 (nx390), .A1 (nx391), .B0 (inputA[9]), .B1 (
          inputB[9])) ;
    aoi22 ix554 (.Y (nx404), .A0 (inputB[8]), .A1 (nx392), .B0 (inputA[8]), .B1 (
          nx393)) ;
    inv01 ix555 (.Y (nx405), .A (nx362)) ;
    nor02_2x ix556 (.Y (nx406), .A0 (nx348), .A1 (inputA[2])) ;
    inv02 ix557 (.Y (nx407), .A (inputA[3])) ;
    aoi44 ix558 (.Y (nx408), .A0 (nx459), .A1 (nx438), .A2 (nx365), .A3 (nx406)
          , .B0 (nx399), .B1 (nx400), .B2 (inputB[3]), .B3 (nx407)) ;
    inv01 ix559 (.Y (nx409), .A (nx365)) ;
    inv02 ix560 (.Y (nx410), .A (inputA[4])) ;
    inv02 ix561 (.Y (nx411), .A (inputA[5])) ;
    inv01 ix562 (.Y (nx412), .A (nx400)) ;
    inv02 ix563 (.Y (nx413), .A (inputB[6])) ;
    inv02 ix564 (.Y (nx414), .A (inputB[7])) ;
    inv01 ix565 (.Y (nx415), .A (nx400)) ;
    oai32 ix566 (.Y (nx416), .A0 (nx415), .A1 (nx380), .A2 (inputB[6]), .B0 (
          nx387), .B1 (inputB[7])) ;
    aoi221 ix567 (.Y (nx417), .A0 (inputA[14]), .A1 (nx351), .B0 (inputB[14]), .B1 (
           nx352), .C0 (nx402)) ;
    and02 ix568 (.Y (nx418), .A0 (inputA[12]), .A1 (nx355)) ;
    and02 ix569 (.Y (nx419), .A0 (inputB[12]), .A1 (nx356)) ;
    nor03_2x ix570 (.Y (nx420), .A0 (nx418), .A1 (nx419), .A2 (nx401)) ;
    and02 ix571 (.Y (nx421), .A0 (inputA[10]), .A1 (nx373)) ;
    nor02_2x ix572 (.Y (nx422), .A0 (nx641), .A1 (nx633)) ;
    inv02 ix573 (.Y (nx423), .A (nx403)) ;
    inv01 ix574 (.Y (nx424), .A (nx404)) ;
    and02 ix575 (.Y (nx425), .A0 (inputB[10]), .A1 (nx374)) ;
    nor03_2x ix576 (.Y (nx426), .A0 (nx423), .A1 (nx424), .A2 (nx643)) ;
    and04 ix577 (.Y (nx427), .A0 (nx639), .A1 (nx420), .A2 (nx422), .A3 (nx426)
          ) ;
    nor04_2x ix578 (.Y (nx428), .A0 (nx409), .A1 (nx405), .A2 (nx347), .A3 (
             nx350)) ;
    nand02_2x ix579 (.Y (nx429), .A0 (nx404), .A1 (nx403)) ;
    or04 ix580 (.Y (nx430), .A0 (nx397), .A1 (nx635), .A2 (nx643), .A3 (nx637)
         ) ;
    nor04_2x ix581 (.Y (nx431), .A0 (nx641), .A1 (nx633), .A2 (nx429), .A3 (
             nx430)) ;
    and03 reg_nx72 (.Y (nx72), .A0 (nx639), .A1 (nx431), .A2 (nx420)) ;
    aoi32 ix582 (.Y (nx432), .A0 (nx389), .A1 (nx651), .A2 (nx410), .B0 (
          inputB[5]), .B1 (nx411)) ;
    inv01 ix583 (.Y (nx433), .A (nx388)) ;
    oai32 ix584 (.Y (nx434), .A0 (nx412), .A1 (nx413), .A2 (inputA[6]), .B0 (
          nx414), .B1 (inputA[7])) ;
    inv01 ix585 (.Y (nx435), .A (nx434)) ;
    oai321 ix586 (.Y (nx436), .A0 (nx432), .A1 (nx397), .A2 (nx433), .B0 (nx405)
           , .B1 (nx408), .C0 (nx435)) ;
    aoi321 ix587 (.Y (nx437), .A0 (nx389), .A1 (nx651), .A2 (nx410), .B0 (
           inputB[5]), .B1 (nx411), .C0 (nx428)) ;
    inv01 ix588 (.Y (nx438), .A (nx397)) ;
    aoi21 ix589 (.Y (nx439), .A0 (nx438), .A1 (nx388), .B0 (nx428)) ;
    oai221 ix590 (.Y (nx440), .A0 (nx437), .A1 (nx439), .B0 (nx405), .B1 (nx408)
           , .C0 (nx435)) ;
    inv02 ix591 (.Y (nx441), .A (nx378)) ;
    nor04_2x ix592 (.Y (nx442), .A0 (nx441), .A1 (nx419), .A2 (nx418), .A3 (
             nx401)) ;
    and02 reg_nx48 (.Y (nx48), .A0 (nx639), .A1 (nx442)) ;
    inv02 ix593 (.Y (nx443), .A (inputA[10])) ;
    and02 reg_nx44 (.Y (nx44), .A0 (nx639), .A1 (nx420)) ;
    nor02ii ix594 (.Y (nx444), .A0 (inputA[11]), .A1 (inputB[11])) ;
    nand02_2x ix595 (.Y (nx445), .A0 (nx353), .A1 (nx649)) ;
    nand02_2x ix596 (.Y (nx446), .A0 (nx354), .A1 (nx649)) ;
    inv02 ix597 (.Y (nx447), .A (inputB[14])) ;
    inv02 ix598 (.Y (nx448), .A (inputA[15])) ;
    oai22 ix599 (.Y (nx449), .A0 (nx447), .A1 (inputA[14]), .B0 (nx448), .B1 (
          nx649)) ;
    inv02 ix600 (.Y (nx450), .A (inputA[12])) ;
    inv02 ix601 (.Y (nx451), .A (inputA[13])) ;
    ao32 ix602 (.Y (nx452), .A0 (nx359), .A1 (inputB[12]), .A2 (nx450), .B0 (
         inputB[13]), .B1 (nx451)) ;
    ao32 reg_NOT_nx277 (.Y (NOT_nx277), .A0 (nx445), .A1 (nx446), .A2 (nx449), .B0 (
         nx452), .B1 (nx639)) ;
    aoi321 ix603 (.Y (nx453), .A0 (nx48), .A1 (inputB[10]), .A2 (nx443), .B0 (
           nx44), .B1 (nx444), .C0 (NOT_nx277)) ;
    nor04_2x ix604 (.Y (nx454), .A0 (nx641), .A1 (nx633), .A2 (nx423), .A3 (
             nx643)) ;
    and03 reg_nx56 (.Y (nx56), .A0 (nx639), .A1 (nx420), .A2 (nx454)) ;
    inv02 ix605 (.Y (nx455), .A (inputA[8])) ;
    nor03_2x ix606 (.Y (nx456), .A0 (nx641), .A1 (nx643), .A2 (nx633)) ;
    and03 reg_nx52 (.Y (nx52), .A0 (nx639), .A1 (nx420), .A2 (nx456)) ;
    inv02 ix607 (.Y (nx457), .A (inputA[9])) ;
    aoi33 ix608 (.Y (nx458), .A0 (nx56), .A1 (inputB[8]), .A2 (nx455), .B0 (nx52
          ), .B1 (inputB[9]), .B2 (nx457)) ;
    nand03_2x reg_nx286 (.Y (nx286), .A0 (nx481), .A1 (nx453), .A2 (nx458)) ;
    nor02_2x ix609 (.Y (nx459), .A0 (nx635), .A1 (nx637)) ;
    nand02_2x ix610 (.Y (nx460), .A0 (inputA[14]), .A1 (nx351)) ;
    aoi21 ix611 (.Y (nx461), .A0 (inputB[14]), .A1 (nx352), .B0 (nx402)) ;
    nand03_2x reg_nx209 (.Y (nx209), .A0 (nx460), .A1 (nx359), .A2 (nx461)) ;
    inv02 ix612 (.Y (nx462), .A (inputB[8])) ;
    inv02 ix613 (.Y (nx463), .A (inputB[9])) ;
    aoi33 ix614 (.Y (nx464), .A0 (nx56), .A1 (inputA[8]), .A2 (nx462), .B0 (nx52
          ), .B1 (inputA[9]), .B2 (nx463)) ;
    inv02 ix615 (.Y (nx465), .A (inputB[10])) ;
    inv02 ix616 (.Y (nx466), .A (inputB[11])) ;
    aoi33 ix617 (.Y (nx467), .A0 (nx48), .A1 (inputA[10]), .A2 (nx465), .B0 (
          nx44), .B1 (inputA[11]), .B2 (nx466)) ;
    inv02 ix618 (.Y (nx468), .A (inputA[15])) ;
    nand02_2x ix619 (.Y (nx469), .A0 (nx649), .A1 (nx468)) ;
    inv02 ix620 (.Y (nx470), .A (inputB[14])) ;
    nand02_2x ix621 (.Y (nx471), .A0 (inputA[14]), .A1 (nx470)) ;
    aoi222 ix622 (.Y (nx472), .A0 (nx469), .A1 (nx471), .B0 (nx354), .B1 (
           inputA[15]), .C0 (nx353), .C1 (inputA[15])) ;
    nor02_2x ix623 (.Y (nx473), .A0 (nx472), .A1 (nx170)) ;
    inv01 ix624 (.Y (nx474), .A (nx404)) ;
    nor02_2x ix625 (.Y (nx475), .A0 (nx474), .A1 (nx398)) ;
    nor03_2x ix626 (.Y (nx476), .A0 (nx637), .A1 (nx371), .A2 (nx366)) ;
    ao21 ix627 (.Y (nx477), .A0 (nx386), .A1 (nx438), .B0 (nx416)) ;
    aoi332 ix628 (.Y (nx478), .A0 (nx72), .A1 (nx368), .A2 (nx370), .B0 (nx56), 
           .B1 (nx475), .B2 (nx476), .C0 (nx427), .C1 (nx477)) ;
    nand04_2x reg_nx188 (.Y (nx188), .A0 (nx464), .A1 (nx467), .A2 (nx473), .A3 (
              nx478)) ;
    nor04_2x ix629 (.Y (nx479), .A0 (nx474), .A1 (nx398), .A2 (nx637), .A3 (
             nx366)) ;
    and02 reg_NOT_nx141 (.Y (NOT_nx141), .A0 (nx56), .A1 (nx479)) ;
    and02 ix630 (.Y (nx480), .A0 (nx428), .A1 (nx72)) ;
    oai221 ix631 (.Y (nx481), .A0 (nx480), .A1 (nx427), .B0 (nx72), .B1 (nx436)
           , .C0 (nx440)) ;
    buf02 ix632 (.Y (nx633), .A (nx377)) ;
    buf02 ix634 (.Y (nx635), .A (nx381)) ;
    buf02 ix636 (.Y (nx637), .A (nx384)) ;
    inv01 ix638 (.Y (nx639), .A (nx177)) ;
    buf02 ix640 (.Y (nx641), .A (nx421)) ;
    buf02 ix642 (.Y (nx643), .A (nx425)) ;
    inv02 ix648 (.Y (nx649), .A (nx353)) ;
    inv02 ix650 (.Y (nx651), .A (nx360)) ;
endmodule


module CounterUpDown_4 ( load, resetValue, clk, en, rst, isLoad, upOrDown, count
                          ) ;

    input [3:0]load ;
    input [3:0]resetValue ;
    input clk ;
    input en ;
    input rst ;
    input isLoad ;
    input upOrDown ;
    output [3:0]count ;

    wire countAdded_3, countAdded_2, countAdded_1, countAdded_0, NOT_upOrDown, 
         nx8, nx10, nx14, nx24, nx26, nx30, nx40, nx42, nx46, nx56, nx58, nx62, 
         nx202, nx212, nx222, nx232, nx249, nx290;
    wire [4:0] \$dummy ;




    NBitAdder_4 nextCount (.a ({count[3],count[2],count[1],count[0]}), .b ({
                upOrDown,upOrDown,upOrDown,upOrDown}), .carryIn (NOT_upOrDown), 
                .sum ({countAdded_3,countAdded_2,countAdded_1,countAdded_0}), .carryOut (
                \$dummy [0])) ;
    inv01 ix245 (.Y (NOT_upOrDown), .A (upOrDown)) ;
    dffsr_ni reg_currentCount_0 (.Q (count[0]), .QB (\$dummy [1]), .D (nx202), .CLK (
             clk), .S (nx10), .R (nx14)) ;
    mux21_ni ix203 (.Y (nx202), .A0 (nx8), .A1 (count[0]), .S0 (nx249)) ;
    mux21_ni ix9 (.Y (nx8), .A0 (load[0]), .A1 (countAdded_0), .S0 (nx290)) ;
    and02 ix11 (.Y (nx10), .A0 (resetValue[0]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_1 (.Q (count[1]), .QB (\$dummy [2]), .D (nx212), .CLK (
             clk), .S (nx26), .R (nx30)) ;
    mux21_ni ix213 (.Y (nx212), .A0 (nx24), .A1 (count[1]), .S0 (nx249)) ;
    mux21_ni ix25 (.Y (nx24), .A0 (load[1]), .A1 (countAdded_1), .S0 (nx290)) ;
    and02 ix27 (.Y (nx26), .A0 (resetValue[1]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_2 (.Q (count[2]), .QB (\$dummy [3]), .D (nx222), .CLK (
             clk), .S (nx42), .R (nx46)) ;
    mux21_ni ix223 (.Y (nx222), .A0 (nx40), .A1 (count[2]), .S0 (nx249)) ;
    mux21_ni ix41 (.Y (nx40), .A0 (load[2]), .A1 (countAdded_2), .S0 (nx290)) ;
    and02 ix43 (.Y (nx42), .A0 (resetValue[2]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_3 (.Q (count[3]), .QB (\$dummy [4]), .D (nx232), .CLK (
             clk), .S (nx58), .R (nx62)) ;
    mux21_ni ix233 (.Y (nx232), .A0 (nx56), .A1 (count[3]), .S0 (nx249)) ;
    mux21_ni ix57 (.Y (nx56), .A0 (load[3]), .A1 (countAdded_3), .S0 (nx290)) ;
    and02 ix59 (.Y (nx58), .A0 (resetValue[3]), .A1 (rst)) ;
    nor02ii ix15 (.Y (nx14), .A0 (resetValue[0]), .A1 (rst)) ;
    nor02ii ix31 (.Y (nx30), .A0 (resetValue[1]), .A1 (rst)) ;
    nor02ii ix47 (.Y (nx46), .A0 (resetValue[2]), .A1 (rst)) ;
    nor02ii ix63 (.Y (nx62), .A0 (resetValue[3]), .A1 (rst)) ;
    nor02_2x reg_nx249 (.Y (nx249), .A0 (isLoad), .A1 (nx290)) ;
    buf02 ix289 (.Y (nx290), .A (en)) ;
endmodule


module NBitAdder_4 ( a, b, carryIn, sum, carryOut ) ;

    input [3:0]a ;
    input [3:0]b ;
    input carryIn ;
    output [3:0]sum ;
    output carryOut ;

    wire temp_2, temp_1, temp_0;



    FullAdder f0 (.a (a[0]), .b (b[0]), .cin (carryIn), .s (sum[0]), .cout (
              temp_0)) ;
    FullAdder loop1_1_fx (.a (a[1]), .b (b[1]), .cin (temp_0), .s (sum[1]), .cout (
              temp_1)) ;
    FullAdder loop1_2_fx (.a (a[2]), .b (b[2]), .cin (temp_1), .s (sum[2]), .cout (
              temp_2)) ;
    FullAdder loop1_3_fx (.a (a[3]), .b (b[3]), .cin (temp_2), .s (sum[3]), .cout (
              carryOut)) ;
endmodule


module RegTony_4 ( D, load, en, clk, rst, Q, Qbar ) ;

    input [3:0]D ;
    input [3:0]load ;
    input en ;
    input clk ;
    input rst ;
    output [3:0]Q ;
    output [3:0]Qbar ;

    wire nx0, nx4, nx8, nx12, nx16, nx20, nx24, nx28, nx176, nx186, nx196, nx206, 
         nx216, nx226, nx236, nx260, nx269, nx276, nx307, nx320, nx321, nx246, 
         nx325, nx327;
    wire [7:0] \$dummy ;




    dffsr_ni reg_Qbar_0 (.Q (Qbar[0]), .QB (\$dummy [0]), .D (nx216), .CLK (clk)
             , .S (nx4), .R (nx0)) ;
    mux21_ni ix217 (.Y (nx216), .A0 (Qbar[0]), .A1 (nx260), .S0 (nx325)) ;
    inv01 ix261 (.Y (nx260), .A (D[0])) ;
    and02 ix1 (.Y (nx0), .A0 (rst), .A1 (load[0])) ;
    dffsr_ni reg_Qbar_1 (.Q (Qbar[1]), .QB (\$dummy [1]), .D (nx226), .CLK (clk)
             , .S (nx12), .R (nx8)) ;
    mux21_ni ix227 (.Y (nx226), .A0 (Qbar[1]), .A1 (nx269), .S0 (nx325)) ;
    inv01 ix270 (.Y (nx269), .A (D[1])) ;
    and02 ix9 (.Y (nx8), .A0 (rst), .A1 (load[1])) ;
    dffsr_ni reg_Qbar_2 (.Q (Qbar[2]), .QB (\$dummy [2]), .D (nx236), .CLK (clk)
             , .S (nx20), .R (nx16)) ;
    mux21_ni ix237 (.Y (nx236), .A0 (Qbar[2]), .A1 (nx276), .S0 (nx325)) ;
    inv01 ix277 (.Y (nx276), .A (D[2])) ;
    and02 ix17 (.Y (nx16), .A0 (rst), .A1 (load[2])) ;
    dffsr_ni reg_Qbar_3 (.Q (Qbar[3]), .QB (\$dummy [3]), .D (nx246), .CLK (clk)
             , .S (nx28), .R (nx24)) ;
    and02 ix25 (.Y (nx24), .A0 (rst), .A1 (load[3])) ;
    dffsr_ni reg_Q_0 (.Q (Q[0]), .QB (\$dummy [4]), .D (nx176), .CLK (clk), .S (
             nx0), .R (nx4)) ;
    mux21_ni ix177 (.Y (nx176), .A0 (Q[0]), .A1 (D[0]), .S0 (nx325)) ;
    dffsr_ni reg_Q_1 (.Q (Q[1]), .QB (\$dummy [5]), .D (nx186), .CLK (clk), .S (
             nx8), .R (nx12)) ;
    mux21_ni ix187 (.Y (nx186), .A0 (Q[1]), .A1 (D[1]), .S0 (nx325)) ;
    dffsr_ni reg_Q_2 (.Q (Q[2]), .QB (\$dummy [6]), .D (nx196), .CLK (clk), .S (
             nx16), .R (nx20)) ;
    mux21_ni ix197 (.Y (nx196), .A0 (Q[2]), .A1 (D[2]), .S0 (nx325)) ;
    dffsr_ni reg_Q_3 (.Q (Q[3]), .QB (\$dummy [7]), .D (nx206), .CLK (clk), .S (
             nx24), .R (nx28)) ;
    mux21_ni ix207 (.Y (nx206), .A0 (Q[3]), .A1 (D[3]), .S0 (nx307)) ;
    nor02ii ix5 (.Y (nx4), .A0 (load[0]), .A1 (rst)) ;
    nor02ii ix13 (.Y (nx12), .A0 (load[1]), .A1 (rst)) ;
    nor02ii ix21 (.Y (nx20), .A0 (load[2]), .A1 (rst)) ;
    nor02ii ix29 (.Y (nx28), .A0 (load[3]), .A1 (rst)) ;
    buf02 ix306 (.Y (nx307), .A (nx325)) ;
    inv02 ix322 (.Y (nx320), .A (en)) ;
    inv02 ix323 (.Y (nx321), .A (D[3])) ;
    ao22 reg_nx246 (.Y (nx246), .A0 (Qbar[3]), .A1 (nx320), .B0 (nx327), .B1 (
         nx321)) ;
    inv02 ix324 (.Y (nx325), .A (nx320)) ;
    inv02 ix326 (.Y (nx327), .A (nx320)) ;
endmodule


module RegTony_16 ( D, load, en, clk, rst, Q, Qbar ) ;

    input [15:0]D ;
    input [15:0]load ;
    input en ;
    input clk ;
    input rst ;
    output [15:0]Q ;
    output [15:0]Qbar ;

    wire nx0, nx4, nx8, nx12, nx16, nx20, nx24, nx28, nx32, nx36, nx40, nx44, 
         nx48, nx52, nx56, nx60, nx64, nx68, nx72, nx76, nx80, nx84, nx88, nx92, 
         nx96, nx100, nx104, nx108, nx112, nx116, nx120, nx124, nx536, nx546, 
         nx556, nx566, nx576, nx586, nx596, nx606, nx616, nx626, nx636, nx646, 
         nx656, nx666, nx676, nx686, nx696, nx706, nx716, nx726, nx736, nx746, 
         nx756, nx766, nx776, nx786, nx796, nx806, nx816, nx826, nx836, nx860, 
         nx869, nx876, nx883, nx890, nx897, nx904, nx911, nx918, nx925, nx932, 
         nx939, nx946, nx953, nx960, nx1037, nx1039, nx1041, nx1043, nx1045, 
         nx1049, nx1051, nx1055, nx1057, nx1047, nx1047_XX0_XREP1, nx1035, 
         nx1035_XX0_XREP3, nx1094, nx1053, nx846;
    wire [31:0] \$dummy ;




    dffsr_ni reg_Qbar_0 (.Q (Qbar[0]), .QB (\$dummy [0]), .D (nx696), .CLK (clk)
             , .S (nx4), .R (nx0)) ;
    mux21_ni ix697 (.Y (nx696), .A0 (Qbar[0]), .A1 (nx860), .S0 (nx1049)) ;
    inv01 ix861 (.Y (nx860), .A (D[0])) ;
    and02 ix1 (.Y (nx0), .A0 (nx1037), .A1 (load[0])) ;
    dffsr_ni reg_Qbar_1 (.Q (Qbar[1]), .QB (\$dummy [1]), .D (nx706), .CLK (clk)
             , .S (nx12), .R (nx8)) ;
    mux21_ni ix707 (.Y (nx706), .A0 (Qbar[1]), .A1 (nx869), .S0 (nx1049)) ;
    inv01 ix870 (.Y (nx869), .A (D[1])) ;
    and02 ix9 (.Y (nx8), .A0 (nx1037), .A1 (load[1])) ;
    dffsr_ni reg_Qbar_2 (.Q (Qbar[2]), .QB (\$dummy [2]), .D (nx716), .CLK (clk)
             , .S (nx20), .R (nx16)) ;
    mux21_ni ix717 (.Y (nx716), .A0 (Qbar[2]), .A1 (nx876), .S0 (nx1049)) ;
    inv01 ix877 (.Y (nx876), .A (D[2])) ;
    and02 ix17 (.Y (nx16), .A0 (nx1037), .A1 (load[2])) ;
    dffsr_ni reg_Qbar_3 (.Q (Qbar[3]), .QB (\$dummy [3]), .D (nx726), .CLK (clk)
             , .S (nx28), .R (nx24)) ;
    mux21_ni ix727 (.Y (nx726), .A0 (Qbar[3]), .A1 (nx883), .S0 (nx1049)) ;
    inv01 ix884 (.Y (nx883), .A (D[3])) ;
    and02 ix25 (.Y (nx24), .A0 (nx1037), .A1 (load[3])) ;
    dffsr_ni reg_Qbar_4 (.Q (Qbar[4]), .QB (\$dummy [4]), .D (nx736), .CLK (clk)
             , .S (nx36), .R (nx32)) ;
    mux21_ni ix737 (.Y (nx736), .A0 (Qbar[4]), .A1 (nx890), .S0 (nx1049)) ;
    inv01 ix891 (.Y (nx890), .A (D[4])) ;
    and02 ix33 (.Y (nx32), .A0 (nx1037), .A1 (load[4])) ;
    dffsr_ni reg_Qbar_5 (.Q (Qbar[5]), .QB (\$dummy [5]), .D (nx746), .CLK (clk)
             , .S (nx44), .R (nx40)) ;
    mux21_ni ix747 (.Y (nx746), .A0 (Qbar[5]), .A1 (nx897), .S0 (nx1049)) ;
    inv01 ix898 (.Y (nx897), .A (D[5])) ;
    and02 ix41 (.Y (nx40), .A0 (nx1037), .A1 (load[5])) ;
    dffsr_ni reg_Qbar_6 (.Q (Qbar[6]), .QB (\$dummy [6]), .D (nx756), .CLK (clk)
             , .S (nx52), .R (nx48)) ;
    mux21_ni ix757 (.Y (nx756), .A0 (Qbar[6]), .A1 (nx904), .S0 (nx1049)) ;
    inv01 ix905 (.Y (nx904), .A (D[6])) ;
    and02 ix49 (.Y (nx48), .A0 (nx1037), .A1 (load[6])) ;
    dffsr_ni reg_Qbar_7 (.Q (Qbar[7]), .QB (\$dummy [7]), .D (nx766), .CLK (clk)
             , .S (nx60), .R (nx56)) ;
    mux21_ni ix767 (.Y (nx766), .A0 (Qbar[7]), .A1 (nx911), .S0 (nx1051)) ;
    inv01 ix912 (.Y (nx911), .A (D[7])) ;
    and02 ix57 (.Y (nx56), .A0 (nx1039), .A1 (load[7])) ;
    dffsr_ni reg_Qbar_8 (.Q (Qbar[8]), .QB (\$dummy [8]), .D (nx776), .CLK (clk)
             , .S (nx68), .R (nx64)) ;
    mux21_ni ix777 (.Y (nx776), .A0 (Qbar[8]), .A1 (nx918), .S0 (nx1051)) ;
    inv01 ix919 (.Y (nx918), .A (D[8])) ;
    and02 ix65 (.Y (nx64), .A0 (nx1039), .A1 (load[8])) ;
    dffsr_ni reg_Qbar_9 (.Q (Qbar[9]), .QB (\$dummy [9]), .D (nx786), .CLK (clk)
             , .S (nx76), .R (nx72)) ;
    mux21_ni ix787 (.Y (nx786), .A0 (Qbar[9]), .A1 (nx925), .S0 (nx1051)) ;
    inv01 ix926 (.Y (nx925), .A (D[9])) ;
    and02 ix73 (.Y (nx72), .A0 (nx1039), .A1 (load[9])) ;
    dffsr_ni reg_Qbar_10 (.Q (Qbar[10]), .QB (\$dummy [10]), .D (nx796), .CLK (
             clk), .S (nx84), .R (nx80)) ;
    mux21_ni ix797 (.Y (nx796), .A0 (Qbar[10]), .A1 (nx932), .S0 (nx1051)) ;
    inv01 ix933 (.Y (nx932), .A (D[10])) ;
    and02 ix81 (.Y (nx80), .A0 (nx1039), .A1 (load[10])) ;
    dffsr_ni reg_Qbar_11 (.Q (Qbar[11]), .QB (\$dummy [11]), .D (nx806), .CLK (
             clk), .S (nx92), .R (nx88)) ;
    mux21_ni ix807 (.Y (nx806), .A0 (Qbar[11]), .A1 (nx939), .S0 (nx1051)) ;
    inv01 ix940 (.Y (nx939), .A (D[11])) ;
    and02 ix89 (.Y (nx88), .A0 (nx1039), .A1 (load[11])) ;
    dffsr_ni reg_Qbar_12 (.Q (Qbar[12]), .QB (\$dummy [12]), .D (nx816), .CLK (
             clk), .S (nx100), .R (nx96)) ;
    mux21_ni ix817 (.Y (nx816), .A0 (Qbar[12]), .A1 (nx946), .S0 (nx1051)) ;
    inv01 ix947 (.Y (nx946), .A (D[12])) ;
    and02 ix97 (.Y (nx96), .A0 (nx1039), .A1 (load[12])) ;
    dffsr_ni reg_Qbar_13 (.Q (Qbar[13]), .QB (\$dummy [13]), .D (nx826), .CLK (
             clk), .S (nx108), .R (nx104)) ;
    mux21_ni ix827 (.Y (nx826), .A0 (Qbar[13]), .A1 (nx953), .S0 (nx1051)) ;
    inv01 ix954 (.Y (nx953), .A (D[13])) ;
    and02 ix105 (.Y (nx104), .A0 (nx1039), .A1 (load[13])) ;
    dffsr_ni reg_Qbar_14 (.Q (Qbar[14]), .QB (\$dummy [14]), .D (nx836), .CLK (
             clk), .S (nx116), .R (nx112)) ;
    mux21_ni ix837 (.Y (nx836), .A0 (Qbar[14]), .A1 (nx960), .S0 (nx1053)) ;
    inv01 ix961 (.Y (nx960), .A (D[14])) ;
    and02 ix113 (.Y (nx112), .A0 (nx1041), .A1 (load[14])) ;
    dffsr_ni reg_Qbar_15 (.Q (Qbar[15]), .QB (\$dummy [15]), .D (nx846), .CLK (
             clk), .S (nx124), .R (nx120)) ;
    and02 ix121 (.Y (nx120), .A0 (nx1041), .A1 (load[15])) ;
    dffsr_ni reg_Q_0 (.Q (Q[0]), .QB (\$dummy [16]), .D (nx536), .CLK (clk), .S (
             nx0), .R (nx4)) ;
    mux21_ni ix537 (.Y (nx536), .A0 (Q[0]), .A1 (D[0]), .S0 (nx1053)) ;
    dffsr_ni reg_Q_1 (.Q (Q[1]), .QB (\$dummy [17]), .D (nx546), .CLK (clk), .S (
             nx8), .R (nx12)) ;
    mux21_ni ix547 (.Y (nx546), .A0 (Q[1]), .A1 (D[1]), .S0 (nx1053)) ;
    dffsr_ni reg_Q_2 (.Q (Q[2]), .QB (\$dummy [18]), .D (nx556), .CLK (clk), .S (
             nx16), .R (nx20)) ;
    mux21_ni ix557 (.Y (nx556), .A0 (Q[2]), .A1 (D[2]), .S0 (nx1053)) ;
    dffsr_ni reg_Q_3 (.Q (Q[3]), .QB (\$dummy [19]), .D (nx566), .CLK (clk), .S (
             nx24), .R (nx28)) ;
    mux21_ni ix567 (.Y (nx566), .A0 (Q[3]), .A1 (D[3]), .S0 (nx1053)) ;
    dffsr_ni reg_Q_4 (.Q (Q[4]), .QB (\$dummy [20]), .D (nx576), .CLK (clk), .S (
             nx32), .R (nx36)) ;
    mux21_ni ix577 (.Y (nx576), .A0 (Q[4]), .A1 (D[4]), .S0 (nx1053)) ;
    dffsr_ni reg_Q_5 (.Q (Q[5]), .QB (\$dummy [21]), .D (nx586), .CLK (clk), .S (
             nx40), .R (nx44)) ;
    mux21_ni ix587 (.Y (nx586), .A0 (Q[5]), .A1 (D[5]), .S0 (nx1055)) ;
    dffsr_ni reg_Q_6 (.Q (Q[6]), .QB (\$dummy [22]), .D (nx596), .CLK (clk), .S (
             nx48), .R (nx52)) ;
    mux21_ni ix597 (.Y (nx596), .A0 (Q[6]), .A1 (D[6]), .S0 (nx1055)) ;
    dffsr_ni reg_Q_7 (.Q (Q[7]), .QB (\$dummy [23]), .D (nx606), .CLK (clk), .S (
             nx56), .R (nx60)) ;
    mux21_ni ix607 (.Y (nx606), .A0 (Q[7]), .A1 (D[7]), .S0 (nx1055)) ;
    dffsr_ni reg_Q_8 (.Q (Q[8]), .QB (\$dummy [24]), .D (nx616), .CLK (clk), .S (
             nx64), .R (nx68)) ;
    mux21_ni ix617 (.Y (nx616), .A0 (Q[8]), .A1 (D[8]), .S0 (nx1055)) ;
    dffsr_ni reg_Q_9 (.Q (Q[9]), .QB (\$dummy [25]), .D (nx626), .CLK (clk), .S (
             nx72), .R (nx76)) ;
    mux21_ni ix627 (.Y (nx626), .A0 (Q[9]), .A1 (D[9]), .S0 (nx1055)) ;
    dffsr_ni reg_Q_10 (.Q (Q[10]), .QB (\$dummy [26]), .D (nx636), .CLK (clk), .S (
             nx80), .R (nx84)) ;
    mux21_ni ix637 (.Y (nx636), .A0 (Q[10]), .A1 (D[10]), .S0 (nx1055)) ;
    dffsr_ni reg_Q_11 (.Q (Q[11]), .QB (\$dummy [27]), .D (nx646), .CLK (clk), .S (
             nx88), .R (nx92)) ;
    mux21_ni ix647 (.Y (nx646), .A0 (Q[11]), .A1 (D[11]), .S0 (nx1055)) ;
    dffsr_ni reg_Q_12 (.Q (Q[12]), .QB (\$dummy [28]), .D (nx656), .CLK (clk), .S (
             nx96), .R (nx100)) ;
    mux21_ni ix657 (.Y (nx656), .A0 (Q[12]), .A1 (D[12]), .S0 (nx1057)) ;
    dffsr_ni reg_Q_13 (.Q (Q[13]), .QB (\$dummy [29]), .D (nx666), .CLK (clk), .S (
             nx104), .R (nx108)) ;
    mux21_ni ix667 (.Y (nx666), .A0 (Q[13]), .A1 (D[13]), .S0 (nx1057)) ;
    dffsr_ni reg_Q_14 (.Q (Q[14]), .QB (\$dummy [30]), .D (nx676), .CLK (clk), .S (
             nx112), .R (nx116)) ;
    mux21_ni ix677 (.Y (nx676), .A0 (Q[14]), .A1 (D[14]), .S0 (nx1057)) ;
    dffsr_ni reg_Q_15 (.Q (Q[15]), .QB (\$dummy [31]), .D (nx686), .CLK (clk), .S (
             nx120), .R (nx124)) ;
    mux21_ni ix687 (.Y (nx686), .A0 (Q[15]), .A1 (D[15]), .S0 (nx1057)) ;
    nor02ii ix5 (.Y (nx4), .A0 (load[0]), .A1 (nx1041)) ;
    nor02ii ix13 (.Y (nx12), .A0 (load[1]), .A1 (nx1041)) ;
    nor02ii ix21 (.Y (nx20), .A0 (load[2]), .A1 (nx1041)) ;
    nor02ii ix29 (.Y (nx28), .A0 (load[3]), .A1 (nx1041)) ;
    nor02ii ix37 (.Y (nx36), .A0 (load[4]), .A1 (nx1041)) ;
    nor02ii ix45 (.Y (nx44), .A0 (load[5]), .A1 (nx1043)) ;
    nor02ii ix53 (.Y (nx52), .A0 (load[6]), .A1 (nx1043)) ;
    nor02ii ix61 (.Y (nx60), .A0 (load[7]), .A1 (nx1043)) ;
    nor02ii ix69 (.Y (nx68), .A0 (load[8]), .A1 (nx1043)) ;
    nor02ii ix77 (.Y (nx76), .A0 (load[9]), .A1 (nx1043)) ;
    nor02ii ix85 (.Y (nx84), .A0 (load[10]), .A1 (nx1043)) ;
    nor02ii ix93 (.Y (nx92), .A0 (load[11]), .A1 (nx1043)) ;
    nor02ii ix101 (.Y (nx100), .A0 (load[12]), .A1 (nx1045)) ;
    nor02ii ix109 (.Y (nx108), .A0 (load[13]), .A1 (nx1045)) ;
    nor02ii ix117 (.Y (nx116), .A0 (load[14]), .A1 (nx1045)) ;
    nor02ii ix125 (.Y (nx124), .A0 (load[15]), .A1 (nx1045)) ;
    inv01 ix1036 (.Y (nx1037), .A (nx1035_XX0_XREP3)) ;
    inv01 ix1038 (.Y (nx1039), .A (nx1035_XX0_XREP3)) ;
    inv01 ix1040 (.Y (nx1041), .A (nx1035)) ;
    inv01 ix1042 (.Y (nx1043), .A (nx1035)) ;
    inv01 ix1044 (.Y (nx1045), .A (nx1035)) ;
    inv02 ix1048 (.Y (nx1049), .A (nx1047_XX0_XREP1)) ;
    inv02 ix1050 (.Y (nx1051), .A (nx1047_XX0_XREP1)) ;
    inv02 ix1054 (.Y (nx1055), .A (nx1047)) ;
    inv02 ix1056 (.Y (nx1057), .A (nx1047)) ;
    inv01 ix1046 (.Y (nx1047), .A (en)) ;
    inv01 ix1046_0_XREP1 (.Y (nx1047_XX0_XREP1), .A (en)) ;
    inv01 ix1034 (.Y (nx1035), .A (rst)) ;
    inv01 ix1034_0_XREP3 (.Y (nx1035_XX0_XREP3), .A (rst)) ;
    inv02 ix1095 (.Y (nx1094), .A (D[15])) ;
    inv02 reg_nx1053 (.Y (nx1053), .A (nx1047)) ;
    ao22 reg_nx846 (.Y (nx846), .A0 (Qbar[15]), .A1 (nx1047), .B0 (nx1094), .B1 (
         nx1053)) ;
endmodule


module Mux2_16 ( A, B, S, C ) ;

    input [15:0]A ;
    input [15:0]B ;
    input S ;
    output [15:0]C ;

    wire nx173, nx185, nx187, nx189;



    mux21_ni ix15 (.Y (C[1]), .A0 (A[1]), .A1 (B[1]), .S0 (nx185)) ;
    mux21_ni ix23 (.Y (C[2]), .A0 (A[2]), .A1 (B[2]), .S0 (nx185)) ;
    mux21_ni ix31 (.Y (C[3]), .A0 (A[3]), .A1 (B[3]), .S0 (nx185)) ;
    mux21_ni ix39 (.Y (C[4]), .A0 (A[4]), .A1 (B[4]), .S0 (nx185)) ;
    mux21_ni ix47 (.Y (C[5]), .A0 (A[5]), .A1 (B[5]), .S0 (nx185)) ;
    mux21_ni ix55 (.Y (C[6]), .A0 (A[6]), .A1 (B[6]), .S0 (nx185)) ;
    mux21_ni ix71 (.Y (C[8]), .A0 (A[8]), .A1 (B[8]), .S0 (nx185)) ;
    mux21_ni ix79 (.Y (C[9]), .A0 (A[9]), .A1 (B[9]), .S0 (nx187)) ;
    mux21_ni ix87 (.Y (C[10]), .A0 (A[10]), .A1 (B[10]), .S0 (nx187)) ;
    mux21_ni ix95 (.Y (C[11]), .A0 (A[11]), .A1 (B[11]), .S0 (nx187)) ;
    mux21_ni ix103 (.Y (C[12]), .A0 (A[12]), .A1 (B[12]), .S0 (nx187)) ;
    mux21_ni ix111 (.Y (C[13]), .A0 (A[13]), .A1 (B[13]), .S0 (nx187)) ;
    mux21_ni ix119 (.Y (C[14]), .A0 (A[14]), .A1 (B[14]), .S0 (nx187)) ;
    ao22 reg_C_7 (.Y (C[7]), .A0 (A[7]), .A1 (nx173), .B0 (B[7]), .B1 (nx187)) ;
    ao22 reg_C_0 (.Y (C[0]), .A0 (A[0]), .A1 (nx173), .B0 (B[0]), .B1 (nx189)) ;
    inv02 reg_nx173 (.Y (nx173), .A (S)) ;
    ao22 reg_C_15 (.Y (C[15]), .A0 (A[15]), .A1 (nx173), .B0 (B[15]), .B1 (nx189
         )) ;
    inv02 ix184 (.Y (nx185), .A (nx173)) ;
    inv02 ix186 (.Y (nx187), .A (nx173)) ;
    inv02 ix188 (.Y (nx189), .A (nx173)) ;
endmodule


module CounterUpDown_16 ( load, resetValue, clk, en, rst, isLoad, upOrDown, 
                          count ) ;

    input [15:0]load ;
    input [15:0]resetValue ;
    input clk ;
    input en ;
    input rst ;
    input isLoad ;
    input upOrDown ;
    output [15:0]count ;

    wire countAdded_15, countAdded_14, countAdded_13, countAdded_12, 
         countAdded_11, countAdded_10, countAdded_9, countAdded_8, countAdded_7, 
         countAdded_6, countAdded_5, countAdded_4, countAdded_3, countAdded_2, 
         countAdded_1, countAdded_0, NOT_upOrDown, nx8, nx10, nx14, nx24, nx26, 
         nx30, nx40, nx42, nx46, nx56, nx58, nx62, nx72, nx74, nx78, nx88, nx90, 
         nx94, nx104, nx106, nx110, nx120, nx122, nx126, nx136, nx138, nx142, 
         nx152, nx154, nx158, nx168, nx170, nx174, nx184, nx186, nx190, nx200, 
         nx202, nx206, nx216, nx218, nx222, nx232, nx234, nx238, nx248, nx250, 
         nx254, nx598, nx608, nx618, nx628, nx638, nx648, nx658, nx668, nx678, 
         nx688, nx698, nx708, nx718, nx728, nx738, nx748, nx765, nx867, nx869, 
         nx881, nx883, nx885, nx887;
    wire [16:0] \$dummy ;




    NBitAdder_16 nextCount (.a ({count[15],count[14],count[13],count[12],
                 count[11],count[10],count[9],count[8],count[7],count[6],
                 count[5],count[4],count[3],count[2],count[1],count[0]}), .b ({
                 upOrDown,upOrDown,upOrDown,upOrDown,upOrDown,upOrDown,upOrDown,
                 upOrDown,upOrDown,upOrDown,upOrDown,upOrDown,upOrDown,upOrDown,
                 upOrDown,upOrDown}), .carryIn (NOT_upOrDown), .sum ({
                 countAdded_15,countAdded_14,countAdded_13,countAdded_12,
                 countAdded_11,countAdded_10,countAdded_9,countAdded_8,
                 countAdded_7,countAdded_6,countAdded_5,countAdded_4,
                 countAdded_3,countAdded_2,countAdded_1,countAdded_0}), .carryOut (
                 \$dummy [0])) ;
    inv01 ix761 (.Y (NOT_upOrDown), .A (upOrDown)) ;
    dffsr_ni reg_currentCount_0 (.Q (count[0]), .QB (\$dummy [1]), .D (nx598), .CLK (
             clk), .S (nx10), .R (nx14)) ;
    mux21_ni ix599 (.Y (nx598), .A0 (nx8), .A1 (count[0]), .S0 (nx867)) ;
    mux21_ni ix9 (.Y (nx8), .A0 (load[0]), .A1 (countAdded_0), .S0 (nx883)) ;
    nor02_2x ix766 (.Y (nx765), .A0 (nx883), .A1 (isLoad)) ;
    and02 ix11 (.Y (nx10), .A0 (resetValue[0]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_1 (.Q (count[1]), .QB (\$dummy [2]), .D (nx608), .CLK (
             clk), .S (nx26), .R (nx30)) ;
    mux21_ni ix609 (.Y (nx608), .A0 (nx24), .A1 (count[1]), .S0 (nx867)) ;
    mux21_ni ix25 (.Y (nx24), .A0 (load[1]), .A1 (countAdded_1), .S0 (nx883)) ;
    and02 ix27 (.Y (nx26), .A0 (resetValue[1]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_2 (.Q (count[2]), .QB (\$dummy [3]), .D (nx618), .CLK (
             clk), .S (nx42), .R (nx46)) ;
    mux21_ni ix619 (.Y (nx618), .A0 (nx40), .A1 (count[2]), .S0 (nx867)) ;
    mux21_ni ix41 (.Y (nx40), .A0 (load[2]), .A1 (countAdded_2), .S0 (nx883)) ;
    and02 ix43 (.Y (nx42), .A0 (resetValue[2]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_3 (.Q (count[3]), .QB (\$dummy [4]), .D (nx628), .CLK (
             clk), .S (nx58), .R (nx62)) ;
    mux21_ni ix629 (.Y (nx628), .A0 (nx56), .A1 (count[3]), .S0 (nx867)) ;
    mux21_ni ix57 (.Y (nx56), .A0 (load[3]), .A1 (countAdded_3), .S0 (nx883)) ;
    and02 ix59 (.Y (nx58), .A0 (resetValue[3]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_4 (.Q (count[4]), .QB (\$dummy [5]), .D (nx638), .CLK (
             clk), .S (nx74), .R (nx78)) ;
    mux21_ni ix639 (.Y (nx638), .A0 (nx72), .A1 (count[4]), .S0 (nx867)) ;
    mux21_ni ix73 (.Y (nx72), .A0 (load[4]), .A1 (countAdded_4), .S0 (nx883)) ;
    and02 ix75 (.Y (nx74), .A0 (resetValue[4]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_5 (.Q (count[5]), .QB (\$dummy [6]), .D (nx648), .CLK (
             clk), .S (nx90), .R (nx94)) ;
    mux21_ni ix649 (.Y (nx648), .A0 (nx88), .A1 (count[5]), .S0 (nx867)) ;
    mux21_ni ix89 (.Y (nx88), .A0 (load[5]), .A1 (countAdded_5), .S0 (nx883)) ;
    and02 ix91 (.Y (nx90), .A0 (resetValue[5]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_6 (.Q (count[6]), .QB (\$dummy [7]), .D (nx658), .CLK (
             clk), .S (nx106), .R (nx110)) ;
    mux21_ni ix659 (.Y (nx658), .A0 (nx104), .A1 (count[6]), .S0 (nx869)) ;
    mux21_ni ix105 (.Y (nx104), .A0 (load[6]), .A1 (countAdded_6), .S0 (nx885)
             ) ;
    and02 ix107 (.Y (nx106), .A0 (resetValue[6]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_7 (.Q (count[7]), .QB (\$dummy [8]), .D (nx668), .CLK (
             clk), .S (nx122), .R (nx126)) ;
    mux21_ni ix669 (.Y (nx668), .A0 (nx120), .A1 (count[7]), .S0 (nx869)) ;
    mux21_ni ix121 (.Y (nx120), .A0 (load[7]), .A1 (countAdded_7), .S0 (nx885)
             ) ;
    and02 ix123 (.Y (nx122), .A0 (resetValue[7]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_8 (.Q (count[8]), .QB (\$dummy [9]), .D (nx678), .CLK (
             clk), .S (nx138), .R (nx142)) ;
    mux21_ni ix679 (.Y (nx678), .A0 (nx136), .A1 (count[8]), .S0 (nx869)) ;
    mux21_ni ix137 (.Y (nx136), .A0 (load[8]), .A1 (countAdded_8), .S0 (nx885)
             ) ;
    and02 ix139 (.Y (nx138), .A0 (resetValue[8]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_9 (.Q (count[9]), .QB (\$dummy [10]), .D (nx688), 
             .CLK (clk), .S (nx154), .R (nx158)) ;
    mux21_ni ix689 (.Y (nx688), .A0 (nx152), .A1 (count[9]), .S0 (nx869)) ;
    mux21_ni ix153 (.Y (nx152), .A0 (load[9]), .A1 (countAdded_9), .S0 (nx885)
             ) ;
    and02 ix155 (.Y (nx154), .A0 (resetValue[9]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_10 (.Q (count[10]), .QB (\$dummy [11]), .D (nx698)
             , .CLK (clk), .S (nx170), .R (nx174)) ;
    mux21_ni ix699 (.Y (nx698), .A0 (nx168), .A1 (count[10]), .S0 (nx869)) ;
    mux21_ni ix169 (.Y (nx168), .A0 (load[10]), .A1 (countAdded_10), .S0 (nx885)
             ) ;
    and02 ix171 (.Y (nx170), .A0 (resetValue[10]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_11 (.Q (count[11]), .QB (\$dummy [12]), .D (nx708)
             , .CLK (clk), .S (nx186), .R (nx190)) ;
    mux21_ni ix709 (.Y (nx708), .A0 (nx184), .A1 (count[11]), .S0 (nx869)) ;
    mux21_ni ix185 (.Y (nx184), .A0 (load[11]), .A1 (countAdded_11), .S0 (nx885)
             ) ;
    and02 ix187 (.Y (nx186), .A0 (resetValue[11]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_12 (.Q (count[12]), .QB (\$dummy [13]), .D (nx718)
             , .CLK (clk), .S (nx202), .R (nx206)) ;
    mux21_ni ix719 (.Y (nx718), .A0 (nx200), .A1 (count[12]), .S0 (nx765)) ;
    mux21_ni ix201 (.Y (nx200), .A0 (load[12]), .A1 (countAdded_12), .S0 (nx885)
             ) ;
    and02 ix203 (.Y (nx202), .A0 (resetValue[12]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_13 (.Q (count[13]), .QB (\$dummy [14]), .D (nx728)
             , .CLK (clk), .S (nx218), .R (nx222)) ;
    mux21_ni ix729 (.Y (nx728), .A0 (nx216), .A1 (count[13]), .S0 (nx765)) ;
    mux21_ni ix217 (.Y (nx216), .A0 (load[13]), .A1 (countAdded_13), .S0 (nx887)
             ) ;
    and02 ix219 (.Y (nx218), .A0 (resetValue[13]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_14 (.Q (count[14]), .QB (\$dummy [15]), .D (nx738)
             , .CLK (clk), .S (nx234), .R (nx238)) ;
    mux21_ni ix739 (.Y (nx738), .A0 (nx232), .A1 (count[14]), .S0 (nx765)) ;
    mux21_ni ix233 (.Y (nx232), .A0 (load[14]), .A1 (countAdded_14), .S0 (nx887)
             ) ;
    and02 ix235 (.Y (nx234), .A0 (resetValue[14]), .A1 (rst)) ;
    dffsr_ni reg_currentCount_15 (.Q (count[15]), .QB (\$dummy [16]), .D (nx748)
             , .CLK (clk), .S (nx250), .R (nx254)) ;
    mux21_ni ix749 (.Y (nx748), .A0 (nx248), .A1 (count[15]), .S0 (nx765)) ;
    mux21_ni ix249 (.Y (nx248), .A0 (load[15]), .A1 (countAdded_15), .S0 (nx887)
             ) ;
    and02 ix251 (.Y (nx250), .A0 (resetValue[15]), .A1 (rst)) ;
    nor02_2x ix866 (.Y (nx867), .A0 (nx887), .A1 (isLoad)) ;
    nor02_2x ix868 (.Y (nx869), .A0 (nx887), .A1 (isLoad)) ;
    nor02ii ix15 (.Y (nx14), .A0 (resetValue[0]), .A1 (rst)) ;
    nor02ii ix31 (.Y (nx30), .A0 (resetValue[1]), .A1 (rst)) ;
    nor02ii ix47 (.Y (nx46), .A0 (resetValue[2]), .A1 (rst)) ;
    nor02ii ix63 (.Y (nx62), .A0 (resetValue[3]), .A1 (rst)) ;
    nor02ii ix79 (.Y (nx78), .A0 (resetValue[4]), .A1 (rst)) ;
    nor02ii ix95 (.Y (nx94), .A0 (resetValue[5]), .A1 (rst)) ;
    nor02ii ix111 (.Y (nx110), .A0 (resetValue[6]), .A1 (rst)) ;
    nor02ii ix127 (.Y (nx126), .A0 (resetValue[7]), .A1 (rst)) ;
    nor02ii ix143 (.Y (nx142), .A0 (resetValue[8]), .A1 (rst)) ;
    nor02ii ix159 (.Y (nx158), .A0 (resetValue[9]), .A1 (rst)) ;
    nor02ii ix175 (.Y (nx174), .A0 (resetValue[10]), .A1 (rst)) ;
    nor02ii ix191 (.Y (nx190), .A0 (resetValue[11]), .A1 (rst)) ;
    nor02ii ix207 (.Y (nx206), .A0 (resetValue[12]), .A1 (rst)) ;
    nor02ii ix223 (.Y (nx222), .A0 (resetValue[13]), .A1 (rst)) ;
    nor02ii ix239 (.Y (nx238), .A0 (resetValue[14]), .A1 (rst)) ;
    nor02ii ix255 (.Y (nx254), .A0 (resetValue[15]), .A1 (rst)) ;
    inv01 ix880 (.Y (nx881), .A (en)) ;
    inv02 ix882 (.Y (nx883), .A (nx881)) ;
    inv02 ix884 (.Y (nx885), .A (nx881)) ;
    inv02 ix886 (.Y (nx887), .A (nx881)) ;
endmodule


module NBitAdder_16 ( a, b, carryIn, sum, carryOut ) ;

    input [15:0]a ;
    input [15:0]b ;
    input carryIn ;
    output [15:0]sum ;
    output carryOut ;

    wire temp_14, temp_13, temp_12, temp_11, temp_10, temp_9, temp_8, temp_7, 
         temp_6, temp_5, temp_4, temp_3, temp_2, temp_1, temp_0;



    FullAdder f0 (.a (a[0]), .b (b[0]), .cin (carryIn), .s (sum[0]), .cout (
              temp_0)) ;
    FullAdder loop1_1_fx (.a (a[1]), .b (b[1]), .cin (temp_0), .s (sum[1]), .cout (
              temp_1)) ;
    FullAdder loop1_2_fx (.a (a[2]), .b (b[2]), .cin (temp_1), .s (sum[2]), .cout (
              temp_2)) ;
    FullAdder loop1_3_fx (.a (a[3]), .b (b[3]), .cin (temp_2), .s (sum[3]), .cout (
              temp_3)) ;
    FullAdder loop1_4_fx (.a (a[4]), .b (b[4]), .cin (temp_3), .s (sum[4]), .cout (
              temp_4)) ;
    FullAdder loop1_5_fx (.a (a[5]), .b (b[5]), .cin (temp_4), .s (sum[5]), .cout (
              temp_5)) ;
    FullAdder loop1_6_fx (.a (a[6]), .b (b[6]), .cin (temp_5), .s (sum[6]), .cout (
              temp_6)) ;
    FullAdder loop1_7_fx (.a (a[7]), .b (b[7]), .cin (temp_6), .s (sum[7]), .cout (
              temp_7)) ;
    FullAdder loop1_8_fx (.a (a[8]), .b (b[8]), .cin (temp_7), .s (sum[8]), .cout (
              temp_8)) ;
    FullAdder loop1_9_fx (.a (a[9]), .b (b[9]), .cin (temp_8), .s (sum[9]), .cout (
              temp_9)) ;
    FullAdder loop1_10_fx (.a (a[10]), .b (b[10]), .cin (temp_9), .s (sum[10]), 
              .cout (temp_10)) ;
    FullAdder loop1_11_fx (.a (a[11]), .b (b[11]), .cin (temp_10), .s (sum[11])
              , .cout (temp_11)) ;
    FullAdder loop1_12_fx (.a (a[12]), .b (b[12]), .cin (temp_11), .s (sum[12])
              , .cout (temp_12)) ;
    FullAdder loop1_13_fx (.a (a[13]), .b (b[13]), .cin (temp_12), .s (sum[13])
              , .cout (temp_13)) ;
    FullAdder loop1_14_fx (.a (a[14]), .b (b[14]), .cin (temp_13), .s (sum[14])
              , .cout (temp_14)) ;
    FullAdder loop1_15_fx (.a (a[15]), .b (b[15]), .cin (temp_14), .s (sum[15])
              , .cout (carryOut)) ;
endmodule


module FullAdder ( a, b, cin, s, cout ) ;

    input a ;
    input b ;
    input cin ;
    output s ;
    output cout ;

    wire nx0, nx69;



    ao22 ix7 (.Y (cout), .A0 (b), .A1 (a), .B0 (cin), .B1 (nx0)) ;
    xnor2 ix9 (.Y (s), .A0 (nx69), .A1 (cin)) ;
    xnor2 ix70 (.Y (nx69), .A0 (a), .A1 (b)) ;
    inv01 ix1 (.Y (nx0), .A (nx69)) ;
endmodule


module RisingHolderFullCycle ( transition, clk, rst, f ) ;

    input transition ;
    input clk ;
    input rst ;
    inout f ;

    wire nx0, d, nx8;
    wire [1:0] \$dummy ;




    dffr reg_f (.Q (f), .QB (\$dummy [0]), .D (nx0), .CLK (transition), .R (nx8)) ;
    or02 ix9 (.Y (nx8), .A0 (d), .A1 (rst)) ;
    dff reg_d (.Q (d), .QB (\$dummy [1]), .D (f), .CLK (clk)) ;
endmodule

