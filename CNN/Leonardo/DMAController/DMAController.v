//
// Verilog description for cell DMAController, 
// Tue Apr 16 16:42:59 2019
//
// LeonardoSpectrum Level 3, 2018a.2 
//


module DMAController ( clk, reset, weightsInternalBus, windowInternalBus, 
                       weightsRamAddress, windowRamAddress, weightsRamDataInBus, 
                       windowRamDataInBus, weightsRamRead, windowRamRead, 
                       windowRamWrite, windowRamDataOutBus, MFCWindowRam, 
                       MFCWeightsRam, loadNextFilter, loadNextWindow, 
                       loadNextRow, loadOneWord, loadTwoWord, layerFinished, 
                       write, weightsSizeType, inputSize, outputSize, 
                       windowRamBaseAddress1, windowRamBaseAddress2, 
                       filterRamBaseAddress, windowReadOne, windowReadFinal, 
                       weightsReadOne, weightsReadFinal, writeDoneAll, 
                       writeDoneOne, filterAluNumber, windowAluNumber ) ;

    input clk ;
    input reset ;
    output [39:0]weightsInternalBus ;
    inout [79:0]windowInternalBus ;
    output [11:0]weightsRamAddress ;
    output [12:0]windowRamAddress ;
    input [39:0]weightsRamDataInBus ;
    input [79:0]windowRamDataInBus ;
    output weightsRamRead ;
    output windowRamRead ;
    output windowRamWrite ;
    output [79:0]windowRamDataOutBus ;
    input MFCWindowRam ;
    input MFCWeightsRam ;
    input loadNextFilter ;
    input loadNextWindow ;
    input loadNextRow ;
    input loadOneWord ;
    input loadTwoWord ;
    input layerFinished ;
    input write ;
    input weightsSizeType ;
    input [12:0]inputSize ;
    input [12:0]outputSize ;
    input [12:0]windowRamBaseAddress1 ;
    input [12:0]windowRamBaseAddress2 ;
    input [11:0]filterRamBaseAddress ;
    output windowReadOne ;
    output windowReadFinal ;
    output weightsReadOne ;
    output weightsReadFinal ;
    output writeDoneAll ;
    output writeDoneOne ;
    output [2:0]filterAluNumber ;
    output [2:0]windowAluNumber ;

    wire currentReadRamBaseAddress_12, currentReadRamBaseAddress_11, 
         currentReadRamBaseAddress_10, currentReadRamBaseAddress_9, 
         currentReadRamBaseAddress_8, currentReadRamBaseAddress_7, 
         currentReadRamBaseAddress_6, currentReadRamBaseAddress_5, 
         currentReadRamBaseAddress_4, currentReadRamBaseAddress_3, 
         currentReadRamBaseAddress_2, currentReadRamBaseAddress_1, 
         currentReadRamBaseAddress_0, currentWriteRamBaseAddress_12, 
         currentWriteRamBaseAddress_11, currentWriteRamBaseAddress_10, 
         currentWriteRamBaseAddress_9, currentWriteRamBaseAddress_8, 
         currentWriteRamBaseAddress_7, currentWriteRamBaseAddress_6, 
         currentWriteRamBaseAddress_5, currentWriteRamBaseAddress_4, 
         currentWriteRamBaseAddress_3, currentWriteRamBaseAddress_2, 
         currentWriteRamBaseAddress_1, currentWriteRamBaseAddress_0, 
         readLogicRamAddress_12, readLogicRamAddress_11, readLogicRamAddress_10, 
         readLogicRamAddress_9, readLogicRamAddress_8, readLogicRamAddress_7, 
         readLogicRamAddress_6, readLogicRamAddress_5, readLogicRamAddress_4, 
         readLogicRamAddress_3, readLogicRamAddress_2, readLogicRamAddress_1, 
         readLogicRamAddress_0, writeLogicRamAddress_12, writeLogicRamAddress_11, 
         writeLogicRamAddress_10, writeLogicRamAddress_9, writeLogicRamAddress_8, 
         writeLogicRamAddress_7, writeLogicRamAddress_6, writeLogicRamAddress_5, 
         writeLogicRamAddress_4, writeLogicRamAddress_3, writeLogicRamAddress_2, 
         writeLogicRamAddress_1, writeLogicRamAddress_0, switchRam, filterStep_2, 
         filterStep_1, filterStep_0, loadWord, resetLogics, 
         weightsSizeForWindow_0, ramBaseAddressSelector, 
         NOT_ramBaseAddressSelector, NOT_weightsSizeType_dup_876, nx882, nx885, 
         nx888, nx892, nx895, nx900, nx903, nx905, nx908, nx910, nx913, nx915, 
         nx918, nx920, nx923, nx925, nx928, nx930, nx933, nx935, nx938, nx940, 
         nx943, nx945, nx948, nx950, nx953, nx955, nx958, nx960, nx963, nx965, 
         nx968, nx970, nx973, nx975, nx978, nx980, nx983, nx985, nx988, nx990, 
         nx993, nx995, nx998, nx1000, nx1003, nx1005, nx1008, nx1010, nx1013, 
         nx1015, nx1018, nx1020, nx1023, nx1025, nx1028, nx1030, nx1035, nx1037, 
         nx1040, nx1042, nx1045, nx1047, nx1050, nx1052, nx1055, nx1057, nx1060, 
         nx1062, nx1065, nx1067, nx1070, nx1072, nx1075, nx1077, nx1080, nx1082, 
         nx1085, nx1087, nx1090, nx1092, nx1099, nx1101, nx1103, nx1105, nx1107, 
         nx1109, nx1111, nx1113, nx1115, nx1117, nx1119;
    wire [79:0] \$dummy ;




    assign windowRamDataOutBus[79] = windowInternalBus[79] ;
    assign windowRamDataOutBus[78] = windowInternalBus[78] ;
    assign windowRamDataOutBus[77] = windowInternalBus[77] ;
    assign windowRamDataOutBus[76] = windowInternalBus[76] ;
    assign windowRamDataOutBus[75] = windowInternalBus[75] ;
    assign windowRamDataOutBus[74] = windowInternalBus[74] ;
    assign windowRamDataOutBus[73] = windowInternalBus[73] ;
    assign windowRamDataOutBus[72] = windowInternalBus[72] ;
    assign windowRamDataOutBus[71] = windowInternalBus[71] ;
    assign windowRamDataOutBus[70] = windowInternalBus[70] ;
    assign windowRamDataOutBus[69] = windowInternalBus[69] ;
    assign windowRamDataOutBus[68] = windowInternalBus[68] ;
    assign windowRamDataOutBus[67] = windowInternalBus[67] ;
    assign windowRamDataOutBus[66] = windowInternalBus[66] ;
    assign windowRamDataOutBus[65] = windowInternalBus[65] ;
    assign windowRamDataOutBus[64] = windowInternalBus[64] ;
    assign windowRamDataOutBus[63] = windowInternalBus[63] ;
    assign windowRamDataOutBus[62] = windowInternalBus[62] ;
    assign windowRamDataOutBus[61] = windowInternalBus[61] ;
    assign windowRamDataOutBus[60] = windowInternalBus[60] ;
    assign windowRamDataOutBus[59] = windowInternalBus[59] ;
    assign windowRamDataOutBus[58] = windowInternalBus[58] ;
    assign windowRamDataOutBus[57] = windowInternalBus[57] ;
    assign windowRamDataOutBus[56] = windowInternalBus[56] ;
    assign windowRamDataOutBus[55] = windowInternalBus[55] ;
    assign windowRamDataOutBus[54] = windowInternalBus[54] ;
    assign windowRamDataOutBus[53] = windowInternalBus[53] ;
    assign windowRamDataOutBus[52] = windowInternalBus[52] ;
    assign windowRamDataOutBus[51] = windowInternalBus[51] ;
    assign windowRamDataOutBus[50] = windowInternalBus[50] ;
    assign windowRamDataOutBus[49] = windowInternalBus[49] ;
    assign windowRamDataOutBus[48] = windowInternalBus[48] ;
    assign windowRamDataOutBus[47] = windowInternalBus[47] ;
    assign windowRamDataOutBus[46] = windowInternalBus[46] ;
    assign windowRamDataOutBus[45] = windowInternalBus[45] ;
    assign windowRamDataOutBus[44] = windowInternalBus[44] ;
    assign windowRamDataOutBus[43] = windowInternalBus[43] ;
    assign windowRamDataOutBus[42] = windowInternalBus[42] ;
    assign windowRamDataOutBus[41] = windowInternalBus[41] ;
    assign windowRamDataOutBus[40] = windowInternalBus[40] ;
    assign windowRamDataOutBus[39] = windowInternalBus[39] ;
    assign windowRamDataOutBus[38] = windowInternalBus[38] ;
    assign windowRamDataOutBus[37] = windowInternalBus[37] ;
    assign windowRamDataOutBus[36] = windowInternalBus[36] ;
    assign windowRamDataOutBus[35] = windowInternalBus[35] ;
    assign windowRamDataOutBus[34] = windowInternalBus[34] ;
    assign windowRamDataOutBus[33] = windowInternalBus[33] ;
    assign windowRamDataOutBus[32] = windowInternalBus[32] ;
    assign windowRamDataOutBus[31] = windowInternalBus[31] ;
    assign windowRamDataOutBus[30] = windowInternalBus[30] ;
    assign windowRamDataOutBus[29] = windowInternalBus[29] ;
    assign windowRamDataOutBus[28] = windowInternalBus[28] ;
    assign windowRamDataOutBus[27] = windowInternalBus[27] ;
    assign windowRamDataOutBus[26] = windowInternalBus[26] ;
    assign windowRamDataOutBus[25] = windowInternalBus[25] ;
    assign windowRamDataOutBus[24] = windowInternalBus[24] ;
    assign windowRamDataOutBus[23] = windowInternalBus[23] ;
    assign windowRamDataOutBus[22] = windowInternalBus[22] ;
    assign windowRamDataOutBus[21] = windowInternalBus[21] ;
    assign windowRamDataOutBus[20] = windowInternalBus[20] ;
    assign windowRamDataOutBus[19] = windowInternalBus[19] ;
    assign windowRamDataOutBus[18] = windowInternalBus[18] ;
    assign windowRamDataOutBus[17] = windowInternalBus[17] ;
    assign windowRamDataOutBus[16] = windowInternalBus[16] ;
    assign windowRamDataOutBus[15] = windowInternalBus[15] ;
    assign windowRamDataOutBus[14] = windowInternalBus[14] ;
    assign windowRamDataOutBus[13] = windowInternalBus[13] ;
    assign windowRamDataOutBus[12] = windowInternalBus[12] ;
    assign windowRamDataOutBus[11] = windowInternalBus[11] ;
    assign windowRamDataOutBus[10] = windowInternalBus[10] ;
    assign windowRamDataOutBus[9] = windowInternalBus[9] ;
    assign windowRamDataOutBus[8] = windowInternalBus[8] ;
    assign windowRamDataOutBus[7] = windowInternalBus[7] ;
    assign windowRamDataOutBus[6] = windowInternalBus[6] ;
    assign windowRamDataOutBus[5] = windowInternalBus[5] ;
    assign windowRamDataOutBus[4] = windowInternalBus[4] ;
    assign windowRamDataOutBus[3] = windowInternalBus[3] ;
    assign windowRamDataOutBus[2] = windowInternalBus[2] ;
    assign windowRamDataOutBus[1] = windowInternalBus[1] ;
    assign windowRamDataOutBus[0] = windowInternalBus[0] ;
    ReadLogic_13_80_false windowReadLogicEnt (.clk (clk), .resetState (
                          resetLogics), .switchRam (switchRam), .ramBasedAddress (
                          {currentReadRamBaseAddress_12,
                          currentReadRamBaseAddress_11,
                          currentReadRamBaseAddress_10,
                          currentReadRamBaseAddress_9,
                          currentReadRamBaseAddress_8,
                          currentReadRamBaseAddress_7,
                          currentReadRamBaseAddress_6,
                          currentReadRamBaseAddress_5,
                          currentReadRamBaseAddress_4,
                          currentReadRamBaseAddress_3,
                          currentReadRamBaseAddress_2,
                          currentReadRamBaseAddress_1,
                          currentReadRamBaseAddress_0}), .internalBus ({
                          windowInternalBus[79],windowInternalBus[78],
                          windowInternalBus[77],windowInternalBus[76],
                          windowInternalBus[75],windowInternalBus[74],
                          windowInternalBus[73],windowInternalBus[72],
                          windowInternalBus[71],windowInternalBus[70],
                          windowInternalBus[69],windowInternalBus[68],
                          windowInternalBus[67],windowInternalBus[66],
                          windowInternalBus[65],windowInternalBus[64],
                          windowInternalBus[63],windowInternalBus[62],
                          windowInternalBus[61],windowInternalBus[60],
                          windowInternalBus[59],windowInternalBus[58],
                          windowInternalBus[57],windowInternalBus[56],
                          windowInternalBus[55],windowInternalBus[54],
                          windowInternalBus[53],windowInternalBus[52],
                          windowInternalBus[51],windowInternalBus[50],
                          windowInternalBus[49],windowInternalBus[48],
                          windowInternalBus[47],windowInternalBus[46],
                          windowInternalBus[45],windowInternalBus[44],
                          windowInternalBus[43],windowInternalBus[42],
                          windowInternalBus[41],windowInternalBus[40],
                          windowInternalBus[39],windowInternalBus[38],
                          windowInternalBus[37],windowInternalBus[36],
                          windowInternalBus[35],windowInternalBus[34],
                          windowInternalBus[33],windowInternalBus[32],
                          windowInternalBus[31],windowInternalBus[30],
                          windowInternalBus[29],windowInternalBus[28],
                          windowInternalBus[27],windowInternalBus[26],
                          windowInternalBus[25],windowInternalBus[24],
                          windowInternalBus[23],windowInternalBus[22],
                          windowInternalBus[21],windowInternalBus[20],
                          windowInternalBus[19],windowInternalBus[18],
                          windowInternalBus[17],windowInternalBus[16],
                          windowInternalBus[15],windowInternalBus[14],
                          windowInternalBus[13],windowInternalBus[12],
                          windowInternalBus[11],windowInternalBus[10],
                          windowInternalBus[9],windowInternalBus[8],
                          windowInternalBus[7],windowInternalBus[6],
                          windowInternalBus[5],windowInternalBus[4],
                          windowInternalBus[3],windowInternalBus[2],
                          windowInternalBus[1],windowInternalBus[0]}), .ramDataInBus (
                          {windowRamDataInBus[79],windowRamDataInBus[78],
                          windowRamDataInBus[77],windowRamDataInBus[76],
                          windowRamDataInBus[75],windowRamDataInBus[74],
                          windowRamDataInBus[73],windowRamDataInBus[72],
                          windowRamDataInBus[71],windowRamDataInBus[70],
                          windowRamDataInBus[69],windowRamDataInBus[68],
                          windowRamDataInBus[67],windowRamDataInBus[66],
                          windowRamDataInBus[65],windowRamDataInBus[64],
                          windowRamDataInBus[63],windowRamDataInBus[62],
                          windowRamDataInBus[61],windowRamDataInBus[60],
                          windowRamDataInBus[59],windowRamDataInBus[58],
                          windowRamDataInBus[57],windowRamDataInBus[56],
                          windowRamDataInBus[55],windowRamDataInBus[54],
                          windowRamDataInBus[53],windowRamDataInBus[52],
                          windowRamDataInBus[51],windowRamDataInBus[50],
                          windowRamDataInBus[49],windowRamDataInBus[48],
                          windowRamDataInBus[47],windowRamDataInBus[46],
                          windowRamDataInBus[45],windowRamDataInBus[44],
                          windowRamDataInBus[43],windowRamDataInBus[42],
                          windowRamDataInBus[41],windowRamDataInBus[40],
                          windowRamDataInBus[39],windowRamDataInBus[38],
                          windowRamDataInBus[37],windowRamDataInBus[36],
                          windowRamDataInBus[35],windowRamDataInBus[34],
                          windowRamDataInBus[33],windowRamDataInBus[32],
                          windowRamDataInBus[31],windowRamDataInBus[30],
                          windowRamDataInBus[29],windowRamDataInBus[28],
                          windowRamDataInBus[27],windowRamDataInBus[26],
                          windowRamDataInBus[25],windowRamDataInBus[24],
                          windowRamDataInBus[23],windowRamDataInBus[22],
                          windowRamDataInBus[21],windowRamDataInBus[20],
                          windowRamDataInBus[19],windowRamDataInBus[18],
                          windowRamDataInBus[17],windowRamDataInBus[16],
                          windowRamDataInBus[15],windowRamDataInBus[14],
                          windowRamDataInBus[13],windowRamDataInBus[12],
                          windowRamDataInBus[11],windowRamDataInBus[10],
                          windowRamDataInBus[9],windowRamDataInBus[8],
                          windowRamDataInBus[7],windowRamDataInBus[6],
                          windowRamDataInBus[5],windowRamDataInBus[4],
                          windowRamDataInBus[3],windowRamDataInBus[2],
                          windowRamDataInBus[1],windowRamDataInBus[0]}), .ramRead (
                          windowRamRead), .ramAddress ({readLogicRamAddress_12,
                          readLogicRamAddress_11,readLogicRamAddress_10,
                          readLogicRamAddress_9,readLogicRamAddress_8,
                          readLogicRamAddress_7,readLogicRamAddress_6,
                          readLogicRamAddress_5,readLogicRamAddress_4,
                          readLogicRamAddress_3,readLogicRamAddress_2,
                          readLogicRamAddress_1,readLogicRamAddress_0}), .MFC (
                          MFCWindowRam), .inputSize ({inputSize[12],
                          inputSize[11],inputSize[10],inputSize[9],inputSize[8],
                          inputSize[7],inputSize[6],inputSize[5],inputSize[4],
                          inputSize[3],inputSize[2],inputSize[1],inputSize[0]})
                          , .filterSize ({resetLogics,resetLogics,resetLogics,
                          resetLogics,resetLogics,resetLogics,resetLogics,
                          resetLogics,resetLogics,resetLogics,weightsSizeType,
                          NOT_weightsSizeType_dup_876,weightsSizeForWindow_0}), 
                          .isFilter (resetLogics), .loadNextWordList (
                          loadNextWindow), .loadWord (loadNextRow), .readOne (
                          windowReadOne), .readFinal (windowReadFinal), .aluNumber (
                          {windowAluNumber[2],windowAluNumber[1],
                          windowAluNumber[0]})) ;
    ReadLogic_12_40_true filterReadLogicEnt (.clk (clk), .resetState (
                         resetLogics), .switchRam (reset), .ramBasedAddress ({
                         filterRamBaseAddress[11],filterRamBaseAddress[10],
                         filterRamBaseAddress[9],filterRamBaseAddress[8],
                         filterRamBaseAddress[7],filterRamBaseAddress[6],
                         filterRamBaseAddress[5],filterRamBaseAddress[4],
                         filterRamBaseAddress[3],filterRamBaseAddress[2],
                         filterRamBaseAddress[1],filterRamBaseAddress[0]}), .internalBus (
                         {weightsInternalBus[39],weightsInternalBus[38],
                         weightsInternalBus[37],weightsInternalBus[36],
                         weightsInternalBus[35],weightsInternalBus[34],
                         weightsInternalBus[33],weightsInternalBus[32],
                         weightsInternalBus[31],weightsInternalBus[30],
                         weightsInternalBus[29],weightsInternalBus[28],
                         weightsInternalBus[27],weightsInternalBus[26],
                         weightsInternalBus[25],weightsInternalBus[24],
                         weightsInternalBus[23],weightsInternalBus[22],
                         weightsInternalBus[21],weightsInternalBus[20],
                         weightsInternalBus[19],weightsInternalBus[18],
                         weightsInternalBus[17],weightsInternalBus[16],
                         weightsInternalBus[15],weightsInternalBus[14],
                         weightsInternalBus[13],weightsInternalBus[12],
                         weightsInternalBus[11],weightsInternalBus[10],
                         weightsInternalBus[9],weightsInternalBus[8],
                         weightsInternalBus[7],weightsInternalBus[6],
                         weightsInternalBus[5],weightsInternalBus[4],
                         weightsInternalBus[3],weightsInternalBus[2],
                         weightsInternalBus[1],weightsInternalBus[0]}), .ramDataInBus (
                         {weightsRamDataInBus[39],weightsRamDataInBus[38],
                         weightsRamDataInBus[37],weightsRamDataInBus[36],
                         weightsRamDataInBus[35],weightsRamDataInBus[34],
                         weightsRamDataInBus[33],weightsRamDataInBus[32],
                         weightsRamDataInBus[31],weightsRamDataInBus[30],
                         weightsRamDataInBus[29],weightsRamDataInBus[28],
                         weightsRamDataInBus[27],weightsRamDataInBus[26],
                         weightsRamDataInBus[25],weightsRamDataInBus[24],
                         weightsRamDataInBus[23],weightsRamDataInBus[22],
                         weightsRamDataInBus[21],weightsRamDataInBus[20],
                         weightsRamDataInBus[19],weightsRamDataInBus[18],
                         weightsRamDataInBus[17],weightsRamDataInBus[16],
                         weightsRamDataInBus[15],weightsRamDataInBus[14],
                         weightsRamDataInBus[13],weightsRamDataInBus[12],
                         weightsRamDataInBus[11],weightsRamDataInBus[10],
                         weightsRamDataInBus[9],weightsRamDataInBus[8],
                         weightsRamDataInBus[7],weightsRamDataInBus[6],
                         weightsRamDataInBus[5],weightsRamDataInBus[4],
                         weightsRamDataInBus[3],weightsRamDataInBus[2],
                         weightsRamDataInBus[1],weightsRamDataInBus[0]}), .ramRead (
                         weightsRamRead), .ramAddress ({weightsRamAddress[11],
                         weightsRamAddress[10],weightsRamAddress[9],
                         weightsRamAddress[8],weightsRamAddress[7],
                         weightsRamAddress[6],weightsRamAddress[5],
                         weightsRamAddress[4],weightsRamAddress[3],
                         weightsRamAddress[2],weightsRamAddress[1],
                         weightsRamAddress[0]}), .MFC (MFCWeightsRam), .inputSize (
                         {resetLogics,resetLogics,resetLogics,resetLogics,
                         resetLogics,resetLogics,resetLogics,resetLogics,
                         resetLogics,filterStep_2,filterStep_1,filterStep_0}), .filterSize (
                         {resetLogics,resetLogics,resetLogics,resetLogics,
                         resetLogics,resetLogics,resetLogics,resetLogics,
                         resetLogics,weightsSizeType,NOT_weightsSizeType_dup_876
                         ,weightsSizeForWindow_0}), .isFilter (
                         weightsSizeForWindow_0), .loadNextWordList (
                         loadNextFilter), .loadWord (loadWord), .readOne (
                         weightsReadOne), .readFinal (weightsReadFinal), .aluNumber (
                         {filterAluNumber[2],filterAluNumber[1],
                         filterAluNumber[0]})) ;
    WriteLogic_13_80 writeLogicEnt (.clk (clk), .resetState (resetLogics), .switchRam (
                     switchRam), .ramBasedAddress ({
                     currentWriteRamBaseAddress_12,currentWriteRamBaseAddress_11
                     ,currentWriteRamBaseAddress_10,currentWriteRamBaseAddress_9
                     ,currentWriteRamBaseAddress_8,currentWriteRamBaseAddress_7,
                     currentWriteRamBaseAddress_6,currentWriteRamBaseAddress_5,
                     currentWriteRamBaseAddress_4,currentWriteRamBaseAddress_3,
                     currentWriteRamBaseAddress_2,currentWriteRamBaseAddress_1,
                     currentWriteRamBaseAddress_0}), .internalBus ({resetLogics,
                     resetLogics,resetLogics,resetLogics,resetLogics,resetLogics
                     ,resetLogics,resetLogics,resetLogics,resetLogics,
                     resetLogics,resetLogics,resetLogics,resetLogics,resetLogics
                     ,resetLogics,resetLogics,resetLogics,resetLogics,
                     resetLogics,resetLogics,resetLogics,resetLogics,resetLogics
                     ,resetLogics,resetLogics,resetLogics,resetLogics,
                     resetLogics,resetLogics,resetLogics,resetLogics,resetLogics
                     ,resetLogics,resetLogics,resetLogics,resetLogics,
                     resetLogics,resetLogics,resetLogics,resetLogics,resetLogics
                     ,resetLogics,resetLogics,resetLogics,resetLogics,
                     resetLogics,resetLogics,resetLogics,resetLogics,resetLogics
                     ,resetLogics,resetLogics,resetLogics,resetLogics,
                     resetLogics,resetLogics,resetLogics,resetLogics,resetLogics
                     ,resetLogics,resetLogics,resetLogics,resetLogics,
                     resetLogics,resetLogics,resetLogics,resetLogics,resetLogics
                     ,resetLogics,resetLogics,resetLogics,resetLogics,
                     resetLogics,resetLogics,resetLogics,resetLogics,resetLogics
                     ,resetLogics,resetLogics}), .ramWrite (windowRamWrite), .ramDataOutBus (
                     {\$dummy [0],\$dummy [1],\$dummy [2],\$dummy [3],
                     \$dummy [4],\$dummy [5],\$dummy [6],\$dummy [7],\$dummy [8]
                     ,\$dummy [9],\$dummy [10],\$dummy [11],\$dummy [12],
                     \$dummy [13],\$dummy [14],\$dummy [15],\$dummy [16],
                     \$dummy [17],\$dummy [18],\$dummy [19],\$dummy [20],
                     \$dummy [21],\$dummy [22],\$dummy [23],\$dummy [24],
                     \$dummy [25],\$dummy [26],\$dummy [27],\$dummy [28],
                     \$dummy [29],\$dummy [30],\$dummy [31],\$dummy [32],
                     \$dummy [33],\$dummy [34],\$dummy [35],\$dummy [36],
                     \$dummy [37],\$dummy [38],\$dummy [39],\$dummy [40],
                     \$dummy [41],\$dummy [42],\$dummy [43],\$dummy [44],
                     \$dummy [45],\$dummy [46],\$dummy [47],\$dummy [48],
                     \$dummy [49],\$dummy [50],\$dummy [51],\$dummy [52],
                     \$dummy [53],\$dummy [54],\$dummy [55],\$dummy [56],
                     \$dummy [57],\$dummy [58],\$dummy [59],\$dummy [60],
                     \$dummy [61],\$dummy [62],\$dummy [63],\$dummy [64],
                     \$dummy [65],\$dummy [66],\$dummy [67],\$dummy [68],
                     \$dummy [69],\$dummy [70],\$dummy [71],\$dummy [72],
                     \$dummy [73],\$dummy [74],\$dummy [75],\$dummy [76],
                     \$dummy [77],\$dummy [78],\$dummy [79]}), .ramAddress ({
                     writeLogicRamAddress_12,writeLogicRamAddress_11,
                     writeLogicRamAddress_10,writeLogicRamAddress_9,
                     writeLogicRamAddress_8,writeLogicRamAddress_7,
                     writeLogicRamAddress_6,writeLogicRamAddress_5,
                     writeLogicRamAddress_4,writeLogicRamAddress_3,
                     writeLogicRamAddress_2,writeLogicRamAddress_1,
                     writeLogicRamAddress_0}), .MFC (MFCWindowRam), .outputSize (
                     {outputSize[12],outputSize[11],outputSize[10],outputSize[9]
                     ,outputSize[8],outputSize[7],outputSize[6],outputSize[5],
                     outputSize[4],outputSize[3],outputSize[2],outputSize[1],
                     outputSize[0]}), .write (write), .writeDone (writeDoneAll)
                     , .writeDoneOne (writeDoneOne)) ;
    inv01 ix878 (.Y (NOT_weightsSizeType_dup_876), .A (weightsSizeType)) ;
    fake_vcc ix817 (.Y (weightsSizeForWindow_0)) ;
    fake_gnd ix815 (.Y (resetLogics)) ;
    inv01 ix331 (.Y (loadWord), .A (nx882)) ;
    nor02_2x ix883 (.Y (nx882), .A0 (loadOneWord), .A1 (loadTwoWord)) ;
    nand02 ix321 (.Y (filterStep_0), .A0 (nx885), .A1 (loadTwoWord)) ;
    inv01 ix886 (.Y (nx885), .A (loadOneWord)) ;
    nor02_2x ix329 (.Y (filterStep_1), .A0 (loadOneWord), .A1 (nx888)) ;
    nor02_2x ix889 (.Y (nx888), .A0 (NOT_weightsSizeType_dup_876), .A1 (
             loadTwoWord)) ;
    nor02_2x ix335 (.Y (filterStep_2), .A0 (NOT_weightsSizeType_dup_876), .A1 (
             loadWord)) ;
    inv01 ix337 (.Y (switchRam), .A (nx892)) ;
    nor02_2x ix893 (.Y (nx892), .A0 (reset), .A1 (layerFinished)) ;
    nand02 ix117 (.Y (currentWriteRamBaseAddress_0), .A0 (nx895), .A1 (nx900)) ;
    nand02 ix896 (.Y (nx895), .A0 (windowRamBaseAddress1[0]), .A1 (nx1099)) ;
    dffr reg_ramBaseAddressSelector (.Q (ramBaseAddressSelector), .QB (
         NOT_ramBaseAddressSelector), .D (NOT_ramBaseAddressSelector), .CLK (
         layerFinished), .R (reset)) ;
    nand02 ix901 (.Y (nx900), .A0 (windowRamBaseAddress2[0]), .A1 (nx1107)) ;
    nand02 ix125 (.Y (currentWriteRamBaseAddress_1), .A0 (nx903), .A1 (nx905)) ;
    nand02 ix904 (.Y (nx903), .A0 (windowRamBaseAddress1[1]), .A1 (nx1099)) ;
    nand02 ix906 (.Y (nx905), .A0 (windowRamBaseAddress2[1]), .A1 (nx1107)) ;
    nand02 ix133 (.Y (currentWriteRamBaseAddress_2), .A0 (nx908), .A1 (nx910)) ;
    nand02 ix909 (.Y (nx908), .A0 (windowRamBaseAddress1[2]), .A1 (nx1099)) ;
    nand02 ix911 (.Y (nx910), .A0 (windowRamBaseAddress2[2]), .A1 (nx1107)) ;
    nand02 ix141 (.Y (currentWriteRamBaseAddress_3), .A0 (nx913), .A1 (nx915)) ;
    nand02 ix914 (.Y (nx913), .A0 (windowRamBaseAddress1[3]), .A1 (nx1099)) ;
    nand02 ix916 (.Y (nx915), .A0 (windowRamBaseAddress2[3]), .A1 (nx1107)) ;
    nand02 ix149 (.Y (currentWriteRamBaseAddress_4), .A0 (nx918), .A1 (nx920)) ;
    nand02 ix919 (.Y (nx918), .A0 (windowRamBaseAddress1[4]), .A1 (nx1099)) ;
    nand02 ix921 (.Y (nx920), .A0 (windowRamBaseAddress2[4]), .A1 (nx1107)) ;
    nand02 ix157 (.Y (currentWriteRamBaseAddress_5), .A0 (nx923), .A1 (nx925)) ;
    nand02 ix924 (.Y (nx923), .A0 (windowRamBaseAddress1[5]), .A1 (nx1099)) ;
    nand02 ix926 (.Y (nx925), .A0 (windowRamBaseAddress2[5]), .A1 (nx1107)) ;
    nand02 ix165 (.Y (currentWriteRamBaseAddress_6), .A0 (nx928), .A1 (nx930)) ;
    nand02 ix929 (.Y (nx928), .A0 (windowRamBaseAddress1[6]), .A1 (nx1099)) ;
    nand02 ix931 (.Y (nx930), .A0 (windowRamBaseAddress2[6]), .A1 (nx1107)) ;
    nand02 ix173 (.Y (currentWriteRamBaseAddress_7), .A0 (nx933), .A1 (nx935)) ;
    nand02 ix934 (.Y (nx933), .A0 (windowRamBaseAddress1[7]), .A1 (nx1101)) ;
    nand02 ix936 (.Y (nx935), .A0 (windowRamBaseAddress2[7]), .A1 (nx1109)) ;
    nand02 ix181 (.Y (currentWriteRamBaseAddress_8), .A0 (nx938), .A1 (nx940)) ;
    nand02 ix939 (.Y (nx938), .A0 (windowRamBaseAddress1[8]), .A1 (nx1101)) ;
    nand02 ix941 (.Y (nx940), .A0 (windowRamBaseAddress2[8]), .A1 (nx1109)) ;
    nand02 ix189 (.Y (currentWriteRamBaseAddress_9), .A0 (nx943), .A1 (nx945)) ;
    nand02 ix944 (.Y (nx943), .A0 (windowRamBaseAddress1[9]), .A1 (nx1101)) ;
    nand02 ix946 (.Y (nx945), .A0 (windowRamBaseAddress2[9]), .A1 (nx1109)) ;
    nand02 ix197 (.Y (currentWriteRamBaseAddress_10), .A0 (nx948), .A1 (nx950)
           ) ;
    nand02 ix949 (.Y (nx948), .A0 (windowRamBaseAddress1[10]), .A1 (nx1101)) ;
    nand02 ix951 (.Y (nx950), .A0 (windowRamBaseAddress2[10]), .A1 (nx1109)) ;
    nand02 ix205 (.Y (currentWriteRamBaseAddress_11), .A0 (nx953), .A1 (nx955)
           ) ;
    nand02 ix954 (.Y (nx953), .A0 (windowRamBaseAddress1[11]), .A1 (nx1101)) ;
    nand02 ix956 (.Y (nx955), .A0 (windowRamBaseAddress2[11]), .A1 (nx1109)) ;
    nand02 ix213 (.Y (currentWriteRamBaseAddress_12), .A0 (nx958), .A1 (nx960)
           ) ;
    nand02 ix959 (.Y (nx958), .A0 (windowRamBaseAddress1[12]), .A1 (nx1101)) ;
    nand02 ix961 (.Y (nx960), .A0 (windowRamBaseAddress2[12]), .A1 (nx1109)) ;
    nand02 ix221 (.Y (currentReadRamBaseAddress_0), .A0 (nx963), .A1 (nx965)) ;
    nand02 ix964 (.Y (nx963), .A0 (windowRamBaseAddress2[0]), .A1 (nx1101)) ;
    nand02 ix966 (.Y (nx965), .A0 (windowRamBaseAddress1[0]), .A1 (nx1109)) ;
    nand02 ix229 (.Y (currentReadRamBaseAddress_1), .A0 (nx968), .A1 (nx970)) ;
    nand02 ix969 (.Y (nx968), .A0 (windowRamBaseAddress2[1]), .A1 (nx1103)) ;
    nand02 ix971 (.Y (nx970), .A0 (windowRamBaseAddress1[1]), .A1 (nx1111)) ;
    nand02 ix237 (.Y (currentReadRamBaseAddress_2), .A0 (nx973), .A1 (nx975)) ;
    nand02 ix974 (.Y (nx973), .A0 (windowRamBaseAddress2[2]), .A1 (nx1103)) ;
    nand02 ix976 (.Y (nx975), .A0 (windowRamBaseAddress1[2]), .A1 (nx1111)) ;
    nand02 ix245 (.Y (currentReadRamBaseAddress_3), .A0 (nx978), .A1 (nx980)) ;
    nand02 ix979 (.Y (nx978), .A0 (windowRamBaseAddress2[3]), .A1 (nx1103)) ;
    nand02 ix981 (.Y (nx980), .A0 (windowRamBaseAddress1[3]), .A1 (nx1111)) ;
    nand02 ix253 (.Y (currentReadRamBaseAddress_4), .A0 (nx983), .A1 (nx985)) ;
    nand02 ix984 (.Y (nx983), .A0 (windowRamBaseAddress2[4]), .A1 (nx1103)) ;
    nand02 ix986 (.Y (nx985), .A0 (windowRamBaseAddress1[4]), .A1 (nx1111)) ;
    nand02 ix261 (.Y (currentReadRamBaseAddress_5), .A0 (nx988), .A1 (nx990)) ;
    nand02 ix989 (.Y (nx988), .A0 (windowRamBaseAddress2[5]), .A1 (nx1103)) ;
    nand02 ix991 (.Y (nx990), .A0 (windowRamBaseAddress1[5]), .A1 (nx1111)) ;
    nand02 ix269 (.Y (currentReadRamBaseAddress_6), .A0 (nx993), .A1 (nx995)) ;
    nand02 ix994 (.Y (nx993), .A0 (windowRamBaseAddress2[6]), .A1 (nx1103)) ;
    nand02 ix996 (.Y (nx995), .A0 (windowRamBaseAddress1[6]), .A1 (nx1111)) ;
    nand02 ix277 (.Y (currentReadRamBaseAddress_7), .A0 (nx998), .A1 (nx1000)) ;
    nand02 ix999 (.Y (nx998), .A0 (windowRamBaseAddress2[7]), .A1 (nx1103)) ;
    nand02 ix1001 (.Y (nx1000), .A0 (windowRamBaseAddress1[7]), .A1 (nx1111)) ;
    nand02 ix285 (.Y (currentReadRamBaseAddress_8), .A0 (nx1003), .A1 (nx1005)
           ) ;
    nand02 ix1004 (.Y (nx1003), .A0 (windowRamBaseAddress2[8]), .A1 (nx1105)) ;
    nand02 ix1006 (.Y (nx1005), .A0 (windowRamBaseAddress1[8]), .A1 (nx1113)) ;
    nand02 ix293 (.Y (currentReadRamBaseAddress_9), .A0 (nx1008), .A1 (nx1010)
           ) ;
    nand02 ix1009 (.Y (nx1008), .A0 (windowRamBaseAddress2[9]), .A1 (nx1105)) ;
    nand02 ix1011 (.Y (nx1010), .A0 (windowRamBaseAddress1[9]), .A1 (nx1113)) ;
    nand02 ix301 (.Y (currentReadRamBaseAddress_10), .A0 (nx1013), .A1 (nx1015)
           ) ;
    nand02 ix1014 (.Y (nx1013), .A0 (windowRamBaseAddress2[10]), .A1 (nx1105)) ;
    nand02 ix1016 (.Y (nx1015), .A0 (windowRamBaseAddress1[10]), .A1 (nx1113)) ;
    nand02 ix309 (.Y (currentReadRamBaseAddress_11), .A0 (nx1018), .A1 (nx1020)
           ) ;
    nand02 ix1019 (.Y (nx1018), .A0 (windowRamBaseAddress2[11]), .A1 (nx1105)) ;
    nand02 ix1021 (.Y (nx1020), .A0 (windowRamBaseAddress1[11]), .A1 (nx1113)) ;
    nand02 ix317 (.Y (currentReadRamBaseAddress_12), .A0 (nx1023), .A1 (nx1025)
           ) ;
    nand02 ix1024 (.Y (nx1023), .A0 (windowRamBaseAddress2[12]), .A1 (nx1105)) ;
    nand02 ix1026 (.Y (nx1025), .A0 (windowRamBaseAddress1[12]), .A1 (nx1113)) ;
    nand02 ix7 (.Y (windowRamAddress[0]), .A0 (nx1028), .A1 (nx1030)) ;
    nand02 ix1029 (.Y (nx1028), .A0 (writeLogicRamAddress_0), .A1 (write)) ;
    nand02 ix1031 (.Y (nx1030), .A0 (readLogicRamAddress_0), .A1 (nx1117)) ;
    nand02 ix15 (.Y (windowRamAddress[1]), .A0 (nx1035), .A1 (nx1037)) ;
    nand02 ix1036 (.Y (nx1035), .A0 (writeLogicRamAddress_1), .A1 (write)) ;
    nand02 ix1038 (.Y (nx1037), .A0 (readLogicRamAddress_1), .A1 (nx1117)) ;
    nand02 ix23 (.Y (windowRamAddress[2]), .A0 (nx1040), .A1 (nx1042)) ;
    nand02 ix1041 (.Y (nx1040), .A0 (writeLogicRamAddress_2), .A1 (write)) ;
    nand02 ix1043 (.Y (nx1042), .A0 (readLogicRamAddress_2), .A1 (nx1117)) ;
    nand02 ix31 (.Y (windowRamAddress[3]), .A0 (nx1045), .A1 (nx1047)) ;
    nand02 ix1046 (.Y (nx1045), .A0 (writeLogicRamAddress_3), .A1 (write)) ;
    nand02 ix1048 (.Y (nx1047), .A0 (readLogicRamAddress_3), .A1 (nx1117)) ;
    nand02 ix39 (.Y (windowRamAddress[4]), .A0 (nx1050), .A1 (nx1052)) ;
    nand02 ix1051 (.Y (nx1050), .A0 (writeLogicRamAddress_4), .A1 (write)) ;
    nand02 ix1053 (.Y (nx1052), .A0 (readLogicRamAddress_4), .A1 (nx1117)) ;
    nand02 ix47 (.Y (windowRamAddress[5]), .A0 (nx1055), .A1 (nx1057)) ;
    nand02 ix1056 (.Y (nx1055), .A0 (writeLogicRamAddress_5), .A1 (write)) ;
    nand02 ix1058 (.Y (nx1057), .A0 (readLogicRamAddress_5), .A1 (nx1117)) ;
    nand02 ix55 (.Y (windowRamAddress[6]), .A0 (nx1060), .A1 (nx1062)) ;
    nand02 ix1061 (.Y (nx1060), .A0 (writeLogicRamAddress_6), .A1 (write)) ;
    nand02 ix1063 (.Y (nx1062), .A0 (readLogicRamAddress_6), .A1 (nx1117)) ;
    nand02 ix63 (.Y (windowRamAddress[7]), .A0 (nx1065), .A1 (nx1067)) ;
    nand02 ix1066 (.Y (nx1065), .A0 (writeLogicRamAddress_7), .A1 (write)) ;
    nand02 ix1068 (.Y (nx1067), .A0 (readLogicRamAddress_7), .A1 (nx1119)) ;
    nand02 ix71 (.Y (windowRamAddress[8]), .A0 (nx1070), .A1 (nx1072)) ;
    nand02 ix1071 (.Y (nx1070), .A0 (writeLogicRamAddress_8), .A1 (write)) ;
    nand02 ix1073 (.Y (nx1072), .A0 (readLogicRamAddress_8), .A1 (nx1119)) ;
    nand02 ix79 (.Y (windowRamAddress[9]), .A0 (nx1075), .A1 (nx1077)) ;
    nand02 ix1076 (.Y (nx1075), .A0 (writeLogicRamAddress_9), .A1 (write)) ;
    nand02 ix1078 (.Y (nx1077), .A0 (readLogicRamAddress_9), .A1 (nx1119)) ;
    nand02 ix87 (.Y (windowRamAddress[10]), .A0 (nx1080), .A1 (nx1082)) ;
    nand02 ix1081 (.Y (nx1080), .A0 (writeLogicRamAddress_10), .A1 (write)) ;
    nand02 ix1083 (.Y (nx1082), .A0 (readLogicRamAddress_10), .A1 (nx1119)) ;
    nand02 ix95 (.Y (windowRamAddress[11]), .A0 (nx1085), .A1 (nx1087)) ;
    nand02 ix1086 (.Y (nx1085), .A0 (writeLogicRamAddress_11), .A1 (write)) ;
    nand02 ix1088 (.Y (nx1087), .A0 (readLogicRamAddress_11), .A1 (nx1119)) ;
    nand02 ix103 (.Y (windowRamAddress[12]), .A0 (nx1090), .A1 (nx1092)) ;
    nand02 ix1091 (.Y (nx1090), .A0 (write), .A1 (writeLogicRamAddress_12)) ;
    nand02 ix1093 (.Y (nx1092), .A0 (nx1119), .A1 (readLogicRamAddress_12)) ;
    inv02 ix1098 (.Y (nx1099), .A (nx1113)) ;
    inv02 ix1100 (.Y (nx1101), .A (nx1113)) ;
    inv02 ix1102 (.Y (nx1103), .A (nx1115)) ;
    inv02 ix1104 (.Y (nx1105), .A (nx1115)) ;
    inv02 ix1106 (.Y (nx1107), .A (ramBaseAddressSelector)) ;
    inv02 ix1108 (.Y (nx1109), .A (ramBaseAddressSelector)) ;
    inv02 ix1110 (.Y (nx1111), .A (ramBaseAddressSelector)) ;
    inv02 ix1112 (.Y (nx1113), .A (ramBaseAddressSelector)) ;
    inv02 ix1114 (.Y (nx1115), .A (ramBaseAddressSelector)) ;
    inv02 ix1116 (.Y (nx1117), .A (write)) ;
    inv02 ix1118 (.Y (nx1119), .A (write)) ;
