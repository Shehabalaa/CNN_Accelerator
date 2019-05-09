//
// Verilog description for cell CNNWithRAM, 
// Thu May  9 15:35:22 2019
//
// LeonardoSpectrum Level 3, 2018a.2 
//


module CNNWithRAM ( clk, rst, start, finishCNN ) ;

    input clk ;
    input rst ;
    input start ;
    output finishCNN ;

    wire MFCWindowRam, MFCWrite, windowRamAddressRead_12, 
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
         windowRamWrite, GND;
    wire [108:0] \$dummy ;




    CNNModule_8_16_5_5_3_12_13 CNNMap (.startCNN (start), .clk (clk), .rst (rst)
                               , .weightsRamDataInBus ({GND,GND,GND,GND,GND,GND,
                               GND,GND,GND,GND,GND,GND,GND,GND,GND,GND,GND,GND,
                               GND,GND,GND,GND,GND,GND,GND,GND,GND,GND,GND,GND,
                               GND,GND,GND,GND,GND,GND,GND,GND,GND,GND}), .windowRamDataInBus (
                               {GND,GND,GND,GND,GND,GND,GND,GND,GND,GND,GND,GND,
                               GND,GND,GND,GND,GND,GND,GND,GND,GND,GND,GND,GND,
                               GND,GND,GND,GND,GND,GND,GND,GND,GND,GND,GND,GND,
                               GND,GND,GND,GND,GND,GND,GND,GND,GND,GND,GND,GND,
                               GND,GND,GND,GND,GND,GND,GND,GND,GND,GND,GND,GND,
                               GND,GND,GND,GND,GND,GND,GND,GND,GND,GND,GND,GND,
                               GND,GND,GND,GND,GND,GND,GND,GND}), .MFCWindowRam (
                               MFCWindowRam), .MFCWeightsRam (GND), .MFCWrite (
                               MFCWrite), .weightsRamAddress ({\$dummy [0],
                               \$dummy [1],\$dummy [2],\$dummy [3],\$dummy [4],
                               \$dummy [5],\$dummy [6],\$dummy [7],\$dummy [8],
                               \$dummy [9],\$dummy [10],\$dummy [11]}), .windowRamAddressRead (
                               {windowRamAddressRead_12,windowRamAddressRead_11,
                               windowRamAddressRead_10,windowRamAddressRead_9,
                               windowRamAddressRead_8,windowRamAddressRead_7,
                               windowRamAddressRead_6,windowRamAddressRead_5,
                               windowRamAddressRead_4,windowRamAddressRead_3,
                               windowRamAddressRead_2,windowRamAddressRead_1,
                               windowRamAddressRead_0}), .windowRamAddressWrite (
                               {windowRamAddressWrite_12,
                               windowRamAddressWrite_11,windowRamAddressWrite_10
                               ,windowRamAddressWrite_9,windowRamAddressWrite_8,
                               windowRamAddressWrite_7,windowRamAddressWrite_6,
                               windowRamAddressWrite_5,windowRamAddressWrite_4,
                               windowRamAddressWrite_3,windowRamAddressWrite_2,
                               windowRamAddressWrite_1,windowRamAddressWrite_0})
                               , .weightsRamRead (\$dummy [12]), .windowRamRead (
                               windowRamRead), .windowRamWrite (windowRamWrite)
                               , .windowRamDataOutBus ({\$dummy [13],
                               \$dummy [14],\$dummy [15],\$dummy [16],
                               \$dummy [17],\$dummy [18],\$dummy [19],
                               \$dummy [20],\$dummy [21],\$dummy [22],
                               \$dummy [23],\$dummy [24],\$dummy [25],
                               \$dummy [26],\$dummy [27],\$dummy [28]}), .finishNetwork (
                               finishCNN)) ;
    RAM_13_16_80 windowRam (.clk (clk), .rd (windowRamRead), .we (windowRamWrite
                 ), .reset (rst), .addressRead ({windowRamAddressRead_12,
                 windowRamAddressRead_11,windowRamAddressRead_10,
                 windowRamAddressRead_9,windowRamAddressRead_8,
                 windowRamAddressRead_7,windowRamAddressRead_6,
                 windowRamAddressRead_5,windowRamAddressRead_4,
                 windowRamAddressRead_3,windowRamAddressRead_2,
                 windowRamAddressRead_1,windowRamAddressRead_0}), .addressWrite (
                 {windowRamAddressWrite_12,windowRamAddressWrite_11,
                 windowRamAddressWrite_10,windowRamAddressWrite_9,
                 windowRamAddressWrite_8,windowRamAddressWrite_7,
                 windowRamAddressWrite_6,windowRamAddressWrite_5,
                 windowRamAddressWrite_4,windowRamAddressWrite_3,
                 windowRamAddressWrite_2,windowRamAddressWrite_1,
                 windowRamAddressWrite_0}), .dataIn ({GND,GND,GND,GND,GND,GND,
                 GND,GND,GND,GND,GND,GND,GND,GND,GND,GND}), .dataOut ({
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
                 \$dummy [77],\$dummy [78],\$dummy [79],\$dummy [80],
                 \$dummy [81],\$dummy [82],\$dummy [83],\$dummy [84],
                 \$dummy [85],\$dummy [86],\$dummy [87],\$dummy [88],
                 \$dummy [89],\$dummy [90],\$dummy [91],\$dummy [92],
                 \$dummy [93],\$dummy [94],\$dummy [95],\$dummy [96],
                 \$dummy [97],\$dummy [98],\$dummy [99],\$dummy [100],
                 \$dummy [101],\$dummy [102],\$dummy [103],\$dummy [104],
                 \$dummy [105],\$dummy [106],\$dummy [107],\$dummy [108]}), .MFCReadOut (
                 MFCWindowRam), .MFCWriteOut (MFCWrite)) ;
    fake_gnd ix327 (.Y (GND)) ;
endmodule


module RAM_13_16_80 ( clk, rd, we, reset, addressRead, addressWrite, dataIn, 
                      dataOut, MFCReadOut, MFCWriteOut ) ;

    input clk ;
    input rd ;
    input we ;
    input reset ;
    input [12:0]addressRead ;
    input [12:0]addressWrite ;
    input [15:0]dataIn ;
    output [79:0]dataOut ;
    output MFCReadOut ;
    output MFCWriteOut ;

    wire NOT_clk, nx4, nx36, nx38, nx40, nx58, nx60, nx62, nx68, nx82, nx84, 
         NOT_nx84, nx90, nx93, nx95, nx97, nx99, nx101, nx103, nx105, nx108, 
         nx110, nx112, nx114, nx116, nx118, nx120, nx122, nx124, nx126, nx128, 
         nx135, nx139, nx142, nx146, nx149;
    wire [1:0] \$dummy ;




    assign dataOut[78] = dataOut[79] ;
    assign dataOut[77] = dataOut[79] ;
    assign dataOut[76] = dataOut[79] ;
    assign dataOut[75] = dataOut[79] ;
    assign dataOut[74] = dataOut[79] ;
    assign dataOut[73] = dataOut[79] ;
    assign dataOut[72] = dataOut[79] ;
    assign dataOut[71] = dataOut[79] ;
    assign dataOut[70] = dataOut[79] ;
    assign dataOut[69] = dataOut[79] ;
    assign dataOut[68] = dataOut[79] ;
    assign dataOut[67] = dataOut[79] ;
    assign dataOut[66] = dataOut[79] ;
    assign dataOut[65] = dataOut[79] ;
    assign dataOut[64] = dataOut[79] ;
    assign dataOut[63] = dataOut[79] ;
    assign dataOut[62] = dataOut[79] ;
    assign dataOut[61] = dataOut[79] ;
    assign dataOut[60] = dataOut[79] ;
    assign dataOut[59] = dataOut[79] ;
    assign dataOut[58] = dataOut[79] ;
    assign dataOut[57] = dataOut[79] ;
    assign dataOut[56] = dataOut[79] ;
    assign dataOut[55] = dataOut[79] ;
    assign dataOut[54] = dataOut[79] ;
    assign dataOut[53] = dataOut[79] ;
    assign dataOut[52] = dataOut[79] ;
    assign dataOut[51] = dataOut[79] ;
    assign dataOut[50] = dataOut[79] ;
    assign dataOut[49] = dataOut[79] ;
    assign dataOut[48] = dataOut[79] ;
    assign dataOut[47] = dataOut[79] ;
    assign dataOut[46] = dataOut[79] ;
    assign dataOut[45] = dataOut[79] ;
    assign dataOut[44] = dataOut[79] ;
    assign dataOut[43] = dataOut[79] ;
    assign dataOut[42] = dataOut[79] ;
    assign dataOut[41] = dataOut[79] ;
    assign dataOut[40] = dataOut[79] ;
    assign dataOut[39] = dataOut[79] ;
    assign dataOut[38] = dataOut[79] ;
    assign dataOut[37] = dataOut[79] ;
    assign dataOut[36] = dataOut[79] ;
    assign dataOut[35] = dataOut[79] ;
    assign dataOut[34] = dataOut[79] ;
    assign dataOut[33] = dataOut[79] ;
    assign dataOut[32] = dataOut[79] ;
    assign dataOut[31] = dataOut[79] ;
    assign dataOut[30] = dataOut[79] ;
    assign dataOut[29] = dataOut[79] ;
    assign dataOut[28] = dataOut[79] ;
    assign dataOut[27] = dataOut[79] ;
    assign dataOut[26] = dataOut[79] ;
    assign dataOut[25] = dataOut[79] ;
    assign dataOut[24] = dataOut[79] ;
    assign dataOut[23] = dataOut[79] ;
    assign dataOut[22] = dataOut[79] ;
    assign dataOut[21] = dataOut[79] ;
    assign dataOut[20] = dataOut[79] ;
    assign dataOut[19] = dataOut[79] ;
    assign dataOut[18] = dataOut[79] ;
    assign dataOut[17] = dataOut[79] ;
    assign dataOut[16] = dataOut[79] ;
    assign dataOut[15] = dataOut[79] ;
    assign dataOut[14] = dataOut[79] ;
    assign dataOut[13] = dataOut[79] ;
    assign dataOut[12] = dataOut[79] ;
    assign dataOut[11] = dataOut[79] ;
    assign dataOut[10] = dataOut[79] ;
    assign dataOut[9] = dataOut[79] ;
    assign dataOut[8] = dataOut[79] ;
    assign dataOut[7] = dataOut[79] ;
    assign dataOut[6] = dataOut[79] ;
    assign dataOut[5] = dataOut[79] ;
    assign dataOut[4] = dataOut[79] ;
    assign dataOut[3] = dataOut[79] ;
    assign dataOut[2] = dataOut[79] ;
    assign dataOut[1] = dataOut[79] ;
    assign dataOut[0] = dataOut[79] ;
    fake_gnd ix44 (.Y (dataOut[79])) ;
    dff reg_MFCWriteOut (.Q (MFCWriteOut), .QB (\$dummy [0]), .D (NOT_nx84), .CLK (
        NOT_clk)) ;
    nand02 ix88 (.Y (NOT_nx84), .A0 (nx36), .A1 (nx82)) ;
    nor02_2x ix37 (.Y (nx36), .A0 (nx90), .A1 (nx97)) ;
    nand03 ix91 (.Y (nx90), .A0 (nx4), .A1 (rd), .A2 (nx95)) ;
    nor02_2x ix5 (.Y (nx4), .A0 (reset), .A1 (nx93)) ;
    inv01 ix94 (.Y (nx93), .A (we)) ;
    xnor2 ix96 (.Y (nx95), .A0 (addressRead[0]), .A1 (addressWrite[0])) ;
    nand04 ix98 (.Y (nx97), .A0 (nx99), .A1 (nx101), .A2 (nx103), .A3 (nx105)) ;
    xnor2 ix100 (.Y (nx99), .A0 (addressRead[1]), .A1 (addressWrite[1])) ;
    xnor2 ix102 (.Y (nx101), .A0 (addressRead[2]), .A1 (addressWrite[2])) ;
    xnor2 ix104 (.Y (nx103), .A0 (addressRead[3]), .A1 (addressWrite[3])) ;
    xnor2 ix106 (.Y (nx105), .A0 (addressRead[4]), .A1 (addressWrite[4])) ;
    nor03_2x ix83 (.Y (nx82), .A0 (nx108), .A1 (nx114), .A2 (nx120)) ;
    nand02 ix109 (.Y (nx108), .A0 (nx110), .A1 (nx112)) ;
    xnor2 ix111 (.Y (nx110), .A0 (addressRead[5]), .A1 (addressWrite[5])) ;
    xnor2 ix113 (.Y (nx112), .A0 (addressRead[6]), .A1 (addressWrite[6])) ;
    nand02 ix115 (.Y (nx114), .A0 (nx116), .A1 (nx118)) ;
    xnor2 ix117 (.Y (nx116), .A0 (addressRead[7]), .A1 (addressWrite[7])) ;
    xnor2 ix119 (.Y (nx118), .A0 (addressRead[12]), .A1 (addressWrite[12])) ;
    nand04 ix121 (.Y (nx120), .A0 (nx122), .A1 (nx124), .A2 (nx126), .A3 (nx128)
           ) ;
    xnor2 ix123 (.Y (nx122), .A0 (addressRead[8]), .A1 (addressWrite[8])) ;
    xnor2 ix125 (.Y (nx124), .A0 (addressRead[9]), .A1 (addressWrite[9])) ;
    xnor2 ix127 (.Y (nx126), .A0 (addressRead[10]), .A1 (addressWrite[10])) ;
    xnor2 ix129 (.Y (nx128), .A0 (addressRead[11]), .A1 (addressWrite[11])) ;
    inv01 ix131 (.Y (NOT_clk), .A (clk)) ;
    dff reg_MFCReadOut (.Q (MFCReadOut), .QB (\$dummy [1]), .D (nx84), .CLK (
        NOT_clk)) ;
    nor03_2x ix85 (.Y (nx84), .A0 (nx90), .A1 (nx97), .A2 (nx135)) ;
    nand04 ix136 (.Y (nx135), .A0 (nx58), .A1 (nx68), .A2 (nx126), .A3 (nx128)
           ) ;
    nor03_2x ix59 (.Y (nx58), .A0 (nx38), .A1 (nx40), .A2 (nx114)) ;
    xnor2 ix39 (.Y (nx38), .A0 (addressRead[5]), .A1 (nx139)) ;
    inv01 ix140 (.Y (nx139), .A (addressWrite[5])) ;
    xnor2 ix41 (.Y (nx40), .A0 (addressRead[6]), .A1 (nx142)) ;
    inv01 ix143 (.Y (nx142), .A (addressWrite[6])) ;
    nor02_2x ix69 (.Y (nx68), .A0 (nx60), .A1 (nx62)) ;
    xnor2 ix61 (.Y (nx60), .A0 (addressRead[8]), .A1 (nx146)) ;
    inv01 ix147 (.Y (nx146), .A (addressWrite[8])) ;
    xnor2 ix63 (.Y (nx62), .A0 (addressRead[9]), .A1 (nx149)) ;
    inv01 ix150 (.Y (nx149), .A (addressWrite[9])) ;
endmodule


module CNNModule_8_16_5_5_3_12_13 ( startCNN, clk, rst, weightsRamDataInBus, 
                                    windowRamDataInBus, MFCWindowRam, 
                                    MFCWeightsRam, MFCWrite, weightsRamAddress, 
                                    windowRamAddressRead, windowRamAddressWrite, 
                                    weightsRamRead, windowRamRead, 
                                    windowRamWrite, windowRamDataOutBus, 
                                    finishNetwork ) ;

    input startCNN ;
    input clk ;
    input rst ;
    input [39:0]weightsRamDataInBus ;
    input [79:0]windowRamDataInBus ;
    input MFCWindowRam ;
    input MFCWeightsRam ;
    input MFCWrite ;
    output [11:0]weightsRamAddress ;
    output [12:0]windowRamAddressRead ;
    output [12:0]windowRamAddressWrite ;
    output weightsRamRead ;
    output windowRamRead ;
    output windowRamWrite ;
    output [15:0]windowRamDataOutBus ;
    output finishNetwork ;

    wire conv, pool, layerType, doneCores, startConv, readAllFinish, 
         writeOneFinish, loadWindow, readNextCol, finishLayer, finishSlice, 
         inputSizeAddress_4, outputSizeAddress_4, outputSizeAddressForDMA_5, 
         outputSizeAddressForDMA_4, outputSizeAddressForDMA_3, 
         outputSizeAddressForDMA_2, outputSizeAddressForDMA_1, 
         outputSizeAddressForDMA_0, layersNumber_1, filtersNumber_2, 
         filterDepth_2, saveToRAM, finishFilter, baseAddressTwo_11, nx10;
    wire [205:0] \$dummy ;




    assign weightsRamAddress[10] = weightsRamAddress[11] ;
    assign weightsRamAddress[9] = weightsRamAddress[11] ;
    assign weightsRamAddress[8] = weightsRamAddress[11] ;
    assign weightsRamAddress[7] = weightsRamAddress[11] ;
    assign weightsRamAddress[6] = weightsRamAddress[11] ;
    assign weightsRamAddress[5] = weightsRamAddress[11] ;
    assign weightsRamAddress[4] = weightsRamAddress[11] ;
    assign weightsRamAddress[3] = weightsRamAddress[11] ;
    assign weightsRamAddress[2] = weightsRamAddress[11] ;
    assign weightsRamAddress[1] = weightsRamAddress[11] ;
    assign weightsRamAddress[0] = weightsRamAddress[11] ;
    assign weightsRamRead = weightsRamAddress[11] ;
    assign windowRamDataOutBus[15] = weightsRamAddress[11] ;
    assign windowRamDataOutBus[14] = weightsRamAddress[11] ;
    assign windowRamDataOutBus[13] = weightsRamAddress[11] ;
    assign windowRamDataOutBus[12] = weightsRamAddress[11] ;
    assign windowRamDataOutBus[11] = weightsRamAddress[11] ;
    assign windowRamDataOutBus[10] = weightsRamAddress[11] ;
    assign windowRamDataOutBus[9] = weightsRamAddress[11] ;
    assign windowRamDataOutBus[8] = weightsRamAddress[11] ;
    assign windowRamDataOutBus[7] = weightsRamAddress[11] ;
    assign windowRamDataOutBus[6] = weightsRamAddress[11] ;
    assign windowRamDataOutBus[5] = weightsRamAddress[11] ;
    assign windowRamDataOutBus[4] = weightsRamAddress[11] ;
    assign windowRamDataOutBus[3] = weightsRamAddress[11] ;
    assign windowRamDataOutBus[2] = weightsRamAddress[11] ;
    assign windowRamDataOutBus[1] = weightsRamAddress[11] ;
    assign windowRamDataOutBus[0] = weightsRamAddress[11] ;
    CNNCores_8_16_5_5_3 coresMap (.filterBus ({weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11]}), .windowBus ({
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11],weightsRamAddress[11]}), .decoderRow (
                        {weightsRamAddress[11],weightsRamAddress[11],
                        weightsRamAddress[11]}), .clk (clk), .rst (rst), .writePage1 (
                        weightsRamAddress[11]), .writePage2 (
                        weightsRamAddress[11]), .writeFilter (
                        weightsRamAddress[11]), .shift2To1 (
                        weightsRamAddress[11]), .shift1To2 (
                        weightsRamAddress[11]), .pageTurn (weightsRamAddress[11]
                        ), .start (startConv), .layerType (layerType), .filterType (
                        weightsRamAddress[11]), .doneCores (doneCores), .finalSumConv (
                        {\$dummy [0],\$dummy [1],\$dummy [2],\$dummy [3],
                        \$dummy [4],\$dummy [5],\$dummy [6],\$dummy [7],
                        \$dummy [8],\$dummy [9],\$dummy [10],\$dummy [11],
                        \$dummy [12],\$dummy [13],\$dummy [14],\$dummy [15]})) ;
    ControlUnit controlUnitMap (.clk (clk), .layersNumber ({layersNumber_1,
                layersNumber_1}), .filtersNumber ({filtersNumber_2,
                filtersNumber_2,filtersNumber_2}), .filterDepth ({filterDepth_2,
                filterDepth_2,filterDepth_2}), .filterOutputSize ({
                outputSizeAddress_4,outputSizeAddress_4,outputSizeAddress_4,
                outputSizeAddress_4,outputSizeAddress_4}), .startNetwork (
                startCNN), .layerType (layerType), .convFinish (doneCores), .dmaAFinish (
                weightsRamAddress[11]), .dmaBFinish (readAllFinish), .dmaCFinish (
                writeOneFinish), .resetNetwork (rst), .sliceFirstLoad (
                \$dummy [16]), .loadLayerConfig (\$dummy [17]), .loadNetworkConfig (
                \$dummy [18]), .loadFilterConfig (\$dummy [19]), .loadWindow (
                loadWindow), .loadFilter (\$dummy [20]), .conv (conv), .pool (
                pool), .shift12 (\$dummy [21]), .shift21 (\$dummy [22]), .readNextCol (
                readNextCol), .addToOutputBuffer (\$dummy [23]), .outputBufferEn (
                \$dummy [24]), .saveToRAM (saveToRAM), .currentPage ({
                \$dummy [25]}), .finishCurrentSlice (finishSlice), .finishFilter (
                finishFilter), .finishOneLayer (finishLayer), .finishNetwork (
                finishNetwork)) ;
    NBitAdder_13 outputSizeAddMap (.a ({weightsRamAddress[11],
                 weightsRamAddress[11],weightsRamAddress[11],
                 weightsRamAddress[11],weightsRamAddress[11],
                 weightsRamAddress[11],weightsRamAddress[11],
                 weightsRamAddress[11],outputSizeAddress_4,outputSizeAddress_4,
                 outputSizeAddress_4,outputSizeAddress_4,outputSizeAddress_4}), 
                 .b ({weightsRamAddress[11],weightsRamAddress[11],
                 weightsRamAddress[11],weightsRamAddress[11],
                 weightsRamAddress[11],weightsRamAddress[11],
                 weightsRamAddress[11],weightsRamAddress[11],
                 weightsRamAddress[11],weightsRamAddress[11],
                 weightsRamAddress[11],weightsRamAddress[11],
                 weightsRamAddress[11]}), .carryIn (baseAddressTwo_11), .sum ({
                 \$dummy [26],\$dummy [27],\$dummy [28],\$dummy [29],
                 \$dummy [30],\$dummy [31],\$dummy [32],
                 outputSizeAddressForDMA_5,outputSizeAddressForDMA_4,
                 outputSizeAddressForDMA_3,outputSizeAddressForDMA_2,
                 outputSizeAddressForDMA_1,outputSizeAddressForDMA_0}), .carryOut (
                 \$dummy [33])) ;
    DMAController_12_13_8_16_5 DMAControllerMap (.clk (clk), .reset (rst), .weightsInternalBus (
                               {\$dummy [34],\$dummy [35],\$dummy [36],
                               \$dummy [37],\$dummy [38],\$dummy [39],
                               \$dummy [40],\$dummy [41],\$dummy [42],
                               \$dummy [43],\$dummy [44],\$dummy [45],
                               \$dummy [46],\$dummy [47],\$dummy [48],
                               \$dummy [49],\$dummy [50],\$dummy [51],
                               \$dummy [52],\$dummy [53],\$dummy [54],
                               \$dummy [55],\$dummy [56],\$dummy [57],
                               \$dummy [58],\$dummy [59],\$dummy [60],
                               \$dummy [61],\$dummy [62],\$dummy [63],
                               \$dummy [64],\$dummy [65],\$dummy [66],
                               \$dummy [67],\$dummy [68],\$dummy [69],
                               \$dummy [70],\$dummy [71],\$dummy [72],
                               \$dummy [73]}), .windowInternalBus ({\$dummy [74]
                               ,\$dummy [75],\$dummy [76],\$dummy [77],
                               \$dummy [78],\$dummy [79],\$dummy [80],
                               \$dummy [81],\$dummy [82],\$dummy [83],
                               \$dummy [84],\$dummy [85],\$dummy [86],
                               \$dummy [87],\$dummy [88],\$dummy [89],
                               \$dummy [90],\$dummy [91],\$dummy [92],
                               \$dummy [93],\$dummy [94],\$dummy [95],
                               \$dummy [96],\$dummy [97],\$dummy [98],
                               \$dummy [99],\$dummy [100],\$dummy [101],
                               \$dummy [102],\$dummy [103],\$dummy [104],
                               \$dummy [105],\$dummy [106],\$dummy [107],
                               \$dummy [108],\$dummy [109],\$dummy [110],
                               \$dummy [111],\$dummy [112],\$dummy [113],
                               \$dummy [114],\$dummy [115],\$dummy [116],
                               \$dummy [117],\$dummy [118],\$dummy [119],
                               \$dummy [120],\$dummy [121],\$dummy [122],
                               \$dummy [123],\$dummy [124],\$dummy [125],
                               \$dummy [126],\$dummy [127],\$dummy [128],
                               \$dummy [129],\$dummy [130],\$dummy [131],
                               \$dummy [132],\$dummy [133],\$dummy [134],
                               \$dummy [135],\$dummy [136],\$dummy [137],
                               \$dummy [138],\$dummy [139],\$dummy [140],
                               \$dummy [141],\$dummy [142],\$dummy [143],
                               \$dummy [144],\$dummy [145],\$dummy [146],
                               \$dummy [147],\$dummy [148],\$dummy [149],
                               \$dummy [150],\$dummy [151],\$dummy [152],
                               \$dummy [153]}), .writeInternalBus ({
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11]}), .weightsRamAddress (
                               {\$dummy [154],\$dummy [155],\$dummy [156],
                               \$dummy [157],\$dummy [158],\$dummy [159],
                               \$dummy [160],\$dummy [161],\$dummy [162],
                               \$dummy [163],\$dummy [164],\$dummy [165]}), .windowRamAddressRead (
                               {windowRamAddressRead[12],
                               windowRamAddressRead[11],windowRamAddressRead[10]
                               ,windowRamAddressRead[9],windowRamAddressRead[8],
                               windowRamAddressRead[7],windowRamAddressRead[6],
                               windowRamAddressRead[5],windowRamAddressRead[4],
                               windowRamAddressRead[3],windowRamAddressRead[2],
                               windowRamAddressRead[1],windowRamAddressRead[0]})
                               , .windowRamAddressWrite ({
                               windowRamAddressWrite[12],
                               windowRamAddressWrite[11],
                               windowRamAddressWrite[10],
                               windowRamAddressWrite[9],windowRamAddressWrite[8]
                               ,windowRamAddressWrite[7],
                               windowRamAddressWrite[6],windowRamAddressWrite[5]
                               ,windowRamAddressWrite[4],
                               windowRamAddressWrite[3],windowRamAddressWrite[2]
                               ,windowRamAddressWrite[1],
                               windowRamAddressWrite[0]}), .weightsRamDataInBus (
                               {weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11]}), .windowRamDataInBus (
                               {weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11]}), .weightsRamRead (
                               \$dummy [166]), .windowRamRead (windowRamRead), .windowRamWrite (
                               windowRamWrite), .windowRamDataOutBus ({
                               \$dummy [167],\$dummy [168],\$dummy [169],
                               \$dummy [170],\$dummy [171],\$dummy [172],
                               \$dummy [173],\$dummy [174],\$dummy [175],
                               \$dummy [176],\$dummy [177],\$dummy [178],
                               \$dummy [179],\$dummy [180],\$dummy [181],
                               \$dummy [182]}), .MFCWindowRam (MFCWindowRam), .MFCWeightsRam (
                               weightsRamAddress[11]), .MFCWrite (MFCWrite), .loadNextFilter (
                               weightsRamAddress[11]), .loadNextWindow (
                               loadWindow), .loadNextRow (readNextCol), .loadOneWord (
                               weightsRamAddress[11]), .loadThreeWord (
                               weightsRamAddress[11]), .filterFinished (
                               finishFilter), .sliceFinished (finishSlice), .layerFinished (
                               finishLayer), .layerType (layerType), .write (
                               saveToRAM), .weightsSizeType (layerType), .inputSize (
                               {weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               inputSizeAddress_4,inputSizeAddress_4,
                               inputSizeAddress_4,inputSizeAddress_4,
                               inputSizeAddress_4}), .outputSize ({
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],outputSizeAddressForDMA_5,
                               outputSizeAddressForDMA_4,
                               outputSizeAddressForDMA_3,
                               outputSizeAddressForDMA_2,
                               outputSizeAddressForDMA_1,
                               outputSizeAddressForDMA_0}), .windowRamBaseAddress1 (
                               {weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11]}), .windowRamBaseAddress2 (
                               {weightsRamAddress[11],baseAddressTwo_11,
                               baseAddressTwo_11,baseAddressTwo_11,
                               baseAddressTwo_11,weightsRamAddress[11],
                               weightsRamAddress[11],baseAddressTwo_11,
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11]}), .filterRamBaseAddress ({
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11],
                               weightsRamAddress[11],weightsRamAddress[11]}), .windowReadOne (
                               \$dummy [183]), .windowReadFinal (readAllFinish)
                               , .weightsReadOne (\$dummy [184]), .weightsReadFinal (
                               \$dummy [185]), .writeDoneOne (writeOneFinish), .filterAluNumber (
                               {\$dummy [186],\$dummy [187],\$dummy [188]}), .windowAluNumber (
                               {\$dummy [189],\$dummy [190],\$dummy [191]})) ;
    Config_40 configMap (.filterBus ({weightsRamAddress[11],
              weightsRamAddress[11],weightsRamAddress[11],weightsRamAddress[11],
              weightsRamAddress[11],weightsRamAddress[11],weightsRamAddress[11],
              weightsRamAddress[11],weightsRamAddress[11],weightsRamAddress[11],
              weightsRamAddress[11],weightsRamAddress[11],weightsRamAddress[11],
              weightsRamAddress[11],weightsRamAddress[11],weightsRamAddress[11],
              weightsRamAddress[11],weightsRamAddress[11],weightsRamAddress[11],
              weightsRamAddress[11],weightsRamAddress[11],weightsRamAddress[11],
              weightsRamAddress[11],weightsRamAddress[11],weightsRamAddress[11],
              weightsRamAddress[11],weightsRamAddress[11],weightsRamAddress[11],
              weightsRamAddress[11],weightsRamAddress[11],weightsRamAddress[11],
              weightsRamAddress[11],weightsRamAddress[11],weightsRamAddress[11],
              weightsRamAddress[11],weightsRamAddress[11],weightsRamAddress[11],
              weightsRamAddress[11],weightsRamAddress[11],weightsRamAddress[11]}
              ), .clk (weightsRamAddress[11]), .rst (weightsRamAddress[11]), .readNumLayers (
              weightsRamAddress[11]), .readLayerConfig (weightsRamAddress[11]), 
              .numLayers ({layersNumber_1,\$dummy [192]}), .layerType (layerType
              ), .filterType (\$dummy [193]), .numFilters ({filtersNumber_2,
              \$dummy [194],\$dummy [195]}), .filterDepth ({filterDepth_2,
              \$dummy [196],\$dummy [197]}), .inputSize ({inputSizeAddress_4,
              \$dummy [198],\$dummy [199],\$dummy [200],\$dummy [201]}), .outputSize (
              {outputSizeAddress_4,\$dummy [202],\$dummy [203],\$dummy [204],
              \$dummy [205]})) ;
    fake_gnd ix4 (.Y (weightsRamAddress[11])) ;
    fake_vcc ix2 (.Y (baseAddressTwo_11)) ;
    inv01 ix1 (.Y (startConv), .A (nx10)) ;
    nor02_2x ix11 (.Y (nx10), .A0 (conv), .A1 (pool)) ;
endmodule


module Config_40 ( filterBus, clk, rst, readNumLayers, readLayerConfig, 
                   numLayers, layerType, filterType, numFilters, filterDepth, 
                   inputSize, outputSize ) ;

    input [39:0]filterBus ;
    input clk ;
    input rst ;
    input readNumLayers ;
    input readLayerConfig ;
    output [1:0]numLayers ;
    output layerType ;
    output filterType ;
    output [2:0]numFilters ;
    output [2:0]filterDepth ;
    output [4:0]inputSize ;
    output [4:0]outputSize ;

    wire readNumLayers_rename;
    wire [13:0] \$dummy ;




    assign numLayers[0] = numLayers[1] ;
    assign filterType = layerType ;
    assign numFilters[1] = numFilters[2] ;
    assign numFilters[0] = numFilters[2] ;
    assign filterDepth[1] = filterDepth[2] ;
    assign filterDepth[0] = filterDepth[2] ;
    assign inputSize[3] = inputSize[4] ;
    assign inputSize[2] = inputSize[4] ;
    assign inputSize[1] = inputSize[4] ;
    assign inputSize[0] = inputSize[4] ;
    assign outputSize[3] = outputSize[4] ;
    assign outputSize[2] = outputSize[4] ;
    assign outputSize[1] = outputSize[4] ;
    assign outputSize[0] = outputSize[4] ;
    Reg_2_unfolded0 numLayerRegMap (.D ({readNumLayers_rename,
                    readNumLayers_rename}), .en (readNumLayers_rename), .clk (
                    readNumLayers_rename), .rst (readNumLayers_rename), .Q ({
                    numLayers[1],\$dummy [0]})) ;
    Reg_3_unfolded1 numFiltersRegMap (.D ({readNumLayers_rename,
                    readNumLayers_rename,readNumLayers_rename}), .en (
                    readNumLayers_rename), .clk (readNumLayers_rename), .rst (
                    readNumLayers_rename), .Q ({numFilters[2],\$dummy [1],
                    \$dummy [2]})) ;
    Reg_3_unfolded1 filterDepthRegMap (.D ({readNumLayers_rename,
                    readNumLayers_rename,readNumLayers_rename}), .en (
                    readNumLayers_rename), .clk (readNumLayers_rename), .rst (
                    readNumLayers_rename), .Q ({filterDepth[2],\$dummy [3],
                    \$dummy [4]})) ;
    Reg_2_unfolded0 layerTypeRegMap (.D ({readNumLayers_rename,
                    readNumLayers_rename}), .en (readNumLayers_rename), .clk (
                    readNumLayers_rename), .rst (readNumLayers_rename), .Q ({
                    layerType,\$dummy [5]})) ;
    Reg_5_unfolded1 inputSizeRegMap (.D ({readNumLayers_rename,
                    readNumLayers_rename,readNumLayers_rename,
                    readNumLayers_rename,readNumLayers_rename}), .en (
                    readNumLayers_rename), .clk (readNumLayers_rename), .rst (
                    readNumLayers_rename), .Q ({inputSize[4],\$dummy [6],
                    \$dummy [7],\$dummy [8],\$dummy [9]})) ;
    Reg_5_unfolded1 outputSizeRegMap (.D ({readNumLayers_rename,
                    readNumLayers_rename,readNumLayers_rename,
                    readNumLayers_rename,readNumLayers_rename}), .en (
                    readNumLayers_rename), .clk (readNumLayers_rename), .rst (
                    readNumLayers_rename), .Q ({outputSize[4],\$dummy [10],
                    \$dummy [11],\$dummy [12],\$dummy [13]})) ;
    fake_gnd ix44 (.Y (readNumLayers_rename)) ;
endmodule


module Reg_5_unfolded1 ( D, en, clk, rst, Q ) ;

    input [4:0]D ;
    input en ;
    input clk ;
    input rst ;
    output [4:0]Q ;




    assign Q[4] = Q[0] ;
    assign Q[3] = Q[0] ;
    assign Q[2] = Q[0] ;
    assign Q[1] = Q[0] ;
    fake_gnd ix43 (.Y (Q[0])) ;
endmodule


module Reg_3_unfolded1 ( D, en, clk, rst, Q ) ;

    input [2:0]D ;
    input en ;
    input clk ;
    input rst ;
    output [2:0]Q ;




    assign Q[2] = Q[0] ;
    assign Q[1] = Q[0] ;
    fake_gnd ix43 (.Y (Q[0])) ;
endmodule


module Reg_2_unfolded0 ( D, en, clk, rst, Q ) ;

    input [1:0]D ;
    input en ;
    input clk ;
    input rst ;
    output [1:0]Q ;




    assign Q[1] = Q[0] ;
    fake_gnd ix43 (.Y (Q[0])) ;
endmodule


module DMAController_12_13_8_16_5 ( clk, reset, weightsInternalBus, 
                                    windowInternalBus, writeInternalBus, 
                                    weightsRamAddress, windowRamAddressRead, 
                                    windowRamAddressWrite, weightsRamDataInBus, 
                                    windowRamDataInBus, weightsRamRead, 
                                    windowRamRead, windowRamWrite, 
                                    windowRamDataOutBus, MFCWindowRam, 
                                    MFCWeightsRam, MFCWrite, loadNextFilter, 
                                    loadNextWindow, loadNextRow, loadOneWord, 
                                    loadThreeWord, filterFinished, sliceFinished, 
                                    layerFinished, layerType, write, 
                                    weightsSizeType, inputSize, outputSize, 
                                    windowRamBaseAddress1, windowRamBaseAddress2, 
                                    filterRamBaseAddress, windowReadOne, 
                                    windowReadFinal, weightsReadOne, 
                                    weightsReadFinal, writeDoneOne, 
                                    filterAluNumber, windowAluNumber ) ;

    input clk ;
    input reset ;
    output [39:0]weightsInternalBus ;
    output [79:0]windowInternalBus ;
    input [15:0]writeInternalBus ;
    output [11:0]weightsRamAddress ;
    output [12:0]windowRamAddressRead ;
    output [12:0]windowRamAddressWrite ;
    input [39:0]weightsRamDataInBus ;
    input [79:0]windowRamDataInBus ;
    output weightsRamRead ;
    output windowRamRead ;
    output windowRamWrite ;
    output [15:0]windowRamDataOutBus ;
    input MFCWindowRam ;
    input MFCWeightsRam ;
    input MFCWrite ;
    input loadNextFilter ;
    input loadNextWindow ;
    input loadNextRow ;
    input loadOneWord ;
    input loadThreeWord ;
    input filterFinished ;
    input sliceFinished ;
    input layerFinished ;
    input layerType ;
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
    output writeDoneOne ;
    output [2:0]filterAluNumber ;
    output [2:0]windowAluNumber ;

    wire currentWriteRamBaseAddress_11, ramBaseAddressSelector, switchRam, 
         windowRLSwitchRam, writeFinishFilter, NOT_weightsSizeType, 
         weightsSizeForWindow_0, NOT__2428, nx20, nx22, nx25;
    wire [151:0] \$dummy ;




    assign weightsInternalBus[39] = filterAluNumber[2] ;
    assign weightsInternalBus[38] = filterAluNumber[2] ;
    assign weightsInternalBus[37] = filterAluNumber[2] ;
    assign weightsInternalBus[36] = filterAluNumber[2] ;
    assign weightsInternalBus[35] = filterAluNumber[2] ;
    assign weightsInternalBus[34] = filterAluNumber[2] ;
    assign weightsInternalBus[33] = filterAluNumber[2] ;
    assign weightsInternalBus[32] = filterAluNumber[2] ;
    assign weightsInternalBus[31] = filterAluNumber[2] ;
    assign weightsInternalBus[30] = filterAluNumber[2] ;
    assign weightsInternalBus[29] = filterAluNumber[2] ;
    assign weightsInternalBus[28] = filterAluNumber[2] ;
    assign weightsInternalBus[27] = filterAluNumber[2] ;
    assign weightsInternalBus[26] = filterAluNumber[2] ;
    assign weightsInternalBus[25] = filterAluNumber[2] ;
    assign weightsInternalBus[24] = filterAluNumber[2] ;
    assign weightsInternalBus[18] = filterAluNumber[2] ;
    assign weightsInternalBus[17] = filterAluNumber[2] ;
    assign weightsInternalBus[16] = filterAluNumber[2] ;
    assign weightsInternalBus[10] = filterAluNumber[2] ;
    assign weightsInternalBus[9] = filterAluNumber[2] ;
    assign weightsInternalBus[8] = filterAluNumber[2] ;
    assign windowInternalBus[79] = filterAluNumber[2] ;
    assign windowInternalBus[78] = filterAluNumber[2] ;
    assign windowInternalBus[77] = filterAluNumber[2] ;
    assign windowInternalBus[76] = filterAluNumber[2] ;
    assign windowInternalBus[75] = filterAluNumber[2] ;
    assign windowInternalBus[74] = filterAluNumber[2] ;
    assign windowInternalBus[73] = filterAluNumber[2] ;
    assign windowInternalBus[72] = filterAluNumber[2] ;
    assign windowInternalBus[71] = filterAluNumber[2] ;
    assign windowInternalBus[70] = filterAluNumber[2] ;
    assign windowInternalBus[69] = filterAluNumber[2] ;
    assign windowInternalBus[68] = filterAluNumber[2] ;
    assign windowInternalBus[67] = filterAluNumber[2] ;
    assign windowInternalBus[66] = filterAluNumber[2] ;
    assign windowInternalBus[65] = filterAluNumber[2] ;
    assign windowInternalBus[64] = filterAluNumber[2] ;
    assign windowInternalBus[63] = filterAluNumber[2] ;
    assign windowInternalBus[62] = filterAluNumber[2] ;
    assign windowInternalBus[61] = filterAluNumber[2] ;
    assign windowInternalBus[60] = filterAluNumber[2] ;
    assign windowInternalBus[59] = filterAluNumber[2] ;
    assign windowInternalBus[58] = filterAluNumber[2] ;
    assign windowInternalBus[57] = filterAluNumber[2] ;
    assign windowInternalBus[56] = filterAluNumber[2] ;
    assign windowInternalBus[55] = filterAluNumber[2] ;
    assign windowInternalBus[54] = filterAluNumber[2] ;
    assign windowInternalBus[53] = filterAluNumber[2] ;
    assign windowInternalBus[52] = filterAluNumber[2] ;
    assign windowInternalBus[51] = filterAluNumber[2] ;
    assign windowInternalBus[50] = filterAluNumber[2] ;
    assign windowInternalBus[49] = filterAluNumber[2] ;
    assign windowInternalBus[48] = filterAluNumber[2] ;
    assign windowInternalBus[47] = filterAluNumber[2] ;
    assign windowInternalBus[46] = filterAluNumber[2] ;
    assign windowInternalBus[45] = filterAluNumber[2] ;
    assign windowInternalBus[44] = filterAluNumber[2] ;
    assign windowInternalBus[43] = filterAluNumber[2] ;
    assign windowInternalBus[42] = filterAluNumber[2] ;
    assign windowInternalBus[41] = filterAluNumber[2] ;
    assign windowInternalBus[40] = filterAluNumber[2] ;
    assign windowInternalBus[39] = filterAluNumber[2] ;
    assign windowInternalBus[38] = filterAluNumber[2] ;
    assign windowInternalBus[37] = filterAluNumber[2] ;
    assign windowInternalBus[36] = filterAluNumber[2] ;
    assign windowInternalBus[35] = filterAluNumber[2] ;
    assign windowInternalBus[34] = filterAluNumber[2] ;
    assign windowInternalBus[33] = filterAluNumber[2] ;
    assign windowInternalBus[32] = filterAluNumber[2] ;
    assign windowInternalBus[31] = filterAluNumber[2] ;
    assign windowInternalBus[30] = filterAluNumber[2] ;
    assign windowInternalBus[29] = filterAluNumber[2] ;
    assign windowInternalBus[28] = filterAluNumber[2] ;
    assign windowInternalBus[27] = filterAluNumber[2] ;
    assign windowInternalBus[26] = filterAluNumber[2] ;
    assign windowInternalBus[25] = filterAluNumber[2] ;
    assign windowInternalBus[24] = filterAluNumber[2] ;
    assign windowInternalBus[23] = filterAluNumber[2] ;
    assign windowInternalBus[22] = filterAluNumber[2] ;
    assign windowInternalBus[21] = filterAluNumber[2] ;
    assign windowInternalBus[20] = filterAluNumber[2] ;
    assign windowInternalBus[19] = filterAluNumber[2] ;
    assign windowInternalBus[18] = filterAluNumber[2] ;
    assign windowInternalBus[17] = filterAluNumber[2] ;
    assign windowInternalBus[16] = filterAluNumber[2] ;
    assign windowInternalBus[15] = filterAluNumber[2] ;
    assign windowInternalBus[14] = filterAluNumber[2] ;
    assign windowInternalBus[13] = filterAluNumber[2] ;
    assign windowInternalBus[12] = filterAluNumber[2] ;
    assign windowInternalBus[11] = filterAluNumber[2] ;
    assign windowInternalBus[10] = filterAluNumber[2] ;
    assign windowInternalBus[9] = filterAluNumber[2] ;
    assign windowInternalBus[8] = filterAluNumber[2] ;
    assign windowInternalBus[7] = filterAluNumber[2] ;
    assign windowInternalBus[6] = filterAluNumber[2] ;
    assign windowInternalBus[5] = filterAluNumber[2] ;
    assign windowInternalBus[4] = filterAluNumber[2] ;
    assign windowInternalBus[3] = filterAluNumber[2] ;
    assign windowInternalBus[2] = filterAluNumber[2] ;
    assign windowInternalBus[1] = filterAluNumber[2] ;
    assign windowInternalBus[0] = filterAluNumber[2] ;
    assign weightsRamAddress[11] = filterAluNumber[2] ;
    assign weightsRamAddress[10] = filterAluNumber[2] ;
    assign weightsRamAddress[9] = filterAluNumber[2] ;
    assign weightsRamAddress[8] = filterAluNumber[2] ;
    assign weightsRamAddress[7] = filterAluNumber[2] ;
    assign weightsRamAddress[6] = filterAluNumber[2] ;
    assign weightsRamAddress[5] = filterAluNumber[2] ;
    assign weightsRamAddress[4] = filterAluNumber[2] ;
    assign weightsRamAddress[3] = filterAluNumber[2] ;
    assign weightsRamAddress[2] = filterAluNumber[2] ;
    assign weightsRamAddress[1] = filterAluNumber[2] ;
    assign weightsRamAddress[0] = filterAluNumber[2] ;
    assign weightsRamRead = filterAluNumber[2] ;
    assign windowRamDataOutBus[15] = filterAluNumber[2] ;
    assign windowRamDataOutBus[14] = filterAluNumber[2] ;
    assign windowRamDataOutBus[13] = filterAluNumber[2] ;
    assign windowRamDataOutBus[12] = filterAluNumber[2] ;
    assign windowRamDataOutBus[11] = filterAluNumber[2] ;
    assign windowRamDataOutBus[10] = filterAluNumber[2] ;
    assign windowRamDataOutBus[9] = filterAluNumber[2] ;
    assign windowRamDataOutBus[8] = filterAluNumber[2] ;
    assign windowRamDataOutBus[7] = filterAluNumber[2] ;
    assign windowRamDataOutBus[6] = filterAluNumber[2] ;
    assign windowRamDataOutBus[5] = filterAluNumber[2] ;
    assign windowRamDataOutBus[4] = filterAluNumber[2] ;
    assign windowRamDataOutBus[3] = filterAluNumber[2] ;
    assign windowRamDataOutBus[2] = filterAluNumber[2] ;
    assign windowRamDataOutBus[1] = filterAluNumber[2] ;
    assign windowRamDataOutBus[0] = filterAluNumber[2] ;
    assign windowReadOne = filterAluNumber[2] ;
    assign weightsReadOne = filterAluNumber[2] ;
    assign weightsReadFinal = filterAluNumber[2] ;
    assign filterAluNumber[1] = filterAluNumber[2] ;
    assign filterAluNumber[0] = filterAluNumber[2] ;
    assign windowAluNumber[2] = filterAluNumber[2] ;
    assign windowAluNumber[1] = filterAluNumber[2] ;
    assign windowAluNumber[0] = filterAluNumber[2] ;
    Mux2_13 writeRamMux (.A ({filterAluNumber[2],weightsSizeForWindow_0,
            weightsSizeForWindow_0,weightsSizeForWindow_0,weightsSizeForWindow_0
            ,filterAluNumber[2],filterAluNumber[2],weightsSizeForWindow_0,
            filterAluNumber[2],filterAluNumber[2],filterAluNumber[2],
            filterAluNumber[2],filterAluNumber[2]}), .B ({filterAluNumber[2],
            filterAluNumber[2],filterAluNumber[2],filterAluNumber[2],
            filterAluNumber[2],filterAluNumber[2],filterAluNumber[2],
            filterAluNumber[2],filterAluNumber[2],filterAluNumber[2],
            filterAluNumber[2],filterAluNumber[2],filterAluNumber[2]}), .S (
            ramBaseAddressSelector), .C ({\$dummy [0],
            currentWriteRamBaseAddress_11,\$dummy [1],\$dummy [2],\$dummy [3],
            \$dummy [4],\$dummy [5],\$dummy [6],\$dummy [7],\$dummy [8],
            \$dummy [9],\$dummy [10],\$dummy [11]})) ;
    ReadLogic_13_80_false windowReadLogicEnt (.clk (clk), .resetState (
                          filterAluNumber[2]), .switchRam (windowRLSwitchRam), .ramBasedAddress (
                          {filterAluNumber[2],ramBaseAddressSelector,
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2]}), .internalBus ({\$dummy [12],
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
                          \$dummy [77],\$dummy [78],\$dummy [79],\$dummy [80],
                          \$dummy [81],\$dummy [82],\$dummy [83],\$dummy [84],
                          \$dummy [85],\$dummy [86],\$dummy [87],\$dummy [88],
                          \$dummy [89],\$dummy [90],\$dummy [91]}), .ramDataInBus (
                          {filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2]}), .ramRead (
                          windowRamRead), .ramAddress ({windowRamAddressRead[12]
                          ,windowRamAddressRead[11],windowRamAddressRead[10],
                          windowRamAddressRead[9],windowRamAddressRead[8],
                          windowRamAddressRead[7],windowRamAddressRead[6],
                          windowRamAddressRead[5],windowRamAddressRead[4],
                          windowRamAddressRead[3],windowRamAddressRead[2],
                          windowRamAddressRead[1],windowRamAddressRead[0]}), .MFC (
                          MFCWindowRam), .inputSize ({filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],inputSize[4],inputSize[3],
                          inputSize[2],inputSize[1],inputSize[0]}), .filterSize (
                          {filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],
                          filterAluNumber[2],filterAluNumber[2],weightsSizeType,
                          NOT_weightsSizeType,weightsSizeForWindow_0}), .loadNextWordList (
                          loadNextWindow), .loadWord (loadNextRow), .finishSlice (
                          sliceFinished), .readOne (\$dummy [92]), .readFinal (
                          windowReadFinal), .aluNumber ({\$dummy [93],
                          \$dummy [94],\$dummy [95]})) ;
    ReadLogic_12_40_true filterReadLogicEnt (.clk (filterAluNumber[2]), .resetState (
                         filterAluNumber[2]), .switchRam (filterAluNumber[2]), .ramBasedAddress (
                         {filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2]}), .internalBus (
                         {\$dummy [96],\$dummy [97],\$dummy [98],\$dummy [99],
                         \$dummy [100],\$dummy [101],\$dummy [102],\$dummy [103]
                         ,\$dummy [104],\$dummy [105],\$dummy [106],
                         \$dummy [107],\$dummy [108],\$dummy [109],\$dummy [110]
                         ,\$dummy [111],weightsInternalBus[23],
                         weightsInternalBus[22],weightsInternalBus[21],
                         weightsInternalBus[20],weightsInternalBus[19],
                         \$dummy [112],\$dummy [113],\$dummy [114],
                         weightsInternalBus[15],weightsInternalBus[14],
                         weightsInternalBus[13],weightsInternalBus[12],
                         weightsInternalBus[11],\$dummy [115],\$dummy [116],
                         \$dummy [117],weightsInternalBus[7],
                         weightsInternalBus[6],weightsInternalBus[5],
                         weightsInternalBus[4],weightsInternalBus[3],
                         weightsInternalBus[2],weightsInternalBus[1],
                         weightsInternalBus[0]}), .ramDataInBus ({
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2]}), .ramRead (
                         \$dummy [118]), .ramAddress ({\$dummy [119],
                         \$dummy [120],\$dummy [121],\$dummy [122],\$dummy [123]
                         ,\$dummy [124],\$dummy [125],\$dummy [126],
                         \$dummy [127],\$dummy [128],\$dummy [129],\$dummy [130]
                         }), .MFC (filterAluNumber[2]), .inputSize ({
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],weightsSizeForWindow_0}), .filterSize (
                         {filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],filterAluNumber[2],
                         filterAluNumber[2],weightsSizeForWindow_0}), .loadNextWordList (
                         filterAluNumber[2]), .loadWord (filterAluNumber[2]), .finishSlice (
                         filterAluNumber[2]), .readOne (\$dummy [131]), .readFinal (
                         \$dummy [132]), .aluNumber ({\$dummy [133],
                         \$dummy [134],\$dummy [135]})) ;
    WriteLogic_13_16 writeLogicEnt (.clk (clk), .resetState (filterAluNumber[2])
                     , .switchRam (switchRam), .ramBasedAddress ({
                     filterAluNumber[2],currentWriteRamBaseAddress_11,
                     filterAluNumber[2],filterAluNumber[2],filterAluNumber[2],
                     filterAluNumber[2],filterAluNumber[2],filterAluNumber[2],
                     filterAluNumber[2],filterAluNumber[2],filterAluNumber[2],
                     filterAluNumber[2],filterAluNumber[2]}), .internalBus ({
                     filterAluNumber[2],filterAluNumber[2],filterAluNumber[2],
                     filterAluNumber[2],filterAluNumber[2],filterAluNumber[2],
                     filterAluNumber[2],filterAluNumber[2],filterAluNumber[2],
                     filterAluNumber[2],filterAluNumber[2],filterAluNumber[2],
                     filterAluNumber[2],filterAluNumber[2],filterAluNumber[2],
                     filterAluNumber[2]}), .ramWrite (windowRamWrite), .ramDataOutBus (
                     {\$dummy [136],\$dummy [137],\$dummy [138],\$dummy [139],
                     \$dummy [140],\$dummy [141],\$dummy [142],\$dummy [143],
                     \$dummy [144],\$dummy [145],\$dummy [146],\$dummy [147],
                     \$dummy [148],\$dummy [149],\$dummy [150],\$dummy [151]}), 
                     .ramAddress ({windowRamAddressWrite[12],
                     windowRamAddressWrite[11],windowRamAddressWrite[10],
                     windowRamAddressWrite[9],windowRamAddressWrite[8],
                     windowRamAddressWrite[7],windowRamAddressWrite[6],
                     windowRamAddressWrite[5],windowRamAddressWrite[4],
                     windowRamAddressWrite[3],windowRamAddressWrite[2],
                     windowRamAddressWrite[1],windowRamAddressWrite[0]}), .MFC (
                     MFCWrite), .outputSize ({filterAluNumber[2],
                     filterAluNumber[2],filterAluNumber[2],filterAluNumber[2],
                     filterAluNumber[2],filterAluNumber[2],filterAluNumber[2],
                     outputSize[5],outputSize[4],outputSize[3],outputSize[2],
                     outputSize[1],outputSize[0]}), .write (write), .finishFilter (
                     writeFinishFilter), .writeDoneOne (writeDoneOne)) ;
    fake_vcc ix4 (.Y (weightsSizeForWindow_0)) ;
    fake_gnd ix2 (.Y (filterAluNumber[2])) ;
    inv01 ix18 (.Y (NOT_weightsSizeType), .A (weightsSizeType)) ;
    nand02 ix15 (.Y (writeFinishFilter), .A0 (nx20), .A1 (nx22)) ;
    nand02 ix21 (.Y (nx20), .A0 (sliceFinished), .A1 (layerType)) ;
    inv01 ix23 (.Y (nx22), .A (filterFinished)) ;
    nand02 ix9 (.Y (windowRLSwitchRam), .A0 (nx25), .A1 (nx22)) ;
    nor02_2x ix26 (.Y (nx25), .A0 (reset), .A1 (layerFinished)) ;
    inv01 ix7 (.Y (switchRam), .A (nx25)) ;
    dffr reg_ramBaseAddressSelector (.Q (ramBaseAddressSelector), .QB (NOT__2428
         ), .D (NOT__2428), .CLK (layerFinished), .R (reset)) ;
endmodule


module WriteLogic_13_16 ( clk, resetState, switchRam, ramBasedAddress, 
                          internalBus, ramWrite, ramDataOutBus, ramAddress, MFC, 
                          outputSize, write, finishFilter, writeDoneOne ) ;

    input clk ;
    input resetState ;
    input switchRam ;
    input [12:0]ramBasedAddress ;
    input [15:0]internalBus ;
    output ramWrite ;
    output [15:0]ramDataOutBus ;
    output [12:0]ramAddress ;
    input MFC ;
    input [12:0]outputSize ;
    input write ;
    input finishFilter ;
    output writeDoneOne ;

    wire currentState_2, addressRegOut_12, addressRegOut_11, addressRegOut_10, 
         addressRegOut_9, addressRegOut_8, addressRegOut_7, addressRegOut_6, 
         addressRegOut_5, addressRegOut_4, addressRegOut_3, addressRegOut_2, 
         addressRegOut_1, addressRegOut_0, addressRegInFinal_12, 
         addressRegInFinal_11, addressRegInFinal_10, addressRegInFinal_9, 
         addressRegInFinal_8, addressRegInFinal_7, addressRegInFinal_6, 
         addressRegInFinal_5, addressRegInFinal_4, addressRegInFinal_3, 
         addressRegInFinal_2, addressRegInFinal_1, addressRegInFinal_0, 
         dmaFinishAll, resetAddressReg, baseAddressCounterClk, 
         ramAddressKeeperOut_12, ramAddressKeeperOut_11, ramAddressKeeperOut_10, 
         ramAddressKeeperOut_9, ramAddressKeeperOut_8, ramAddressKeeperOut_7, 
         ramAddressKeeperOut_6, ramAddressKeeperOut_5, ramAddressKeeperOut_4, 
         ramAddressKeeperOut_3, ramAddressKeeperOut_2, ramAddressKeeperOut_1, 
         ramAddressKeeperOut_0, ramAddressKeeperOutPlus1_12, 
         ramAddressKeeperOutPlus1_11, ramAddressKeeperOutPlus1_10, 
         ramAddressKeeperOutPlus1_9, ramAddressKeeperOutPlus1_8, 
         ramAddressKeeperOutPlus1_7, ramAddressKeeperOutPlus1_6, 
         ramAddressKeeperOutPlus1_5, ramAddressKeeperOutPlus1_4, 
         ramAddressKeeperOutPlus1_3, ramAddressKeeperOutPlus1_2, 
         ramAddressKeeperOutPlus1_1, ramAddressKeeperOutPlus1_0, addressRegIn_5, 
         dmaCountIn_4, dmaCountIn_3, dmaCountIn_2, dmaCountIn_1, dmaCountIn_0, 
         PWR, currentState_4, currentState_0, nx17, NOT_clk, currentState_1, 
         nx22, nx26, currentState_3, nx25, nx35, nx45, nx55, nx65, nx74, nx76, 
         nx79, nx81, nx85, nx89, nx93, nx97, nx102, nx105, nx107, nx109, nx111, 
         nx115, nx117, nx120, nx123, nx126, nx129, nx132, nx135, nx138, nx140;
    wire [17:0] \$dummy ;




    assign ramDataOutBus[14] = ramDataOutBus[15] ;
    assign ramDataOutBus[13] = ramDataOutBus[15] ;
    assign ramDataOutBus[12] = ramDataOutBus[15] ;
    assign ramDataOutBus[11] = ramDataOutBus[15] ;
    assign ramDataOutBus[10] = ramDataOutBus[15] ;
    assign ramDataOutBus[9] = ramDataOutBus[15] ;
    assign ramDataOutBus[8] = ramDataOutBus[15] ;
    assign ramDataOutBus[7] = ramDataOutBus[15] ;
    assign ramDataOutBus[6] = ramDataOutBus[15] ;
    assign ramDataOutBus[5] = ramDataOutBus[15] ;
    assign ramDataOutBus[4] = ramDataOutBus[15] ;
    assign ramDataOutBus[3] = ramDataOutBus[15] ;
    assign ramDataOutBus[2] = ramDataOutBus[15] ;
    assign ramDataOutBus[1] = ramDataOutBus[15] ;
    assign ramDataOutBus[0] = ramDataOutBus[15] ;
    Reg_13_unfolded1 ramAddressKeeper (.D ({ramAddress[12],ramAddress[11],
                     ramAddress[10],ramAddress[9],ramAddress[8],ramAddress[7],
                     ramAddress[6],ramAddress[5],ramAddress[4],ramAddress[3],
                     ramAddress[2],ramAddress[1],ramAddress[0]}), .en (ramWrite)
                     , .clk (clk), .rst (ramDataOutBus[15]), .Q ({
                     ramAddressKeeperOut_12,ramAddressKeeperOut_11,
                     ramAddressKeeperOut_10,ramAddressKeeperOut_9,
                     ramAddressKeeperOut_8,ramAddressKeeperOut_7,
                     ramAddressKeeperOut_6,ramAddressKeeperOut_5,
                     ramAddressKeeperOut_4,ramAddressKeeperOut_3,
                     ramAddressKeeperOut_2,ramAddressKeeperOut_1,
                     ramAddressKeeperOut_0})) ;
    WriteDMA_13_16 dma (.clk (clk), .writeBaseAddress ({addressRegOut_12,
                   addressRegOut_11,addressRegOut_10,addressRegOut_9,
                   addressRegOut_8,addressRegOut_7,addressRegOut_6,
                   addressRegOut_5,addressRegOut_4,addressRegOut_3,
                   addressRegOut_2,addressRegOut_1,addressRegOut_0}), .writeStep (
                   {ramDataOutBus[15],ramDataOutBus[15],ramDataOutBus[15],
                   ramDataOutBus[15],ramDataOutBus[15],ramDataOutBus[15],
                   ramDataOutBus[15],outputSize[5],outputSize[4],outputSize[3],
                   outputSize[2],outputSize[1],outputSize[0]}), .writeToRam (
                   ramWrite), .counter ({dmaCountIn_4,dmaCountIn_3,dmaCountIn_2,
                   dmaCountIn_1,dmaCountIn_0}), .initCounter (currentState_2), .initAddress (
                   ramDataOutBus[15]), .internalBus ({ramDataOutBus[15],
                   ramDataOutBus[15],ramDataOutBus[15],ramDataOutBus[15],
                   ramDataOutBus[15],ramDataOutBus[15],ramDataOutBus[15],
                   ramDataOutBus[15],ramDataOutBus[15],ramDataOutBus[15],
                   ramDataOutBus[15],ramDataOutBus[15],ramDataOutBus[15],
                   ramDataOutBus[15],ramDataOutBus[15],ramDataOutBus[15]}), .ramWrite (
                   \$dummy [0]), .ramDataOutBus ({\$dummy [1],\$dummy [2],
                   \$dummy [3],\$dummy [4],\$dummy [5],\$dummy [6],\$dummy [7],
                   \$dummy [8],\$dummy [9],\$dummy [10],\$dummy [11],
                   \$dummy [12],\$dummy [13],\$dummy [14],\$dummy [15],
                   \$dummy [16]}), .ramWriteAddress ({ramAddress[12],
                   ramAddress[11],ramAddress[10],ramAddress[9],ramAddress[8],
                   ramAddress[7],ramAddress[6],ramAddress[5],ramAddress[4],
                   ramAddress[3],ramAddress[2],ramAddress[1],ramAddress[0]}), .MFC (
                   MFC), .writeComplete (dmaFinishAll), .writeCompleteOneOut (
                   writeDoneOne)) ;
    NBitAdder_13_unfolded2 ramAddressIncrement (.a ({ramAddressKeeperOut_12,
                           ramAddressKeeperOut_11,ramAddressKeeperOut_10,
                           ramAddressKeeperOut_9,ramAddressKeeperOut_8,
                           ramAddressKeeperOut_7,ramAddressKeeperOut_6,
                           ramAddressKeeperOut_5,ramAddressKeeperOut_4,
                           ramAddressKeeperOut_3,ramAddressKeeperOut_2,
                           ramAddressKeeperOut_1,ramAddressKeeperOut_0}), .b ({
                           ramDataOutBus[15],ramDataOutBus[15],ramDataOutBus[15]
                           ,ramDataOutBus[15],ramDataOutBus[15],
                           ramDataOutBus[15],ramDataOutBus[15],ramDataOutBus[15]
                           ,ramDataOutBus[15],ramDataOutBus[15],
                           ramDataOutBus[15],ramDataOutBus[15],ramDataOutBus[15]
                           }), .carryIn (PWR), .sum ({
                           ramAddressKeeperOutPlus1_12,
                           ramAddressKeeperOutPlus1_11,
                           ramAddressKeeperOutPlus1_10,
                           ramAddressKeeperOutPlus1_9,ramAddressKeeperOutPlus1_8
                           ,ramAddressKeeperOutPlus1_7,
                           ramAddressKeeperOutPlus1_6,ramAddressKeeperOutPlus1_5
                           ,ramAddressKeeperOutPlus1_4,
                           ramAddressKeeperOutPlus1_3,ramAddressKeeperOutPlus1_2
                           ,ramAddressKeeperOutPlus1_1,
                           ramAddressKeeperOutPlus1_0}), .carryOut (\$dummy [17]
                           )) ;
    Mux2_13_unfolded1 baseAddressLoadMux (.A ({ramDataOutBus[15],addressRegIn_5,
                      addressRegIn_5,addressRegIn_5,addressRegIn_5,
                      ramDataOutBus[15],ramDataOutBus[15],addressRegIn_5,
                      ramDataOutBus[15],ramDataOutBus[15],ramDataOutBus[15],
                      ramDataOutBus[15],ramDataOutBus[15]}), .B ({
                      ramAddressKeeperOutPlus1_12,ramAddressKeeperOutPlus1_11,
                      ramAddressKeeperOutPlus1_10,ramAddressKeeperOutPlus1_9,
                      ramAddressKeeperOutPlus1_8,ramAddressKeeperOutPlus1_7,
                      ramAddressKeeperOutPlus1_6,ramAddressKeeperOutPlus1_5,
                      ramAddressKeeperOutPlus1_4,ramAddressKeeperOutPlus1_3,
                      ramAddressKeeperOutPlus1_2,ramAddressKeeperOutPlus1_1,
                      ramAddressKeeperOutPlus1_0}), .S (finishFilter), .C ({
                      addressRegInFinal_12,addressRegInFinal_11,
                      addressRegInFinal_10,addressRegInFinal_9,
                      addressRegInFinal_8,addressRegInFinal_7,
                      addressRegInFinal_6,addressRegInFinal_5,
                      addressRegInFinal_4,addressRegInFinal_3,
                      addressRegInFinal_2,addressRegInFinal_1,
                      addressRegInFinal_0})) ;
    Counter2_13 baseAddressCounter (.load ({addressRegInFinal_12,
                addressRegInFinal_11,addressRegInFinal_10,addressRegInFinal_9,
                addressRegInFinal_8,addressRegInFinal_7,addressRegInFinal_6,
                addressRegInFinal_5,addressRegInFinal_4,addressRegInFinal_3,
                addressRegInFinal_2,addressRegInFinal_1,addressRegInFinal_0}), .reset (
                ramDataOutBus[15]), .clk (baseAddressCounterClk), .isLoad (
                resetAddressReg), .count ({addressRegOut_12,addressRegOut_11,
                addressRegOut_10,addressRegOut_9,addressRegOut_8,addressRegOut_7
                ,addressRegOut_6,addressRegOut_5,addressRegOut_4,addressRegOut_3
                ,addressRegOut_2,addressRegOut_1,addressRegOut_0})) ;
    fake_vcc ix4 (.Y (PWR)) ;
    fake_gnd ix2 (.Y (ramDataOutBus[15])) ;
    nor02_2x ix49 (.Y (ramWrite), .A0 (nx74), .A1 (nx76)) ;
    inv01 ix75 (.Y (nx74), .A (write)) ;
    mux21 ix66 (.Y (nx65), .A0 (nx79), .A1 (nx76), .S0 (nx111)) ;
    nand02 ix80 (.Y (nx79), .A0 (nx81), .A1 (currentState_3)) ;
    inv01 ix82 (.Y (nx81), .A (switchRam)) ;
    mux21 ix56 (.Y (nx55), .A0 (nx85), .A1 (nx117), .S0 (nx111)) ;
    nand02 ix86 (.Y (nx85), .A0 (nx81), .A1 (currentState_2)) ;
    mux21 ix46 (.Y (nx45), .A0 (nx89), .A1 (nx115), .S0 (nx111)) ;
    nand02 ix90 (.Y (nx89), .A0 (nx81), .A1 (currentState_0)) ;
    mux21 ix36 (.Y (nx35), .A0 (nx93), .A1 (nx109), .S0 (nx111)) ;
    oai21 ix94 (.Y (nx93), .A0 (currentState_1), .A1 (currentState_4), .B0 (nx81
          )) ;
    oai21 ix26 (.Y (nx25), .A0 (nx97), .A1 (nx17), .B0 (nx81)) ;
    dff reg_currentState_1 (.Q (currentState_1), .QB (nx97), .D (nx25), .CLK (
        NOT_clk)) ;
    inv01 ix100 (.Y (NOT_clk), .A (clk)) ;
    nand04 ix29 (.Y (nx17), .A0 (nx102), .A1 (nx81), .A2 (nx105), .A3 (nx107)) ;
    nand02 ix103 (.Y (nx102), .A0 (dmaFinishAll), .A1 (currentState_4)) ;
    dff reg_currentState_4 (.Q (currentState_4), .QB (nx76), .D (nx65), .CLK (
        NOT_clk)) ;
    nand02 ix106 (.Y (nx105), .A0 (write), .A1 (currentState_0)) ;
    nand02 ix108 (.Y (nx107), .A0 (nx76), .A1 (nx109)) ;
    dff reg_currentState_0 (.Q (currentState_0), .QB (nx109), .D (nx35), .CLK (
        NOT_clk)) ;
    nor02_2x ix112 (.Y (nx111), .A0 (nx26), .A1 (nx22)) ;
    nand02 ix27 (.Y (nx26), .A0 (nx102), .A1 (nx81)) ;
    nand02 ix23 (.Y (nx22), .A0 (nx105), .A1 (nx107)) ;
    dff reg_currentState_2 (.Q (currentState_2), .QB (nx115), .D (nx45), .CLK (
        NOT_clk)) ;
    dff reg_currentState_3 (.Q (currentState_3), .QB (nx117), .D (nx55), .CLK (
        NOT_clk)) ;
    nor02_2x ix51 (.Y (dmaCountIn_0), .A0 (nx120), .A1 (nx115)) ;
    inv01 ix121 (.Y (nx120), .A (outputSize[0])) ;
    nor02_2x ix53 (.Y (dmaCountIn_1), .A0 (nx123), .A1 (nx115)) ;
    inv01 ix124 (.Y (nx123), .A (outputSize[1])) ;
    nor02_2x ix55 (.Y (dmaCountIn_2), .A0 (nx126), .A1 (nx115)) ;
    inv01 ix127 (.Y (nx126), .A (outputSize[2])) ;
    nor02_2x ix57 (.Y (dmaCountIn_3), .A0 (nx129), .A1 (nx115)) ;
    inv01 ix130 (.Y (nx129), .A (outputSize[3])) ;
    nor02_2x ix59 (.Y (dmaCountIn_4), .A0 (nx132), .A1 (nx115)) ;
    inv01 ix133 (.Y (nx132), .A (outputSize[4])) ;
    nor02_2x ix61 (.Y (addressRegIn_5), .A0 (nx135), .A1 (nx97)) ;
    inv01 ix136 (.Y (nx135), .A (ramBasedAddress[11])) ;
    oai21 ix71 (.Y (baseAddressCounterClk), .A0 (clk), .A1 (nx138), .B0 (nx140)
          ) ;
    nor02_2x ix139 (.Y (nx138), .A0 (currentState_1), .A1 (finishFilter)) ;
    nand02 ix141 (.Y (nx140), .A0 (clk), .A1 (currentState_3)) ;
    inv01 ix63 (.Y (resetAddressReg), .A (nx138)) ;
endmodule


module WriteDMA_13_16 ( clk, writeBaseAddress, writeStep, writeToRam, counter, 
                        initCounter, initAddress, internalBus, ramWrite, 
                        ramDataOutBus, ramWriteAddress, MFC, writeComplete, 
                        writeCompleteOneOut ) ;

    input clk ;
    input [12:0]writeBaseAddress ;
    input [12:0]writeStep ;
    input writeToRam ;
    input [4:0]counter ;
    input initCounter ;
    input initAddress ;
    input [15:0]internalBus ;
    output ramWrite ;
    output [15:0]ramDataOutBus ;
    output [12:0]ramWriteAddress ;
    input MFC ;
    output writeComplete ;
    output writeCompleteOneOut ;

    wire toBeAdded_5, toBeAdded_4, toBeAdded_3, toBeAdded_2, toBeAdded_1, 
         toBeAdded_0, currentCount_4, currentCount_3, currentCount_2, 
         currentCount_1, currentCount_0, enableCounter, PWR, NOT_MFC, nx6, nx12, 
         nx22, nx26, nx25, nx30, nx33, nx37, nx40, nx43, nx1, nx5, nx56, nx58;
    wire [6:0] \$dummy ;




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
    Reg_13_unfolded2 writeStepRegister (.D ({ramWrite,ramWrite,ramWrite,ramWrite
                     ,ramWrite,ramWrite,ramWrite,writeStep[5],writeStep[4],
                     writeStep[3],writeStep[2],writeStep[1],writeStep[0]}), .en (
                     PWR), .clk (nx58), .rst (ramWrite), .Q ({\$dummy [0],
                     \$dummy [1],\$dummy [2],\$dummy [3],\$dummy [4],\$dummy [5]
                     ,\$dummy [6],toBeAdded_5,toBeAdded_4,toBeAdded_3,
                     toBeAdded_2,toBeAdded_1,toBeAdded_0})) ;
    MultiStepCounter_13_unfolded0 writeAddressRegister (.load ({
                                  writeBaseAddress[12],writeBaseAddress[11],
                                  writeBaseAddress[10],writeBaseAddress[9],
                                  writeBaseAddress[8],writeBaseAddress[7],
                                  writeBaseAddress[6],writeBaseAddress[5],
                                  writeBaseAddress[4],writeBaseAddress[3],
                                  writeBaseAddress[2],writeBaseAddress[1],
                                  writeBaseAddress[0]}), .toBeAdded ({ramWrite,
                                  ramWrite,ramWrite,ramWrite,ramWrite,ramWrite,
                                  ramWrite,toBeAdded_5,toBeAdded_4,toBeAdded_3,
                                  toBeAdded_2,toBeAdded_1,toBeAdded_0}), .reset (
                                  ramWrite), .clk (clk), .isLoad (nx56), .MFC (
                                  writeCompleteOneOut), .count ({
                                  ramWriteAddress[12],ramWriteAddress[11],
                                  ramWriteAddress[10],ramWriteAddress[9],
                                  ramWriteAddress[8],ramWriteAddress[7],
                                  ramWriteAddress[6],ramWriteAddress[5],
                                  ramWriteAddress[4],ramWriteAddress[3],
                                  ramWriteAddress[2],ramWriteAddress[1],
                                  ramWriteAddress[0]})) ;
    DownCounter_5 writecounter (.load ({counter[4],counter[3],counter[2],
                  counter[1],counter[0]}), .enable (enableCounter), .clk (clk), 
                  .isLoad (nx56), .currentCount ({currentCount_4,currentCount_3,
                  currentCount_2,currentCount_1,currentCount_0})) ;
    fake_vcc ix8 (.Y (PWR)) ;
    fake_gnd ix6 (.Y (ramWrite)) ;
    nor02_2x ix17 (.Y (writeCompleteOneOut), .A0 (nx25), .A1 (NOT_MFC)) ;
    inv01 ix26 (.Y (nx25), .A (writeToRam)) ;
    inv16 ix28 (.Y (NOT_MFC), .A (MFC)) ;
    nand02 ix31 (.Y (enableCounter), .A0 (nx30), .A1 (nx33)) ;
    nand02 ix32 (.Y (nx30), .A0 (writeToRam), .A1 (MFC)) ;
    inv01 ix34 (.Y (nx33), .A (initCounter)) ;
    nor02_2x ix27 (.Y (nx26), .A0 (nx37), .A1 (nx43)) ;
    nand02 ix38 (.Y (nx37), .A0 (nx6), .A1 (nx12)) ;
    nor02_2x ix7 (.Y (nx6), .A0 (nx40), .A1 (currentCount_4)) ;
    inv01 ix41 (.Y (nx40), .A (currentCount_0)) ;
    nor02_2x ix13 (.Y (nx12), .A0 (currentCount_3), .A1 (currentCount_2)) ;
    nand02 ix44 (.Y (nx43), .A0 (writeCompleteOneOut), .A1 (nx22)) ;
    nor02_2x ix23 (.Y (nx22), .A0 (currentCount_1), .A1 (clk)) ;
    latchs_ni lat_internalWriteComplete_u1 (.QB (nx5), .D (ramWrite), .CLK (
              NOT_MFC), .S (nx26)) ;
    inv02 lat_internalWriteComplete_u2 (.Y (writeComplete), .A (nx5)) ;
    buf02 lat_internalWriteComplete_u3 (.Y (nx1), .A (nx5)) ;
    inv02 ix55 (.Y (nx56), .A (nx33)) ;
    inv02 ix57 (.Y (nx58), .A (nx33)) ;
endmodule


module DownCounter_5 ( load, enable, clk, isLoad, currentCount ) ;

    input [4:0]load ;
    input enable ;
    input clk ;
    input isLoad ;
    inout [4:0]currentCount ;

    wire counterInput_4, counterInput_3, counterInput_2, counterInput_1, 
         counterInput_0, subtractorOutput_4, subtractorOutput_3, 
         subtractorOutput_2, subtractorOutput_1, subtractorOutput_0, PWR, 
         zerosSignal_4;
    wire [0:0] \$dummy ;




    Reg_5_unfolded0 counterReg (.D ({counterInput_4,counterInput_3,
                    counterInput_2,counterInput_1,counterInput_0}), .en (enable)
                    , .clk (clk), .rst (zerosSignal_4), .Q ({currentCount[4],
                    currentCount[3],currentCount[2],currentCount[1],
                    currentCount[0]})) ;
    NBitSubtractor_5 nextCount (.x ({currentCount[4],currentCount[3],
                     currentCount[2],currentCount[1],currentCount[0]}), .y ({
                     zerosSignal_4,zerosSignal_4,zerosSignal_4,zerosSignal_4,
                     zerosSignal_4}), .bin (PWR), .difference ({
                     subtractorOutput_4,subtractorOutput_3,subtractorOutput_2,
                     subtractorOutput_1,subtractorOutput_0}), .borrowOut (
                     \$dummy [0])) ;
    Mux2_5 muxloadOrCurrent (.A ({subtractorOutput_4,subtractorOutput_3,
           subtractorOutput_2,subtractorOutput_1,subtractorOutput_0}), .B ({
           load[4],load[3],load[2],load[1],load[0]}), .S (isLoad), .C ({
           counterInput_4,counterInput_3,counterInput_2,counterInput_1,
           counterInput_0})) ;
    fake_gnd ix24 (.Y (zerosSignal_4)) ;
    fake_vcc ix22 (.Y (PWR)) ;
endmodule


module Mux2_5 ( A, B, S, C ) ;

    input [4:0]A ;
    input [4:0]B ;
    input S ;
    output [4:0]C ;

    wire nx131, nx133, nx135, nx138, nx140, nx143, nx145, nx148, nx150, nx153, 
         nx155;



    nand02 ix7 (.Y (C[0]), .A0 (nx131), .A1 (nx133)) ;
    nand02 ix132 (.Y (nx131), .A0 (B[0]), .A1 (S)) ;
    nand02 ix134 (.Y (nx133), .A0 (A[0]), .A1 (nx135)) ;
    inv01 ix136 (.Y (nx135), .A (S)) ;
    nand02 ix15 (.Y (C[1]), .A0 (nx138), .A1 (nx140)) ;
    nand02 ix139 (.Y (nx138), .A0 (B[1]), .A1 (S)) ;
    nand02 ix141 (.Y (nx140), .A0 (A[1]), .A1 (nx135)) ;
    nand02 ix23 (.Y (C[2]), .A0 (nx143), .A1 (nx145)) ;
    nand02 ix144 (.Y (nx143), .A0 (B[2]), .A1 (S)) ;
    nand02 ix146 (.Y (nx145), .A0 (A[2]), .A1 (nx135)) ;
    nand02 ix31 (.Y (C[3]), .A0 (nx148), .A1 (nx150)) ;
    nand02 ix149 (.Y (nx148), .A0 (B[3]), .A1 (S)) ;
    nand02 ix151 (.Y (nx150), .A0 (A[3]), .A1 (nx135)) ;
    nand02 ix39 (.Y (C[4]), .A0 (nx153), .A1 (nx155)) ;
    nand02 ix154 (.Y (nx153), .A0 (S), .A1 (B[4])) ;
    nand02 ix156 (.Y (nx155), .A0 (nx135), .A1 (A[4])) ;
endmodule


module NBitSubtractor_5 ( x, y, bin, difference, borrowOut ) ;

    input [4:0]x ;
    input [4:0]y ;
    input bin ;
    output [4:0]difference ;
    output borrowOut ;

    wire temp_3, temp_2, temp_1, bin_rename;
    wire [1:0] \$dummy ;




    FullSubtractor f0 (.x (x[0]), .y (borrowOut), .bin (bin_rename), .difference (
                   difference[0]), .bout (\$dummy [0])) ;
    FullSubtractor_unfolded0 loop1_1_fx (.x (x[1]), .y (borrowOut), .bin (
                             difference[0]), .difference (difference[1]), .bout (
                             temp_1)) ;
    FullSubtractor_unfolded0 loop1_2_fx (.x (x[2]), .y (borrowOut), .bin (temp_1
                             ), .difference (difference[2]), .bout (temp_2)) ;
    FullSubtractor_unfolded0 loop1_3_fx (.x (x[3]), .y (borrowOut), .bin (temp_2
                             ), .difference (difference[3]), .bout (temp_3)) ;
    FullSubtractor_unfolded1 loop1_4_fx (.x (x[4]), .y (borrowOut), .bin (temp_3
                             ), .difference (difference[4]), .bout (\$dummy [1])
                             ) ;
    fake_gnd ix4 (.Y (borrowOut)) ;
    fake_vcc ix2 (.Y (bin_rename)) ;
endmodule


module Reg_5_unfolded0 ( D, en, clk, rst, Q ) ;

    input [4:0]D ;
    input en ;
    input clk ;
    input rst ;
    output [4:0]Q ;

    wire nx62, nx72, nx82, nx92, nx102, nx114, nx116, nx118, nx123, nx125, nx130, 
         nx132, nx137, nx139, nx144, nx146;
    wire [4:0] \$dummy ;




    dff reg_Q_0 (.Q (Q[0]), .QB (\$dummy [0]), .D (nx62), .CLK (clk)) ;
    nand02 ix63 (.Y (nx62), .A0 (nx114), .A1 (nx118)) ;
    nand02 ix115 (.Y (nx114), .A0 (Q[0]), .A1 (nx116)) ;
    inv01 ix117 (.Y (nx116), .A (en)) ;
    nand02 ix119 (.Y (nx118), .A0 (D[0]), .A1 (en)) ;
    dff reg_Q_1 (.Q (Q[1]), .QB (\$dummy [1]), .D (nx72), .CLK (clk)) ;
    nand02 ix73 (.Y (nx72), .A0 (nx123), .A1 (nx125)) ;
    nand02 ix124 (.Y (nx123), .A0 (Q[1]), .A1 (nx116)) ;
    nand02 ix126 (.Y (nx125), .A0 (D[1]), .A1 (en)) ;
    dff reg_Q_2 (.Q (Q[2]), .QB (\$dummy [2]), .D (nx82), .CLK (clk)) ;
    nand02 ix83 (.Y (nx82), .A0 (nx130), .A1 (nx132)) ;
    nand02 ix131 (.Y (nx130), .A0 (Q[2]), .A1 (nx116)) ;
    nand02 ix133 (.Y (nx132), .A0 (D[2]), .A1 (en)) ;
    dff reg_Q_3 (.Q (Q[3]), .QB (\$dummy [3]), .D (nx92), .CLK (clk)) ;
    nand02 ix93 (.Y (nx92), .A0 (nx137), .A1 (nx139)) ;
    nand02 ix138 (.Y (nx137), .A0 (Q[3]), .A1 (nx116)) ;
    nand02 ix140 (.Y (nx139), .A0 (D[3]), .A1 (en)) ;
    dff reg_Q_4 (.Q (Q[4]), .QB (\$dummy [4]), .D (nx102), .CLK (clk)) ;
    nand02 ix103 (.Y (nx102), .A0 (nx144), .A1 (nx146)) ;
    nand02 ix145 (.Y (nx144), .A0 (Q[4]), .A1 (nx116)) ;
    nand02 ix147 (.Y (nx146), .A0 (D[4]), .A1 (en)) ;
endmodule


module MultiStepCounter_13_unfolded0 ( load, toBeAdded, reset, clk, isLoad, MFC, 
                                       count ) ;

    input [12:0]load ;
    input [12:0]toBeAdded ;
    input reset ;
    input clk ;
    input isLoad ;
    input MFC ;
    output [12:0]count ;

    wire loadOrCurrent_12, loadOrCurrent_11, loadOrCurrent_10, loadOrCurrent_9, 
         loadOrCurrent_8, loadOrCurrent_7, loadOrCurrent_6, loadOrCurrent_5, 
         loadOrCurrent_4, loadOrCurrent_3, loadOrCurrent_2, loadOrCurrent_1, 
         loadOrCurrent_0, counterInput_12, counterInput_11, counterInput_10, 
         counterInput_9, counterInput_8, counterInput_7, counterInput_6, 
         counterInput_5, counterInput_4, counterInput_3, counterInput_2, 
         counterInput_1, counterInput_0, countAdded_12, countAdded_11, 
         countAdded_10, countAdded_9, countAdded_8, countAdded_7, countAdded_6, 
         countAdded_5, countAdded_4, countAdded_3, countAdded_2, countAdded_1, 
         countAdded_0, GND, PWR;
    wire [0:0] \$dummy ;




    Reg_13 counterReg (.D ({counterInput_12,counterInput_11,counterInput_10,
           counterInput_9,counterInput_8,counterInput_7,counterInput_6,
           counterInput_5,counterInput_4,counterInput_3,counterInput_2,
           counterInput_1,counterInput_0}), .en (PWR), .clk (clk), .rst (GND), .Q (
           {count[12],count[11],count[10],count[9],count[8],count[7],count[6],
           count[5],count[4],count[3],count[2],count[1],count[0]})) ;
    NBitAdder_13_unfolded3 nextCount (.a ({count[12],count[11],count[10],
                           count[9],count[8],count[7],count[6],count[5],count[4]
                           ,count[3],count[2],count[1],count[0]}), .b ({GND,GND,
                           GND,GND,GND,GND,GND,toBeAdded[5],toBeAdded[4],
                           toBeAdded[3],toBeAdded[2],toBeAdded[1],toBeAdded[0]})
                           , .carryIn (GND), .sum ({countAdded_12,countAdded_11,
                           countAdded_10,countAdded_9,countAdded_8,countAdded_7,
                           countAdded_6,countAdded_5,countAdded_4,countAdded_3,
                           countAdded_2,countAdded_1,countAdded_0}), .carryOut (
                           \$dummy [0])) ;
    Mux2_13_unfolded0 muxloadOrCurrent (.A ({count[12],count[11],count[10],
                      count[9],count[8],count[7],count[6],count[5],count[4],
                      count[3],count[2],count[1],count[0]}), .B ({load[12],
                      load[11],load[10],load[9],load[8],load[7],load[6],load[5],
                      load[4],load[3],load[2],load[1],load[0]}), .S (isLoad), .C (
                      {loadOrCurrent_12,loadOrCurrent_11,loadOrCurrent_10,
                      loadOrCurrent_9,loadOrCurrent_8,loadOrCurrent_7,
                      loadOrCurrent_6,loadOrCurrent_5,loadOrCurrent_4,
                      loadOrCurrent_3,loadOrCurrent_2,loadOrCurrent_1,
                      loadOrCurrent_0})) ;
    Mux2_13_unfolded0 muxInput (.A ({loadOrCurrent_12,loadOrCurrent_11,
                      loadOrCurrent_10,loadOrCurrent_9,loadOrCurrent_8,
                      loadOrCurrent_7,loadOrCurrent_6,loadOrCurrent_5,
                      loadOrCurrent_4,loadOrCurrent_3,loadOrCurrent_2,
                      loadOrCurrent_1,loadOrCurrent_0}), .B ({countAdded_12,
                      countAdded_11,countAdded_10,countAdded_9,countAdded_8,
                      countAdded_7,countAdded_6,countAdded_5,countAdded_4,
                      countAdded_3,countAdded_2,countAdded_1,countAdded_0}), .S (
                      MFC), .C ({counterInput_12,counterInput_11,counterInput_10
                      ,counterInput_9,counterInput_8,counterInput_7,
                      counterInput_6,counterInput_5,counterInput_4,
                      counterInput_3,counterInput_2,counterInput_1,
                      counterInput_0})) ;
    fake_vcc ix4 (.Y (PWR)) ;
    fake_gnd ix2 (.Y (GND)) ;
endmodule


module NBitAdder_13_unfolded3 ( a, b, carryIn, sum, carryOut ) ;

    input [12:0]a ;
    input [12:0]b ;
    input carryIn ;
    output [12:0]sum ;
    output carryOut ;

    wire temp_11, temp_10, temp_9, temp_8, temp_7, temp_6, temp_5, temp_4, 
         temp_3, temp_2, temp_1, temp_0;
    wire [0:0] \$dummy ;




    FullAdder_unfolded4 f0 (.a (a[0]), .b (b[0]), .cin (carryOut), .s (sum[0]), 
                        .cout (temp_0)) ;
    FullAdder_unfolded5 loop1_1_fx (.a (a[1]), .b (b[1]), .cin (temp_0), .s (
                        sum[1]), .cout (temp_1)) ;
    FullAdder_unfolded5 loop1_2_fx (.a (a[2]), .b (b[2]), .cin (temp_1), .s (
                        sum[2]), .cout (temp_2)) ;
    FullAdder_unfolded5 loop1_3_fx (.a (a[3]), .b (b[3]), .cin (temp_2), .s (
                        sum[3]), .cout (temp_3)) ;
    FullAdder_unfolded5 loop1_4_fx (.a (a[4]), .b (b[4]), .cin (temp_3), .s (
                        sum[4]), .cout (temp_4)) ;
    FullAdder_unfolded5 loop1_5_fx (.a (a[5]), .b (b[5]), .cin (temp_4), .s (
                        sum[5]), .cout (temp_5)) ;
    FullAdder_unfolded10 loop1_6_fx (.a (a[6]), .b (carryOut), .cin (temp_5), .s (
                         sum[6]), .cout (temp_6)) ;
    FullAdder_unfolded10 loop1_7_fx (.a (a[7]), .b (carryOut), .cin (temp_6), .s (
                         sum[7]), .cout (temp_7)) ;
    FullAdder_unfolded10 loop1_8_fx (.a (a[8]), .b (carryOut), .cin (temp_7), .s (
                         sum[8]), .cout (temp_8)) ;
    FullAdder_unfolded10 loop1_9_fx (.a (a[9]), .b (carryOut), .cin (temp_8), .s (
                         sum[9]), .cout (temp_9)) ;
    FullAdder_unfolded10 loop1_10_fx (.a (a[10]), .b (carryOut), .cin (temp_9), 
                         .s (sum[10]), .cout (temp_10)) ;
    FullAdder_unfolded10 loop1_11_fx (.a (a[11]), .b (carryOut), .cin (temp_10)
                         , .s (sum[11]), .cout (temp_11)) ;
    FullAdder_unfolded11 loop1_12_fx (.a (a[12]), .b (carryOut), .cin (temp_11)
                         , .s (sum[12]), .cout (\$dummy [0])) ;
    fake_gnd ix44 (.Y (carryOut)) ;
endmodule


module FullAdder_unfolded11 ( a, b, cin, s, cout ) ;

    input a ;
    input b ;
    input cin ;
    output s ;
    output cout ;

    wire nx55;



    fake_gnd ix45 (.Y (cout)) ;
    xnor2 ix1 (.Y (s), .A0 (cin), .A1 (nx55)) ;
    inv01 ix56 (.Y (nx55), .A (a)) ;
endmodule


module FullAdder_unfolded10 ( a, b, cin, s, cout ) ;

    input a ;
    input b ;
    input cin ;
    output s ;
    output cout ;

    wire nx95, nx97;



    nor02_2x ix1 (.Y (cout), .A0 (nx95), .A1 (nx97)) ;
    inv01 ix96 (.Y (nx95), .A (cin)) ;
    inv01 ix98 (.Y (nx97), .A (a)) ;
    xnor2 ix7 (.Y (s), .A0 (cin), .A1 (nx97)) ;
endmodule


module Reg_13_unfolded2 ( D, en, clk, rst, Q ) ;

    input [12:0]D ;
    input en ;
    input clk ;
    input rst ;
    output [12:0]Q ;

    wire [5:0] \$dummy ;




    assign Q[11] = Q[12] ;
    assign Q[10] = Q[12] ;
    assign Q[9] = Q[12] ;
    assign Q[8] = Q[12] ;
    assign Q[7] = Q[12] ;
    assign Q[6] = Q[12] ;
    fake_gnd ix2 (.Y (Q[12])) ;
    dff reg_Q_0 (.Q (Q[0]), .QB (\$dummy [0]), .D (D[0]), .CLK (clk)) ;
    dff reg_Q_1 (.Q (Q[1]), .QB (\$dummy [1]), .D (D[1]), .CLK (clk)) ;
    dff reg_Q_2 (.Q (Q[2]), .QB (\$dummy [2]), .D (D[2]), .CLK (clk)) ;
    dff reg_Q_3 (.Q (Q[3]), .QB (\$dummy [3]), .D (D[3]), .CLK (clk)) ;
    dff reg_Q_4 (.Q (Q[4]), .QB (\$dummy [4]), .D (D[4]), .CLK (clk)) ;
    dff reg_Q_5 (.Q (Q[5]), .QB (\$dummy [5]), .D (D[5]), .CLK (clk)) ;
endmodule


module ReadLogic_12_40_true ( clk, resetState, switchRam, ramBasedAddress, 
                              internalBus, ramDataInBus, ramRead, ramAddress, 
                              MFC, inputSize, filterSize, loadNextWordList, 
                              loadWord, finishSlice, readOne, readFinal, 
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
    input loadNextWordList ;
    input loadWord ;
    input finishSlice ;
    output readOne ;
    output readFinal ;
    output [2:0]aluNumber ;

    wire PWR;
    wire [36:0] \$dummy ;




    assign internalBus[39] = aluNumber[2] ;
    assign internalBus[38] = aluNumber[2] ;
    assign internalBus[37] = aluNumber[2] ;
    assign internalBus[36] = aluNumber[2] ;
    assign internalBus[35] = aluNumber[2] ;
    assign internalBus[34] = aluNumber[2] ;
    assign internalBus[33] = aluNumber[2] ;
    assign internalBus[32] = aluNumber[2] ;
    assign internalBus[31] = aluNumber[2] ;
    assign internalBus[30] = aluNumber[2] ;
    assign internalBus[29] = aluNumber[2] ;
    assign internalBus[28] = aluNumber[2] ;
    assign internalBus[27] = aluNumber[2] ;
    assign internalBus[26] = aluNumber[2] ;
    assign internalBus[25] = aluNumber[2] ;
    assign internalBus[24] = aluNumber[2] ;
    assign internalBus[18] = aluNumber[2] ;
    assign internalBus[17] = aluNumber[2] ;
    assign internalBus[16] = aluNumber[2] ;
    assign internalBus[10] = aluNumber[2] ;
    assign internalBus[9] = aluNumber[2] ;
    assign internalBus[8] = aluNumber[2] ;
    assign ramRead = aluNumber[2] ;
    assign ramAddress[11] = aluNumber[2] ;
    assign ramAddress[10] = aluNumber[2] ;
    assign ramAddress[9] = aluNumber[2] ;
    assign ramAddress[8] = aluNumber[2] ;
    assign ramAddress[7] = aluNumber[2] ;
    assign ramAddress[6] = aluNumber[2] ;
    assign ramAddress[5] = aluNumber[2] ;
    assign ramAddress[4] = aluNumber[2] ;
    assign ramAddress[3] = aluNumber[2] ;
    assign ramAddress[2] = aluNumber[2] ;
    assign ramAddress[1] = aluNumber[2] ;
    assign ramAddress[0] = aluNumber[2] ;
    assign readOne = aluNumber[2] ;
    assign readFinal = aluNumber[2] ;
    assign aluNumber[1] = aluNumber[2] ;
    assign aluNumber[0] = aluNumber[2] ;
    DMA_12_40 dma (.initialCount ({aluNumber[2],aluNumber[2],aluNumber[2]}), .readBaseAddress (
              {aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],
              aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],
              aluNumber[2],aluNumber[2]}), .readStep ({aluNumber[2],aluNumber[2]
              ,aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],
              aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],PWR}), .initAddress (
              aluNumber[2]), .initCounter (aluNumber[2]), .load (aluNumber[2]), 
              .internalBus ({\$dummy [0],\$dummy [1],\$dummy [2],\$dummy [3],
              \$dummy [4],\$dummy [5],\$dummy [6],\$dummy [7],\$dummy [8],
              \$dummy [9],\$dummy [10],\$dummy [11],\$dummy [12],\$dummy [13],
              \$dummy [14],\$dummy [15],internalBus[23],internalBus[22],
              internalBus[21],internalBus[20],internalBus[19],\$dummy [16],
              \$dummy [17],\$dummy [18],internalBus[15],internalBus[14],
              internalBus[13],internalBus[12],internalBus[11],\$dummy [19],
              \$dummy [20],\$dummy [21],internalBus[7],internalBus[6],
              internalBus[5],internalBus[4],internalBus[3],internalBus[2],
              internalBus[1],internalBus[0]}), .finishedOneReadOut (\$dummy [22]
              ), .finishedReading (\$dummy [23]), .clk (aluNumber[2]), .ramDataInBus (
              {aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],
              aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],
              aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],
              aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],
              aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],
              aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],
              aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],
              aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2]})
              , .ramRead (\$dummy [24]), .ramReadAddress ({\$dummy [25],
              \$dummy [26],\$dummy [27],\$dummy [28],\$dummy [29],\$dummy [30],
              \$dummy [31],\$dummy [32],\$dummy [33],\$dummy [34],\$dummy [35],
              \$dummy [36]}), .MFC (aluNumber[2])) ;
    fake_gnd ix4 (.Y (aluNumber[2])) ;
    fake_vcc ix2 (.Y (PWR)) ;
endmodule


module DMA_12_40 ( initialCount, readBaseAddress, readStep, initAddress, 
                   initCounter, load, internalBus, finishedOneReadOut, 
                   finishedReading, clk, ramDataInBus, ramRead, ramReadAddress, 
                   MFC ) ;

    input [2:0]initialCount ;
    input [11:0]readBaseAddress ;
    input [11:0]readStep ;
    input initAddress ;
    input initCounter ;
    input load ;
    output [39:0]internalBus ;
    output finishedOneReadOut ;
    output finishedReading ;
    input clk ;
    input [39:0]ramDataInBus ;
    output ramRead ;
    output [11:0]ramReadAddress ;
    input MFC ;

    wire [21:0] \$dummy ;




    assign internalBus[39] = ramRead ;
    assign internalBus[38] = ramRead ;
    assign internalBus[37] = ramRead ;
    assign internalBus[36] = ramRead ;
    assign internalBus[35] = ramRead ;
    assign internalBus[34] = ramRead ;
    assign internalBus[33] = ramRead ;
    assign internalBus[32] = ramRead ;
    assign internalBus[31] = ramRead ;
    assign internalBus[30] = ramRead ;
    assign internalBus[29] = ramRead ;
    assign internalBus[28] = ramRead ;
    assign internalBus[27] = ramRead ;
    assign internalBus[26] = ramRead ;
    assign internalBus[25] = ramRead ;
    assign internalBus[24] = ramRead ;
    assign internalBus[18] = ramRead ;
    assign internalBus[17] = ramRead ;
    assign internalBus[16] = ramRead ;
    assign internalBus[10] = ramRead ;
    assign internalBus[9] = ramRead ;
    assign internalBus[8] = ramRead ;
    assign finishedOneReadOut = ramRead ;
    assign finishedReading = ramRead ;
    assign ramReadAddress[11] = ramRead ;
    assign ramReadAddress[10] = ramRead ;
    assign ramReadAddress[9] = ramRead ;
    assign ramReadAddress[8] = ramRead ;
    assign ramReadAddress[7] = ramRead ;
    assign ramReadAddress[6] = ramRead ;
    assign ramReadAddress[5] = ramRead ;
    assign ramReadAddress[4] = ramRead ;
    assign ramReadAddress[3] = ramRead ;
    assign ramReadAddress[2] = ramRead ;
    assign ramReadAddress[1] = ramRead ;
    assign ramReadAddress[0] = ramRead ;
    Tristate_40 tristateLabel (.\input  ({ramRead,ramRead,ramRead,ramRead,
                ramRead,ramRead,ramRead,ramRead,ramRead,ramRead,ramRead,ramRead,
                ramRead,ramRead,ramRead,ramRead,ramRead,ramRead,ramRead,ramRead,
                ramRead,ramRead,ramRead,ramRead,ramRead,ramRead,ramRead,ramRead,
                ramRead,ramRead,ramRead,ramRead,ramRead,ramRead,ramRead,ramRead,
                ramRead,ramRead,ramRead,ramRead}), .en (ramRead), .\output  ({
                \$dummy [0],\$dummy [1],\$dummy [2],\$dummy [3],\$dummy [4],
                \$dummy [5],\$dummy [6],\$dummy [7],\$dummy [8],\$dummy [9],
                \$dummy [10],\$dummy [11],\$dummy [12],\$dummy [13],\$dummy [14]
                ,\$dummy [15],internalBus[23],internalBus[22],internalBus[21],
                internalBus[20],internalBus[19],\$dummy [16],\$dummy [17],
                \$dummy [18],internalBus[15],internalBus[14],internalBus[13],
                internalBus[12],internalBus[11],\$dummy [19],\$dummy [20],
                \$dummy [21],internalBus[7],internalBus[6],internalBus[5],
                internalBus[4],internalBus[3],internalBus[2],internalBus[1],
                internalBus[0]})) ;
    fake_gnd ix43 (.Y (ramRead)) ;
endmodule


module Tristate_40 ( \input , en, \output  ) ;

    input [39:0]\input  ;
    input en ;
    output [39:0]\output  ;

    wire nx49;



    assign \output [38] = \output [39] ;
    assign \output [37] = \output [39] ;
    assign \output [36] = \output [39] ;
    assign \output [35] = \output [39] ;
    assign \output [34] = \output [39] ;
    assign \output [33] = \output [39] ;
    assign \output [32] = \output [39] ;
    assign \output [31] = \output [39] ;
    assign \output [30] = \output [39] ;
    assign \output [29] = \output [39] ;
    assign \output [28] = \output [39] ;
    assign \output [27] = \output [39] ;
    assign \output [26] = \output [39] ;
    assign \output [25] = \output [39] ;
    assign \output [24] = \output [39] ;
    assign \output [18] = \output [39] ;
    assign \output [17] = \output [39] ;
    assign \output [16] = \output [39] ;
    assign \output [10] = \output [39] ;
    assign \output [9] = \output [39] ;
    assign \output [8] = \output [39] ;
    fake_vcc ix50 (.Y (nx49)) ;
    fake_gnd ix46 (.Y (\output [39])) ;
    tri01 tri_output_0 (.Y (\output [0]), .A (nx49), .E (\output [39])) ;
    tri01 tri_output_1 (.Y (\output [1]), .A (nx49), .E (\output [39])) ;
    tri01 tri_output_2 (.Y (\output [2]), .A (nx49), .E (\output [39])) ;
    tri01 tri_output_3 (.Y (\output [3]), .A (nx49), .E (\output [39])) ;
    tri01 tri_output_4 (.Y (\output [4]), .A (nx49), .E (\output [39])) ;
    tri01 tri_output_5 (.Y (\output [5]), .A (nx49), .E (\output [39])) ;
    tri01 tri_output_6 (.Y (\output [6]), .A (nx49), .E (\output [39])) ;
    tri01 tri_output_7 (.Y (\output [7]), .A (nx49), .E (\output [39])) ;
    tri01 tri_output_11 (.Y (\output [11]), .A (nx49), .E (\output [39])) ;
    tri01 tri_output_12 (.Y (\output [12]), .A (nx49), .E (\output [39])) ;
    tri01 tri_output_13 (.Y (\output [13]), .A (nx49), .E (\output [39])) ;
    tri01 tri_output_14 (.Y (\output [14]), .A (nx49), .E (\output [39])) ;
    tri01 tri_output_15 (.Y (\output [15]), .A (nx49), .E (\output [39])) ;
    tri01 tri_output_19 (.Y (\output [19]), .A (nx49), .E (\output [39])) ;
    tri01 tri_output_20 (.Y (\output [20]), .A (nx49), .E (\output [39])) ;
    tri01 tri_output_21 (.Y (\output [21]), .A (nx49), .E (\output [39])) ;
    tri01 tri_output_22 (.Y (\output [22]), .A (nx49), .E (\output [39])) ;
    tri01 tri_output_23 (.Y (\output [23]), .A (nx49), .E (\output [39])) ;
endmodule


module ReadLogic_13_80_false ( clk, resetState, switchRam, ramBasedAddress, 
                               internalBus, ramDataInBus, ramRead, ramAddress, 
                               MFC, inputSize, filterSize, loadNextWordList, 
                               loadWord, finishSlice, readOne, readFinal, 
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
    input loadNextWordList ;
    input loadWord ;
    input finishSlice ;
    output readOne ;
    output readFinal ;
    output [2:0]aluNumber ;

    wire addressRegOut_12, addressRegOut_11, addressRegOut_10, addressRegOut_9, 
         addressRegOut_8, addressRegOut_7, addressRegOut_6, addressRegOut_5, 
         addressRegOut_4, addressRegOut_3, addressRegOut_2, addressRegOut_1, 
         addressRegOut_0, addressRegInFinal_12, addressRegInFinal_11, 
         addressRegInFinal_10, addressRegInFinal_9, addressRegInFinal_8, 
         addressRegInFinal_7, addressRegInFinal_6, addressRegInFinal_5, 
         addressRegInFinal_4, addressRegInFinal_3, addressRegInFinal_2, 
         addressRegInFinal_1, addressRegInFinal_0, dmaInitAddress, 
         resetAddressReg, baseAddressCounterClk, ramAddressKeeperOut_12, 
         ramAddressKeeperOut_11, ramAddressKeeperOut_10, ramAddressKeeperOut_9, 
         ramAddressKeeperOut_8, ramAddressKeeperOut_7, ramAddressKeeperOut_6, 
         ramAddressKeeperOut_5, ramAddressKeeperOut_4, ramAddressKeeperOut_3, 
         ramAddressKeeperOut_2, ramAddressKeeperOut_1, ramAddressKeeperOut_0, 
         ramAddressKeeperOutPlusFS_12, ramAddressKeeperOutPlusFS_11, 
         ramAddressKeeperOutPlusFS_10, ramAddressKeeperOutPlusFS_9, 
         ramAddressKeeperOutPlusFS_8, ramAddressKeeperOutPlusFS_7, 
         ramAddressKeeperOutPlusFS_6, ramAddressKeeperOutPlusFS_5, 
         ramAddressKeeperOutPlusFS_4, ramAddressKeeperOutPlusFS_3, 
         ramAddressKeeperOutPlusFS_2, ramAddressKeeperOutPlusFS_1, 
         ramAddressKeeperOutPlusFS_0, addressRegIn_5, dmaCountIn_2, dmaCountIn_1, 
         dmaInitCounter, PWR, NOT_clk, nx53, nx24, nx84, nx57, nx59, nx61, nx71, 
         nx83, nx89, nx93, nx97, nx100, nx102, nx104, nx106, nx109, nx112, nx115, 
         nx118, nx121, nx124, nx127, nx130, nx132, nx135, nx142, nx144, nx146, 
         nx148, nx154, nx156, nx158;
    wire [83:0] \$dummy ;




    assign internalBus[79] = aluNumber[2] ;
    assign internalBus[78] = aluNumber[2] ;
    assign internalBus[77] = aluNumber[2] ;
    assign internalBus[76] = aluNumber[2] ;
    assign internalBus[75] = aluNumber[2] ;
    assign internalBus[74] = aluNumber[2] ;
    assign internalBus[73] = aluNumber[2] ;
    assign internalBus[72] = aluNumber[2] ;
    assign internalBus[71] = aluNumber[2] ;
    assign internalBus[70] = aluNumber[2] ;
    assign internalBus[69] = aluNumber[2] ;
    assign internalBus[68] = aluNumber[2] ;
    assign internalBus[67] = aluNumber[2] ;
    assign internalBus[66] = aluNumber[2] ;
    assign internalBus[65] = aluNumber[2] ;
    assign internalBus[64] = aluNumber[2] ;
    assign internalBus[63] = aluNumber[2] ;
    assign internalBus[62] = aluNumber[2] ;
    assign internalBus[61] = aluNumber[2] ;
    assign internalBus[60] = aluNumber[2] ;
    assign internalBus[59] = aluNumber[2] ;
    assign internalBus[58] = aluNumber[2] ;
    assign internalBus[57] = aluNumber[2] ;
    assign internalBus[56] = aluNumber[2] ;
    assign internalBus[55] = aluNumber[2] ;
    assign internalBus[54] = aluNumber[2] ;
    assign internalBus[53] = aluNumber[2] ;
    assign internalBus[52] = aluNumber[2] ;
    assign internalBus[51] = aluNumber[2] ;
    assign internalBus[50] = aluNumber[2] ;
    assign internalBus[49] = aluNumber[2] ;
    assign internalBus[48] = aluNumber[2] ;
    assign internalBus[47] = aluNumber[2] ;
    assign internalBus[46] = aluNumber[2] ;
    assign internalBus[45] = aluNumber[2] ;
    assign internalBus[44] = aluNumber[2] ;
    assign internalBus[43] = aluNumber[2] ;
    assign internalBus[42] = aluNumber[2] ;
    assign internalBus[41] = aluNumber[2] ;
    assign internalBus[40] = aluNumber[2] ;
    assign internalBus[39] = aluNumber[2] ;
    assign internalBus[38] = aluNumber[2] ;
    assign internalBus[37] = aluNumber[2] ;
    assign internalBus[36] = aluNumber[2] ;
    assign internalBus[35] = aluNumber[2] ;
    assign internalBus[34] = aluNumber[2] ;
    assign internalBus[33] = aluNumber[2] ;
    assign internalBus[32] = aluNumber[2] ;
    assign internalBus[31] = aluNumber[2] ;
    assign internalBus[30] = aluNumber[2] ;
    assign internalBus[29] = aluNumber[2] ;
    assign internalBus[28] = aluNumber[2] ;
    assign internalBus[27] = aluNumber[2] ;
    assign internalBus[26] = aluNumber[2] ;
    assign internalBus[25] = aluNumber[2] ;
    assign internalBus[24] = aluNumber[2] ;
    assign internalBus[23] = aluNumber[2] ;
    assign internalBus[22] = aluNumber[2] ;
    assign internalBus[21] = aluNumber[2] ;
    assign internalBus[20] = aluNumber[2] ;
    assign internalBus[19] = aluNumber[2] ;
    assign internalBus[18] = aluNumber[2] ;
    assign internalBus[17] = aluNumber[2] ;
    assign internalBus[16] = aluNumber[2] ;
    assign internalBus[15] = aluNumber[2] ;
    assign internalBus[14] = aluNumber[2] ;
    assign internalBus[13] = aluNumber[2] ;
    assign internalBus[12] = aluNumber[2] ;
    assign internalBus[11] = aluNumber[2] ;
    assign internalBus[10] = aluNumber[2] ;
    assign internalBus[9] = aluNumber[2] ;
    assign internalBus[8] = aluNumber[2] ;
    assign internalBus[7] = aluNumber[2] ;
    assign internalBus[6] = aluNumber[2] ;
    assign internalBus[5] = aluNumber[2] ;
    assign internalBus[4] = aluNumber[2] ;
    assign internalBus[3] = aluNumber[2] ;
    assign internalBus[2] = aluNumber[2] ;
    assign internalBus[1] = aluNumber[2] ;
    assign internalBus[0] = aluNumber[2] ;
    assign readOne = aluNumber[2] ;
    assign aluNumber[1] = aluNumber[2] ;
    assign aluNumber[0] = aluNumber[2] ;
    DMA_13_80 dma (.initialCount ({dmaCountIn_2,dmaCountIn_1,dmaInitCounter}), .readBaseAddress (
              {addressRegOut_12,addressRegOut_11,addressRegOut_10,
              addressRegOut_9,addressRegOut_8,addressRegOut_7,addressRegOut_6,
              addressRegOut_5,addressRegOut_4,addressRegOut_3,addressRegOut_2,
              addressRegOut_1,addressRegOut_0}), .readStep ({aluNumber[2],
              aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],
              aluNumber[2],aluNumber[2],inputSize[4],inputSize[3],inputSize[2],
              inputSize[1],inputSize[0]}), .initAddress (dmaInitAddress), .initCounter (
              dmaInitCounter), .load (nx142), .internalBus ({\$dummy [0],
              \$dummy [1],\$dummy [2],\$dummy [3],\$dummy [4],\$dummy [5],
              \$dummy [6],\$dummy [7],\$dummy [8],\$dummy [9],\$dummy [10],
              \$dummy [11],\$dummy [12],\$dummy [13],\$dummy [14],\$dummy [15],
              \$dummy [16],\$dummy [17],\$dummy [18],\$dummy [19],\$dummy [20],
              \$dummy [21],\$dummy [22],\$dummy [23],\$dummy [24],\$dummy [25],
              \$dummy [26],\$dummy [27],\$dummy [28],\$dummy [29],\$dummy [30],
              \$dummy [31],\$dummy [32],\$dummy [33],\$dummy [34],\$dummy [35],
              \$dummy [36],\$dummy [37],\$dummy [38],\$dummy [39],\$dummy [40],
              \$dummy [41],\$dummy [42],\$dummy [43],\$dummy [44],\$dummy [45],
              \$dummy [46],\$dummy [47],\$dummy [48],\$dummy [49],\$dummy [50],
              \$dummy [51],\$dummy [52],\$dummy [53],\$dummy [54],\$dummy [55],
              \$dummy [56],\$dummy [57],\$dummy [58],\$dummy [59],\$dummy [60],
              \$dummy [61],\$dummy [62],\$dummy [63],\$dummy [64],\$dummy [65],
              \$dummy [66],\$dummy [67],\$dummy [68],\$dummy [69],\$dummy [70],
              \$dummy [71],\$dummy [72],\$dummy [73],\$dummy [74],\$dummy [75],
              \$dummy [76],\$dummy [77],\$dummy [78],\$dummy [79]}), .finishedOneReadOut (
              \$dummy [80]), .finishedReading (readFinal), .clk (clk), .ramDataInBus (
              {aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],
              aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],
              aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],
              aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],
              aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],
              aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],
              aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],
              aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],
              aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],
              aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],
              aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],
              aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],
              aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],
              aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],
              aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],
              aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2]})
              , .ramRead (\$dummy [81]), .ramReadAddress ({ramAddress[12],
              ramAddress[11],ramAddress[10],ramAddress[9],ramAddress[8],
              ramAddress[7],ramAddress[6],ramAddress[5],ramAddress[4],
              ramAddress[3],ramAddress[2],ramAddress[1],ramAddress[0]}), .MFC (
              MFC)) ;
    NBitAdder_13_unfolded1 window_g_ramAddressIncrement (.a ({
                           ramAddressKeeperOut_12,ramAddressKeeperOut_11,
                           ramAddressKeeperOut_10,ramAddressKeeperOut_9,
                           ramAddressKeeperOut_8,ramAddressKeeperOut_7,
                           ramAddressKeeperOut_6,ramAddressKeeperOut_5,
                           ramAddressKeeperOut_4,ramAddressKeeperOut_3,
                           ramAddressKeeperOut_2,ramAddressKeeperOut_1,
                           ramAddressKeeperOut_0}), .b ({aluNumber[2],
                           aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],
                           aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],
                           aluNumber[2],filterSize[2],filterSize[1],PWR}), .carryIn (
                           aluNumber[2]), .sum ({ramAddressKeeperOutPlusFS_12,
                           ramAddressKeeperOutPlusFS_11,
                           ramAddressKeeperOutPlusFS_10,
                           ramAddressKeeperOutPlusFS_9,
                           ramAddressKeeperOutPlusFS_8,
                           ramAddressKeeperOutPlusFS_7,
                           ramAddressKeeperOutPlusFS_6,
                           ramAddressKeeperOutPlusFS_5,
                           ramAddressKeeperOutPlusFS_4,
                           ramAddressKeeperOutPlusFS_3,
                           ramAddressKeeperOutPlusFS_2,
                           ramAddressKeeperOutPlusFS_1,
                           ramAddressKeeperOutPlusFS_0}), .carryOut (
                           \$dummy [82])) ;
    Mux2_13_unfolded1 window_g_baseAddressLoadMux (.A ({aluNumber[2],
                      addressRegIn_5,addressRegIn_5,addressRegIn_5,
                      addressRegIn_5,aluNumber[2],aluNumber[2],addressRegIn_5,
                      aluNumber[2],aluNumber[2],aluNumber[2],aluNumber[2],
                      aluNumber[2]}), .B ({ramAddressKeeperOutPlusFS_12,
                      ramAddressKeeperOutPlusFS_11,ramAddressKeeperOutPlusFS_10,
                      ramAddressKeeperOutPlusFS_9,ramAddressKeeperOutPlusFS_8,
                      ramAddressKeeperOutPlusFS_7,ramAddressKeeperOutPlusFS_6,
                      ramAddressKeeperOutPlusFS_5,ramAddressKeeperOutPlusFS_4,
                      ramAddressKeeperOutPlusFS_3,ramAddressKeeperOutPlusFS_2,
                      ramAddressKeeperOutPlusFS_1,ramAddressKeeperOutPlusFS_0})
                      , .S (nx156), .C ({addressRegInFinal_12,
                      addressRegInFinal_11,addressRegInFinal_10,
                      addressRegInFinal_9,addressRegInFinal_8,
                      addressRegInFinal_7,addressRegInFinal_6,
                      addressRegInFinal_5,addressRegInFinal_4,
                      addressRegInFinal_3,addressRegInFinal_2,
                      addressRegInFinal_1,addressRegInFinal_0})) ;
    Counter2_13 window_g_baseAddressCounter (.load ({addressRegInFinal_12,
                addressRegInFinal_11,addressRegInFinal_10,addressRegInFinal_9,
                addressRegInFinal_8,addressRegInFinal_7,addressRegInFinal_6,
                addressRegInFinal_5,addressRegInFinal_4,addressRegInFinal_3,
                addressRegInFinal_2,addressRegInFinal_1,addressRegInFinal_0}), .reset (
                aluNumber[2]), .clk (baseAddressCounterClk), .isLoad (
                resetAddressReg), .count ({addressRegOut_12,addressRegOut_11,
                addressRegOut_10,addressRegOut_9,addressRegOut_8,addressRegOut_7
                ,addressRegOut_6,addressRegOut_5,addressRegOut_4,addressRegOut_3
                ,addressRegOut_2,addressRegOut_1,addressRegOut_0})) ;
    Reg_13_unfolded1 window_g_ramAddressKeeper (.D ({ramAddress[12],
                     ramAddress[11],ramAddress[10],ramAddress[9],ramAddress[8],
                     ramAddress[7],ramAddress[6],ramAddress[5],ramAddress[4],
                     ramAddress[3],ramAddress[2],ramAddress[1],ramAddress[0]}), 
                     .en (nx142), .clk (clk), .rst (aluNumber[2]), .Q ({
                     ramAddressKeeperOut_12,ramAddressKeeperOut_11,
                     ramAddressKeeperOut_10,ramAddressKeeperOut_9,
                     ramAddressKeeperOut_8,ramAddressKeeperOut_7,
                     ramAddressKeeperOut_6,ramAddressKeeperOut_5,
                     ramAddressKeeperOut_4,ramAddressKeeperOut_3,
                     ramAddressKeeperOut_2,ramAddressKeeperOut_1,
                     ramAddressKeeperOut_0})) ;
    fake_gnd ix35 (.Y (aluNumber[2])) ;
    fake_vcc ix33 (.Y (PWR)) ;
    nor03_2x ix61 (.Y (dmaInitCounter), .A0 (nx142), .A1 (nx146), .A2 (nx112)) ;
    nand02 ix72 (.Y (nx71), .A0 (nx83), .A1 (nx106)) ;
    nand04 ix84 (.Y (nx83), .A0 (nx142), .A1 (nx146), .A2 (nx104), .A3 (nx102)
           ) ;
    inv01 ix62 (.Y (nx61), .A (nx89)) ;
    nor02_2x ix90 (.Y (nx89), .A0 (nx57), .A1 (nx59)) ;
    nor04 ix58 (.Y (nx57), .A0 (nx93), .A1 (nx97), .A2 (readFinal), .A3 (
          switchRam)) ;
    dff reg_currentState_0 (.Q (\$dummy [83]), .QB (nx93), .D (nx61), .CLK (
        NOT_clk)) ;
    inv01 ix96 (.Y (NOT_clk), .A (clk)) ;
    dff reg_currentState_1 (.Q (ramRead), .QB (nx97), .D (nx71), .CLK (NOT_clk)
        ) ;
    oai221 ix60 (.Y (nx59), .A0 (nx154), .A1 (nx100), .B0 (nx146), .B1 (nx97), .C0 (
           nx102)) ;
    oai21 ix101 (.Y (nx100), .A0 (nx154), .A1 (loadWord), .B0 (nx93)) ;
    inv01 ix103 (.Y (nx102), .A (switchRam)) ;
    inv01 ix105 (.Y (nx104), .A (readFinal)) ;
    oai21 ix107 (.Y (nx106), .A0 (nx24), .A1 (nx53), .B0 (nx102)) ;
    nor02_2x ix25 (.Y (nx24), .A0 (nx146), .A1 (nx109)) ;
    nor02_2x ix110 (.Y (nx109), .A0 (nx154), .A1 (loadWord)) ;
    nor02_2x ix19 (.Y (nx53), .A0 (nx146), .A1 (nx97)) ;
    nor02_2x ix113 (.Y (nx112), .A0 (nx154), .A1 (loadWord)) ;
    nor03_2x ix67 (.Y (dmaCountIn_1), .A0 (nx142), .A1 (nx146), .A2 (nx115)) ;
    nand02 ix116 (.Y (nx115), .A0 (filterSize[1]), .A1 (nx154)) ;
    nor03_2x ix73 (.Y (dmaCountIn_2), .A0 (nx142), .A1 (nx146), .A2 (nx118)) ;
    nand02 ix119 (.Y (nx118), .A0 (filterSize[2]), .A1 (nx154)) ;
    nor02_2x ix79 (.Y (addressRegIn_5), .A0 (nx144), .A1 (nx121)) ;
    nand02 ix122 (.Y (nx121), .A0 (ramBasedAddress[11]), .A1 (nx148)) ;
    oai21 ix93 (.Y (baseAddressCounterClk), .A0 (clk), .A1 (nx124), .B0 (nx127)
          ) ;
    nor02_2x ix125 (.Y (nx124), .A0 (nx84), .A1 (nx158)) ;
    nor02_2x ix85 (.Y (nx84), .A0 (nx93), .A1 (nx144)) ;
    nand03 ix128 (.Y (nx127), .A0 (clk), .A1 (nx93), .A2 (nx144)) ;
    nand02 ix87 (.Y (resetAddressReg), .A0 (nx130), .A1 (nx132)) ;
    nand02 ix131 (.Y (nx130), .A0 (nx148), .A1 (nx97)) ;
    inv01 ix133 (.Y (nx132), .A (finishSlice)) ;
    nor02_2x ix55 (.Y (dmaInitAddress), .A0 (nx144), .A1 (nx135)) ;
    nor02_2x ix136 (.Y (nx135), .A0 (nx148), .A1 (nx154)) ;
    inv02 ix141 (.Y (nx142), .A (nx97)) ;
    inv02 ix143 (.Y (nx144), .A (nx97)) ;
    inv02 ix145 (.Y (nx146), .A (nx93)) ;
    inv02 ix147 (.Y (nx148), .A (nx93)) ;
    buf02 ix153 (.Y (nx154), .A (loadNextWordList)) ;
    inv02 ix155 (.Y (nx156), .A (nx132)) ;
    inv02 ix157 (.Y (nx158), .A (nx132)) ;
endmodule


module Reg_13_unfolded1 ( D, en, clk, rst, Q ) ;

    input [12:0]D ;
    input en ;
    input clk ;
    input rst ;
    output [12:0]Q ;

    wire nx78, nx88, nx98, nx108, nx118, nx128, nx138, nx148, nx158, nx168, 
         nx178, nx188, nx198, nx210, nx214, nx219, nx221, nx226, nx228, nx233, 
         nx235, nx240, nx242, nx247, nx249, nx254, nx256, nx261, nx263, nx268, 
         nx270, nx275, nx277, nx282, nx284, nx289, nx291, nx296, nx298, nx306, 
         nx308, nx314, nx316, nx318;
    wire [12:0] \$dummy ;




    dff reg_Q_0 (.Q (Q[0]), .QB (\$dummy [0]), .D (nx78), .CLK (clk)) ;
    nand02 ix79 (.Y (nx78), .A0 (nx210), .A1 (nx214)) ;
    nand02 ix211 (.Y (nx210), .A0 (Q[0]), .A1 (nx318)) ;
    nand02 ix215 (.Y (nx214), .A0 (D[0]), .A1 (nx314)) ;
    dff reg_Q_1 (.Q (Q[1]), .QB (\$dummy [1]), .D (nx88), .CLK (clk)) ;
    nand02 ix89 (.Y (nx88), .A0 (nx219), .A1 (nx221)) ;
    nand02 ix220 (.Y (nx219), .A0 (Q[1]), .A1 (nx318)) ;
    nand02 ix222 (.Y (nx221), .A0 (D[1]), .A1 (nx314)) ;
    dff reg_Q_2 (.Q (Q[2]), .QB (\$dummy [2]), .D (nx98), .CLK (clk)) ;
    nand02 ix99 (.Y (nx98), .A0 (nx226), .A1 (nx228)) ;
    nand02 ix227 (.Y (nx226), .A0 (Q[2]), .A1 (nx318)) ;
    nand02 ix229 (.Y (nx228), .A0 (D[2]), .A1 (nx314)) ;
    dff reg_Q_3 (.Q (Q[3]), .QB (\$dummy [3]), .D (nx108), .CLK (clk)) ;
    nand02 ix109 (.Y (nx108), .A0 (nx233), .A1 (nx235)) ;
    nand02 ix234 (.Y (nx233), .A0 (Q[3]), .A1 (nx318)) ;
    nand02 ix236 (.Y (nx235), .A0 (D[3]), .A1 (nx314)) ;
    dff reg_Q_4 (.Q (Q[4]), .QB (\$dummy [4]), .D (nx118), .CLK (clk)) ;
    nand02 ix119 (.Y (nx118), .A0 (nx240), .A1 (nx242)) ;
    nand02 ix241 (.Y (nx240), .A0 (Q[4]), .A1 (nx318)) ;
    nand02 ix243 (.Y (nx242), .A0 (D[4]), .A1 (nx314)) ;
    dff reg_Q_5 (.Q (Q[5]), .QB (\$dummy [5]), .D (nx128), .CLK (clk)) ;
    nand02 ix129 (.Y (nx128), .A0 (nx247), .A1 (nx249)) ;
    nand02 ix248 (.Y (nx247), .A0 (Q[5]), .A1 (nx318)) ;
    nand02 ix250 (.Y (nx249), .A0 (D[5]), .A1 (nx314)) ;
    dff reg_Q_6 (.Q (Q[6]), .QB (\$dummy [6]), .D (nx138), .CLK (clk)) ;
    nand02 ix139 (.Y (nx138), .A0 (nx254), .A1 (nx256)) ;
    nand02 ix255 (.Y (nx254), .A0 (Q[6]), .A1 (nx318)) ;
    nand02 ix257 (.Y (nx256), .A0 (D[6]), .A1 (nx314)) ;
    dff reg_Q_7 (.Q (Q[7]), .QB (\$dummy [7]), .D (nx148), .CLK (clk)) ;
    nand02 ix149 (.Y (nx148), .A0 (nx261), .A1 (nx263)) ;
    nand02 ix262 (.Y (nx261), .A0 (Q[7]), .A1 (nx308)) ;
    nand02 ix264 (.Y (nx263), .A0 (D[7]), .A1 (nx316)) ;
    dff reg_Q_8 (.Q (Q[8]), .QB (\$dummy [8]), .D (nx158), .CLK (clk)) ;
    nand02 ix159 (.Y (nx158), .A0 (nx268), .A1 (nx270)) ;
    nand02 ix269 (.Y (nx268), .A0 (Q[8]), .A1 (nx308)) ;
    nand02 ix271 (.Y (nx270), .A0 (D[8]), .A1 (nx316)) ;
    dff reg_Q_9 (.Q (Q[9]), .QB (\$dummy [9]), .D (nx168), .CLK (clk)) ;
    nand02 ix169 (.Y (nx168), .A0 (nx275), .A1 (nx277)) ;
    nand02 ix276 (.Y (nx275), .A0 (Q[9]), .A1 (nx308)) ;
    nand02 ix278 (.Y (nx277), .A0 (D[9]), .A1 (nx316)) ;
    dff reg_Q_10 (.Q (Q[10]), .QB (\$dummy [10]), .D (nx178), .CLK (clk)) ;
    nand02 ix179 (.Y (nx178), .A0 (nx282), .A1 (nx284)) ;
    nand02 ix283 (.Y (nx282), .A0 (Q[10]), .A1 (nx308)) ;
    nand02 ix285 (.Y (nx284), .A0 (D[10]), .A1 (nx316)) ;
    dff reg_Q_11 (.Q (Q[11]), .QB (\$dummy [11]), .D (nx188), .CLK (clk)) ;
    nand02 ix189 (.Y (nx188), .A0 (nx289), .A1 (nx291)) ;
    nand02 ix290 (.Y (nx289), .A0 (Q[11]), .A1 (nx308)) ;
    nand02 ix292 (.Y (nx291), .A0 (D[11]), .A1 (nx316)) ;
    dff reg_Q_12 (.Q (Q[12]), .QB (\$dummy [12]), .D (nx198), .CLK (clk)) ;
    nand02 ix199 (.Y (nx198), .A0 (nx296), .A1 (nx298)) ;
    nand02 ix297 (.Y (nx296), .A0 (Q[12]), .A1 (nx308)) ;
    nand02 ix299 (.Y (nx298), .A0 (D[12]), .A1 (nx316)) ;
    inv02 ix305 (.Y (nx306), .A (en)) ;
    inv02 ix307 (.Y (nx308), .A (nx316)) ;
    inv02 ix313 (.Y (nx314), .A (nx306)) ;
    inv02 ix315 (.Y (nx316), .A (nx306)) ;
    inv02 ix317 (.Y (nx318), .A (en)) ;
endmodule


module Counter2_13 ( load, reset, clk, isLoad, count ) ;

    input [12:0]load ;
    input reset ;
    input clk ;
    input isLoad ;
    output [12:0]count ;

    wire counterInput_12, counterInput_11, counterInput_10, counterInput_9, 
         counterInput_8, counterInput_7, counterInput_6, counterInput_5, 
         counterInput_4, counterInput_3, counterInput_2, counterInput_1, 
         counterInput_0, countAdded_12, countAdded_11, countAdded_10, 
         countAdded_9, countAdded_8, countAdded_7, countAdded_6, countAdded_5, 
         countAdded_4, countAdded_3, countAdded_2, countAdded_1, countAdded_0, 
         zerosSignal_12, PWR;
    wire [0:0] \$dummy ;




    Reg_13 counterReg (.D ({counterInput_12,counterInput_11,counterInput_10,
           counterInput_9,counterInput_8,counterInput_7,counterInput_6,
           counterInput_5,counterInput_4,counterInput_3,counterInput_2,
           counterInput_1,counterInput_0}), .en (PWR), .clk (clk), .rst (
           zerosSignal_12), .Q ({count[12],count[11],count[10],count[9],count[8]
           ,count[7],count[6],count[5],count[4],count[3],count[2],count[1],
           count[0]})) ;
    NBitAdder_13_unfolded2 nextCount (.a ({count[12],count[11],count[10],
                           count[9],count[8],count[7],count[6],count[5],count[4]
                           ,count[3],count[2],count[1],count[0]}), .b ({
                           zerosSignal_12,zerosSignal_12,zerosSignal_12,
                           zerosSignal_12,zerosSignal_12,zerosSignal_12,
                           zerosSignal_12,zerosSignal_12,zerosSignal_12,
                           zerosSignal_12,zerosSignal_12,zerosSignal_12,
                           zerosSignal_12}), .carryIn (PWR), .sum ({
                           countAdded_12,countAdded_11,countAdded_10,
                           countAdded_9,countAdded_8,countAdded_7,countAdded_6,
                           countAdded_5,countAdded_4,countAdded_3,countAdded_2,
                           countAdded_1,countAdded_0}), .carryOut (\$dummy [0])
                           ) ;
    Mux2_13_unfolded0 muxloadOrCurrent (.A ({countAdded_12,countAdded_11,
                      countAdded_10,countAdded_9,countAdded_8,countAdded_7,
                      countAdded_6,countAdded_5,countAdded_4,countAdded_3,
                      countAdded_2,countAdded_1,countAdded_0}), .B ({load[12],
                      load[11],load[10],load[9],load[8],load[7],load[6],load[5],
                      load[4],load[3],load[2],load[1],load[0]}), .S (isLoad), .C (
                      {counterInput_12,counterInput_11,counterInput_10,
                      counterInput_9,counterInput_8,counterInput_7,
                      counterInput_6,counterInput_5,counterInput_4,
                      counterInput_3,counterInput_2,counterInput_1,
                      counterInput_0})) ;
    fake_vcc ix4 (.Y (PWR)) ;
    fake_gnd ix2 (.Y (zerosSignal_12)) ;
endmodule


module NBitAdder_13_unfolded2 ( a, b, carryIn, sum, carryOut ) ;

    input [12:0]a ;
    input [12:0]b ;
    input carryIn ;
    output [12:0]sum ;
    output carryOut ;

    wire temp_11, temp_10, temp_9, temp_8, temp_7, temp_6, temp_5, temp_4, 
         temp_3, temp_2, temp_1, carryIn_rename;
    wire [1:0] \$dummy ;




    FullAdder_unfolded2 f0 (.a (a[0]), .b (carryOut), .cin (carryIn_rename), .s (
                        sum[0]), .cout (\$dummy [0])) ;
    FullAdder_unfolded3 loop1_1_fx (.a (a[1]), .b (carryOut), .cin (a[0]), .s (
                        sum[1]), .cout (temp_1)) ;
    FullAdder_unfolded3 loop1_2_fx (.a (a[2]), .b (carryOut), .cin (temp_1), .s (
                        sum[2]), .cout (temp_2)) ;
    FullAdder_unfolded3 loop1_3_fx (.a (a[3]), .b (carryOut), .cin (temp_2), .s (
                        sum[3]), .cout (temp_3)) ;
    FullAdder_unfolded3 loop1_4_fx (.a (a[4]), .b (carryOut), .cin (temp_3), .s (
                        sum[4]), .cout (temp_4)) ;
    FullAdder_unfolded3 loop1_5_fx (.a (a[5]), .b (carryOut), .cin (temp_4), .s (
                        sum[5]), .cout (temp_5)) ;
    FullAdder_unfolded3 loop1_6_fx (.a (a[6]), .b (carryOut), .cin (temp_5), .s (
                        sum[6]), .cout (temp_6)) ;
    FullAdder_unfolded3 loop1_7_fx (.a (a[7]), .b (carryOut), .cin (temp_6), .s (
                        sum[7]), .cout (temp_7)) ;
    FullAdder_unfolded3 loop1_8_fx (.a (a[8]), .b (carryOut), .cin (temp_7), .s (
                        sum[8]), .cout (temp_8)) ;
    FullAdder_unfolded3 loop1_9_fx (.a (a[9]), .b (carryOut), .cin (temp_8), .s (
                        sum[9]), .cout (temp_9)) ;
    FullAdder_unfolded3 loop1_10_fx (.a (a[10]), .b (carryOut), .cin (temp_9), .s (
                        sum[10]), .cout (temp_10)) ;
    FullAdder_unfolded3 loop1_11_fx (.a (a[11]), .b (carryOut), .cin (temp_10), 
                        .s (sum[11]), .cout (temp_11)) ;
    FullAdder_unfolded9 loop1_12_fx (.a (a[12]), .b (carryOut), .cin (temp_11), 
                        .s (sum[12]), .cout (\$dummy [1])) ;
    fake_gnd ix6 (.Y (carryOut)) ;
    fake_vcc ix4 (.Y (carryIn_rename)) ;
endmodule


module Mux2_13_unfolded1 ( A, B, S, C ) ;

    input [12:0]A ;
    input [12:0]B ;
    input S ;
    output [12:0]C ;

    wire nx128, nx133, nx136, nx139, nx142, nx145, nx147, nx150, nx153, nx156, 
         nx158, nx161, nx163, nx166, nx168, nx171, nx173, nx176, nx183, nx185;



    nor02_2x ix1 (.Y (C[0]), .A0 (nx128), .A1 (nx183)) ;
    inv01 ix129 (.Y (nx128), .A (B[0])) ;
    nor02_2x ix3 (.Y (C[1]), .A0 (nx133), .A1 (nx183)) ;
    inv01 ix134 (.Y (nx133), .A (B[1])) ;
    nor02_2x ix5 (.Y (C[2]), .A0 (nx136), .A1 (nx183)) ;
    inv01 ix137 (.Y (nx136), .A (B[2])) ;
    nor02_2x ix7 (.Y (C[3]), .A0 (nx139), .A1 (nx183)) ;
    inv01 ix140 (.Y (nx139), .A (B[3])) ;
    nor02_2x ix9 (.Y (C[4]), .A0 (nx142), .A1 (nx183)) ;
    inv01 ix143 (.Y (nx142), .A (B[4])) ;
    nand02 ix23 (.Y (C[5]), .A0 (nx145), .A1 (nx147)) ;
    nand02 ix146 (.Y (nx145), .A0 (B[5]), .A1 (S)) ;
    nand02 ix148 (.Y (nx147), .A0 (A[5]), .A1 (nx183)) ;
    nor02_2x ix11 (.Y (C[6]), .A0 (nx150), .A1 (nx183)) ;
    inv01 ix151 (.Y (nx150), .A (B[6])) ;
    nor02_2x ix13 (.Y (C[7]), .A0 (nx153), .A1 (nx185)) ;
    inv01 ix154 (.Y (nx153), .A (B[7])) ;
    nand02 ix31 (.Y (C[8]), .A0 (nx156), .A1 (nx158)) ;
    nand02 ix157 (.Y (nx156), .A0 (B[8]), .A1 (S)) ;
    nand02 ix159 (.Y (nx158), .A0 (A[8]), .A1 (nx185)) ;
    nand02 ix39 (.Y (C[9]), .A0 (nx161), .A1 (nx163)) ;
    nand02 ix162 (.Y (nx161), .A0 (B[9]), .A1 (S)) ;
    nand02 ix164 (.Y (nx163), .A0 (A[9]), .A1 (nx185)) ;
    nand02 ix47 (.Y (C[10]), .A0 (nx166), .A1 (nx168)) ;
    nand02 ix167 (.Y (nx166), .A0 (B[10]), .A1 (S)) ;
    nand02 ix169 (.Y (nx168), .A0 (A[10]), .A1 (nx185)) ;
    nand02 ix55 (.Y (C[11]), .A0 (nx171), .A1 (nx173)) ;
    nand02 ix172 (.Y (nx171), .A0 (S), .A1 (B[11])) ;
    nand02 ix174 (.Y (nx173), .A0 (nx185), .A1 (A[11])) ;
    nor02_2x ix15 (.Y (C[12]), .A0 (nx176), .A1 (nx185)) ;
    inv01 ix177 (.Y (nx176), .A (B[12])) ;
    inv02 ix182 (.Y (nx183), .A (S)) ;
    inv02 ix184 (.Y (nx185), .A (S)) ;
endmodule


module NBitAdder_13_unfolded1 ( a, b, carryIn, sum, carryOut ) ;

    input [12:0]a ;
    input [12:0]b ;
    input carryIn ;
    output [12:0]sum ;
    output carryOut ;

    wire temp_11, temp_10, temp_9, temp_8, temp_7, temp_6, temp_5, temp_4, 
         temp_3, temp_2, temp_1, b_0_rename;
    wire [1:0] \$dummy ;




    FullAdder_unfolded8 f0 (.a (a[0]), .b (b_0_rename), .cin (carryOut), .s (
                        sum[0]), .cout (\$dummy [0])) ;
    FullAdder_unfolded5 loop1_1_fx (.a (a[1]), .b (b[1]), .cin (a[0]), .s (
                        sum[1]), .cout (temp_1)) ;
    FullAdder_unfolded5 loop1_2_fx (.a (a[2]), .b (b[2]), .cin (temp_1), .s (
                        sum[2]), .cout (temp_2)) ;
    FullAdder_unfolded3 loop1_3_fx (.a (a[3]), .b (carryOut), .cin (temp_2), .s (
                        sum[3]), .cout (temp_3)) ;
    FullAdder_unfolded3 loop1_4_fx (.a (a[4]), .b (carryOut), .cin (temp_3), .s (
                        sum[4]), .cout (temp_4)) ;
    FullAdder_unfolded3 loop1_5_fx (.a (a[5]), .b (carryOut), .cin (temp_4), .s (
                        sum[5]), .cout (temp_5)) ;
    FullAdder_unfolded3 loop1_6_fx (.a (a[6]), .b (carryOut), .cin (temp_5), .s (
                        sum[6]), .cout (temp_6)) ;
    FullAdder_unfolded3 loop1_7_fx (.a (a[7]), .b (carryOut), .cin (temp_6), .s (
                        sum[7]), .cout (temp_7)) ;
    FullAdder_unfolded3 loop1_8_fx (.a (a[8]), .b (carryOut), .cin (temp_7), .s (
                        sum[8]), .cout (temp_8)) ;
    FullAdder_unfolded3 loop1_9_fx (.a (a[9]), .b (carryOut), .cin (temp_8), .s (
                        sum[9]), .cout (temp_9)) ;
    FullAdder_unfolded3 loop1_10_fx (.a (a[10]), .b (carryOut), .cin (temp_9), .s (
                        sum[10]), .cout (temp_10)) ;
    FullAdder_unfolded3 loop1_11_fx (.a (a[11]), .b (carryOut), .cin (temp_10), 
                        .s (sum[11]), .cout (temp_11)) ;
    FullAdder_unfolded9 loop1_12_fx (.a (a[12]), .b (carryOut), .cin (temp_11), 
                        .s (sum[12]), .cout (\$dummy [1])) ;
    fake_gnd ix6 (.Y (carryOut)) ;
    fake_vcc ix4 (.Y (b_0_rename)) ;
endmodule


module FullAdder_unfolded9 ( a, b, cin, s, cout ) ;

    input a ;
    input b ;
    input cin ;
    output s ;
    output cout ;

    wire nx55;



    fake_gnd ix45 (.Y (cout)) ;
    xnor2 ix1 (.Y (s), .A0 (cin), .A1 (nx55)) ;
    inv01 ix56 (.Y (nx55), .A (a)) ;
endmodule


module FullAdder_unfolded8 ( a, b, cin, s, cout ) ;

    input a ;
    input b ;
    input cin ;
    output s ;
    output cout ;




    fake_gnd ix53 (.Y (cout)) ;
    inv01 ix62 (.Y (s), .A (a)) ;
endmodule


module DMA_13_80 ( initialCount, readBaseAddress, readStep, initAddress, 
                   initCounter, load, internalBus, finishedOneReadOut, 
                   finishedReading, clk, ramDataInBus, ramRead, ramReadAddress, 
                   MFC ) ;

    input [2:0]initialCount ;
    input [12:0]readBaseAddress ;
    input [12:0]readStep ;
    input initAddress ;
    input initCounter ;
    input load ;
    output [79:0]internalBus ;
    output finishedOneReadOut ;
    output finishedReading ;
    input clk ;
    input [79:0]ramDataInBus ;
    output ramRead ;
    output [12:0]ramReadAddress ;
    input MFC ;

    wire currentCount_2, currentCount_1, currentCount_0, tobeAdded_4, 
         tobeAdded_3, tobeAdded_2, tobeAdded_1, tobeAdded_0, enableCount, 
         finishedOneReadOut_rename, PWR, NOT_MFC, nx18, nx25, nx30, nx34, nx36, 
         nx38, nx40, nx1, nx5;
    wire [7:0] \$dummy ;




    assign internalBus[79] = ramRead ;
    assign internalBus[78] = ramRead ;
    assign internalBus[77] = ramRead ;
    assign internalBus[76] = ramRead ;
    assign internalBus[75] = ramRead ;
    assign internalBus[74] = ramRead ;
    assign internalBus[73] = ramRead ;
    assign internalBus[72] = ramRead ;
    assign internalBus[71] = ramRead ;
    assign internalBus[70] = ramRead ;
    assign internalBus[69] = ramRead ;
    assign internalBus[68] = ramRead ;
    assign internalBus[67] = ramRead ;
    assign internalBus[66] = ramRead ;
    assign internalBus[65] = ramRead ;
    assign internalBus[64] = ramRead ;
    assign internalBus[63] = ramRead ;
    assign internalBus[62] = ramRead ;
    assign internalBus[61] = ramRead ;
    assign internalBus[60] = ramRead ;
    assign internalBus[59] = ramRead ;
    assign internalBus[58] = ramRead ;
    assign internalBus[57] = ramRead ;
    assign internalBus[56] = ramRead ;
    assign internalBus[55] = ramRead ;
    assign internalBus[54] = ramRead ;
    assign internalBus[53] = ramRead ;
    assign internalBus[52] = ramRead ;
    assign internalBus[51] = ramRead ;
    assign internalBus[50] = ramRead ;
    assign internalBus[49] = ramRead ;
    assign internalBus[48] = ramRead ;
    assign internalBus[47] = ramRead ;
    assign internalBus[46] = ramRead ;
    assign internalBus[45] = ramRead ;
    assign internalBus[44] = ramRead ;
    assign internalBus[43] = ramRead ;
    assign internalBus[42] = ramRead ;
    assign internalBus[41] = ramRead ;
    assign internalBus[40] = ramRead ;
    assign internalBus[39] = ramRead ;
    assign internalBus[38] = ramRead ;
    assign internalBus[37] = ramRead ;
    assign internalBus[36] = ramRead ;
    assign internalBus[35] = ramRead ;
    assign internalBus[34] = ramRead ;
    assign internalBus[33] = ramRead ;
    assign internalBus[32] = ramRead ;
    assign internalBus[31] = ramRead ;
    assign internalBus[30] = ramRead ;
    assign internalBus[29] = ramRead ;
    assign internalBus[28] = ramRead ;
    assign internalBus[27] = ramRead ;
    assign internalBus[26] = ramRead ;
    assign internalBus[25] = ramRead ;
    assign internalBus[24] = ramRead ;
    assign internalBus[23] = ramRead ;
    assign internalBus[22] = ramRead ;
    assign internalBus[21] = ramRead ;
    assign internalBus[20] = ramRead ;
    assign internalBus[19] = ramRead ;
    assign internalBus[18] = ramRead ;
    assign internalBus[17] = ramRead ;
    assign internalBus[16] = ramRead ;
    assign internalBus[15] = ramRead ;
    assign internalBus[14] = ramRead ;
    assign internalBus[13] = ramRead ;
    assign internalBus[12] = ramRead ;
    assign internalBus[11] = ramRead ;
    assign internalBus[10] = ramRead ;
    assign internalBus[9] = ramRead ;
    assign internalBus[8] = ramRead ;
    assign internalBus[7] = ramRead ;
    assign internalBus[6] = ramRead ;
    assign internalBus[5] = ramRead ;
    assign internalBus[4] = ramRead ;
    assign internalBus[3] = ramRead ;
    assign internalBus[2] = ramRead ;
    assign internalBus[1] = ramRead ;
    assign internalBus[0] = ramRead ;
    assign finishedOneReadOut = ramRead ;
    MultiStepCounter_13 addressRegister (.load ({readBaseAddress[12],
                        readBaseAddress[11],readBaseAddress[10],
                        readBaseAddress[9],readBaseAddress[8],readBaseAddress[7]
                        ,readBaseAddress[6],readBaseAddress[5],
                        readBaseAddress[4],readBaseAddress[3],readBaseAddress[2]
                        ,readBaseAddress[1],readBaseAddress[0]}), .toBeAdded ({
                        ramRead,ramRead,ramRead,ramRead,ramRead,ramRead,ramRead,
                        ramRead,tobeAdded_4,tobeAdded_3,tobeAdded_2,tobeAdded_1,
                        tobeAdded_0}), .reset (ramRead), .clk (clk), .isLoad (
                        initAddress), .MFC (finishedOneReadOut_rename), .count (
                        {ramReadAddress[12],ramReadAddress[11],
                        ramReadAddress[10],ramReadAddress[9],ramReadAddress[8],
                        ramReadAddress[7],ramReadAddress[6],ramReadAddress[5],
                        ramReadAddress[4],ramReadAddress[3],ramReadAddress[2],
                        ramReadAddress[1],ramReadAddress[0]})) ;
    DownCounter_3 counter (.load ({initialCount[2],initialCount[1],
                  initialCount[0]}), .enable (enableCount), .clk (clk), .isLoad (
                  initCounter), .currentCount ({currentCount_2,currentCount_1,
                  currentCount_0})) ;
    Reg_13_unfolded0 readStepRegister (.D ({ramRead,ramRead,ramRead,ramRead,
                     ramRead,ramRead,ramRead,ramRead,readStep[4],readStep[3],
                     readStep[2],readStep[1],readStep[0]}), .en (PWR), .clk (clk
                     ), .rst (ramRead), .Q ({\$dummy [0],\$dummy [1],\$dummy [2]
                     ,\$dummy [3],\$dummy [4],\$dummy [5],\$dummy [6],
                     \$dummy [7],tobeAdded_4,tobeAdded_3,tobeAdded_2,tobeAdded_1
                     ,tobeAdded_0})) ;
    fake_gnd ix7 (.Y (ramRead)) ;
    fake_vcc ix5 (.Y (PWR)) ;
    nor02_2x ix13 (.Y (finishedOneReadOut_rename), .A0 (nx25), .A1 (NOT_MFC)) ;
    inv01 ix26 (.Y (nx25), .A (load)) ;
    inv16 ix28 (.Y (NOT_MFC), .A (MFC)) ;
    inv01 ix23 (.Y (enableCount), .A (nx30)) ;
    nor02_2x ix31 (.Y (nx30), .A0 (MFC), .A1 (initCounter)) ;
    nor03_2x ix19 (.Y (nx18), .A0 (currentCount_1), .A1 (nx34), .A2 (nx38)) ;
    nand02 ix35 (.Y (nx34), .A0 (currentCount_0), .A1 (nx36)) ;
    inv01 ix37 (.Y (nx36), .A (currentCount_2)) ;
    nand03 ix39 (.Y (nx38), .A0 (nx40), .A1 (load), .A2 (MFC)) ;
    inv01 ix41 (.Y (nx40), .A (clk)) ;
    latchs_ni lat_internalFinishedReading_u1 (.QB (nx5), .D (ramRead), .CLK (
              NOT_MFC), .S (nx18)) ;
    inv02 lat_internalFinishedReading_u2 (.Y (finishedReading), .A (nx5)) ;
    buf02 lat_internalFinishedReading_u3 (.Y (nx1), .A (nx5)) ;
endmodule


module Reg_13_unfolded0 ( D, en, clk, rst, Q ) ;

    input [12:0]D ;
    input en ;
    input clk ;
    input rst ;
    output [12:0]Q ;

    wire [4:0] \$dummy ;




    assign Q[11] = Q[12] ;
    assign Q[10] = Q[12] ;
    assign Q[9] = Q[12] ;
    assign Q[8] = Q[12] ;
    assign Q[7] = Q[12] ;
    assign Q[6] = Q[12] ;
    assign Q[5] = Q[12] ;
    fake_gnd ix2 (.Y (Q[12])) ;
    dff reg_Q_0 (.Q (Q[0]), .QB (\$dummy [0]), .D (D[0]), .CLK (clk)) ;
    dff reg_Q_1 (.Q (Q[1]), .QB (\$dummy [1]), .D (D[1]), .CLK (clk)) ;
    dff reg_Q_2 (.Q (Q[2]), .QB (\$dummy [2]), .D (D[2]), .CLK (clk)) ;
    dff reg_Q_3 (.Q (Q[3]), .QB (\$dummy [3]), .D (D[3]), .CLK (clk)) ;
    dff reg_Q_4 (.Q (Q[4]), .QB (\$dummy [4]), .D (D[4]), .CLK (clk)) ;
endmodule


module DownCounter_3 ( load, enable, clk, isLoad, currentCount ) ;

    input [2:0]load ;
    input enable ;
    input clk ;
    input isLoad ;
    inout [2:0]currentCount ;

    wire counterInput_2, counterInput_1, counterInput_0, subtractorOutput_2, 
         subtractorOutput_1, subtractorOutput_0, PWR, zerosSignal_2;
    wire [0:0] \$dummy ;




    Reg_3_unfolded0 counterReg (.D ({counterInput_2,counterInput_1,
                    counterInput_0}), .en (enable), .clk (clk), .rst (
                    zerosSignal_2), .Q ({currentCount[2],currentCount[1],
                    currentCount[0]})) ;
    NBitSubtractor_3 nextCount (.x ({currentCount[2],currentCount[1],
                     currentCount[0]}), .y ({zerosSignal_2,zerosSignal_2,
                     zerosSignal_2}), .bin (PWR), .difference ({
                     subtractorOutput_2,subtractorOutput_1,subtractorOutput_0})
                     , .borrowOut (\$dummy [0])) ;
    Mux2_3 muxloadOrCurrent (.A ({subtractorOutput_2,subtractorOutput_1,
           subtractorOutput_0}), .B ({load[2],load[1],load[0]}), .S (isLoad), .C (
           {counterInput_2,counterInput_1,counterInput_0})) ;
    fake_gnd ix18 (.Y (zerosSignal_2)) ;
    fake_vcc ix16 (.Y (PWR)) ;
endmodule


module Mux2_3 ( A, B, S, C ) ;

    input [2:0]A ;
    input [2:0]B ;
    input S ;
    output [2:0]C ;

    wire nx119, nx121, nx123, nx126, nx128, nx131, nx133;



    nand02 ix7 (.Y (C[0]), .A0 (nx119), .A1 (nx121)) ;
    nand02 ix120 (.Y (nx119), .A0 (B[0]), .A1 (S)) ;
    nand02 ix122 (.Y (nx121), .A0 (A[0]), .A1 (nx123)) ;
    inv01 ix124 (.Y (nx123), .A (S)) ;
    nand02 ix15 (.Y (C[1]), .A0 (nx126), .A1 (nx128)) ;
    nand02 ix127 (.Y (nx126), .A0 (B[1]), .A1 (S)) ;
    nand02 ix129 (.Y (nx128), .A0 (A[1]), .A1 (nx123)) ;
    nand02 ix23 (.Y (C[2]), .A0 (nx131), .A1 (nx133)) ;
    nand02 ix132 (.Y (nx131), .A0 (S), .A1 (B[2])) ;
    nand02 ix134 (.Y (nx133), .A0 (nx123), .A1 (A[2])) ;
endmodule


module NBitSubtractor_3 ( x, y, bin, difference, borrowOut ) ;

    input [2:0]x ;
    input [2:0]y ;
    input bin ;
    output [2:0]difference ;
    output borrowOut ;

    wire temp_1, bin_rename;
    wire [1:0] \$dummy ;




    FullSubtractor f0 (.x (x[0]), .y (borrowOut), .bin (bin_rename), .difference (
                   difference[0]), .bout (\$dummy [0])) ;
    FullSubtractor_unfolded0 loop1_1_fx (.x (x[1]), .y (borrowOut), .bin (
                             difference[0]), .difference (difference[1]), .bout (
                             temp_1)) ;
    FullSubtractor_unfolded1 loop1_2_fx (.x (x[2]), .y (borrowOut), .bin (temp_1
                             ), .difference (difference[2]), .bout (\$dummy [1])
                             ) ;
    fake_gnd ix4 (.Y (borrowOut)) ;
    fake_vcc ix2 (.Y (bin_rename)) ;
endmodule


module FullSubtractor_unfolded1 ( x, y, bin, difference, bout ) ;

    input x ;
    input y ;
    input bin ;
    output difference ;
    output bout ;

    wire nx55;



    fake_gnd ix45 (.Y (bout)) ;
    xnor2 ix1 (.Y (difference), .A0 (bin), .A1 (nx55)) ;
    inv01 ix56 (.Y (nx55), .A (x)) ;
endmodule


module FullSubtractor_unfolded0 ( x, y, bin, difference, bout ) ;

    input x ;
    input y ;
    input bin ;
    output difference ;
    output bout ;

    wire nx95, nx98;



    nor02_2x ix3 (.Y (bout), .A0 (nx95), .A1 (x)) ;
    inv01 ix96 (.Y (nx95), .A (bin)) ;
    xnor2 ix9 (.Y (difference), .A0 (bin), .A1 (nx98)) ;
    inv01 ix99 (.Y (nx98), .A (x)) ;
endmodule


module FullSubtractor ( x, y, bin, difference, bout ) ;

    input x ;
    input y ;
    input bin ;
    output difference ;
    output bout ;




    fake_gnd ix45 (.Y (bout)) ;
    inv01 ix54 (.Y (difference), .A (x)) ;
endmodule


module Reg_3_unfolded0 ( D, en, clk, rst, Q ) ;

    input [2:0]D ;
    input en ;
    input clk ;
    input rst ;
    output [2:0]Q ;

    wire nx58, nx68, nx78, nx90, nx92, nx94, nx99, nx101, nx106, nx108;
    wire [2:0] \$dummy ;




    dff reg_Q_0 (.Q (Q[0]), .QB (\$dummy [0]), .D (nx58), .CLK (clk)) ;
    nand02 ix59 (.Y (nx58), .A0 (nx90), .A1 (nx94)) ;
    nand02 ix91 (.Y (nx90), .A0 (Q[0]), .A1 (nx92)) ;
    inv01 ix93 (.Y (nx92), .A (en)) ;
    nand02 ix95 (.Y (nx94), .A0 (D[0]), .A1 (en)) ;
    dff reg_Q_1 (.Q (Q[1]), .QB (\$dummy [1]), .D (nx68), .CLK (clk)) ;
    nand02 ix69 (.Y (nx68), .A0 (nx99), .A1 (nx101)) ;
    nand02 ix100 (.Y (nx99), .A0 (Q[1]), .A1 (nx92)) ;
    nand02 ix102 (.Y (nx101), .A0 (D[1]), .A1 (en)) ;
    dff reg_Q_2 (.Q (Q[2]), .QB (\$dummy [2]), .D (nx78), .CLK (clk)) ;
    nand02 ix79 (.Y (nx78), .A0 (nx106), .A1 (nx108)) ;
    nand02 ix107 (.Y (nx106), .A0 (Q[2]), .A1 (nx92)) ;
    nand02 ix109 (.Y (nx108), .A0 (D[2]), .A1 (en)) ;
endmodule


module MultiStepCounter_13 ( load, toBeAdded, reset, clk, isLoad, MFC, count ) ;

    input [12:0]load ;
    input [12:0]toBeAdded ;
    input reset ;
    input clk ;
    input isLoad ;
    input MFC ;
    output [12:0]count ;

    wire loadOrCurrent_12, loadOrCurrent_11, loadOrCurrent_10, loadOrCurrent_9, 
         loadOrCurrent_8, loadOrCurrent_7, loadOrCurrent_6, loadOrCurrent_5, 
         loadOrCurrent_4, loadOrCurrent_3, loadOrCurrent_2, loadOrCurrent_1, 
         loadOrCurrent_0, counterInput_12, counterInput_11, counterInput_10, 
         counterInput_9, counterInput_8, counterInput_7, counterInput_6, 
         counterInput_5, counterInput_4, counterInput_3, counterInput_2, 
         counterInput_1, counterInput_0, countAdded_12, countAdded_11, 
         countAdded_10, countAdded_9, countAdded_8, countAdded_7, countAdded_6, 
         countAdded_5, countAdded_4, countAdded_3, countAdded_2, countAdded_1, 
         countAdded_0, GND, PWR;
    wire [0:0] \$dummy ;




    Reg_13 counterReg (.D ({counterInput_12,counterInput_11,counterInput_10,
           counterInput_9,counterInput_8,counterInput_7,counterInput_6,
           counterInput_5,counterInput_4,counterInput_3,counterInput_2,
           counterInput_1,counterInput_0}), .en (PWR), .clk (clk), .rst (GND), .Q (
           {count[12],count[11],count[10],count[9],count[8],count[7],count[6],
           count[5],count[4],count[3],count[2],count[1],count[0]})) ;
    NBitAdder_13_unfolded0 nextCount (.a ({count[12],count[11],count[10],
                           count[9],count[8],count[7],count[6],count[5],count[4]
                           ,count[3],count[2],count[1],count[0]}), .b ({GND,GND,
                           GND,GND,GND,GND,GND,GND,toBeAdded[4],toBeAdded[3],
                           toBeAdded[2],toBeAdded[1],toBeAdded[0]}), .carryIn (
                           GND), .sum ({countAdded_12,countAdded_11,
                           countAdded_10,countAdded_9,countAdded_8,countAdded_7,
                           countAdded_6,countAdded_5,countAdded_4,countAdded_3,
                           countAdded_2,countAdded_1,countAdded_0}), .carryOut (
                           \$dummy [0])) ;
    Mux2_13_unfolded0 muxloadOrCurrent (.A ({count[12],count[11],count[10],
                      count[9],count[8],count[7],count[6],count[5],count[4],
                      count[3],count[2],count[1],count[0]}), .B ({load[12],
                      load[11],load[10],load[9],load[8],load[7],load[6],load[5],
                      load[4],load[3],load[2],load[1],load[0]}), .S (isLoad), .C (
                      {loadOrCurrent_12,loadOrCurrent_11,loadOrCurrent_10,
                      loadOrCurrent_9,loadOrCurrent_8,loadOrCurrent_7,
                      loadOrCurrent_6,loadOrCurrent_5,loadOrCurrent_4,
                      loadOrCurrent_3,loadOrCurrent_2,loadOrCurrent_1,
                      loadOrCurrent_0})) ;
    Mux2_13_unfolded0 muxInput (.A ({loadOrCurrent_12,loadOrCurrent_11,
                      loadOrCurrent_10,loadOrCurrent_9,loadOrCurrent_8,
                      loadOrCurrent_7,loadOrCurrent_6,loadOrCurrent_5,
                      loadOrCurrent_4,loadOrCurrent_3,loadOrCurrent_2,
                      loadOrCurrent_1,loadOrCurrent_0}), .B ({countAdded_12,
                      countAdded_11,countAdded_10,countAdded_9,countAdded_8,
                      countAdded_7,countAdded_6,countAdded_5,countAdded_4,
                      countAdded_3,countAdded_2,countAdded_1,countAdded_0}), .S (
                      MFC), .C ({counterInput_12,counterInput_11,counterInput_10
                      ,counterInput_9,counterInput_8,counterInput_7,
                      counterInput_6,counterInput_5,counterInput_4,
                      counterInput_3,counterInput_2,counterInput_1,
                      counterInput_0})) ;
    fake_vcc ix4 (.Y (PWR)) ;
    fake_gnd ix2 (.Y (GND)) ;
endmodule


module Mux2_13_unfolded0 ( A, B, S, C ) ;

    input [12:0]A ;
    input [12:0]B ;
    input S ;
    output [12:0]C ;

    wire nx179, nx181, nx186, nx188, nx191, nx193, nx196, nx198, nx201, nx203, 
         nx206, nx208, nx211, nx213, nx216, nx218, nx221, nx223, nx226, nx228, 
         nx231, nx233, nx236, nx238, nx241, nx243, nx250, nx252, nx258, nx260, 
         nx262;



    nand02 ix7 (.Y (C[0]), .A0 (nx179), .A1 (nx181)) ;
    nand02 ix180 (.Y (nx179), .A0 (B[0]), .A1 (nx258)) ;
    nand02 ix182 (.Y (nx181), .A0 (A[0]), .A1 (nx262)) ;
    nand02 ix15 (.Y (C[1]), .A0 (nx186), .A1 (nx188)) ;
    nand02 ix187 (.Y (nx186), .A0 (B[1]), .A1 (nx258)) ;
    nand02 ix189 (.Y (nx188), .A0 (A[1]), .A1 (nx262)) ;
    nand02 ix23 (.Y (C[2]), .A0 (nx191), .A1 (nx193)) ;
    nand02 ix192 (.Y (nx191), .A0 (B[2]), .A1 (nx258)) ;
    nand02 ix194 (.Y (nx193), .A0 (A[2]), .A1 (nx262)) ;
    nand02 ix31 (.Y (C[3]), .A0 (nx196), .A1 (nx198)) ;
    nand02 ix197 (.Y (nx196), .A0 (B[3]), .A1 (nx258)) ;
    nand02 ix199 (.Y (nx198), .A0 (A[3]), .A1 (nx262)) ;
    nand02 ix39 (.Y (C[4]), .A0 (nx201), .A1 (nx203)) ;
    nand02 ix202 (.Y (nx201), .A0 (B[4]), .A1 (nx258)) ;
    nand02 ix204 (.Y (nx203), .A0 (A[4]), .A1 (nx262)) ;
    nand02 ix47 (.Y (C[5]), .A0 (nx206), .A1 (nx208)) ;
    nand02 ix207 (.Y (nx206), .A0 (B[5]), .A1 (nx258)) ;
    nand02 ix209 (.Y (nx208), .A0 (A[5]), .A1 (nx262)) ;
    nand02 ix55 (.Y (C[6]), .A0 (nx211), .A1 (nx213)) ;
    nand02 ix212 (.Y (nx211), .A0 (B[6]), .A1 (nx258)) ;
    nand02 ix214 (.Y (nx213), .A0 (A[6]), .A1 (nx262)) ;
    nand02 ix63 (.Y (C[7]), .A0 (nx216), .A1 (nx218)) ;
    nand02 ix217 (.Y (nx216), .A0 (B[7]), .A1 (nx260)) ;
    nand02 ix219 (.Y (nx218), .A0 (A[7]), .A1 (nx252)) ;
    nand02 ix71 (.Y (C[8]), .A0 (nx221), .A1 (nx223)) ;
    nand02 ix222 (.Y (nx221), .A0 (B[8]), .A1 (nx260)) ;
    nand02 ix224 (.Y (nx223), .A0 (A[8]), .A1 (nx252)) ;
    nand02 ix79 (.Y (C[9]), .A0 (nx226), .A1 (nx228)) ;
    nand02 ix227 (.Y (nx226), .A0 (B[9]), .A1 (nx260)) ;
    nand02 ix229 (.Y (nx228), .A0 (A[9]), .A1 (nx252)) ;
    nand02 ix87 (.Y (C[10]), .A0 (nx231), .A1 (nx233)) ;
    nand02 ix232 (.Y (nx231), .A0 (B[10]), .A1 (nx260)) ;
    nand02 ix234 (.Y (nx233), .A0 (A[10]), .A1 (nx252)) ;
    nand02 ix95 (.Y (C[11]), .A0 (nx236), .A1 (nx238)) ;
    nand02 ix237 (.Y (nx236), .A0 (B[11]), .A1 (nx260)) ;
    nand02 ix239 (.Y (nx238), .A0 (A[11]), .A1 (nx252)) ;
    nand02 ix103 (.Y (C[12]), .A0 (nx241), .A1 (nx243)) ;
    nand02 ix242 (.Y (nx241), .A0 (nx260), .A1 (B[12])) ;
    nand02 ix244 (.Y (nx243), .A0 (nx252), .A1 (A[12])) ;
    inv02 ix249 (.Y (nx250), .A (S)) ;
    inv02 ix251 (.Y (nx252), .A (nx260)) ;
    inv02 ix257 (.Y (nx258), .A (nx250)) ;
    inv02 ix259 (.Y (nx260), .A (nx250)) ;
    inv02 ix261 (.Y (nx262), .A (S)) ;
endmodule


module NBitAdder_13_unfolded0 ( a, b, carryIn, sum, carryOut ) ;

    input [12:0]a ;
    input [12:0]b ;
    input carryIn ;
    output [12:0]sum ;
    output carryOut ;

    wire temp_11, temp_10, temp_9, temp_8, temp_7, temp_6, temp_5, temp_4, 
         temp_3, temp_2, temp_1, temp_0;
    wire [0:0] \$dummy ;




    FullAdder_unfolded4 f0 (.a (a[0]), .b (b[0]), .cin (carryOut), .s (sum[0]), 
                        .cout (temp_0)) ;
    FullAdder_unfolded5 loop1_1_fx (.a (a[1]), .b (b[1]), .cin (temp_0), .s (
                        sum[1]), .cout (temp_1)) ;
    FullAdder_unfolded5 loop1_2_fx (.a (a[2]), .b (b[2]), .cin (temp_1), .s (
                        sum[2]), .cout (temp_2)) ;
    FullAdder_unfolded5 loop1_3_fx (.a (a[3]), .b (b[3]), .cin (temp_2), .s (
                        sum[3]), .cout (temp_3)) ;
    FullAdder_unfolded5 loop1_4_fx (.a (a[4]), .b (b[4]), .cin (temp_3), .s (
                        sum[4]), .cout (temp_4)) ;
    FullAdder_unfolded6 loop1_5_fx (.a (a[5]), .b (carryOut), .cin (temp_4), .s (
                        sum[5]), .cout (temp_5)) ;
    FullAdder_unfolded6 loop1_6_fx (.a (a[6]), .b (carryOut), .cin (temp_5), .s (
                        sum[6]), .cout (temp_6)) ;
    FullAdder_unfolded6 loop1_7_fx (.a (a[7]), .b (carryOut), .cin (temp_6), .s (
                        sum[7]), .cout (temp_7)) ;
    FullAdder_unfolded6 loop1_8_fx (.a (a[8]), .b (carryOut), .cin (temp_7), .s (
                        sum[8]), .cout (temp_8)) ;
    FullAdder_unfolded6 loop1_9_fx (.a (a[9]), .b (carryOut), .cin (temp_8), .s (
                        sum[9]), .cout (temp_9)) ;
    FullAdder_unfolded6 loop1_10_fx (.a (a[10]), .b (carryOut), .cin (temp_9), .s (
                        sum[10]), .cout (temp_10)) ;
    FullAdder_unfolded6 loop1_11_fx (.a (a[11]), .b (carryOut), .cin (temp_10), 
                        .s (sum[11]), .cout (temp_11)) ;
    FullAdder_unfolded7 loop1_12_fx (.a (a[12]), .b (carryOut), .cin (temp_11), 
                        .s (sum[12]), .cout (\$dummy [0])) ;
    fake_gnd ix42 (.Y (carryOut)) ;
endmodule


module FullAdder_unfolded7 ( a, b, cin, s, cout ) ;

    input a ;
    input b ;
    input cin ;
    output s ;
    output cout ;

    wire nx55;



    fake_gnd ix45 (.Y (cout)) ;
    xnor2 ix1 (.Y (s), .A0 (cin), .A1 (nx55)) ;
    inv01 ix56 (.Y (nx55), .A (a)) ;
endmodule


module FullAdder_unfolded6 ( a, b, cin, s, cout ) ;

    input a ;
    input b ;
    input cin ;
    output s ;
    output cout ;

    wire nx95, nx97;



    nor02_2x ix1 (.Y (cout), .A0 (nx95), .A1 (nx97)) ;
    inv01 ix96 (.Y (nx95), .A (cin)) ;
    inv01 ix98 (.Y (nx97), .A (a)) ;
    xnor2 ix7 (.Y (s), .A0 (cin), .A1 (nx97)) ;
endmodule


module FullAdder_unfolded5 ( a, b, cin, s, cout ) ;

    input a ;
    input b ;
    input cin ;
    output s ;
    output cout ;

    wire nx111, nx113, nx115, nx117;



    oai22 ix7 (.Y (cout), .A0 (nx111), .A1 (nx113), .B0 (nx115), .B1 (nx117)) ;
    inv01 ix112 (.Y (nx111), .A (cin)) ;
    xnor2 ix114 (.Y (nx113), .A0 (a), .A1 (b)) ;
    inv01 ix116 (.Y (nx115), .A (b)) ;
    inv01 ix118 (.Y (nx117), .A (a)) ;
    xnor2 ix9 (.Y (s), .A0 (nx113), .A1 (cin)) ;
endmodule


module FullAdder_unfolded4 ( a, b, cin, s, cout ) ;

    input a ;
    input b ;
    input cin ;
    output s ;
    output cout ;

    wire nx95, nx97;



    nor02_2x ix1 (.Y (cout), .A0 (nx95), .A1 (nx97)) ;
    inv01 ix96 (.Y (nx95), .A (b)) ;
    inv01 ix98 (.Y (nx97), .A (a)) ;
    xnor2 ix7 (.Y (s), .A0 (b), .A1 (nx97)) ;
endmodule


module Reg_13 ( D, en, clk, rst, Q ) ;

    input [12:0]D ;
    input en ;
    input clk ;
    input rst ;
    output [12:0]Q ;

    wire nx67, nx69;
    wire [12:0] \$dummy ;




    dff reg_Q_0 (.Q (Q[0]), .QB (\$dummy [0]), .D (D[0]), .CLK (nx67)) ;
    dff reg_Q_1 (.Q (Q[1]), .QB (\$dummy [1]), .D (D[1]), .CLK (nx67)) ;
    dff reg_Q_2 (.Q (Q[2]), .QB (\$dummy [2]), .D (D[2]), .CLK (nx67)) ;
    dff reg_Q_3 (.Q (Q[3]), .QB (\$dummy [3]), .D (D[3]), .CLK (nx67)) ;
    dff reg_Q_4 (.Q (Q[4]), .QB (\$dummy [4]), .D (D[4]), .CLK (nx67)) ;
    dff reg_Q_5 (.Q (Q[5]), .QB (\$dummy [5]), .D (D[5]), .CLK (nx67)) ;
    dff reg_Q_6 (.Q (Q[6]), .QB (\$dummy [6]), .D (D[6]), .CLK (nx67)) ;
    dff reg_Q_7 (.Q (Q[7]), .QB (\$dummy [7]), .D (D[7]), .CLK (nx69)) ;
    dff reg_Q_8 (.Q (Q[8]), .QB (\$dummy [8]), .D (D[8]), .CLK (nx69)) ;
    dff reg_Q_9 (.Q (Q[9]), .QB (\$dummy [9]), .D (D[9]), .CLK (nx69)) ;
    dff reg_Q_10 (.Q (Q[10]), .QB (\$dummy [10]), .D (D[10]), .CLK (nx69)) ;
    dff reg_Q_11 (.Q (Q[11]), .QB (\$dummy [11]), .D (D[11]), .CLK (nx69)) ;
    dff reg_Q_12 (.Q (Q[12]), .QB (\$dummy [12]), .D (D[12]), .CLK (nx69)) ;
    buf02 ix66 (.Y (nx67), .A (clk)) ;
    buf02 ix68 (.Y (nx69), .A (clk)) ;
endmodule


module Mux2_13 ( A, B, S, C ) ;

    input [12:0]A ;
    input [12:0]B ;
    input S ;
    output [12:0]C ;




    assign C[10] = C[12] ;
    assign C[9] = C[12] ;
    assign C[8] = C[12] ;
    assign C[7] = C[12] ;
    assign C[6] = C[12] ;
    assign C[5] = C[12] ;
    assign C[4] = C[12] ;
    assign C[3] = C[12] ;
    assign C[2] = C[12] ;
    assign C[1] = C[12] ;
    assign C[0] = C[12] ;
    fake_gnd ix74 (.Y (C[12])) ;
    inv01 ix83 (.Y (C[11]), .A (S)) ;
endmodule


module NBitAdder_13 ( a, b, carryIn, sum, carryOut ) ;

    input [12:0]a ;
    input [12:0]b ;
    input carryIn ;
    output [12:0]sum ;
    output carryOut ;

    wire temp_3, temp_2, temp_1, carryIn_rename;
    wire [0:0] \$dummy ;




    assign sum[12] = carryOut ;
    assign sum[11] = carryOut ;
    assign sum[10] = carryOut ;
    assign sum[9] = carryOut ;
    assign sum[8] = carryOut ;
    assign sum[7] = carryOut ;
    assign sum[6] = carryOut ;
    FullAdder_unfolded2 f0 (.a (a[0]), .b (carryOut), .cin (carryIn_rename), .s (
                        sum[0]), .cout (\$dummy [0])) ;
    FullAdder_unfolded3 loop1_1_fx (.a (a[1]), .b (carryOut), .cin (a[0]), .s (
                        sum[1]), .cout (temp_1)) ;
    FullAdder_unfolded3 loop1_2_fx (.a (a[2]), .b (carryOut), .cin (temp_1), .s (
                        sum[2]), .cout (temp_2)) ;
    FullAdder_unfolded3 loop1_3_fx (.a (a[3]), .b (carryOut), .cin (temp_2), .s (
                        sum[3]), .cout (temp_3)) ;
    FullAdder_unfolded3 loop1_4_fx (.a (a[4]), .b (carryOut), .cin (temp_3), .s (
                        sum[4]), .cout (sum[5])) ;
    fake_gnd ix6 (.Y (carryOut)) ;
    fake_vcc ix4 (.Y (carryIn_rename)) ;
endmodule


module FullAdder_unfolded3 ( a, b, cin, s, cout ) ;

    input a ;
    input b ;
    input cin ;
    output s ;
    output cout ;

    wire nx95, nx97;



    nor02_2x ix1 (.Y (cout), .A0 (nx95), .A1 (nx97)) ;
    inv01 ix96 (.Y (nx95), .A (cin)) ;
    inv01 ix98 (.Y (nx97), .A (a)) ;
    xnor2 ix7 (.Y (s), .A0 (cin), .A1 (nx97)) ;
endmodule


module FullAdder_unfolded2 ( a, b, cin, s, cout ) ;

    input a ;
    input b ;
    input cin ;
    output s ;
    output cout ;




    fake_gnd ix44 (.Y (cout)) ;
    inv01 ix53 (.Y (s), .A (a)) ;
endmodule


module ControlUnit ( clk, layersNumber, filtersNumber, filterDepth, 
                     filterOutputSize, startNetwork, layerType, convFinish, 
                     dmaAFinish, dmaBFinish, dmaCFinish, resetNetwork, 
                     sliceFirstLoad, loadLayerConfig, loadNetworkConfig, 
                     loadFilterConfig, loadWindow, loadFilter, conv, pool, 
                     shift12, shift21, readNextCol, addToOutputBuffer, 
                     outputBufferEn, saveToRAM, currentPage, finishCurrentSlice, 
                     finishFilter, finishOneLayer, finishNetwork ) ;

    input clk ;
    input [1:0]layersNumber ;
    input [2:0]filtersNumber ;
    input [2:0]filterDepth ;
    input [4:0]filterOutputSize ;
    input startNetwork ;
    input layerType ;
    input convFinish ;
    input dmaAFinish ;
    input dmaBFinish ;
    input dmaCFinish ;
    input resetNetwork ;
    output sliceFirstLoad ;
    output loadLayerConfig ;
    output loadNetworkConfig ;
    output loadFilterConfig ;
    output loadWindow ;
    output loadFilter ;
    output conv ;
    output pool ;
    output shift12 ;
    output shift21 ;
    output readNextCol ;
    output addToOutputBuffer ;
    output outputBufferEn ;
    output saveToRAM ;
    output [0:0]currentPage ;
    output finishCurrentSlice ;
    output finishFilter ;
    output finishOneLayer ;
    output finishNetwork ;

    wire startOneLayer, startFilter, filterLastLayer, startSlice;
    wire [9:0] \$dummy ;




    assign sliceFirstLoad = addToOutputBuffer ;
    assign loadLayerConfig = addToOutputBuffer ;
    assign loadNetworkConfig = addToOutputBuffer ;
    assign loadFilterConfig = addToOutputBuffer ;
    assign loadFilter = addToOutputBuffer ;
    assign shift12 = addToOutputBuffer ;
    assign shift21 = addToOutputBuffer ;
    assign outputBufferEn = addToOutputBuffer ;
    assign currentPage[0] = addToOutputBuffer ;
    NetworkController_2 networkMap (.start (startNetwork), .dmaFinish (
                        addToOutputBuffer), .oneLayerFinish (finishOneLayer), .resetState (
                        resetNetwork), .clk (clk), .layersNumber ({
                        layersNumber[1],layersNumber[0]}), .loadConfig (
                        \$dummy [0]), .startOneLayer (startOneLayer), .finish (
                        finishNetwork)) ;
    LayerController_3 oneLayerMap (.start (startOneLayer), .dmaFinish (
                      addToOutputBuffer), .filterFinish (finishFilter), .resetState (
                      resetNetwork), .clk (clk), .filtersNumber ({
                      filtersNumber[2],filtersNumber[1],filtersNumber[0]}), .loadConfig (
                      \$dummy [1]), .startFilterConv (startFilter), .finish (
                      finishOneLayer)) ;
    FilterController_3 filterMap (.start (startFilter), .layerType (layerType), 
                       .dmaFinish (addToOutputBuffer), .oneConvFinish (
                       finishCurrentSlice), .resetState (resetNetwork), .clk (
                       clk), .depth ({filterDepth[2],filterDepth[1],
                       filterDepth[0]}), .startOneConv (startSlice), .loadConfig (
                       \$dummy [2]), .filterLastLayer (filterLastLayer), .finish (
                       finishFilter)) ;
    SliceFilterController_5 sliceFilterMap (.start (startSlice), .layerType (
                            layerType), .filterLastLayer (filterLastLayer), .finishConv (
                            convFinish), .dmaAFinish (addToOutputBuffer), .dmaBFinish (
                            dmaBFinish), .dmaCFinish (dmaCFinish), .resetState (
                            resetNetwork), .clk (clk), .outputSize ({
                            filterOutputSize[4],filterOutputSize[3],
                            filterOutputSize[2],filterOutputSize[1],
                            filterOutputSize[0]}), .pageTurn ({\$dummy [3]}), .sliceFirstLoad (
                            \$dummy [4]), .loadFilter (\$dummy [5]), .loadWindow (
                            loadWindow), .conv (conv), .pool (pool), .shift12 (
                            \$dummy [6]), .shift21 (\$dummy [7]), .readNextCol (
                            readNextCol), .addToOutputBuffer (\$dummy [8]), .outputBufferEn (
                            \$dummy [9]), .saveToRAM (saveToRAM), .finish (
                            finishCurrentSlice)) ;
    fake_gnd ix44 (.Y (addToOutputBuffer)) ;
endmodule


module SliceFilterController_5 ( start, layerType, filterLastLayer, finishConv, 
                                 dmaAFinish, dmaBFinish, dmaCFinish, resetState, 
                                 clk, outputSize, pageTurn, sliceFirstLoad, 
                                 loadFilter, loadWindow, conv, pool, shift12, 
                                 shift21, readNextCol, addToOutputBuffer, 
                                 outputBufferEn, saveToRAM, finish ) ;

    input start ;
    input layerType ;
    input filterLastLayer ;
    input finishConv ;
    input dmaAFinish ;
    input dmaBFinish ;
    input dmaCFinish ;
    input resetState ;
    input clk ;
    input [4:0]outputSize ;
    output [0:0]pageTurn ;
    output sliceFirstLoad ;
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

    wire currentState_0, outerCounterEn, altInnerCounterOut_4, 
         altInnerCounterOut_3, altInnerCounterOut_2, altInnerCounterOut_1, 
         altInnerCounterOut_0, altOuterCounterOut_4, altOuterCounterOut_3, 
         altOuterCounterOut_2, altOuterCounterOut_1, altOuterCounterOut_0, 
         innerCounterEn, currentState_3, nx63, NOT_clk, currentState_2, 
         outputBufferEn_rename, addToOutputBuffer_rename, nx12, 
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
         nx338, nx340, nx343, nx345, nx353, nx359, nx361;
    wire [11:0] \$dummy ;




    assign pageTurn[0] = addToOutputBuffer ;
    assign sliceFirstLoad = addToOutputBuffer ;
    assign loadFilter = addToOutputBuffer ;
    assign shift12 = addToOutputBuffer ;
    assign shift21 = addToOutputBuffer ;
    assign outputBufferEn = addToOutputBuffer ;
    Counter_5 innerCounterMap (.en (innerCounterEn), .reset (outerCounterEn), .clk (
              clk), .count ({altInnerCounterOut_4,altInnerCounterOut_3,
              altInnerCounterOut_2,altInnerCounterOut_1,altInnerCounterOut_0})
              ) ;
    Counter_5 outerCounterMap (.en (outerCounterEn), .reset (currentState_0), .clk (
              clk), .count ({altOuterCounterOut_4,altOuterCounterOut_3,
              altOuterCounterOut_2,altOuterCounterOut_1,altOuterCounterOut_0})
              ) ;
    fake_gnd ix37 (.Y (addToOutputBuffer)) ;
    nand02 ix215 (.Y (conv), .A0 (nx163), .A1 (nx183)) ;
    nand02 ix164 (.Y (nx163), .A0 (nx165), .A1 (currentState_2)) ;
    inv01 ix166 (.Y (nx165), .A (layerType)) ;
    nor04 ix172 (.Y (nx171), .A0 (nx182), .A1 (nx176), .A2 (nx164), .A3 (nx160)
          ) ;
    nand03 ix183 (.Y (nx182), .A0 (nx175), .A1 (nx179), .A2 (nx193)) ;
    dffr reg_currentState_2 (.Q (currentState_2), .QB (nx175), .D (nx99), .CLK (
         NOT_clk), .R (resetState)) ;
    inv02 ix178 (.Y (NOT_clk), .A (clk)) ;
    dffr reg_currentState_4 (.Q (addToOutputBuffer_rename), .QB (nx179), .D (
         nx79), .CLK (NOT_clk), .R (resetState)) ;
    nor02_2x ix80 (.Y (nx79), .A0 (nx183), .A1 (nx353)) ;
    nand02 ix184 (.Y (nx183), .A0 (nx165), .A1 (currentState_3)) ;
    oai21 ix112 (.Y (nx111), .A0 (nx188), .A1 (nx63), .B0 (nx175)) ;
    dffr reg_currentState_3 (.Q (currentState_3), .QB (nx188), .D (nx111), .CLK (
         NOT_clk), .R (resetState)) ;
    inv01 ix185 (.Y (nx63), .A (nx171)) ;
    dffr reg_currentState_5 (.Q (outputBufferEn_rename), .QB (nx193), .D (nx89)
         , .CLK (NOT_clk), .R (resetState)) ;
    nor02_2x ix90 (.Y (nx89), .A0 (nx197), .A1 (nx353)) ;
    nor02_2x ix13 (.Y (nx12), .A0 (nx165), .A1 (nx188)) ;
    oai22 ix177 (.Y (nx176), .A0 (nx201), .A1 (nx263), .B0 (nx267), .B1 (nx269)
          ) ;
    dffr reg_currentState_6 (.Q (\$dummy [0]), .QB (nx201), .D (nx121), .CLK (
         NOT_clk), .R (resetState)) ;
    nand02 ix206 (.Y (nx205), .A0 (outputBufferEn_rename), .A1 (nx207)) ;
    nor02_2x ix208 (.Y (nx207), .A0 (nx72), .A1 (nx44)) ;
    nand04 ix73 (.Y (nx72), .A0 (nx211), .A1 (nx227), .A2 (nx233), .A3 (nx238)
           ) ;
    nor02_2x ix212 (.Y (nx211), .A0 (nx68), .A1 (nx64)) ;
    dff reg_innerCounterOut_3 (.Q (\$dummy [1]), .QB (nx217), .D (
        altInnerCounterOut_3), .CLK (clk)) ;
    inv01 ix220 (.Y (nx218), .A (outputSize[3])) ;
    dff reg_innerCounterOut_2 (.Q (\$dummy [2]), .QB (nx223), .D (
        altInnerCounterOut_2), .CLK (clk)) ;
    inv01 ix226 (.Y (nx224), .A (outputSize[2])) ;
    xnor2 ix228 (.Y (nx227), .A0 (innerCounterOut_0), .A1 (outputSize[0])) ;
    dff reg_innerCounterOut_0 (.Q (innerCounterOut_0), .QB (\$dummy [3]), .D (
        altInnerCounterOut_0), .CLK (clk)) ;
    dff reg_innerCounterOut_4 (.Q (\$dummy [4]), .QB (nx237), .D (
        altInnerCounterOut_4), .CLK (clk)) ;
    xnor2 ix239 (.Y (nx238), .A0 (innerCounterOut_1), .A1 (outputSize[1])) ;
    dff reg_innerCounterOut_1 (.Q (innerCounterOut_1), .QB (\$dummy [5]), .D (
        altInnerCounterOut_1), .CLK (clk)) ;
    nand04 ix45 (.Y (nx44), .A0 (nx243), .A1 (nx251), .A2 (nx255), .A3 (nx259)
           ) ;
    nor02_2x ix244 (.Y (nx243), .A0 (nx40), .A1 (nx36)) ;
    dff reg_outerCounterOut_3 (.Q (\$dummy [6]), .QB (nx247), .D (
        altOuterCounterOut_3), .CLK (clk)) ;
    dff reg_outerCounterOut_2 (.Q (\$dummy [7]), .QB (nx250), .D (
        altOuterCounterOut_2), .CLK (clk)) ;
    xnor2 ix252 (.Y (nx251), .A0 (outerCounterOut_0), .A1 (outputSize[0])) ;
    dff reg_outerCounterOut_0 (.Q (outerCounterOut_0), .QB (\$dummy [8]), .D (
        altOuterCounterOut_0), .CLK (clk)) ;
    dff reg_outerCounterOut_4 (.Q (\$dummy [9]), .QB (nx258), .D (
        altOuterCounterOut_4), .CLK (clk)) ;
    xnor2 ix260 (.Y (nx259), .A0 (outerCounterOut_1), .A1 (outputSize[1])) ;
    dff reg_outerCounterOut_1 (.Q (outerCounterOut_1), .QB (\$dummy [10]), .D (
        altOuterCounterOut_1), .CLK (clk)) ;
    nor02_2x ix264 (.Y (nx263), .A0 (nx265), .A1 (dmaCFinish)) ;
    inv01 ix266 (.Y (nx265), .A (filterLastLayer)) ;
    inv01 ix268 (.Y (nx267), .A (start)) ;
    dffs_ni reg_currentState_0 (.Q (currentState_0), .QB (nx269), .D (nx151), .CLK (
            NOT_clk), .S (resetState)) ;
    nor02_2x ix165 (.Y (nx164), .A0 (nx273), .A1 (nx276)) ;
    dffr reg_currentState_1 (.Q (\$dummy [11]), .QB (nx273), .D (nx71), .CLK (
         NOT_clk), .R (resetState)) ;
    nand02 ix277 (.Y (nx276), .A0 (dmaBFinish), .A1 (layerType)) ;
    nor03_2x ix161 (.Y (nx160), .A0 (nx279), .A1 (nx281), .A2 (nx307)) ;
    nand02 ix280 (.Y (nx279), .A0 (finishConv), .A1 (currentState_3)) ;
    nor03_2x ix282 (.Y (nx281), .A0 (finalDMACFinish), .A1 (nx265), .A2 (nx292)
             ) ;
    oai21 ix132 (.Y (nx131), .A0 (nx285), .A1 (nx287), .B0 (nx289)) ;
    inv01 ix286 (.Y (nx285), .A (dmaCFinish)) ;
    nor03_2x ix288 (.Y (nx287), .A0 (currentState_3), .A1 (
             addToOutputBuffer_rename), .A2 (currentState_0)) ;
    dffr reg_finalDMACFinish (.Q (finalDMACFinish), .QB (nx289), .D (nx131), .CLK (
         clk), .R (nx120)) ;
    nand03 ix121 (.Y (nx120), .A0 (nx269), .A1 (nx193), .A2 (nx179)) ;
    nand02 ix293 (.Y (nx292), .A0 (nx132), .A1 (nx134)) ;
    nand02 ix133 (.Y (nx132), .A0 (nx295), .A1 (nx201)) ;
    oai21 ix296 (.Y (nx295), .A0 (nx106), .A1 (nx98), .B0 (nx128)) ;
    nand04 ix107 (.Y (nx106), .A0 (nx298), .A1 (nx247), .A2 (nx258), .A3 (nx250)
           ) ;
    nor02_2x ix299 (.Y (nx298), .A0 (outerCounterOut_0), .A1 (outerCounterOut_1)
             ) ;
    nand04 ix99 (.Y (nx98), .A0 (nx301), .A1 (nx217), .A2 (nx237), .A3 (nx223)
           ) ;
    nor02_2x ix302 (.Y (nx301), .A0 (innerCounterOut_0), .A1 (innerCounterOut_1)
             ) ;
    oai21 ix129 (.Y (nx128), .A0 (finalDMACFinish), .A1 (nx188), .B0 (nx175)) ;
    inv01 ix135 (.Y (nx134), .A (nx305)) ;
    nor02_2x ix306 (.Y (nx305), .A0 (layerType), .A1 (filterLastLayer)) ;
    dffr reg_finalDMABFinish (.Q (finalDMABFinish), .QB (nx309), .D (nx141), .CLK (
         clk), .R (nx120)) ;
    oai21 ix142 (.Y (nx141), .A0 (nx312), .A1 (nx314), .B0 (nx309)) ;
    inv01 ix313 (.Y (nx312), .A (dmaBFinish)) ;
    nor03_2x ix315 (.Y (nx314), .A0 (currentState_3), .A1 (
             addToOutputBuffer_rename), .A2 (currentState_0)) ;
    oai21 ix79 (.Y (nx78), .A0 (nx193), .A1 (nx207), .B0 (nx273)) ;
    nor02_2x ix219 (.Y (pool), .A0 (nx165), .A1 (nx318)) ;
    nor02_2x ix319 (.Y (nx318), .A0 (currentState_2), .A1 (currentState_3)) ;
    nor02ii ix225 (.Y (readNextCol), .A0 (nx321), .A1 (nx222)) ;
    nor02_2x ix322 (.Y (nx321), .A0 (nx70), .A1 (nx60)) ;
    nand02 ix71 (.Y (nx70), .A0 (nx324), .A1 (nx326)) ;
    nand03 ix61 (.Y (nx60), .A0 (nx227), .A1 (nx233), .A2 (nx238)) ;
    nor02_2x ix223 (.Y (nx222), .A0 (finalDMABFinish), .A1 (nx188)) ;
    nor02_2x ix235 (.Y (finish), .A0 (nx201), .A1 (nx331)) ;
    nor02_2x ix332 (.Y (nx331), .A0 (nx230), .A1 (dmaCFinish)) ;
    nor02_2x ix231 (.Y (nx230), .A0 (filterLastLayer), .A1 (layerType)) ;
    nand02 ix119 (.Y (innerCounterEn), .A0 (nx269), .A1 (nx193)) ;
    oai21 ix193 (.Y (outerCounterEn), .A0 (nx193), .A1 (nx72), .B0 (nx269)) ;
    aoi22 ix137 (.Y (saveToRAM), .A0 (nx165), .A1 (nx265), .B0 (nx295), .B1 (
          nx201)) ;
    oai321 ix209 (.Y (loadWindow), .A0 (nx338), .A1 (nx340), .A2 (nx72), .B0 (
           nx267), .B1 (nx269), .C0 (nx273)) ;
    nand02 ix339 (.Y (nx338), .A0 (nx309), .A1 (currentState_3)) ;
    nor02_2x ix341 (.Y (nx340), .A0 (nx42), .A1 (nx32)) ;
    nand02 ix43 (.Y (nx42), .A0 (nx343), .A1 (nx345)) ;
    nand03 ix33 (.Y (nx32), .A0 (nx251), .A1 (nx255), .A2 (nx259)) ;
    inv02 ix352 (.Y (nx353), .A (nx63)) ;
    nor02_2x ix100 (.Y (nx99), .A0 (nx353), .A1 (nx359)) ;
    inv01 ix358 (.Y (nx359), .A (nx78)) ;
    nor02_2x ix198 (.Y (nx197), .A0 (nx12), .A1 (addToOutputBuffer_rename)) ;
    mux21 ix122 (.Y (nx121), .A0 (nx201), .A1 (nx205), .S0 (nx63)) ;
    xnor2 ix69 (.Y (nx68), .A0 (nx217), .A1 (outputSize[3])) ;
    xnor2 ix65 (.Y (nx64), .A0 (nx223), .A1 (outputSize[2])) ;
    xnor2 ix234 (.Y (nx233), .A0 (nx237), .A1 (nx361)) ;
    inv01 ix360 (.Y (nx361), .A (outputSize[4])) ;
    xnor2 ix41 (.Y (nx40), .A0 (nx247), .A1 (outputSize[3])) ;
    xnor2 ix38 (.Y (nx36), .A0 (nx250), .A1 (outputSize[2])) ;
    xnor2 ix256 (.Y (nx255), .A0 (nx258), .A1 (nx361)) ;
    mux21 ix152 (.Y (nx151), .A0 (nx269), .A1 (nx201), .S0 (nx63)) ;
    mux21 ix72 (.Y (nx71), .A0 (nx273), .A1 (nx269), .S0 (nx63)) ;
    nor02_2x ix308 (.Y (nx307), .A0 (nx207), .A1 (finalDMABFinish)) ;
    xnor2 ix325 (.Y (nx324), .A0 (nx217), .A1 (nx218)) ;
    xnor2 ix327 (.Y (nx326), .A0 (nx223), .A1 (nx224)) ;
    xnor2 ix344 (.Y (nx343), .A0 (nx247), .A1 (nx218)) ;
    xnor2 ix346 (.Y (nx345), .A0 (nx250), .A1 (nx224)) ;
endmodule


module Counter_5 ( en, reset, clk, count ) ;

    input en ;
    input reset ;
    input clk ;
    output [4:0]count ;

    wire addedOne_4, addedOne_3, addedOne_2, addedOne_1, addedOne_0, finalReset, 
         oneSignal_4, PWR, nx27, nx29;
    wire [0:0] \$dummy ;




    Reg_5 counterReg (.D ({addedOne_4,addedOne_3,addedOne_2,addedOne_1,
          addedOne_0}), .en (en), .clk (clk), .rst (finalReset), .Q ({count[4],
          count[3],count[2],count[1],count[0]})) ;
    NBitAdder_5 nextCount (.a ({count[4],count[3],count[2],count[1],count[0]}), 
                .b ({oneSignal_4,oneSignal_4,oneSignal_4,oneSignal_4,oneSignal_4
                }), .carryIn (PWR), .sum ({addedOne_4,addedOne_3,addedOne_2,
                addedOne_1,addedOne_0}), .carryOut (\$dummy [0])) ;
    fake_vcc ix21 (.Y (PWR)) ;
    fake_gnd ix19 (.Y (oneSignal_4)) ;
    nor02_2x ix1 (.Y (finalReset), .A0 (nx27), .A1 (nx29)) ;
    inv01 ix28 (.Y (nx27), .A (reset)) ;
    inv01 ix30 (.Y (nx29), .A (clk)) ;
endmodule


module NBitAdder_5 ( a, b, carryIn, sum, carryOut ) ;

    input [4:0]a ;
    input [4:0]b ;
    input carryIn ;
    output [4:0]sum ;
    output carryOut ;

    wire temp_3, temp_2, temp_1, carryIn_rename;
    wire [1:0] \$dummy ;




    FullAdder f0 (.a (a[0]), .b (carryOut), .cin (carryIn_rename), .s (sum[0]), 
              .cout (\$dummy [0])) ;
    FullAdder_unfolded1 loop1_1_fx (.a (a[1]), .b (carryOut), .cin (a[0]), .s (
                        sum[1]), .cout (temp_1)) ;
    FullAdder_unfolded1 loop1_2_fx (.a (a[2]), .b (carryOut), .cin (temp_1), .s (
                        sum[2]), .cout (temp_2)) ;
    FullAdder_unfolded1 loop1_3_fx (.a (a[3]), .b (carryOut), .cin (temp_2), .s (
                        sum[3]), .cout (temp_3)) ;
    FullAdder_unfolded0 loop1_4_fx (.a (a[4]), .b (carryOut), .cin (temp_3), .s (
                        sum[4]), .cout (\$dummy [1])) ;
    fake_gnd ix4 (.Y (carryOut)) ;
    fake_vcc ix2 (.Y (carryIn_rename)) ;
endmodule


module Reg_5 ( D, en, clk, rst, Q ) ;

    input [4:0]D ;
    input en ;
    input clk ;
    input rst ;
    output [4:0]Q ;

    wire nx118, nx128, nx138, nx148, nx158, nx170, nx172, nx174, nx179, nx181, 
         nx186, nx188, nx193, nx195, nx200, nx202;
    wire [4:0] \$dummy ;




    dffr reg_Q_0 (.Q (Q[0]), .QB (\$dummy [0]), .D (nx118), .CLK (clk), .R (rst)
         ) ;
    nand02 ix119 (.Y (nx118), .A0 (nx170), .A1 (nx174)) ;
    nand02 ix171 (.Y (nx170), .A0 (Q[0]), .A1 (nx172)) ;
    inv01 ix173 (.Y (nx172), .A (en)) ;
    nand02 ix175 (.Y (nx174), .A0 (D[0]), .A1 (en)) ;
    dffr reg_Q_1 (.Q (Q[1]), .QB (\$dummy [1]), .D (nx128), .CLK (clk), .R (rst)
         ) ;
    nand02 ix129 (.Y (nx128), .A0 (nx179), .A1 (nx181)) ;
    nand02 ix180 (.Y (nx179), .A0 (Q[1]), .A1 (nx172)) ;
    nand02 ix182 (.Y (nx181), .A0 (D[1]), .A1 (en)) ;
    dffr reg_Q_2 (.Q (Q[2]), .QB (\$dummy [2]), .D (nx138), .CLK (clk), .R (rst)
         ) ;
    nand02 ix139 (.Y (nx138), .A0 (nx186), .A1 (nx188)) ;
    nand02 ix187 (.Y (nx186), .A0 (Q[2]), .A1 (nx172)) ;
    nand02 ix189 (.Y (nx188), .A0 (D[2]), .A1 (en)) ;
    dffr reg_Q_3 (.Q (Q[3]), .QB (\$dummy [3]), .D (nx148), .CLK (clk), .R (rst)
         ) ;
    nand02 ix149 (.Y (nx148), .A0 (nx193), .A1 (nx195)) ;
    nand02 ix194 (.Y (nx193), .A0 (Q[3]), .A1 (nx172)) ;
    nand02 ix196 (.Y (nx195), .A0 (D[3]), .A1 (en)) ;
    dffr reg_Q_4 (.Q (Q[4]), .QB (\$dummy [4]), .D (nx158), .CLK (clk), .R (rst)
         ) ;
    nand02 ix159 (.Y (nx158), .A0 (nx200), .A1 (nx202)) ;
    nand02 ix201 (.Y (nx200), .A0 (Q[4]), .A1 (nx172)) ;
    nand02 ix203 (.Y (nx202), .A0 (D[4]), .A1 (en)) ;
endmodule


module FilterController_3 ( start, layerType, dmaFinish, oneConvFinish, 
                            resetState, clk, depth, startOneConv, loadConfig, 
                            filterLastLayer, finish ) ;

    input start ;
    input layerType ;
    input dmaFinish ;
    input oneConvFinish ;
    input resetState ;
    input clk ;
    input [2:0]depth ;
    output startOneConv ;
    output loadConfig ;
    output filterLastLayer ;
    output finish ;

    wire counterEn, altCounterOut_2, altCounterOut_1, altCounterOut_0, 
         resetCounter, currentState_1, currentState_0, NOT_clk, counterOut_1, 
         counterOut_2, counterOut_0, nx44, nx46, nx56, nx47, nx57, nx71, nx76, 
         nx78, nx82, nx85, nx87, nx95, nx99, nx103, nx107, nx112, nx114, nx116, 
         nx118, nx120, nx122;
    wire [2:0] \$dummy ;




    Counter_3 counterMap (.en (counterEn), .reset (resetCounter), .clk (clk), .count (
              {altCounterOut_2,altCounterOut_1,altCounterOut_0})) ;
    fake_gnd ix28 (.Y (loadConfig)) ;
    nor02_2x ix89 (.Y (filterLastLayer), .A0 (nx71), .A1 (nx120)) ;
    nand02 ix72 (.Y (nx71), .A0 (currentState_1), .A1 (nx78)) ;
    mux21 ix58 (.Y (nx57), .A0 (nx76), .A1 (nx95), .S0 (nx87)) ;
    aoi22 ix77 (.Y (nx76), .A0 (currentState_1), .A1 (nx78), .B0 (nx116), .B1 (
          nx118)) ;
    oai21 ix48 (.Y (nx47), .A0 (nx82), .A1 (nx87), .B0 (nx114)) ;
    oai21 ix84 (.Y (nx82), .A0 (nx85), .A1 (currentState_1), .B0 (nx78)) ;
    inv01 ix86 (.Y (nx85), .A (layerType)) ;
    aoi222 ix88 (.Y (nx87), .A0 (start), .A1 (resetCounter), .B0 (currentState_1
           ), .B1 (currentState_0), .C0 (startOneConv), .C1 (nx56)) ;
    nor02_2x ix83 (.Y (resetCounter), .A0 (currentState_1), .A1 (currentState_0)
             ) ;
    dffr reg_currentState_0 (.Q (currentState_0), .QB (nx78), .D (nx47), .CLK (
         NOT_clk), .R (resetState)) ;
    inv01 ix93 (.Y (NOT_clk), .A (clk)) ;
    nor02_2x ix5 (.Y (startOneConv), .A0 (nx95), .A1 (currentState_0)) ;
    dffr reg_currentState_1 (.Q (currentState_1), .QB (nx95), .D (nx57), .CLK (
         NOT_clk), .R (resetState)) ;
    nand03 ix47 (.Y (nx46), .A0 (nx99), .A1 (nx103), .A2 (nx107)) ;
    xnor2 ix100 (.Y (nx99), .A0 (counterOut_0), .A1 (depth[0])) ;
    dff reg_counterOut_0 (.Q (counterOut_0), .QB (\$dummy [0]), .D (
        altCounterOut_0), .CLK (clk)) ;
    xnor2 ix104 (.Y (nx103), .A0 (counterOut_2), .A1 (depth[2])) ;
    dff reg_counterOut_2 (.Q (counterOut_2), .QB (\$dummy [1]), .D (
        altCounterOut_2), .CLK (clk)) ;
    xnor2 ix108 (.Y (nx107), .A0 (counterOut_1), .A1 (depth[1])) ;
    dff reg_counterOut_1 (.Q (counterOut_1), .QB (\$dummy [2]), .D (
        altCounterOut_1), .CLK (clk)) ;
    inv01 ix53 (.Y (counterEn), .A (nx112)) ;
    oai21 ix113 (.Y (nx112), .A0 (oneConvFinish), .A1 (nx95), .B0 (nx78)) ;
    nand02 ix115 (.Y (nx114), .A0 (currentState_0), .A1 (nx95)) ;
    nand02 ix117 (.Y (nx116), .A0 (nx85), .A1 (nx78)) ;
    nand02 ix119 (.Y (nx118), .A0 (currentState_1), .A1 (currentState_0)) ;
    nor02ii ix123 (.Y (nx122), .A0 (nx44), .A1 (nx107)) ;
    nand02 ix45 (.Y (nx44), .A0 (nx99), .A1 (nx103)) ;
    nor02_2x ix19 (.Y (finish), .A0 (nx95), .A1 (nx78)) ;
    nor02_2x ix57 (.Y (nx56), .A0 (nx46), .A1 (nx112)) ;
    nor02_2x ix121 (.Y (nx120), .A0 (nx122), .A1 (layerType)) ;
endmodule


module LayerController_3 ( start, dmaFinish, filterFinish, resetState, clk, 
                           filtersNumber, loadConfig, startFilterConv, finish
                            ) ;

    input start ;
    input dmaFinish ;
    input filterFinish ;
    input resetState ;
    input clk ;
    input [2:0]filtersNumber ;
    output loadConfig ;
    output startFilterConv ;
    output finish ;

    wire counterEn, altCounterOut_2, altCounterOut_1, altCounterOut_0, 
         resetCounter, currentState_1, currentState_0, NOT_clk, counterOut_1, 
         nx16, counterOut_2, counterOut_0, nx42, nx56, nx37, nx47, nx61, nx69, 
         nx80, nx82, nx84, nx88, nx93, nx95, nx97, nx100;
    wire [2:0] \$dummy ;




    Counter_3 counterMap (.en (counterEn), .reset (resetCounter), .clk (clk), .count (
              {altCounterOut_2,altCounterOut_1,altCounterOut_0})) ;
    fake_gnd ix15 (.Y (loadConfig)) ;
    nor02_2x ix9 (.Y (finish), .A0 (nx61), .A1 (nx97)) ;
    nor02_2x ix48 (.Y (nx47), .A0 (nx61), .A1 (currentState_0)) ;
    dffr reg_currentState_0 (.Q (currentState_0), .QB (nx97), .D (nx37), .CLK (
         NOT_clk), .R (resetState)) ;
    oai21 ix38 (.Y (nx37), .A0 (currentState_0), .A1 (nx69), .B0 (nx95)) ;
    aoi222 ix70 (.Y (nx69), .A0 (start), .A1 (resetCounter), .B0 (currentState_1
           ), .B1 (currentState_0), .C0 (nx42), .C1 (nx56)) ;
    nor02_2x ix49 (.Y (resetCounter), .A0 (currentState_1), .A1 (currentState_0)
             ) ;
    dffr reg_currentState_1 (.Q (currentState_1), .QB (nx61), .D (nx47), .CLK (
         NOT_clk), .R (resetState)) ;
    inv01 ix75 (.Y (NOT_clk), .A (clk)) ;
    nor02_2x ix43 (.Y (nx42), .A0 (nx16), .A1 (nx82)) ;
    xnor2 ix18 (.Y (nx16), .A0 (counterOut_1), .A1 (nx80)) ;
    dff reg_counterOut_1 (.Q (counterOut_1), .QB (\$dummy [0]), .D (
        altCounterOut_1), .CLK (clk)) ;
    inv01 ix81 (.Y (nx80), .A (filtersNumber[1])) ;
    nand02 ix83 (.Y (nx82), .A0 (nx84), .A1 (nx88)) ;
    xnor2 ix85 (.Y (nx84), .A0 (counterOut_2), .A1 (filtersNumber[2])) ;
    dff reg_counterOut_2 (.Q (counterOut_2), .QB (\$dummy [1]), .D (
        altCounterOut_2), .CLK (clk)) ;
    xnor2 ix89 (.Y (nx88), .A0 (counterOut_0), .A1 (filtersNumber[0])) ;
    dff reg_counterOut_0 (.Q (counterOut_0), .QB (\$dummy [2]), .D (
        altCounterOut_0), .CLK (clk)) ;
    nor03_2x ix57 (.Y (nx56), .A0 (nx61), .A1 (currentState_0), .A2 (nx93)) ;
    inv01 ix94 (.Y (nx93), .A (filterFinish)) ;
    nand02 ix96 (.Y (nx95), .A0 (currentState_0), .A1 (nx61)) ;
    nor02_2x ix79 (.Y (startFilterConv), .A0 (nx61), .A1 (currentState_0)) ;
    inv01 ix55 (.Y (counterEn), .A (nx100)) ;
    oai21 ix101 (.Y (nx100), .A0 (filterFinish), .A1 (nx61), .B0 (nx97)) ;
endmodule


module Counter_3 ( en, reset, clk, count ) ;

    input en ;
    input reset ;
    input clk ;
    output [2:0]count ;

    wire addedOne_2, addedOne_1, addedOne_0, finalReset, oneSignal_2, PWR, nx23, 
         nx25;
    wire [0:0] \$dummy ;




    Reg_3 counterReg (.D ({addedOne_2,addedOne_1,addedOne_0}), .en (en), .clk (
          clk), .rst (finalReset), .Q ({count[2],count[1],count[0]})) ;
    NBitAdder_3 nextCount (.a ({count[2],count[1],count[0]}), .b ({oneSignal_2,
                oneSignal_2,oneSignal_2}), .carryIn (PWR), .sum ({addedOne_2,
                addedOne_1,addedOne_0}), .carryOut (\$dummy [0])) ;
    fake_vcc ix17 (.Y (PWR)) ;
    fake_gnd ix15 (.Y (oneSignal_2)) ;
    nor02_2x ix1 (.Y (finalReset), .A0 (nx23), .A1 (nx25)) ;
    inv01 ix24 (.Y (nx23), .A (reset)) ;
    inv01 ix26 (.Y (nx25), .A (clk)) ;
endmodule


module NBitAdder_3 ( a, b, carryIn, sum, carryOut ) ;

    input [2:0]a ;
    input [2:0]b ;
    input carryIn ;
    output [2:0]sum ;
    output carryOut ;

    wire temp_1, carryIn_rename;
    wire [1:0] \$dummy ;




    FullAdder f0 (.a (a[0]), .b (carryOut), .cin (carryIn_rename), .s (sum[0]), 
              .cout (\$dummy [0])) ;
    FullAdder_unfolded1 loop1_1_fx (.a (a[1]), .b (carryOut), .cin (a[0]), .s (
                        sum[1]), .cout (temp_1)) ;
    FullAdder_unfolded0 loop1_2_fx (.a (a[2]), .b (carryOut), .cin (temp_1), .s (
                        sum[2]), .cout (\$dummy [1])) ;
    fake_gnd ix4 (.Y (carryOut)) ;
    fake_vcc ix2 (.Y (carryIn_rename)) ;
endmodule


module FullAdder_unfolded1 ( a, b, cin, s, cout ) ;

    input a ;
    input b ;
    input cin ;
    output s ;
    output cout ;

    wire nx95, nx97;



    nor02_2x ix1 (.Y (cout), .A0 (nx95), .A1 (nx97)) ;
    inv01 ix96 (.Y (nx95), .A (cin)) ;
    inv01 ix98 (.Y (nx97), .A (a)) ;
    xnor2 ix7 (.Y (s), .A0 (cin), .A1 (nx97)) ;
endmodule


module Reg_3 ( D, en, clk, rst, Q ) ;

    input [2:0]D ;
    input en ;
    input clk ;
    input rst ;
    output [2:0]Q ;

    wire nx94, nx104, nx114, nx126, nx128, nx130, nx135, nx137, nx142, nx144;
    wire [2:0] \$dummy ;




    dffr reg_Q_0 (.Q (Q[0]), .QB (\$dummy [0]), .D (nx94), .CLK (clk), .R (rst)
         ) ;
    nand02 ix95 (.Y (nx94), .A0 (nx126), .A1 (nx130)) ;
    nand02 ix127 (.Y (nx126), .A0 (Q[0]), .A1 (nx128)) ;
    inv01 ix129 (.Y (nx128), .A (en)) ;
    nand02 ix131 (.Y (nx130), .A0 (D[0]), .A1 (en)) ;
    dffr reg_Q_1 (.Q (Q[1]), .QB (\$dummy [1]), .D (nx104), .CLK (clk), .R (rst)
         ) ;
    nand02 ix105 (.Y (nx104), .A0 (nx135), .A1 (nx137)) ;
    nand02 ix136 (.Y (nx135), .A0 (Q[1]), .A1 (nx128)) ;
    nand02 ix138 (.Y (nx137), .A0 (D[1]), .A1 (en)) ;
    dffr reg_Q_2 (.Q (Q[2]), .QB (\$dummy [2]), .D (nx114), .CLK (clk), .R (rst)
         ) ;
    nand02 ix115 (.Y (nx114), .A0 (nx142), .A1 (nx144)) ;
    nand02 ix143 (.Y (nx142), .A0 (Q[2]), .A1 (nx128)) ;
    nand02 ix145 (.Y (nx144), .A0 (D[2]), .A1 (en)) ;
endmodule


module NetworkController_2 ( start, dmaFinish, oneLayerFinish, resetState, clk, 
                             layersNumber, loadConfig, startOneLayer, finish ) ;

    input start ;
    input dmaFinish ;
    input oneLayerFinish ;
    input resetState ;
    input clk ;
    input [1:0]layersNumber ;
    output loadConfig ;
    output startOneLayer ;
    output finish ;

    wire counterEn, altCounterOut_1, altCounterOut_0, resetCounter, 
         currentState_1, currentState_0, NOT_clk, counterOut_0, nx16, 
         counterOut_1, nx24, nx30, nx44, nx35, nx45, nx59, nx64, nx74, nx79, 
         nx82, nx84, nx86, nx89;
    wire [1:0] \$dummy ;




    Counter_2 counterMap (.en (counterEn), .reset (resetCounter), .clk (clk), .count (
              {altCounterOut_1,altCounterOut_0})) ;
    fake_gnd ix15 (.Y (loadConfig)) ;
    nor02_2x ix9 (.Y (finish), .A0 (nx59), .A1 (nx86)) ;
    nor02_2x ix46 (.Y (nx45), .A0 (nx59), .A1 (currentState_0)) ;
    dffr reg_currentState_0 (.Q (currentState_0), .QB (nx86), .D (nx35), .CLK (
         NOT_clk), .R (resetState)) ;
    oai21 ix36 (.Y (nx35), .A0 (currentState_0), .A1 (nx64), .B0 (nx84)) ;
    aoi222 ix65 (.Y (nx64), .A0 (currentState_1), .A1 (currentState_0), .B0 (
           start), .B1 (resetCounter), .C0 (nx30), .C1 (nx44)) ;
    dffr reg_currentState_1 (.Q (currentState_1), .QB (nx59), .D (nx45), .CLK (
         NOT_clk), .R (resetState)) ;
    inv01 ix68 (.Y (NOT_clk), .A (clk)) ;
    nor02_2x ix37 (.Y (resetCounter), .A0 (currentState_1), .A1 (currentState_0)
             ) ;
    nor02_2x ix31 (.Y (nx30), .A0 (nx16), .A1 (nx24)) ;
    xnor2 ix18 (.Y (nx16), .A0 (counterOut_0), .A1 (nx74)) ;
    dff reg_counterOut_0 (.Q (counterOut_0), .QB (\$dummy [0]), .D (
        altCounterOut_0), .CLK (clk)) ;
    inv01 ix75 (.Y (nx74), .A (layersNumber[0])) ;
    xnor2 ix25 (.Y (nx24), .A0 (counterOut_1), .A1 (nx79)) ;
    dff reg_counterOut_1 (.Q (counterOut_1), .QB (\$dummy [1]), .D (
        altCounterOut_1), .CLK (clk)) ;
    inv01 ix80 (.Y (nx79), .A (layersNumber[1])) ;
    nor03_2x ix45 (.Y (nx44), .A0 (nx59), .A1 (currentState_0), .A2 (nx82)) ;
    inv01 ix83 (.Y (nx82), .A (oneLayerFinish)) ;
    nand02 ix85 (.Y (nx84), .A0 (currentState_0), .A1 (nx59)) ;
    nor02_2x ix67 (.Y (startOneLayer), .A0 (nx59), .A1 (currentState_0)) ;
    inv01 ix43 (.Y (counterEn), .A (nx89)) ;
    oai21 ix90 (.Y (nx89), .A0 (oneLayerFinish), .A1 (nx59), .B0 (nx86)) ;
endmodule


module Counter_2 ( en, reset, clk, count ) ;

    input en ;
    input reset ;
    input clk ;
    output [1:0]count ;

    wire addedOne_1, addedOne_0, finalReset, oneSignal_1, PWR, nx21, nx23;
    wire [0:0] \$dummy ;




    Reg_2 counterReg (.D ({addedOne_1,addedOne_0}), .en (en), .clk (clk), .rst (
          finalReset), .Q ({count[1],count[0]})) ;
    NBitAdder_2 nextCount (.a ({count[1],count[0]}), .b ({oneSignal_1,
                oneSignal_1}), .carryIn (PWR), .sum ({addedOne_1,addedOne_0}), .carryOut (
                \$dummy [0])) ;
    fake_vcc ix15 (.Y (PWR)) ;
    fake_gnd ix13 (.Y (oneSignal_1)) ;
    nor02_2x ix1 (.Y (finalReset), .A0 (nx21), .A1 (nx23)) ;
    inv01 ix22 (.Y (nx21), .A (reset)) ;
    inv01 ix24 (.Y (nx23), .A (clk)) ;
endmodule


module NBitAdder_2 ( a, b, carryIn, sum, carryOut ) ;

    input [1:0]a ;
    input [1:0]b ;
    input carryIn ;
    output [1:0]sum ;
    output carryOut ;

    wire carryIn_rename;
    wire [1:0] \$dummy ;




    FullAdder f0 (.a (a[0]), .b (carryOut), .cin (carryIn_rename), .s (sum[0]), 
              .cout (\$dummy [0])) ;
    FullAdder_unfolded0 loop1_1_fx (.a (a[1]), .b (carryOut), .cin (a[0]), .s (
                        sum[1]), .cout (\$dummy [1])) ;
    fake_gnd ix4 (.Y (carryOut)) ;
    fake_vcc ix2 (.Y (carryIn_rename)) ;
endmodule


module FullAdder_unfolded0 ( a, b, cin, s, cout ) ;

    input a ;
    input b ;
    input cin ;
    output s ;
    output cout ;

    wire nx55;



    fake_gnd ix45 (.Y (cout)) ;
    xnor2 ix1 (.Y (s), .A0 (cin), .A1 (nx55)) ;
    inv01 ix56 (.Y (nx55), .A (a)) ;
endmodule


module FullAdder ( a, b, cin, s, cout ) ;

    input a ;
    input b ;
    input cin ;
    output s ;
    output cout ;




    fake_gnd ix44 (.Y (cout)) ;
    inv01 ix53 (.Y (s), .A (a)) ;
endmodule


module Reg_2 ( D, en, clk, rst, Q ) ;

    input [1:0]D ;
    input en ;
    input clk ;
    input rst ;
    output [1:0]Q ;

    wire nx82, nx92, nx104, nx106, nx108, nx113, nx115;
    wire [1:0] \$dummy ;




    dffr reg_Q_0 (.Q (Q[0]), .QB (\$dummy [0]), .D (nx82), .CLK (clk), .R (rst)
         ) ;
    nand02 ix83 (.Y (nx82), .A0 (nx104), .A1 (nx108)) ;
    nand02 ix105 (.Y (nx104), .A0 (Q[0]), .A1 (nx106)) ;
    inv01 ix107 (.Y (nx106), .A (en)) ;
    nand02 ix109 (.Y (nx108), .A0 (D[0]), .A1 (en)) ;
    dffr reg_Q_1 (.Q (Q[1]), .QB (\$dummy [1]), .D (nx92), .CLK (clk), .R (rst)
         ) ;
    nand02 ix93 (.Y (nx92), .A0 (nx113), .A1 (nx115)) ;
    nand02 ix114 (.Y (nx113), .A0 (Q[1]), .A1 (nx106)) ;
    nand02 ix116 (.Y (nx115), .A0 (D[1]), .A1 (en)) ;
endmodule


module CNNCores_8_16_5_5_3 ( filterBus, windowBus, decoderRow, clk, rst, 
                             writePage1, writePage2, writeFilter, shift2To1, 
                             shift1To2, pageTurn, start, layerType, filterType, 
                             doneCores, finalSumConv ) ;

    input [39:0]filterBus ;
    input [79:0]windowBus ;
    input [2:0]decoderRow ;
    input clk ;
    input rst ;
    input writePage1 ;
    input writePage2 ;
    input writeFilter ;
    input shift2To1 ;
    input shift1To2 ;
    input pageTurn ;
    input start ;
    input layerType ;
    input filterType ;
    output doneCores ;
    output [15:0]finalSumConv ;

    wire doneMul, nx54;
    wire [400:0] \$dummy ;




    assign finalSumConv[14] = finalSumConv[15] ;
    assign finalSumConv[13] = finalSumConv[15] ;
    assign finalSumConv[12] = finalSumConv[15] ;
    assign finalSumConv[11] = finalSumConv[15] ;
    assign finalSumConv[10] = finalSumConv[15] ;
    assign finalSumConv[9] = finalSumConv[15] ;
    assign finalSumConv[8] = finalSumConv[15] ;
    assign finalSumConv[7] = finalSumConv[15] ;
    assign finalSumConv[6] = finalSumConv[15] ;
    assign finalSumConv[5] = finalSumConv[15] ;
    assign finalSumConv[4] = finalSumConv[15] ;
    assign finalSumConv[3] = finalSumConv[15] ;
    assign finalSumConv[2] = finalSumConv[15] ;
    assign finalSumConv[1] = finalSumConv[15] ;
    assign finalSumConv[0] = finalSumConv[15] ;
    CNNMuls_25 mulsMap (.filter_24__7 (finalSumConv[15]), .filter_24__6 (
               finalSumConv[15]), .filter_24__5 (finalSumConv[15]), .filter_24__4 (
               finalSumConv[15]), .filter_24__3 (finalSumConv[15]), .filter_24__2 (
               finalSumConv[15]), .filter_24__1 (finalSumConv[15]), .filter_24__0 (
               finalSumConv[15]), .filter_23__7 (finalSumConv[15]), .filter_23__6 (
               finalSumConv[15]), .filter_23__5 (finalSumConv[15]), .filter_23__4 (
               finalSumConv[15]), .filter_23__3 (finalSumConv[15]), .filter_23__2 (
               finalSumConv[15]), .filter_23__1 (finalSumConv[15]), .filter_23__0 (
               finalSumConv[15]), .filter_22__7 (finalSumConv[15]), .filter_22__6 (
               finalSumConv[15]), .filter_22__5 (finalSumConv[15]), .filter_22__4 (
               finalSumConv[15]), .filter_22__3 (finalSumConv[15]), .filter_22__2 (
               finalSumConv[15]), .filter_22__1 (finalSumConv[15]), .filter_22__0 (
               finalSumConv[15]), .filter_21__7 (finalSumConv[15]), .filter_21__6 (
               finalSumConv[15]), .filter_21__5 (finalSumConv[15]), .filter_21__4 (
               finalSumConv[15]), .filter_21__3 (finalSumConv[15]), .filter_21__2 (
               finalSumConv[15]), .filter_21__1 (finalSumConv[15]), .filter_21__0 (
               finalSumConv[15]), .filter_20__7 (finalSumConv[15]), .filter_20__6 (
               finalSumConv[15]), .filter_20__5 (finalSumConv[15]), .filter_20__4 (
               finalSumConv[15]), .filter_20__3 (finalSumConv[15]), .filter_20__2 (
               finalSumConv[15]), .filter_20__1 (finalSumConv[15]), .filter_20__0 (
               finalSumConv[15]), .filter_19__7 (finalSumConv[15]), .filter_19__6 (
               finalSumConv[15]), .filter_19__5 (finalSumConv[15]), .filter_19__4 (
               finalSumConv[15]), .filter_19__3 (finalSumConv[15]), .filter_19__2 (
               finalSumConv[15]), .filter_19__1 (finalSumConv[15]), .filter_19__0 (
               finalSumConv[15]), .filter_18__7 (finalSumConv[15]), .filter_18__6 (
               finalSumConv[15]), .filter_18__5 (finalSumConv[15]), .filter_18__4 (
               finalSumConv[15]), .filter_18__3 (finalSumConv[15]), .filter_18__2 (
               finalSumConv[15]), .filter_18__1 (finalSumConv[15]), .filter_18__0 (
               finalSumConv[15]), .filter_17__7 (finalSumConv[15]), .filter_17__6 (
               finalSumConv[15]), .filter_17__5 (finalSumConv[15]), .filter_17__4 (
               finalSumConv[15]), .filter_17__3 (finalSumConv[15]), .filter_17__2 (
               finalSumConv[15]), .filter_17__1 (finalSumConv[15]), .filter_17__0 (
               finalSumConv[15]), .filter_16__7 (finalSumConv[15]), .filter_16__6 (
               finalSumConv[15]), .filter_16__5 (finalSumConv[15]), .filter_16__4 (
               finalSumConv[15]), .filter_16__3 (finalSumConv[15]), .filter_16__2 (
               finalSumConv[15]), .filter_16__1 (finalSumConv[15]), .filter_16__0 (
               finalSumConv[15]), .filter_15__7 (finalSumConv[15]), .filter_15__6 (
               finalSumConv[15]), .filter_15__5 (finalSumConv[15]), .filter_15__4 (
               finalSumConv[15]), .filter_15__3 (finalSumConv[15]), .filter_15__2 (
               finalSumConv[15]), .filter_15__1 (finalSumConv[15]), .filter_15__0 (
               finalSumConv[15]), .filter_14__7 (finalSumConv[15]), .filter_14__6 (
               finalSumConv[15]), .filter_14__5 (finalSumConv[15]), .filter_14__4 (
               finalSumConv[15]), .filter_14__3 (finalSumConv[15]), .filter_14__2 (
               finalSumConv[15]), .filter_14__1 (finalSumConv[15]), .filter_14__0 (
               finalSumConv[15]), .filter_13__7 (finalSumConv[15]), .filter_13__6 (
               finalSumConv[15]), .filter_13__5 (finalSumConv[15]), .filter_13__4 (
               finalSumConv[15]), .filter_13__3 (finalSumConv[15]), .filter_13__2 (
               finalSumConv[15]), .filter_13__1 (finalSumConv[15]), .filter_13__0 (
               finalSumConv[15]), .filter_12__7 (finalSumConv[15]), .filter_12__6 (
               finalSumConv[15]), .filter_12__5 (finalSumConv[15]), .filter_12__4 (
               finalSumConv[15]), .filter_12__3 (finalSumConv[15]), .filter_12__2 (
               finalSumConv[15]), .filter_12__1 (finalSumConv[15]), .filter_12__0 (
               finalSumConv[15]), .filter_11__7 (finalSumConv[15]), .filter_11__6 (
               finalSumConv[15]), .filter_11__5 (finalSumConv[15]), .filter_11__4 (
               finalSumConv[15]), .filter_11__3 (finalSumConv[15]), .filter_11__2 (
               finalSumConv[15]), .filter_11__1 (finalSumConv[15]), .filter_11__0 (
               finalSumConv[15]), .filter_10__7 (finalSumConv[15]), .filter_10__6 (
               finalSumConv[15]), .filter_10__5 (finalSumConv[15]), .filter_10__4 (
               finalSumConv[15]), .filter_10__3 (finalSumConv[15]), .filter_10__2 (
               finalSumConv[15]), .filter_10__1 (finalSumConv[15]), .filter_10__0 (
               finalSumConv[15]), .filter_9__7 (finalSumConv[15]), .filter_9__6 (
               finalSumConv[15]), .filter_9__5 (finalSumConv[15]), .filter_9__4 (
               finalSumConv[15]), .filter_9__3 (finalSumConv[15]), .filter_9__2 (
               finalSumConv[15]), .filter_9__1 (finalSumConv[15]), .filter_9__0 (
               finalSumConv[15]), .filter_8__7 (finalSumConv[15]), .filter_8__6 (
               finalSumConv[15]), .filter_8__5 (finalSumConv[15]), .filter_8__4 (
               finalSumConv[15]), .filter_8__3 (finalSumConv[15]), .filter_8__2 (
               finalSumConv[15]), .filter_8__1 (finalSumConv[15]), .filter_8__0 (
               finalSumConv[15]), .filter_7__7 (finalSumConv[15]), .filter_7__6 (
               finalSumConv[15]), .filter_7__5 (finalSumConv[15]), .filter_7__4 (
               finalSumConv[15]), .filter_7__3 (finalSumConv[15]), .filter_7__2 (
               finalSumConv[15]), .filter_7__1 (finalSumConv[15]), .filter_7__0 (
               finalSumConv[15]), .filter_6__7 (finalSumConv[15]), .filter_6__6 (
               finalSumConv[15]), .filter_6__5 (finalSumConv[15]), .filter_6__4 (
               finalSumConv[15]), .filter_6__3 (finalSumConv[15]), .filter_6__2 (
               finalSumConv[15]), .filter_6__1 (finalSumConv[15]), .filter_6__0 (
               finalSumConv[15]), .filter_5__7 (finalSumConv[15]), .filter_5__6 (
               finalSumConv[15]), .filter_5__5 (finalSumConv[15]), .filter_5__4 (
               finalSumConv[15]), .filter_5__3 (finalSumConv[15]), .filter_5__2 (
               finalSumConv[15]), .filter_5__1 (finalSumConv[15]), .filter_5__0 (
               finalSumConv[15]), .filter_4__7 (finalSumConv[15]), .filter_4__6 (
               finalSumConv[15]), .filter_4__5 (finalSumConv[15]), .filter_4__4 (
               finalSumConv[15]), .filter_4__3 (finalSumConv[15]), .filter_4__2 (
               finalSumConv[15]), .filter_4__1 (finalSumConv[15]), .filter_4__0 (
               finalSumConv[15]), .filter_3__7 (finalSumConv[15]), .filter_3__6 (
               finalSumConv[15]), .filter_3__5 (finalSumConv[15]), .filter_3__4 (
               finalSumConv[15]), .filter_3__3 (finalSumConv[15]), .filter_3__2 (
               finalSumConv[15]), .filter_3__1 (finalSumConv[15]), .filter_3__0 (
               finalSumConv[15]), .filter_2__7 (finalSumConv[15]), .filter_2__6 (
               finalSumConv[15]), .filter_2__5 (finalSumConv[15]), .filter_2__4 (
               finalSumConv[15]), .filter_2__3 (finalSumConv[15]), .filter_2__2 (
               finalSumConv[15]), .filter_2__1 (finalSumConv[15]), .filter_2__0 (
               finalSumConv[15]), .filter_1__7 (finalSumConv[15]), .filter_1__6 (
               finalSumConv[15]), .filter_1__5 (finalSumConv[15]), .filter_1__4 (
               finalSumConv[15]), .filter_1__3 (finalSumConv[15]), .filter_1__2 (
               finalSumConv[15]), .filter_1__1 (finalSumConv[15]), .filter_1__0 (
               finalSumConv[15]), .filter_0__7 (finalSumConv[15]), .filter_0__6 (
               finalSumConv[15]), .filter_0__5 (finalSumConv[15]), .filter_0__4 (
               finalSumConv[15]), .filter_0__3 (finalSumConv[15]), .filter_0__2 (
               finalSumConv[15]), .filter_0__1 (finalSumConv[15]), .filter_0__0 (
               finalSumConv[15]), .window_24__15 (finalSumConv[15]), .window_24__14 (
               finalSumConv[15]), .window_24__13 (finalSumConv[15]), .window_24__12 (
               finalSumConv[15]), .window_24__11 (finalSumConv[15]), .window_24__10 (
               finalSumConv[15]), .window_24__9 (finalSumConv[15]), .window_24__8 (
               finalSumConv[15]), .window_24__7 (finalSumConv[15]), .window_24__6 (
               finalSumConv[15]), .window_24__5 (finalSumConv[15]), .window_24__4 (
               finalSumConv[15]), .window_24__3 (finalSumConv[15]), .window_24__2 (
               finalSumConv[15]), .window_24__1 (finalSumConv[15]), .window_24__0 (
               finalSumConv[15]), .window_23__15 (finalSumConv[15]), .window_23__14 (
               finalSumConv[15]), .window_23__13 (finalSumConv[15]), .window_23__12 (
               finalSumConv[15]), .window_23__11 (finalSumConv[15]), .window_23__10 (
               finalSumConv[15]), .window_23__9 (finalSumConv[15]), .window_23__8 (
               finalSumConv[15]), .window_23__7 (finalSumConv[15]), .window_23__6 (
               finalSumConv[15]), .window_23__5 (finalSumConv[15]), .window_23__4 (
               finalSumConv[15]), .window_23__3 (finalSumConv[15]), .window_23__2 (
               finalSumConv[15]), .window_23__1 (finalSumConv[15]), .window_23__0 (
               finalSumConv[15]), .window_22__15 (finalSumConv[15]), .window_22__14 (
               finalSumConv[15]), .window_22__13 (finalSumConv[15]), .window_22__12 (
               finalSumConv[15]), .window_22__11 (finalSumConv[15]), .window_22__10 (
               finalSumConv[15]), .window_22__9 (finalSumConv[15]), .window_22__8 (
               finalSumConv[15]), .window_22__7 (finalSumConv[15]), .window_22__6 (
               finalSumConv[15]), .window_22__5 (finalSumConv[15]), .window_22__4 (
               finalSumConv[15]), .window_22__3 (finalSumConv[15]), .window_22__2 (
               finalSumConv[15]), .window_22__1 (finalSumConv[15]), .window_22__0 (
               finalSumConv[15]), .window_21__15 (finalSumConv[15]), .window_21__14 (
               finalSumConv[15]), .window_21__13 (finalSumConv[15]), .window_21__12 (
               finalSumConv[15]), .window_21__11 (finalSumConv[15]), .window_21__10 (
               finalSumConv[15]), .window_21__9 (finalSumConv[15]), .window_21__8 (
               finalSumConv[15]), .window_21__7 (finalSumConv[15]), .window_21__6 (
               finalSumConv[15]), .window_21__5 (finalSumConv[15]), .window_21__4 (
               finalSumConv[15]), .window_21__3 (finalSumConv[15]), .window_21__2 (
               finalSumConv[15]), .window_21__1 (finalSumConv[15]), .window_21__0 (
               finalSumConv[15]), .window_20__15 (finalSumConv[15]), .window_20__14 (
               finalSumConv[15]), .window_20__13 (finalSumConv[15]), .window_20__12 (
               finalSumConv[15]), .window_20__11 (finalSumConv[15]), .window_20__10 (
               finalSumConv[15]), .window_20__9 (finalSumConv[15]), .window_20__8 (
               finalSumConv[15]), .window_20__7 (finalSumConv[15]), .window_20__6 (
               finalSumConv[15]), .window_20__5 (finalSumConv[15]), .window_20__4 (
               finalSumConv[15]), .window_20__3 (finalSumConv[15]), .window_20__2 (
               finalSumConv[15]), .window_20__1 (finalSumConv[15]), .window_20__0 (
               finalSumConv[15]), .window_19__15 (finalSumConv[15]), .window_19__14 (
               finalSumConv[15]), .window_19__13 (finalSumConv[15]), .window_19__12 (
               finalSumConv[15]), .window_19__11 (finalSumConv[15]), .window_19__10 (
               finalSumConv[15]), .window_19__9 (finalSumConv[15]), .window_19__8 (
               finalSumConv[15]), .window_19__7 (finalSumConv[15]), .window_19__6 (
               finalSumConv[15]), .window_19__5 (finalSumConv[15]), .window_19__4 (
               finalSumConv[15]), .window_19__3 (finalSumConv[15]), .window_19__2 (
               finalSumConv[15]), .window_19__1 (finalSumConv[15]), .window_19__0 (
               finalSumConv[15]), .window_18__15 (finalSumConv[15]), .window_18__14 (
               finalSumConv[15]), .window_18__13 (finalSumConv[15]), .window_18__12 (
               finalSumConv[15]), .window_18__11 (finalSumConv[15]), .window_18__10 (
               finalSumConv[15]), .window_18__9 (finalSumConv[15]), .window_18__8 (
               finalSumConv[15]), .window_18__7 (finalSumConv[15]), .window_18__6 (
               finalSumConv[15]), .window_18__5 (finalSumConv[15]), .window_18__4 (
               finalSumConv[15]), .window_18__3 (finalSumConv[15]), .window_18__2 (
               finalSumConv[15]), .window_18__1 (finalSumConv[15]), .window_18__0 (
               finalSumConv[15]), .window_17__15 (finalSumConv[15]), .window_17__14 (
               finalSumConv[15]), .window_17__13 (finalSumConv[15]), .window_17__12 (
               finalSumConv[15]), .window_17__11 (finalSumConv[15]), .window_17__10 (
               finalSumConv[15]), .window_17__9 (finalSumConv[15]), .window_17__8 (
               finalSumConv[15]), .window_17__7 (finalSumConv[15]), .window_17__6 (
               finalSumConv[15]), .window_17__5 (finalSumConv[15]), .window_17__4 (
               finalSumConv[15]), .window_17__3 (finalSumConv[15]), .window_17__2 (
               finalSumConv[15]), .window_17__1 (finalSumConv[15]), .window_17__0 (
               finalSumConv[15]), .window_16__15 (finalSumConv[15]), .window_16__14 (
               finalSumConv[15]), .window_16__13 (finalSumConv[15]), .window_16__12 (
               finalSumConv[15]), .window_16__11 (finalSumConv[15]), .window_16__10 (
               finalSumConv[15]), .window_16__9 (finalSumConv[15]), .window_16__8 (
               finalSumConv[15]), .window_16__7 (finalSumConv[15]), .window_16__6 (
               finalSumConv[15]), .window_16__5 (finalSumConv[15]), .window_16__4 (
               finalSumConv[15]), .window_16__3 (finalSumConv[15]), .window_16__2 (
               finalSumConv[15]), .window_16__1 (finalSumConv[15]), .window_16__0 (
               finalSumConv[15]), .window_15__15 (finalSumConv[15]), .window_15__14 (
               finalSumConv[15]), .window_15__13 (finalSumConv[15]), .window_15__12 (
               finalSumConv[15]), .window_15__11 (finalSumConv[15]), .window_15__10 (
               finalSumConv[15]), .window_15__9 (finalSumConv[15]), .window_15__8 (
               finalSumConv[15]), .window_15__7 (finalSumConv[15]), .window_15__6 (
               finalSumConv[15]), .window_15__5 (finalSumConv[15]), .window_15__4 (
               finalSumConv[15]), .window_15__3 (finalSumConv[15]), .window_15__2 (
               finalSumConv[15]), .window_15__1 (finalSumConv[15]), .window_15__0 (
               finalSumConv[15]), .window_14__15 (finalSumConv[15]), .window_14__14 (
               finalSumConv[15]), .window_14__13 (finalSumConv[15]), .window_14__12 (
               finalSumConv[15]), .window_14__11 (finalSumConv[15]), .window_14__10 (
               finalSumConv[15]), .window_14__9 (finalSumConv[15]), .window_14__8 (
               finalSumConv[15]), .window_14__7 (finalSumConv[15]), .window_14__6 (
               finalSumConv[15]), .window_14__5 (finalSumConv[15]), .window_14__4 (
               finalSumConv[15]), .window_14__3 (finalSumConv[15]), .window_14__2 (
               finalSumConv[15]), .window_14__1 (finalSumConv[15]), .window_14__0 (
               finalSumConv[15]), .window_13__15 (finalSumConv[15]), .window_13__14 (
               finalSumConv[15]), .window_13__13 (finalSumConv[15]), .window_13__12 (
               finalSumConv[15]), .window_13__11 (finalSumConv[15]), .window_13__10 (
               finalSumConv[15]), .window_13__9 (finalSumConv[15]), .window_13__8 (
               finalSumConv[15]), .window_13__7 (finalSumConv[15]), .window_13__6 (
               finalSumConv[15]), .window_13__5 (finalSumConv[15]), .window_13__4 (
               finalSumConv[15]), .window_13__3 (finalSumConv[15]), .window_13__2 (
               finalSumConv[15]), .window_13__1 (finalSumConv[15]), .window_13__0 (
               finalSumConv[15]), .window_12__15 (finalSumConv[15]), .window_12__14 (
               finalSumConv[15]), .window_12__13 (finalSumConv[15]), .window_12__12 (
               finalSumConv[15]), .window_12__11 (finalSumConv[15]), .window_12__10 (
               finalSumConv[15]), .window_12__9 (finalSumConv[15]), .window_12__8 (
               finalSumConv[15]), .window_12__7 (finalSumConv[15]), .window_12__6 (
               finalSumConv[15]), .window_12__5 (finalSumConv[15]), .window_12__4 (
               finalSumConv[15]), .window_12__3 (finalSumConv[15]), .window_12__2 (
               finalSumConv[15]), .window_12__1 (finalSumConv[15]), .window_12__0 (
               finalSumConv[15]), .window_11__15 (finalSumConv[15]), .window_11__14 (
               finalSumConv[15]), .window_11__13 (finalSumConv[15]), .window_11__12 (
               finalSumConv[15]), .window_11__11 (finalSumConv[15]), .window_11__10 (
               finalSumConv[15]), .window_11__9 (finalSumConv[15]), .window_11__8 (
               finalSumConv[15]), .window_11__7 (finalSumConv[15]), .window_11__6 (
               finalSumConv[15]), .window_11__5 (finalSumConv[15]), .window_11__4 (
               finalSumConv[15]), .window_11__3 (finalSumConv[15]), .window_11__2 (
               finalSumConv[15]), .window_11__1 (finalSumConv[15]), .window_11__0 (
               finalSumConv[15]), .window_10__15 (finalSumConv[15]), .window_10__14 (
               finalSumConv[15]), .window_10__13 (finalSumConv[15]), .window_10__12 (
               finalSumConv[15]), .window_10__11 (finalSumConv[15]), .window_10__10 (
               finalSumConv[15]), .window_10__9 (finalSumConv[15]), .window_10__8 (
               finalSumConv[15]), .window_10__7 (finalSumConv[15]), .window_10__6 (
               finalSumConv[15]), .window_10__5 (finalSumConv[15]), .window_10__4 (
               finalSumConv[15]), .window_10__3 (finalSumConv[15]), .window_10__2 (
               finalSumConv[15]), .window_10__1 (finalSumConv[15]), .window_10__0 (
               finalSumConv[15]), .window_9__15 (finalSumConv[15]), .window_9__14 (
               finalSumConv[15]), .window_9__13 (finalSumConv[15]), .window_9__12 (
               finalSumConv[15]), .window_9__11 (finalSumConv[15]), .window_9__10 (
               finalSumConv[15]), .window_9__9 (finalSumConv[15]), .window_9__8 (
               finalSumConv[15]), .window_9__7 (finalSumConv[15]), .window_9__6 (
               finalSumConv[15]), .window_9__5 (finalSumConv[15]), .window_9__4 (
               finalSumConv[15]), .window_9__3 (finalSumConv[15]), .window_9__2 (
               finalSumConv[15]), .window_9__1 (finalSumConv[15]), .window_9__0 (
               finalSumConv[15]), .window_8__15 (finalSumConv[15]), .window_8__14 (
               finalSumConv[15]), .window_8__13 (finalSumConv[15]), .window_8__12 (
               finalSumConv[15]), .window_8__11 (finalSumConv[15]), .window_8__10 (
               finalSumConv[15]), .window_8__9 (finalSumConv[15]), .window_8__8 (
               finalSumConv[15]), .window_8__7 (finalSumConv[15]), .window_8__6 (
               finalSumConv[15]), .window_8__5 (finalSumConv[15]), .window_8__4 (
               finalSumConv[15]), .window_8__3 (finalSumConv[15]), .window_8__2 (
               finalSumConv[15]), .window_8__1 (finalSumConv[15]), .window_8__0 (
               finalSumConv[15]), .window_7__15 (finalSumConv[15]), .window_7__14 (
               finalSumConv[15]), .window_7__13 (finalSumConv[15]), .window_7__12 (
               finalSumConv[15]), .window_7__11 (finalSumConv[15]), .window_7__10 (
               finalSumConv[15]), .window_7__9 (finalSumConv[15]), .window_7__8 (
               finalSumConv[15]), .window_7__7 (finalSumConv[15]), .window_7__6 (
               finalSumConv[15]), .window_7__5 (finalSumConv[15]), .window_7__4 (
               finalSumConv[15]), .window_7__3 (finalSumConv[15]), .window_7__2 (
               finalSumConv[15]), .window_7__1 (finalSumConv[15]), .window_7__0 (
               finalSumConv[15]), .window_6__15 (finalSumConv[15]), .window_6__14 (
               finalSumConv[15]), .window_6__13 (finalSumConv[15]), .window_6__12 (
               finalSumConv[15]), .window_6__11 (finalSumConv[15]), .window_6__10 (
               finalSumConv[15]), .window_6__9 (finalSumConv[15]), .window_6__8 (
               finalSumConv[15]), .window_6__7 (finalSumConv[15]), .window_6__6 (
               finalSumConv[15]), .window_6__5 (finalSumConv[15]), .window_6__4 (
               finalSumConv[15]), .window_6__3 (finalSumConv[15]), .window_6__2 (
               finalSumConv[15]), .window_6__1 (finalSumConv[15]), .window_6__0 (
               finalSumConv[15]), .window_5__15 (finalSumConv[15]), .window_5__14 (
               finalSumConv[15]), .window_5__13 (finalSumConv[15]), .window_5__12 (
               finalSumConv[15]), .window_5__11 (finalSumConv[15]), .window_5__10 (
               finalSumConv[15]), .window_5__9 (finalSumConv[15]), .window_5__8 (
               finalSumConv[15]), .window_5__7 (finalSumConv[15]), .window_5__6 (
               finalSumConv[15]), .window_5__5 (finalSumConv[15]), .window_5__4 (
               finalSumConv[15]), .window_5__3 (finalSumConv[15]), .window_5__2 (
               finalSumConv[15]), .window_5__1 (finalSumConv[15]), .window_5__0 (
               finalSumConv[15]), .window_4__15 (finalSumConv[15]), .window_4__14 (
               finalSumConv[15]), .window_4__13 (finalSumConv[15]), .window_4__12 (
               finalSumConv[15]), .window_4__11 (finalSumConv[15]), .window_4__10 (
               finalSumConv[15]), .window_4__9 (finalSumConv[15]), .window_4__8 (
               finalSumConv[15]), .window_4__7 (finalSumConv[15]), .window_4__6 (
               finalSumConv[15]), .window_4__5 (finalSumConv[15]), .window_4__4 (
               finalSumConv[15]), .window_4__3 (finalSumConv[15]), .window_4__2 (
               finalSumConv[15]), .window_4__1 (finalSumConv[15]), .window_4__0 (
               finalSumConv[15]), .window_3__15 (finalSumConv[15]), .window_3__14 (
               finalSumConv[15]), .window_3__13 (finalSumConv[15]), .window_3__12 (
               finalSumConv[15]), .window_3__11 (finalSumConv[15]), .window_3__10 (
               finalSumConv[15]), .window_3__9 (finalSumConv[15]), .window_3__8 (
               finalSumConv[15]), .window_3__7 (finalSumConv[15]), .window_3__6 (
               finalSumConv[15]), .window_3__5 (finalSumConv[15]), .window_3__4 (
               finalSumConv[15]), .window_3__3 (finalSumConv[15]), .window_3__2 (
               finalSumConv[15]), .window_3__1 (finalSumConv[15]), .window_3__0 (
               finalSumConv[15]), .window_2__15 (finalSumConv[15]), .window_2__14 (
               finalSumConv[15]), .window_2__13 (finalSumConv[15]), .window_2__12 (
               finalSumConv[15]), .window_2__11 (finalSumConv[15]), .window_2__10 (
               finalSumConv[15]), .window_2__9 (finalSumConv[15]), .window_2__8 (
               finalSumConv[15]), .window_2__7 (finalSumConv[15]), .window_2__6 (
               finalSumConv[15]), .window_2__5 (finalSumConv[15]), .window_2__4 (
               finalSumConv[15]), .window_2__3 (finalSumConv[15]), .window_2__2 (
               finalSumConv[15]), .window_2__1 (finalSumConv[15]), .window_2__0 (
               finalSumConv[15]), .window_1__15 (finalSumConv[15]), .window_1__14 (
               finalSumConv[15]), .window_1__13 (finalSumConv[15]), .window_1__12 (
               finalSumConv[15]), .window_1__11 (finalSumConv[15]), .window_1__10 (
               finalSumConv[15]), .window_1__9 (finalSumConv[15]), .window_1__8 (
               finalSumConv[15]), .window_1__7 (finalSumConv[15]), .window_1__6 (
               finalSumConv[15]), .window_1__5 (finalSumConv[15]), .window_1__4 (
               finalSumConv[15]), .window_1__3 (finalSumConv[15]), .window_1__2 (
               finalSumConv[15]), .window_1__1 (finalSumConv[15]), .window_1__0 (
               finalSumConv[15]), .window_0__15 (finalSumConv[15]), .window_0__14 (
               finalSumConv[15]), .window_0__13 (finalSumConv[15]), .window_0__12 (
               finalSumConv[15]), .window_0__11 (finalSumConv[15]), .window_0__10 (
               finalSumConv[15]), .window_0__9 (finalSumConv[15]), .window_0__8 (
               finalSumConv[15]), .window_0__7 (finalSumConv[15]), .window_0__6 (
               finalSumConv[15]), .window_0__5 (finalSumConv[15]), .window_0__4 (
               finalSumConv[15]), .window_0__3 (finalSumConv[15]), .window_0__2 (
               finalSumConv[15]), .window_0__1 (finalSumConv[15]), .window_0__0 (
               finalSumConv[15]), .outputs_24__15 (\$dummy [0]), .outputs_24__14 (
               \$dummy [1]), .outputs_24__13 (\$dummy [2]), .outputs_24__12 (
               \$dummy [3]), .outputs_24__11 (\$dummy [4]), .outputs_24__10 (
               \$dummy [5]), .outputs_24__9 (\$dummy [6]), .outputs_24__8 (
               \$dummy [7]), .outputs_24__7 (\$dummy [8]), .outputs_24__6 (
               \$dummy [9]), .outputs_24__5 (\$dummy [10]), .outputs_24__4 (
               \$dummy [11]), .outputs_24__3 (\$dummy [12]), .outputs_24__2 (
               \$dummy [13]), .outputs_24__1 (\$dummy [14]), .outputs_24__0 (
               \$dummy [15]), .outputs_23__15 (\$dummy [16]), .outputs_23__14 (
               \$dummy [17]), .outputs_23__13 (\$dummy [18]), .outputs_23__12 (
               \$dummy [19]), .outputs_23__11 (\$dummy [20]), .outputs_23__10 (
               \$dummy [21]), .outputs_23__9 (\$dummy [22]), .outputs_23__8 (
               \$dummy [23]), .outputs_23__7 (\$dummy [24]), .outputs_23__6 (
               \$dummy [25]), .outputs_23__5 (\$dummy [26]), .outputs_23__4 (
               \$dummy [27]), .outputs_23__3 (\$dummy [28]), .outputs_23__2 (
               \$dummy [29]), .outputs_23__1 (\$dummy [30]), .outputs_23__0 (
               \$dummy [31]), .outputs_22__15 (\$dummy [32]), .outputs_22__14 (
               \$dummy [33]), .outputs_22__13 (\$dummy [34]), .outputs_22__12 (
               \$dummy [35]), .outputs_22__11 (\$dummy [36]), .outputs_22__10 (
               \$dummy [37]), .outputs_22__9 (\$dummy [38]), .outputs_22__8 (
               \$dummy [39]), .outputs_22__7 (\$dummy [40]), .outputs_22__6 (
               \$dummy [41]), .outputs_22__5 (\$dummy [42]), .outputs_22__4 (
               \$dummy [43]), .outputs_22__3 (\$dummy [44]), .outputs_22__2 (
               \$dummy [45]), .outputs_22__1 (\$dummy [46]), .outputs_22__0 (
               \$dummy [47]), .outputs_21__15 (\$dummy [48]), .outputs_21__14 (
               \$dummy [49]), .outputs_21__13 (\$dummy [50]), .outputs_21__12 (
               \$dummy [51]), .outputs_21__11 (\$dummy [52]), .outputs_21__10 (
               \$dummy [53]), .outputs_21__9 (\$dummy [54]), .outputs_21__8 (
               \$dummy [55]), .outputs_21__7 (\$dummy [56]), .outputs_21__6 (
               \$dummy [57]), .outputs_21__5 (\$dummy [58]), .outputs_21__4 (
               \$dummy [59]), .outputs_21__3 (\$dummy [60]), .outputs_21__2 (
               \$dummy [61]), .outputs_21__1 (\$dummy [62]), .outputs_21__0 (
               \$dummy [63]), .outputs_20__15 (\$dummy [64]), .outputs_20__14 (
               \$dummy [65]), .outputs_20__13 (\$dummy [66]), .outputs_20__12 (
               \$dummy [67]), .outputs_20__11 (\$dummy [68]), .outputs_20__10 (
               \$dummy [69]), .outputs_20__9 (\$dummy [70]), .outputs_20__8 (
               \$dummy [71]), .outputs_20__7 (\$dummy [72]), .outputs_20__6 (
               \$dummy [73]), .outputs_20__5 (\$dummy [74]), .outputs_20__4 (
               \$dummy [75]), .outputs_20__3 (\$dummy [76]), .outputs_20__2 (
               \$dummy [77]), .outputs_20__1 (\$dummy [78]), .outputs_20__0 (
               \$dummy [79]), .outputs_19__15 (\$dummy [80]), .outputs_19__14 (
               \$dummy [81]), .outputs_19__13 (\$dummy [82]), .outputs_19__12 (
               \$dummy [83]), .outputs_19__11 (\$dummy [84]), .outputs_19__10 (
               \$dummy [85]), .outputs_19__9 (\$dummy [86]), .outputs_19__8 (
               \$dummy [87]), .outputs_19__7 (\$dummy [88]), .outputs_19__6 (
               \$dummy [89]), .outputs_19__5 (\$dummy [90]), .outputs_19__4 (
               \$dummy [91]), .outputs_19__3 (\$dummy [92]), .outputs_19__2 (
               \$dummy [93]), .outputs_19__1 (\$dummy [94]), .outputs_19__0 (
               \$dummy [95]), .outputs_18__15 (\$dummy [96]), .outputs_18__14 (
               \$dummy [97]), .outputs_18__13 (\$dummy [98]), .outputs_18__12 (
               \$dummy [99]), .outputs_18__11 (\$dummy [100]), .outputs_18__10 (
               \$dummy [101]), .outputs_18__9 (\$dummy [102]), .outputs_18__8 (
               \$dummy [103]), .outputs_18__7 (\$dummy [104]), .outputs_18__6 (
               \$dummy [105]), .outputs_18__5 (\$dummy [106]), .outputs_18__4 (
               \$dummy [107]), .outputs_18__3 (\$dummy [108]), .outputs_18__2 (
               \$dummy [109]), .outputs_18__1 (\$dummy [110]), .outputs_18__0 (
               \$dummy [111]), .outputs_17__15 (\$dummy [112]), .outputs_17__14 (
               \$dummy [113]), .outputs_17__13 (\$dummy [114]), .outputs_17__12 (
               \$dummy [115]), .outputs_17__11 (\$dummy [116]), .outputs_17__10 (
               \$dummy [117]), .outputs_17__9 (\$dummy [118]), .outputs_17__8 (
               \$dummy [119]), .outputs_17__7 (\$dummy [120]), .outputs_17__6 (
               \$dummy [121]), .outputs_17__5 (\$dummy [122]), .outputs_17__4 (
               \$dummy [123]), .outputs_17__3 (\$dummy [124]), .outputs_17__2 (
               \$dummy [125]), .outputs_17__1 (\$dummy [126]), .outputs_17__0 (
               \$dummy [127]), .outputs_16__15 (\$dummy [128]), .outputs_16__14 (
               \$dummy [129]), .outputs_16__13 (\$dummy [130]), .outputs_16__12 (
               \$dummy [131]), .outputs_16__11 (\$dummy [132]), .outputs_16__10 (
               \$dummy [133]), .outputs_16__9 (\$dummy [134]), .outputs_16__8 (
               \$dummy [135]), .outputs_16__7 (\$dummy [136]), .outputs_16__6 (
               \$dummy [137]), .outputs_16__5 (\$dummy [138]), .outputs_16__4 (
               \$dummy [139]), .outputs_16__3 (\$dummy [140]), .outputs_16__2 (
               \$dummy [141]), .outputs_16__1 (\$dummy [142]), .outputs_16__0 (
               \$dummy [143]), .outputs_15__15 (\$dummy [144]), .outputs_15__14 (
               \$dummy [145]), .outputs_15__13 (\$dummy [146]), .outputs_15__12 (
               \$dummy [147]), .outputs_15__11 (\$dummy [148]), .outputs_15__10 (
               \$dummy [149]), .outputs_15__9 (\$dummy [150]), .outputs_15__8 (
               \$dummy [151]), .outputs_15__7 (\$dummy [152]), .outputs_15__6 (
               \$dummy [153]), .outputs_15__5 (\$dummy [154]), .outputs_15__4 (
               \$dummy [155]), .outputs_15__3 (\$dummy [156]), .outputs_15__2 (
               \$dummy [157]), .outputs_15__1 (\$dummy [158]), .outputs_15__0 (
               \$dummy [159]), .outputs_14__15 (\$dummy [160]), .outputs_14__14 (
               \$dummy [161]), .outputs_14__13 (\$dummy [162]), .outputs_14__12 (
               \$dummy [163]), .outputs_14__11 (\$dummy [164]), .outputs_14__10 (
               \$dummy [165]), .outputs_14__9 (\$dummy [166]), .outputs_14__8 (
               \$dummy [167]), .outputs_14__7 (\$dummy [168]), .outputs_14__6 (
               \$dummy [169]), .outputs_14__5 (\$dummy [170]), .outputs_14__4 (
               \$dummy [171]), .outputs_14__3 (\$dummy [172]), .outputs_14__2 (
               \$dummy [173]), .outputs_14__1 (\$dummy [174]), .outputs_14__0 (
               \$dummy [175]), .outputs_13__15 (\$dummy [176]), .outputs_13__14 (
               \$dummy [177]), .outputs_13__13 (\$dummy [178]), .outputs_13__12 (
               \$dummy [179]), .outputs_13__11 (\$dummy [180]), .outputs_13__10 (
               \$dummy [181]), .outputs_13__9 (\$dummy [182]), .outputs_13__8 (
               \$dummy [183]), .outputs_13__7 (\$dummy [184]), .outputs_13__6 (
               \$dummy [185]), .outputs_13__5 (\$dummy [186]), .outputs_13__4 (
               \$dummy [187]), .outputs_13__3 (\$dummy [188]), .outputs_13__2 (
               \$dummy [189]), .outputs_13__1 (\$dummy [190]), .outputs_13__0 (
               \$dummy [191]), .outputs_12__15 (\$dummy [192]), .outputs_12__14 (
               \$dummy [193]), .outputs_12__13 (\$dummy [194]), .outputs_12__12 (
               \$dummy [195]), .outputs_12__11 (\$dummy [196]), .outputs_12__10 (
               \$dummy [197]), .outputs_12__9 (\$dummy [198]), .outputs_12__8 (
               \$dummy [199]), .outputs_12__7 (\$dummy [200]), .outputs_12__6 (
               \$dummy [201]), .outputs_12__5 (\$dummy [202]), .outputs_12__4 (
               \$dummy [203]), .outputs_12__3 (\$dummy [204]), .outputs_12__2 (
               \$dummy [205]), .outputs_12__1 (\$dummy [206]), .outputs_12__0 (
               \$dummy [207]), .outputs_11__15 (\$dummy [208]), .outputs_11__14 (
               \$dummy [209]), .outputs_11__13 (\$dummy [210]), .outputs_11__12 (
               \$dummy [211]), .outputs_11__11 (\$dummy [212]), .outputs_11__10 (
               \$dummy [213]), .outputs_11__9 (\$dummy [214]), .outputs_11__8 (
               \$dummy [215]), .outputs_11__7 (\$dummy [216]), .outputs_11__6 (
               \$dummy [217]), .outputs_11__5 (\$dummy [218]), .outputs_11__4 (
               \$dummy [219]), .outputs_11__3 (\$dummy [220]), .outputs_11__2 (
               \$dummy [221]), .outputs_11__1 (\$dummy [222]), .outputs_11__0 (
               \$dummy [223]), .outputs_10__15 (\$dummy [224]), .outputs_10__14 (
               \$dummy [225]), .outputs_10__13 (\$dummy [226]), .outputs_10__12 (
               \$dummy [227]), .outputs_10__11 (\$dummy [228]), .outputs_10__10 (
               \$dummy [229]), .outputs_10__9 (\$dummy [230]), .outputs_10__8 (
               \$dummy [231]), .outputs_10__7 (\$dummy [232]), .outputs_10__6 (
               \$dummy [233]), .outputs_10__5 (\$dummy [234]), .outputs_10__4 (
               \$dummy [235]), .outputs_10__3 (\$dummy [236]), .outputs_10__2 (
               \$dummy [237]), .outputs_10__1 (\$dummy [238]), .outputs_10__0 (
               \$dummy [239]), .outputs_9__15 (\$dummy [240]), .outputs_9__14 (
               \$dummy [241]), .outputs_9__13 (\$dummy [242]), .outputs_9__12 (
               \$dummy [243]), .outputs_9__11 (\$dummy [244]), .outputs_9__10 (
               \$dummy [245]), .outputs_9__9 (\$dummy [246]), .outputs_9__8 (
               \$dummy [247]), .outputs_9__7 (\$dummy [248]), .outputs_9__6 (
               \$dummy [249]), .outputs_9__5 (\$dummy [250]), .outputs_9__4 (
               \$dummy [251]), .outputs_9__3 (\$dummy [252]), .outputs_9__2 (
               \$dummy [253]), .outputs_9__1 (\$dummy [254]), .outputs_9__0 (
               \$dummy [255]), .outputs_8__15 (\$dummy [256]), .outputs_8__14 (
               \$dummy [257]), .outputs_8__13 (\$dummy [258]), .outputs_8__12 (
               \$dummy [259]), .outputs_8__11 (\$dummy [260]), .outputs_8__10 (
               \$dummy [261]), .outputs_8__9 (\$dummy [262]), .outputs_8__8 (
               \$dummy [263]), .outputs_8__7 (\$dummy [264]), .outputs_8__6 (
               \$dummy [265]), .outputs_8__5 (\$dummy [266]), .outputs_8__4 (
               \$dummy [267]), .outputs_8__3 (\$dummy [268]), .outputs_8__2 (
               \$dummy [269]), .outputs_8__1 (\$dummy [270]), .outputs_8__0 (
               \$dummy [271]), .outputs_7__15 (\$dummy [272]), .outputs_7__14 (
               \$dummy [273]), .outputs_7__13 (\$dummy [274]), .outputs_7__12 (
               \$dummy [275]), .outputs_7__11 (\$dummy [276]), .outputs_7__10 (
               \$dummy [277]), .outputs_7__9 (\$dummy [278]), .outputs_7__8 (
               \$dummy [279]), .outputs_7__7 (\$dummy [280]), .outputs_7__6 (
               \$dummy [281]), .outputs_7__5 (\$dummy [282]), .outputs_7__4 (
               \$dummy [283]), .outputs_7__3 (\$dummy [284]), .outputs_7__2 (
               \$dummy [285]), .outputs_7__1 (\$dummy [286]), .outputs_7__0 (
               \$dummy [287]), .outputs_6__15 (\$dummy [288]), .outputs_6__14 (
               \$dummy [289]), .outputs_6__13 (\$dummy [290]), .outputs_6__12 (
               \$dummy [291]), .outputs_6__11 (\$dummy [292]), .outputs_6__10 (
               \$dummy [293]), .outputs_6__9 (\$dummy [294]), .outputs_6__8 (
               \$dummy [295]), .outputs_6__7 (\$dummy [296]), .outputs_6__6 (
               \$dummy [297]), .outputs_6__5 (\$dummy [298]), .outputs_6__4 (
               \$dummy [299]), .outputs_6__3 (\$dummy [300]), .outputs_6__2 (
               \$dummy [301]), .outputs_6__1 (\$dummy [302]), .outputs_6__0 (
               \$dummy [303]), .outputs_5__15 (\$dummy [304]), .outputs_5__14 (
               \$dummy [305]), .outputs_5__13 (\$dummy [306]), .outputs_5__12 (
               \$dummy [307]), .outputs_5__11 (\$dummy [308]), .outputs_5__10 (
               \$dummy [309]), .outputs_5__9 (\$dummy [310]), .outputs_5__8 (
               \$dummy [311]), .outputs_5__7 (\$dummy [312]), .outputs_5__6 (
               \$dummy [313]), .outputs_5__5 (\$dummy [314]), .outputs_5__4 (
               \$dummy [315]), .outputs_5__3 (\$dummy [316]), .outputs_5__2 (
               \$dummy [317]), .outputs_5__1 (\$dummy [318]), .outputs_5__0 (
               \$dummy [319]), .outputs_4__15 (\$dummy [320]), .outputs_4__14 (
               \$dummy [321]), .outputs_4__13 (\$dummy [322]), .outputs_4__12 (
               \$dummy [323]), .outputs_4__11 (\$dummy [324]), .outputs_4__10 (
               \$dummy [325]), .outputs_4__9 (\$dummy [326]), .outputs_4__8 (
               \$dummy [327]), .outputs_4__7 (\$dummy [328]), .outputs_4__6 (
               \$dummy [329]), .outputs_4__5 (\$dummy [330]), .outputs_4__4 (
               \$dummy [331]), .outputs_4__3 (\$dummy [332]), .outputs_4__2 (
               \$dummy [333]), .outputs_4__1 (\$dummy [334]), .outputs_4__0 (
               \$dummy [335]), .outputs_3__15 (\$dummy [336]), .outputs_3__14 (
               \$dummy [337]), .outputs_3__13 (\$dummy [338]), .outputs_3__12 (
               \$dummy [339]), .outputs_3__11 (\$dummy [340]), .outputs_3__10 (
               \$dummy [341]), .outputs_3__9 (\$dummy [342]), .outputs_3__8 (
               \$dummy [343]), .outputs_3__7 (\$dummy [344]), .outputs_3__6 (
               \$dummy [345]), .outputs_3__5 (\$dummy [346]), .outputs_3__4 (
               \$dummy [347]), .outputs_3__3 (\$dummy [348]), .outputs_3__2 (
               \$dummy [349]), .outputs_3__1 (\$dummy [350]), .outputs_3__0 (
               \$dummy [351]), .outputs_2__15 (\$dummy [352]), .outputs_2__14 (
               \$dummy [353]), .outputs_2__13 (\$dummy [354]), .outputs_2__12 (
               \$dummy [355]), .outputs_2__11 (\$dummy [356]), .outputs_2__10 (
               \$dummy [357]), .outputs_2__9 (\$dummy [358]), .outputs_2__8 (
               \$dummy [359]), .outputs_2__7 (\$dummy [360]), .outputs_2__6 (
               \$dummy [361]), .outputs_2__5 (\$dummy [362]), .outputs_2__4 (
               \$dummy [363]), .outputs_2__3 (\$dummy [364]), .outputs_2__2 (
               \$dummy [365]), .outputs_2__1 (\$dummy [366]), .outputs_2__0 (
               \$dummy [367]), .outputs_1__15 (\$dummy [368]), .outputs_1__14 (
               \$dummy [369]), .outputs_1__13 (\$dummy [370]), .outputs_1__12 (
               \$dummy [371]), .outputs_1__11 (\$dummy [372]), .outputs_1__10 (
               \$dummy [373]), .outputs_1__9 (\$dummy [374]), .outputs_1__8 (
               \$dummy [375]), .outputs_1__7 (\$dummy [376]), .outputs_1__6 (
               \$dummy [377]), .outputs_1__5 (\$dummy [378]), .outputs_1__4 (
               \$dummy [379]), .outputs_1__3 (\$dummy [380]), .outputs_1__2 (
               \$dummy [381]), .outputs_1__1 (\$dummy [382]), .outputs_1__0 (
               \$dummy [383]), .outputs_0__15 (\$dummy [384]), .outputs_0__14 (
               \$dummy [385]), .outputs_0__13 (\$dummy [386]), .outputs_0__12 (
               \$dummy [387]), .outputs_0__11 (\$dummy [388]), .outputs_0__10 (
               \$dummy [389]), .outputs_0__9 (\$dummy [390]), .outputs_0__8 (
               \$dummy [391]), .outputs_0__7 (\$dummy [392]), .outputs_0__6 (
               \$dummy [393]), .outputs_0__5 (\$dummy [394]), .outputs_0__4 (
               \$dummy [395]), .outputs_0__3 (\$dummy [396]), .outputs_0__2 (
               \$dummy [397]), .outputs_0__1 (\$dummy [398]), .outputs_0__0 (
               \$dummy [399]), .clk (clk), .start (start), .rst (rst), .doneOut (
               doneMul), .workingOut (\$dummy [400])) ;
    fake_gnd ix44 (.Y (finalSumConv[15])) ;
    inv01 ix1 (.Y (doneCores), .A (nx54)) ;
    nor02_2x ix55 (.Y (nx54), .A0 (layerType), .A1 (doneMul)) ;
endmodule


module CNNMuls_25 ( filter_24__7, filter_24__6, filter_24__5, filter_24__4, 
                    filter_24__3, filter_24__2, filter_24__1, filter_24__0, 
                    filter_23__7, filter_23__6, filter_23__5, filter_23__4, 
                    filter_23__3, filter_23__2, filter_23__1, filter_23__0, 
                    filter_22__7, filter_22__6, filter_22__5, filter_22__4, 
                    filter_22__3, filter_22__2, filter_22__1, filter_22__0, 
                    filter_21__7, filter_21__6, filter_21__5, filter_21__4, 
                    filter_21__3, filter_21__2, filter_21__1, filter_21__0, 
                    filter_20__7, filter_20__6, filter_20__5, filter_20__4, 
                    filter_20__3, filter_20__2, filter_20__1, filter_20__0, 
                    filter_19__7, filter_19__6, filter_19__5, filter_19__4, 
                    filter_19__3, filter_19__2, filter_19__1, filter_19__0, 
                    filter_18__7, filter_18__6, filter_18__5, filter_18__4, 
                    filter_18__3, filter_18__2, filter_18__1, filter_18__0, 
                    filter_17__7, filter_17__6, filter_17__5, filter_17__4, 
                    filter_17__3, filter_17__2, filter_17__1, filter_17__0, 
                    filter_16__7, filter_16__6, filter_16__5, filter_16__4, 
                    filter_16__3, filter_16__2, filter_16__1, filter_16__0, 
                    filter_15__7, filter_15__6, filter_15__5, filter_15__4, 
                    filter_15__3, filter_15__2, filter_15__1, filter_15__0, 
                    filter_14__7, filter_14__6, filter_14__5, filter_14__4, 
                    filter_14__3, filter_14__2, filter_14__1, filter_14__0, 
                    filter_13__7, filter_13__6, filter_13__5, filter_13__4, 
                    filter_13__3, filter_13__2, filter_13__1, filter_13__0, 
                    filter_12__7, filter_12__6, filter_12__5, filter_12__4, 
                    filter_12__3, filter_12__2, filter_12__1, filter_12__0, 
                    filter_11__7, filter_11__6, filter_11__5, filter_11__4, 
                    filter_11__3, filter_11__2, filter_11__1, filter_11__0, 
                    filter_10__7, filter_10__6, filter_10__5, filter_10__4, 
                    filter_10__3, filter_10__2, filter_10__1, filter_10__0, 
                    filter_9__7, filter_9__6, filter_9__5, filter_9__4, 
                    filter_9__3, filter_9__2, filter_9__1, filter_9__0, 
                    filter_8__7, filter_8__6, filter_8__5, filter_8__4, 
                    filter_8__3, filter_8__2, filter_8__1, filter_8__0, 
                    filter_7__7, filter_7__6, filter_7__5, filter_7__4, 
                    filter_7__3, filter_7__2, filter_7__1, filter_7__0, 
                    filter_6__7, filter_6__6, filter_6__5, filter_6__4, 
                    filter_6__3, filter_6__2, filter_6__1, filter_6__0, 
                    filter_5__7, filter_5__6, filter_5__5, filter_5__4, 
                    filter_5__3, filter_5__2, filter_5__1, filter_5__0, 
                    filter_4__7, filter_4__6, filter_4__5, filter_4__4, 
                    filter_4__3, filter_4__2, filter_4__1, filter_4__0, 
                    filter_3__7, filter_3__6, filter_3__5, filter_3__4, 
                    filter_3__3, filter_3__2, filter_3__1, filter_3__0, 
                    filter_2__7, filter_2__6, filter_2__5, filter_2__4, 
                    filter_2__3, filter_2__2, filter_2__1, filter_2__0, 
                    filter_1__7, filter_1__6, filter_1__5, filter_1__4, 
                    filter_1__3, filter_1__2, filter_1__1, filter_1__0, 
                    filter_0__7, filter_0__6, filter_0__5, filter_0__4, 
                    filter_0__3, filter_0__2, filter_0__1, filter_0__0, 
                    window_24__15, window_24__14, window_24__13, window_24__12, 
                    window_24__11, window_24__10, window_24__9, window_24__8, 
                    window_24__7, window_24__6, window_24__5, window_24__4, 
                    window_24__3, window_24__2, window_24__1, window_24__0, 
                    window_23__15, window_23__14, window_23__13, window_23__12, 
                    window_23__11, window_23__10, window_23__9, window_23__8, 
                    window_23__7, window_23__6, window_23__5, window_23__4, 
                    window_23__3, window_23__2, window_23__1, window_23__0, 
                    window_22__15, window_22__14, window_22__13, window_22__12, 
                    window_22__11, window_22__10, window_22__9, window_22__8, 
                    window_22__7, window_22__6, window_22__5, window_22__4, 
                    window_22__3, window_22__2, window_22__1, window_22__0, 
                    window_21__15, window_21__14, window_21__13, window_21__12, 
                    window_21__11, window_21__10, window_21__9, window_21__8, 
                    window_21__7, window_21__6, window_21__5, window_21__4, 
                    window_21__3, window_21__2, window_21__1, window_21__0, 
                    window_20__15, window_20__14, window_20__13, window_20__12, 
                    window_20__11, window_20__10, window_20__9, window_20__8, 
                    window_20__7, window_20__6, window_20__5, window_20__4, 
                    window_20__3, window_20__2, window_20__1, window_20__0, 
                    window_19__15, window_19__14, window_19__13, window_19__12, 
                    window_19__11, window_19__10, window_19__9, window_19__8, 
                    window_19__7, window_19__6, window_19__5, window_19__4, 
                    window_19__3, window_19__2, window_19__1, window_19__0, 
                    window_18__15, window_18__14, window_18__13, window_18__12, 
                    window_18__11, window_18__10, window_18__9, window_18__8, 
                    window_18__7, window_18__6, window_18__5, window_18__4, 
                    window_18__3, window_18__2, window_18__1, window_18__0, 
                    window_17__15, window_17__14, window_17__13, window_17__12, 
                    window_17__11, window_17__10, window_17__9, window_17__8, 
                    window_17__7, window_17__6, window_17__5, window_17__4, 
                    window_17__3, window_17__2, window_17__1, window_17__0, 
                    window_16__15, window_16__14, window_16__13, window_16__12, 
                    window_16__11, window_16__10, window_16__9, window_16__8, 
                    window_16__7, window_16__6, window_16__5, window_16__4, 
                    window_16__3, window_16__2, window_16__1, window_16__0, 
                    window_15__15, window_15__14, window_15__13, window_15__12, 
                    window_15__11, window_15__10, window_15__9, window_15__8, 
                    window_15__7, window_15__6, window_15__5, window_15__4, 
                    window_15__3, window_15__2, window_15__1, window_15__0, 
                    window_14__15, window_14__14, window_14__13, window_14__12, 
                    window_14__11, window_14__10, window_14__9, window_14__8, 
                    window_14__7, window_14__6, window_14__5, window_14__4, 
                    window_14__3, window_14__2, window_14__1, window_14__0, 
                    window_13__15, window_13__14, window_13__13, window_13__12, 
                    window_13__11, window_13__10, window_13__9, window_13__8, 
                    window_13__7, window_13__6, window_13__5, window_13__4, 
                    window_13__3, window_13__2, window_13__1, window_13__0, 
                    window_12__15, window_12__14, window_12__13, window_12__12, 
                    window_12__11, window_12__10, window_12__9, window_12__8, 
                    window_12__7, window_12__6, window_12__5, window_12__4, 
                    window_12__3, window_12__2, window_12__1, window_12__0, 
                    window_11__15, window_11__14, window_11__13, window_11__12, 
                    window_11__11, window_11__10, window_11__9, window_11__8, 
                    window_11__7, window_11__6, window_11__5, window_11__4, 
                    window_11__3, window_11__2, window_11__1, window_11__0, 
                    window_10__15, window_10__14, window_10__13, window_10__12, 
                    window_10__11, window_10__10, window_10__9, window_10__8, 
                    window_10__7, window_10__6, window_10__5, window_10__4, 
                    window_10__3, window_10__2, window_10__1, window_10__0, 
                    window_9__15, window_9__14, window_9__13, window_9__12, 
                    window_9__11, window_9__10, window_9__9, window_9__8, 
                    window_9__7, window_9__6, window_9__5, window_9__4, 
                    window_9__3, window_9__2, window_9__1, window_9__0, 
                    window_8__15, window_8__14, window_8__13, window_8__12, 
                    window_8__11, window_8__10, window_8__9, window_8__8, 
                    window_8__7, window_8__6, window_8__5, window_8__4, 
                    window_8__3, window_8__2, window_8__1, window_8__0, 
                    window_7__15, window_7__14, window_7__13, window_7__12, 
                    window_7__11, window_7__10, window_7__9, window_7__8, 
                    window_7__7, window_7__6, window_7__5, window_7__4, 
                    window_7__3, window_7__2, window_7__1, window_7__0, 
                    window_6__15, window_6__14, window_6__13, window_6__12, 
                    window_6__11, window_6__10, window_6__9, window_6__8, 
                    window_6__7, window_6__6, window_6__5, window_6__4, 
                    window_6__3, window_6__2, window_6__1, window_6__0, 
                    window_5__15, window_5__14, window_5__13, window_5__12, 
                    window_5__11, window_5__10, window_5__9, window_5__8, 
                    window_5__7, window_5__6, window_5__5, window_5__4, 
                    window_5__3, window_5__2, window_5__1, window_5__0, 
                    window_4__15, window_4__14, window_4__13, window_4__12, 
                    window_4__11, window_4__10, window_4__9, window_4__8, 
                    window_4__7, window_4__6, window_4__5, window_4__4, 
                    window_4__3, window_4__2, window_4__1, window_4__0, 
                    window_3__15, window_3__14, window_3__13, window_3__12, 
                    window_3__11, window_3__10, window_3__9, window_3__8, 
                    window_3__7, window_3__6, window_3__5, window_3__4, 
                    window_3__3, window_3__2, window_3__1, window_3__0, 
                    window_2__15, window_2__14, window_2__13, window_2__12, 
                    window_2__11, window_2__10, window_2__9, window_2__8, 
                    window_2__7, window_2__6, window_2__5, window_2__4, 
                    window_2__3, window_2__2, window_2__1, window_2__0, 
                    window_1__15, window_1__14, window_1__13, window_1__12, 
                    window_1__11, window_1__10, window_1__9, window_1__8, 
                    window_1__7, window_1__6, window_1__5, window_1__4, 
                    window_1__3, window_1__2, window_1__1, window_1__0, 
                    window_0__15, window_0__14, window_0__13, window_0__12, 
                    window_0__11, window_0__10, window_0__9, window_0__8, 
                    window_0__7, window_0__6, window_0__5, window_0__4, 
                    window_0__3, window_0__2, window_0__1, window_0__0, 
                    outputs_24__15, outputs_24__14, outputs_24__13, 
                    outputs_24__12, outputs_24__11, outputs_24__10, 
                    outputs_24__9, outputs_24__8, outputs_24__7, outputs_24__6, 
                    outputs_24__5, outputs_24__4, outputs_24__3, outputs_24__2, 
                    outputs_24__1, outputs_24__0, outputs_23__15, outputs_23__14, 
                    outputs_23__13, outputs_23__12, outputs_23__11, 
                    outputs_23__10, outputs_23__9, outputs_23__8, outputs_23__7, 
                    outputs_23__6, outputs_23__5, outputs_23__4, outputs_23__3, 
                    outputs_23__2, outputs_23__1, outputs_23__0, outputs_22__15, 
                    outputs_22__14, outputs_22__13, outputs_22__12, 
                    outputs_22__11, outputs_22__10, outputs_22__9, outputs_22__8, 
                    outputs_22__7, outputs_22__6, outputs_22__5, outputs_22__4, 
                    outputs_22__3, outputs_22__2, outputs_22__1, outputs_22__0, 
                    outputs_21__15, outputs_21__14, outputs_21__13, 
                    outputs_21__12, outputs_21__11, outputs_21__10, 
                    outputs_21__9, outputs_21__8, outputs_21__7, outputs_21__6, 
                    outputs_21__5, outputs_21__4, outputs_21__3, outputs_21__2, 
                    outputs_21__1, outputs_21__0, outputs_20__15, outputs_20__14, 
                    outputs_20__13, outputs_20__12, outputs_20__11, 
                    outputs_20__10, outputs_20__9, outputs_20__8, outputs_20__7, 
                    outputs_20__6, outputs_20__5, outputs_20__4, outputs_20__3, 
                    outputs_20__2, outputs_20__1, outputs_20__0, outputs_19__15, 
                    outputs_19__14, outputs_19__13, outputs_19__12, 
                    outputs_19__11, outputs_19__10, outputs_19__9, outputs_19__8, 
                    outputs_19__7, outputs_19__6, outputs_19__5, outputs_19__4, 
                    outputs_19__3, outputs_19__2, outputs_19__1, outputs_19__0, 
                    outputs_18__15, outputs_18__14, outputs_18__13, 
                    outputs_18__12, outputs_18__11, outputs_18__10, 
                    outputs_18__9, outputs_18__8, outputs_18__7, outputs_18__6, 
                    outputs_18__5, outputs_18__4, outputs_18__3, outputs_18__2, 
                    outputs_18__1, outputs_18__0, outputs_17__15, outputs_17__14, 
                    outputs_17__13, outputs_17__12, outputs_17__11, 
                    outputs_17__10, outputs_17__9, outputs_17__8, outputs_17__7, 
                    outputs_17__6, outputs_17__5, outputs_17__4, outputs_17__3, 
                    outputs_17__2, outputs_17__1, outputs_17__0, outputs_16__15, 
                    outputs_16__14, outputs_16__13, outputs_16__12, 
                    outputs_16__11, outputs_16__10, outputs_16__9, outputs_16__8, 
                    outputs_16__7, outputs_16__6, outputs_16__5, outputs_16__4, 
                    outputs_16__3, outputs_16__2, outputs_16__1, outputs_16__0, 
                    outputs_15__15, outputs_15__14, outputs_15__13, 
                    outputs_15__12, outputs_15__11, outputs_15__10, 
                    outputs_15__9, outputs_15__8, outputs_15__7, outputs_15__6, 
                    outputs_15__5, outputs_15__4, outputs_15__3, outputs_15__2, 
                    outputs_15__1, outputs_15__0, outputs_14__15, outputs_14__14, 
                    outputs_14__13, outputs_14__12, outputs_14__11, 
                    outputs_14__10, outputs_14__9, outputs_14__8, outputs_14__7, 
                    outputs_14__6, outputs_14__5, outputs_14__4, outputs_14__3, 
                    outputs_14__2, outputs_14__1, outputs_14__0, outputs_13__15, 
                    outputs_13__14, outputs_13__13, outputs_13__12, 
                    outputs_13__11, outputs_13__10, outputs_13__9, outputs_13__8, 
                    outputs_13__7, outputs_13__6, outputs_13__5, outputs_13__4, 
                    outputs_13__3, outputs_13__2, outputs_13__1, outputs_13__0, 
                    outputs_12__15, outputs_12__14, outputs_12__13, 
                    outputs_12__12, outputs_12__11, outputs_12__10, 
                    outputs_12__9, outputs_12__8, outputs_12__7, outputs_12__6, 
                    outputs_12__5, outputs_12__4, outputs_12__3, outputs_12__2, 
                    outputs_12__1, outputs_12__0, outputs_11__15, outputs_11__14, 
                    outputs_11__13, outputs_11__12, outputs_11__11, 
                    outputs_11__10, outputs_11__9, outputs_11__8, outputs_11__7, 
                    outputs_11__6, outputs_11__5, outputs_11__4, outputs_11__3, 
                    outputs_11__2, outputs_11__1, outputs_11__0, outputs_10__15, 
                    outputs_10__14, outputs_10__13, outputs_10__12, 
                    outputs_10__11, outputs_10__10, outputs_10__9, outputs_10__8, 
                    outputs_10__7, outputs_10__6, outputs_10__5, outputs_10__4, 
                    outputs_10__3, outputs_10__2, outputs_10__1, outputs_10__0, 
                    outputs_9__15, outputs_9__14, outputs_9__13, outputs_9__12, 
                    outputs_9__11, outputs_9__10, outputs_9__9, outputs_9__8, 
                    outputs_9__7, outputs_9__6, outputs_9__5, outputs_9__4, 
                    outputs_9__3, outputs_9__2, outputs_9__1, outputs_9__0, 
                    outputs_8__15, outputs_8__14, outputs_8__13, outputs_8__12, 
                    outputs_8__11, outputs_8__10, outputs_8__9, outputs_8__8, 
                    outputs_8__7, outputs_8__6, outputs_8__5, outputs_8__4, 
                    outputs_8__3, outputs_8__2, outputs_8__1, outputs_8__0, 
                    outputs_7__15, outputs_7__14, outputs_7__13, outputs_7__12, 
                    outputs_7__11, outputs_7__10, outputs_7__9, outputs_7__8, 
                    outputs_7__7, outputs_7__6, outputs_7__5, outputs_7__4, 
                    outputs_7__3, outputs_7__2, outputs_7__1, outputs_7__0, 
                    outputs_6__15, outputs_6__14, outputs_6__13, outputs_6__12, 
                    outputs_6__11, outputs_6__10, outputs_6__9, outputs_6__8, 
                    outputs_6__7, outputs_6__6, outputs_6__5, outputs_6__4, 
                    outputs_6__3, outputs_6__2, outputs_6__1, outputs_6__0, 
                    outputs_5__15, outputs_5__14, outputs_5__13, outputs_5__12, 
                    outputs_5__11, outputs_5__10, outputs_5__9, outputs_5__8, 
                    outputs_5__7, outputs_5__6, outputs_5__5, outputs_5__4, 
                    outputs_5__3, outputs_5__2, outputs_5__1, outputs_5__0, 
                    outputs_4__15, outputs_4__14, outputs_4__13, outputs_4__12, 
                    outputs_4__11, outputs_4__10, outputs_4__9, outputs_4__8, 
                    outputs_4__7, outputs_4__6, outputs_4__5, outputs_4__4, 
                    outputs_4__3, outputs_4__2, outputs_4__1, outputs_4__0, 
                    outputs_3__15, outputs_3__14, outputs_3__13, outputs_3__12, 
                    outputs_3__11, outputs_3__10, outputs_3__9, outputs_3__8, 
                    outputs_3__7, outputs_3__6, outputs_3__5, outputs_3__4, 
                    outputs_3__3, outputs_3__2, outputs_3__1, outputs_3__0, 
                    outputs_2__15, outputs_2__14, outputs_2__13, outputs_2__12, 
                    outputs_2__11, outputs_2__10, outputs_2__9, outputs_2__8, 
                    outputs_2__7, outputs_2__6, outputs_2__5, outputs_2__4, 
                    outputs_2__3, outputs_2__2, outputs_2__1, outputs_2__0, 
                    outputs_1__15, outputs_1__14, outputs_1__13, outputs_1__12, 
                    outputs_1__11, outputs_1__10, outputs_1__9, outputs_1__8, 
                    outputs_1__7, outputs_1__6, outputs_1__5, outputs_1__4, 
                    outputs_1__3, outputs_1__2, outputs_1__1, outputs_1__0, 
                    outputs_0__15, outputs_0__14, outputs_0__13, outputs_0__12, 
                    outputs_0__11, outputs_0__10, outputs_0__9, outputs_0__8, 
                    outputs_0__7, outputs_0__6, outputs_0__5, outputs_0__4, 
                    outputs_0__3, outputs_0__2, outputs_0__1, outputs_0__0, clk, 
                    start, rst, doneOut, workingOut ) ;

    input filter_24__7 ;
    input filter_24__6 ;
    input filter_24__5 ;
    input filter_24__4 ;
    input filter_24__3 ;
    input filter_24__2 ;
    input filter_24__1 ;
    input filter_24__0 ;
    input filter_23__7 ;
    input filter_23__6 ;
    input filter_23__5 ;
    input filter_23__4 ;
    input filter_23__3 ;
    input filter_23__2 ;
    input filter_23__1 ;
    input filter_23__0 ;
    input filter_22__7 ;
    input filter_22__6 ;
    input filter_22__5 ;
    input filter_22__4 ;
    input filter_22__3 ;
    input filter_22__2 ;
    input filter_22__1 ;
    input filter_22__0 ;
    input filter_21__7 ;
    input filter_21__6 ;
    input filter_21__5 ;
    input filter_21__4 ;
    input filter_21__3 ;
    input filter_21__2 ;
    input filter_21__1 ;
    input filter_21__0 ;
    input filter_20__7 ;
    input filter_20__6 ;
    input filter_20__5 ;
    input filter_20__4 ;
    input filter_20__3 ;
    input filter_20__2 ;
    input filter_20__1 ;
    input filter_20__0 ;
    input filter_19__7 ;
    input filter_19__6 ;
    input filter_19__5 ;
    input filter_19__4 ;
    input filter_19__3 ;
    input filter_19__2 ;
    input filter_19__1 ;
    input filter_19__0 ;
    input filter_18__7 ;
    input filter_18__6 ;
    input filter_18__5 ;
    input filter_18__4 ;
    input filter_18__3 ;
    input filter_18__2 ;
    input filter_18__1 ;
    input filter_18__0 ;
    input filter_17__7 ;
    input filter_17__6 ;
    input filter_17__5 ;
    input filter_17__4 ;
    input filter_17__3 ;
    input filter_17__2 ;
    input filter_17__1 ;
    input filter_17__0 ;
    input filter_16__7 ;
    input filter_16__6 ;
    input filter_16__5 ;
    input filter_16__4 ;
    input filter_16__3 ;
    input filter_16__2 ;
    input filter_16__1 ;
    input filter_16__0 ;
    input filter_15__7 ;
    input filter_15__6 ;
    input filter_15__5 ;
    input filter_15__4 ;
    input filter_15__3 ;
    input filter_15__2 ;
    input filter_15__1 ;
    input filter_15__0 ;
    input filter_14__7 ;
    input filter_14__6 ;
    input filter_14__5 ;
    input filter_14__4 ;
    input filter_14__3 ;
    input filter_14__2 ;
    input filter_14__1 ;
    input filter_14__0 ;
    input filter_13__7 ;
    input filter_13__6 ;
    input filter_13__5 ;
    input filter_13__4 ;
    input filter_13__3 ;
    input filter_13__2 ;
    input filter_13__1 ;
    input filter_13__0 ;
    input filter_12__7 ;
    input filter_12__6 ;
    input filter_12__5 ;
    input filter_12__4 ;
    input filter_12__3 ;
    input filter_12__2 ;
    input filter_12__1 ;
    input filter_12__0 ;
    input filter_11__7 ;
    input filter_11__6 ;
    input filter_11__5 ;
    input filter_11__4 ;
    input filter_11__3 ;
    input filter_11__2 ;
    input filter_11__1 ;
    input filter_11__0 ;
    input filter_10__7 ;
    input filter_10__6 ;
    input filter_10__5 ;
    input filter_10__4 ;
    input filter_10__3 ;
    input filter_10__2 ;
    input filter_10__1 ;
    input filter_10__0 ;
    input filter_9__7 ;
    input filter_9__6 ;
    input filter_9__5 ;
    input filter_9__4 ;
    input filter_9__3 ;
    input filter_9__2 ;
    input filter_9__1 ;
    input filter_9__0 ;
    input filter_8__7 ;
    input filter_8__6 ;
    input filter_8__5 ;
    input filter_8__4 ;
    input filter_8__3 ;
    input filter_8__2 ;
    input filter_8__1 ;
    input filter_8__0 ;
    input filter_7__7 ;
    input filter_7__6 ;
    input filter_7__5 ;
    input filter_7__4 ;
    input filter_7__3 ;
    input filter_7__2 ;
    input filter_7__1 ;
    input filter_7__0 ;
    input filter_6__7 ;
    input filter_6__6 ;
    input filter_6__5 ;
    input filter_6__4 ;
    input filter_6__3 ;
    input filter_6__2 ;
    input filter_6__1 ;
    input filter_6__0 ;
    input filter_5__7 ;
    input filter_5__6 ;
    input filter_5__5 ;
    input filter_5__4 ;
    input filter_5__3 ;
    input filter_5__2 ;
    input filter_5__1 ;
    input filter_5__0 ;
    input filter_4__7 ;
    input filter_4__6 ;
    input filter_4__5 ;
    input filter_4__4 ;
    input filter_4__3 ;
    input filter_4__2 ;
    input filter_4__1 ;
    input filter_4__0 ;
    input filter_3__7 ;
    input filter_3__6 ;
    input filter_3__5 ;
    input filter_3__4 ;
    input filter_3__3 ;
    input filter_3__2 ;
    input filter_3__1 ;
    input filter_3__0 ;
    input filter_2__7 ;
    input filter_2__6 ;
    input filter_2__5 ;
    input filter_2__4 ;
    input filter_2__3 ;
    input filter_2__2 ;
    input filter_2__1 ;
    input filter_2__0 ;
    input filter_1__7 ;
    input filter_1__6 ;
    input filter_1__5 ;
    input filter_1__4 ;
    input filter_1__3 ;
    input filter_1__2 ;
    input filter_1__1 ;
    input filter_1__0 ;
    input filter_0__7 ;
    input filter_0__6 ;
    input filter_0__5 ;
    input filter_0__4 ;
    input filter_0__3 ;
    input filter_0__2 ;
    input filter_0__1 ;
    input filter_0__0 ;
    input window_24__15 ;
    input window_24__14 ;
    input window_24__13 ;
    input window_24__12 ;
    input window_24__11 ;
    input window_24__10 ;
    input window_24__9 ;
    input window_24__8 ;
    input window_24__7 ;
    input window_24__6 ;
    input window_24__5 ;
    input window_24__4 ;
    input window_24__3 ;
    input window_24__2 ;
    input window_24__1 ;
    input window_24__0 ;
    input window_23__15 ;
    input window_23__14 ;
    input window_23__13 ;
    input window_23__12 ;
    input window_23__11 ;
    input window_23__10 ;
    input window_23__9 ;
    input window_23__8 ;
    input window_23__7 ;
    input window_23__6 ;
    input window_23__5 ;
    input window_23__4 ;
    input window_23__3 ;
    input window_23__2 ;
    input window_23__1 ;
    input window_23__0 ;
    input window_22__15 ;
    input window_22__14 ;
    input window_22__13 ;
    input window_22__12 ;
    input window_22__11 ;
    input window_22__10 ;
    input window_22__9 ;
    input window_22__8 ;
    input window_22__7 ;
    input window_22__6 ;
    input window_22__5 ;
    input window_22__4 ;
    input window_22__3 ;
    input window_22__2 ;
    input window_22__1 ;
    input window_22__0 ;
    input window_21__15 ;
    input window_21__14 ;
    input window_21__13 ;
    input window_21__12 ;
    input window_21__11 ;
    input window_21__10 ;
    input window_21__9 ;
    input window_21__8 ;
    input window_21__7 ;
    input window_21__6 ;
    input window_21__5 ;
    input window_21__4 ;
    input window_21__3 ;
    input window_21__2 ;
    input window_21__1 ;
    input window_21__0 ;
    input window_20__15 ;
    input window_20__14 ;
    input window_20__13 ;
    input window_20__12 ;
    input window_20__11 ;
    input window_20__10 ;
    input window_20__9 ;
    input window_20__8 ;
    input window_20__7 ;
    input window_20__6 ;
    input window_20__5 ;
    input window_20__4 ;
    input window_20__3 ;
    input window_20__2 ;
    input window_20__1 ;
    input window_20__0 ;
    input window_19__15 ;
    input window_19__14 ;
    input window_19__13 ;
    input window_19__12 ;
    input window_19__11 ;
    input window_19__10 ;
    input window_19__9 ;
    input window_19__8 ;
    input window_19__7 ;
    input window_19__6 ;
    input window_19__5 ;
    input window_19__4 ;
    input window_19__3 ;
    input window_19__2 ;
    input window_19__1 ;
    input window_19__0 ;
    input window_18__15 ;
    input window_18__14 ;
    input window_18__13 ;
    input window_18__12 ;
    input window_18__11 ;
    input window_18__10 ;
    input window_18__9 ;
    input window_18__8 ;
    input window_18__7 ;
    input window_18__6 ;
    input window_18__5 ;
    input window_18__4 ;
    input window_18__3 ;
    input window_18__2 ;
    input window_18__1 ;
    input window_18__0 ;
    input window_17__15 ;
    input window_17__14 ;
    input window_17__13 ;
    input window_17__12 ;
    input window_17__11 ;
    input window_17__10 ;
    input window_17__9 ;
    input window_17__8 ;
    input window_17__7 ;
    input window_17__6 ;
    input window_17__5 ;
    input window_17__4 ;
    input window_17__3 ;
    input window_17__2 ;
    input window_17__1 ;
    input window_17__0 ;
    input window_16__15 ;
    input window_16__14 ;
    input window_16__13 ;
    input window_16__12 ;
    input window_16__11 ;
    input window_16__10 ;
    input window_16__9 ;
    input window_16__8 ;
    input window_16__7 ;
    input window_16__6 ;
    input window_16__5 ;
    input window_16__4 ;
    input window_16__3 ;
    input window_16__2 ;
    input window_16__1 ;
    input window_16__0 ;
    input window_15__15 ;
    input window_15__14 ;
    input window_15__13 ;
    input window_15__12 ;
    input window_15__11 ;
    input window_15__10 ;
    input window_15__9 ;
    input window_15__8 ;
    input window_15__7 ;
    input window_15__6 ;
    input window_15__5 ;
    input window_15__4 ;
    input window_15__3 ;
    input window_15__2 ;
    input window_15__1 ;
    input window_15__0 ;
    input window_14__15 ;
    input window_14__14 ;
    input window_14__13 ;
    input window_14__12 ;
    input window_14__11 ;
    input window_14__10 ;
    input window_14__9 ;
    input window_14__8 ;
    input window_14__7 ;
    input window_14__6 ;
    input window_14__5 ;
    input window_14__4 ;
    input window_14__3 ;
    input window_14__2 ;
    input window_14__1 ;
    input window_14__0 ;
    input window_13__15 ;
    input window_13__14 ;
    input window_13__13 ;
    input window_13__12 ;
    input window_13__11 ;
    input window_13__10 ;
    input window_13__9 ;
    input window_13__8 ;
    input window_13__7 ;
    input window_13__6 ;
    input window_13__5 ;
    input window_13__4 ;
    input window_13__3 ;
    input window_13__2 ;
    input window_13__1 ;
    input window_13__0 ;
    input window_12__15 ;
    input window_12__14 ;
    input window_12__13 ;
    input window_12__12 ;
    input window_12__11 ;
    input window_12__10 ;
    input window_12__9 ;
    input window_12__8 ;
    input window_12__7 ;
    input window_12__6 ;
    input window_12__5 ;
    input window_12__4 ;
    input window_12__3 ;
    input window_12__2 ;
    input window_12__1 ;
    input window_12__0 ;
    input window_11__15 ;
    input window_11__14 ;
    input window_11__13 ;
    input window_11__12 ;
    input window_11__11 ;
    input window_11__10 ;
    input window_11__9 ;
    input window_11__8 ;
    input window_11__7 ;
    input window_11__6 ;
    input window_11__5 ;
    input window_11__4 ;
    input window_11__3 ;
    input window_11__2 ;
    input window_11__1 ;
    input window_11__0 ;
    input window_10__15 ;
    input window_10__14 ;
    input window_10__13 ;
    input window_10__12 ;
    input window_10__11 ;
    input window_10__10 ;
    input window_10__9 ;
    input window_10__8 ;
    input window_10__7 ;
    input window_10__6 ;
    input window_10__5 ;
    input window_10__4 ;
    input window_10__3 ;
    input window_10__2 ;
    input window_10__1 ;
    input window_10__0 ;
    input window_9__15 ;
    input window_9__14 ;
    input window_9__13 ;
    input window_9__12 ;
    input window_9__11 ;
    input window_9__10 ;
    input window_9__9 ;
    input window_9__8 ;
    input window_9__7 ;
    input window_9__6 ;
    input window_9__5 ;
    input window_9__4 ;
    input window_9__3 ;
    input window_9__2 ;
    input window_9__1 ;
    input window_9__0 ;
    input window_8__15 ;
    input window_8__14 ;
    input window_8__13 ;
    input window_8__12 ;
    input window_8__11 ;
    input window_8__10 ;
    input window_8__9 ;
    input window_8__8 ;
    input window_8__7 ;
    input window_8__6 ;
    input window_8__5 ;
    input window_8__4 ;
    input window_8__3 ;
    input window_8__2 ;
    input window_8__1 ;
    input window_8__0 ;
    input window_7__15 ;
    input window_7__14 ;
    input window_7__13 ;
    input window_7__12 ;
    input window_7__11 ;
    input window_7__10 ;
    input window_7__9 ;
    input window_7__8 ;
    input window_7__7 ;
    input window_7__6 ;
    input window_7__5 ;
    input window_7__4 ;
    input window_7__3 ;
    input window_7__2 ;
    input window_7__1 ;
    input window_7__0 ;
    input window_6__15 ;
    input window_6__14 ;
    input window_6__13 ;
    input window_6__12 ;
    input window_6__11 ;
    input window_6__10 ;
    input window_6__9 ;
    input window_6__8 ;
    input window_6__7 ;
    input window_6__6 ;
    input window_6__5 ;
    input window_6__4 ;
    input window_6__3 ;
    input window_6__2 ;
    input window_6__1 ;
    input window_6__0 ;
    input window_5__15 ;
    input window_5__14 ;
    input window_5__13 ;
    input window_5__12 ;
    input window_5__11 ;
    input window_5__10 ;
    input window_5__9 ;
    input window_5__8 ;
    input window_5__7 ;
    input window_5__6 ;
    input window_5__5 ;
    input window_5__4 ;
    input window_5__3 ;
    input window_5__2 ;
    input window_5__1 ;
    input window_5__0 ;
    input window_4__15 ;
    input window_4__14 ;
    input window_4__13 ;
    input window_4__12 ;
    input window_4__11 ;
    input window_4__10 ;
    input window_4__9 ;
    input window_4__8 ;
    input window_4__7 ;
    input window_4__6 ;
    input window_4__5 ;
    input window_4__4 ;
    input window_4__3 ;
    input window_4__2 ;
    input window_4__1 ;
    input window_4__0 ;
    input window_3__15 ;
    input window_3__14 ;
    input window_3__13 ;
    input window_3__12 ;
    input window_3__11 ;
    input window_3__10 ;
    input window_3__9 ;
    input window_3__8 ;
    input window_3__7 ;
    input window_3__6 ;
    input window_3__5 ;
    input window_3__4 ;
    input window_3__3 ;
    input window_3__2 ;
    input window_3__1 ;
    input window_3__0 ;
    input window_2__15 ;
    input window_2__14 ;
    input window_2__13 ;
    input window_2__12 ;
    input window_2__11 ;
    input window_2__10 ;
    input window_2__9 ;
    input window_2__8 ;
    input window_2__7 ;
    input window_2__6 ;
    input window_2__5 ;
    input window_2__4 ;
    input window_2__3 ;
    input window_2__2 ;
    input window_2__1 ;
    input window_2__0 ;
    input window_1__15 ;
    input window_1__14 ;
    input window_1__13 ;
    input window_1__12 ;
    input window_1__11 ;
    input window_1__10 ;
    input window_1__9 ;
    input window_1__8 ;
    input window_1__7 ;
    input window_1__6 ;
    input window_1__5 ;
    input window_1__4 ;
    input window_1__3 ;
    input window_1__2 ;
    input window_1__1 ;
    input window_1__0 ;
    input window_0__15 ;
    input window_0__14 ;
    input window_0__13 ;
    input window_0__12 ;
    input window_0__11 ;
    input window_0__10 ;
    input window_0__9 ;
    input window_0__8 ;
    input window_0__7 ;
    input window_0__6 ;
    input window_0__5 ;
    input window_0__4 ;
    input window_0__3 ;
    input window_0__2 ;
    input window_0__1 ;
    input window_0__0 ;
    output outputs_24__15 ;
    output outputs_24__14 ;
    output outputs_24__13 ;
    output outputs_24__12 ;
    output outputs_24__11 ;
    output outputs_24__10 ;
    output outputs_24__9 ;
    output outputs_24__8 ;
    output outputs_24__7 ;
    output outputs_24__6 ;
    output outputs_24__5 ;
    output outputs_24__4 ;
    output outputs_24__3 ;
    output outputs_24__2 ;
    output outputs_24__1 ;
    output outputs_24__0 ;
    output outputs_23__15 ;
    output outputs_23__14 ;
    output outputs_23__13 ;
    output outputs_23__12 ;
    output outputs_23__11 ;
    output outputs_23__10 ;
    output outputs_23__9 ;
    output outputs_23__8 ;
    output outputs_23__7 ;
    output outputs_23__6 ;
    output outputs_23__5 ;
    output outputs_23__4 ;
    output outputs_23__3 ;
    output outputs_23__2 ;
    output outputs_23__1 ;
    output outputs_23__0 ;
    output outputs_22__15 ;
    output outputs_22__14 ;
    output outputs_22__13 ;
    output outputs_22__12 ;
    output outputs_22__11 ;
    output outputs_22__10 ;
    output outputs_22__9 ;
    output outputs_22__8 ;
    output outputs_22__7 ;
    output outputs_22__6 ;
    output outputs_22__5 ;
    output outputs_22__4 ;
    output outputs_22__3 ;
    output outputs_22__2 ;
    output outputs_22__1 ;
    output outputs_22__0 ;
    output outputs_21__15 ;
    output outputs_21__14 ;
    output outputs_21__13 ;
    output outputs_21__12 ;
    output outputs_21__11 ;
    output outputs_21__10 ;
    output outputs_21__9 ;
    output outputs_21__8 ;
    output outputs_21__7 ;
    output outputs_21__6 ;
    output outputs_21__5 ;
    output outputs_21__4 ;
    output outputs_21__3 ;
    output outputs_21__2 ;
    output outputs_21__1 ;
    output outputs_21__0 ;
    output outputs_20__15 ;
    output outputs_20__14 ;
    output outputs_20__13 ;
    output outputs_20__12 ;
    output outputs_20__11 ;
    output outputs_20__10 ;
    output outputs_20__9 ;
    output outputs_20__8 ;
    output outputs_20__7 ;
    output outputs_20__6 ;
    output outputs_20__5 ;
    output outputs_20__4 ;
    output outputs_20__3 ;
    output outputs_20__2 ;
    output outputs_20__1 ;
    output outputs_20__0 ;
    output outputs_19__15 ;
    output outputs_19__14 ;
    output outputs_19__13 ;
    output outputs_19__12 ;
    output outputs_19__11 ;
    output outputs_19__10 ;
    output outputs_19__9 ;
    output outputs_19__8 ;
    output outputs_19__7 ;
    output outputs_19__6 ;
    output outputs_19__5 ;
    output outputs_19__4 ;
    output outputs_19__3 ;
    output outputs_19__2 ;
    output outputs_19__1 ;
    output outputs_19__0 ;
    output outputs_18__15 ;
    output outputs_18__14 ;
    output outputs_18__13 ;
    output outputs_18__12 ;
    output outputs_18__11 ;
    output outputs_18__10 ;
    output outputs_18__9 ;
    output outputs_18__8 ;
    output outputs_18__7 ;
    output outputs_18__6 ;
    output outputs_18__5 ;
    output outputs_18__4 ;
    output outputs_18__3 ;
    output outputs_18__2 ;
    output outputs_18__1 ;
    output outputs_18__0 ;
    output outputs_17__15 ;
    output outputs_17__14 ;
    output outputs_17__13 ;
    output outputs_17__12 ;
    output outputs_17__11 ;
    output outputs_17__10 ;
    output outputs_17__9 ;
    output outputs_17__8 ;
    output outputs_17__7 ;
    output outputs_17__6 ;
    output outputs_17__5 ;
    output outputs_17__4 ;
    output outputs_17__3 ;
    output outputs_17__2 ;
    output outputs_17__1 ;
    output outputs_17__0 ;
    output outputs_16__15 ;
    output outputs_16__14 ;
    output outputs_16__13 ;
    output outputs_16__12 ;
    output outputs_16__11 ;
    output outputs_16__10 ;
    output outputs_16__9 ;
    output outputs_16__8 ;
    output outputs_16__7 ;
    output outputs_16__6 ;
    output outputs_16__5 ;
    output outputs_16__4 ;
    output outputs_16__3 ;
    output outputs_16__2 ;
    output outputs_16__1 ;
    output outputs_16__0 ;
    output outputs_15__15 ;
    output outputs_15__14 ;
    output outputs_15__13 ;
    output outputs_15__12 ;
    output outputs_15__11 ;
    output outputs_15__10 ;
    output outputs_15__9 ;
    output outputs_15__8 ;
    output outputs_15__7 ;
    output outputs_15__6 ;
    output outputs_15__5 ;
    output outputs_15__4 ;
    output outputs_15__3 ;
    output outputs_15__2 ;
    output outputs_15__1 ;
    output outputs_15__0 ;
    output outputs_14__15 ;
    output outputs_14__14 ;
    output outputs_14__13 ;
    output outputs_14__12 ;
    output outputs_14__11 ;
    output outputs_14__10 ;
    output outputs_14__9 ;
    output outputs_14__8 ;
    output outputs_14__7 ;
    output outputs_14__6 ;
    output outputs_14__5 ;
    output outputs_14__4 ;
    output outputs_14__3 ;
    output outputs_14__2 ;
    output outputs_14__1 ;
    output outputs_14__0 ;
    output outputs_13__15 ;
    output outputs_13__14 ;
    output outputs_13__13 ;
    output outputs_13__12 ;
    output outputs_13__11 ;
    output outputs_13__10 ;
    output outputs_13__9 ;
    output outputs_13__8 ;
    output outputs_13__7 ;
    output outputs_13__6 ;
    output outputs_13__5 ;
    output outputs_13__4 ;
    output outputs_13__3 ;
    output outputs_13__2 ;
    output outputs_13__1 ;
    output outputs_13__0 ;
    output outputs_12__15 ;
    output outputs_12__14 ;
    output outputs_12__13 ;
    output outputs_12__12 ;
    output outputs_12__11 ;
    output outputs_12__10 ;
    output outputs_12__9 ;
    output outputs_12__8 ;
    output outputs_12__7 ;
    output outputs_12__6 ;
    output outputs_12__5 ;
    output outputs_12__4 ;
    output outputs_12__3 ;
    output outputs_12__2 ;
    output outputs_12__1 ;
    output outputs_12__0 ;
    output outputs_11__15 ;
    output outputs_11__14 ;
    output outputs_11__13 ;
    output outputs_11__12 ;
    output outputs_11__11 ;
    output outputs_11__10 ;
    output outputs_11__9 ;
    output outputs_11__8 ;
    output outputs_11__7 ;
    output outputs_11__6 ;
    output outputs_11__5 ;
    output outputs_11__4 ;
    output outputs_11__3 ;
    output outputs_11__2 ;
    output outputs_11__1 ;
    output outputs_11__0 ;
    output outputs_10__15 ;
    output outputs_10__14 ;
    output outputs_10__13 ;
    output outputs_10__12 ;
    output outputs_10__11 ;
    output outputs_10__10 ;
    output outputs_10__9 ;
    output outputs_10__8 ;
    output outputs_10__7 ;
    output outputs_10__6 ;
    output outputs_10__5 ;
    output outputs_10__4 ;
    output outputs_10__3 ;
    output outputs_10__2 ;
    output outputs_10__1 ;
    output outputs_10__0 ;
    output outputs_9__15 ;
    output outputs_9__14 ;
    output outputs_9__13 ;
    output outputs_9__12 ;
    output outputs_9__11 ;
    output outputs_9__10 ;
    output outputs_9__9 ;
    output outputs_9__8 ;
    output outputs_9__7 ;
    output outputs_9__6 ;
    output outputs_9__5 ;
    output outputs_9__4 ;
    output outputs_9__3 ;
    output outputs_9__2 ;
    output outputs_9__1 ;
    output outputs_9__0 ;
    output outputs_8__15 ;
    output outputs_8__14 ;
    output outputs_8__13 ;
    output outputs_8__12 ;
    output outputs_8__11 ;
    output outputs_8__10 ;
    output outputs_8__9 ;
    output outputs_8__8 ;
    output outputs_8__7 ;
    output outputs_8__6 ;
    output outputs_8__5 ;
    output outputs_8__4 ;
    output outputs_8__3 ;
    output outputs_8__2 ;
    output outputs_8__1 ;
    output outputs_8__0 ;
    output outputs_7__15 ;
    output outputs_7__14 ;
    output outputs_7__13 ;
    output outputs_7__12 ;
    output outputs_7__11 ;
    output outputs_7__10 ;
    output outputs_7__9 ;
    output outputs_7__8 ;
    output outputs_7__7 ;
    output outputs_7__6 ;
    output outputs_7__5 ;
    output outputs_7__4 ;
    output outputs_7__3 ;
    output outputs_7__2 ;
    output outputs_7__1 ;
    output outputs_7__0 ;
    output outputs_6__15 ;
    output outputs_6__14 ;
    output outputs_6__13 ;
    output outputs_6__12 ;
    output outputs_6__11 ;
    output outputs_6__10 ;
    output outputs_6__9 ;
    output outputs_6__8 ;
    output outputs_6__7 ;
    output outputs_6__6 ;
    output outputs_6__5 ;
    output outputs_6__4 ;
    output outputs_6__3 ;
    output outputs_6__2 ;
    output outputs_6__1 ;
    output outputs_6__0 ;
    output outputs_5__15 ;
    output outputs_5__14 ;
    output outputs_5__13 ;
    output outputs_5__12 ;
    output outputs_5__11 ;
    output outputs_5__10 ;
    output outputs_5__9 ;
    output outputs_5__8 ;
    output outputs_5__7 ;
    output outputs_5__6 ;
    output outputs_5__5 ;
    output outputs_5__4 ;
    output outputs_5__3 ;
    output outputs_5__2 ;
    output outputs_5__1 ;
    output outputs_5__0 ;
    output outputs_4__15 ;
    output outputs_4__14 ;
    output outputs_4__13 ;
    output outputs_4__12 ;
    output outputs_4__11 ;
    output outputs_4__10 ;
    output outputs_4__9 ;
    output outputs_4__8 ;
    output outputs_4__7 ;
    output outputs_4__6 ;
    output outputs_4__5 ;
    output outputs_4__4 ;
    output outputs_4__3 ;
    output outputs_4__2 ;
    output outputs_4__1 ;
    output outputs_4__0 ;
    output outputs_3__15 ;
    output outputs_3__14 ;
    output outputs_3__13 ;
    output outputs_3__12 ;
    output outputs_3__11 ;
    output outputs_3__10 ;
    output outputs_3__9 ;
    output outputs_3__8 ;
    output outputs_3__7 ;
    output outputs_3__6 ;
    output outputs_3__5 ;
    output outputs_3__4 ;
    output outputs_3__3 ;
    output outputs_3__2 ;
    output outputs_3__1 ;
    output outputs_3__0 ;
    output outputs_2__15 ;
    output outputs_2__14 ;
    output outputs_2__13 ;
    output outputs_2__12 ;
    output outputs_2__11 ;
    output outputs_2__10 ;
    output outputs_2__9 ;
    output outputs_2__8 ;
    output outputs_2__7 ;
    output outputs_2__6 ;
    output outputs_2__5 ;
    output outputs_2__4 ;
    output outputs_2__3 ;
    output outputs_2__2 ;
    output outputs_2__1 ;
    output outputs_2__0 ;
    output outputs_1__15 ;
    output outputs_1__14 ;
    output outputs_1__13 ;
    output outputs_1__12 ;
    output outputs_1__11 ;
    output outputs_1__10 ;
    output outputs_1__9 ;
    output outputs_1__8 ;
    output outputs_1__7 ;
    output outputs_1__6 ;
    output outputs_1__5 ;
    output outputs_1__4 ;
    output outputs_1__3 ;
    output outputs_1__2 ;
    output outputs_1__1 ;
    output outputs_1__0 ;
    output outputs_0__15 ;
    output outputs_0__14 ;
    output outputs_0__13 ;
    output outputs_0__12 ;
    output outputs_0__11 ;
    output outputs_0__10 ;
    output outputs_0__9 ;
    output outputs_0__8 ;
    output outputs_0__7 ;
    output outputs_0__6 ;
    output outputs_0__5 ;
    output outputs_0__4 ;
    output outputs_0__3 ;
    output outputs_0__2 ;
    output outputs_0__1 ;
    output outputs_0__0 ;
    input clk ;
    input start ;
    input rst ;
    output doneOut ;
    output workingOut ;

    wire workingOut_rename, counterRst, restartDetection, firstStart, PWR, nx12, 
         nx15;
    wire [2:0] \$dummy ;




    assign outputs_24__15 = workingOut ;
    assign outputs_24__14 = workingOut ;
    assign outputs_24__13 = workingOut ;
    assign outputs_24__12 = workingOut ;
    assign outputs_24__11 = workingOut ;
    assign outputs_24__10 = workingOut ;
    assign outputs_24__9 = workingOut ;
    assign outputs_24__8 = workingOut ;
    assign outputs_24__7 = workingOut ;
    assign outputs_24__6 = workingOut ;
    assign outputs_24__5 = workingOut ;
    assign outputs_24__4 = workingOut ;
    assign outputs_24__3 = workingOut ;
    assign outputs_24__2 = workingOut ;
    assign outputs_24__1 = workingOut ;
    assign outputs_24__0 = workingOut ;
    assign outputs_23__15 = workingOut ;
    assign outputs_23__14 = workingOut ;
    assign outputs_23__13 = workingOut ;
    assign outputs_23__12 = workingOut ;
    assign outputs_23__11 = workingOut ;
    assign outputs_23__10 = workingOut ;
    assign outputs_23__9 = workingOut ;
    assign outputs_23__8 = workingOut ;
    assign outputs_23__7 = workingOut ;
    assign outputs_23__6 = workingOut ;
    assign outputs_23__5 = workingOut ;
    assign outputs_23__4 = workingOut ;
    assign outputs_23__3 = workingOut ;
    assign outputs_23__2 = workingOut ;
    assign outputs_23__1 = workingOut ;
    assign outputs_23__0 = workingOut ;
    assign outputs_22__15 = workingOut ;
    assign outputs_22__14 = workingOut ;
    assign outputs_22__13 = workingOut ;
    assign outputs_22__12 = workingOut ;
    assign outputs_22__11 = workingOut ;
    assign outputs_22__10 = workingOut ;
    assign outputs_22__9 = workingOut ;
    assign outputs_22__8 = workingOut ;
    assign outputs_22__7 = workingOut ;
    assign outputs_22__6 = workingOut ;
    assign outputs_22__5 = workingOut ;
    assign outputs_22__4 = workingOut ;
    assign outputs_22__3 = workingOut ;
    assign outputs_22__2 = workingOut ;
    assign outputs_22__1 = workingOut ;
    assign outputs_22__0 = workingOut ;
    assign outputs_21__15 = workingOut ;
    assign outputs_21__14 = workingOut ;
    assign outputs_21__13 = workingOut ;
    assign outputs_21__12 = workingOut ;
    assign outputs_21__11 = workingOut ;
    assign outputs_21__10 = workingOut ;
    assign outputs_21__9 = workingOut ;
    assign outputs_21__8 = workingOut ;
    assign outputs_21__7 = workingOut ;
    assign outputs_21__6 = workingOut ;
    assign outputs_21__5 = workingOut ;
    assign outputs_21__4 = workingOut ;
    assign outputs_21__3 = workingOut ;
    assign outputs_21__2 = workingOut ;
    assign outputs_21__1 = workingOut ;
    assign outputs_21__0 = workingOut ;
    assign outputs_20__15 = workingOut ;
    assign outputs_20__14 = workingOut ;
    assign outputs_20__13 = workingOut ;
    assign outputs_20__12 = workingOut ;
    assign outputs_20__11 = workingOut ;
    assign outputs_20__10 = workingOut ;
    assign outputs_20__9 = workingOut ;
    assign outputs_20__8 = workingOut ;
    assign outputs_20__7 = workingOut ;
    assign outputs_20__6 = workingOut ;
    assign outputs_20__5 = workingOut ;
    assign outputs_20__4 = workingOut ;
    assign outputs_20__3 = workingOut ;
    assign outputs_20__2 = workingOut ;
    assign outputs_20__1 = workingOut ;
    assign outputs_20__0 = workingOut ;
    assign outputs_19__15 = workingOut ;
    assign outputs_19__14 = workingOut ;
    assign outputs_19__13 = workingOut ;
    assign outputs_19__12 = workingOut ;
    assign outputs_19__11 = workingOut ;
    assign outputs_19__10 = workingOut ;
    assign outputs_19__9 = workingOut ;
    assign outputs_19__8 = workingOut ;
    assign outputs_19__7 = workingOut ;
    assign outputs_19__6 = workingOut ;
    assign outputs_19__5 = workingOut ;
    assign outputs_19__4 = workingOut ;
    assign outputs_19__3 = workingOut ;
    assign outputs_19__2 = workingOut ;
    assign outputs_19__1 = workingOut ;
    assign outputs_19__0 = workingOut ;
    assign outputs_18__15 = workingOut ;
    assign outputs_18__14 = workingOut ;
    assign outputs_18__13 = workingOut ;
    assign outputs_18__12 = workingOut ;
    assign outputs_18__11 = workingOut ;
    assign outputs_18__10 = workingOut ;
    assign outputs_18__9 = workingOut ;
    assign outputs_18__8 = workingOut ;
    assign outputs_18__7 = workingOut ;
    assign outputs_18__6 = workingOut ;
    assign outputs_18__5 = workingOut ;
    assign outputs_18__4 = workingOut ;
    assign outputs_18__3 = workingOut ;
    assign outputs_18__2 = workingOut ;
    assign outputs_18__1 = workingOut ;
    assign outputs_18__0 = workingOut ;
    assign outputs_17__15 = workingOut ;
    assign outputs_17__14 = workingOut ;
    assign outputs_17__13 = workingOut ;
    assign outputs_17__12 = workingOut ;
    assign outputs_17__11 = workingOut ;
    assign outputs_17__10 = workingOut ;
    assign outputs_17__9 = workingOut ;
    assign outputs_17__8 = workingOut ;
    assign outputs_17__7 = workingOut ;
    assign outputs_17__6 = workingOut ;
    assign outputs_17__5 = workingOut ;
    assign outputs_17__4 = workingOut ;
    assign outputs_17__3 = workingOut ;
    assign outputs_17__2 = workingOut ;
    assign outputs_17__1 = workingOut ;
    assign outputs_17__0 = workingOut ;
    assign outputs_16__15 = workingOut ;
    assign outputs_16__14 = workingOut ;
    assign outputs_16__13 = workingOut ;
    assign outputs_16__12 = workingOut ;
    assign outputs_16__11 = workingOut ;
    assign outputs_16__10 = workingOut ;
    assign outputs_16__9 = workingOut ;
    assign outputs_16__8 = workingOut ;
    assign outputs_16__7 = workingOut ;
    assign outputs_16__6 = workingOut ;
    assign outputs_16__5 = workingOut ;
    assign outputs_16__4 = workingOut ;
    assign outputs_16__3 = workingOut ;
    assign outputs_16__2 = workingOut ;
    assign outputs_16__1 = workingOut ;
    assign outputs_16__0 = workingOut ;
    assign outputs_15__15 = workingOut ;
    assign outputs_15__14 = workingOut ;
    assign outputs_15__13 = workingOut ;
    assign outputs_15__12 = workingOut ;
    assign outputs_15__11 = workingOut ;
    assign outputs_15__10 = workingOut ;
    assign outputs_15__9 = workingOut ;
    assign outputs_15__8 = workingOut ;
    assign outputs_15__7 = workingOut ;
    assign outputs_15__6 = workingOut ;
    assign outputs_15__5 = workingOut ;
    assign outputs_15__4 = workingOut ;
    assign outputs_15__3 = workingOut ;
    assign outputs_15__2 = workingOut ;
    assign outputs_15__1 = workingOut ;
    assign outputs_15__0 = workingOut ;
    assign outputs_14__15 = workingOut ;
    assign outputs_14__14 = workingOut ;
    assign outputs_14__13 = workingOut ;
    assign outputs_14__12 = workingOut ;
    assign outputs_14__11 = workingOut ;
    assign outputs_14__10 = workingOut ;
    assign outputs_14__9 = workingOut ;
    assign outputs_14__8 = workingOut ;
    assign outputs_14__7 = workingOut ;
    assign outputs_14__6 = workingOut ;
    assign outputs_14__5 = workingOut ;
    assign outputs_14__4 = workingOut ;
    assign outputs_14__3 = workingOut ;
    assign outputs_14__2 = workingOut ;
    assign outputs_14__1 = workingOut ;
    assign outputs_14__0 = workingOut ;
    assign outputs_13__15 = workingOut ;
    assign outputs_13__14 = workingOut ;
    assign outputs_13__13 = workingOut ;
    assign outputs_13__12 = workingOut ;
    assign outputs_13__11 = workingOut ;
    assign outputs_13__10 = workingOut ;
    assign outputs_13__9 = workingOut ;
    assign outputs_13__8 = workingOut ;
    assign outputs_13__7 = workingOut ;
    assign outputs_13__6 = workingOut ;
    assign outputs_13__5 = workingOut ;
    assign outputs_13__4 = workingOut ;
    assign outputs_13__3 = workingOut ;
    assign outputs_13__2 = workingOut ;
    assign outputs_13__1 = workingOut ;
    assign outputs_13__0 = workingOut ;
    assign outputs_12__15 = workingOut ;
    assign outputs_12__14 = workingOut ;
    assign outputs_12__13 = workingOut ;
    assign outputs_12__12 = workingOut ;
    assign outputs_12__11 = workingOut ;
    assign outputs_12__10 = workingOut ;
    assign outputs_12__9 = workingOut ;
    assign outputs_12__8 = workingOut ;
    assign outputs_12__7 = workingOut ;
    assign outputs_12__6 = workingOut ;
    assign outputs_12__5 = workingOut ;
    assign outputs_12__4 = workingOut ;
    assign outputs_12__3 = workingOut ;
    assign outputs_12__2 = workingOut ;
    assign outputs_12__1 = workingOut ;
    assign outputs_12__0 = workingOut ;
    assign outputs_11__15 = workingOut ;
    assign outputs_11__14 = workingOut ;
    assign outputs_11__13 = workingOut ;
    assign outputs_11__12 = workingOut ;
    assign outputs_11__11 = workingOut ;
    assign outputs_11__10 = workingOut ;
    assign outputs_11__9 = workingOut ;
    assign outputs_11__8 = workingOut ;
    assign outputs_11__7 = workingOut ;
    assign outputs_11__6 = workingOut ;
    assign outputs_11__5 = workingOut ;
    assign outputs_11__4 = workingOut ;
    assign outputs_11__3 = workingOut ;
    assign outputs_11__2 = workingOut ;
    assign outputs_11__1 = workingOut ;
    assign outputs_11__0 = workingOut ;
    assign outputs_10__15 = workingOut ;
    assign outputs_10__14 = workingOut ;
    assign outputs_10__13 = workingOut ;
    assign outputs_10__12 = workingOut ;
    assign outputs_10__11 = workingOut ;
    assign outputs_10__10 = workingOut ;
    assign outputs_10__9 = workingOut ;
    assign outputs_10__8 = workingOut ;
    assign outputs_10__7 = workingOut ;
    assign outputs_10__6 = workingOut ;
    assign outputs_10__5 = workingOut ;
    assign outputs_10__4 = workingOut ;
    assign outputs_10__3 = workingOut ;
    assign outputs_10__2 = workingOut ;
    assign outputs_10__1 = workingOut ;
    assign outputs_10__0 = workingOut ;
    assign outputs_9__15 = workingOut ;
    assign outputs_9__14 = workingOut ;
    assign outputs_9__13 = workingOut ;
    assign outputs_9__12 = workingOut ;
    assign outputs_9__11 = workingOut ;
    assign outputs_9__10 = workingOut ;
    assign outputs_9__9 = workingOut ;
    assign outputs_9__8 = workingOut ;
    assign outputs_9__7 = workingOut ;
    assign outputs_9__6 = workingOut ;
    assign outputs_9__5 = workingOut ;
    assign outputs_9__4 = workingOut ;
    assign outputs_9__3 = workingOut ;
    assign outputs_9__2 = workingOut ;
    assign outputs_9__1 = workingOut ;
    assign outputs_9__0 = workingOut ;
    assign outputs_8__15 = workingOut ;
    assign outputs_8__14 = workingOut ;
    assign outputs_8__13 = workingOut ;
    assign outputs_8__12 = workingOut ;
    assign outputs_8__11 = workingOut ;
    assign outputs_8__10 = workingOut ;
    assign outputs_8__9 = workingOut ;
    assign outputs_8__8 = workingOut ;
    assign outputs_8__7 = workingOut ;
    assign outputs_8__6 = workingOut ;
    assign outputs_8__5 = workingOut ;
    assign outputs_8__4 = workingOut ;
    assign outputs_8__3 = workingOut ;
    assign outputs_8__2 = workingOut ;
    assign outputs_8__1 = workingOut ;
    assign outputs_8__0 = workingOut ;
    assign outputs_7__15 = workingOut ;
    assign outputs_7__14 = workingOut ;
    assign outputs_7__13 = workingOut ;
    assign outputs_7__12 = workingOut ;
    assign outputs_7__11 = workingOut ;
    assign outputs_7__10 = workingOut ;
    assign outputs_7__9 = workingOut ;
    assign outputs_7__8 = workingOut ;
    assign outputs_7__7 = workingOut ;
    assign outputs_7__6 = workingOut ;
    assign outputs_7__5 = workingOut ;
    assign outputs_7__4 = workingOut ;
    assign outputs_7__3 = workingOut ;
    assign outputs_7__2 = workingOut ;
    assign outputs_7__1 = workingOut ;
    assign outputs_7__0 = workingOut ;
    assign outputs_6__15 = workingOut ;
    assign outputs_6__14 = workingOut ;
    assign outputs_6__13 = workingOut ;
    assign outputs_6__12 = workingOut ;
    assign outputs_6__11 = workingOut ;
    assign outputs_6__10 = workingOut ;
    assign outputs_6__9 = workingOut ;
    assign outputs_6__8 = workingOut ;
    assign outputs_6__7 = workingOut ;
    assign outputs_6__6 = workingOut ;
    assign outputs_6__5 = workingOut ;
    assign outputs_6__4 = workingOut ;
    assign outputs_6__3 = workingOut ;
    assign outputs_6__2 = workingOut ;
    assign outputs_6__1 = workingOut ;
    assign outputs_6__0 = workingOut ;
    assign outputs_5__15 = workingOut ;
    assign outputs_5__14 = workingOut ;
    assign outputs_5__13 = workingOut ;
    assign outputs_5__12 = workingOut ;
    assign outputs_5__11 = workingOut ;
    assign outputs_5__10 = workingOut ;
    assign outputs_5__9 = workingOut ;
    assign outputs_5__8 = workingOut ;
    assign outputs_5__7 = workingOut ;
    assign outputs_5__6 = workingOut ;
    assign outputs_5__5 = workingOut ;
    assign outputs_5__4 = workingOut ;
    assign outputs_5__3 = workingOut ;
    assign outputs_5__2 = workingOut ;
    assign outputs_5__1 = workingOut ;
    assign outputs_5__0 = workingOut ;
    assign outputs_4__15 = workingOut ;
    assign outputs_4__14 = workingOut ;
    assign outputs_4__13 = workingOut ;
    assign outputs_4__12 = workingOut ;
    assign outputs_4__11 = workingOut ;
    assign outputs_4__10 = workingOut ;
    assign outputs_4__9 = workingOut ;
    assign outputs_4__8 = workingOut ;
    assign outputs_4__7 = workingOut ;
    assign outputs_4__6 = workingOut ;
    assign outputs_4__5 = workingOut ;
    assign outputs_4__4 = workingOut ;
    assign outputs_4__3 = workingOut ;
    assign outputs_4__2 = workingOut ;
    assign outputs_4__1 = workingOut ;
    assign outputs_4__0 = workingOut ;
    assign outputs_3__15 = workingOut ;
    assign outputs_3__14 = workingOut ;
    assign outputs_3__13 = workingOut ;
    assign outputs_3__12 = workingOut ;
    assign outputs_3__11 = workingOut ;
    assign outputs_3__10 = workingOut ;
    assign outputs_3__9 = workingOut ;
    assign outputs_3__8 = workingOut ;
    assign outputs_3__7 = workingOut ;
    assign outputs_3__6 = workingOut ;
    assign outputs_3__5 = workingOut ;
    assign outputs_3__4 = workingOut ;
    assign outputs_3__3 = workingOut ;
    assign outputs_3__2 = workingOut ;
    assign outputs_3__1 = workingOut ;
    assign outputs_3__0 = workingOut ;
    assign outputs_2__15 = workingOut ;
    assign outputs_2__14 = workingOut ;
    assign outputs_2__13 = workingOut ;
    assign outputs_2__12 = workingOut ;
    assign outputs_2__11 = workingOut ;
    assign outputs_2__10 = workingOut ;
    assign outputs_2__9 = workingOut ;
    assign outputs_2__8 = workingOut ;
    assign outputs_2__7 = workingOut ;
    assign outputs_2__6 = workingOut ;
    assign outputs_2__5 = workingOut ;
    assign outputs_2__4 = workingOut ;
    assign outputs_2__3 = workingOut ;
    assign outputs_2__2 = workingOut ;
    assign outputs_2__1 = workingOut ;
    assign outputs_2__0 = workingOut ;
    assign outputs_1__15 = workingOut ;
    assign outputs_1__14 = workingOut ;
    assign outputs_1__13 = workingOut ;
    assign outputs_1__12 = workingOut ;
    assign outputs_1__11 = workingOut ;
    assign outputs_1__10 = workingOut ;
    assign outputs_1__9 = workingOut ;
    assign outputs_1__8 = workingOut ;
    assign outputs_1__7 = workingOut ;
    assign outputs_1__6 = workingOut ;
    assign outputs_1__5 = workingOut ;
    assign outputs_1__4 = workingOut ;
    assign outputs_1__3 = workingOut ;
    assign outputs_1__2 = workingOut ;
    assign outputs_1__1 = workingOut ;
    assign outputs_1__0 = workingOut ;
    assign outputs_0__15 = workingOut ;
    assign outputs_0__14 = workingOut ;
    assign outputs_0__13 = workingOut ;
    assign outputs_0__12 = workingOut ;
    assign outputs_0__11 = workingOut ;
    assign outputs_0__10 = workingOut ;
    assign outputs_0__9 = workingOut ;
    assign outputs_0__8 = workingOut ;
    assign outputs_0__7 = workingOut ;
    assign outputs_0__6 = workingOut ;
    assign outputs_0__5 = workingOut ;
    assign outputs_0__4 = workingOut ;
    assign outputs_0__3 = workingOut ;
    assign outputs_0__2 = workingOut ;
    assign outputs_0__1 = workingOut ;
    assign outputs_0__0 = workingOut ;
    TransitionDetector StartCaptuerCmp (.edge (start), .clk (clk), .rst (rst), .f (
                       restartDetection)) ;
    ShiftReg_3 CounterCmp (.outp ({doneOut,\$dummy [0],\$dummy [1],\$dummy [2]})
               , .clk (clk), .en (workingOut_rename), .rst (counterRst)) ;
    Reg_1 firtStartLachCmp (.D ({PWR}), .en (PWR), .clk (start), .rst (rst), .Q (
          {firstStart})) ;
    fake_vcc ix4 (.Y (PWR)) ;
    fake_gnd ix2 (.Y (workingOut)) ;
    inv01 ix1 (.Y (counterRst), .A (nx12)) ;
    nor02_2x ix13 (.Y (nx12), .A0 (rst), .A1 (restartDetection)) ;
    nor02_2x ix5 (.Y (workingOut_rename), .A0 (nx15), .A1 (doneOut)) ;
    inv01 ix16 (.Y (nx15), .A (firstStart)) ;
endmodule


module Reg_1 ( D, en, clk, rst, Q ) ;

    input [0:0]D ;
    input en ;
    input clk ;
    input rst ;
    output [0:0]Q ;

    wire nx0;
    wire [0:0] \$dummy ;




    fake_vcc ix1 (.Y (nx0)) ;
    dffr reg_Q_0 (.Q (Q[0]), .QB (\$dummy [0]), .D (nx0), .CLK (clk), .R (rst)
         ) ;
endmodule


module ShiftReg_3 ( outp, clk, en, rst ) ;

    inout [3:0]outp ;
    input clk ;
    input en ;
    input rst ;

    wire nx50, nx64, nx74, nx84, nx96, nx98, nx101, nx104;
    wire [2:0] \$dummy ;




    assign outp[1] = outp[2] ;
    assign outp[0] = outp[2] ;
    fake_gnd ix43 (.Y (outp[2])) ;
    mux21 ix85 (.Y (nx84), .A0 (nx96), .A1 (nx98), .S0 (en)) ;
    dffr reg_outp_3 (.Q (outp[3]), .QB (nx96), .D (nx84), .CLK (clk), .R (rst)
         ) ;
    dffr reg_outp_2 (.Q (\$dummy [0]), .QB (nx98), .D (nx74), .CLK (clk), .R (
         rst)) ;
    mux21 ix75 (.Y (nx74), .A0 (nx98), .A1 (nx101), .S0 (en)) ;
    dffr reg_outp_1 (.Q (\$dummy [1]), .QB (nx101), .D (nx64), .CLK (clk), .R (
         rst)) ;
    mux21 ix65 (.Y (nx64), .A0 (nx101), .A1 (nx104), .S0 (en)) ;
    dffs_ni reg_outp_0 (.Q (\$dummy [2]), .QB (nx104), .D (nx50), .CLK (clk), .S (
            rst)) ;
    nor02_2x ix51 (.Y (nx50), .A0 (nx104), .A1 (en)) ;
endmodule


module TransitionDetector ( edge, clk, rst, f ) ;

    input edge ;
    input clk ;
    input rst ;
    inout f ;

    wire nx0, d, NOT_clk, nx8, nx29;
    wire [1:0] \$dummy ;




    fake_vcc ix1 (.Y (nx0)) ;
    dffr reg_f (.Q (f), .QB (\$dummy [0]), .D (nx0), .CLK (edge), .R (nx8)) ;
    inv01 ix9 (.Y (nx8), .A (nx29)) ;
    nor02_2x ix30 (.Y (nx29), .A0 (d), .A1 (rst)) ;
    dff reg_d (.Q (d), .QB (\$dummy [1]), .D (f), .CLK (NOT_clk)) ;
    inv01 ix33 (.Y (NOT_clk), .A (clk)) ;
endmodule

