//
// Verilog description for cell DMAController, 
// Mon Apr 15 15:36:53 2019
//
// LeonardoSpectrum Level 3, 2018a.2 
//


module DMAController ( clk, reset, weightsInternalBus, windowInternalBus, 
                       weightsRamAddress, windowRamAddress, weightsRamDataInBus, 
                       windowRamDataInBus, weightsRamRead, windowRamRead, 
                       windowRamWrite, windowRamDataOutBus, MFCWindowRam, 
                       MFCWeightsRam, loadNextFilter, loadNextWindow, 
                       loadNextRow, loadWord, layerFinished, write, 
                       weightsSizeType, inputSize, outputSize, 
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
    input loadWord ;
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
         writeLogicRamAddress_1, writeLogicRamAddress_0, switchRam, 
         NOT_weightsSizeType, weightsSizeForWindow_0, resetLogics, 
         ramBaseAddressSelector, NOT_ramBaseAddressSelector, nx741, nx744, nx749, 
         nx752, nx754, nx757, nx759, nx762, nx764, nx767, nx769, nx772, nx774, 
         nx777, nx779, nx782, nx784, nx787, nx789, nx792, nx794, nx797, nx799, 
         nx802, nx804, nx807, nx809, nx812, nx814, nx817, nx819, nx822, nx824, 
         nx827, nx829, nx832, nx834, nx837, nx839, nx842, nx844, nx847, nx849, 
         nx852, nx854, nx857, nx859, nx862, nx864, nx867, nx869, nx872, nx874, 
         nx877, nx879, nx884, nx886, nx889, nx891, nx894, nx896, nx899, nx901, 
         nx904, nx906, nx909, nx911, nx914, nx916, nx919, nx921, nx924, nx926, 
         nx929, nx931, nx934, nx936, nx939, nx941, nx948, nx950, nx952, nx954, 
         nx956, nx958, nx960, nx962, nx964, nx966, nx968;



    ReadLogic_13_80 windowReadLogicEnt (.clk (clk), .resetState (resetLogics), .switchRam (
                    switchRam), .ramBasedAddress ({currentReadRamBaseAddress_12,
                    currentReadRamBaseAddress_11,currentReadRamBaseAddress_10,
                    currentReadRamBaseAddress_9,currentReadRamBaseAddress_8,
                    currentReadRamBaseAddress_7,currentReadRamBaseAddress_6,
                    currentReadRamBaseAddress_5,currentReadRamBaseAddress_4,
                    currentReadRamBaseAddress_3,currentReadRamBaseAddress_2,
                    currentReadRamBaseAddress_1,currentReadRamBaseAddress_0}), .internalBus (
                    {windowInternalBus[79],windowInternalBus[78],
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
                    MFCWindowRam), .inputSize ({inputSize[12],inputSize[11],
                    inputSize[10],inputSize[9],inputSize[8],inputSize[7],
                    inputSize[6],inputSize[5],inputSize[4],inputSize[3],
                    inputSize[2],inputSize[1],inputSize[0]}), .filterSize ({
                    resetLogics,resetLogics,resetLogics,resetLogics,resetLogics,
                    resetLogics,resetLogics,resetLogics,resetLogics,resetLogics,
                    weightsSizeType,NOT_weightsSizeType,weightsSizeForWindow_0})
                    , .isFilter (resetLogics), .loadNextWordList (loadNextWindow
                    ), .loadWord (loadNextRow), .readOne (windowReadOne), .readFinal (
                    windowReadFinal), .aluNumber ({windowAluNumber[2],
                    windowAluNumber[1],windowAluNumber[0]})) ;
    ReadLogic_12_40 filterReadLogicEnt (.clk (clk), .resetState (resetLogics), .switchRam (
                    reset), .ramBasedAddress ({filterRamBaseAddress[11],
                    filterRamBaseAddress[10],filterRamBaseAddress[9],
                    filterRamBaseAddress[8],filterRamBaseAddress[7],
                    filterRamBaseAddress[6],filterRamBaseAddress[5],
                    filterRamBaseAddress[4],filterRamBaseAddress[3],
                    filterRamBaseAddress[2],filterRamBaseAddress[1],
                    filterRamBaseAddress[0]}), .internalBus ({
                    weightsInternalBus[39],weightsInternalBus[38],
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
                    weightsRamAddress[0]}), .MFC (MFCWeightsRam), .inputSize ({
                    resetLogics,resetLogics,resetLogics,resetLogics,resetLogics,
                    resetLogics,resetLogics,resetLogics,resetLogics,
                    weightsSizeType,NOT_weightsSizeType,weightsSizeForWindow_0})
                    , .filterSize ({resetLogics,resetLogics,resetLogics,
                    resetLogics,resetLogics,resetLogics,resetLogics,resetLogics,
                    resetLogics,resetLogics,resetLogics,weightsSizeForWindow_0})
                    , .isFilter (weightsSizeForWindow_0), .loadNextWordList (
                    loadNextFilter), .loadWord (loadWord), .readOne (
                    weightsReadOne), .readFinal (weightsReadFinal), .aluNumber (
                    {filterAluNumber[2],filterAluNumber[1],filterAluNumber[0]})
                    ) ;
    WriteLogic_13_80 writeLogicEnt (.clk (clk), .resetState (resetLogics), .switchRam (
                     switchRam), .ramBasedAddress ({
                     currentWriteRamBaseAddress_12,currentWriteRamBaseAddress_11
                     ,currentWriteRamBaseAddress_10,currentWriteRamBaseAddress_9
                     ,currentWriteRamBaseAddress_8,currentWriteRamBaseAddress_7,
                     currentWriteRamBaseAddress_6,currentWriteRamBaseAddress_5,
                     currentWriteRamBaseAddress_4,currentWriteRamBaseAddress_3,
                     currentWriteRamBaseAddress_2,currentWriteRamBaseAddress_1,
                     currentWriteRamBaseAddress_0}), .internalBus ({
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
                     windowInternalBus[1],windowInternalBus[0]}), .ramWrite (
                     windowRamWrite), .ramDataOutBus ({windowRamDataOutBus[79],
                     windowRamDataOutBus[78],windowRamDataOutBus[77],
                     windowRamDataOutBus[76],windowRamDataOutBus[75],
                     windowRamDataOutBus[74],windowRamDataOutBus[73],
                     windowRamDataOutBus[72],windowRamDataOutBus[71],
                     windowRamDataOutBus[70],windowRamDataOutBus[69],
                     windowRamDataOutBus[68],windowRamDataOutBus[67],
                     windowRamDataOutBus[66],windowRamDataOutBus[65],
                     windowRamDataOutBus[64],windowRamDataOutBus[63],
                     windowRamDataOutBus[62],windowRamDataOutBus[61],
                     windowRamDataOutBus[60],windowRamDataOutBus[59],
                     windowRamDataOutBus[58],windowRamDataOutBus[57],
                     windowRamDataOutBus[56],windowRamDataOutBus[55],
                     windowRamDataOutBus[54],windowRamDataOutBus[53],
                     windowRamDataOutBus[52],windowRamDataOutBus[51],
                     windowRamDataOutBus[50],windowRamDataOutBus[49],
                     windowRamDataOutBus[48],windowRamDataOutBus[47],
                     windowRamDataOutBus[46],windowRamDataOutBus[45],
                     windowRamDataOutBus[44],windowRamDataOutBus[43],
                     windowRamDataOutBus[42],windowRamDataOutBus[41],
                     windowRamDataOutBus[40],windowRamDataOutBus[39],
                     windowRamDataOutBus[38],windowRamDataOutBus[37],
                     windowRamDataOutBus[36],windowRamDataOutBus[35],
                     windowRamDataOutBus[34],windowRamDataOutBus[33],
                     windowRamDataOutBus[32],windowRamDataOutBus[31],
                     windowRamDataOutBus[30],windowRamDataOutBus[29],
                     windowRamDataOutBus[28],windowRamDataOutBus[27],
                     windowRamDataOutBus[26],windowRamDataOutBus[25],
                     windowRamDataOutBus[24],windowRamDataOutBus[23],
                     windowRamDataOutBus[22],windowRamDataOutBus[21],
                     windowRamDataOutBus[20],windowRamDataOutBus[19],
                     windowRamDataOutBus[18],windowRamDataOutBus[17],
                     windowRamDataOutBus[16],windowRamDataOutBus[15],
                     windowRamDataOutBus[14],windowRamDataOutBus[13],
                     windowRamDataOutBus[12],windowRamDataOutBus[11],
                     windowRamDataOutBus[10],windowRamDataOutBus[9],
                     windowRamDataOutBus[8],windowRamDataOutBus[7],
                     windowRamDataOutBus[6],windowRamDataOutBus[5],
                     windowRamDataOutBus[4],windowRamDataOutBus[3],
                     windowRamDataOutBus[2],windowRamDataOutBus[1],
                     windowRamDataOutBus[0]}), .ramAddress ({
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
    fake_gnd ix678 (.Y (resetLogics)) ;
    fake_vcc ix676 (.Y (weightsSizeForWindow_0)) ;
    inv01 ix739 (.Y (NOT_weightsSizeType), .A (weightsSizeType)) ;
    inv01 ix319 (.Y (switchRam), .A (nx741)) ;
    nor02_2x ix742 (.Y (nx741), .A0 (reset), .A1 (layerFinished)) ;
    nand02 ix117 (.Y (currentWriteRamBaseAddress_0), .A0 (nx744), .A1 (nx749)) ;
    nand02 ix745 (.Y (nx744), .A0 (windowRamBaseAddress1[0]), .A1 (nx948)) ;
    dffr reg_ramBaseAddressSelector (.Q (ramBaseAddressSelector), .QB (
         NOT_ramBaseAddressSelector), .D (NOT_ramBaseAddressSelector), .CLK (
         layerFinished), .R (reset)) ;
    nand02 ix750 (.Y (nx749), .A0 (windowRamBaseAddress2[0]), .A1 (nx956)) ;
    nand02 ix125 (.Y (currentWriteRamBaseAddress_1), .A0 (nx752), .A1 (nx754)) ;
    nand02 ix753 (.Y (nx752), .A0 (windowRamBaseAddress1[1]), .A1 (nx948)) ;
    nand02 ix755 (.Y (nx754), .A0 (windowRamBaseAddress2[1]), .A1 (nx956)) ;
    nand02 ix133 (.Y (currentWriteRamBaseAddress_2), .A0 (nx757), .A1 (nx759)) ;
    nand02 ix758 (.Y (nx757), .A0 (windowRamBaseAddress1[2]), .A1 (nx948)) ;
    nand02 ix760 (.Y (nx759), .A0 (windowRamBaseAddress2[2]), .A1 (nx956)) ;
    nand02 ix141 (.Y (currentWriteRamBaseAddress_3), .A0 (nx762), .A1 (nx764)) ;
    nand02 ix763 (.Y (nx762), .A0 (windowRamBaseAddress1[3]), .A1 (nx948)) ;
    nand02 ix765 (.Y (nx764), .A0 (windowRamBaseAddress2[3]), .A1 (nx956)) ;
    nand02 ix149 (.Y (currentWriteRamBaseAddress_4), .A0 (nx767), .A1 (nx769)) ;
    nand02 ix768 (.Y (nx767), .A0 (windowRamBaseAddress1[4]), .A1 (nx948)) ;
    nand02 ix770 (.Y (nx769), .A0 (windowRamBaseAddress2[4]), .A1 (nx956)) ;
    nand02 ix157 (.Y (currentWriteRamBaseAddress_5), .A0 (nx772), .A1 (nx774)) ;
    nand02 ix773 (.Y (nx772), .A0 (windowRamBaseAddress1[5]), .A1 (nx948)) ;
    nand02 ix775 (.Y (nx774), .A0 (windowRamBaseAddress2[5]), .A1 (nx956)) ;
    nand02 ix165 (.Y (currentWriteRamBaseAddress_6), .A0 (nx777), .A1 (nx779)) ;
    nand02 ix778 (.Y (nx777), .A0 (windowRamBaseAddress1[6]), .A1 (nx948)) ;
    nand02 ix780 (.Y (nx779), .A0 (windowRamBaseAddress2[6]), .A1 (nx956)) ;
    nand02 ix173 (.Y (currentWriteRamBaseAddress_7), .A0 (nx782), .A1 (nx784)) ;
    nand02 ix783 (.Y (nx782), .A0 (windowRamBaseAddress1[7]), .A1 (nx950)) ;
    nand02 ix785 (.Y (nx784), .A0 (windowRamBaseAddress2[7]), .A1 (nx958)) ;
    nand02 ix181 (.Y (currentWriteRamBaseAddress_8), .A0 (nx787), .A1 (nx789)) ;
    nand02 ix788 (.Y (nx787), .A0 (windowRamBaseAddress1[8]), .A1 (nx950)) ;
    nand02 ix790 (.Y (nx789), .A0 (windowRamBaseAddress2[8]), .A1 (nx958)) ;
    nand02 ix189 (.Y (currentWriteRamBaseAddress_9), .A0 (nx792), .A1 (nx794)) ;
    nand02 ix793 (.Y (nx792), .A0 (windowRamBaseAddress1[9]), .A1 (nx950)) ;
    nand02 ix795 (.Y (nx794), .A0 (windowRamBaseAddress2[9]), .A1 (nx958)) ;
    nand02 ix197 (.Y (currentWriteRamBaseAddress_10), .A0 (nx797), .A1 (nx799)
           ) ;
    nand02 ix798 (.Y (nx797), .A0 (windowRamBaseAddress1[10]), .A1 (nx950)) ;
    nand02 ix800 (.Y (nx799), .A0 (windowRamBaseAddress2[10]), .A1 (nx958)) ;
    nand02 ix205 (.Y (currentWriteRamBaseAddress_11), .A0 (nx802), .A1 (nx804)
           ) ;
    nand02 ix803 (.Y (nx802), .A0 (windowRamBaseAddress1[11]), .A1 (nx950)) ;
    nand02 ix805 (.Y (nx804), .A0 (windowRamBaseAddress2[11]), .A1 (nx958)) ;
    nand02 ix213 (.Y (currentWriteRamBaseAddress_12), .A0 (nx807), .A1 (nx809)
           ) ;
    nand02 ix808 (.Y (nx807), .A0 (windowRamBaseAddress1[12]), .A1 (nx950)) ;
    nand02 ix810 (.Y (nx809), .A0 (windowRamBaseAddress2[12]), .A1 (nx958)) ;
    nand02 ix221 (.Y (currentReadRamBaseAddress_0), .A0 (nx812), .A1 (nx814)) ;
    nand02 ix813 (.Y (nx812), .A0 (windowRamBaseAddress2[0]), .A1 (nx950)) ;
    nand02 ix815 (.Y (nx814), .A0 (windowRamBaseAddress1[0]), .A1 (nx958)) ;
    nand02 ix229 (.Y (currentReadRamBaseAddress_1), .A0 (nx817), .A1 (nx819)) ;
    nand02 ix818 (.Y (nx817), .A0 (windowRamBaseAddress2[1]), .A1 (nx952)) ;
    nand02 ix820 (.Y (nx819), .A0 (windowRamBaseAddress1[1]), .A1 (nx960)) ;
    nand02 ix237 (.Y (currentReadRamBaseAddress_2), .A0 (nx822), .A1 (nx824)) ;
    nand02 ix823 (.Y (nx822), .A0 (windowRamBaseAddress2[2]), .A1 (nx952)) ;
    nand02 ix825 (.Y (nx824), .A0 (windowRamBaseAddress1[2]), .A1 (nx960)) ;
    nand02 ix245 (.Y (currentReadRamBaseAddress_3), .A0 (nx827), .A1 (nx829)) ;
    nand02 ix828 (.Y (nx827), .A0 (windowRamBaseAddress2[3]), .A1 (nx952)) ;
    nand02 ix830 (.Y (nx829), .A0 (windowRamBaseAddress1[3]), .A1 (nx960)) ;
    nand02 ix253 (.Y (currentReadRamBaseAddress_4), .A0 (nx832), .A1 (nx834)) ;
    nand02 ix833 (.Y (nx832), .A0 (windowRamBaseAddress2[4]), .A1 (nx952)) ;
    nand02 ix835 (.Y (nx834), .A0 (windowRamBaseAddress1[4]), .A1 (nx960)) ;
    nand02 ix261 (.Y (currentReadRamBaseAddress_5), .A0 (nx837), .A1 (nx839)) ;
    nand02 ix838 (.Y (nx837), .A0 (windowRamBaseAddress2[5]), .A1 (nx952)) ;
    nand02 ix840 (.Y (nx839), .A0 (windowRamBaseAddress1[5]), .A1 (nx960)) ;
    nand02 ix269 (.Y (currentReadRamBaseAddress_6), .A0 (nx842), .A1 (nx844)) ;
    nand02 ix843 (.Y (nx842), .A0 (windowRamBaseAddress2[6]), .A1 (nx952)) ;
    nand02 ix845 (.Y (nx844), .A0 (windowRamBaseAddress1[6]), .A1 (nx960)) ;
    nand02 ix277 (.Y (currentReadRamBaseAddress_7), .A0 (nx847), .A1 (nx849)) ;
    nand02 ix848 (.Y (nx847), .A0 (windowRamBaseAddress2[7]), .A1 (nx952)) ;
    nand02 ix850 (.Y (nx849), .A0 (windowRamBaseAddress1[7]), .A1 (nx960)) ;
    nand02 ix285 (.Y (currentReadRamBaseAddress_8), .A0 (nx852), .A1 (nx854)) ;
    nand02 ix853 (.Y (nx852), .A0 (windowRamBaseAddress2[8]), .A1 (nx954)) ;
    nand02 ix855 (.Y (nx854), .A0 (windowRamBaseAddress1[8]), .A1 (nx962)) ;
    nand02 ix293 (.Y (currentReadRamBaseAddress_9), .A0 (nx857), .A1 (nx859)) ;
    nand02 ix858 (.Y (nx857), .A0 (windowRamBaseAddress2[9]), .A1 (nx954)) ;
    nand02 ix860 (.Y (nx859), .A0 (windowRamBaseAddress1[9]), .A1 (nx962)) ;
    nand02 ix301 (.Y (currentReadRamBaseAddress_10), .A0 (nx862), .A1 (nx864)) ;
    nand02 ix863 (.Y (nx862), .A0 (windowRamBaseAddress2[10]), .A1 (nx954)) ;
    nand02 ix865 (.Y (nx864), .A0 (windowRamBaseAddress1[10]), .A1 (nx962)) ;
    nand02 ix309 (.Y (currentReadRamBaseAddress_11), .A0 (nx867), .A1 (nx869)) ;
    nand02 ix868 (.Y (nx867), .A0 (windowRamBaseAddress2[11]), .A1 (nx954)) ;
    nand02 ix870 (.Y (nx869), .A0 (windowRamBaseAddress1[11]), .A1 (nx962)) ;
    nand02 ix317 (.Y (currentReadRamBaseAddress_12), .A0 (nx872), .A1 (nx874)) ;
    nand02 ix873 (.Y (nx872), .A0 (windowRamBaseAddress2[12]), .A1 (nx954)) ;
    nand02 ix875 (.Y (nx874), .A0 (windowRamBaseAddress1[12]), .A1 (nx962)) ;
    nand02 ix7 (.Y (windowRamAddress[0]), .A0 (nx877), .A1 (nx879)) ;
    nand02 ix878 (.Y (nx877), .A0 (writeLogicRamAddress_0), .A1 (write)) ;
    nand02 ix880 (.Y (nx879), .A0 (readLogicRamAddress_0), .A1 (nx966)) ;
    nand02 ix15 (.Y (windowRamAddress[1]), .A0 (nx884), .A1 (nx886)) ;
    nand02 ix885 (.Y (nx884), .A0 (writeLogicRamAddress_1), .A1 (write)) ;
    nand02 ix887 (.Y (nx886), .A0 (readLogicRamAddress_1), .A1 (nx966)) ;
    nand02 ix23 (.Y (windowRamAddress[2]), .A0 (nx889), .A1 (nx891)) ;
    nand02 ix890 (.Y (nx889), .A0 (writeLogicRamAddress_2), .A1 (write)) ;
    nand02 ix892 (.Y (nx891), .A0 (readLogicRamAddress_2), .A1 (nx966)) ;
    nand02 ix31 (.Y (windowRamAddress[3]), .A0 (nx894), .A1 (nx896)) ;
    nand02 ix895 (.Y (nx894), .A0 (writeLogicRamAddress_3), .A1 (write)) ;
    nand02 ix897 (.Y (nx896), .A0 (readLogicRamAddress_3), .A1 (nx966)) ;
    nand02 ix39 (.Y (windowRamAddress[4]), .A0 (nx899), .A1 (nx901)) ;
    nand02 ix900 (.Y (nx899), .A0 (writeLogicRamAddress_4), .A1 (write)) ;
    nand02 ix902 (.Y (nx901), .A0 (readLogicRamAddress_4), .A1 (nx966)) ;
    nand02 ix47 (.Y (windowRamAddress[5]), .A0 (nx904), .A1 (nx906)) ;
    nand02 ix905 (.Y (nx904), .A0 (writeLogicRamAddress_5), .A1 (write)) ;
    nand02 ix907 (.Y (nx906), .A0 (readLogicRamAddress_5), .A1 (nx966)) ;
    nand02 ix55 (.Y (windowRamAddress[6]), .A0 (nx909), .A1 (nx911)) ;
    nand02 ix910 (.Y (nx909), .A0 (writeLogicRamAddress_6), .A1 (write)) ;
    nand02 ix912 (.Y (nx911), .A0 (readLogicRamAddress_6), .A1 (nx966)) ;
    nand02 ix63 (.Y (windowRamAddress[7]), .A0 (nx914), .A1 (nx916)) ;
    nand02 ix915 (.Y (nx914), .A0 (writeLogicRamAddress_7), .A1 (write)) ;
    nand02 ix917 (.Y (nx916), .A0 (readLogicRamAddress_7), .A1 (nx968)) ;
    nand02 ix71 (.Y (windowRamAddress[8]), .A0 (nx919), .A1 (nx921)) ;
    nand02 ix920 (.Y (nx919), .A0 (writeLogicRamAddress_8), .A1 (write)) ;
    nand02 ix922 (.Y (nx921), .A0 (readLogicRamAddress_8), .A1 (nx968)) ;
    nand02 ix79 (.Y (windowRamAddress[9]), .A0 (nx924), .A1 (nx926)) ;
    nand02 ix925 (.Y (nx924), .A0 (writeLogicRamAddress_9), .A1 (write)) ;
    nand02 ix927 (.Y (nx926), .A0 (readLogicRamAddress_9), .A1 (nx968)) ;
    nand02 ix87 (.Y (windowRamAddress[10]), .A0 (nx929), .A1 (nx931)) ;
    nand02 ix930 (.Y (nx929), .A0 (writeLogicRamAddress_10), .A1 (write)) ;
    nand02 ix932 (.Y (nx931), .A0 (readLogicRamAddress_10), .A1 (nx968)) ;
    nand02 ix95 (.Y (windowRamAddress[11]), .A0 (nx934), .A1 (nx936)) ;
    nand02 ix935 (.Y (nx934), .A0 (writeLogicRamAddress_11), .A1 (write)) ;
    nand02 ix937 (.Y (nx936), .A0 (readLogicRamAddress_11), .A1 (nx968)) ;
    nand02 ix103 (.Y (windowRamAddress[12]), .A0 (nx939), .A1 (nx941)) ;
    nand02 ix940 (.Y (nx939), .A0 (write), .A1 (writeLogicRamAddress_12)) ;
    nand02 ix942 (.Y (nx941), .A0 (nx968), .A1 (readLogicRamAddress_12)) ;
    inv02 ix947 (.Y (nx948), .A (nx962)) ;
    inv02 ix949 (.Y (nx950), .A (nx962)) ;
    inv02 ix951 (.Y (nx952), .A (nx964)) ;
    inv02 ix953 (.Y (nx954), .A (nx964)) ;
    inv02 ix955 (.Y (nx956), .A (ramBaseAddressSelector)) ;
    inv02 ix957 (.Y (nx958), .A (ramBaseAddressSelector)) ;
    inv02 ix959 (.Y (nx960), .A (ramBaseAddressSelector)) ;
    inv02 ix961 (.Y (nx962), .A (ramBaseAddressSelector)) ;
    inv02 ix963 (.Y (nx964), .A (ramBaseAddressSelector)) ;
    inv02 ix965 (.Y (nx966), .A (write)) ;
    inv02 ix967 (.Y (nx968), .A (write)) ;
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

    wire currentState_2, addressRegOut_12, addressRegOut_11, addressRegOut_10, 
         addressRegOut_9, addressRegOut_8, addressRegOut_7, addressRegOut_6, 
         addressRegOut_5, addressRegOut_4, addressRegOut_3, addressRegOut_2, 
         addressRegOut_1, addressRegOut_0, addressRegIn_12, addressRegIn_11, 
         addressRegIn_10, addressRegIn_9, addressRegIn_8, addressRegIn_7, 
         addressRegIn_6, addressRegIn_5, addressRegIn_4, addressRegIn_3, 
         addressRegIn_2, addressRegIn_1, addressRegIn_0, baseAddressCounterClk, 
         dmaCountIn_4, dmaCountIn_3, dmaCountIn_2, dmaCountIn_1, dmaCountIn_0, 
         nextState_1, currentState_4, nx44, NOT_clk, currentState_3, 
         currentState_0, nx38, nx42, nx51, nx61, nx71, nx81, nx91, nx102, nx104, 
         nx107, nx109, nx113, nx117, nx121, nx125, nx130, nx133, nx135, nx137, 
         nx139, nx143, nx145, nx148, nx151, nx154, nx157, nx160, nx181, nx183, 
         nx185;
    wire [1:0] \$dummy ;




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
                   nextState_1), .internalBus ({internalBus[79],internalBus[78],
                   internalBus[77],internalBus[76],internalBus[75],
                   internalBus[74],internalBus[73],internalBus[72],
                   internalBus[71],internalBus[70],internalBus[69],
                   internalBus[68],internalBus[67],internalBus[66],
                   internalBus[65],internalBus[64],internalBus[63],
                   internalBus[62],internalBus[61],internalBus[60],
                   internalBus[59],internalBus[58],internalBus[57],
                   internalBus[56],internalBus[55],internalBus[54],
                   internalBus[53],internalBus[52],internalBus[51],
                   internalBus[50],internalBus[49],internalBus[48],
                   internalBus[47],internalBus[46],internalBus[45],
                   internalBus[44],internalBus[43],internalBus[42],
                   internalBus[41],internalBus[40],internalBus[39],
                   internalBus[38],internalBus[37],internalBus[36],
                   internalBus[35],internalBus[34],internalBus[33],
                   internalBus[32],internalBus[31],internalBus[30],
                   internalBus[29],internalBus[28],internalBus[27],
                   internalBus[26],internalBus[25],internalBus[24],
                   internalBus[23],internalBus[22],internalBus[21],
                   internalBus[20],internalBus[19],internalBus[18],
                   internalBus[17],internalBus[16],internalBus[15],
                   internalBus[14],internalBus[13],internalBus[12],
                   internalBus[11],internalBus[10],internalBus[9],internalBus[8]
                   ,internalBus[7],internalBus[6],internalBus[5],internalBus[4],
                   internalBus[3],internalBus[2],internalBus[1],internalBus[0]})
                   , .ramWrite (\$dummy [0]), .ramDataOutBus ({ramDataOutBus[79]
                   ,ramDataOutBus[78],ramDataOutBus[77],ramDataOutBus[76],
                   ramDataOutBus[75],ramDataOutBus[74],ramDataOutBus[73],
                   ramDataOutBus[72],ramDataOutBus[71],ramDataOutBus[70],
                   ramDataOutBus[69],ramDataOutBus[68],ramDataOutBus[67],
                   ramDataOutBus[66],ramDataOutBus[65],ramDataOutBus[64],
                   ramDataOutBus[63],ramDataOutBus[62],ramDataOutBus[61],
                   ramDataOutBus[60],ramDataOutBus[59],ramDataOutBus[58],
                   ramDataOutBus[57],ramDataOutBus[56],ramDataOutBus[55],
                   ramDataOutBus[54],ramDataOutBus[53],ramDataOutBus[52],
                   ramDataOutBus[51],ramDataOutBus[50],ramDataOutBus[49],
                   ramDataOutBus[48],ramDataOutBus[47],ramDataOutBus[46],
                   ramDataOutBus[45],ramDataOutBus[44],ramDataOutBus[43],
                   ramDataOutBus[42],ramDataOutBus[41],ramDataOutBus[40],
                   ramDataOutBus[39],ramDataOutBus[38],ramDataOutBus[37],
                   ramDataOutBus[36],ramDataOutBus[35],ramDataOutBus[34],
                   ramDataOutBus[33],ramDataOutBus[32],ramDataOutBus[31],
                   ramDataOutBus[30],ramDataOutBus[29],ramDataOutBus[28],
                   ramDataOutBus[27],ramDataOutBus[26],ramDataOutBus[25],
                   ramDataOutBus[24],ramDataOutBus[23],ramDataOutBus[22],
                   ramDataOutBus[21],ramDataOutBus[20],ramDataOutBus[19],
                   ramDataOutBus[18],ramDataOutBus[17],ramDataOutBus[16],
                   ramDataOutBus[15],ramDataOutBus[14],ramDataOutBus[13],
                   ramDataOutBus[12],ramDataOutBus[11],ramDataOutBus[10],
                   ramDataOutBus[9],ramDataOutBus[8],ramDataOutBus[7],
                   ramDataOutBus[6],ramDataOutBus[5],ramDataOutBus[4],
                   ramDataOutBus[3],ramDataOutBus[2],ramDataOutBus[1],
                   ramDataOutBus[0]}), .ramWriteAddress ({ramAddress[12],
                   ramAddress[11],ramAddress[10],ramAddress[9],ramAddress[8],
                   ramAddress[7],ramAddress[6],ramAddress[5],ramAddress[4],
                   ramAddress[3],ramAddress[2],ramAddress[1],ramAddress[0]}), .MFC (
                   MFC), .writeComplete (writeDone), .writeCompleteOne (
                   writeDoneOne)) ;
    Counter2_13 baseAddressCounter (.load ({addressRegIn_12,addressRegIn_11,
                addressRegIn_10,addressRegIn_9,addressRegIn_8,addressRegIn_7,
                addressRegIn_6,addressRegIn_5,addressRegIn_4,addressRegIn_3,
                addressRegIn_2,addressRegIn_1,addressRegIn_0}), .reset (
                nextState_1), .clk (baseAddressCounterClk), .isLoad (nx181), .count (
                {addressRegOut_12,addressRegOut_11,addressRegOut_10,
                addressRegOut_9,addressRegOut_8,addressRegOut_7,addressRegOut_6,
                addressRegOut_5,addressRegOut_4,addressRegOut_3,addressRegOut_2,
                addressRegOut_1,addressRegOut_0})) ;
    fake_gnd ix6 (.Y (nextState_1)) ;
    nor02_2x ix75 (.Y (ramWrite), .A0 (nx102), .A1 (nx104)) ;
    inv01 ix103 (.Y (nx102), .A (write)) ;
    mux21 ix82 (.Y (nx81), .A0 (nx107), .A1 (nx104), .S0 (nx139)) ;
    nand02 ix108 (.Y (nx107), .A0 (nx109), .A1 (currentState_3)) ;
    inv01 ix110 (.Y (nx109), .A (switchRam)) ;
    mux21 ix72 (.Y (nx71), .A0 (nx113), .A1 (nx145), .S0 (nx139)) ;
    nand02 ix114 (.Y (nx113), .A0 (nx109), .A1 (currentState_2)) ;
    mux21 ix62 (.Y (nx61), .A0 (nx117), .A1 (nx143), .S0 (nx139)) ;
    nand02 ix118 (.Y (nx117), .A0 (nx109), .A1 (currentState_0)) ;
    mux21 ix52 (.Y (nx51), .A0 (nx121), .A1 (nx137), .S0 (nx139)) ;
    oai21 ix122 (.Y (nx121), .A0 (nx181), .A1 (currentState_4), .B0 (nx109)) ;
    oai21 ix92 (.Y (nx91), .A0 (nx125), .A1 (nx44), .B0 (nx109)) ;
    dff reg_currentState_1 (.Q (\$dummy [1]), .QB (nx125), .D (nx91), .CLK (
        NOT_clk)) ;
    inv01 ix128 (.Y (NOT_clk), .A (clk)) ;
    nand04 ix45 (.Y (nx44), .A0 (nx130), .A1 (nx109), .A2 (nx133), .A3 (nx135)
           ) ;
    nand02 ix131 (.Y (nx130), .A0 (writeDone), .A1 (currentState_4)) ;
    dff reg_currentState_4 (.Q (currentState_4), .QB (nx104), .D (nx81), .CLK (
        NOT_clk)) ;
    nand02 ix134 (.Y (nx133), .A0 (write), .A1 (currentState_0)) ;
    nand02 ix136 (.Y (nx135), .A0 (nx104), .A1 (nx137)) ;
    dff reg_currentState_0 (.Q (currentState_0), .QB (nx137), .D (nx51), .CLK (
        NOT_clk)) ;
    nor02_2x ix140 (.Y (nx139), .A0 (nx42), .A1 (nx38)) ;
    nand02 ix43 (.Y (nx42), .A0 (nx130), .A1 (nx109)) ;
    nand02 ix39 (.Y (nx38), .A0 (nx133), .A1 (nx135)) ;
    dff reg_currentState_2 (.Q (currentState_2), .QB (nx143), .D (nx61), .CLK (
        NOT_clk)) ;
    dff reg_currentState_3 (.Q (currentState_3), .QB (nx145), .D (nx71), .CLK (
        NOT_clk)) ;
    nor02_2x ix77 (.Y (dmaCountIn_0), .A0 (nx148), .A1 (nx143)) ;
    inv01 ix149 (.Y (nx148), .A (outputSize[0])) ;
    nor02_2x ix79 (.Y (dmaCountIn_1), .A0 (nx151), .A1 (nx143)) ;
    inv01 ix152 (.Y (nx151), .A (outputSize[1])) ;
    nor02_2x ix81 (.Y (dmaCountIn_2), .A0 (nx154), .A1 (nx143)) ;
    inv01 ix155 (.Y (nx154), .A (outputSize[2])) ;
    nor02_2x ix83 (.Y (dmaCountIn_3), .A0 (nx157), .A1 (nx143)) ;
    inv01 ix158 (.Y (nx157), .A (outputSize[3])) ;
    nor02_2x ix85 (.Y (dmaCountIn_4), .A0 (nx160), .A1 (nx143)) ;
    inv01 ix161 (.Y (nx160), .A (outputSize[4])) ;
    mux21 ix93 (.Y (baseAddressCounterClk), .A0 (nx125), .A1 (nx145), .S0 (clk)
          ) ;
    latch lat_addressRegIn_0 (.Q (addressRegIn_0), .D (ramBasedAddress[0]), .CLK (
          nx181)) ;
    latch lat_addressRegIn_1 (.Q (addressRegIn_1), .D (ramBasedAddress[1]), .CLK (
          nx181)) ;
    latch lat_addressRegIn_2 (.Q (addressRegIn_2), .D (ramBasedAddress[2]), .CLK (
          nx181)) ;
    latch lat_addressRegIn_3 (.Q (addressRegIn_3), .D (ramBasedAddress[3]), .CLK (
          nx181)) ;
    latch lat_addressRegIn_4 (.Q (addressRegIn_4), .D (ramBasedAddress[4]), .CLK (
          nx181)) ;
    latch lat_addressRegIn_5 (.Q (addressRegIn_5), .D (ramBasedAddress[5]), .CLK (
          nx183)) ;
    latch lat_addressRegIn_6 (.Q (addressRegIn_6), .D (ramBasedAddress[6]), .CLK (
          nx183)) ;
    latch lat_addressRegIn_7 (.Q (addressRegIn_7), .D (ramBasedAddress[7]), .CLK (
          nx183)) ;
    latch lat_addressRegIn_8 (.Q (addressRegIn_8), .D (ramBasedAddress[8]), .CLK (
          nx183)) ;
    latch lat_addressRegIn_9 (.Q (addressRegIn_9), .D (ramBasedAddress[9]), .CLK (
          nx183)) ;
    latch lat_addressRegIn_10 (.Q (addressRegIn_10), .D (ramBasedAddress[10]), .CLK (
          nx183)) ;
    latch lat_addressRegIn_11 (.Q (addressRegIn_11), .D (ramBasedAddress[11]), .CLK (
          nx183)) ;
    latch lat_addressRegIn_12 (.Q (addressRegIn_12), .D (ramBasedAddress[12]), .CLK (
          nx185)) ;
    inv02 ix180 (.Y (nx181), .A (nx125)) ;
    inv02 ix182 (.Y (nx183), .A (nx125)) ;
    inv02 ix184 (.Y (nx185), .A (nx125)) ;
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
         toBeAdded_2, toBeAdded_1, toBeAdded_0, currentCount_2, nx190, 
         currentCount_1, currentCount_0, nx210, nx240, currentCount_3, nx246, 
         nx260, nx278, nx280, currentCount_4, nx292, nx300, nx135, nx145, nx155, 
         nx165, nx175, nx187, nx191, nx197, nx199, nx201, nx205, nx211, nx213, 
         nx217, nx223, nx227, nx229, nx233, nx235, nx239, nx241, nx242, nx245, 
         nx247, nx249, nx251, nx255, nx257, nx264, nx267, nx271, nx275, nx277, 
         nx281, nx287, nx317, nx320, nx323, nx326, nx329, nx332, nx335, nx338, 
         nx341, nx344, nx347, nx350, nx353, nx356, nx359, nx362, nx365, nx368, 
         nx371, nx374, nx377, nx380, nx383, nx386, nx389, nx392, nx395, nx398, 
         nx401, nx404, nx407, nx410, nx413, nx416, nx419, nx422, nx425, nx428, 
         nx431, nx434, nx437, nx440, nx443, nx446, nx449, nx452, nx455, nx458, 
         nx461, nx464, nx467, nx470, nx473, nx476, nx479, nx482, nx485, nx488, 
         nx491, nx494, nx497, nx500, nx503, nx506, nx509, nx512, nx515, nx518, 
         nx521, nx524, nx527, nx530, nx533, nx536, nx539, nx542, nx545, nx548, 
         nx551, nx554, nx561, nx563, nx565, nx567, nx569, nx571, nx573, nx575, 
         nx577, nx579, nx581, nx583, nx589, nx591, nx593, nx595, nx597, nx599, 
         nx601, nx603, nx605, nx607;
    wire [13:0] \$dummy ;




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
                        nx595), .MFC (MFC), .count ({ramWriteAddress[12],
                        ramWriteAddress[11],ramWriteAddress[10],
                        ramWriteAddress[9],ramWriteAddress[8],ramWriteAddress[7]
                        ,ramWriteAddress[6],ramWriteAddress[5],
                        ramWriteAddress[4],ramWriteAddress[3],ramWriteAddress[2]
                        ,ramWriteAddress[1],ramWriteAddress[0]})) ;
    fake_gnd ix11 (.Y (ramWrite)) ;
    nor02ii ix303 (.Y (writeComplete), .A0 (nx187), .A1 (nx300)) ;
    nor02_2x ix188 (.Y (nx187), .A0 (nx280), .A1 (nx278)) ;
    nor03_2x ix281 (.Y (nx280), .A0 (nx191), .A1 (currentCount_3), .A2 (nx251)
             ) ;
    inv01 ix192 (.Y (nx191), .A (clk)) ;
    dff writecounter_counterReg_reg_Q_3 (.Q (currentCount_3), .QB (nx249), .D (
        nx165), .CLK (clk)) ;
    nand02 ix166 (.Y (nx165), .A0 (nx197), .A1 (nx201)) ;
    nand02 ix198 (.Y (nx197), .A0 (currentCount_3), .A1 (nx199)) ;
    nor02_2x ix200 (.Y (nx199), .A0 (MFC), .A1 (nx595)) ;
    nand02 ix202 (.Y (nx201), .A0 (nx260), .A1 (nx190)) ;
    oai21 ix261 (.Y (nx260), .A0 (nx595), .A1 (nx205), .B0 (nx247)) ;
    dff writecounter_counterReg_reg_Q_2 (.Q (currentCount_2), .QB (nx245), .D (
        nx155), .CLK (clk)) ;
    nand02 ix156 (.Y (nx155), .A0 (nx211), .A1 (nx213)) ;
    nand02 ix212 (.Y (nx211), .A0 (currentCount_2), .A1 (nx199)) ;
    nand02 ix214 (.Y (nx213), .A0 (nx240), .A1 (nx190)) ;
    oai21 ix241 (.Y (nx240), .A0 (nx595), .A1 (nx217), .B0 (nx242)) ;
    dff writecounter_counterReg_reg_Q_1 (.Q (currentCount_1), .QB (nx241), .D (
        nx145), .CLK (clk)) ;
    oai21 ix146 (.Y (nx145), .A0 (nx223), .A1 (nx199), .B0 (nx239)) ;
    aoi21 ix224 (.Y (nx223), .A0 (counter[1]), .A1 (nx595), .B0 (nx210)) ;
    nor02_2x ix211 (.Y (nx210), .A0 (nx595), .A1 (nx227)) ;
    oai21 ix136 (.Y (nx135), .A0 (nx233), .A1 (nx199), .B0 (nx235)) ;
    mux21 ix234 (.Y (nx233), .A0 (nx229), .A1 (counter[0]), .S0 (nx595)) ;
    nand02 ix236 (.Y (nx235), .A0 (currentCount_0), .A1 (nx199)) ;
    dff writecounter_counterReg_reg_Q_0 (.Q (currentCount_0), .QB (nx229), .D (
        nx135), .CLK (clk)) ;
    nand02 ix240 (.Y (nx239), .A0 (currentCount_1), .A1 (nx199)) ;
    nand02 ix243 (.Y (nx242), .A0 (counter[2]), .A1 (nx597)) ;
    inv01 ix191 (.Y (nx190), .A (nx199)) ;
    nand02 ix248 (.Y (nx247), .A0 (counter[3]), .A1 (nx597)) ;
    nand03 ix252 (.Y (nx251), .A0 (nx245), .A1 (nx241), .A2 (nx229)) ;
    nor03_2x ix279 (.Y (nx278), .A0 (currentCount_2), .A1 (nx255), .A2 (nx257)
             ) ;
    nand02 ix256 (.Y (nx255), .A0 (nx191), .A1 (nx249)) ;
    nand02 ix258 (.Y (nx257), .A0 (nx241), .A1 (currentCount_0)) ;
    nor02_2x ix301 (.Y (nx300), .A0 (currentCount_4), .A1 (nx281)) ;
    dff writecounter_counterReg_reg_Q_4 (.Q (currentCount_4), .QB (\$dummy [0])
        , .D (nx175), .CLK (clk)) ;
    nand02 ix176 (.Y (nx175), .A0 (nx264), .A1 (nx267)) ;
    nand02 ix266 (.Y (nx264), .A0 (currentCount_4), .A1 (nx199)) ;
    nand02 ix268 (.Y (nx267), .A0 (nx292), .A1 (nx190)) ;
    oai21 ix293 (.Y (nx292), .A0 (nx597), .A1 (nx271), .B0 (nx277)) ;
    xnor2 ix272 (.Y (nx271), .A0 (currentCount_4), .A1 (nx246)) ;
    nor03_2x ix247 (.Y (nx246), .A0 (currentCount_3), .A1 (currentCount_2), .A2 (
             nx275)) ;
    nand02 ix276 (.Y (nx275), .A0 (nx241), .A1 (nx229)) ;
    nand02 ix278 (.Y (nx277), .A0 (counter[4]), .A1 (nx597)) ;
    nand02 ix282 (.Y (nx281), .A0 (nx603), .A1 (MFC)) ;
    nor02_2x ix297 (.Y (writeCompleteOne), .A0 (nx607), .A1 (nx287)) ;
    inv01 ix288 (.Y (nx287), .A (MFC)) ;
    dff writeStepRegister_reg_Q_0 (.Q (toBeAdded_0), .QB (\$dummy [1]), .D (
        writeStep[0]), .CLK (nx597)) ;
    dff writeStepRegister_reg_Q_1 (.Q (toBeAdded_1), .QB (\$dummy [2]), .D (
        writeStep[1]), .CLK (nx597)) ;
    dff writeStepRegister_reg_Q_2 (.Q (toBeAdded_2), .QB (\$dummy [3]), .D (
        writeStep[2]), .CLK (nx597)) ;
    dff writeStepRegister_reg_Q_3 (.Q (toBeAdded_3), .QB (\$dummy [4]), .D (
        writeStep[3]), .CLK (nx599)) ;
    dff writeStepRegister_reg_Q_4 (.Q (toBeAdded_4), .QB (\$dummy [5]), .D (
        writeStep[4]), .CLK (nx599)) ;
    dff writeStepRegister_reg_Q_5 (.Q (toBeAdded_5), .QB (\$dummy [6]), .D (
        writeStep[5]), .CLK (nx599)) ;
    dff writeStepRegister_reg_Q_6 (.Q (toBeAdded_6), .QB (\$dummy [7]), .D (
        writeStep[6]), .CLK (nx599)) ;
    dff writeStepRegister_reg_Q_7 (.Q (toBeAdded_7), .QB (\$dummy [8]), .D (
        writeStep[7]), .CLK (nx599)) ;
    dff writeStepRegister_reg_Q_8 (.Q (toBeAdded_8), .QB (\$dummy [9]), .D (
        writeStep[8]), .CLK (nx599)) ;
    dff writeStepRegister_reg_Q_9 (.Q (toBeAdded_9), .QB (\$dummy [10]), .D (
        writeStep[9]), .CLK (nx599)) ;
    dff writeStepRegister_reg_Q_10 (.Q (toBeAdded_10), .QB (\$dummy [11]), .D (
        writeStep[10]), .CLK (nx601)) ;
    dff writeStepRegister_reg_Q_11 (.Q (toBeAdded_11), .QB (\$dummy [12]), .D (
        writeStep[11]), .CLK (nx601)) ;
    dff writeStepRegister_reg_Q_12 (.Q (toBeAdded_12), .QB (\$dummy [13]), .D (
        writeStep[12]), .CLK (nx601)) ;
    nor02_2x ix31 (.Y (ramDataOutBus[0]), .A0 (nx317), .A1 (nx607)) ;
    inv01 ix318 (.Y (nx317), .A (internalBus[0])) ;
    nor02_2x ix33 (.Y (ramDataOutBus[1]), .A0 (nx320), .A1 (nx607)) ;
    inv01 ix321 (.Y (nx320), .A (internalBus[1])) ;
    nor02_2x ix35 (.Y (ramDataOutBus[2]), .A0 (nx323), .A1 (nx607)) ;
    inv01 ix324 (.Y (nx323), .A (internalBus[2])) ;
    nor02_2x ix37 (.Y (ramDataOutBus[3]), .A0 (nx326), .A1 (nx607)) ;
    inv01 ix327 (.Y (nx326), .A (internalBus[3])) ;
    nor02_2x ix39 (.Y (ramDataOutBus[4]), .A0 (nx329), .A1 (nx607)) ;
    inv01 ix330 (.Y (nx329), .A (internalBus[4])) ;
    nor02_2x ix41 (.Y (ramDataOutBus[5]), .A0 (nx332), .A1 (nx607)) ;
    inv01 ix333 (.Y (nx332), .A (internalBus[5])) ;
    nor02_2x ix43 (.Y (ramDataOutBus[6]), .A0 (nx335), .A1 (nx563)) ;
    inv01 ix336 (.Y (nx335), .A (internalBus[6])) ;
    nor02_2x ix45 (.Y (ramDataOutBus[7]), .A0 (nx338), .A1 (nx563)) ;
    inv01 ix339 (.Y (nx338), .A (internalBus[7])) ;
    nor02_2x ix47 (.Y (ramDataOutBus[8]), .A0 (nx341), .A1 (nx563)) ;
    inv01 ix342 (.Y (nx341), .A (internalBus[8])) ;
    nor02_2x ix49 (.Y (ramDataOutBus[9]), .A0 (nx344), .A1 (nx563)) ;
    inv01 ix345 (.Y (nx344), .A (internalBus[9])) ;
    nor02_2x ix51 (.Y (ramDataOutBus[10]), .A0 (nx347), .A1 (nx563)) ;
    inv01 ix348 (.Y (nx347), .A (internalBus[10])) ;
    nor02_2x ix53 (.Y (ramDataOutBus[11]), .A0 (nx350), .A1 (nx563)) ;
    inv01 ix351 (.Y (nx350), .A (internalBus[11])) ;
    nor02_2x ix55 (.Y (ramDataOutBus[12]), .A0 (nx353), .A1 (nx563)) ;
    inv01 ix354 (.Y (nx353), .A (internalBus[12])) ;
    nor02_2x ix57 (.Y (ramDataOutBus[13]), .A0 (nx356), .A1 (nx565)) ;
    inv01 ix357 (.Y (nx356), .A (internalBus[13])) ;
    nor02_2x ix59 (.Y (ramDataOutBus[14]), .A0 (nx359), .A1 (nx565)) ;
    inv01 ix360 (.Y (nx359), .A (internalBus[14])) ;
    nor02_2x ix61 (.Y (ramDataOutBus[15]), .A0 (nx362), .A1 (nx565)) ;
    inv01 ix363 (.Y (nx362), .A (internalBus[15])) ;
    nor02_2x ix63 (.Y (ramDataOutBus[16]), .A0 (nx365), .A1 (nx565)) ;
    inv01 ix366 (.Y (nx365), .A (internalBus[16])) ;
    nor02_2x ix65 (.Y (ramDataOutBus[17]), .A0 (nx368), .A1 (nx565)) ;
    inv01 ix369 (.Y (nx368), .A (internalBus[17])) ;
    nor02_2x ix67 (.Y (ramDataOutBus[18]), .A0 (nx371), .A1 (nx565)) ;
    inv01 ix372 (.Y (nx371), .A (internalBus[18])) ;
    nor02_2x ix69 (.Y (ramDataOutBus[19]), .A0 (nx374), .A1 (nx565)) ;
    inv01 ix375 (.Y (nx374), .A (internalBus[19])) ;
    nor02_2x ix71 (.Y (ramDataOutBus[20]), .A0 (nx377), .A1 (nx567)) ;
    inv01 ix378 (.Y (nx377), .A (internalBus[20])) ;
    nor02_2x ix73 (.Y (ramDataOutBus[21]), .A0 (nx380), .A1 (nx567)) ;
    inv01 ix381 (.Y (nx380), .A (internalBus[21])) ;
    nor02_2x ix75 (.Y (ramDataOutBus[22]), .A0 (nx383), .A1 (nx567)) ;
    inv01 ix384 (.Y (nx383), .A (internalBus[22])) ;
    nor02_2x ix77 (.Y (ramDataOutBus[23]), .A0 (nx386), .A1 (nx567)) ;
    inv01 ix387 (.Y (nx386), .A (internalBus[23])) ;
    nor02_2x ix79 (.Y (ramDataOutBus[24]), .A0 (nx389), .A1 (nx567)) ;
    inv01 ix390 (.Y (nx389), .A (internalBus[24])) ;
    nor02_2x ix81 (.Y (ramDataOutBus[25]), .A0 (nx392), .A1 (nx567)) ;
    inv01 ix393 (.Y (nx392), .A (internalBus[25])) ;
    nor02_2x ix83 (.Y (ramDataOutBus[26]), .A0 (nx395), .A1 (nx567)) ;
    inv01 ix396 (.Y (nx395), .A (internalBus[26])) ;
    nor02_2x ix85 (.Y (ramDataOutBus[27]), .A0 (nx398), .A1 (nx569)) ;
    inv01 ix399 (.Y (nx398), .A (internalBus[27])) ;
    nor02_2x ix87 (.Y (ramDataOutBus[28]), .A0 (nx401), .A1 (nx569)) ;
    inv01 ix402 (.Y (nx401), .A (internalBus[28])) ;
    nor02_2x ix89 (.Y (ramDataOutBus[29]), .A0 (nx404), .A1 (nx569)) ;
    inv01 ix405 (.Y (nx404), .A (internalBus[29])) ;
    nor02_2x ix91 (.Y (ramDataOutBus[30]), .A0 (nx407), .A1 (nx569)) ;
    inv01 ix408 (.Y (nx407), .A (internalBus[30])) ;
    nor02_2x ix93 (.Y (ramDataOutBus[31]), .A0 (nx410), .A1 (nx569)) ;
    inv01 ix411 (.Y (nx410), .A (internalBus[31])) ;
    nor02_2x ix95 (.Y (ramDataOutBus[32]), .A0 (nx413), .A1 (nx569)) ;
    inv01 ix414 (.Y (nx413), .A (internalBus[32])) ;
    nor02_2x ix97 (.Y (ramDataOutBus[33]), .A0 (nx416), .A1 (nx569)) ;
    inv01 ix417 (.Y (nx416), .A (internalBus[33])) ;
    nor02_2x ix99 (.Y (ramDataOutBus[34]), .A0 (nx419), .A1 (nx571)) ;
    inv01 ix420 (.Y (nx419), .A (internalBus[34])) ;
    nor02_2x ix101 (.Y (ramDataOutBus[35]), .A0 (nx422), .A1 (nx571)) ;
    inv01 ix423 (.Y (nx422), .A (internalBus[35])) ;
    nor02_2x ix103 (.Y (ramDataOutBus[36]), .A0 (nx425), .A1 (nx571)) ;
    inv01 ix426 (.Y (nx425), .A (internalBus[36])) ;
    nor02_2x ix105 (.Y (ramDataOutBus[37]), .A0 (nx428), .A1 (nx571)) ;
    inv01 ix429 (.Y (nx428), .A (internalBus[37])) ;
    nor02_2x ix107 (.Y (ramDataOutBus[38]), .A0 (nx431), .A1 (nx571)) ;
    inv01 ix432 (.Y (nx431), .A (internalBus[38])) ;
    nor02_2x ix109 (.Y (ramDataOutBus[39]), .A0 (nx434), .A1 (nx571)) ;
    inv01 ix435 (.Y (nx434), .A (internalBus[39])) ;
    nor02_2x ix111 (.Y (ramDataOutBus[40]), .A0 (nx437), .A1 (nx571)) ;
    inv01 ix438 (.Y (nx437), .A (internalBus[40])) ;
    nor02_2x ix113 (.Y (ramDataOutBus[41]), .A0 (nx440), .A1 (nx573)) ;
    inv01 ix441 (.Y (nx440), .A (internalBus[41])) ;
    nor02_2x ix115 (.Y (ramDataOutBus[42]), .A0 (nx443), .A1 (nx573)) ;
    inv01 ix444 (.Y (nx443), .A (internalBus[42])) ;
    nor02_2x ix117 (.Y (ramDataOutBus[43]), .A0 (nx446), .A1 (nx573)) ;
    inv01 ix447 (.Y (nx446), .A (internalBus[43])) ;
    nor02_2x ix119 (.Y (ramDataOutBus[44]), .A0 (nx449), .A1 (nx573)) ;
    inv01 ix450 (.Y (nx449), .A (internalBus[44])) ;
    nor02_2x ix121 (.Y (ramDataOutBus[45]), .A0 (nx452), .A1 (nx573)) ;
    inv01 ix453 (.Y (nx452), .A (internalBus[45])) ;
    nor02_2x ix123 (.Y (ramDataOutBus[46]), .A0 (nx455), .A1 (nx573)) ;
    inv01 ix456 (.Y (nx455), .A (internalBus[46])) ;
    nor02_2x ix125 (.Y (ramDataOutBus[47]), .A0 (nx458), .A1 (nx573)) ;
    inv01 ix459 (.Y (nx458), .A (internalBus[47])) ;
    nor02_2x ix127 (.Y (ramDataOutBus[48]), .A0 (nx461), .A1 (nx575)) ;
    inv01 ix462 (.Y (nx461), .A (internalBus[48])) ;
    nor02_2x ix129 (.Y (ramDataOutBus[49]), .A0 (nx464), .A1 (nx575)) ;
    inv01 ix465 (.Y (nx464), .A (internalBus[49])) ;
    nor02_2x ix131 (.Y (ramDataOutBus[50]), .A0 (nx467), .A1 (nx575)) ;
    inv01 ix468 (.Y (nx467), .A (internalBus[50])) ;
    nor02_2x ix133 (.Y (ramDataOutBus[51]), .A0 (nx470), .A1 (nx575)) ;
    inv01 ix471 (.Y (nx470), .A (internalBus[51])) ;
    nor02_2x ix135 (.Y (ramDataOutBus[52]), .A0 (nx473), .A1 (nx575)) ;
    inv01 ix474 (.Y (nx473), .A (internalBus[52])) ;
    nor02_2x ix137 (.Y (ramDataOutBus[53]), .A0 (nx476), .A1 (nx575)) ;
    inv01 ix477 (.Y (nx476), .A (internalBus[53])) ;
    nor02_2x ix139 (.Y (ramDataOutBus[54]), .A0 (nx479), .A1 (nx575)) ;
    inv01 ix480 (.Y (nx479), .A (internalBus[54])) ;
    nor02_2x ix141 (.Y (ramDataOutBus[55]), .A0 (nx482), .A1 (nx577)) ;
    inv01 ix483 (.Y (nx482), .A (internalBus[55])) ;
    nor02_2x ix143 (.Y (ramDataOutBus[56]), .A0 (nx485), .A1 (nx577)) ;
    inv01 ix486 (.Y (nx485), .A (internalBus[56])) ;
    nor02_2x ix145 (.Y (ramDataOutBus[57]), .A0 (nx488), .A1 (nx577)) ;
    inv01 ix489 (.Y (nx488), .A (internalBus[57])) ;
    nor02_2x ix147 (.Y (ramDataOutBus[58]), .A0 (nx491), .A1 (nx577)) ;
    inv01 ix492 (.Y (nx491), .A (internalBus[58])) ;
    nor02_2x ix149 (.Y (ramDataOutBus[59]), .A0 (nx494), .A1 (nx577)) ;
    inv01 ix495 (.Y (nx494), .A (internalBus[59])) ;
    nor02_2x ix151 (.Y (ramDataOutBus[60]), .A0 (nx497), .A1 (nx577)) ;
    inv01 ix498 (.Y (nx497), .A (internalBus[60])) ;
    nor02_2x ix153 (.Y (ramDataOutBus[61]), .A0 (nx500), .A1 (nx577)) ;
    inv01 ix501 (.Y (nx500), .A (internalBus[61])) ;
    nor02_2x ix155 (.Y (ramDataOutBus[62]), .A0 (nx503), .A1 (nx579)) ;
    inv01 ix504 (.Y (nx503), .A (internalBus[62])) ;
    nor02_2x ix157 (.Y (ramDataOutBus[63]), .A0 (nx506), .A1 (nx579)) ;
    inv01 ix507 (.Y (nx506), .A (internalBus[63])) ;
    nor02_2x ix159 (.Y (ramDataOutBus[64]), .A0 (nx509), .A1 (nx579)) ;
    inv01 ix510 (.Y (nx509), .A (internalBus[64])) ;
    nor02_2x ix161 (.Y (ramDataOutBus[65]), .A0 (nx512), .A1 (nx579)) ;
    inv01 ix513 (.Y (nx512), .A (internalBus[65])) ;
    nor02_2x ix163 (.Y (ramDataOutBus[66]), .A0 (nx515), .A1 (nx579)) ;
    inv01 ix516 (.Y (nx515), .A (internalBus[66])) ;
    nor02_2x ix165 (.Y (ramDataOutBus[67]), .A0 (nx518), .A1 (nx579)) ;
    inv01 ix519 (.Y (nx518), .A (internalBus[67])) ;
    nor02_2x ix167 (.Y (ramDataOutBus[68]), .A0 (nx521), .A1 (nx579)) ;
    inv01 ix522 (.Y (nx521), .A (internalBus[68])) ;
    nor02_2x ix169 (.Y (ramDataOutBus[69]), .A0 (nx524), .A1 (nx581)) ;
    inv01 ix525 (.Y (nx524), .A (internalBus[69])) ;
    nor02_2x ix171 (.Y (ramDataOutBus[70]), .A0 (nx527), .A1 (nx581)) ;
    inv01 ix528 (.Y (nx527), .A (internalBus[70])) ;
    nor02_2x ix173 (.Y (ramDataOutBus[71]), .A0 (nx530), .A1 (nx581)) ;
    inv01 ix531 (.Y (nx530), .A (internalBus[71])) ;
    nor02_2x ix175 (.Y (ramDataOutBus[72]), .A0 (nx533), .A1 (nx581)) ;
    inv01 ix534 (.Y (nx533), .A (internalBus[72])) ;
    nor02_2x ix177 (.Y (ramDataOutBus[73]), .A0 (nx536), .A1 (nx581)) ;
    inv01 ix537 (.Y (nx536), .A (internalBus[73])) ;
    nor02_2x ix179 (.Y (ramDataOutBus[74]), .A0 (nx539), .A1 (nx581)) ;
    inv01 ix540 (.Y (nx539), .A (internalBus[74])) ;
    nor02_2x ix181 (.Y (ramDataOutBus[75]), .A0 (nx542), .A1 (nx581)) ;
    inv01 ix543 (.Y (nx542), .A (internalBus[75])) ;
    nor02_2x ix183 (.Y (ramDataOutBus[76]), .A0 (nx545), .A1 (nx583)) ;
    inv01 ix546 (.Y (nx545), .A (internalBus[76])) ;
    nor02_2x ix185 (.Y (ramDataOutBus[77]), .A0 (nx548), .A1 (nx583)) ;
    inv01 ix549 (.Y (nx548), .A (internalBus[77])) ;
    nor02_2x ix187 (.Y (ramDataOutBus[78]), .A0 (nx551), .A1 (nx583)) ;
    inv01 ix552 (.Y (nx551), .A (internalBus[78])) ;
    nor02_2x ix189 (.Y (ramDataOutBus[79]), .A0 (nx554), .A1 (nx583)) ;
    inv01 ix555 (.Y (nx554), .A (internalBus[79])) ;
    inv02 ix560 (.Y (nx561), .A (writeToRam)) ;
    inv02 ix562 (.Y (nx563), .A (nx603)) ;
    inv02 ix564 (.Y (nx565), .A (nx603)) ;
    inv02 ix566 (.Y (nx567), .A (nx603)) ;
    inv02 ix568 (.Y (nx569), .A (nx603)) ;
    inv02 ix570 (.Y (nx571), .A (nx603)) ;
    inv02 ix572 (.Y (nx573), .A (nx603)) ;
    inv02 ix574 (.Y (nx575), .A (nx605)) ;
    inv02 ix576 (.Y (nx577), .A (nx605)) ;
    inv02 ix578 (.Y (nx579), .A (nx605)) ;
    inv02 ix580 (.Y (nx581), .A (nx605)) ;
    inv02 ix582 (.Y (nx583), .A (nx605)) ;
    xnor2 ix206 (.Y (nx205), .A0 (nx249), .A1 (nx589)) ;
    nand03 ix227 (.Y (nx589), .A0 (nx245), .A1 (nx241), .A2 (nx229)) ;
    xnor2 ix218 (.Y (nx217), .A0 (nx245), .A1 (nx591)) ;
    nand02 ix223 (.Y (nx591), .A0 (nx241), .A1 (nx229)) ;
    xnor2 ix228 (.Y (nx227), .A0 (nx241), .A1 (currentCount_0)) ;
    inv01 ix592 (.Y (nx593), .A (initCounter)) ;
    inv02 ix594 (.Y (nx595), .A (nx593)) ;
    inv02 ix596 (.Y (nx597), .A (nx593)) ;
    inv02 ix598 (.Y (nx599), .A (nx593)) ;
    inv02 ix600 (.Y (nx601), .A (nx593)) ;
    inv02 ix602 (.Y (nx603), .A (nx561)) ;
    inv02 ix604 (.Y (nx605), .A (nx561)) ;
    inv02 ix606 (.Y (nx607), .A (writeToRam)) ;
endmodule


module ReadLogic_12_40 ( clk, resetState, switchRam, ramBasedAddress, 
                         internalBus, ramDataInBus, ramRead, ramAddress, MFC, 
                         inputSize, filterSize, isFilter, loadNextWordList, 
                         loadWord, readOne, readFinal, aluNumber ) ;

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

    wire currentState_1, addressRegOut_11, addressRegOut_10, addressRegOut_9, 
         addressRegOut_8, addressRegOut_7, addressRegOut_6, addressRegOut_5, 
         addressRegOut_4, addressRegOut_3, addressRegOut_2, addressRegOut_1, 
         addressRegOut_0, addressRegIn_11, addressRegIn_10, addressRegIn_9, 
         addressRegIn_8, addressRegIn_7, addressRegIn_6, addressRegIn_5, 
         addressRegIn_4, addressRegIn_3, addressRegIn_2, addressRegIn_1, 
         addressRegIn_0, resetUnitNumberReg, dmaReadBaseAddress_11, 
         dmaReadBaseAddress_10, dmaReadBaseAddress_9, dmaReadBaseAddress_8, 
         dmaReadBaseAddress_7, dmaReadBaseAddress_6, dmaReadBaseAddress_5, 
         dmaReadBaseAddress_4, dmaReadBaseAddress_3, dmaReadBaseAddress_2, 
         dmaReadBaseAddress_1, dmaReadBaseAddress_0, baseAddressCounterClk, 
         dma_tobeAdded_2, dma_tobeAdded_1, PWR, zerosSignal_2, currentState_4, 
         currentState_0, nx160, nx161, nx14, nx18, nx26, nx44, nx50, 
         dma_currentCount_2, nx54, nx162, dma_currentCount_1, dmaCountIn_1, nx56, 
         dma_currentCount_0, nx86, nx108, nx110, nx118, nx132, nx138, nx144, 
         nx156, nx176, nx180, nx190, nx198, nx202, nx228, nx232, nx336, nx344, 
         nx352, nx360, nx368, nx376, nx384, nx392, nx400, nx408, nx416, nx424, 
         nx171, nx181, nx191, nx201, nx211, nx221, nx231, nx245, nx249, nx251, 
         nx259, nx263, nx265, nx267, nx273, nx279, nx283, nx287, nx289, nx293, 
         nx295, nx299, nx301, nx303, nx309, nx313, nx315, nx319, nx323, nx327, 
         nx331, nx335, nx339, nx343, nx347, nx349, nx353, nx356, nx358, nx364, 
         nx372, nx374, nx377, nx379, nx382, nx385, nx388, nx390, nx393, nx395, 
         nx398, nx401, nx404, nx406, nx409, nx411, nx414, nx417, nx420, nx422, 
         nx425, nx427, nx430, nx432, nx463, nx466, nx468, nx470, nx473, nx475, 
         nx478, nx483, nx486, nx491, nx538, nx540, nx542, nx544, nx546, nx548, 
         nx550, nx552, nx554, nx556, nx558, nx560, nx562, nx564, nx566, nx568, 
         nx570, nx572, nx574, nx580, nx586, nx592, nx598, nx604, nx610, nx0, nx5
         ;
    wire [5:0] \$dummy ;




    Counter2_12 baseAddressCounter (.load ({addressRegIn_11,addressRegIn_10,
                addressRegIn_9,addressRegIn_8,addressRegIn_7,addressRegIn_6,
                addressRegIn_5,addressRegIn_4,addressRegIn_3,addressRegIn_2,
                addressRegIn_1,addressRegIn_0}), .reset (zerosSignal_2), .clk (
                baseAddressCounterClk), .isLoad (currentState_1), .count ({
                addressRegOut_11,addressRegOut_10,addressRegOut_9,
                addressRegOut_8,addressRegOut_7,addressRegOut_6,addressRegOut_5,
                addressRegOut_4,addressRegOut_3,addressRegOut_2,addressRegOut_1,
                addressRegOut_0})) ;
    MultiStepCounter_12 dma_addressRegister (.load ({dmaReadBaseAddress_11,
                        dmaReadBaseAddress_10,dmaReadBaseAddress_9,
                        dmaReadBaseAddress_8,dmaReadBaseAddress_7,
                        dmaReadBaseAddress_6,dmaReadBaseAddress_5,
                        dmaReadBaseAddress_4,dmaReadBaseAddress_3,
                        dmaReadBaseAddress_2,dmaReadBaseAddress_1,
                        dmaReadBaseAddress_0}), .toBeAdded ({zerosSignal_2,
                        zerosSignal_2,zerosSignal_2,zerosSignal_2,zerosSignal_2,
                        zerosSignal_2,zerosSignal_2,zerosSignal_2,zerosSignal_2,
                        dma_tobeAdded_2,dma_tobeAdded_1,PWR}), .reset (
                        zerosSignal_2), .clk (clk), .isLoad (resetUnitNumberReg)
                        , .MFC (MFC), .count ({ramAddress[11],ramAddress[10],
                        ramAddress[9],ramAddress[8],ramAddress[7],ramAddress[6],
                        ramAddress[5],ramAddress[4],ramAddress[3],ramAddress[2],
                        ramAddress[1],ramAddress[0]})) ;
    fake_gnd ix105 (.Y (zerosSignal_2)) ;
    fake_vcc ix103 (.Y (PWR)) ;
    dff dma_readStepRegister_reg_Q_1 (.Q (dma_tobeAdded_1), .QB (\$dummy [0]), .D (
        inputSize[1]), .CLK (nx556)) ;
    mux21 ix182 (.Y (nx181), .A0 (nx245), .A1 (nx249), .S0 (nx160)) ;
    dff reg_currentState_2 (.Q (\$dummy [1]), .QB (nx245), .D (nx181), .CLK (
        nx550)) ;
    nand02 ix250 (.Y (nx249), .A0 (nx251), .A1 (currentState_0)) ;
    inv01 ix252 (.Y (nx251), .A (switchRam)) ;
    mux21 ix192 (.Y (nx191), .A0 (nx560), .A1 (nx259), .S0 (nx160)) ;
    dff reg_currentState_0 (.Q (currentState_0), .QB (\$dummy [2]), .D (nx191), 
        .CLK (nx550)) ;
    nand02 ix260 (.Y (nx259), .A0 (nx251), .A1 (nx26)) ;
    nand03 ix27 (.Y (nx26), .A0 (nx263), .A1 (nx566), .A2 (nx349)) ;
    nand03 ix264 (.Y (nx263), .A0 (nx554), .A1 (nx265), .A2 (nx267)) ;
    inv01 ix266 (.Y (nx265), .A (loadWord)) ;
    inv01 ix268 (.Y (nx267), .A (loadNextWordList)) ;
    dff reg_currentState_1 (.Q (currentState_1), .QB (\$dummy [3]), .D (nx171), 
        .CLK (nx550)) ;
    oai21 ix172 (.Y (nx171), .A0 (nx566), .A1 (nx160), .B0 (nx251)) ;
    nand03 ix153 (.Y (nx160), .A0 (nx273), .A1 (nx251), .A2 (nx358)) ;
    oai21 ix274 (.Y (nx273), .A0 (nx144), .A1 (nx132), .B0 (nx538)) ;
    nor02_2x ix145 (.Y (nx144), .A0 (clk), .A1 (nx138)) ;
    nand03 ix139 (.Y (nx138), .A0 (nx279), .A1 (nx319), .A2 (dma_currentCount_0)
           ) ;
    nand02 ix212 (.Y (nx211), .A0 (nx283), .A1 (nx289)) ;
    nand02 ix284 (.Y (nx283), .A0 (dma_currentCount_1), .A1 (nx287)) ;
    dff dma_counter_counterReg_reg_Q_1 (.Q (dma_currentCount_1), .QB (nx279), .D (
        nx211), .CLK (clk)) ;
    nor02_2x ix288 (.Y (nx287), .A0 (nx554), .A1 (MFC)) ;
    nand02 ix290 (.Y (nx289), .A0 (nx86), .A1 (nx54)) ;
    nand03 ix87 (.Y (nx86), .A0 (nx293), .A1 (nx301), .A2 (nx303)) ;
    nand03 ix294 (.Y (nx293), .A0 (nx245), .A1 (nx279), .A2 (nx295)) ;
    dff dma_counter_counterReg_reg_Q_0 (.Q (dma_currentCount_0), .QB (nx295), .D (
        nx201), .CLK (clk)) ;
    mux21 ix202 (.Y (nx201), .A0 (nx299), .A1 (nx295), .S0 (nx287)) ;
    nor02_2x ix300 (.Y (nx299), .A0 (nx295), .A1 (nx554)) ;
    nand03 ix302 (.Y (nx301), .A0 (dma_currentCount_1), .A1 (dma_currentCount_0)
           , .A2 (nx245)) ;
    nand02 ix304 (.Y (nx303), .A0 (nx554), .A1 (dmaCountIn_1)) ;
    latch lat_dmaCountIn_1 (.Q (dmaCountIn_1), .D (nx56), .CLK (nx558)) ;
    nor02_2x ix57 (.Y (nx56), .A0 (nx309), .A1 (nx267)) ;
    inv01 ix310 (.Y (nx309), .A (inputSize[1])) ;
    nand02 ix19 (.Y (nx18), .A0 (nx313), .A1 (nx572)) ;
    nand02 ix314 (.Y (nx313), .A0 (loadWord), .A1 (nx554)) ;
    nand02 ix316 (.Y (nx315), .A0 (loadNextWordList), .A1 (nx554)) ;
    inv01 ix55 (.Y (nx54), .A (nx287)) ;
    nand02 ix222 (.Y (nx221), .A0 (nx323), .A1 (nx327)) ;
    nand02 ix324 (.Y (nx323), .A0 (dma_currentCount_2), .A1 (nx287)) ;
    dff dma_counter_counterReg_reg_Q_2 (.Q (dma_currentCount_2), .QB (nx319), .D (
        nx221), .CLK (clk)) ;
    oai21 ix328 (.Y (nx327), .A0 (nx118), .A1 (nx108), .B0 (nx54)) ;
    nor02_2x ix119 (.Y (nx118), .A0 (nx245), .A1 (nx331)) ;
    nor02_2x ix111 (.Y (nx110), .A0 (nx335), .A1 (nx267)) ;
    inv01 ix336 (.Y (nx335), .A (inputSize[2])) ;
    nor02_2x ix110 (.Y (nx108), .A0 (nx554), .A1 (nx339)) ;
    nor02_2x ix133 (.Y (nx132), .A0 (nx550), .A1 (nx343)) ;
    nand03 ix344 (.Y (nx343), .A0 (nx319), .A1 (nx279), .A2 (nx295)) ;
    nor02_2x ix165 (.Y (readOne), .A0 (nx347), .A1 (nx349)) ;
    inv01 ix348 (.Y (nx347), .A (MFC)) ;
    dff reg_currentState_4 (.Q (currentState_4), .QB (nx349), .D (nx231), .CLK (
        nx550)) ;
    mux21 ix232 (.Y (nx231), .A0 (nx349), .A1 (nx353), .S0 (nx160)) ;
    inv01 ix354 (.Y (nx353), .A (nx156)) ;
    nor02_2x ix157 (.Y (nx156), .A0 (switchRam), .A1 (nx356)) ;
    oai21 ix357 (.Y (nx356), .A0 (loadWord), .A1 (loadNextWordList), .B0 (nx556)
          ) ;
    nor02_2x ix359 (.Y (nx358), .A0 (nx50), .A1 (nx44)) ;
    nor02_2x ix51 (.Y (nx50), .A0 (currentState_4), .A1 (nx161)) ;
    nor02_2x ix41 (.Y (nx161), .A0 (switchRam), .A1 (nx560)) ;
    nor03_2x ix45 (.Y (nx44), .A0 (switchRam), .A1 (nx560), .A2 (nx364)) ;
    nor02_2x ix365 (.Y (nx364), .A0 (loadNextWordList), .A1 (loadWord)) ;
    dff dma_readStepRegister_reg_Q_2 (.Q (dma_tobeAdded_2), .QB (\$dummy [4]), .D (
        inputSize[2]), .CLK (nx556)) ;
    nor02_2x ix435 (.Y (baseAddressCounterClk), .A0 (clk), .A1 (nx566)) ;
    mux21 ix245 (.Y (dmaReadBaseAddress_0), .A0 (nx372), .A1 (nx374), .S0 (nx572
          )) ;
    inv01 ix373 (.Y (nx372), .A (ramBasedAddress[0])) ;
    inv01 ix375 (.Y (nx374), .A (addressRegOut_0)) ;
    mux21 ix253 (.Y (dmaReadBaseAddress_1), .A0 (nx377), .A1 (nx379), .S0 (nx572
          )) ;
    inv01 ix378 (.Y (nx377), .A (ramBasedAddress[1])) ;
    inv01 ix380 (.Y (nx379), .A (addressRegOut_1)) ;
    mux21 ix261 (.Y (dmaReadBaseAddress_2), .A0 (nx382), .A1 (nx385), .S0 (nx572
          )) ;
    inv01 ix383 (.Y (nx382), .A (ramBasedAddress[2])) ;
    inv01 ix386 (.Y (nx385), .A (addressRegOut_2)) ;
    mux21 ix269 (.Y (dmaReadBaseAddress_3), .A0 (nx388), .A1 (nx390), .S0 (nx572
          )) ;
    inv01 ix389 (.Y (nx388), .A (ramBasedAddress[3])) ;
    inv01 ix391 (.Y (nx390), .A (addressRegOut_3)) ;
    mux21 ix277 (.Y (dmaReadBaseAddress_4), .A0 (nx393), .A1 (nx395), .S0 (nx572
          )) ;
    inv01 ix394 (.Y (nx393), .A (ramBasedAddress[4])) ;
    inv01 ix396 (.Y (nx395), .A (addressRegOut_4)) ;
    mux21 ix285 (.Y (dmaReadBaseAddress_5), .A0 (nx398), .A1 (nx401), .S0 (nx572
          )) ;
    inv01 ix399 (.Y (nx398), .A (ramBasedAddress[5])) ;
    inv01 ix402 (.Y (nx401), .A (addressRegOut_5)) ;
    mux21 ix293 (.Y (dmaReadBaseAddress_6), .A0 (nx404), .A1 (nx406), .S0 (nx574
          )) ;
    inv01 ix405 (.Y (nx404), .A (ramBasedAddress[6])) ;
    inv01 ix407 (.Y (nx406), .A (addressRegOut_6)) ;
    mux21 ix301 (.Y (dmaReadBaseAddress_7), .A0 (nx409), .A1 (nx411), .S0 (nx574
          )) ;
    inv01 ix410 (.Y (nx409), .A (ramBasedAddress[7])) ;
    inv01 ix412 (.Y (nx411), .A (addressRegOut_7)) ;
    mux21 ix309 (.Y (dmaReadBaseAddress_8), .A0 (nx414), .A1 (nx417), .S0 (nx574
          )) ;
    inv01 ix415 (.Y (nx414), .A (ramBasedAddress[8])) ;
    inv01 ix418 (.Y (nx417), .A (addressRegOut_8)) ;
    mux21 ix317 (.Y (dmaReadBaseAddress_9), .A0 (nx420), .A1 (nx422), .S0 (nx574
          )) ;
    inv01 ix421 (.Y (nx420), .A (ramBasedAddress[9])) ;
    inv01 ix423 (.Y (nx422), .A (addressRegOut_9)) ;
    mux21 ix325 (.Y (dmaReadBaseAddress_10), .A0 (nx425), .A1 (nx427), .S0 (
          nx574)) ;
    inv01 ix426 (.Y (nx425), .A (ramBasedAddress[10])) ;
    inv01 ix428 (.Y (nx427), .A (addressRegOut_10)) ;
    mux21 ix333 (.Y (dmaReadBaseAddress_11), .A0 (nx430), .A1 (nx432), .S0 (
          nx574)) ;
    inv01 ix431 (.Y (nx430), .A (ramBasedAddress[11])) ;
    inv01 ix433 (.Y (nx432), .A (addressRegOut_11)) ;
    oai21 ix173 (.Y (resetUnitNumberReg), .A0 (nx267), .A1 (nx245), .B0 (nx566)
          ) ;
    latch lat_addressRegIn_0 (.Q (addressRegIn_0), .D (nx336), .CLK (nx560)) ;
    nor02_2x ix337 (.Y (nx336), .A0 (nx372), .A1 (nx566)) ;
    latch lat_addressRegIn_1 (.Q (addressRegIn_1), .D (nx344), .CLK (nx560)) ;
    nor02_2x ix345 (.Y (nx344), .A0 (nx377), .A1 (nx566)) ;
    latch lat_addressRegIn_2 (.Q (addressRegIn_2), .D (nx352), .CLK (nx560)) ;
    nor02_2x ix353 (.Y (nx352), .A0 (nx382), .A1 (nx566)) ;
    latch lat_addressRegIn_3 (.Q (addressRegIn_3), .D (nx360), .CLK (nx560)) ;
    nor02_2x ix361 (.Y (nx360), .A0 (nx388), .A1 (nx568)) ;
    latch lat_addressRegIn_4 (.Q (addressRegIn_4), .D (nx368), .CLK (nx562)) ;
    nor02_2x ix369 (.Y (nx368), .A0 (nx393), .A1 (nx568)) ;
    latch lat_addressRegIn_5 (.Q (addressRegIn_5), .D (nx376), .CLK (nx562)) ;
    nor02_2x ix377 (.Y (nx376), .A0 (nx398), .A1 (nx568)) ;
    latch lat_addressRegIn_6 (.Q (addressRegIn_6), .D (nx384), .CLK (nx562)) ;
    nor02_2x ix385 (.Y (nx384), .A0 (nx404), .A1 (nx568)) ;
    latch lat_addressRegIn_7 (.Q (addressRegIn_7), .D (nx392), .CLK (nx562)) ;
    nor02_2x ix393 (.Y (nx392), .A0 (nx409), .A1 (nx568)) ;
    latch lat_addressRegIn_8 (.Q (addressRegIn_8), .D (nx400), .CLK (nx562)) ;
    nor02_2x ix401 (.Y (nx400), .A0 (nx414), .A1 (nx568)) ;
    latch lat_addressRegIn_9 (.Q (addressRegIn_9), .D (nx408), .CLK (nx562)) ;
    nor02_2x ix409 (.Y (nx408), .A0 (nx420), .A1 (nx568)) ;
    latch lat_addressRegIn_10 (.Q (addressRegIn_10), .D (nx416), .CLK (nx562)) ;
    nor02_2x ix417 (.Y (nx416), .A0 (nx425), .A1 (nx570)) ;
    latch lat_addressRegIn_11 (.Q (addressRegIn_11), .D (nx424), .CLK (nx564)) ;
    nor02_2x ix425 (.Y (nx424), .A0 (nx430), .A1 (nx570)) ;
    dff aluNumberCounter_counterReg_reg_Q_0 (.Q (aluNumber[0]), .QB (nx470), .D (
        nx180), .CLK (nx176)) ;
    nand03 ix181 (.Y (nx180), .A0 (nx570), .A1 (nx574), .A2 (aluNumber[0])) ;
    oai22 ix177 (.Y (nx176), .A0 (nx550), .A1 (nx463), .B0 (nx466), .B1 (nx468)
          ) ;
    nor02_2x ix464 (.Y (nx463), .A0 (currentState_1), .A1 (nx14)) ;
    nor02_2x ix15 (.Y (nx14), .A0 (nx267), .A1 (nx245)) ;
    nand02 ix467 (.Y (nx466), .A0 (MFC), .A1 (currentState_4)) ;
    nand02 ix469 (.Y (nx468), .A0 (loadNextWordList), .A1 (nx550)) ;
    dff aluNumberCounter_counterReg_reg_Q_1 (.Q (aluNumber[1]), .QB (nx475), .D (
        nx190), .CLK (nx176)) ;
    nand02 ix191 (.Y (nx190), .A0 (nx463), .A1 (nx473)) ;
    dff aluNumberCounter_counterReg_reg_Q_2 (.Q (aluNumber[2]), .QB (\$dummy [5]
        ), .D (nx202), .CLK (nx176)) ;
    nand02 ix203 (.Y (nx202), .A0 (nx463), .A1 (nx478)) ;
    xnor2 ix479 (.Y (nx478), .A0 (aluNumber[2]), .A1 (nx198)) ;
    nor02_2x ix199 (.Y (nx198), .A0 (nx470), .A1 (nx475)) ;
    nor02_2x ix149 (.Y (readFinal), .A0 (nx466), .A1 (nx483)) ;
    nor02_2x ix484 (.Y (nx483), .A0 (nx144), .A1 (nx132)) ;
    nor02_2x ix237 (.Y (ramRead), .A0 (nx349), .A1 (nx486)) ;
    nor02_2x ix487 (.Y (nx486), .A0 (nx232), .A1 (nx228)) ;
    nor02_2x ix233 (.Y (nx232), .A0 (nx552), .A1 (nx162)) ;
    nor03_2x ix131 (.Y (nx162), .A0 (dma_currentCount_2), .A1 (
             dma_currentCount_1), .A2 (dma_currentCount_0)) ;
    nor02_2x ix229 (.Y (nx228), .A0 (clk), .A1 (nx491)) ;
    nor02_2x ix492 (.Y (nx491), .A0 (nx466), .A1 (nx138)) ;
    trib04 dma_tristateLabel_tri_output_0 (.Y (internalBus[0]), .A (
           ramDataInBus[0]), .E (nx538)) ;
    trib04 dma_tristateLabel_tri_output_1 (.Y (internalBus[1]), .A (
           ramDataInBus[1]), .E (nx538)) ;
    trib04 dma_tristateLabel_tri_output_2 (.Y (internalBus[2]), .A (
           ramDataInBus[2]), .E (nx538)) ;
    trib04 dma_tristateLabel_tri_output_3 (.Y (internalBus[3]), .A (
           ramDataInBus[3]), .E (nx538)) ;
    trib04 dma_tristateLabel_tri_output_4 (.Y (internalBus[4]), .A (
           ramDataInBus[4]), .E (nx538)) ;
    trib04 dma_tristateLabel_tri_output_5 (.Y (internalBus[5]), .A (
           ramDataInBus[5]), .E (nx538)) ;
    trib04 dma_tristateLabel_tri_output_6 (.Y (internalBus[6]), .A (
           ramDataInBus[6]), .E (nx540)) ;
    trib04 dma_tristateLabel_tri_output_7 (.Y (internalBus[7]), .A (
           ramDataInBus[7]), .E (nx540)) ;
    trib04 dma_tristateLabel_tri_output_8 (.Y (internalBus[8]), .A (
           ramDataInBus[8]), .E (nx540)) ;
    trib04 dma_tristateLabel_tri_output_9 (.Y (internalBus[9]), .A (
           ramDataInBus[9]), .E (nx540)) ;
    trib04 dma_tristateLabel_tri_output_10 (.Y (internalBus[10]), .A (
           ramDataInBus[10]), .E (nx540)) ;
    trib04 dma_tristateLabel_tri_output_11 (.Y (internalBus[11]), .A (
           ramDataInBus[11]), .E (nx540)) ;
    trib04 dma_tristateLabel_tri_output_12 (.Y (internalBus[12]), .A (
           ramDataInBus[12]), .E (nx540)) ;
    trib04 dma_tristateLabel_tri_output_13 (.Y (internalBus[13]), .A (
           ramDataInBus[13]), .E (nx542)) ;
    trib04 dma_tristateLabel_tri_output_14 (.Y (internalBus[14]), .A (
           ramDataInBus[14]), .E (nx542)) ;
    trib04 dma_tristateLabel_tri_output_15 (.Y (internalBus[15]), .A (
           ramDataInBus[15]), .E (nx542)) ;
    trib04 dma_tristateLabel_tri_output_16 (.Y (internalBus[16]), .A (
           ramDataInBus[16]), .E (nx542)) ;
    trib04 dma_tristateLabel_tri_output_17 (.Y (internalBus[17]), .A (
           ramDataInBus[17]), .E (nx542)) ;
    trib04 dma_tristateLabel_tri_output_18 (.Y (internalBus[18]), .A (
           ramDataInBus[18]), .E (nx542)) ;
    trib04 dma_tristateLabel_tri_output_19 (.Y (internalBus[19]), .A (
           ramDataInBus[19]), .E (nx542)) ;
    trib04 dma_tristateLabel_tri_output_20 (.Y (internalBus[20]), .A (
           ramDataInBus[20]), .E (nx544)) ;
    trib04 dma_tristateLabel_tri_output_21 (.Y (internalBus[21]), .A (
           ramDataInBus[21]), .E (nx544)) ;
    trib04 dma_tristateLabel_tri_output_22 (.Y (internalBus[22]), .A (
           ramDataInBus[22]), .E (nx544)) ;
    trib04 dma_tristateLabel_tri_output_23 (.Y (internalBus[23]), .A (
           ramDataInBus[23]), .E (nx544)) ;
    trib04 dma_tristateLabel_tri_output_24 (.Y (internalBus[24]), .A (
           ramDataInBus[24]), .E (nx544)) ;
    trib04 dma_tristateLabel_tri_output_25 (.Y (internalBus[25]), .A (
           ramDataInBus[25]), .E (nx544)) ;
    trib04 dma_tristateLabel_tri_output_26 (.Y (internalBus[26]), .A (
           ramDataInBus[26]), .E (nx544)) ;
    trib04 dma_tristateLabel_tri_output_27 (.Y (internalBus[27]), .A (
           ramDataInBus[27]), .E (nx546)) ;
    trib04 dma_tristateLabel_tri_output_28 (.Y (internalBus[28]), .A (
           ramDataInBus[28]), .E (nx546)) ;
    trib04 dma_tristateLabel_tri_output_29 (.Y (internalBus[29]), .A (
           ramDataInBus[29]), .E (nx546)) ;
    trib04 dma_tristateLabel_tri_output_30 (.Y (internalBus[30]), .A (
           ramDataInBus[30]), .E (nx546)) ;
    trib04 dma_tristateLabel_tri_output_31 (.Y (internalBus[31]), .A (
           ramDataInBus[31]), .E (nx546)) ;
    trib04 dma_tristateLabel_tri_output_32 (.Y (internalBus[32]), .A (
           ramDataInBus[32]), .E (nx546)) ;
    trib04 dma_tristateLabel_tri_output_33 (.Y (internalBus[33]), .A (
           ramDataInBus[33]), .E (nx546)) ;
    trib04 dma_tristateLabel_tri_output_34 (.Y (internalBus[34]), .A (
           ramDataInBus[34]), .E (nx548)) ;
    trib04 dma_tristateLabel_tri_output_35 (.Y (internalBus[35]), .A (
           ramDataInBus[35]), .E (nx548)) ;
    trib04 dma_tristateLabel_tri_output_36 (.Y (internalBus[36]), .A (
           ramDataInBus[36]), .E (nx548)) ;
    trib04 dma_tristateLabel_tri_output_37 (.Y (internalBus[37]), .A (
           ramDataInBus[37]), .E (nx548)) ;
    trib04 dma_tristateLabel_tri_output_38 (.Y (internalBus[38]), .A (
           ramDataInBus[38]), .E (nx548)) ;
    trib04 dma_tristateLabel_tri_output_39 (.Y (internalBus[39]), .A (
           ramDataInBus[39]), .E (nx548)) ;
    buf02 ix537 (.Y (nx538), .A (readOne)) ;
    buf02 ix539 (.Y (nx540), .A (readOne)) ;
    buf02 ix541 (.Y (nx542), .A (readOne)) ;
    buf02 ix543 (.Y (nx544), .A (readOne)) ;
    buf02 ix545 (.Y (nx546), .A (readOne)) ;
    buf02 ix547 (.Y (nx548), .A (readOne)) ;
    inv02 ix549 (.Y (nx550), .A (clk)) ;
    inv02 ix551 (.Y (nx552), .A (clk)) ;
    inv02 ix553 (.Y (nx554), .A (nx245)) ;
    inv02 ix555 (.Y (nx556), .A (nx245)) ;
    buf02 ix557 (.Y (nx558), .A (nx580)) ;
    inv02 ix559 (.Y (nx560), .A (currentState_0)) ;
    inv02 ix561 (.Y (nx562), .A (currentState_0)) ;
    inv02 ix563 (.Y (nx564), .A (currentState_0)) ;
    inv02 ix565 (.Y (nx566), .A (currentState_1)) ;
    inv02 ix567 (.Y (nx568), .A (currentState_1)) ;
    inv02 ix569 (.Y (nx570), .A (currentState_1)) ;
    buf02 ix571 (.Y (nx572), .A (nx315)) ;
    buf02 ix573 (.Y (nx574), .A (nx315)) ;
    buf02 ix579 (.Y (nx580), .A (nx586)) ;
    buf02 ix585 (.Y (nx586), .A (nx592)) ;
    buf02 ix591 (.Y (nx592), .A (nx598)) ;
    buf02 ix597 (.Y (nx598), .A (nx604)) ;
    buf02 ix603 (.Y (nx604), .A (nx18)) ;
    xnor2 ix340 (.Y (nx339), .A0 (nx319), .A1 (nx610)) ;
    nand02 ix99 (.Y (nx610), .A0 (nx279), .A1 (nx295)) ;
    xnor2 ix474 (.Y (nx473), .A0 (nx475), .A1 (nx470)) ;
    latchr lat_dmaCountIn_2__u1 (.QB (nx5), .D (nx110), .CLK (nx18), .R (
           zerosSignal_2)) ;
    inv01 lat_dmaCountIn_2__u2 (.Y (nx0), .A (nx5)) ;
    buf02 lat_dmaCountIn_2__u3 (.Y (nx331), .A (nx5)) ;
endmodule


module MultiStepCounter_12 ( load, toBeAdded, reset, clk, isLoad, MFC, count ) ;

    input [11:0]load ;
    input [11:0]toBeAdded ;
    input reset ;
    input clk ;
    input isLoad ;
    input MFC ;
    output [11:0]count ;

    wire nx14, nx20, nx28, nx40, nx52, nx54, nx60, nx62, nx66, nx74, nx76, nx78, 
         nx84, nx86, nx90, nx98, nx104, nx106, nx110, nx118, nx124, nx126, nx130, 
         nx144, nx146, nx150, nx158, nx164, nx166, nx170, nx184, nx186, nx190, 
         nx204, nx206, nx210, nx224, nx226, nx230, nx244, nx246, nx250, nx45, 
         nx49, nx53, nx55, nx61, nx65, nx67, nx69, nx71, nx73, nx79, nx81, nx83, 
         nx85, nx89, nx95, nx99, nx101, nx105, nx113, nx116, nx119, nx121, nx125, 
         nx127, nx131, nx136, nx139, nx145, nx149, nx155, nx159, nx161, nx165, 
         nx173, nx176, nx179, nx183, nx191, nx194, nx196, nx199, nx207, nx211, 
         nx213, nx216, nx223, nx227, nx229, nx233, nx239, nx243, nx245, nx249, 
         nx258, nx260, nx262, nx268, nx270, nx272, nx274, nx276, nx278, nx280, 
         nx282, nx284, nx286, nx288, nx290, nx292, nx294, nx296, nx298, nx300;



    nand03 ix21 (.Y (nx20), .A0 (nx45), .A1 (nx49), .A2 (nx53)) ;
    nand02 ix46 (.Y (nx45), .A0 (count[0]), .A1 (nx14)) ;
    nor02_2x ix15 (.Y (nx14), .A0 (MFC), .A1 (nx298)) ;
    nand03 ix50 (.Y (nx49), .A0 (load[0]), .A1 (nx258), .A2 (nx298)) ;
    nand02 ix54 (.Y (nx53), .A0 (MFC), .A1 (nx55)) ;
    dff counterReg_reg_Q_0 (.Q (count[0]), .QB (nx55), .D (nx20), .CLK (clk)) ;
    oai222 ix41 (.Y (nx40), .A0 (nx258), .A1 (nx61), .B0 (nx67), .B1 (nx69), .C0 (
           nx71), .C1 (nx262)) ;
    inv01 ix66 (.Y (nx65), .A (toBeAdded[1])) ;
    dff counterReg_reg_Q_1 (.Q (count[1]), .QB (nx67), .D (nx40), .CLK (clk)) ;
    inv01 ix70 (.Y (nx69), .A (nx14)) ;
    inv01 ix72 (.Y (nx71), .A (load[1])) ;
    nand02 ix74 (.Y (nx73), .A0 (nx258), .A1 (nx298)) ;
    oai21 ix67 (.Y (nx66), .A0 (nx258), .A1 (nx79), .B0 (nx85)) ;
    xnor2 ix80 (.Y (nx79), .A0 (nx81), .A1 (nx83)) ;
    aoi22 ix82 (.Y (nx81), .A0 (toBeAdded[1]), .A1 (count[1]), .B0 (nx28), .B1 (
          count[0])) ;
    nor02_2x ix86 (.Y (nx85), .A0 (nx62), .A1 (nx60)) ;
    nor03_2x ix63 (.Y (nx62), .A0 (nx89), .A1 (MFC), .A2 (nx298)) ;
    dff counterReg_reg_Q_2 (.Q (count[2]), .QB (nx89), .D (nx66), .CLK (clk)) ;
    nor02ii ix61 (.Y (nx60), .A0 (nx262), .A1 (load[2])) ;
    oai21 ix91 (.Y (nx90), .A0 (nx258), .A1 (nx95), .B0 (nx101)) ;
    oai21 ix79 (.Y (nx78), .A0 (nx81), .A1 (nx83), .B0 (nx99)) ;
    nand02 ix100 (.Y (nx99), .A0 (toBeAdded[2]), .A1 (count[2])) ;
    nor02_2x ix102 (.Y (nx101), .A0 (nx86), .A1 (nx84)) ;
    nor03_2x ix87 (.Y (nx86), .A0 (nx105), .A1 (MFC), .A2 (nx298)) ;
    dff counterReg_reg_Q_3 (.Q (count[3]), .QB (nx105), .D (nx90), .CLK (clk)) ;
    nor02ii ix85 (.Y (nx84), .A0 (nx262), .A1 (load[3])) ;
    oai21 ix111 (.Y (nx110), .A0 (nx258), .A1 (nx113), .B0 (nx127)) ;
    aoi22 ix117 (.Y (nx116), .A0 (toBeAdded[2]), .A1 (count[2]), .B0 (nx52), .B1 (
          nx54)) ;
    oai21 ix53 (.Y (nx52), .A0 (nx119), .A1 (nx55), .B0 (nx121)) ;
    nand02 ix122 (.Y (nx121), .A0 (toBeAdded[1]), .A1 (count[1])) ;
    inv01 ix126 (.Y (nx125), .A (toBeAdded[2])) ;
    nor02_2x ix128 (.Y (nx127), .A0 (nx106), .A1 (nx104)) ;
    nor03_2x ix107 (.Y (nx106), .A0 (nx131), .A1 (MFC), .A2 (nx298)) ;
    dff counterReg_reg_Q_4 (.Q (count[4]), .QB (nx131), .D (nx110), .CLK (clk)
        ) ;
    nor02ii ix105 (.Y (nx104), .A0 (nx262), .A1 (load[4])) ;
    oai21 ix131 (.Y (nx130), .A0 (nx258), .A1 (nx136), .B0 (nx145)) ;
    oai21 ix140 (.Y (nx139), .A0 (nx76), .A1 (nx74), .B0 (count[3])) ;
    nor02_2x ix77 (.Y (nx76), .A0 (nx125), .A1 (nx89)) ;
    nor02ii ix75 (.Y (nx74), .A0 (nx81), .A1 (nx54)) ;
    nor02_2x ix146 (.Y (nx145), .A0 (nx126), .A1 (nx124)) ;
    nor03_2x ix127 (.Y (nx126), .A0 (nx149), .A1 (MFC), .A2 (nx298)) ;
    dff counterReg_reg_Q_5 (.Q (count[5]), .QB (nx149), .D (nx130), .CLK (clk)
        ) ;
    nor02ii ix125 (.Y (nx124), .A0 (nx262), .A1 (load[5])) ;
    oai21 ix151 (.Y (nx150), .A0 (nx260), .A1 (nx155), .B0 (nx161)) ;
    nand03 ix160 (.Y (nx159), .A0 (nx78), .A1 (count[3]), .A2 (count[4])) ;
    nor02_2x ix162 (.Y (nx161), .A0 (nx146), .A1 (nx144)) ;
    nor03_2x ix147 (.Y (nx146), .A0 (nx165), .A1 (MFC), .A2 (nx300)) ;
    dff counterReg_reg_Q_6 (.Q (count[6]), .QB (nx165), .D (nx150), .CLK (clk)
        ) ;
    nor02ii ix145 (.Y (nx144), .A0 (nx262), .A1 (load[6])) ;
    oai21 ix171 (.Y (nx170), .A0 (nx260), .A1 (nx173), .B0 (nx179)) ;
    nand04 ix177 (.Y (nx176), .A0 (nx78), .A1 (count[3]), .A2 (count[4]), .A3 (
           count[5])) ;
    nor02_2x ix180 (.Y (nx179), .A0 (nx166), .A1 (nx164)) ;
    nor03_2x ix167 (.Y (nx166), .A0 (nx183), .A1 (MFC), .A2 (nx300)) ;
    dff counterReg_reg_Q_7 (.Q (count[7]), .QB (nx183), .D (nx170), .CLK (clk)
        ) ;
    nor02ii ix165 (.Y (nx164), .A0 (nx262), .A1 (load[7])) ;
    oai21 ix191 (.Y (nx190), .A0 (nx260), .A1 (nx191), .B0 (nx196)) ;
    nand04 ix195 (.Y (nx194), .A0 (nx98), .A1 (count[4]), .A2 (count[5]), .A3 (
           count[6])) ;
    nor02_2x ix197 (.Y (nx196), .A0 (nx186), .A1 (nx184)) ;
    nor03_2x ix187 (.Y (nx186), .A0 (nx199), .A1 (MFC), .A2 (nx300)) ;
    dff counterReg_reg_Q_8 (.Q (count[8]), .QB (nx199), .D (nx190), .CLK (clk)
        ) ;
    nor02ii ix185 (.Y (nx184), .A0 (nx73), .A1 (load[8])) ;
    oai21 ix211 (.Y (nx210), .A0 (nx260), .A1 (nx207), .B0 (nx213)) ;
    nand04 ix212 (.Y (nx211), .A0 (nx118), .A1 (count[5]), .A2 (count[6]), .A3 (
           count[7])) ;
    nor02_2x ix214 (.Y (nx213), .A0 (nx206), .A1 (nx204)) ;
    nor03_2x ix207 (.Y (nx206), .A0 (nx216), .A1 (MFC), .A2 (nx300)) ;
    dff counterReg_reg_Q_9 (.Q (count[9]), .QB (nx216), .D (nx210), .CLK (clk)
        ) ;
    nor02ii ix205 (.Y (nx204), .A0 (nx73), .A1 (load[9])) ;
    oai21 ix231 (.Y (nx230), .A0 (nx260), .A1 (nx223), .B0 (nx229)) ;
    nand03 ix228 (.Y (nx227), .A0 (nx158), .A1 (count[7]), .A2 (count[8])) ;
    nor02_2x ix230 (.Y (nx229), .A0 (nx226), .A1 (nx224)) ;
    nor03_2x ix227 (.Y (nx226), .A0 (nx233), .A1 (MFC), .A2 (nx300)) ;
    dff counterReg_reg_Q_10 (.Q (count[10]), .QB (nx233), .D (nx230), .CLK (clk)
        ) ;
    nor02ii ix225 (.Y (nx224), .A0 (nx73), .A1 (load[10])) ;
    oai21 ix251 (.Y (nx250), .A0 (nx260), .A1 (nx239), .B0 (nx245)) ;
    nand04 ix244 (.Y (nx243), .A0 (nx158), .A1 (count[7]), .A2 (count[8]), .A3 (
           count[9])) ;
    nor02_2x ix246 (.Y (nx245), .A0 (nx246), .A1 (nx244)) ;
    nor03_2x ix247 (.Y (nx246), .A0 (nx249), .A1 (MFC), .A2 (nx300)) ;
    dff counterReg_reg_Q_11 (.Q (count[11]), .QB (nx249), .D (nx250), .CLK (clk)
        ) ;
    nor02ii ix245 (.Y (nx244), .A0 (nx73), .A1 (load[11])) ;
    inv02 ix257 (.Y (nx258), .A (MFC)) ;
    inv02 ix259 (.Y (nx260), .A (MFC)) ;
    nand02 ix261 (.Y (nx262), .A0 (nx258), .A1 (nx300)) ;
    xnor2 ix62 (.Y (nx61), .A0 (nx55), .A1 (nx268)) ;
    inv01 ix267 (.Y (nx268), .A (nx28)) ;
    xnor2 ix29 (.Y (nx28), .A0 (nx67), .A1 (toBeAdded[1])) ;
    xnor2 ix84 (.Y (nx83), .A0 (nx89), .A1 (nx125)) ;
    xnor2 ix96 (.Y (nx95), .A0 (nx105), .A1 (nx270)) ;
    inv01 ix269 (.Y (nx270), .A (nx78)) ;
    xnor2 ix114 (.Y (nx113), .A0 (nx131), .A1 (nx272)) ;
    inv01 ix271 (.Y (nx272), .A (nx98)) ;
    nor02_2x ix99 (.Y (nx98), .A0 (nx116), .A1 (nx105)) ;
    xnor2 ix120 (.Y (nx119), .A0 (nx67), .A1 (nx65)) ;
    xnor2 ix55 (.Y (nx54), .A0 (nx89), .A1 (toBeAdded[2])) ;
    xnor2 ix137 (.Y (nx136), .A0 (nx149), .A1 (nx274)) ;
    inv01 ix273 (.Y (nx274), .A (nx118)) ;
    nor02_2x ix119 (.Y (nx118), .A0 (nx139), .A1 (nx131)) ;
    xnor2 ix156 (.Y (nx155), .A0 (nx165), .A1 (nx276)) ;
    nand02 ix139 (.Y (nx276), .A0 (nx278), .A1 (count[5])) ;
    inv01 ix277 (.Y (nx278), .A (nx159)) ;
    xnor2 ix174 (.Y (nx173), .A0 (nx183), .A1 (nx280)) ;
    inv01 ix279 (.Y (nx280), .A (nx158)) ;
    nor02_2x ix159 (.Y (nx158), .A0 (nx176), .A1 (nx165)) ;
    xnor2 ix192 (.Y (nx191), .A0 (nx199), .A1 (nx282)) ;
    nand02 ix179 (.Y (nx282), .A0 (nx284), .A1 (count[7])) ;
    inv01 ix283 (.Y (nx284), .A (nx194)) ;
    xnor2 ix208 (.Y (nx207), .A0 (nx216), .A1 (nx286)) ;
    nand02 ix199 (.Y (nx286), .A0 (nx288), .A1 (count[8])) ;
    inv01 ix287 (.Y (nx288), .A (nx211)) ;
    xnor2 ix224 (.Y (nx223), .A0 (nx233), .A1 (nx290)) ;
    nand02 ix219 (.Y (nx290), .A0 (nx292), .A1 (count[9])) ;
    inv01 ix291 (.Y (nx292), .A (nx227)) ;
    xnor2 ix240 (.Y (nx239), .A0 (nx249), .A1 (nx294)) ;
    nand02 ix239 (.Y (nx294), .A0 (nx296), .A1 (count[10])) ;
    inv01 ix295 (.Y (nx296), .A (nx243)) ;
    buf02 ix297 (.Y (nx298), .A (isLoad)) ;
    buf02 ix299 (.Y (nx300), .A (isLoad)) ;
endmodule


module Counter2_12 ( load, reset, clk, isLoad, count ) ;

    input [11:0]load ;
    input reset ;
    input clk ;
    input isLoad ;
    output [11:0]count ;

    wire nx10, nx24, nx38, nx42, nx52, nx56, nx66, nx80, nx94, nx98, nx108, 
         nx122, nx136, nx150, nx154, nx164, nx39, nx41, nx43, nx45, nx49, nx51, 
         nx53, nx57, nx61, nx63, nx67, nx71, nx73, nx75, nx79, nx83, nx85, nx89, 
         nx95, nx97, nx101, nx105, nx107, nx109, nx113, nx117, nx119, nx123, 
         nx129, nx131, nx135, nx139, nx141, nx143, nx147, nx151, nx153, nx157, 
         nx161, nx163, nx171, nx173, nx175, nx177, nx179, nx181, nx183, nx185, 
         nx187, nx189, nx191, nx193, nx195, nx197, nx199, nx201, nx203;
    wire [0:0] \$dummy ;




    nand02 ix11 (.Y (nx10), .A0 (nx39), .A1 (nx41)) ;
    nand02 ix40 (.Y (nx39), .A0 (load[0]), .A1 (nx193)) ;
    nand02 ix42 (.Y (nx41), .A0 (nx43), .A1 (nx45)) ;
    inv01 ix44 (.Y (nx43), .A (isLoad)) ;
    dff counterReg_reg_Q_0 (.Q (count[0]), .QB (nx45), .D (nx10), .CLK (nx201)
        ) ;
    dff counterReg_reg_Q_1 (.Q (count[1]), .QB (nx53), .D (nx24), .CLK (nx201)
        ) ;
    oai21 ix25 (.Y (nx24), .A0 (nx193), .A1 (nx49), .B0 (nx51)) ;
    nand02 ix52 (.Y (nx51), .A0 (load[1]), .A1 (nx193)) ;
    dff counterReg_reg_Q_2 (.Q (count[2]), .QB (nx63), .D (nx38), .CLK (nx201)
        ) ;
    oai21 ix39 (.Y (nx38), .A0 (nx193), .A1 (nx57), .B0 (nx61)) ;
    nand02 ix62 (.Y (nx61), .A0 (load[2]), .A1 (nx193)) ;
    dff counterReg_reg_Q_3 (.Q (count[3]), .QB (nx75), .D (nx52), .CLK (nx201)
        ) ;
    oai21 ix53 (.Y (nx52), .A0 (nx193), .A1 (nx67), .B0 (nx73)) ;
    nor02_2x ix43 (.Y (nx42), .A0 (nx63), .A1 (nx71)) ;
    nand02 ix72 (.Y (nx71), .A0 (count[1]), .A1 (count[0])) ;
    nand02 ix74 (.Y (nx73), .A0 (load[3]), .A1 (nx193)) ;
    dff counterReg_reg_Q_4 (.Q (count[4]), .QB (nx85), .D (nx66), .CLK (nx201)
        ) ;
    oai21 ix67 (.Y (nx66), .A0 (nx195), .A1 (nx79), .B0 (nx83)) ;
    nor03_2x ix57 (.Y (nx56), .A0 (nx75), .A1 (nx63), .A2 (nx71)) ;
    nand02 ix84 (.Y (nx83), .A0 (load[4]), .A1 (nx195)) ;
    dff counterReg_reg_Q_5 (.Q (count[5]), .QB (nx97), .D (nx80), .CLK (nx201)
        ) ;
    oai21 ix81 (.Y (nx80), .A0 (nx195), .A1 (nx89), .B0 (nx95)) ;
    nand02 ix96 (.Y (nx95), .A0 (load[5]), .A1 (nx195)) ;
    dff counterReg_reg_Q_6 (.Q (count[6]), .QB (nx109), .D (nx94), .CLK (nx201)
        ) ;
    oai21 ix95 (.Y (nx94), .A0 (nx195), .A1 (nx101), .B0 (nx107)) ;
    nand04 ix106 (.Y (nx105), .A0 (count[3]), .A1 (count[2]), .A2 (count[1]), .A3 (
           count[0])) ;
    nand02 ix108 (.Y (nx107), .A0 (load[6]), .A1 (nx195)) ;
    dff counterReg_reg_Q_7 (.Q (count[7]), .QB (nx119), .D (nx108), .CLK (nx203)
        ) ;
    oai21 ix109 (.Y (nx108), .A0 (nx195), .A1 (nx113), .B0 (nx117)) ;
    nor04 ix99 (.Y (nx98), .A0 (nx109), .A1 (nx97), .A2 (nx85), .A3 (nx105)) ;
    nand02 ix118 (.Y (nx117), .A0 (load[7]), .A1 (nx197)) ;
    dff counterReg_reg_Q_8 (.Q (count[8]), .QB (nx131), .D (nx122), .CLK (nx203)
        ) ;
    oai21 ix123 (.Y (nx122), .A0 (nx197), .A1 (nx123), .B0 (nx129)) ;
    nand02 ix130 (.Y (nx129), .A0 (load[8]), .A1 (nx197)) ;
    dff counterReg_reg_Q_9 (.Q (count[9]), .QB (nx143), .D (nx136), .CLK (nx203)
        ) ;
    oai21 ix137 (.Y (nx136), .A0 (nx197), .A1 (nx135), .B0 (nx141)) ;
    inv01 ix140 (.Y (nx139), .A (nx98)) ;
    nand02 ix142 (.Y (nx141), .A0 (load[9]), .A1 (nx197)) ;
    dff counterReg_reg_Q_10 (.Q (count[10]), .QB (nx153), .D (nx150), .CLK (
        nx203)) ;
    oai21 ix151 (.Y (nx150), .A0 (nx197), .A1 (nx147), .B0 (nx151)) ;
    nand02 ix152 (.Y (nx151), .A0 (load[10]), .A1 (nx197)) ;
    dff counterReg_reg_Q_11 (.Q (count[11]), .QB (\$dummy [0]), .D (nx164), .CLK (
        nx203)) ;
    oai21 ix165 (.Y (nx164), .A0 (nx199), .A1 (nx157), .B0 (nx163)) ;
    xnor2 ix158 (.Y (nx157), .A0 (count[11]), .A1 (nx154)) ;
    nor04 ix155 (.Y (nx154), .A0 (nx153), .A1 (nx143), .A2 (nx131), .A3 (nx161)
          ) ;
    nand02 ix162 (.Y (nx161), .A0 (count[7]), .A1 (nx98)) ;
    nand02 ix164 (.Y (nx163), .A0 (nx199), .A1 (load[11])) ;
    xnor2 ix50 (.Y (nx49), .A0 (nx53), .A1 (nx45)) ;
    xnor2 ix58 (.Y (nx57), .A0 (nx63), .A1 (nx171)) ;
    nand02 ix29 (.Y (nx171), .A0 (count[1]), .A1 (count[0])) ;
    xnor2 ix68 (.Y (nx67), .A0 (nx75), .A1 (nx173)) ;
    inv01 ix172 (.Y (nx173), .A (nx42)) ;
    xnor2 ix80 (.Y (nx79), .A0 (nx85), .A1 (nx175)) ;
    inv01 ix174 (.Y (nx175), .A (nx56)) ;
    xnor2 ix90 (.Y (nx89), .A0 (nx97), .A1 (nx177)) ;
    nand03 ix71 (.Y (nx177), .A0 (count[4]), .A1 (count[3]), .A2 (nx179)) ;
    nor03_2x ix94 (.Y (nx179), .A0 (nx63), .A1 (nx53), .A2 (nx45)) ;
    xnor2 ix102 (.Y (nx101), .A0 (nx109), .A1 (nx181)) ;
    nand03 ix85 (.Y (nx181), .A0 (count[5]), .A1 (count[4]), .A2 (nx183)) ;
    inv01 ix182 (.Y (nx183), .A (nx105)) ;
    xnor2 ix114 (.Y (nx113), .A0 (nx119), .A1 (nx139)) ;
    xnor2 ix124 (.Y (nx123), .A0 (nx131), .A1 (nx185)) ;
    nand04 ix113 (.Y (nx185), .A0 (count[7]), .A1 (count[6]), .A2 (count[5]), .A3 (
           nx187)) ;
    nor02_2x ix128 (.Y (nx187), .A0 (nx85), .A1 (nx175)) ;
    xnor2 ix136 (.Y (nx135), .A0 (nx143), .A1 (nx189)) ;
    nand03 ix127 (.Y (nx189), .A0 (count[8]), .A1 (count[7]), .A2 (nx98)) ;
    xnor2 ix148 (.Y (nx147), .A0 (nx153), .A1 (nx191)) ;
    nand04 ix141 (.Y (nx191), .A0 (count[9]), .A1 (count[8]), .A2 (count[7]), .A3 (
           nx98)) ;
    inv02 ix192 (.Y (nx193), .A (nx43)) ;
    inv02 ix194 (.Y (nx195), .A (nx43)) ;
    inv02 ix196 (.Y (nx197), .A (nx43)) ;
    inv02 ix198 (.Y (nx199), .A (nx43)) ;
    buf02 ix200 (.Y (nx201), .A (clk)) ;
    buf02 ix202 (.Y (nx203), .A (clk)) ;
endmodule


module ReadLogic_13_80 ( clk, resetState, switchRam, ramBasedAddress, 
                         internalBus, ramDataInBus, ramRead, ramAddress, MFC, 
                         inputSize, filterSize, isFilter, loadNextWordList, 
                         loadWord, readOne, readFinal, aluNumber ) ;

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

    wire currentState_4, currentState_2, currentState_1, dmaCountIn_2, 
         dmaCountIn_1, addressRegOut_12, addressRegOut_11, addressRegOut_10, 
         addressRegOut_9, addressRegOut_8, addressRegOut_7, addressRegOut_6, 
         addressRegOut_5, addressRegOut_4, addressRegOut_3, addressRegOut_2, 
         addressRegOut_1, addressRegOut_0, addressRegIn_12, addressRegIn_11, 
         addressRegIn_10, addressRegIn_9, addressRegIn_8, addressRegIn_7, 
         addressRegIn_6, addressRegIn_5, addressRegIn_4, addressRegIn_3, 
         addressRegIn_2, addressRegIn_1, addressRegIn_0, resetUnitNumberReg, 
         baseAddressCounterClk, PWR, zerosSignal_2, currentState_0, nx65, 
         NOT_clk, nx20, nx22, nx28, nx44, nx52, nx56, currentState_3, nx64, nx74, 
         nx94, nx100, nx104, nx114, nx122, nx126, nx136, nx144, nx152, nx160, 
         nx168, nx176, nx184, nx192, nx200, nx208, nx216, nx224, nx232, nx240, 
         nx248, nx72, nx83, nx93, nx103, nx113, nx125, nx129, nx133, nx137, 
         nx140, nx147, nx151, nx153, nx156, nx163, nx165, nx167, nx169, nx171, 
         nx173, nx177, nx179, nx181, nx187, nx191, nx196, nx201, nx205, nx209, 
         nx213, nx217, nx221, nx225, nx229, nx233, nx237, nx241, nx245, nx251, 
         nx256, nx259, nx261, nx263, nx266, nx268, nx271, nx280, nx282, nx284, 
         nx286, nx288, nx290, nx296, nx298, nx300, nx302;
    wire [2:0] \$dummy ;




    DMA_13_80 dma (.initialCount ({dmaCountIn_2,dmaCountIn_1,PWR}), .readBaseAddress (
              {addressRegOut_12,addressRegOut_11,addressRegOut_10,
              addressRegOut_9,addressRegOut_8,addressRegOut_7,addressRegOut_6,
              addressRegOut_5,addressRegOut_4,addressRegOut_3,addressRegOut_2,
              addressRegOut_1,addressRegOut_0}), .readStep ({inputSize[12],
              inputSize[11],inputSize[10],inputSize[9],inputSize[8],inputSize[7]
              ,inputSize[6],inputSize[5],inputSize[4],inputSize[3],inputSize[2],
              inputSize[1],inputSize[0]}), .initAddress (resetUnitNumberReg), .initCounter (
              currentState_2), .load (currentState_4), .internalBus ({
              internalBus[79],internalBus[78],internalBus[77],internalBus[76],
              internalBus[75],internalBus[74],internalBus[73],internalBus[72],
              internalBus[71],internalBus[70],internalBus[69],internalBus[68],
              internalBus[67],internalBus[66],internalBus[65],internalBus[64],
              internalBus[63],internalBus[62],internalBus[61],internalBus[60],
              internalBus[59],internalBus[58],internalBus[57],internalBus[56],
              internalBus[55],internalBus[54],internalBus[53],internalBus[52],
              internalBus[51],internalBus[50],internalBus[49],internalBus[48],
              internalBus[47],internalBus[46],internalBus[45],internalBus[44],
              internalBus[43],internalBus[42],internalBus[41],internalBus[40],
              internalBus[39],internalBus[38],internalBus[37],internalBus[36],
              internalBus[35],internalBus[34],internalBus[33],internalBus[32],
              internalBus[31],internalBus[30],internalBus[29],internalBus[28],
              internalBus[27],internalBus[26],internalBus[25],internalBus[24],
              internalBus[23],internalBus[22],internalBus[21],internalBus[20],
              internalBus[19],internalBus[18],internalBus[17],internalBus[16],
              internalBus[15],internalBus[14],internalBus[13],internalBus[12],
              internalBus[11],internalBus[10],internalBus[9],internalBus[8],
              internalBus[7],internalBus[6],internalBus[5],internalBus[4],
              internalBus[3],internalBus[2],internalBus[1],internalBus[0]}), .finishedOneRead (
              readOne), .finishedReading (readFinal), .clk (clk), .ramDataInBus (
              {ramDataInBus[79],ramDataInBus[78],ramDataInBus[77],
              ramDataInBus[76],ramDataInBus[75],ramDataInBus[74],
              ramDataInBus[73],ramDataInBus[72],ramDataInBus[71],
              ramDataInBus[70],ramDataInBus[69],ramDataInBus[68],
              ramDataInBus[67],ramDataInBus[66],ramDataInBus[65],
              ramDataInBus[64],ramDataInBus[63],ramDataInBus[62],
              ramDataInBus[61],ramDataInBus[60],ramDataInBus[59],
              ramDataInBus[58],ramDataInBus[57],ramDataInBus[56],
              ramDataInBus[55],ramDataInBus[54],ramDataInBus[53],
              ramDataInBus[52],ramDataInBus[51],ramDataInBus[50],
              ramDataInBus[49],ramDataInBus[48],ramDataInBus[47],
              ramDataInBus[46],ramDataInBus[45],ramDataInBus[44],
              ramDataInBus[43],ramDataInBus[42],ramDataInBus[41],
              ramDataInBus[40],ramDataInBus[39],ramDataInBus[38],
              ramDataInBus[37],ramDataInBus[36],ramDataInBus[35],
              ramDataInBus[34],ramDataInBus[33],ramDataInBus[32],
              ramDataInBus[31],ramDataInBus[30],ramDataInBus[29],
              ramDataInBus[28],ramDataInBus[27],ramDataInBus[26],
              ramDataInBus[25],ramDataInBus[24],ramDataInBus[23],
              ramDataInBus[22],ramDataInBus[21],ramDataInBus[20],
              ramDataInBus[19],ramDataInBus[18],ramDataInBus[17],
              ramDataInBus[16],ramDataInBus[15],ramDataInBus[14],
              ramDataInBus[13],ramDataInBus[12],ramDataInBus[11],
              ramDataInBus[10],ramDataInBus[9],ramDataInBus[8],ramDataInBus[7],
              ramDataInBus[6],ramDataInBus[5],ramDataInBus[4],ramDataInBus[3],
              ramDataInBus[2],ramDataInBus[1],ramDataInBus[0]}), .ramRead (
              ramRead), .ramReadAddress ({ramAddress[12],ramAddress[11],
              ramAddress[10],ramAddress[9],ramAddress[8],ramAddress[7],
              ramAddress[6],ramAddress[5],ramAddress[4],ramAddress[3],
              ramAddress[2],ramAddress[1],ramAddress[0]}), .MFC (MFC)) ;
    Counter2_13 baseAddressCounter (.load ({addressRegIn_12,addressRegIn_11,
                addressRegIn_10,addressRegIn_9,addressRegIn_8,addressRegIn_7,
                addressRegIn_6,addressRegIn_5,addressRegIn_4,addressRegIn_3,
                addressRegIn_2,addressRegIn_1,addressRegIn_0}), .reset (
                zerosSignal_2), .clk (baseAddressCounterClk), .isLoad (
                currentState_1), .count ({addressRegOut_12,addressRegOut_11,
                addressRegOut_10,addressRegOut_9,addressRegOut_8,addressRegOut_7
                ,addressRegOut_6,addressRegOut_5,addressRegOut_4,addressRegOut_3
                ,addressRegOut_2,addressRegOut_1,addressRegOut_0})) ;
    fake_gnd ix22 (.Y (zerosSignal_2)) ;
    fake_vcc ix20 (.Y (PWR)) ;
    mux21 ix263 (.Y (baseAddressCounterClk), .A0 (nx286), .A1 (nx177), .S0 (clk)
          ) ;
    dff reg_currentState_1 (.Q (currentState_1), .QB (\$dummy [0]), .D (nx72), .CLK (
        NOT_clk)) ;
    oai21 ix74 (.Y (nx72), .A0 (nx286), .A1 (nx65), .B0 (nx300)) ;
    nand03 ix59 (.Y (nx65), .A0 (nx125), .A1 (nx156), .A2 (nx165)) ;
    inv01 ix126 (.Y (nx125), .A (nx56)) ;
    nand02 ix57 (.Y (nx56), .A0 (nx129), .A1 (nx300)) ;
    nand02 ix130 (.Y (nx129), .A0 (readFinal), .A1 (currentState_4)) ;
    oai21 ix114 (.Y (nx113), .A0 (nx133), .A1 (nx153), .B0 (nx181)) ;
    oai21 ix134 (.Y (nx133), .A0 (nx74), .A1 (currentState_3), .B0 (nx300)) ;
    nor02_2x ix75 (.Y (nx74), .A0 (nx64), .A1 (nx173)) ;
    nor03_2x ix65 (.Y (nx64), .A0 (nx137), .A1 (switchRam), .A2 (nx171)) ;
    dff reg_currentState_2 (.Q (currentState_2), .QB (nx137), .D (nx83), .CLK (
        NOT_clk)) ;
    mux21 ix84 (.Y (nx83), .A0 (nx137), .A1 (nx140), .S0 (nx65)) ;
    nand02 ix141 (.Y (nx140), .A0 (nx300), .A1 (currentState_0)) ;
    oai21 ix94 (.Y (nx93), .A0 (nx147), .A1 (nx153), .B0 (nx167)) ;
    oai21 ix148 (.Y (nx147), .A0 (nx28), .A1 (currentState_4), .B0 (nx300)) ;
    oai21 ix29 (.Y (nx28), .A0 (nx137), .A1 (nx20), .B0 (nx286)) ;
    inv01 ix21 (.Y (nx20), .A (nx151)) ;
    nor02_2x ix152 (.Y (nx151), .A0 (loadNextWordList), .A1 (loadWord)) ;
    nor02_2x ix154 (.Y (nx153), .A0 (nx56), .A1 (nx52)) ;
    nand02 ix53 (.Y (nx52), .A0 (nx156), .A1 (nx165)) ;
    nand02 ix157 (.Y (nx156), .A0 (nx280), .A1 (nx163)) ;
    dff reg_currentState_0 (.Q (currentState_0), .QB (\$dummy [1]), .D (nx93), .CLK (
        NOT_clk)) ;
    inv02 ix162 (.Y (NOT_clk), .A (clk)) ;
    dff reg_currentState_4 (.Q (currentState_4), .QB (nx163), .D (nx113), .CLK (
        NOT_clk)) ;
    oai21 ix166 (.Y (nx165), .A0 (loadNextWordList), .A1 (loadWord), .B0 (
          currentState_0)) ;
    nand04 ix168 (.Y (nx167), .A0 (currentState_0), .A1 (nx129), .A2 (nx300), .A3 (
           nx169)) ;
    nor02_2x ix170 (.Y (nx169), .A0 (loadNextWordList), .A1 (loadWord)) ;
    inv01 ix172 (.Y (nx171), .A (loadNextWordList)) ;
    oai21 ix174 (.Y (nx173), .A0 (loadNextWordList), .A1 (loadWord), .B0 (
          currentState_2)) ;
    mux21 ix104 (.Y (nx103), .A0 (nx177), .A1 (nx179), .S0 (nx65)) ;
    dff reg_currentState_3 (.Q (currentState_3), .QB (nx177), .D (nx103), .CLK (
        NOT_clk)) ;
    nand03 ix180 (.Y (nx179), .A0 (currentState_2), .A1 (nx300), .A2 (
           loadNextWordList)) ;
    nor02_2x ix45 (.Y (nx44), .A0 (nx280), .A1 (nx169)) ;
    nand02 ix97 (.Y (resetUnitNumberReg), .A0 (nx187), .A1 (nx286)) ;
    nand02 ix188 (.Y (nx187), .A0 (loadNextWordList), .A1 (currentState_2)) ;
    latch lat_addressRegIn_0 (.Q (addressRegIn_0), .D (nx136), .CLK (nx280)) ;
    nor02_2x ix137 (.Y (nx136), .A0 (nx191), .A1 (nx286)) ;
    inv01 ix192 (.Y (nx191), .A (ramBasedAddress[0])) ;
    latch lat_addressRegIn_1 (.Q (addressRegIn_1), .D (nx144), .CLK (nx280)) ;
    nor02_2x ix145 (.Y (nx144), .A0 (nx196), .A1 (nx286)) ;
    inv01 ix197 (.Y (nx196), .A (ramBasedAddress[1])) ;
    latch lat_addressRegIn_2 (.Q (addressRegIn_2), .D (nx152), .CLK (nx280)) ;
    nor02_2x ix153 (.Y (nx152), .A0 (nx201), .A1 (nx286)) ;
    inv01 ix202 (.Y (nx201), .A (ramBasedAddress[2])) ;
    latch lat_addressRegIn_3 (.Q (addressRegIn_3), .D (nx160), .CLK (nx280)) ;
    nor02_2x ix161 (.Y (nx160), .A0 (nx205), .A1 (nx288)) ;
    inv01 ix206 (.Y (nx205), .A (ramBasedAddress[3])) ;
    latch lat_addressRegIn_4 (.Q (addressRegIn_4), .D (nx168), .CLK (nx280)) ;
    nor02_2x ix169 (.Y (nx168), .A0 (nx209), .A1 (nx288)) ;
    inv01 ix210 (.Y (nx209), .A (ramBasedAddress[4])) ;
    latch lat_addressRegIn_5 (.Q (addressRegIn_5), .D (nx176), .CLK (nx282)) ;
    nor02_2x ix177 (.Y (nx176), .A0 (nx213), .A1 (nx288)) ;
    inv01 ix214 (.Y (nx213), .A (ramBasedAddress[5])) ;
    latch lat_addressRegIn_6 (.Q (addressRegIn_6), .D (nx184), .CLK (nx282)) ;
    nor02_2x ix185 (.Y (nx184), .A0 (nx217), .A1 (nx288)) ;
    inv01 ix218 (.Y (nx217), .A (ramBasedAddress[6])) ;
    latch lat_addressRegIn_7 (.Q (addressRegIn_7), .D (nx192), .CLK (nx282)) ;
    nor02_2x ix193 (.Y (nx192), .A0 (nx221), .A1 (nx288)) ;
    inv01 ix222 (.Y (nx221), .A (ramBasedAddress[7])) ;
    latch lat_addressRegIn_8 (.Q (addressRegIn_8), .D (nx200), .CLK (nx282)) ;
    nor02_2x ix201 (.Y (nx200), .A0 (nx225), .A1 (nx288)) ;
    inv01 ix226 (.Y (nx225), .A (ramBasedAddress[8])) ;
    latch lat_addressRegIn_9 (.Q (addressRegIn_9), .D (nx208), .CLK (nx282)) ;
    nor02_2x ix209 (.Y (nx208), .A0 (nx229), .A1 (nx288)) ;
    inv01 ix230 (.Y (nx229), .A (ramBasedAddress[9])) ;
    latch lat_addressRegIn_10 (.Q (addressRegIn_10), .D (nx216), .CLK (nx282)) ;
    nor02_2x ix217 (.Y (nx216), .A0 (nx233), .A1 (nx290)) ;
    inv01 ix234 (.Y (nx233), .A (ramBasedAddress[10])) ;
    latch lat_addressRegIn_11 (.Q (addressRegIn_11), .D (nx224), .CLK (nx282)) ;
    nor02_2x ix225 (.Y (nx224), .A0 (nx237), .A1 (nx290)) ;
    inv01 ix238 (.Y (nx237), .A (ramBasedAddress[11])) ;
    latch lat_addressRegIn_12 (.Q (addressRegIn_12), .D (nx232), .CLK (nx284)) ;
    nor02_2x ix233 (.Y (nx232), .A0 (nx241), .A1 (nx290)) ;
    inv01 ix242 (.Y (nx241), .A (ramBasedAddress[12])) ;
    latch lat_dmaCountIn_1 (.Q (dmaCountIn_1), .D (nx240), .CLK (nx22)) ;
    nor02_2x ix241 (.Y (nx240), .A0 (nx245), .A1 (nx171)) ;
    inv01 ix246 (.Y (nx245), .A (filterSize[1])) ;
    nor02_2x ix23 (.Y (nx22), .A0 (nx137), .A1 (nx151)) ;
    latch lat_dmaCountIn_2 (.Q (dmaCountIn_2), .D (nx248), .CLK (nx22)) ;
    nor02_2x ix249 (.Y (nx248), .A0 (nx251), .A1 (nx171)) ;
    inv01 ix252 (.Y (nx251), .A (filterSize[2])) ;
    dff aluNumberCounter_counterReg_reg_Q_0 (.Q (aluNumber[0]), .QB (nx263), .D (
        nx104), .CLK (nx100)) ;
    nand03 ix105 (.Y (nx104), .A0 (nx187), .A1 (nx290), .A2 (aluNumber[0])) ;
    oai22 ix101 (.Y (nx100), .A0 (NOT_clk), .A1 (nx256), .B0 (nx259), .B1 (nx261
          )) ;
    nor02_2x ix95 (.Y (nx94), .A0 (nx171), .A1 (nx137)) ;
    nand02 ix260 (.Y (nx259), .A0 (loadNextWordList), .A1 (readOne)) ;
    nand02 ix262 (.Y (nx261), .A0 (NOT_clk), .A1 (currentState_4)) ;
    dff aluNumberCounter_counterReg_reg_Q_1 (.Q (aluNumber[1]), .QB (nx268), .D (
        nx114), .CLK (nx100)) ;
    nand02 ix115 (.Y (nx114), .A0 (nx256), .A1 (nx266)) ;
    dff aluNumberCounter_counterReg_reg_Q_2 (.Q (aluNumber[2]), .QB (\$dummy [2]
        ), .D (nx126), .CLK (nx100)) ;
    nand02 ix127 (.Y (nx126), .A0 (nx256), .A1 (nx271)) ;
    xnor2 ix272 (.Y (nx271), .A0 (aluNumber[2]), .A1 (nx122)) ;
    nor02_2x ix123 (.Y (nx122), .A0 (nx263), .A1 (nx268)) ;
    inv02 ix279 (.Y (nx280), .A (currentState_0)) ;
    inv02 ix281 (.Y (nx282), .A (currentState_0)) ;
    inv02 ix283 (.Y (nx284), .A (currentState_0)) ;
    inv02 ix285 (.Y (nx286), .A (currentState_1)) ;
    inv02 ix287 (.Y (nx288), .A (currentState_1)) ;
    inv02 ix289 (.Y (nx290), .A (currentState_1)) ;
    nand04 ix110 (.Y (nx181), .A0 (currentState_4), .A1 (nx296), .A2 (nx302), .A3 (
           nx298)) ;
    inv01 ix295 (.Y (nx296), .A (readFinal)) ;
    inv01 ix297 (.Y (nx298), .A (nx44)) ;
    nor02_2x ix257 (.Y (nx256), .A0 (nx94), .A1 (currentState_1)) ;
    xnor2 ix267 (.Y (nx266), .A0 (nx268), .A1 (nx263)) ;
    inv01 ix299 (.Y (nx300), .A (switchRam)) ;
    inv01 ix301 (.Y (nx302), .A (switchRam)) ;
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
    nand02 ix44 (.Y (nx43), .A0 (load[0]), .A1 (nx215)) ;
    nand02 ix46 (.Y (nx45), .A0 (nx47), .A1 (nx49)) ;
    inv01 ix48 (.Y (nx47), .A (isLoad)) ;
    dff counterReg_reg_Q_0 (.Q (count[0]), .QB (nx49), .D (nx10), .CLK (nx223)
        ) ;
    dff counterReg_reg_Q_1 (.Q (count[1]), .QB (nx59), .D (nx24), .CLK (nx223)
        ) ;
    oai21 ix25 (.Y (nx24), .A0 (nx215), .A1 (nx55), .B0 (nx57)) ;
    nand02 ix58 (.Y (nx57), .A0 (load[1]), .A1 (nx215)) ;
    dff counterReg_reg_Q_2 (.Q (count[2]), .QB (nx69), .D (nx38), .CLK (nx223)
        ) ;
    oai21 ix39 (.Y (nx38), .A0 (nx215), .A1 (nx63), .B0 (nx67)) ;
    nand02 ix68 (.Y (nx67), .A0 (load[2]), .A1 (nx215)) ;
    dff counterReg_reg_Q_3 (.Q (count[3]), .QB (nx81), .D (nx52), .CLK (nx223)
        ) ;
    oai21 ix53 (.Y (nx52), .A0 (nx215), .A1 (nx73), .B0 (nx79)) ;
    nor02_2x ix43 (.Y (nx42), .A0 (nx69), .A1 (nx77)) ;
    nand02 ix78 (.Y (nx77), .A0 (count[1]), .A1 (count[0])) ;
    nand02 ix80 (.Y (nx79), .A0 (load[3]), .A1 (nx215)) ;
    dff counterReg_reg_Q_4 (.Q (count[4]), .QB (nx91), .D (nx66), .CLK (nx223)
        ) ;
    oai21 ix67 (.Y (nx66), .A0 (nx217), .A1 (nx85), .B0 (nx89)) ;
    nor03_2x ix57 (.Y (nx56), .A0 (nx81), .A1 (nx69), .A2 (nx77)) ;
    nand02 ix90 (.Y (nx89), .A0 (load[4]), .A1 (nx217)) ;
    dff counterReg_reg_Q_5 (.Q (count[5]), .QB (nx103), .D (nx80), .CLK (nx223)
        ) ;
    oai21 ix81 (.Y (nx80), .A0 (nx217), .A1 (nx95), .B0 (nx101)) ;
    nand02 ix102 (.Y (nx101), .A0 (load[5]), .A1 (nx217)) ;
    dff counterReg_reg_Q_6 (.Q (count[6]), .QB (nx115), .D (nx94), .CLK (nx223)
        ) ;
    oai21 ix95 (.Y (nx94), .A0 (nx217), .A1 (nx107), .B0 (nx113)) ;
    nand04 ix112 (.Y (nx111), .A0 (count[3]), .A1 (count[2]), .A2 (count[1]), .A3 (
           count[0])) ;
    nand02 ix114 (.Y (nx113), .A0 (load[6]), .A1 (nx217)) ;
    dff counterReg_reg_Q_7 (.Q (count[7]), .QB (nx125), .D (nx108), .CLK (nx225)
        ) ;
    oai21 ix109 (.Y (nx108), .A0 (nx217), .A1 (nx119), .B0 (nx123)) ;
    nor04 ix99 (.Y (nx98), .A0 (nx115), .A1 (nx103), .A2 (nx91), .A3 (nx111)) ;
    nand02 ix124 (.Y (nx123), .A0 (load[7]), .A1 (nx219)) ;
    dff counterReg_reg_Q_8 (.Q (count[8]), .QB (nx137), .D (nx122), .CLK (nx225)
        ) ;
    oai21 ix123 (.Y (nx122), .A0 (nx219), .A1 (nx129), .B0 (nx135)) ;
    nand02 ix136 (.Y (nx135), .A0 (load[8]), .A1 (nx219)) ;
    dff counterReg_reg_Q_9 (.Q (count[9]), .QB (nx149), .D (nx136), .CLK (nx225)
        ) ;
    oai21 ix137 (.Y (nx136), .A0 (nx219), .A1 (nx141), .B0 (nx147)) ;
    inv01 ix146 (.Y (nx145), .A (nx98)) ;
    nand02 ix148 (.Y (nx147), .A0 (load[9]), .A1 (nx219)) ;
    dff counterReg_reg_Q_10 (.Q (count[10]), .QB (nx159), .D (nx150), .CLK (
        nx225)) ;
    oai21 ix151 (.Y (nx150), .A0 (nx219), .A1 (nx153), .B0 (nx157)) ;
    nand02 ix158 (.Y (nx157), .A0 (load[10]), .A1 (nx219)) ;
    dff counterReg_reg_Q_11 (.Q (count[11]), .QB (nx171), .D (nx164), .CLK (
        nx225)) ;
    oai21 ix165 (.Y (nx164), .A0 (nx221), .A1 (nx163), .B0 (nx169)) ;
    nand02 ix170 (.Y (nx169), .A0 (load[11]), .A1 (nx221)) ;
    dff counterReg_reg_Q_12 (.Q (count[12]), .QB (\$dummy [0]), .D (nx178), .CLK (
        nx225)) ;
    oai21 ix179 (.Y (nx178), .A0 (nx221), .A1 (nx175), .B0 (nx181)) ;
    xnor2 ix176 (.Y (nx175), .A0 (count[12]), .A1 (nx168)) ;
    nor04 ix169 (.Y (nx168), .A0 (nx171), .A1 (nx159), .A2 (nx149), .A3 (nx179)
          ) ;
    nand03 ix180 (.Y (nx179), .A0 (count[8]), .A1 (count[7]), .A2 (nx98)) ;
    nand02 ix182 (.Y (nx181), .A0 (nx221), .A1 (load[12])) ;
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
    inv02 ix214 (.Y (nx215), .A (nx47)) ;
    inv02 ix216 (.Y (nx217), .A (nx47)) ;
    inv02 ix218 (.Y (nx219), .A (nx47)) ;
    inv02 ix220 (.Y (nx221), .A (nx47)) ;
    buf02 ix222 (.Y (nx223), .A (clk)) ;
    buf02 ix224 (.Y (nx225), .A (clk)) ;
endmodule


module DMA_13_80 ( initialCount, readBaseAddress, readStep, initAddress, 
                   initCounter, load, internalBus, finishedOneRead, 
                   finishedReading, clk, ramDataInBus, ramRead, ramReadAddress, 
                   MFC ) ;

    input [2:0]initialCount ;
    input [12:0]readBaseAddress ;
    input [12:0]readStep ;
    input initAddress ;
    input initCounter ;
    input load ;
    output [79:0]internalBus ;
    output finishedOneRead ;
    output finishedReading ;
    input clk ;
    input [79:0]ramDataInBus ;
    output ramRead ;
    output [12:0]ramReadAddress ;
    input MFC ;

    wire tobeAdded_12, tobeAdded_11, tobeAdded_10, tobeAdded_9, tobeAdded_8, 
         tobeAdded_7, tobeAdded_6, tobeAdded_5, tobeAdded_4, tobeAdded_3, 
         tobeAdded_2, tobeAdded_1, tobeAdded_0, GND, currentCount_0, nx82, 
         currentCount_2, currentCount_1, nx100, nx120, nx136, nx148, nx162, nx50, 
         nx60, nx70, nx83, nx85, nx88, nx91, nx101, nx103, nx105, nx107, nx109, 
         nx111, nx114, nx119, nx123, nx128, nx130, nx133, nx137, nx139, nx147, 
         nx261, nx263, nx265, nx267, nx269, nx271, nx273, nx275, nx277, nx279, 
         nx281, nx283, nx289, nx295, nx297, nx299, nx301;
    wire [12:0] \$dummy ;




    MultiStepCounter_13 addressRegister (.load ({readBaseAddress[12],
                        readBaseAddress[11],readBaseAddress[10],
                        readBaseAddress[9],readBaseAddress[8],readBaseAddress[7]
                        ,readBaseAddress[6],readBaseAddress[5],
                        readBaseAddress[4],readBaseAddress[3],readBaseAddress[2]
                        ,readBaseAddress[1],readBaseAddress[0]}), .toBeAdded ({
                        tobeAdded_12,tobeAdded_11,tobeAdded_10,tobeAdded_9,
                        tobeAdded_8,tobeAdded_7,tobeAdded_6,tobeAdded_5,
                        tobeAdded_4,tobeAdded_3,tobeAdded_2,tobeAdded_1,
                        tobeAdded_0}), .reset (GND), .clk (clk), .isLoad (
                        initAddress), .MFC (MFC), .count ({ramReadAddress[12],
                        ramReadAddress[11],ramReadAddress[10],ramReadAddress[9],
                        ramReadAddress[8],ramReadAddress[7],ramReadAddress[6],
                        ramReadAddress[5],ramReadAddress[4],ramReadAddress[3],
                        ramReadAddress[2],ramReadAddress[1],ramReadAddress[0]})
                        ) ;
    fake_gnd ix9 (.Y (GND)) ;
    nor02_2x ix155 (.Y (ramRead), .A0 (nx83), .A1 (nx130)) ;
    nor03_2x ix84 (.Y (nx83), .A0 (nx85), .A1 (clk), .A2 (nx136)) ;
    inv01 ix86 (.Y (nx85), .A (MFC)) ;
    nand03 ix137 (.Y (nx136), .A0 (nx88), .A1 (nx114), .A2 (currentCount_0)) ;
    oai21 ix61 (.Y (nx60), .A0 (nx91), .A1 (nx105), .B0 (nx111)) ;
    aoi21 ix92 (.Y (nx91), .A0 (initialCount[1]), .A1 (nx297), .B0 (nx100)) ;
    oai22 ix101 (.Y (nx100), .A0 (nx88), .A1 (nx82), .B0 (nx297), .B1 (nx109)) ;
    nand02 ix83 (.Y (nx82), .A0 (currentCount_0), .A1 (nx107)) ;
    mux21 ix51 (.Y (nx50), .A0 (nx101), .A1 (nx103), .S0 (nx105)) ;
    nor02_2x ix102 (.Y (nx101), .A0 (nx103), .A1 (nx297)) ;
    dff counter_counterReg_reg_Q_0 (.Q (currentCount_0), .QB (nx103), .D (nx50)
        , .CLK (clk)) ;
    nor02_2x ix106 (.Y (nx105), .A0 (MFC), .A1 (nx297)) ;
    inv01 ix108 (.Y (nx107), .A (initCounter)) ;
    nand02 ix110 (.Y (nx109), .A0 (nx88), .A1 (nx103)) ;
    nand02 ix112 (.Y (nx111), .A0 (currentCount_1), .A1 (nx105)) ;
    dff counter_counterReg_reg_Q_1 (.Q (currentCount_1), .QB (nx88), .D (nx60), 
        .CLK (clk)) ;
    oai21 ix71 (.Y (nx70), .A0 (nx119), .A1 (nx105), .B0 (nx128)) ;
    aoi21 ix120 (.Y (nx119), .A0 (initialCount[2]), .A1 (nx297), .B0 (nx120)) ;
    nor02_2x ix121 (.Y (nx120), .A0 (nx297), .A1 (nx123)) ;
    dff counter_counterReg_reg_Q_2 (.Q (currentCount_2), .QB (nx114), .D (nx70)
        , .CLK (clk)) ;
    nand02 ix129 (.Y (nx128), .A0 (currentCount_2), .A1 (nx105)) ;
    oai21 ix131 (.Y (nx130), .A0 (nx109), .A1 (nx133), .B0 (load)) ;
    nand02 ix134 (.Y (nx133), .A0 (clk), .A1 (nx114)) ;
    nor02_2x ix167 (.Y (finishedReading), .A0 (nx137), .A1 (nx139)) ;
    nand02 ix138 (.Y (nx137), .A0 (load), .A1 (MFC)) ;
    nor02_2x ix140 (.Y (nx139), .A0 (nx162), .A1 (nx148)) ;
    nor02_2x ix163 (.Y (nx162), .A0 (clk), .A1 (nx136)) ;
    nor03_2x ix149 (.Y (nx148), .A0 (currentCount_1), .A1 (currentCount_0), .A2 (
             nx133)) ;
    nor02_2x ix157 (.Y (finishedOneRead), .A0 (nx147), .A1 (nx85)) ;
    inv01 ix148 (.Y (nx147), .A (load)) ;
    dff readStepRegister_reg_Q_0 (.Q (tobeAdded_0), .QB (\$dummy [0]), .D (
        readStep[0]), .CLK (nx297)) ;
    dff readStepRegister_reg_Q_1 (.Q (tobeAdded_1), .QB (\$dummy [1]), .D (
        readStep[1]), .CLK (nx299)) ;
    dff readStepRegister_reg_Q_2 (.Q (tobeAdded_2), .QB (\$dummy [2]), .D (
        readStep[2]), .CLK (nx299)) ;
    dff readStepRegister_reg_Q_3 (.Q (tobeAdded_3), .QB (\$dummy [3]), .D (
        readStep[3]), .CLK (nx299)) ;
    dff readStepRegister_reg_Q_4 (.Q (tobeAdded_4), .QB (\$dummy [4]), .D (
        readStep[4]), .CLK (nx299)) ;
    dff readStepRegister_reg_Q_5 (.Q (tobeAdded_5), .QB (\$dummy [5]), .D (
        readStep[5]), .CLK (nx299)) ;
    dff readStepRegister_reg_Q_6 (.Q (tobeAdded_6), .QB (\$dummy [6]), .D (
        readStep[6]), .CLK (nx299)) ;
    dff readStepRegister_reg_Q_7 (.Q (tobeAdded_7), .QB (\$dummy [7]), .D (
        readStep[7]), .CLK (nx299)) ;
    dff readStepRegister_reg_Q_8 (.Q (tobeAdded_8), .QB (\$dummy [8]), .D (
        readStep[8]), .CLK (nx301)) ;
    dff readStepRegister_reg_Q_9 (.Q (tobeAdded_9), .QB (\$dummy [9]), .D (
        readStep[9]), .CLK (nx301)) ;
    dff readStepRegister_reg_Q_10 (.Q (tobeAdded_10), .QB (\$dummy [10]), .D (
        readStep[10]), .CLK (nx301)) ;
    dff readStepRegister_reg_Q_11 (.Q (tobeAdded_11), .QB (\$dummy [11]), .D (
        readStep[11]), .CLK (nx301)) ;
    dff readStepRegister_reg_Q_12 (.Q (tobeAdded_12), .QB (\$dummy [12]), .D (
        readStep[12]), .CLK (nx301)) ;
    trib04 tristateLabel_tri_output_0 (.Y (internalBus[0]), .A (ramDataInBus[0])
           , .E (nx261)) ;
    trib04 tristateLabel_tri_output_1 (.Y (internalBus[1]), .A (ramDataInBus[1])
           , .E (nx261)) ;
    trib04 tristateLabel_tri_output_2 (.Y (internalBus[2]), .A (ramDataInBus[2])
           , .E (nx261)) ;
    trib04 tristateLabel_tri_output_3 (.Y (internalBus[3]), .A (ramDataInBus[3])
           , .E (nx261)) ;
    trib04 tristateLabel_tri_output_4 (.Y (internalBus[4]), .A (ramDataInBus[4])
           , .E (nx261)) ;
    trib04 tristateLabel_tri_output_5 (.Y (internalBus[5]), .A (ramDataInBus[5])
           , .E (nx261)) ;
    trib04 tristateLabel_tri_output_6 (.Y (internalBus[6]), .A (ramDataInBus[6])
           , .E (nx261)) ;
    trib04 tristateLabel_tri_output_7 (.Y (internalBus[7]), .A (ramDataInBus[7])
           , .E (nx263)) ;
    trib04 tristateLabel_tri_output_8 (.Y (internalBus[8]), .A (ramDataInBus[8])
           , .E (nx263)) ;
    trib04 tristateLabel_tri_output_9 (.Y (internalBus[9]), .A (ramDataInBus[9])
           , .E (nx263)) ;
    trib04 tristateLabel_tri_output_10 (.Y (internalBus[10]), .A (
           ramDataInBus[10]), .E (nx263)) ;
    trib04 tristateLabel_tri_output_11 (.Y (internalBus[11]), .A (
           ramDataInBus[11]), .E (nx263)) ;
    trib04 tristateLabel_tri_output_12 (.Y (internalBus[12]), .A (
           ramDataInBus[12]), .E (nx263)) ;
    trib04 tristateLabel_tri_output_13 (.Y (internalBus[13]), .A (
           ramDataInBus[13]), .E (nx263)) ;
    trib04 tristateLabel_tri_output_14 (.Y (internalBus[14]), .A (
           ramDataInBus[14]), .E (nx265)) ;
    trib04 tristateLabel_tri_output_15 (.Y (internalBus[15]), .A (
           ramDataInBus[15]), .E (nx265)) ;
    trib04 tristateLabel_tri_output_16 (.Y (internalBus[16]), .A (
           ramDataInBus[16]), .E (nx265)) ;
    trib04 tristateLabel_tri_output_17 (.Y (internalBus[17]), .A (
           ramDataInBus[17]), .E (nx265)) ;
    trib04 tristateLabel_tri_output_18 (.Y (internalBus[18]), .A (
           ramDataInBus[18]), .E (nx265)) ;
    trib04 tristateLabel_tri_output_19 (.Y (internalBus[19]), .A (
           ramDataInBus[19]), .E (nx265)) ;
    trib04 tristateLabel_tri_output_20 (.Y (internalBus[20]), .A (
           ramDataInBus[20]), .E (nx265)) ;
    trib04 tristateLabel_tri_output_21 (.Y (internalBus[21]), .A (
           ramDataInBus[21]), .E (nx267)) ;
    trib04 tristateLabel_tri_output_22 (.Y (internalBus[22]), .A (
           ramDataInBus[22]), .E (nx267)) ;
    trib04 tristateLabel_tri_output_23 (.Y (internalBus[23]), .A (
           ramDataInBus[23]), .E (nx267)) ;
    trib04 tristateLabel_tri_output_24 (.Y (internalBus[24]), .A (
           ramDataInBus[24]), .E (nx267)) ;
    trib04 tristateLabel_tri_output_25 (.Y (internalBus[25]), .A (
           ramDataInBus[25]), .E (nx267)) ;
    trib04 tristateLabel_tri_output_26 (.Y (internalBus[26]), .A (
           ramDataInBus[26]), .E (nx267)) ;
    trib04 tristateLabel_tri_output_27 (.Y (internalBus[27]), .A (
           ramDataInBus[27]), .E (nx267)) ;
    trib04 tristateLabel_tri_output_28 (.Y (internalBus[28]), .A (
           ramDataInBus[28]), .E (nx269)) ;
    trib04 tristateLabel_tri_output_29 (.Y (internalBus[29]), .A (
           ramDataInBus[29]), .E (nx269)) ;
    trib04 tristateLabel_tri_output_30 (.Y (internalBus[30]), .A (
           ramDataInBus[30]), .E (nx269)) ;
    trib04 tristateLabel_tri_output_31 (.Y (internalBus[31]), .A (
           ramDataInBus[31]), .E (nx269)) ;
    trib04 tristateLabel_tri_output_32 (.Y (internalBus[32]), .A (
           ramDataInBus[32]), .E (nx269)) ;
    trib04 tristateLabel_tri_output_33 (.Y (internalBus[33]), .A (
           ramDataInBus[33]), .E (nx269)) ;
    trib04 tristateLabel_tri_output_34 (.Y (internalBus[34]), .A (
           ramDataInBus[34]), .E (nx269)) ;
    trib04 tristateLabel_tri_output_35 (.Y (internalBus[35]), .A (
           ramDataInBus[35]), .E (nx271)) ;
    trib04 tristateLabel_tri_output_36 (.Y (internalBus[36]), .A (
           ramDataInBus[36]), .E (nx271)) ;
    trib04 tristateLabel_tri_output_37 (.Y (internalBus[37]), .A (
           ramDataInBus[37]), .E (nx271)) ;
    trib04 tristateLabel_tri_output_38 (.Y (internalBus[38]), .A (
           ramDataInBus[38]), .E (nx271)) ;
    trib04 tristateLabel_tri_output_39 (.Y (internalBus[39]), .A (
           ramDataInBus[39]), .E (nx271)) ;
    trib04 tristateLabel_tri_output_40 (.Y (internalBus[40]), .A (
           ramDataInBus[40]), .E (nx271)) ;
    trib04 tristateLabel_tri_output_41 (.Y (internalBus[41]), .A (
           ramDataInBus[41]), .E (nx271)) ;
    trib04 tristateLabel_tri_output_42 (.Y (internalBus[42]), .A (
           ramDataInBus[42]), .E (nx273)) ;
    trib04 tristateLabel_tri_output_43 (.Y (internalBus[43]), .A (
           ramDataInBus[43]), .E (nx273)) ;
    trib04 tristateLabel_tri_output_44 (.Y (internalBus[44]), .A (
           ramDataInBus[44]), .E (nx273)) ;
    trib04 tristateLabel_tri_output_45 (.Y (internalBus[45]), .A (
           ramDataInBus[45]), .E (nx273)) ;
    trib04 tristateLabel_tri_output_46 (.Y (internalBus[46]), .A (
           ramDataInBus[46]), .E (nx273)) ;
    trib04 tristateLabel_tri_output_47 (.Y (internalBus[47]), .A (
           ramDataInBus[47]), .E (nx273)) ;
    trib04 tristateLabel_tri_output_48 (.Y (internalBus[48]), .A (
           ramDataInBus[48]), .E (nx273)) ;
    trib04 tristateLabel_tri_output_49 (.Y (internalBus[49]), .A (
           ramDataInBus[49]), .E (nx275)) ;
    trib04 tristateLabel_tri_output_50 (.Y (internalBus[50]), .A (
           ramDataInBus[50]), .E (nx275)) ;
    trib04 tristateLabel_tri_output_51 (.Y (internalBus[51]), .A (
           ramDataInBus[51]), .E (nx275)) ;
    trib04 tristateLabel_tri_output_52 (.Y (internalBus[52]), .A (
           ramDataInBus[52]), .E (nx275)) ;
    trib04 tristateLabel_tri_output_53 (.Y (internalBus[53]), .A (
           ramDataInBus[53]), .E (nx275)) ;
    trib04 tristateLabel_tri_output_54 (.Y (internalBus[54]), .A (
           ramDataInBus[54]), .E (nx275)) ;
    trib04 tristateLabel_tri_output_55 (.Y (internalBus[55]), .A (
           ramDataInBus[55]), .E (nx275)) ;
    trib04 tristateLabel_tri_output_56 (.Y (internalBus[56]), .A (
           ramDataInBus[56]), .E (nx277)) ;
    trib04 tristateLabel_tri_output_57 (.Y (internalBus[57]), .A (
           ramDataInBus[57]), .E (nx277)) ;
    trib04 tristateLabel_tri_output_58 (.Y (internalBus[58]), .A (
           ramDataInBus[58]), .E (nx277)) ;
    trib04 tristateLabel_tri_output_59 (.Y (internalBus[59]), .A (
           ramDataInBus[59]), .E (nx277)) ;
    trib04 tristateLabel_tri_output_60 (.Y (internalBus[60]), .A (
           ramDataInBus[60]), .E (nx277)) ;
    trib04 tristateLabel_tri_output_61 (.Y (internalBus[61]), .A (
           ramDataInBus[61]), .E (nx277)) ;
    trib04 tristateLabel_tri_output_62 (.Y (internalBus[62]), .A (
           ramDataInBus[62]), .E (nx277)) ;
    trib04 tristateLabel_tri_output_63 (.Y (internalBus[63]), .A (
           ramDataInBus[63]), .E (nx279)) ;
    trib04 tristateLabel_tri_output_64 (.Y (internalBus[64]), .A (
           ramDataInBus[64]), .E (nx279)) ;
    trib04 tristateLabel_tri_output_65 (.Y (internalBus[65]), .A (
           ramDataInBus[65]), .E (nx279)) ;
    trib04 tristateLabel_tri_output_66 (.Y (internalBus[66]), .A (
           ramDataInBus[66]), .E (nx279)) ;
    trib04 tristateLabel_tri_output_67 (.Y (internalBus[67]), .A (
           ramDataInBus[67]), .E (nx279)) ;
    trib04 tristateLabel_tri_output_68 (.Y (internalBus[68]), .A (
           ramDataInBus[68]), .E (nx279)) ;
    trib04 tristateLabel_tri_output_69 (.Y (internalBus[69]), .A (
           ramDataInBus[69]), .E (nx279)) ;
    trib04 tristateLabel_tri_output_70 (.Y (internalBus[70]), .A (
           ramDataInBus[70]), .E (nx281)) ;
    trib04 tristateLabel_tri_output_71 (.Y (internalBus[71]), .A (
           ramDataInBus[71]), .E (nx281)) ;
    trib04 tristateLabel_tri_output_72 (.Y (internalBus[72]), .A (
           ramDataInBus[72]), .E (nx281)) ;
    trib04 tristateLabel_tri_output_73 (.Y (internalBus[73]), .A (
           ramDataInBus[73]), .E (nx281)) ;
    trib04 tristateLabel_tri_output_74 (.Y (internalBus[74]), .A (
           ramDataInBus[74]), .E (nx281)) ;
    trib04 tristateLabel_tri_output_75 (.Y (internalBus[75]), .A (
           ramDataInBus[75]), .E (nx281)) ;
    trib04 tristateLabel_tri_output_76 (.Y (internalBus[76]), .A (
           ramDataInBus[76]), .E (nx281)) ;
    trib04 tristateLabel_tri_output_77 (.Y (internalBus[77]), .A (
           ramDataInBus[77]), .E (nx283)) ;
    trib04 tristateLabel_tri_output_78 (.Y (internalBus[78]), .A (
           ramDataInBus[78]), .E (nx283)) ;
    trib04 tristateLabel_tri_output_79 (.Y (internalBus[79]), .A (
           ramDataInBus[79]), .E (nx283)) ;
    buf02 ix260 (.Y (nx261), .A (nx289)) ;
    buf02 ix262 (.Y (nx263), .A (nx289)) ;
    buf02 ix264 (.Y (nx265), .A (nx289)) ;
    buf02 ix266 (.Y (nx267), .A (nx289)) ;
    buf02 ix268 (.Y (nx269), .A (nx289)) ;
    buf02 ix270 (.Y (nx271), .A (nx289)) ;
    buf02 ix272 (.Y (nx273), .A (nx289)) ;
    buf02 ix274 (.Y (nx275), .A (finishedOneRead)) ;
    buf02 ix276 (.Y (nx277), .A (finishedOneRead)) ;
    buf02 ix278 (.Y (nx279), .A (finishedOneRead)) ;
    buf02 ix280 (.Y (nx281), .A (finishedOneRead)) ;
    buf02 ix282 (.Y (nx283), .A (finishedOneRead)) ;
    nor02_2x ix288 (.Y (nx289), .A0 (nx147), .A1 (nx85)) ;
    xnor2 ix124 (.Y (nx123), .A0 (nx114), .A1 (nx295)) ;
    nand02 ix115 (.Y (nx295), .A0 (nx88), .A1 (nx103)) ;
    inv02 ix296 (.Y (nx297), .A (nx107)) ;
    inv02 ix298 (.Y (nx299), .A (nx107)) ;
    inv02 ix300 (.Y (nx301), .A (nx107)) ;
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