endmodule


module WriteLogic_13_80 ( clk, resetState, switchRam, ramBasedAddress, 
                          internalBus, ramWrite, ramDataOutBus, ramAddress, MFC, 
                          outputSize, write, writeDone, writeDoneOne ) ;

    input clk ;
    input resetState ;
    input switchRam ;
    input [12:0]ramBasedAddress ;
    input [79:0]internalBus ;
    output ramWrite ;
    output [79:0]ramDataOutBus ;
    output [12:0]ramAddress ;
    input MFC ;
    input [12:0]outputSize ;
    input write ;
    output writeDone ;
    output writeDoneOne ;

    wire currentState_2, currentState_1, addressRegOut_12, addressRegOut_11, 
         addressRegOut_10, addressRegOut_9, addressRegOut_8, addressRegOut_7, 
         addressRegOut_6, addressRegOut_5, addressRegOut_4, addressRegOut_3, 
         addressRegOut_2, addressRegOut_1, addressRegOut_0, 
         baseAddressCounterClk, addressRegIn_12, addressRegIn_11, 
         addressRegIn_10, addressRegIn_9, addressRegIn_8, addressRegIn_7, 
         addressRegIn_6, addressRegIn_5, addressRegIn_4, addressRegIn_3, 
         addressRegIn_2, addressRegIn_1, addressRegIn_0, dmaCountIn_4, 
         dmaCountIn_3, dmaCountIn_2, dmaCountIn_1, dmaCountIn_0, currentState_4, 
         currentState_0, nx31, NOT_clk, nx22, nx26, currentState_3, nx39, nx49, 
         nx59, nx69, nx79, nx91, nx93, nx96, nx98, nx102, nx106, nx110, nx119, 
         nx122, nx124, nx126, nx128, nx132, nx134, nx137, nx140, nx143, nx146, 
         nx149, nx152, nx155, nx158, nx161, nx164, nx167, nx170, nx173, nx176, 
         nx179, nx182, nx185, nx188, nx196, nx198, nx200;
    wire [81:0] \$dummy ;




    assign ramDataOutBus[78] = ramDataOutBus[79] ;
    assign ramDataOutBus[77] = ramDataOutBus[79] ;
    assign ramDataOutBus[76] = ramDataOutBus[79] ;
    assign ramDataOutBus[75] = ramDataOutBus[79] ;
    assign ramDataOutBus[74] = ramDataOutBus[79] ;
    assign ramDataOutBus[73] = ramDataOutBus[79] ;
    assign ramDataOutBus[72] = ramDataOutBus[79] ;
    assign ramDataOutBus[71] = ramDataOutBus[79] ;
    assign ramDataOutBus[70] = ramDataOutBus[79] ;
    assign ramDataOutBus[69] = ramDataOutBus[79] ;
    assign ramDataOutBus[68] = ramDataOutBus[79] ;
    assign ramDataOutBus[67] = ramDataOutBus[79] ;
    assign ramDataOutBus[66] = ramDataOutBus[79] ;
    assign ramDataOutBus[65] = ramDataOutBus[79] ;
    assign ramDataOutBus[64] = ramDataOutBus[79] ;
    assign ramDataOutBus[63] = ramDataOutBus[79] ;
    assign ramDataOutBus[62] = ramDataOutBus[79] ;
    assign ramDataOutBus[61] = ramDataOutBus[79] ;
    assign ramDataOutBus[60] = ramDataOutBus[79] ;
    assign ramDataOutBus[59] = ramDataOutBus[79] ;
    assign ramDataOutBus[58] = ramDataOutBus[79] ;
    assign ramDataOutBus[57] = ramDataOutBus[79] ;
    assign ramDataOutBus[56] = ramDataOutBus[79] ;
    assign ramDataOutBus[55] = ramDataOutBus[79] ;
    assign ramDataOutBus[54] = ramDataOutBus[79] ;
    assign ramDataOutBus[53] = ramDataOutBus[79] ;
    assign ramDataOutBus[52] = ramDataOutBus[79] ;
    assign ramDataOutBus[51] = ramDataOutBus[79] ;
    assign ramDataOutBus[50] = ramDataOutBus[79] ;
    assign ramDataOutBus[49] = ramDataOutBus[79] ;
    assign ramDataOutBus[48] = ramDataOutBus[79] ;
    assign ramDataOutBus[47] = ramDataOutBus[79] ;
    assign ramDataOutBus[46] = ramDataOutBus[79] ;
    assign ramDataOutBus[45] = ramDataOutBus[79] ;
    assign ramDataOutBus[44] = ramDataOutBus[79] ;
    assign ramDataOutBus[43] = ramDataOutBus[79] ;
    assign ramDataOutBus[42] = ramDataOutBus[79] ;
    assign ramDataOutBus[41] = ramDataOutBus[79] ;
    assign ramDataOutBus[40] = ramDataOutBus[79] ;
    assign ramDataOutBus[39] = ramDataOutBus[79] ;
    assign ramDataOutBus[38] = ramDataOutBus[79] ;
    assign ramDataOutBus[37] = ramDataOutBus[79] ;
    assign ramDataOutBus[36] = ramDataOutBus[79] ;
    assign ramDataOutBus[35] = ramDataOutBus[79] ;
    assign ramDataOutBus[34] = ramDataOutBus[79] ;
    assign ramDataOutBus[33] = ramDataOutBus[79] ;
    assign ramDataOutBus[32] = ramDataOutBus[79] ;
    assign ramDataOutBus[31] = ramDataOutBus[79] ;
    assign ramDataOutBus[30] = ramDataOutBus[79] ;
    assign ramDataOutBus[29] = ramDataOutBus[79] ;
    assign ramDataOutBus[28] = ramDataOutBus[79] ;
    assign ramDataOutBus[27] = ramDataOutBus[79] ;
    assign ramDataOutBus[26] = ramDataOutBus[79] ;
    assign ramDataOutBus[25] = ramDataOutBus[79] ;
    assign ramDataOutBus[24] = ramDataOutBus[79] ;
    assign ramDataOutBus[23] = ramDataOutBus[79] ;
    assign ramDataOutBus[22] = ramDataOutBus[79] ;
    assign ramDataOutBus[21] = ramDataOutBus[79] ;
    assign ramDataOutBus[20] = ramDataOutBus[79] ;
    assign ramDataOutBus[19] = ramDataOutBus[79] ;
    assign ramDataOutBus[18] = ramDataOutBus[79] ;
    assign ramDataOutBus[17] = ramDataOutBus[79] ;
    assign ramDataOutBus[16] = ramDataOutBus[79] ;
    assign ramDataOutBus[15] = ramDataOutBus[79] ;
    assign ramDataOutBus[14] = ramDataOutBus[79] ;
    assign ramDataOutBus[13] = ramDataOutBus[79] ;
    assign ramDataOutBus[12] = ramDataOutBus[79] ;
    assign ramDataOutBus[11] = ramDataOutBus[79] ;
    assign ramDataOutBus[10] = ramDataOutBus[79] ;
    assign ramDataOutBus[9] = ramDataOutBus[79] ;
    assign ramDataOutBus[8] = ramDataOutBus[79] ;
    assign ramDataOutBus[7] = ramDataOutBus[79] ;
    assign ramDataOutBus[6] = ramDataOutBus[79] ;
    assign ramDataOutBus[5] = ramDataOutBus[79] ;
    assign ramDataOutBus[4] = ramDataOutBus[79] ;
    assign ramDataOutBus[3] = ramDataOutBus[79] ;
    assign ramDataOutBus[2] = ramDataOutBus[79] ;
    assign ramDataOutBus[1] = ramDataOutBus[79] ;
    assign ramDataOutBus[0] = ramDataOutBus[79] ;
    WriteDMA_13_80 dma (.clk (clk), .writeBaseAddress ({addressRegOut_12,
                   addressRegOut_11,addressRegOut_10,addressRegOut_9,
                   addressRegOut_8,addressRegOut_7,addressRegOut_6,
                   addressRegOut_5,addressRegOut_4,addressRegOut_3,
                   addressRegOut_2,addressRegOut_1,addressRegOut_0}), .writeStep (
                   {outputSize[12],outputSize[11],outputSize[10],outputSize[9],
                   outputSize[8],outputSize[7],outputSize[6],outputSize[5],
                   outputSize[4],outputSize[3],outputSize[2],outputSize[1],
                   outputSize[0]}), .writeToRam (ramWrite), .counter ({
                   dmaCountIn_4,dmaCountIn_3,dmaCountIn_2,dmaCountIn_1,
                   dmaCountIn_0}), .initCounter (currentState_2), .initAddress (
                   ramDataOutBus[79]), .internalBus ({ramDataOutBus[79],
                   ramDataOutBus[79],ramDataOutBus[79],ramDataOutBus[79],
                   ramDataOutBus[79],ramDataOutBus[79],ramDataOutBus[79],
                   ramDataOutBus[79],ramDataOutBus[79],ramDataOutBus[79],
                   ramDataOutBus[79],ramDataOutBus[79],ramDataOutBus[79],
                   ramDataOutBus[79],ramDataOutBus[79],ramDataOutBus[79],
                   ramDataOutBus[79],ramDataOutBus[79],ramDataOutBus[79],
                   ramDataOutBus[79],ramDataOutBus[79],ramDataOutBus[79],
                   ramDataOutBus[79],ramDataOutBus[79],ramDataOutBus[79],
                   ramDataOutBus[79],ramDataOutBus[79],ramDataOutBus[79],
                   ramDataOutBus[79],ramDataOutBus[79],ramDataOutBus[79],
                   ramDataOutBus[79],ramDataOutBus[79],ramDataOutBus[79],
                   ramDataOutBus[79],ramDataOutBus[79],ramDataOutBus[79],
                   ramDataOutBus[79],ramDataOutBus[79],ramDataOutBus[79],
                   ramDataOutBus[79],ramDataOutBus[79],ramDataOutBus[79],
                   ramDataOutBus[79],ramDataOutBus[79],ramDataOutBus[79],
                   ramDataOutBus[79],ramDataOutBus[79],ramDataOutBus[79],
                   ramDataOutBus[79],ramDataOutBus[79],ramDataOutBus[79],
                   ramDataOutBus[79],ramDataOutBus[79],ramDataOutBus[79],
                   ramDataOutBus[79],ramDataOutBus[79],ramDataOutBus[79],
                   ramDataOutBus[79],ramDataOutBus[79],ramDataOutBus[79],
                   ramDataOutBus[79],ramDataOutBus[79],ramDataOutBus[79],
                   ramDataOutBus[79],ramDataOutBus[79],ramDataOutBus[79],
                   ramDataOutBus[79],ramDataOutBus[79],ramDataOutBus[79],
                   ramDataOutBus[79],ramDataOutBus[79],ramDataOutBus[79],
                   ramDataOutBus[79],ramDataOutBus[79],ramDataOutBus[79],
                   ramDataOutBus[79],ramDataOutBus[79],ramDataOutBus[79],
                   ramDataOutBus[79]}), .ramWrite (\$dummy [0]), .ramDataOutBus (
                   {\$dummy [1],\$dummy [2],\$dummy [3],\$dummy [4],\$dummy [5],
                   \$dummy [6],\$dummy [7],\$dummy [8],\$dummy [9],\$dummy [10],
                   \$dummy [11],\$dummy [12],\$dummy [13],\$dummy [14],
                   \$dummy [15],\$dummy [16],\$dummy [17],\$dummy [18],
                   \$dummy [19],\$dummy [20],\$dummy [21],\$dummy [22],
                   \$dummy [23],\$dummy [24],\$dummy [25],\$dummy [26],
                   \$dummy [27],\$dummy [28],\$dummy [29],\$dummy [30],
                   \$dummy [31],\$dummy [32],\$dummy [33],\$dummy [34],
                   \$dummy [35],\$dummy [36],\$dummy [37],\$dummy [38],
                   \$dummy [39],\$dummy [40],\$dummy [41],\$dummy [42],
                   \$dummy [43],\$dummy [44],\$dummy [45],\$dummy [46],
                   \$dummy [47],\$dummy [48],\$dummy [49],\$dummy [50],
                   \$dummy [51],\$dummy [52],\$dummy [53],\$dummy [54],
                   \$dummy [55],\$dummy [56],\$dummy [57],\$dummy [58],
                   \$dummy [59],\$dummy [60],\$dummy [61],\$dummy [62],
                   \$dummy [63],\$dummy [64],\$dummy [65],\$dummy [66],
                   \$dummy [67],\$dummy [68],\$dummy [69],\$dummy [70],
                   \$dummy [71],\$dummy [72],\$dummy [73],\$dummy [74],
                   \$dummy [75],\$dummy [76],\$dummy [77],\$dummy [78],
                   \$dummy [79],\$dummy [80]}), .ramWriteAddress ({
                   ramAddress[12],ramAddress[11],ramAddress[10],ramAddress[9],
                   ramAddress[8],ramAddress[7],ramAddress[6],ramAddress[5],
                   ramAddress[4],ramAddress[3],ramAddress[2],ramAddress[1],
                   ramAddress[0]}), .MFC (MFC), .writeComplete (writeDone), .writeCompleteOne (
                   writeDoneOne)) ;
    Counter2_13 baseAddressCounter (.load ({addressRegIn_12,addressRegIn_11,
                addressRegIn_10,addressRegIn_9,addressRegIn_8,addressRegIn_7,
                addressRegIn_6,addressRegIn_5,addressRegIn_4,addressRegIn_3,
                addressRegIn_2,addressRegIn_1,addressRegIn_0}), .reset (
                ramDataOutBus[79]), .clk (baseAddressCounterClk), .isLoad (
                currentState_1), .count ({addressRegOut_12,addressRegOut_11,
                addressRegOut_10,addressRegOut_9,addressRegOut_8,addressRegOut_7
                ,addressRegOut_6,addressRegOut_5,addressRegOut_4,addressRegOut_3
                ,addressRegOut_2,addressRegOut_1,addressRegOut_0})) ;
    fake_gnd ix6 (.Y (ramDataOutBus[79])) ;
    nor02_2x ix49 (.Y (ramWrite), .A0 (nx91), .A1 (nx93)) ;
    inv01 ix92 (.Y (nx91), .A (write)) ;
    mux21 ix80 (.Y (nx79), .A0 (nx96), .A1 (nx93), .S0 (nx128)) ;
    nand02 ix97 (.Y (nx96), .A0 (nx98), .A1 (currentState_3)) ;
    inv01 ix99 (.Y (nx98), .A (switchRam)) ;
    mux21 ix70 (.Y (nx69), .A0 (nx102), .A1 (nx134), .S0 (nx128)) ;
    nand02 ix103 (.Y (nx102), .A0 (nx98), .A1 (currentState_2)) ;
    mux21 ix60 (.Y (nx59), .A0 (nx106), .A1 (nx132), .S0 (nx128)) ;
    nand02 ix107 (.Y (nx106), .A0 (nx98), .A1 (currentState_0)) ;
    mux21 ix50 (.Y (nx49), .A0 (nx110), .A1 (nx126), .S0 (nx128)) ;
    oai21 ix111 (.Y (nx110), .A0 (currentState_1), .A1 (currentState_4), .B0 (
          nx98)) ;
    oai21 ix40 (.Y (nx39), .A0 (nx196), .A1 (nx31), .B0 (nx98)) ;
    dff reg_currentState_1 (.Q (currentState_1), .QB (\$dummy [81]), .D (nx39), 
        .CLK (NOT_clk)) ;
    inv01 ix117 (.Y (NOT_clk), .A (clk)) ;
    nand04 ix29 (.Y (nx31), .A0 (nx119), .A1 (nx98), .A2 (nx122), .A3 (nx124)) ;
    nand02 ix120 (.Y (nx119), .A0 (writeDone), .A1 (currentState_4)) ;
    dff reg_currentState_4 (.Q (currentState_4), .QB (nx93), .D (nx79), .CLK (
        NOT_clk)) ;
    nand02 ix123 (.Y (nx122), .A0 (write), .A1 (currentState_0)) ;
    nand02 ix125 (.Y (nx124), .A0 (nx93), .A1 (nx126)) ;
    dff reg_currentState_0 (.Q (currentState_0), .QB (nx126), .D (nx49), .CLK (
        NOT_clk)) ;
    nor02_2x ix129 (.Y (nx128), .A0 (nx26), .A1 (nx22)) ;
    nand02 ix27 (.Y (nx26), .A0 (nx119), .A1 (nx98)) ;
    nand02 ix23 (.Y (nx22), .A0 (nx122), .A1 (nx124)) ;
    dff reg_currentState_2 (.Q (currentState_2), .QB (nx132), .D (nx59), .CLK (
        NOT_clk)) ;
    dff reg_currentState_3 (.Q (currentState_3), .QB (nx134), .D (nx69), .CLK (
        NOT_clk)) ;
    nor02_2x ix51 (.Y (dmaCountIn_0), .A0 (nx137), .A1 (nx132)) ;
    inv01 ix138 (.Y (nx137), .A (outputSize[0])) ;
    nor02_2x ix53 (.Y (dmaCountIn_1), .A0 (nx140), .A1 (nx132)) ;
    inv01 ix141 (.Y (nx140), .A (outputSize[1])) ;
    nor02_2x ix55 (.Y (dmaCountIn_2), .A0 (nx143), .A1 (nx132)) ;
    inv01 ix144 (.Y (nx143), .A (outputSize[2])) ;
    nor02_2x ix57 (.Y (dmaCountIn_3), .A0 (nx146), .A1 (nx132)) ;
    inv01 ix147 (.Y (nx146), .A (outputSize[3])) ;
    nor02_2x ix59 (.Y (dmaCountIn_4), .A0 (nx149), .A1 (nx132)) ;
    inv01 ix150 (.Y (nx149), .A (outputSize[4])) ;
    nor02_2x ix61 (.Y (addressRegIn_0), .A0 (nx152), .A1 (nx196)) ;
    inv01 ix153 (.Y (nx152), .A (ramBasedAddress[0])) ;
    nor02_2x ix63 (.Y (addressRegIn_1), .A0 (nx155), .A1 (nx196)) ;
    inv01 ix156 (.Y (nx155), .A (ramBasedAddress[1])) ;
    nor02_2x ix65 (.Y (addressRegIn_2), .A0 (nx158), .A1 (nx196)) ;
    inv01 ix159 (.Y (nx158), .A (ramBasedAddress[2])) ;
    nor02_2x ix67 (.Y (addressRegIn_3), .A0 (nx161), .A1 (nx196)) ;
    inv01 ix162 (.Y (nx161), .A (ramBasedAddress[3])) ;
    nor02_2x ix69 (.Y (addressRegIn_4), .A0 (nx164), .A1 (nx196)) ;
    inv01 ix165 (.Y (nx164), .A (ramBasedAddress[4])) ;
    nor02_2x ix71 (.Y (addressRegIn_5), .A0 (nx167), .A1 (nx196)) ;
    inv01 ix168 (.Y (nx167), .A (ramBasedAddress[5])) ;
    nor02_2x ix73 (.Y (addressRegIn_6), .A0 (nx170), .A1 (nx198)) ;
    inv01 ix171 (.Y (nx170), .A (ramBasedAddress[6])) ;
    nor02_2x ix75 (.Y (addressRegIn_7), .A0 (nx173), .A1 (nx198)) ;
    inv01 ix174 (.Y (nx173), .A (ramBasedAddress[7])) ;
    nor02_2x ix77 (.Y (addressRegIn_8), .A0 (nx176), .A1 (nx198)) ;
    inv01 ix177 (.Y (nx176), .A (ramBasedAddress[8])) ;
    nor02_2x ix79 (.Y (addressRegIn_9), .A0 (nx179), .A1 (nx198)) ;
    inv01 ix180 (.Y (nx179), .A (ramBasedAddress[9])) ;
    nor02_2x ix81 (.Y (addressRegIn_10), .A0 (nx182), .A1 (nx198)) ;
    inv01 ix183 (.Y (nx182), .A (ramBasedAddress[10])) ;
    nor02_2x ix83 (.Y (addressRegIn_11), .A0 (nx185), .A1 (nx198)) ;
    inv01 ix186 (.Y (nx185), .A (ramBasedAddress[11])) ;
    nor02_2x ix85 (.Y (addressRegIn_12), .A0 (nx188), .A1 (nx198)) ;
    inv01 ix189 (.Y (nx188), .A (ramBasedAddress[12])) ;
    mux21 ix93 (.Y (baseAddressCounterClk), .A0 (nx200), .A1 (nx134), .S0 (clk)
          ) ;
    inv02 ix195 (.Y (nx196), .A (currentState_1)) ;
    inv02 ix197 (.Y (nx198), .A (currentState_1)) ;
    inv02 ix199 (.Y (nx200), .A (currentState_1)) ;
endmodule


module WriteDMA_13_80 ( clk, writeBaseAddress, writeStep, writeToRam, counter, 
                        initCounter, initAddress, internalBus, ramWrite, 
                        ramDataOutBus, ramWriteAddress, MFC, writeComplete, 
                        writeCompleteOne ) ;

    input clk ;
    input [12:0]writeBaseAddress ;
    input [12:0]writeStep ;
    input writeToRam ;
    input [4:0]counter ;
    input initCounter ;
    input initAddress ;
    input [79:0]internalBus ;
    output ramWrite ;
    output [79:0]ramDataOutBus ;
    output [12:0]ramWriteAddress ;
    input MFC ;
    output writeComplete ;
    output writeCompleteOne ;

    wire toBeAdded_12, toBeAdded_11, toBeAdded_10, toBeAdded_9, toBeAdded_8, 
         toBeAdded_7, toBeAdded_6, toBeAdded_5, toBeAdded_4, toBeAdded_3, 
         toBeAdded_2, toBeAdded_1, toBeAdded_0, NOT_MFC, currentCount_4, nx82, 
         currentCount_3, nx50, currentCount_2, currentCount_1, currentCount_0, 
         nx106, nx136, nx160, nx180, nx192, nx210, nx59, nx69, nx79, nx89, nx99, 
         nx113, nx147, nx155, nx157, nx159, nx163, nx168, nx171, nx175, nx183, 
         nx185, nx188, nx196, nx199, nx201, nx205, nx207, nx211, nx213, nx214, 
         nx217, nx218, nx220, nx221, nx223, nx226, nx238, nx240, nx1, nx5, nx242, 
         nx244, nx246, nx248, nx250;
    wire [13:0] \$dummy ;




    assign ramDataOutBus[79] = ramWrite ;
    assign ramDataOutBus[78] = ramWrite ;
    assign ramDataOutBus[77] = ramWrite ;
    assign ramDataOutBus[76] = ramWrite ;
    assign ramDataOutBus[75] = ramWrite ;
    assign ramDataOutBus[74] = ramWrite ;
    assign ramDataOutBus[73] = ramWrite ;
    assign ramDataOutBus[72] = ramWrite ;
    assign ramDataOutBus[71] = ramWrite ;
    assign ramDataOutBus[70] = ramWrite ;
    assign ramDataOutBus[69] = ramWrite ;
    assign ramDataOutBus[68] = ramWrite ;
    assign ramDataOutBus[67] = ramWrite ;
    assign ramDataOutBus[66] = ramWrite ;
    assign ramDataOutBus[65] = ramWrite ;
    assign ramDataOutBus[64] = ramWrite ;
    assign ramDataOutBus[63] = ramWrite ;
    assign ramDataOutBus[62] = ramWrite ;
    assign ramDataOutBus[61] = ramWrite ;
    assign ramDataOutBus[60] = ramWrite ;
    assign ramDataOutBus[59] = ramWrite ;
    assign ramDataOutBus[58] = ramWrite ;
    assign ramDataOutBus[57] = ramWrite ;
    assign ramDataOutBus[56] = ramWrite ;
    assign ramDataOutBus[55] = ramWrite ;
    assign ramDataOutBus[54] = ramWrite ;
    assign ramDataOutBus[53] = ramWrite ;
    assign ramDataOutBus[52] = ramWrite ;
    assign ramDataOutBus[51] = ramWrite ;
    assign ramDataOutBus[50] = ramWrite ;
    assign ramDataOutBus[49] = ramWrite ;
    assign ramDataOutBus[48] = ramWrite ;
    assign ramDataOutBus[47] = ramWrite ;
    assign ramDataOutBus[46] = ramWrite ;
    assign ramDataOutBus[45] = ramWrite ;
    assign ramDataOutBus[44] = ramWrite ;
    assign ramDataOutBus[43] = ramWrite ;
    assign ramDataOutBus[42] = ramWrite ;
    assign ramDataOutBus[41] = ramWrite ;
    assign ramDataOutBus[40] = ramWrite ;
    assign ramDataOutBus[39] = ramWrite ;
    assign ramDataOutBus[38] = ramWrite ;
    assign ramDataOutBus[37] = ramWrite ;
    assign ramDataOutBus[36] = ramWrite ;
    assign ramDataOutBus[35] = ramWrite ;
    assign ramDataOutBus[34] = ramWrite ;
    assign ramDataOutBus[33] = ramWrite ;
    assign ramDataOutBus[32] = ramWrite ;
    assign ramDataOutBus[31] = ramWrite ;
    assign ramDataOutBus[30] = ramWrite ;
    assign ramDataOutBus[29] = ramWrite ;
    assign ramDataOutBus[28] = ramWrite ;
    assign ramDataOutBus[27] = ramWrite ;
    assign ramDataOutBus[26] = ramWrite ;
    assign ramDataOutBus[25] = ramWrite ;
    assign ramDataOutBus[24] = ramWrite ;
    assign ramDataOutBus[23] = ramWrite ;
    assign ramDataOutBus[22] = ramWrite ;
    assign ramDataOutBus[21] = ramWrite ;
    assign ramDataOutBus[20] = ramWrite ;
    assign ramDataOutBus[19] = ramWrite ;
    assign ramDataOutBus[18] = ramWrite ;
    assign ramDataOutBus[17] = ramWrite ;
    assign ramDataOutBus[16] = ramWrite ;
    assign ramDataOutBus[15] = ramWrite ;
    assign ramDataOutBus[14] = ramWrite ;
    assign ramDataOutBus[13] = ramWrite ;
    assign ramDataOutBus[12] = ramWrite ;
    assign ramDataOutBus[11] = ramWrite ;
    assign ramDataOutBus[10] = ramWrite ;
    assign ramDataOutBus[9] = ramWrite ;
    assign ramDataOutBus[8] = ramWrite ;
    assign ramDataOutBus[7] = ramWrite ;
    assign ramDataOutBus[6] = ramWrite ;
    assign ramDataOutBus[5] = ramWrite ;
    assign ramDataOutBus[4] = ramWrite ;
    assign ramDataOutBus[3] = ramWrite ;
    assign ramDataOutBus[2] = ramWrite ;
    assign ramDataOutBus[1] = ramWrite ;
    assign ramDataOutBus[0] = ramWrite ;
    MultiStepCounter_13 writeAddressRegister (.load ({writeBaseAddress[12],
                        writeBaseAddress[11],writeBaseAddress[10],
                        writeBaseAddress[9],writeBaseAddress[8],
                        writeBaseAddress[7],writeBaseAddress[6],
                        writeBaseAddress[5],writeBaseAddress[4],
                        writeBaseAddress[3],writeBaseAddress[2],
                        writeBaseAddress[1],writeBaseAddress[0]}), .toBeAdded ({
                        toBeAdded_12,toBeAdded_11,toBeAdded_10,toBeAdded_9,
                        toBeAdded_8,toBeAdded_7,toBeAdded_6,toBeAdded_5,
                        toBeAdded_4,toBeAdded_3,toBeAdded_2,toBeAdded_1,
                        toBeAdded_0}), .reset (ramWrite), .clk (clk), .isLoad (
                        nx244), .MFC (MFC), .count ({ramWriteAddress[12],
                        ramWriteAddress[11],ramWriteAddress[10],
                        ramWriteAddress[9],ramWriteAddress[8],ramWriteAddress[7]
                        ,ramWriteAddress[6],ramWriteAddress[5],
                        ramWriteAddress[4],ramWriteAddress[3],ramWriteAddress[2]
                        ,ramWriteAddress[1],ramWriteAddress[0]})) ;
    fake_gnd ix11 (.Y (ramWrite)) ;
    nor02_2x ix203 (.Y (writeCompleteOne), .A0 (nx113), .A1 (NOT_MFC)) ;
    inv01 ix114 (.Y (nx113), .A (writeToRam)) ;
    inv16 ix116 (.Y (NOT_MFC), .A (MFC)) ;
    dff writeStepRegister_reg_Q_0 (.Q (toBeAdded_0), .QB (\$dummy [0]), .D (
        writeStep[0]), .CLK (nx244)) ;
    dff writeStepRegister_reg_Q_1 (.Q (toBeAdded_1), .QB (\$dummy [1]), .D (
        writeStep[1]), .CLK (nx244)) ;
    dff writeStepRegister_reg_Q_2 (.Q (toBeAdded_2), .QB (\$dummy [2]), .D (
        writeStep[2]), .CLK (nx244)) ;
    dff writeStepRegister_reg_Q_3 (.Q (toBeAdded_3), .QB (\$dummy [3]), .D (
        writeStep[3]), .CLK (nx244)) ;
    dff writeStepRegister_reg_Q_4 (.Q (toBeAdded_4), .QB (\$dummy [4]), .D (
        writeStep[4]), .CLK (nx244)) ;
    dff writeStepRegister_reg_Q_5 (.Q (toBeAdded_5), .QB (\$dummy [5]), .D (
        writeStep[5]), .CLK (nx244)) ;
    dff writeStepRegister_reg_Q_6 (.Q (toBeAdded_6), .QB (\$dummy [6]), .D (
        writeStep[6]), .CLK (nx246)) ;
    dff writeStepRegister_reg_Q_7 (.Q (toBeAdded_7), .QB (\$dummy [7]), .D (
        writeStep[7]), .CLK (nx246)) ;
    dff writeStepRegister_reg_Q_8 (.Q (toBeAdded_8), .QB (\$dummy [8]), .D (
        writeStep[8]), .CLK (nx246)) ;
    dff writeStepRegister_reg_Q_9 (.Q (toBeAdded_9), .QB (\$dummy [9]), .D (
        writeStep[9]), .CLK (nx246)) ;
    dff writeStepRegister_reg_Q_10 (.Q (toBeAdded_10), .QB (\$dummy [10]), .D (
        writeStep[10]), .CLK (nx246)) ;
    dff writeStepRegister_reg_Q_11 (.Q (toBeAdded_11), .QB (\$dummy [11]), .D (
        writeStep[11]), .CLK (nx246)) ;
    dff writeStepRegister_reg_Q_12 (.Q (toBeAdded_12), .QB (\$dummy [12]), .D (
        writeStep[12]), .CLK (nx246)) ;
    nor02_2x ix211 (.Y (nx210), .A0 (nx147), .A1 (nx226)) ;
    nand03 ix148 (.Y (nx147), .A0 (nx192), .A1 (nx220), .A2 (nx217)) ;
    nor02_2x ix193 (.Y (nx192), .A0 (clk), .A1 (currentCount_4)) ;
    dff writecounter_counterReg_reg_Q_4 (.Q (currentCount_4), .QB (\$dummy [13])
        , .D (nx99), .CLK (clk)) ;
    nand02 ix100 (.Y (nx99), .A0 (nx155), .A1 (nx159)) ;
    nand02 ix156 (.Y (nx155), .A0 (currentCount_4), .A1 (nx157)) ;
    nor02_2x ix158 (.Y (nx157), .A0 (MFC), .A1 (nx248)) ;
    nand02 ix160 (.Y (nx159), .A0 (nx180), .A1 (nx82)) ;
    oai21 ix181 (.Y (nx180), .A0 (nx248), .A1 (nx163), .B0 (nx223)) ;
    xnor2 ix164 (.Y (nx163), .A0 (currentCount_4), .A1 (nx50)) ;
    nor03_2x ix171 (.Y (nx50), .A0 (currentCount_3), .A1 (currentCount_2), .A2 (
             nx221)) ;
    dff writecounter_counterReg_reg_Q_3 (.Q (currentCount_3), .QB (nx220), .D (
        nx89), .CLK (clk)) ;
    nand02 ix90 (.Y (nx89), .A0 (nx168), .A1 (nx171)) ;
    nand02 ix170 (.Y (nx168), .A0 (currentCount_3), .A1 (nx157)) ;
    nand02 ix172 (.Y (nx171), .A0 (nx160), .A1 (nx82)) ;
    oai21 ix161 (.Y (nx160), .A0 (nx248), .A1 (nx175), .B0 (nx218)) ;
    dff writecounter_counterReg_reg_Q_2 (.Q (currentCount_2), .QB (nx217), .D (
        nx79), .CLK (clk)) ;
    nand02 ix80 (.Y (nx79), .A0 (nx183), .A1 (nx185)) ;
    nand02 ix184 (.Y (nx183), .A0 (currentCount_2), .A1 (nx157)) ;
    nand02 ix186 (.Y (nx185), .A0 (nx136), .A1 (nx82)) ;
    oai21 ix137 (.Y (nx136), .A0 (nx248), .A1 (nx188), .B0 (nx214)) ;
    dff writecounter_counterReg_reg_Q_1 (.Q (currentCount_1), .QB (nx213), .D (
        nx69), .CLK (clk)) ;
    oai21 ix70 (.Y (nx69), .A0 (nx196), .A1 (nx157), .B0 (nx211)) ;
    aoi21 ix197 (.Y (nx196), .A0 (counter[1]), .A1 (nx248), .B0 (nx106)) ;
    nor02_2x ix107 (.Y (nx106), .A0 (nx248), .A1 (nx199)) ;
    oai21 ix60 (.Y (nx59), .A0 (nx205), .A1 (nx157), .B0 (nx207)) ;
    mux21 ix206 (.Y (nx205), .A0 (nx201), .A1 (counter[0]), .S0 (nx248)) ;
    nand02 ix208 (.Y (nx207), .A0 (currentCount_0), .A1 (nx157)) ;
    dff writecounter_counterReg_reg_Q_0 (.Q (currentCount_0), .QB (nx201), .D (
        nx59), .CLK (clk)) ;
    nand02 ix212 (.Y (nx211), .A0 (currentCount_1), .A1 (nx157)) ;
    nand02 ix215 (.Y (nx214), .A0 (counter[2]), .A1 (nx250)) ;
    inv01 ix83 (.Y (nx82), .A (nx157)) ;
    nand02 ix219 (.Y (nx218), .A0 (counter[3]), .A1 (nx250)) ;
    nand02 ix222 (.Y (nx221), .A0 (nx213), .A1 (nx201)) ;
    nand02 ix224 (.Y (nx223), .A0 (counter[4]), .A1 (nx250)) ;
    nand04 ix227 (.Y (nx226), .A0 (writeToRam), .A1 (MFC), .A2 (nx213), .A3 (
           currentCount_0)) ;
    xnor2 ix176 (.Y (nx175), .A0 (nx220), .A1 (nx238)) ;
    nand03 ix147 (.Y (nx238), .A0 (nx217), .A1 (nx213), .A2 (nx201)) ;
    xnor2 ix190 (.Y (nx188), .A0 (nx217), .A1 (nx240)) ;
    nand02 ix123 (.Y (nx240), .A0 (nx213), .A1 (nx201)) ;
    xnor2 ix200 (.Y (nx199), .A0 (nx213), .A1 (currentCount_0)) ;
    latchs_ni lat_internalWriteComplete_u1 (.QB (nx5), .D (ramWrite), .CLK (
              NOT_MFC), .S (nx210)) ;
    inv02 lat_internalWriteComplete_u2 (.Y (writeComplete), .A (nx5)) ;
    buf02 lat_internalWriteComplete_u3 (.Y (nx1), .A (nx5)) ;
    inv01 ix241 (.Y (nx242), .A (initCounter)) ;
    inv02 ix243 (.Y (nx244), .A (nx242)) ;
    inv02 ix245 (.Y (nx246), .A (nx242)) ;
    inv02 ix247 (.Y (nx248), .A (nx242)) ;
    inv02 ix249 (.Y (nx250), .A (nx242)) ;
endmodule


module ReadLogic_12_40_true ( clk, resetState, switchRam, ramBasedAddress, 
                              internalBus, ramDataInBus, ramRead, ramAddress, 
                              MFC, inputSize, filterSize, isFilter, 
                              loadNextWordList, loadWord, readOne, readFinal, 
                              aluNumber ) ;

    input clk ;
    input resetState ;
    input switchRam ;
    input [11:0]ramBasedAddress ;
    output [39:0]internalBus ;
    input [39:0]ramDataInBus ;
    output ramRead ;
    output [11:0]ramAddress ;
    input MFC ;
    input [11:0]inputSize ;
    input [11:0]filterSize ;
    input isFilter ;
    input loadNextWordList ;
    input loadWord ;
    output readOne ;
    output readFinal ;
    output [2:0]aluNumber ;

    wire dmaReadBaseAddress_11, dmaReadBaseAddress_10, dmaReadBaseAddress_9, 
         dmaReadBaseAddress_8, dmaReadBaseAddress_7, dmaReadBaseAddress_6, 
         dmaReadBaseAddress_5, dmaReadBaseAddress_4, dmaReadBaseAddress_3, 
         dmaReadBaseAddress_2, dmaReadBaseAddress_1, dmaReadBaseAddress_0, 
         dmaInitRamBaseAddress, dma_tobeAdded_2, dma_tobeAdded_1, 
         dma_tobeAdded_0, addressRegOut_11, NOT_clk, currentState_0, nx147, nx14, 
         NOT_MFC, dma_currentCount_1, nx36, dma_currentCount_0, nx54, 
         dma_currentCount_2, nx94, nx118, nx152, nx156, nx166, nx174, nx178, 
         nx155, nx165, nx175, nx185, nx195, nx213, nx217, nx223, nx231, nx233, 
         nx237, nx241, nx243, nx245, nx248, nx252, nx254, nx256, nx258, nx261, 
         nx263, nx266, nx268, nx271, nx274, nx277, nx279, nx281, nx283, nx286, 
         nx289, nx291, nx294, nx297, nx300, nx303, nx306, nx309, nx312, nx315, 
         nx318, nx321, nx324, nx328, nx331, nx333, nx335, nx338, nx340, nx343, 
         nx393, nx395, nx397, nx399, nx401, nx403, nx405, nx407, nx413, nx5;
    wire [4:0] \$dummy ;




    MultiStepCounter_12 dma_addressRegister (.load ({dmaReadBaseAddress_11,
                        dmaReadBaseAddress_10,dmaReadBaseAddress_9,
                        dmaReadBaseAddress_8,dmaReadBaseAddress_7,
                        dmaReadBaseAddress_6,dmaReadBaseAddress_5,
                        dmaReadBaseAddress_4,dmaReadBaseAddress_3,
                        dmaReadBaseAddress_2,dmaReadBaseAddress_1,
                        dmaReadBaseAddress_0}), .toBeAdded ({addressRegOut_11,
                        addressRegOut_11,addressRegOut_11,addressRegOut_11,
                        addressRegOut_11,addressRegOut_11,addressRegOut_11,
                        addressRegOut_11,addressRegOut_11,dma_tobeAdded_2,
                        dma_tobeAdded_1,dma_tobeAdded_0}), .reset (
                        addressRegOut_11), .clk (clk), .isLoad (
                        dmaInitRamBaseAddress), .MFC (MFC), .count ({
                        ramAddress[11],ramAddress[10],ramAddress[9],
                        ramAddress[8],ramAddress[7],ramAddress[6],ramAddress[5],
                        ramAddress[4],ramAddress[3],ramAddress[2],ramAddress[1],
                        ramAddress[0]})) ;
    fake_gnd ix114 (.Y (addressRegOut_11)) ;
    dff dma_readStepRegister_reg_Q_0 (.Q (dma_tobeAdded_0), .QB (\$dummy [0]), .D (
        inputSize[0]), .CLK (clk)) ;
    dff dma_readStepRegister_reg_Q_1 (.Q (dma_tobeAdded_1), .QB (\$dummy [1]), .D (
        inputSize[1]), .CLK (clk)) ;
    dff dma_readStepRegister_reg_Q_2 (.Q (dma_tobeAdded_2), .QB (\$dummy [2]), .D (
        inputSize[2]), .CLK (clk)) ;
    nor02_2x ix25 (.Y (dmaInitRamBaseAddress), .A0 (nx213), .A1 (ramRead)) ;
    nand03 ix156 (.Y (nx155), .A0 (nx217), .A1 (nx283), .A2 (nx243)) ;
    nand04 ix218 (.Y (nx217), .A0 (currentState_0), .A1 (nx223), .A2 (ramRead), 
           .A3 (nx243)) ;
    dff reg_currentState_0 (.Q (currentState_0), .QB (nx213), .D (nx155), .CLK (
        NOT_clk)) ;
    inv01 ix222 (.Y (NOT_clk), .A (clk)) ;
    inv16 ix226 (.Y (NOT_MFC), .A (MFC)) ;
    nor03_2x ix119 (.Y (nx118), .A0 (dma_currentCount_1), .A1 (nx266), .A2 (
             nx281)) ;
    dff dma_counter_counterReg_reg_Q_1 (.Q (dma_currentCount_1), .QB (
        \$dummy [3]), .D (nx175), .CLK (clk)) ;
    oai21 ix176 (.Y (nx175), .A0 (nx231), .A1 (nx254), .B0 (nx263)) ;
    aoi322 ix232 (.Y (nx231), .A0 (filterSize[1]), .A1 (loadNextWordList), .A2 (
           nx233), .B0 (dma_currentCount_1), .B1 (nx245), .C0 (nx54), .C1 (nx261
           )) ;
    nor02_2x ix234 (.Y (nx233), .A0 (ramRead), .A1 (currentState_0)) ;
    oai33 ix196 (.Y (nx195), .A0 (nx237), .A1 (readFinal), .A2 (nx147), .B0 (
          switchRam), .B1 (currentState_0), .B2 (nx241)) ;
    dff reg_currentState_1 (.Q (ramRead), .QB (nx237), .D (nx195), .CLK (NOT_clk
        )) ;
    oai21 ix21 (.Y (nx147), .A0 (currentState_0), .A1 (nx241), .B0 (nx243)) ;
    nor03_2x ix242 (.Y (nx241), .A0 (loadNextWordList), .A1 (loadWord), .A2 (
             ramRead)) ;
    inv01 ix244 (.Y (nx243), .A (switchRam)) ;
    nor03_2x ix37 (.Y (nx36), .A0 (ramRead), .A1 (currentState_0), .A2 (nx248)
             ) ;
    nor02_2x ix249 (.Y (nx248), .A0 (loadNextWordList), .A1 (loadWord)) ;
    nand02 ix166 (.Y (nx165), .A0 (nx252), .A1 (nx256)) ;
    nand02 ix253 (.Y (nx252), .A0 (dma_currentCount_0), .A1 (nx254)) ;
    aoi21 ix257 (.Y (nx256), .A0 (nx258), .A1 (MFC), .B0 (nx36)) ;
    dff dma_counter_counterReg_reg_Q_0 (.Q (dma_currentCount_0), .QB (nx258), .D (
        nx165), .CLK (clk)) ;
    nor02_2x ix55 (.Y (nx54), .A0 (dma_currentCount_1), .A1 (dma_currentCount_0)
             ) ;
    inv01 ix262 (.Y (nx261), .A (nx36)) ;
    nand02 ix264 (.Y (nx263), .A0 (dma_currentCount_1), .A1 (nx254)) ;
    nand02 ix267 (.Y (nx266), .A0 (NOT_clk), .A1 (nx268)) ;
    oai21 ix186 (.Y (nx185), .A0 (nx271), .A1 (nx254), .B0 (nx279)) ;
    nor02ii ix272 (.Y (nx271), .A0 (nx94), .A1 (nx277)) ;
    nor02_2x ix95 (.Y (nx94), .A0 (nx274), .A1 (nx36)) ;
    dff dma_counter_counterReg_reg_Q_2 (.Q (dma_currentCount_2), .QB (nx268), .D (
        nx185), .CLK (clk)) ;
    nand04 ix278 (.Y (nx277), .A0 (filterSize[2]), .A1 (loadNextWordList), .A2 (
           nx237), .A3 (nx213)) ;
    nand02 ix280 (.Y (nx279), .A0 (dma_currentCount_2), .A1 (nx254)) ;
    nand03 ix282 (.Y (nx281), .A0 (dma_currentCount_0), .A1 (MFC), .A2 (ramRead)
           ) ;
    nand02 ix284 (.Y (nx283), .A0 (nx213), .A1 (nx14)) ;
    nand02 ix15 (.Y (nx14), .A0 (nx286), .A1 (nx237)) ;
    nor02_2x ix287 (.Y (nx286), .A0 (loadNextWordList), .A1 (loadWord)) ;
    nor02_2x ix205 (.Y (dmaReadBaseAddress_0), .A0 (nx289), .A1 (nx405)) ;
    inv01 ix290 (.Y (nx289), .A (ramBasedAddress[0])) ;
    nand02 ix292 (.Y (nx291), .A0 (currentState_0), .A1 (nx237)) ;
    nor02_2x ix207 (.Y (dmaReadBaseAddress_1), .A0 (nx294), .A1 (nx405)) ;
    inv01 ix295 (.Y (nx294), .A (ramBasedAddress[1])) ;
    nor02_2x ix209 (.Y (dmaReadBaseAddress_2), .A0 (nx297), .A1 (nx405)) ;
    inv01 ix298 (.Y (nx297), .A (ramBasedAddress[2])) ;
    nor02_2x ix211 (.Y (dmaReadBaseAddress_3), .A0 (nx300), .A1 (nx405)) ;
    inv01 ix301 (.Y (nx300), .A (ramBasedAddress[3])) ;
    nor02_2x ix213 (.Y (dmaReadBaseAddress_4), .A0 (nx303), .A1 (nx405)) ;
    inv01 ix304 (.Y (nx303), .A (ramBasedAddress[4])) ;
    nor02_2x ix215 (.Y (dmaReadBaseAddress_5), .A0 (nx306), .A1 (nx405)) ;
    inv01 ix307 (.Y (nx306), .A (ramBasedAddress[5])) ;
    nor02_2x ix217 (.Y (dmaReadBaseAddress_6), .A0 (nx309), .A1 (nx405)) ;
    inv01 ix310 (.Y (nx309), .A (ramBasedAddress[6])) ;
    nor02_2x ix219 (.Y (dmaReadBaseAddress_7), .A0 (nx312), .A1 (nx407)) ;
    inv01 ix313 (.Y (nx312), .A (ramBasedAddress[7])) ;
    nor02_2x ix221 (.Y (dmaReadBaseAddress_8), .A0 (nx315), .A1 (nx407)) ;
    inv01 ix316 (.Y (nx315), .A (ramBasedAddress[8])) ;
    nor02_2x ix223 (.Y (dmaReadBaseAddress_9), .A0 (nx318), .A1 (nx407)) ;
    inv01 ix319 (.Y (nx318), .A (ramBasedAddress[9])) ;
    nor02_2x ix225 (.Y (dmaReadBaseAddress_10), .A0 (nx321), .A1 (nx407)) ;
    inv01 ix322 (.Y (nx321), .A (ramBasedAddress[10])) ;
    nor02_2x ix227 (.Y (dmaReadBaseAddress_11), .A0 (nx324), .A1 (nx407)) ;
    inv01 ix325 (.Y (nx324), .A (ramBasedAddress[11])) ;
    dff aluNumberCounter_counterReg_reg_Q_0 (.Q (aluNumber[0]), .QB (nx335), .D (
        nx156), .CLK (nx152)) ;
    nand02 ix157 (.Y (nx156), .A0 (aluNumber[0]), .A1 (nx328)) ;
    oai21 ix329 (.Y (nx328), .A0 (loadNextWordList), .A1 (currentState_0), .B0 (
          nx237)) ;
    oai22 ix153 (.Y (nx152), .A0 (nx331), .A1 (nx333), .B0 (NOT_clk), .B1 (nx328
          )) ;
    nand02 ix332 (.Y (nx331), .A0 (loadNextWordList), .A1 (NOT_clk)) ;
    nand02 ix334 (.Y (nx333), .A0 (ramRead), .A1 (MFC)) ;
    dff aluNumberCounter_counterReg_reg_Q_1 (.Q (aluNumber[1]), .QB (nx340), .D (
        nx166), .CLK (nx152)) ;
    nand02 ix167 (.Y (nx166), .A0 (nx338), .A1 (nx328)) ;
    dff aluNumberCounter_counterReg_reg_Q_2 (.Q (aluNumber[2]), .QB (\$dummy [4]
        ), .D (nx178), .CLK (nx152)) ;
    nand02 ix179 (.Y (nx178), .A0 (nx343), .A1 (nx328)) ;
    xnor2 ix344 (.Y (nx343), .A0 (aluNumber[2]), .A1 (nx174)) ;
    nor02_2x ix175 (.Y (nx174), .A0 (nx335), .A1 (nx340)) ;
    nor02_2x ix115 (.Y (readOne), .A0 (NOT_MFC), .A1 (nx237)) ;
    trib04 dma_tristateLabel_tri_output_0 (.Y (internalBus[0]), .A (
           ramDataInBus[0]), .E (nx393)) ;
    trib04 dma_tristateLabel_tri_output_1 (.Y (internalBus[1]), .A (
           ramDataInBus[1]), .E (nx393)) ;
    trib04 dma_tristateLabel_tri_output_2 (.Y (internalBus[2]), .A (
           ramDataInBus[2]), .E (nx393)) ;
    trib04 dma_tristateLabel_tri_output_3 (.Y (internalBus[3]), .A (
           ramDataInBus[3]), .E (nx393)) ;
    trib04 dma_tristateLabel_tri_output_4 (.Y (internalBus[4]), .A (
           ramDataInBus[4]), .E (nx393)) ;
    trib04 dma_tristateLabel_tri_output_5 (.Y (internalBus[5]), .A (
           ramDataInBus[5]), .E (nx393)) ;
    trib04 dma_tristateLabel_tri_output_6 (.Y (internalBus[6]), .A (
           ramDataInBus[6]), .E (nx393)) ;
    trib04 dma_tristateLabel_tri_output_7 (.Y (internalBus[7]), .A (
           ramDataInBus[7]), .E (nx395)) ;
    trib04 dma_tristateLabel_tri_output_8 (.Y (internalBus[8]), .A (
           ramDataInBus[8]), .E (nx395)) ;
    trib04 dma_tristateLabel_tri_output_9 (.Y (internalBus[9]), .A (
           ramDataInBus[9]), .E (nx395)) ;
    trib04 dma_tristateLabel_tri_output_10 (.Y (internalBus[10]), .A (
           ramDataInBus[10]), .E (nx395)) ;
    trib04 dma_tristateLabel_tri_output_11 (.Y (internalBus[11]), .A (
           ramDataInBus[11]), .E (nx395)) ;
    trib04 dma_tristateLabel_tri_output_12 (.Y (internalBus[12]), .A (
           ramDataInBus[12]), .E (nx395)) ;
    trib04 dma_tristateLabel_tri_output_13 (.Y (internalBus[13]), .A (
           ramDataInBus[13]), .E (nx395)) ;
    trib04 dma_tristateLabel_tri_output_14 (.Y (internalBus[14]), .A (
           ramDataInBus[14]), .E (nx397)) ;
    trib04 dma_tristateLabel_tri_output_15 (.Y (internalBus[15]), .A (
           ramDataInBus[15]), .E (nx397)) ;
    trib04 dma_tristateLabel_tri_output_16 (.Y (internalBus[16]), .A (
           ramDataInBus[16]), .E (nx397)) ;
    trib04 dma_tristateLabel_tri_output_17 (.Y (internalBus[17]), .A (
           ramDataInBus[17]), .E (nx397)) ;
    trib04 dma_tristateLabel_tri_output_18 (.Y (internalBus[18]), .A (
           ramDataInBus[18]), .E (nx397)) ;
    trib04 dma_tristateLabel_tri_output_19 (.Y (internalBus[19]), .A (
           ramDataInBus[19]), .E (nx397)) ;
    trib04 dma_tristateLabel_tri_output_20 (.Y (internalBus[20]), .A (
           ramDataInBus[20]), .E (nx397)) ;
    trib04 dma_tristateLabel_tri_output_21 (.Y (internalBus[21]), .A (
           ramDataInBus[21]), .E (nx399)) ;
    trib04 dma_tristateLabel_tri_output_22 (.Y (internalBus[22]), .A (
           ramDataInBus[22]), .E (nx399)) ;
    trib04 dma_tristateLabel_tri_output_23 (.Y (internalBus[23]), .A (
           ramDataInBus[23]), .E (nx399)) ;
    trib04 dma_tristateLabel_tri_output_24 (.Y (internalBus[24]), .A (
           ramDataInBus[24]), .E (nx399)) ;
    trib04 dma_tristateLabel_tri_output_25 (.Y (internalBus[25]), .A (
           ramDataInBus[25]), .E (nx399)) ;
    trib04 dma_tristateLabel_tri_output_26 (.Y (internalBus[26]), .A (
           ramDataInBus[26]), .E (nx399)) ;
    trib04 dma_tristateLabel_tri_output_27 (.Y (internalBus[27]), .A (
           ramDataInBus[27]), .E (nx399)) ;
    trib04 dma_tristateLabel_tri_output_28 (.Y (internalBus[28]), .A (
           ramDataInBus[28]), .E (nx401)) ;
    trib04 dma_tristateLabel_tri_output_29 (.Y (internalBus[29]), .A (
           ramDataInBus[29]), .E (nx401)) ;
    trib04 dma_tristateLabel_tri_output_30 (.Y (internalBus[30]), .A (
           ramDataInBus[30]), .E (nx401)) ;
    trib04 dma_tristateLabel_tri_output_31 (.Y (internalBus[31]), .A (
           ramDataInBus[31]), .E (nx401)) ;
    trib04 dma_tristateLabel_tri_output_32 (.Y (internalBus[32]), .A (
           ramDataInBus[32]), .E (nx401)) ;
    trib04 dma_tristateLabel_tri_output_33 (.Y (internalBus[33]), .A (
           ramDataInBus[33]), .E (nx401)) ;
    trib04 dma_tristateLabel_tri_output_34 (.Y (internalBus[34]), .A (
           ramDataInBus[34]), .E (nx401)) ;
    trib04 dma_tristateLabel_tri_output_35 (.Y (internalBus[35]), .A (
           ramDataInBus[35]), .E (nx403)) ;
    trib04 dma_tristateLabel_tri_output_36 (.Y (internalBus[36]), .A (
           ramDataInBus[36]), .E (nx403)) ;
    trib04 dma_tristateLabel_tri_output_37 (.Y (internalBus[37]), .A (
           ramDataInBus[37]), .E (nx403)) ;
    trib04 dma_tristateLabel_tri_output_38 (.Y (internalBus[38]), .A (
           ramDataInBus[38]), .E (nx403)) ;
    trib04 dma_tristateLabel_tri_output_39 (.Y (internalBus[39]), .A (
           ramDataInBus[39]), .E (nx403)) ;
    buf02 ix392 (.Y (nx393), .A (readOne)) ;
    buf02 ix394 (.Y (nx395), .A (readOne)) ;
    buf02 ix396 (.Y (nx397), .A (readOne)) ;
    buf02 ix398 (.Y (nx399), .A (readOne)) ;
    buf02 ix400 (.Y (nx401), .A (readOne)) ;
    buf02 ix402 (.Y (nx403), .A (readOne)) ;
    buf02 ix404 (.Y (nx405), .A (nx291)) ;
    buf02 ix406 (.Y (nx407), .A (nx291)) ;
    nor02_2x ix246 (.Y (nx245), .A0 (nx36), .A1 (nx258)) ;
    nor02_2x ix255 (.Y (nx254), .A0 (nx36), .A1 (MFC)) ;
    xnor2 ix275 (.Y (nx274), .A0 (nx268), .A1 (nx413)) ;
    inv01 ix412 (.Y (nx413), .A (nx54)) ;
    xnor2 ix339 (.Y (nx338), .A0 (nx340), .A1 (nx335)) ;
    latchs_ni dma_lat_internalFinishedReading_u1 (.QB (nx5), .D (
              addressRegOut_11), .CLK (NOT_MFC), .S (nx118)) ;
    inv02 dma_lat_internalFinishedReading_u2 (.Y (readFinal), .A (nx5)) ;
    buf02 dma_lat_internalFinishedReading_u3 (.Y (nx223), .A (nx5)) ;
endmodule


module MultiStepCounter_12 ( load, toBeAdded, reset, clk, isLoad, MFC, count ) ;

    input [11:0]load ;
    input [11:0]toBeAdded ;
    input reset ;
    input clk ;
    input isLoad ;
    input MFC ;
    output [11:0]count ;

    wire nx6, nx14, nx20, nx42, nx50, nx54, nx56, nx62, nx64, nx68, nx80, nx86, 
         nx88, nx92, nx100, nx106, nx108, nx112, nx126, nx128, nx132, nx142, 
         nx152, nx160, nx166, nx168, nx172, nx180, nx186, nx188, nx192, nx206, 
         nx208, nx212, nx222, nx232, nx240, nx246, nx248, nx252, nx46, nx48, 
         nx51, nx53, nx55, nx57, nx63, nx65, nx67, nx69, nx71, nx75, nx79, nx83, 
         nx85, nx89, nx96, nx99, nx103, nx105, nx107, nx111, nx117, nx121, nx123, 
         nx127, nx135, nx141, nx145, nx153, nx156, nx159, nx165, nx169, nx173, 
         nx178, nx181, nx183, nx187, nx195, nx198, nx201, nx209, nx213, nx218, 
         nx221, nx225, nx235, nx237, nx244, nx247, nx249, nx251, nx253, nx255, 
         nx257, nx259, nx261, nx263, nx265, nx267;
    wire [1:0] \$dummy ;




    oai222 ix21 (.Y (nx20), .A0 (nx46), .A1 (nx48), .B0 (nx235), .B1 (nx53), .C0 (
           nx55), .C1 (nx237)) ;
    dff counterReg_reg_Q_0 (.Q (count[0]), .QB (nx46), .D (nx20), .CLK (clk)) ;
    inv01 ix49 (.Y (nx48), .A (nx14)) ;
    nor02_2x ix15 (.Y (nx14), .A0 (MFC), .A1 (nx265)) ;
    inv01 ix52 (.Y (nx51), .A (MFC)) ;
    inv01 ix56 (.Y (nx55), .A (load[0])) ;
    nand02 ix58 (.Y (nx57), .A0 (nx235), .A1 (nx265)) ;
    oai222 ix43 (.Y (nx42), .A0 (nx235), .A1 (nx63), .B0 (nx69), .B1 (nx48), .C0 (
           nx71), .C1 (nx237)) ;
    xnor2 ix64 (.Y (nx63), .A0 (nx65), .A1 (nx67)) ;
    nand02 ix66 (.Y (nx65), .A0 (toBeAdded[0]), .A1 (count[0])) ;
    dff counterReg_reg_Q_1 (.Q (count[1]), .QB (nx69), .D (nx42), .CLK (clk)) ;
    inv01 ix72 (.Y (nx71), .A (load[1])) ;
    oai21 ix69 (.Y (nx68), .A0 (nx235), .A1 (nx75), .B0 (nx85)) ;
    xnor2 ix76 (.Y (nx75), .A0 (nx54), .A1 (nx56)) ;
    oai22 ix55 (.Y (nx54), .A0 (nx65), .A1 (nx67), .B0 (nx79), .B1 (nx69)) ;
    inv01 ix80 (.Y (nx79), .A (toBeAdded[1])) ;
    inv01 ix84 (.Y (nx83), .A (toBeAdded[2])) ;
    nor02_2x ix86 (.Y (nx85), .A0 (nx64), .A1 (nx62)) ;
    nor03_2x ix65 (.Y (nx64), .A0 (nx89), .A1 (MFC), .A2 (nx265)) ;
    dff counterReg_reg_Q_2 (.Q (count[2]), .QB (nx89), .D (nx68), .CLK (clk)) ;
    nor02ii ix63 (.Y (nx62), .A0 (nx237), .A1 (load[2])) ;
    oai21 ix93 (.Y (nx92), .A0 (nx235), .A1 (nx96), .B0 (nx107)) ;
    oai21 ix81 (.Y (nx80), .A0 (nx99), .A1 (nx103), .B0 (nx105)) ;
    aoi21 ix100 (.Y (nx99), .A0 (toBeAdded[1]), .A1 (count[1]), .B0 (nx50)) ;
    nor02_2x ix51 (.Y (nx50), .A0 (nx65), .A1 (nx67)) ;
    nand02 ix106 (.Y (nx105), .A0 (toBeAdded[2]), .A1 (count[2])) ;
    nor02_2x ix108 (.Y (nx107), .A0 (nx88), .A1 (nx86)) ;
    nor03_2x ix89 (.Y (nx88), .A0 (nx111), .A1 (MFC), .A2 (nx265)) ;
    dff counterReg_reg_Q_3 (.Q (count[3]), .QB (nx111), .D (nx92), .CLK (clk)) ;
    nor02ii ix87 (.Y (nx86), .A0 (nx237), .A1 (load[3])) ;
    oai21 ix113 (.Y (nx112), .A0 (nx51), .A1 (nx117), .B0 (nx123)) ;
    aoi22 ix122 (.Y (nx121), .A0 (toBeAdded[2]), .A1 (count[2]), .B0 (nx54), .B1 (
          nx56)) ;
    nor02_2x ix124 (.Y (nx123), .A0 (nx108), .A1 (nx106)) ;
    nor03_2x ix109 (.Y (nx108), .A0 (nx127), .A1 (MFC), .A2 (nx265)) ;
    dff counterReg_reg_Q_4 (.Q (count[4]), .QB (nx127), .D (nx112), .CLK (clk)
        ) ;
    nor02ii ix107 (.Y (nx106), .A0 (nx237), .A1 (load[4])) ;
    oai21 ix133 (.Y (nx132), .A0 (nx51), .A1 (nx135), .B0 (nx141)) ;
    nor02_2x ix142 (.Y (nx141), .A0 (nx128), .A1 (nx126)) ;
    nor03_2x ix129 (.Y (nx128), .A0 (nx145), .A1 (MFC), .A2 (nx265)) ;
    dff counterReg_reg_Q_5 (.Q (count[5]), .QB (nx145), .D (nx132), .CLK (clk)
        ) ;
    nor02ii ix127 (.Y (nx126), .A0 (nx237), .A1 (load[5])) ;
    dff counterReg_reg_Q_6 (.Q (count[6]), .QB (\$dummy [0]), .D (nx152), .CLK (
        clk)) ;
    inv01 ix153 (.Y (nx152), .A (nx153)) ;
    aoi222 ix154 (.Y (nx153), .A0 (count[6]), .A1 (nx14), .B0 (load[6]), .B1 (
           nx6), .C0 (MFC), .C1 (nx142)) ;
    nor02_2x ix7 (.Y (nx6), .A0 (MFC), .A1 (nx156)) ;
    inv01 ix157 (.Y (nx156), .A (isLoad)) ;
    xnor2 ix143 (.Y (nx142), .A0 (count[6]), .A1 (nx159)) ;
    nand03 ix160 (.Y (nx159), .A0 (nx100), .A1 (count[4]), .A2 (count[5])) ;
    oai21 ix173 (.Y (nx172), .A0 (nx51), .A1 (nx165), .B0 (nx169)) ;
    nor02ii ix161 (.Y (nx160), .A0 (nx159), .A1 (count[6])) ;
    nor02_2x ix170 (.Y (nx169), .A0 (nx168), .A1 (nx166)) ;
    nor03_2x ix169 (.Y (nx168), .A0 (nx173), .A1 (MFC), .A2 (nx265)) ;
    dff counterReg_reg_Q_7 (.Q (count[7]), .QB (nx173), .D (nx172), .CLK (clk)
        ) ;
    nor02ii ix167 (.Y (nx166), .A0 (nx237), .A1 (load[7])) ;
    oai21 ix193 (.Y (nx192), .A0 (nx51), .A1 (nx178), .B0 (nx183)) ;
    nand04 ix182 (.Y (nx181), .A0 (nx100), .A1 (count[4]), .A2 (count[5]), .A3 (
           count[6])) ;
    nor02_2x ix184 (.Y (nx183), .A0 (nx188), .A1 (nx186)) ;
    nor03_2x ix189 (.Y (nx188), .A0 (nx187), .A1 (MFC), .A2 (nx267)) ;
    dff counterReg_reg_Q_8 (.Q (count[8]), .QB (nx187), .D (nx192), .CLK (clk)
        ) ;
    nor02ii ix187 (.Y (nx186), .A0 (nx57), .A1 (load[8])) ;
    oai21 ix213 (.Y (nx212), .A0 (nx51), .A1 (nx195), .B0 (nx198)) ;
    nor02_2x ix199 (.Y (nx198), .A0 (nx208), .A1 (nx206)) ;
    nor03_2x ix209 (.Y (nx208), .A0 (nx201), .A1 (MFC), .A2 (nx267)) ;
    dff counterReg_reg_Q_9 (.Q (count[9]), .QB (nx201), .D (nx212), .CLK (clk)
        ) ;
    nor02ii ix207 (.Y (nx206), .A0 (nx57), .A1 (load[9])) ;
    dff counterReg_reg_Q_10 (.Q (count[10]), .QB (\$dummy [1]), .D (nx232), .CLK (
        clk)) ;
    inv01 ix233 (.Y (nx232), .A (nx209)) ;
    aoi222 ix210 (.Y (nx209), .A0 (count[10]), .A1 (nx14), .B0 (load[10]), .B1 (
           nx6), .C0 (MFC), .C1 (nx222)) ;
    xnor2 ix223 (.Y (nx222), .A0 (count[10]), .A1 (nx213)) ;
    nand03 ix214 (.Y (nx213), .A0 (nx180), .A1 (count[8]), .A2 (count[9])) ;
    oai21 ix253 (.Y (nx252), .A0 (nx51), .A1 (nx218), .B0 (nx221)) ;
    nor02ii ix241 (.Y (nx240), .A0 (nx213), .A1 (count[10])) ;
    nor02_2x ix222 (.Y (nx221), .A0 (nx248), .A1 (nx246)) ;
    nor03_2x ix249 (.Y (nx248), .A0 (nx225), .A1 (MFC), .A2 (nx267)) ;
    dff counterReg_reg_Q_11 (.Q (count[11]), .QB (nx225), .D (nx252), .CLK (clk)
        ) ;
    nor02ii ix247 (.Y (nx246), .A0 (nx57), .A1 (load[11])) ;
    inv01 ix234 (.Y (nx235), .A (MFC)) ;
    nand02 ix236 (.Y (nx237), .A0 (nx235), .A1 (nx267)) ;
    xnor2 ix54 (.Y (nx53), .A0 (nx46), .A1 (nx244)) ;
    inv01 ix243 (.Y (nx244), .A (toBeAdded[0])) ;
    xnor2 ix68 (.Y (nx67), .A0 (nx69), .A1 (nx79)) ;
    xnor2 ix57 (.Y (nx56), .A0 (nx89), .A1 (toBeAdded[2])) ;
    xnor2 ix97 (.Y (nx96), .A0 (nx111), .A1 (nx247)) ;
    inv01 ix245 (.Y (nx247), .A (nx80)) ;
    xnor2 ix104 (.Y (nx103), .A0 (nx89), .A1 (nx83)) ;
    xnor2 ix118 (.Y (nx117), .A0 (nx127), .A1 (nx249)) ;
    inv01 ix248 (.Y (nx249), .A (nx100)) ;
    nor02_2x ix101 (.Y (nx100), .A0 (nx121), .A1 (nx111)) ;
    xnor2 ix136 (.Y (nx135), .A0 (nx145), .A1 (nx251)) ;
    nand02 ix121 (.Y (nx251), .A0 (nx253), .A1 (count[4])) ;
    nor02_2x ix139 (.Y (nx253), .A0 (nx247), .A1 (nx111)) ;
    xnor2 ix166 (.Y (nx165), .A0 (nx173), .A1 (nx255)) ;
    inv01 ix254 (.Y (nx255), .A (nx160)) ;
    xnor2 ix179 (.Y (nx178), .A0 (nx187), .A1 (nx257)) ;
    inv01 ix256 (.Y (nx257), .A (nx180)) ;
    nor02_2x ix181 (.Y (nx180), .A0 (nx181), .A1 (nx173)) ;
    xnor2 ix196 (.Y (nx195), .A0 (nx201), .A1 (nx259)) ;
    nand03 ix201 (.Y (nx259), .A0 (nx261), .A1 (count[7]), .A2 (count[8])) ;
    inv01 ix260 (.Y (nx261), .A (nx181)) ;
    xnor2 ix219 (.Y (nx218), .A0 (nx225), .A1 (nx263)) ;
    inv01 ix262 (.Y (nx263), .A (nx240)) ;
    inv02 ix264 (.Y (nx265), .A (nx156)) ;
    inv02 ix266 (.Y (nx267), .A (nx156)) ;
endmodule


module ReadLogic_13_80_false ( clk, resetState, switchRam, ramBasedAddress, 
                               internalBus, ramDataInBus, ramRead, ramAddress, 
                               MFC, inputSize, filterSize, isFilter, 
                               loadNextWordList, loadWord, readOne, readFinal, 
                               aluNumber ) ;

    input clk ;
    input resetState ;
    input switchRam ;
    input [12:0]ramBasedAddress ;
    output [79:0]internalBus ;
    input [79:0]ramDataInBus ;
    output ramRead ;
    output [12:0]ramAddress ;
    input MFC ;
    input [12:0]inputSize ;
    input [12:0]filterSize ;
    input isFilter ;
    input loadNextWordList ;
    input loadWord ;
    output readOne ;
    output readFinal ;
    output [2:0]aluNumber ;

    wire addressRegOut_12, addressRegOut_11, addressRegOut_10, addressRegOut_9, 
         addressRegOut_8, addressRegOut_7, addressRegOut_6, addressRegOut_5, 
         addressRegOut_4, addressRegOut_3, addressRegOut_2, addressRegOut_1, 
         addressRegOut_0, resetUnitNumberReg, baseAddressCounterClk, 
         resetAddressReg, addressRegIn_12, addressRegIn_11, addressRegIn_10, 
         addressRegIn_9, addressRegIn_8, addressRegIn_7, addressRegIn_6, 
         addressRegIn_5, addressRegIn_4, addressRegIn_3, addressRegIn_2, 
         addressRegIn_1, addressRegIn_0, dma_tobeAdded_12, dma_tobeAdded_11, 
         dma_tobeAdded_10, dma_tobeAdded_9, dma_tobeAdded_8, dma_tobeAdded_7, 
         dma_tobeAdded_6, dma_tobeAdded_5, dma_tobeAdded_4, dma_tobeAdded_3, 
         dma_tobeAdded_2, dma_tobeAdded_1, dma_tobeAdded_0, 
         dmaInitRamBaseAddress, NOT_clk, nx14, NOT_MFC, dma_currentCount_1, nx50, 
         dma_currentCount_0, nx68, dma_currentCount_2, nx108, nx132, nx164, 
         nx168, nx178, nx186, nx190, nx265, nx267, nx277, nx287, nx297, nx307, 
         nx344, nx346, nx350, nx353, nx355, nx362, nx366, nx368, nx370, nx372, 
         nx379, nx381, nx383, nx386, nx390, nx392, nx394, nx396, nx399, nx401, 
         nx404, nx406, nx409, nx412, nx415, nx417, nx419, nx421, nx424, nx427, 
         nx430, nx433, nx436, nx439, nx442, nx445, nx448, nx451, nx454, nx457, 
         nx461, nx463, nx466, nx471, nx473, nx475, nx478, nx480, nx483, nx573, 
         nx575, nx577, nx579, nx581, nx583, nx585, nx587, nx589, nx591, nx593, 
         nx595, nx597, nx599, nx601, nx603, nx605, nx607, nx613, nx615, nx617, 
         nx623, nx5;
    wire [16:0] \$dummy ;




    Counter2_13 Normal_g_baseAddressCounter (.load ({addressRegIn_12,
                addressRegIn_11,addressRegIn_10,addressRegIn_9,addressRegIn_8,
                addressRegIn_7,addressRegIn_6,addressRegIn_5,addressRegIn_4,
                addressRegIn_3,addressRegIn_2,addressRegIn_1,addressRegIn_0}), .reset (
                dmaInitRamBaseAddress), .clk (baseAddressCounterClk), .isLoad (
                resetAddressReg), .count ({addressRegOut_12,addressRegOut_11,
                addressRegOut_10,addressRegOut_9,addressRegOut_8,addressRegOut_7
                ,addressRegOut_6,addressRegOut_5,addressRegOut_4,addressRegOut_3
                ,addressRegOut_2,addressRegOut_1,addressRegOut_0})) ;
    MultiStepCounter_13 dma_addressRegister (.load ({addressRegOut_12,
                        addressRegOut_11,addressRegOut_10,addressRegOut_9,
                        addressRegOut_8,addressRegOut_7,addressRegOut_6,
                        addressRegOut_5,addressRegOut_4,addressRegOut_3,
                        addressRegOut_2,addressRegOut_1,addressRegOut_0}), .toBeAdded (
                        {dma_tobeAdded_12,dma_tobeAdded_11,dma_tobeAdded_10,
                        dma_tobeAdded_9,dma_tobeAdded_8,dma_tobeAdded_7,
                        dma_tobeAdded_6,dma_tobeAdded_5,dma_tobeAdded_4,
                        dma_tobeAdded_3,dma_tobeAdded_2,dma_tobeAdded_1,
                        dma_tobeAdded_0}), .reset (dmaInitRamBaseAddress), .clk (
                        clk), .isLoad (resetUnitNumberReg), .MFC (MFC), .count (
                        {ramAddress[12],ramAddress[11],ramAddress[10],
                        ramAddress[9],ramAddress[8],ramAddress[7],ramAddress[6],
                        ramAddress[5],ramAddress[4],ramAddress[3],ramAddress[2],
                        ramAddress[1],ramAddress[0]})) ;
    fake_gnd ix208 (.Y (dmaInitRamBaseAddress)) ;
    dff dma_readStepRegister_reg_Q_0 (.Q (dma_tobeAdded_0), .QB (\$dummy [0]), .D (
        inputSize[0]), .CLK (clk)) ;
    dff dma_readStepRegister_reg_Q_1 (.Q (dma_tobeAdded_1), .QB (\$dummy [1]), .D (
        inputSize[1]), .CLK (clk)) ;
    dff dma_readStepRegister_reg_Q_2 (.Q (dma_tobeAdded_2), .QB (\$dummy [2]), .D (
        inputSize[2]), .CLK (clk)) ;
    dff dma_readStepRegister_reg_Q_3 (.Q (dma_tobeAdded_3), .QB (\$dummy [3]), .D (
        inputSize[3]), .CLK (clk)) ;
    dff dma_readStepRegister_reg_Q_4 (.Q (dma_tobeAdded_4), .QB (\$dummy [4]), .D (
        inputSize[4]), .CLK (clk)) ;
    dff dma_readStepRegister_reg_Q_5 (.Q (dma_tobeAdded_5), .QB (\$dummy [5]), .D (
        inputSize[5]), .CLK (clk)) ;
    dff dma_readStepRegister_reg_Q_6 (.Q (dma_tobeAdded_6), .QB (\$dummy [6]), .D (
        inputSize[6]), .CLK (clk)) ;
    dff dma_readStepRegister_reg_Q_7 (.Q (dma_tobeAdded_7), .QB (\$dummy [7]), .D (
        inputSize[7]), .CLK (clk)) ;
    dff dma_readStepRegister_reg_Q_8 (.Q (dma_tobeAdded_8), .QB (\$dummy [8]), .D (
        inputSize[8]), .CLK (clk)) ;
    dff dma_readStepRegister_reg_Q_9 (.Q (dma_tobeAdded_9), .QB (\$dummy [9]), .D (
        inputSize[9]), .CLK (clk)) ;
    dff dma_readStepRegister_reg_Q_10 (.Q (dma_tobeAdded_10), .QB (\$dummy [10])
        , .D (inputSize[10]), .CLK (clk)) ;
    dff dma_readStepRegister_reg_Q_11 (.Q (dma_tobeAdded_11), .QB (\$dummy [11])
        , .D (inputSize[11]), .CLK (clk)) ;
    dff dma_readStepRegister_reg_Q_12 (.Q (dma_tobeAdded_12), .QB (\$dummy [12])
        , .D (inputSize[12]), .CLK (clk)) ;
    nor02_2x ix277 (.Y (addressRegIn_0), .A0 (nx344), .A1 (nx605)) ;
    inv01 ix345 (.Y (nx344), .A (ramBasedAddress[0])) ;
    nand02 ix347 (.Y (nx346), .A0 (nx601), .A1 (nx615)) ;
    inv01 ix268 (.Y (nx267), .A (nx350)) ;
    nor02ii ix351 (.Y (nx350), .A0 (nx265), .A1 (nx421)) ;
    oai221 ix266 (.Y (nx265), .A0 (loadNextWordList), .A1 (nx353), .B0 (nx601), 
           .B1 (nx615), .C0 (nx370)) ;
    oai21 ix354 (.Y (nx353), .A0 (loadNextWordList), .A1 (loadWord), .B0 (nx355)
          ) ;
    dff reg_currentState_0 (.Q (\$dummy [13]), .QB (nx355), .D (nx267), .CLK (
        NOT_clk)) ;
    inv01 ix358 (.Y (NOT_clk), .A (clk)) ;
    oai21 ix308 (.Y (nx307), .A0 (switchRam), .A1 (nx362), .B0 (nx368)) ;
    aoi21 ix363 (.Y (nx362), .A0 (nx355), .A1 (nx597), .B0 (nx14)) ;
    dff reg_currentState_1 (.Q (ramRead), .QB (\$dummy [14]), .D (nx307), .CLK (
        NOT_clk)) ;
    nor02_2x ix15 (.Y (nx14), .A0 (nx601), .A1 (nx366)) ;
    nor02_2x ix367 (.Y (nx366), .A0 (loadNextWordList), .A1 (loadWord)) ;
    nand04 ix369 (.Y (nx368), .A0 (nx597), .A1 (nx370), .A2 (nx601), .A3 (nx372)
           ) ;
    inv01 ix371 (.Y (nx370), .A (switchRam)) ;
    inv16 ix375 (.Y (NOT_MFC), .A (MFC)) ;
    nor03_2x ix133 (.Y (nx132), .A0 (dma_currentCount_1), .A1 (nx404), .A2 (
             nx419)) ;
    dff dma_counter_counterReg_reg_Q_1 (.Q (dma_currentCount_1), .QB (
        \$dummy [15]), .D (nx287), .CLK (clk)) ;
    oai21 ix288 (.Y (nx287), .A0 (nx379), .A1 (nx392), .B0 (nx401)) ;
    aoi322 ix380 (.Y (nx379), .A0 (filterSize[1]), .A1 (loadNextWordList), .A2 (
           nx381), .B0 (dma_currentCount_1), .B1 (nx383), .C0 (nx68), .C1 (nx399
           )) ;
    nor02_2x ix382 (.Y (nx381), .A0 (nx597), .A1 (nx601)) ;
    nor03_2x ix51 (.Y (nx50), .A0 (nx597), .A1 (nx601), .A2 (nx386)) ;
    nor02_2x ix387 (.Y (nx386), .A0 (loadNextWordList), .A1 (loadWord)) ;
    nand02 ix278 (.Y (nx277), .A0 (nx390), .A1 (nx394)) ;
    nand02 ix391 (.Y (nx390), .A0 (dma_currentCount_0), .A1 (nx392)) ;
    aoi21 ix395 (.Y (nx394), .A0 (nx396), .A1 (MFC), .B0 (nx50)) ;
    dff dma_counter_counterReg_reg_Q_0 (.Q (dma_currentCount_0), .QB (nx396), .D (
        nx277), .CLK (clk)) ;
    nor02_2x ix69 (.Y (nx68), .A0 (dma_currentCount_1), .A1 (dma_currentCount_0)
             ) ;
    inv01 ix400 (.Y (nx399), .A (nx50)) ;
    nand02 ix402 (.Y (nx401), .A0 (dma_currentCount_1), .A1 (nx392)) ;
    nand02 ix405 (.Y (nx404), .A0 (NOT_clk), .A1 (nx406)) ;
    oai21 ix298 (.Y (nx297), .A0 (nx409), .A1 (nx392), .B0 (nx417)) ;
    nor02ii ix410 (.Y (nx409), .A0 (nx108), .A1 (nx415)) ;
    nor02_2x ix109 (.Y (nx108), .A0 (nx412), .A1 (nx50)) ;
    dff dma_counter_counterReg_reg_Q_2 (.Q (dma_currentCount_2), .QB (nx406), .D (
        nx297), .CLK (clk)) ;
    nand04 ix416 (.Y (nx415), .A0 (filterSize[2]), .A1 (loadNextWordList), .A2 (
           nx615), .A3 (nx355)) ;
    nand02 ix418 (.Y (nx417), .A0 (dma_currentCount_2), .A1 (nx392)) ;
    nand03 ix420 (.Y (nx419), .A0 (dma_currentCount_0), .A1 (MFC), .A2 (nx597)
           ) ;
    nand04 ix422 (.Y (nx421), .A0 (nx601), .A1 (nx370), .A2 (nx597), .A3 (nx372)
           ) ;
    nor02_2x ix279 (.Y (addressRegIn_1), .A0 (nx424), .A1 (nx605)) ;
    inv01 ix425 (.Y (nx424), .A (ramBasedAddress[1])) ;
    nor02_2x ix281 (.Y (addressRegIn_2), .A0 (nx427), .A1 (nx605)) ;
    inv01 ix428 (.Y (nx427), .A (ramBasedAddress[2])) ;
    nor02_2x ix283 (.Y (addressRegIn_3), .A0 (nx430), .A1 (nx605)) ;
    inv01 ix431 (.Y (nx430), .A (ramBasedAddress[3])) ;
    nor02_2x ix285 (.Y (addressRegIn_4), .A0 (nx433), .A1 (nx605)) ;
    inv01 ix434 (.Y (nx433), .A (ramBasedAddress[4])) ;
    nor02_2x ix287 (.Y (addressRegIn_5), .A0 (nx436), .A1 (nx605)) ;
    inv01 ix437 (.Y (nx436), .A (ramBasedAddress[5])) ;
    nor02_2x ix289 (.Y (addressRegIn_6), .A0 (nx439), .A1 (nx605)) ;
    inv01 ix440 (.Y (nx439), .A (ramBasedAddress[6])) ;
    nor02_2x ix291 (.Y (addressRegIn_7), .A0 (nx442), .A1 (nx607)) ;
    inv01 ix443 (.Y (nx442), .A (ramBasedAddress[7])) ;
    nor02_2x ix293 (.Y (addressRegIn_8), .A0 (nx445), .A1 (nx607)) ;
    inv01 ix446 (.Y (nx445), .A (ramBasedAddress[8])) ;
    nor02_2x ix295 (.Y (addressRegIn_9), .A0 (nx448), .A1 (nx607)) ;
    inv01 ix449 (.Y (nx448), .A (ramBasedAddress[9])) ;
    nor02_2x ix297 (.Y (addressRegIn_10), .A0 (nx451), .A1 (nx607)) ;
    inv01 ix452 (.Y (nx451), .A (ramBasedAddress[10])) ;
    nor02_2x ix299 (.Y (addressRegIn_11), .A0 (nx454), .A1 (nx607)) ;
    inv01 ix455 (.Y (nx454), .A (ramBasedAddress[11])) ;
    nor02_2x ix301 (.Y (addressRegIn_12), .A0 (nx457), .A1 (nx607)) ;
    inv01 ix458 (.Y (nx457), .A (ramBasedAddress[12])) ;
    nor02_2x ix39 (.Y (resetAddressReg), .A0 (nx355), .A1 (nx597)) ;
    nand02 ix309 (.Y (baseAddressCounterClk), .A0 (nx461), .A1 (nx463)) ;
    nand03 ix462 (.Y (nx461), .A0 (NOT_clk), .A1 (nx603), .A2 (nx615)) ;
    nand03 ix464 (.Y (nx463), .A0 (clk), .A1 (nx355), .A2 (nx599)) ;
    inv01 ix161 (.Y (resetUnitNumberReg), .A (nx466)) ;
    oai21 ix467 (.Y (nx466), .A0 (loadNextWordList), .A1 (nx603), .B0 (nx615)) ;
    dff aluNumberCounter_counterReg_reg_Q_0 (.Q (aluNumber[0]), .QB (nx475), .D (
        nx168), .CLK (nx164)) ;
    nand02 ix169 (.Y (nx168), .A0 (nx466), .A1 (aluNumber[0])) ;
    oai22 ix165 (.Y (nx164), .A0 (nx471), .A1 (nx473), .B0 (NOT_clk), .B1 (nx466
          )) ;
    nand02 ix472 (.Y (nx471), .A0 (loadNextWordList), .A1 (NOT_clk)) ;
    nand02 ix474 (.Y (nx473), .A0 (nx599), .A1 (MFC)) ;
    dff aluNumberCounter_counterReg_reg_Q_1 (.Q (aluNumber[1]), .QB (nx480), .D (
        nx178), .CLK (nx164)) ;
    nand02 ix179 (.Y (nx178), .A0 (nx466), .A1 (nx478)) ;
    dff aluNumberCounter_counterReg_reg_Q_2 (.Q (aluNumber[2]), .QB (
        \$dummy [16]), .D (nx190), .CLK (nx164)) ;
    nand02 ix191 (.Y (nx190), .A0 (nx466), .A1 (nx483)) ;
    xnor2 ix484 (.Y (nx483), .A0 (aluNumber[2]), .A1 (nx186)) ;
    nor02_2x ix187 (.Y (nx186), .A0 (nx475), .A1 (nx480)) ;
    nor02_2x ix129 (.Y (readOne), .A0 (NOT_MFC), .A1 (nx615)) ;
    trib04 dma_tristateLabel_tri_output_0 (.Y (internalBus[0]), .A (
           ramDataInBus[0]), .E (nx573)) ;
    trib04 dma_tristateLabel_tri_output_1 (.Y (internalBus[1]), .A (
           ramDataInBus[1]), .E (nx573)) ;
    trib04 dma_tristateLabel_tri_output_2 (.Y (internalBus[2]), .A (
           ramDataInBus[2]), .E (nx573)) ;
    trib04 dma_tristateLabel_tri_output_3 (.Y (internalBus[3]), .A (
           ramDataInBus[3]), .E (nx573)) ;
    trib04 dma_tristateLabel_tri_output_4 (.Y (internalBus[4]), .A (
           ramDataInBus[4]), .E (nx573)) ;
    trib04 dma_tristateLabel_tri_output_5 (.Y (internalBus[5]), .A (
           ramDataInBus[5]), .E (nx573)) ;
    trib04 dma_tristateLabel_tri_output_6 (.Y (internalBus[6]), .A (
           ramDataInBus[6]), .E (nx573)) ;
    trib04 dma_tristateLabel_tri_output_7 (.Y (internalBus[7]), .A (
           ramDataInBus[7]), .E (nx575)) ;
    trib04 dma_tristateLabel_tri_output_8 (.Y (internalBus[8]), .A (
           ramDataInBus[8]), .E (nx575)) ;
    trib04 dma_tristateLabel_tri_output_9 (.Y (internalBus[9]), .A (
           ramDataInBus[9]), .E (nx575)) ;
    trib04 dma_tristateLabel_tri_output_10 (.Y (internalBus[10]), .A (
           ramDataInBus[10]), .E (nx575)) ;
    trib04 dma_tristateLabel_tri_output_11 (.Y (internalBus[11]), .A (
           ramDataInBus[11]), .E (nx575)) ;
    trib04 dma_tristateLabel_tri_output_12 (.Y (internalBus[12]), .A (
           ramDataInBus[12]), .E (nx575)) ;
    trib04 dma_tristateLabel_tri_output_13 (.Y (internalBus[13]), .A (
           ramDataInBus[13]), .E (nx575)) ;
    trib04 dma_tristateLabel_tri_output_14 (.Y (internalBus[14]), .A (
           ramDataInBus[14]), .E (nx577)) ;
    trib04 dma_tristateLabel_tri_output_15 (.Y (internalBus[15]), .A (
           ramDataInBus[15]), .E (nx577)) ;
    trib04 dma_tristateLabel_tri_output_16 (.Y (internalBus[16]), .A (
           ramDataInBus[16]), .E (nx577)) ;
    trib04 dma_tristateLabel_tri_output_17 (.Y (internalBus[17]), .A (
           ramDataInBus[17]), .E (nx577)) ;
    trib04 dma_tristateLabel_tri_output_18 (.Y (internalBus[18]), .A (
           ramDataInBus[18]), .E (nx577)) ;
    trib04 dma_tristateLabel_tri_output_19 (.Y (internalBus[19]), .A (
           ramDataInBus[19]), .E (nx577)) ;
    trib04 dma_tristateLabel_tri_output_20 (.Y (internalBus[20]), .A (
           ramDataInBus[20]), .E (nx577)) ;
    trib04 dma_tristateLabel_tri_output_21 (.Y (internalBus[21]), .A (
           ramDataInBus[21]), .E (nx579)) ;
    trib04 dma_tristateLabel_tri_output_22 (.Y (internalBus[22]), .A (
           ramDataInBus[22]), .E (nx579)) ;
    trib04 dma_tristateLabel_tri_output_23 (.Y (internalBus[23]), .A (
           ramDataInBus[23]), .E (nx579)) ;
    trib04 dma_tristateLabel_tri_output_24 (.Y (internalBus[24]), .A (
           ramDataInBus[24]), .E (nx579)) ;
    trib04 dma_tristateLabel_tri_output_25 (.Y (internalBus[25]), .A (
           ramDataInBus[25]), .E (nx579)) ;
    trib04 dma_tristateLabel_tri_output_26 (.Y (internalBus[26]), .A (
           ramDataInBus[26]), .E (nx579)) ;
    trib04 dma_tristateLabel_tri_output_27 (.Y (internalBus[27]), .A (
           ramDataInBus[27]), .E (nx579)) ;
    trib04 dma_tristateLabel_tri_output_28 (.Y (internalBus[28]), .A (
           ramDataInBus[28]), .E (nx581)) ;
    trib04 dma_tristateLabel_tri_output_29 (.Y (internalBus[29]), .A (
           ramDataInBus[29]), .E (nx581)) ;
    trib04 dma_tristateLabel_tri_output_30 (.Y (internalBus[30]), .A (
           ramDataInBus[30]), .E (nx581)) ;
    trib04 dma_tristateLabel_tri_output_31 (.Y (internalBus[31]), .A (
           ramDataInBus[31]), .E (nx581)) ;
    trib04 dma_tristateLabel_tri_output_32 (.Y (internalBus[32]), .A (
           ramDataInBus[32]), .E (nx581)) ;
    trib04 dma_tristateLabel_tri_output_33 (.Y (internalBus[33]), .A (
           ramDataInBus[33]), .E (nx581)) ;
    trib04 dma_tristateLabel_tri_output_34 (.Y (internalBus[34]), .A (
           ramDataInBus[34]), .E (nx581)) ;
    trib04 dma_tristateLabel_tri_output_35 (.Y (internalBus[35]), .A (
           ramDataInBus[35]), .E (nx583)) ;
    trib04 dma_tristateLabel_tri_output_36 (.Y (internalBus[36]), .A (
           ramDataInBus[36]), .E (nx583)) ;
    trib04 dma_tristateLabel_tri_output_37 (.Y (internalBus[37]), .A (
           ramDataInBus[37]), .E (nx583)) ;
    trib04 dma_tristateLabel_tri_output_38 (.Y (internalBus[38]), .A (
           ramDataInBus[38]), .E (nx583)) ;
    trib04 dma_tristateLabel_tri_output_39 (.Y (internalBus[39]), .A (
           ramDataInBus[39]), .E (nx583)) ;
    trib04 dma_tristateLabel_tri_output_40 (.Y (internalBus[40]), .A (
           ramDataInBus[40]), .E (nx583)) ;
    trib04 dma_tristateLabel_tri_output_41 (.Y (internalBus[41]), .A (
           ramDataInBus[41]), .E (nx583)) ;
    trib04 dma_tristateLabel_tri_output_42 (.Y (internalBus[42]), .A (
           ramDataInBus[42]), .E (nx585)) ;
    trib04 dma_tristateLabel_tri_output_43 (.Y (internalBus[43]), .A (
           ramDataInBus[43]), .E (nx585)) ;
    trib04 dma_tristateLabel_tri_output_44 (.Y (internalBus[44]), .A (
           ramDataInBus[44]), .E (nx585)) ;
    trib04 dma_tristateLabel_tri_output_45 (.Y (internalBus[45]), .A (
           ramDataInBus[45]), .E (nx585)) ;
    trib04 dma_tristateLabel_tri_output_46 (.Y (internalBus[46]), .A (
           ramDataInBus[46]), .E (nx585)) ;
    trib04 dma_tristateLabel_tri_output_47 (.Y (internalBus[47]), .A (
           ramDataInBus[47]), .E (nx585)) ;
    trib04 dma_tristateLabel_tri_output_48 (.Y (internalBus[48]), .A (
           ramDataInBus[48]), .E (nx585)) ;
    trib04 dma_tristateLabel_tri_output_49 (.Y (internalBus[49]), .A (
           ramDataInBus[49]), .E (nx587)) ;
    trib04 dma_tristateLabel_tri_output_50 (.Y (internalBus[50]), .A (
           ramDataInBus[50]), .E (nx587)) ;
    trib04 dma_tristateLabel_tri_output_51 (.Y (internalBus[51]), .A (
           ramDataInBus[51]), .E (nx587)) ;
    trib04 dma_tristateLabel_tri_output_52 (.Y (internalBus[52]), .A (
           ramDataInBus[52]), .E (nx587)) ;
    trib04 dma_tristateLabel_tri_output_53 (.Y (internalBus[53]), .A (
           ramDataInBus[53]), .E (nx587)) ;
    trib04 dma_tristateLabel_tri_output_54 (.Y (internalBus[54]), .A (
           ramDataInBus[54]), .E (nx587)) ;
    trib04 dma_tristateLabel_tri_output_55 (.Y (internalBus[55]), .A (
           ramDataInBus[55]), .E (nx587)) ;
    trib04 dma_tristateLabel_tri_output_56 (.Y (internalBus[56]), .A (
           ramDataInBus[56]), .E (nx589)) ;
    trib04 dma_tristateLabel_tri_output_57 (.Y (internalBus[57]), .A (
           ramDataInBus[57]), .E (nx589)) ;
    trib04 dma_tristateLabel_tri_output_58 (.Y (internalBus[58]), .A (
           ramDataInBus[58]), .E (nx589)) ;
    trib04 dma_tristateLabel_tri_output_59 (.Y (internalBus[59]), .A (
           ramDataInBus[59]), .E (nx589)) ;
    trib04 dma_tristateLabel_tri_output_60 (.Y (internalBus[60]), .A (
           ramDataInBus[60]), .E (nx589)) ;
    trib04 dma_tristateLabel_tri_output_61 (.Y (internalBus[61]), .A (
           ramDataInBus[61]), .E (nx589)) ;
    trib04 dma_tristateLabel_tri_output_62 (.Y (internalBus[62]), .A (
           ramDataInBus[62]), .E (nx589)) ;
    trib04 dma_tristateLabel_tri_output_63 (.Y (internalBus[63]), .A (
           ramDataInBus[63]), .E (nx591)) ;
    trib04 dma_tristateLabel_tri_output_64 (.Y (internalBus[64]), .A (
           ramDataInBus[64]), .E (nx591)) ;
    trib04 dma_tristateLabel_tri_output_65 (.Y (internalBus[65]), .A (
           ramDataInBus[65]), .E (nx591)) ;
    trib04 dma_tristateLabel_tri_output_66 (.Y (internalBus[66]), .A (
           ramDataInBus[66]), .E (nx591)) ;
    trib04 dma_tristateLabel_tri_output_67 (.Y (internalBus[67]), .A (
           ramDataInBus[67]), .E (nx591)) ;
    trib04 dma_tristateLabel_tri_output_68 (.Y (internalBus[68]), .A (
           ramDataInBus[68]), .E (nx591)) ;
    trib04 dma_tristateLabel_tri_output_69 (.Y (internalBus[69]), .A (
           ramDataInBus[69]), .E (nx591)) ;
    trib04 dma_tristateLabel_tri_output_70 (.Y (internalBus[70]), .A (
           ramDataInBus[70]), .E (nx593)) ;
    trib04 dma_tristateLabel_tri_output_71 (.Y (internalBus[71]), .A (
           ramDataInBus[71]), .E (nx593)) ;
    trib04 dma_tristateLabel_tri_output_72 (.Y (internalBus[72]), .A (
           ramDataInBus[72]), .E (nx593)) ;
    trib04 dma_tristateLabel_tri_output_73 (.Y (internalBus[73]), .A (
           ramDataInBus[73]), .E (nx593)) ;
    trib04 dma_tristateLabel_tri_output_74 (.Y (internalBus[74]), .A (
           ramDataInBus[74]), .E (nx593)) ;
    trib04 dma_tristateLabel_tri_output_75 (.Y (internalBus[75]), .A (
           ramDataInBus[75]), .E (nx593)) ;
    trib04 dma_tristateLabel_tri_output_76 (.Y (internalBus[76]), .A (
           ramDataInBus[76]), .E (nx593)) ;
    trib04 dma_tristateLabel_tri_output_77 (.Y (internalBus[77]), .A (
           ramDataInBus[77]), .E (nx595)) ;
    trib04 dma_tristateLabel_tri_output_78 (.Y (internalBus[78]), .A (
           ramDataInBus[78]), .E (nx595)) ;
    trib04 dma_tristateLabel_tri_output_79 (.Y (internalBus[79]), .A (
           ramDataInBus[79]), .E (nx595)) ;
    buf02 ix572 (.Y (nx573), .A (nx613)) ;
    buf02 ix574 (.Y (nx575), .A (nx613)) ;
    buf02 ix576 (.Y (nx577), .A (nx613)) ;
    buf02 ix578 (.Y (nx579), .A (nx613)) ;
    buf02 ix580 (.Y (nx581), .A (nx613)) ;
    buf02 ix582 (.Y (nx583), .A (nx613)) ;
    buf02 ix584 (.Y (nx585), .A (nx613)) ;
    buf02 ix586 (.Y (nx587), .A (readOne)) ;
    buf02 ix588 (.Y (nx589), .A (readOne)) ;
    buf02 ix590 (.Y (nx591), .A (readOne)) ;
    buf02 ix592 (.Y (nx593), .A (readOne)) ;
    buf02 ix594 (.Y (nx595), .A (readOne)) ;
    inv02 ix596 (.Y (nx597), .A (nx615)) ;
    inv02 ix598 (.Y (nx599), .A (nx617)) ;
    inv02 ix600 (.Y (nx601), .A (nx355)) ;
    inv02 ix602 (.Y (nx603), .A (nx355)) ;
    buf02 ix604 (.Y (nx605), .A (nx346)) ;
    buf02 ix606 (.Y (nx607), .A (nx346)) ;
    nor02_2x ix612 (.Y (nx613), .A0 (NOT_MFC), .A1 (nx617)) ;
    inv02 ix614 (.Y (nx615), .A (ramRead)) ;
    inv02 ix616 (.Y (nx617), .A (ramRead)) ;
    nor02_2x ix384 (.Y (nx383), .A0 (nx50), .A1 (nx396)) ;
    nor02_2x ix393 (.Y (nx392), .A0 (nx50), .A1 (MFC)) ;
    xnor2 ix413 (.Y (nx412), .A0 (nx406), .A1 (nx623)) ;
    inv01 ix622 (.Y (nx623), .A (nx68)) ;
    xnor2 ix479 (.Y (nx478), .A0 (nx480), .A1 (nx475)) ;
    latchs_ni dma_lat_internalFinishedReading_u1 (.QB (nx5), .D (
              dmaInitRamBaseAddress), .CLK (NOT_MFC), .S (nx132)) ;
    inv02 dma_lat_internalFinishedReading_u2 (.Y (readFinal), .A (nx5)) ;
    buf02 dma_lat_internalFinishedReading_u3 (.Y (nx372), .A (nx5)) ;
endmodule


module MultiStepCounter_13 ( load, toBeAdded, reset, clk, isLoad, MFC, count ) ;

    input [12:0]load ;
    input [12:0]toBeAdded ;
    input reset ;
    input clk ;
    input isLoad ;
    input MFC ;
    output [12:0]count ;

    wire countAdded_12, countAdded_11, countAdded_10, countAdded_9, countAdded_8, 
         countAdded_7, countAdded_6, countAdded_5, countAdded_4, countAdded_3, 
         countAdded_2, countAdded_1, countAdded_0, GND, nx12, nx18, nx34, nx50, 
         nx66, nx82, nx98, nx114, nx130, nx146, nx162, nx178, nx194, nx210, nx56, 
         nx59, nx63, nx69, nx71, nx73, nx79, nx81, nx83, nx88, nx91, nx93, nx99, 
         nx101, nx103, nx109, nx111, nx113, nx118, nx120, nx123, nx129, nx131, 
         nx133, nx139, nx141, nx143, nx149, nx151, nx153, nx159, nx161, nx163, 
         nx168, nx171, nx173, nx179, nx181, nx183, nx192, nx195, nx197, nx203, 
         nx205, nx207, nx209;
    wire [13:0] \$dummy ;




    NBitAdder_13 nextCount (.a ({count[12],count[11],count[10],count[9],count[8]
                 ,count[7],count[6],count[5],count[4],count[3],count[2],count[1]
                 ,count[0]}), .b ({toBeAdded[12],toBeAdded[11],toBeAdded[10],
                 toBeAdded[9],toBeAdded[8],toBeAdded[7],toBeAdded[6],
                 toBeAdded[5],toBeAdded[4],toBeAdded[3],toBeAdded[2],
                 toBeAdded[1],toBeAdded[0]}), .carryIn (GND), .sum ({
                 countAdded_12,countAdded_11,countAdded_10,countAdded_9,
                 countAdded_8,countAdded_7,countAdded_6,countAdded_5,
                 countAdded_4,countAdded_3,countAdded_2,countAdded_1,
                 countAdded_0}), .carryOut (\$dummy [0])) ;
    fake_gnd ix4 (.Y (GND)) ;
    dff counterReg_reg_Q_0 (.Q (count[0]), .QB (\$dummy [1]), .D (nx18), .CLK (
        clk)) ;
    nand03 ix19 (.Y (nx18), .A0 (nx56), .A1 (nx59), .A2 (nx63)) ;
    nand02 ix57 (.Y (nx56), .A0 (count[0]), .A1 (nx192)) ;
    nor02_2x ix13 (.Y (nx12), .A0 (MFC), .A1 (nx205)) ;
    nand03 ix60 (.Y (nx59), .A0 (load[0]), .A1 (nx195), .A2 (nx205)) ;
    nand02 ix64 (.Y (nx63), .A0 (countAdded_0), .A1 (MFC)) ;
    dff counterReg_reg_Q_1 (.Q (count[1]), .QB (\$dummy [2]), .D (nx34), .CLK (
        clk)) ;
    nand03 ix35 (.Y (nx34), .A0 (nx69), .A1 (nx71), .A2 (nx73)) ;
    nand02 ix70 (.Y (nx69), .A0 (count[1]), .A1 (nx192)) ;
    nand03 ix72 (.Y (nx71), .A0 (load[1]), .A1 (nx195), .A2 (nx205)) ;
    nand02 ix74 (.Y (nx73), .A0 (countAdded_1), .A1 (MFC)) ;
    dff counterReg_reg_Q_2 (.Q (count[2]), .QB (\$dummy [3]), .D (nx50), .CLK (
        clk)) ;
    nand03 ix51 (.Y (nx50), .A0 (nx79), .A1 (nx81), .A2 (nx83)) ;
    nand02 ix80 (.Y (nx79), .A0 (count[2]), .A1 (nx192)) ;
    nand03 ix82 (.Y (nx81), .A0 (load[2]), .A1 (nx195), .A2 (nx205)) ;
    nand02 ix84 (.Y (nx83), .A0 (countAdded_2), .A1 (MFC)) ;
    dff counterReg_reg_Q_3 (.Q (count[3]), .QB (\$dummy [4]), .D (nx66), .CLK (
        clk)) ;
    nand03 ix67 (.Y (nx66), .A0 (nx88), .A1 (nx91), .A2 (nx93)) ;
    nand02 ix89 (.Y (nx88), .A0 (count[3]), .A1 (nx192)) ;
    nand03 ix92 (.Y (nx91), .A0 (load[3]), .A1 (nx195), .A2 (nx205)) ;
    nand02 ix94 (.Y (nx93), .A0 (countAdded_3), .A1 (MFC)) ;
    dff counterReg_reg_Q_4 (.Q (count[4]), .QB (\$dummy [5]), .D (nx82), .CLK (
        clk)) ;
    nand03 ix83 (.Y (nx82), .A0 (nx99), .A1 (nx101), .A2 (nx103)) ;
    nand02 ix100 (.Y (nx99), .A0 (count[4]), .A1 (nx192)) ;
    nand03 ix102 (.Y (nx101), .A0 (load[4]), .A1 (nx195), .A2 (nx205)) ;
    nand02 ix104 (.Y (nx103), .A0 (countAdded_4), .A1 (MFC)) ;
    dff counterReg_reg_Q_5 (.Q (count[5]), .QB (\$dummy [6]), .D (nx98), .CLK (
        clk)) ;
    nand03 ix99 (.Y (nx98), .A0 (nx109), .A1 (nx111), .A2 (nx113)) ;
    nand02 ix110 (.Y (nx109), .A0 (count[5]), .A1 (nx192)) ;
    nand03 ix112 (.Y (nx111), .A0 (load[5]), .A1 (nx195), .A2 (nx205)) ;
    nand02 ix114 (.Y (nx113), .A0 (countAdded_5), .A1 (MFC)) ;
    dff counterReg_reg_Q_6 (.Q (count[6]), .QB (\$dummy [7]), .D (nx114), .CLK (
        clk)) ;
    nand03 ix115 (.Y (nx114), .A0 (nx118), .A1 (nx120), .A2 (nx123)) ;
    nand02 ix119 (.Y (nx118), .A0 (count[6]), .A1 (nx192)) ;
    nand03 ix121 (.Y (nx120), .A0 (load[6]), .A1 (nx195), .A2 (nx207)) ;
    nand02 ix124 (.Y (nx123), .A0 (countAdded_6), .A1 (MFC)) ;
    dff counterReg_reg_Q_7 (.Q (count[7]), .QB (\$dummy [8]), .D (nx130), .CLK (
        clk)) ;
    nand03 ix131 (.Y (nx130), .A0 (nx129), .A1 (nx131), .A2 (nx133)) ;
    nand02 ix130 (.Y (nx129), .A0 (count[7]), .A1 (nx12)) ;
    nand03 ix132 (.Y (nx131), .A0 (load[7]), .A1 (nx197), .A2 (nx207)) ;
    nand02 ix134 (.Y (nx133), .A0 (countAdded_7), .A1 (MFC)) ;
    dff counterReg_reg_Q_8 (.Q (count[8]), .QB (\$dummy [9]), .D (nx146), .CLK (
        clk)) ;
    nand03 ix147 (.Y (nx146), .A0 (nx139), .A1 (nx141), .A2 (nx143)) ;
    nand02 ix140 (.Y (nx139), .A0 (count[8]), .A1 (nx12)) ;
    nand03 ix142 (.Y (nx141), .A0 (load[8]), .A1 (nx197), .A2 (nx207)) ;
    nand02 ix144 (.Y (nx143), .A0 (countAdded_8), .A1 (MFC)) ;
    dff counterReg_reg_Q_9 (.Q (count[9]), .QB (\$dummy [10]), .D (nx162), .CLK (
        clk)) ;
    nand03 ix163 (.Y (nx162), .A0 (nx149), .A1 (nx151), .A2 (nx153)) ;
    nand02 ix150 (.Y (nx149), .A0 (count[9]), .A1 (nx12)) ;
    nand03 ix152 (.Y (nx151), .A0 (load[9]), .A1 (nx197), .A2 (nx207)) ;
    nand02 ix154 (.Y (nx153), .A0 (countAdded_9), .A1 (MFC)) ;
    dff counterReg_reg_Q_10 (.Q (count[10]), .QB (\$dummy [11]), .D (nx178), .CLK (
        clk)) ;
    nand03 ix179 (.Y (nx178), .A0 (nx159), .A1 (nx161), .A2 (nx163)) ;
    nand02 ix160 (.Y (nx159), .A0 (count[10]), .A1 (nx12)) ;
    nand03 ix162 (.Y (nx161), .A0 (load[10]), .A1 (nx197), .A2 (nx207)) ;
    nand02 ix164 (.Y (nx163), .A0 (countAdded_10), .A1 (MFC)) ;
    dff counterReg_reg_Q_11 (.Q (count[11]), .QB (\$dummy [12]), .D (nx194), .CLK (
        clk)) ;
    nand03 ix195 (.Y (nx194), .A0 (nx168), .A1 (nx171), .A2 (nx173)) ;
    nand02 ix169 (.Y (nx168), .A0 (count[11]), .A1 (nx12)) ;
    nand03 ix172 (.Y (nx171), .A0 (load[11]), .A1 (nx197), .A2 (nx207)) ;
    nand02 ix174 (.Y (nx173), .A0 (countAdded_11), .A1 (MFC)) ;
    dff counterReg_reg_Q_12 (.Q (count[12]), .QB (\$dummy [13]), .D (nx210), .CLK (
        clk)) ;
    nand03 ix211 (.Y (nx210), .A0 (nx179), .A1 (nx181), .A2 (nx183)) ;
    nand02 ix180 (.Y (nx179), .A0 (count[12]), .A1 (nx12)) ;
    nand03 ix182 (.Y (nx181), .A0 (load[12]), .A1 (nx197), .A2 (nx207)) ;
    nand02 ix184 (.Y (nx183), .A0 (MFC), .A1 (countAdded_12)) ;
    nor02_2x ix191 (.Y (nx192), .A0 (MFC), .A1 (nx209)) ;
    inv02 ix193 (.Y (nx195), .A (MFC)) ;
    inv02 ix196 (.Y (nx197), .A (MFC)) ;
    inv01 ix202 (.Y (nx203), .A (isLoad)) ;
    inv02 ix204 (.Y (nx205), .A (nx203)) ;
    inv02 ix206 (.Y (nx207), .A (nx203)) ;
    inv02 ix208 (.Y (nx209), .A (nx203)) ;
endmodule


module NBitAdder_13 ( a, b, carryIn, sum, carryOut ) ;

    input [12:0]a ;
    input [12:0]b ;
    input carryIn ;
    output [12:0]sum ;
    output carryOut ;

    wire nx2, nx8, nx10, nx18, nx24, nx26, nx34, nx40, nx42, nx50, nx56, nx58, 
         nx66, nx72, nx74, nx82, nx88, nx81, nx85, nx89, nx95, nx97, nx99, nx103, 
         nx107, nx111, nx117, nx119, nx121, nx124, nx127, nx130, nx134, nx136, 
         nx138, nx141, nx144, nx147, nx151, nx153, nx155, nx158, nx161, nx164, 
         nx168, nx170, nx172, nx175, nx178, nx181, nx185, nx187, nx189;



    fake_gnd ix44 (.Y (carryOut)) ;
    xnor2 ix121 (.Y (sum[0]), .A0 (b[0]), .A1 (nx81)) ;
    inv01 ix82 (.Y (nx81), .A (a[0])) ;
    xnor2 ix115 (.Y (sum[1]), .A0 (nx85), .A1 (nx2)) ;
    nand02 ix86 (.Y (nx85), .A0 (b[0]), .A1 (a[0])) ;
    xnor2 ix3 (.Y (nx2), .A0 (a[1]), .A1 (nx89)) ;
    inv01 ix90 (.Y (nx89), .A (b[1])) ;
    xnor2 ix113 (.Y (sum[2]), .A0 (nx8), .A1 (nx99)) ;
    oai22 ix9 (.Y (nx8), .A0 (nx85), .A1 (nx95), .B0 (nx89), .B1 (nx97)) ;
    xnor2 ix96 (.Y (nx95), .A0 (a[1]), .A1 (b[1])) ;
    inv01 ix98 (.Y (nx97), .A (a[1])) ;
    xnor2 ix100 (.Y (nx99), .A0 (a[2]), .A1 (b[2])) ;
    xnor2 ix111 (.Y (sum[3]), .A0 (nx103), .A1 (nx18)) ;
    aoi22 ix104 (.Y (nx103), .A0 (b[2]), .A1 (a[2]), .B0 (nx8), .B1 (nx10)) ;
    xnor2 ix11 (.Y (nx10), .A0 (a[2]), .A1 (nx107)) ;
    inv01 ix108 (.Y (nx107), .A (b[2])) ;
    xnor2 ix19 (.Y (nx18), .A0 (a[3]), .A1 (nx111)) ;
    inv01 ix112 (.Y (nx111), .A (b[3])) ;
    xnor2 ix109 (.Y (sum[4]), .A0 (nx24), .A1 (nx121)) ;
    oai21 ix25 (.Y (nx24), .A0 (nx103), .A1 (nx117), .B0 (nx119)) ;
    xnor2 ix118 (.Y (nx117), .A0 (a[3]), .A1 (b[3])) ;
    nand02 ix120 (.Y (nx119), .A0 (b[3]), .A1 (a[3])) ;
    xnor2 ix122 (.Y (nx121), .A0 (a[4]), .A1 (b[4])) ;
    xnor2 ix107 (.Y (sum[5]), .A0 (nx124), .A1 (nx34)) ;
    aoi22 ix125 (.Y (nx124), .A0 (b[4]), .A1 (a[4]), .B0 (nx24), .B1 (nx26)) ;
    xnor2 ix27 (.Y (nx26), .A0 (a[4]), .A1 (nx127)) ;
    inv01 ix128 (.Y (nx127), .A (b[4])) ;
    xnor2 ix35 (.Y (nx34), .A0 (a[5]), .A1 (nx130)) ;
    inv01 ix131 (.Y (nx130), .A (b[5])) ;
    xnor2 ix105 (.Y (sum[6]), .A0 (nx40), .A1 (nx138)) ;
    oai21 ix41 (.Y (nx40), .A0 (nx124), .A1 (nx134), .B0 (nx136)) ;
    xnor2 ix135 (.Y (nx134), .A0 (a[5]), .A1 (b[5])) ;
    nand02 ix137 (.Y (nx136), .A0 (b[5]), .A1 (a[5])) ;
    xnor2 ix139 (.Y (nx138), .A0 (a[6]), .A1 (b[6])) ;
    xnor2 ix103 (.Y (sum[7]), .A0 (nx141), .A1 (nx50)) ;
    aoi22 ix142 (.Y (nx141), .A0 (b[6]), .A1 (a[6]), .B0 (nx40), .B1 (nx42)) ;
    xnor2 ix43 (.Y (nx42), .A0 (a[6]), .A1 (nx144)) ;
    inv01 ix145 (.Y (nx144), .A (b[6])) ;
    xnor2 ix51 (.Y (nx50), .A0 (a[7]), .A1 (nx147)) ;
    inv01 ix148 (.Y (nx147), .A (b[7])) ;
    xnor2 ix101 (.Y (sum[8]), .A0 (nx56), .A1 (nx155)) ;
    oai21 ix57 (.Y (nx56), .A0 (nx141), .A1 (nx151), .B0 (nx153)) ;
    xnor2 ix152 (.Y (nx151), .A0 (a[7]), .A1 (b[7])) ;
    nand02 ix154 (.Y (nx153), .A0 (b[7]), .A1 (a[7])) ;
    xnor2 ix156 (.Y (nx155), .A0 (a[8]), .A1 (b[8])) ;
    xnor2 ix99 (.Y (sum[9]), .A0 (nx158), .A1 (nx66)) ;
    aoi22 ix159 (.Y (nx158), .A0 (b[8]), .A1 (a[8]), .B0 (nx56), .B1 (nx58)) ;
    xnor2 ix59 (.Y (nx58), .A0 (a[8]), .A1 (nx161)) ;
    inv01 ix162 (.Y (nx161), .A (b[8])) ;
    xnor2 ix67 (.Y (nx66), .A0 (a[9]), .A1 (nx164)) ;
    inv01 ix165 (.Y (nx164), .A (b[9])) ;
    xnor2 ix97 (.Y (sum[10]), .A0 (nx72), .A1 (nx172)) ;
    oai21 ix73 (.Y (nx72), .A0 (nx158), .A1 (nx168), .B0 (nx170)) ;
    xnor2 ix169 (.Y (nx168), .A0 (a[9]), .A1 (b[9])) ;
    nand02 ix171 (.Y (nx170), .A0 (b[9]), .A1 (a[9])) ;
    xnor2 ix173 (.Y (nx172), .A0 (a[10]), .A1 (b[10])) ;
    xnor2 ix95 (.Y (sum[11]), .A0 (nx175), .A1 (nx82)) ;
    aoi22 ix176 (.Y (nx175), .A0 (b[10]), .A1 (a[10]), .B0 (nx72), .B1 (nx74)) ;
    xnor2 ix75 (.Y (nx74), .A0 (a[10]), .A1 (nx178)) ;
    inv01 ix179 (.Y (nx178), .A (b[10])) ;
    xnor2 ix83 (.Y (nx82), .A0 (a[11]), .A1 (nx181)) ;
    inv01 ix182 (.Y (nx181), .A (b[11])) ;
    xnor2 ix93 (.Y (sum[12]), .A0 (nx88), .A1 (nx189)) ;
    oai21 ix89 (.Y (nx88), .A0 (nx175), .A1 (nx185), .B0 (nx187)) ;
    xnor2 ix186 (.Y (nx185), .A0 (a[11]), .A1 (b[11])) ;
    nand02 ix188 (.Y (nx187), .A0 (b[11]), .A1 (a[11])) ;
    xnor2 ix190 (.Y (nx189), .A0 (a[12]), .A1 (b[12])) ;
endmodule


module Counter2_13 ( load, reset, clk, isLoad, count ) ;

    input [12:0]load ;
    input reset ;
    input clk ;
    input isLoad ;
    output [12:0]count ;

    wire nx10, nx24, nx38, nx42, nx52, nx56, nx66, nx80, nx94, nx98, nx108, 
         nx122, nx136, nx150, nx164, nx168, nx178, nx43, nx45, nx47, nx49, nx55, 
         nx57, nx59, nx63, nx67, nx69, nx73, nx77, nx79, nx81, nx85, nx89, nx91, 
         nx95, nx101, nx103, nx107, nx111, nx113, nx115, nx119, nx123, nx125, 
         nx129, nx135, nx137, nx141, nx145, nx147, nx149, nx153, nx157, nx159, 
         nx163, nx169, nx171, nx175, nx179, nx181, nx189, nx191, nx193, nx195, 
         nx197, nx199, nx201, nx203, nx205, nx207, nx209, nx211, nx213, nx215, 
         nx217, nx219, nx221, nx223, nx225;
    wire [0:0] \$dummy ;




    nand02 ix11 (.Y (nx10), .A0 (nx43), .A1 (nx45)) ;
    nand02 ix44 (.Y (nx43), .A0 (load[0]), .A1 (nx219)) ;
    nand02 ix46 (.Y (nx45), .A0 (nx47), .A1 (nx49)) ;
    inv01 ix48 (.Y (nx47), .A (isLoad)) ;
    dff counterReg_reg_Q_0 (.Q (count[0]), .QB (nx49), .D (nx10), .CLK (nx215)
        ) ;
    dff counterReg_reg_Q_1 (.Q (count[1]), .QB (nx59), .D (nx24), .CLK (nx215)
        ) ;
    oai21 ix25 (.Y (nx24), .A0 (nx219), .A1 (nx55), .B0 (nx57)) ;
    nand02 ix58 (.Y (nx57), .A0 (load[1]), .A1 (nx219)) ;
    dff counterReg_reg_Q_2 (.Q (count[2]), .QB (nx69), .D (nx38), .CLK (nx215)
        ) ;
    oai21 ix39 (.Y (nx38), .A0 (nx219), .A1 (nx63), .B0 (nx67)) ;
    nand02 ix68 (.Y (nx67), .A0 (load[2]), .A1 (nx219)) ;
    dff counterReg_reg_Q_3 (.Q (count[3]), .QB (nx81), .D (nx52), .CLK (nx215)
        ) ;
    oai21 ix53 (.Y (nx52), .A0 (nx219), .A1 (nx73), .B0 (nx79)) ;
    nor02_2x ix43 (.Y (nx42), .A0 (nx69), .A1 (nx77)) ;
    nand02 ix78 (.Y (nx77), .A0 (count[1]), .A1 (count[0])) ;
    nand02 ix80 (.Y (nx79), .A0 (load[3]), .A1 (nx219)) ;
    dff counterReg_reg_Q_4 (.Q (count[4]), .QB (nx91), .D (nx66), .CLK (nx215)
        ) ;
    oai21 ix67 (.Y (nx66), .A0 (nx221), .A1 (nx85), .B0 (nx89)) ;
    nor03_2x ix57 (.Y (nx56), .A0 (nx81), .A1 (nx69), .A2 (nx77)) ;
    nand02 ix90 (.Y (nx89), .A0 (load[4]), .A1 (nx221)) ;
    dff counterReg_reg_Q_5 (.Q (count[5]), .QB (nx103), .D (nx80), .CLK (nx215)
        ) ;
    oai21 ix81 (.Y (nx80), .A0 (nx221), .A1 (nx95), .B0 (nx101)) ;
    nand02 ix102 (.Y (nx101), .A0 (load[5]), .A1 (nx221)) ;
    dff counterReg_reg_Q_6 (.Q (count[6]), .QB (nx115), .D (nx94), .CLK (nx215)
        ) ;
    oai21 ix95 (.Y (nx94), .A0 (nx221), .A1 (nx107), .B0 (nx113)) ;
    nand04 ix112 (.Y (nx111), .A0 (count[3]), .A1 (count[2]), .A2 (count[1]), .A3 (
           count[0])) ;
    nand02 ix114 (.Y (nx113), .A0 (load[6]), .A1 (nx221)) ;
    dff counterReg_reg_Q_7 (.Q (count[7]), .QB (nx125), .D (nx108), .CLK (nx217)
        ) ;
    oai21 ix109 (.Y (nx108), .A0 (nx221), .A1 (nx119), .B0 (nx123)) ;
    nor04 ix99 (.Y (nx98), .A0 (nx115), .A1 (nx103), .A2 (nx91), .A3 (nx111)) ;
    nand02 ix124 (.Y (nx123), .A0 (load[7]), .A1 (nx223)) ;
    dff counterReg_reg_Q_8 (.Q (count[8]), .QB (nx137), .D (nx122), .CLK (nx217)
        ) ;
    oai21 ix123 (.Y (nx122), .A0 (nx223), .A1 (nx129), .B0 (nx135)) ;
    nand02 ix136 (.Y (nx135), .A0 (load[8]), .A1 (nx223)) ;
    dff counterReg_reg_Q_9 (.Q (count[9]), .QB (nx149), .D (nx136), .CLK (nx217)
        ) ;
    oai21 ix137 (.Y (nx136), .A0 (nx223), .A1 (nx141), .B0 (nx147)) ;
    inv01 ix146 (.Y (nx145), .A (nx98)) ;
    nand02 ix148 (.Y (nx147), .A0 (load[9]), .A1 (nx223)) ;
    dff counterReg_reg_Q_10 (.Q (count[10]), .QB (nx159), .D (nx150), .CLK (
        nx217)) ;
    oai21 ix151 (.Y (nx150), .A0 (nx223), .A1 (nx153), .B0 (nx157)) ;
    nand02 ix158 (.Y (nx157), .A0 (load[10]), .A1 (nx223)) ;
    dff counterReg_reg_Q_11 (.Q (count[11]), .QB (nx171), .D (nx164), .CLK (
        nx217)) ;
    oai21 ix165 (.Y (nx164), .A0 (nx225), .A1 (nx163), .B0 (nx169)) ;
    nand02 ix170 (.Y (nx169), .A0 (load[11]), .A1 (nx225)) ;
    dff counterReg_reg_Q_12 (.Q (count[12]), .QB (\$dummy [0]), .D (nx178), .CLK (
        nx217)) ;
    oai21 ix179 (.Y (nx178), .A0 (nx225), .A1 (nx175), .B0 (nx181)) ;
    xnor2 ix176 (.Y (nx175), .A0 (count[12]), .A1 (nx168)) ;
    nor04 ix169 (.Y (nx168), .A0 (nx171), .A1 (nx159), .A2 (nx149), .A3 (nx179)
          ) ;
    nand03 ix180 (.Y (nx179), .A0 (count[8]), .A1 (count[7]), .A2 (nx98)) ;
    nand02 ix182 (.Y (nx181), .A0 (nx225), .A1 (load[12])) ;
    xnor2 ix56 (.Y (nx55), .A0 (nx59), .A1 (nx49)) ;
    xnor2 ix64 (.Y (nx63), .A0 (nx69), .A1 (nx189)) ;
    nand02 ix29 (.Y (nx189), .A0 (count[1]), .A1 (count[0])) ;
    xnor2 ix74 (.Y (nx73), .A0 (nx81), .A1 (nx191)) ;
    inv01 ix190 (.Y (nx191), .A (nx42)) ;
    xnor2 ix86 (.Y (nx85), .A0 (nx91), .A1 (nx193)) ;
    inv01 ix192 (.Y (nx193), .A (nx56)) ;
    xnor2 ix96 (.Y (nx95), .A0 (nx103), .A1 (nx195)) ;
    nand03 ix71 (.Y (nx195), .A0 (count[4]), .A1 (count[3]), .A2 (nx197)) ;
    nor03_2x ix100 (.Y (nx197), .A0 (nx69), .A1 (nx59), .A2 (nx49)) ;
    xnor2 ix108 (.Y (nx107), .A0 (nx115), .A1 (nx199)) ;
    nand03 ix85 (.Y (nx199), .A0 (count[5]), .A1 (count[4]), .A2 (nx201)) ;
    inv01 ix200 (.Y (nx201), .A (nx111)) ;
    xnor2 ix120 (.Y (nx119), .A0 (nx125), .A1 (nx145)) ;
    xnor2 ix130 (.Y (nx129), .A0 (nx137), .A1 (nx203)) ;
    nand04 ix113 (.Y (nx203), .A0 (count[7]), .A1 (count[6]), .A2 (count[5]), .A3 (
           nx205)) ;
    nor02_2x ix134 (.Y (nx205), .A0 (nx91), .A1 (nx193)) ;
    xnor2 ix142 (.Y (nx141), .A0 (nx149), .A1 (nx207)) ;
    nand03 ix127 (.Y (nx207), .A0 (count[8]), .A1 (count[7]), .A2 (nx98)) ;
    xnor2 ix154 (.Y (nx153), .A0 (nx159), .A1 (nx209)) ;
    nand04 ix141 (.Y (nx209), .A0 (count[9]), .A1 (count[8]), .A2 (count[7]), .A3 (
           nx98)) ;
    xnor2 ix164 (.Y (nx163), .A0 (nx171), .A1 (nx211)) ;
    nand04 ix155 (.Y (nx211), .A0 (count[10]), .A1 (count[9]), .A2 (count[8]), .A3 (
           nx213)) ;
    nor02_2x ix168 (.Y (nx213), .A0 (nx125), .A1 (nx145)) ;
    buf02 ix214 (.Y (nx215), .A (clk)) ;
    buf02 ix216 (.Y (nx217), .A (clk)) ;
    inv02 ix218 (.Y (nx219), .A (nx47)) ;
    inv02 ix220 (.Y (nx221), .A (nx47)) ;
    inv02 ix222 (.Y (nx223), .A (nx47)) ;
    inv02 ix224 (.Y (nx225), .A (nx47)) ;
endmodule

