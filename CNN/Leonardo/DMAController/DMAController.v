//
// Verilog description for cell DMAController, 
// Sun Apr 14 21:26:54 2019
//
// LeonardoSpectrum Level 3, 2018a.2 
//


module DMAController ( clk, reset, weightsInternalBus, windowInternalBus, 
                       weightsRamAddress, windowRamAddress, weightsRamDataInBus, 
                       windowRamDataInBus, weightsRamRead, windowRamRead, 
                       windowRamWrite, windowRamDataOutBus, MFCWindowRam, 
                       MFCWeightsRam, loadNextFilter, loadNextWindow, 
                       loadNextRow, loadWord, layerFinished, write, filterSize, 
                       inputSize, outputSize, windowRamBaseAddress1, 
                       windowRamBaseAddress2, filterRamBaseAddress, 
                       windowReadOne, windowReadFinal, weightsReadOne, 
                       weightsReadFinal, writeDoneAll, writeDoneOne, 
                       filterAluNumber, windowAluNumber ) ;

    input clk ;
    input reset ;
    output [15:0]weightsInternalBus ;
    inout [15:0]windowInternalBus ;
    output [15:0]weightsRamAddress ;
    output [15:0]windowRamAddress ;
    input [15:0]weightsRamDataInBus ;
    input [15:0]windowRamDataInBus ;
    output weightsRamRead ;
    output windowRamRead ;
    output windowRamWrite ;
    output [15:0]windowRamDataOutBus ;
    input MFCWindowRam ;
    input MFCWeightsRam ;
    input loadNextFilter ;
    input loadNextWindow ;
    input loadNextRow ;
    input loadWord ;
    input layerFinished ;
    input write ;
    input [15:0]filterSize ;
    input [15:0]inputSize ;
    input [15:0]outputSize ;
    input [15:0]windowRamBaseAddress1 ;
    input [15:0]windowRamBaseAddress2 ;
    input [15:0]filterRamBaseAddress ;
    output windowReadOne ;
    output windowReadFinal ;
    output weightsReadOne ;
    output weightsReadFinal ;
    output writeDoneAll ;
    output writeDoneOne ;
    output [2:0]filterAluNumber ;
    output [2:0]windowAluNumber ;

    wire currentReadRamBaseAddress_15, currentReadRamBaseAddress_14, 
         currentReadRamBaseAddress_13, currentReadRamBaseAddress_12, 
         currentReadRamBaseAddress_11, currentReadRamBaseAddress_10, 
         currentReadRamBaseAddress_9, currentReadRamBaseAddress_8, 
         currentReadRamBaseAddress_7, currentReadRamBaseAddress_6, 
         currentReadRamBaseAddress_5, currentReadRamBaseAddress_4, 
         currentReadRamBaseAddress_3, currentReadRamBaseAddress_2, 
         currentReadRamBaseAddress_1, currentReadRamBaseAddress_0, 
         currentWriteRamBaseAddress_15, currentWriteRamBaseAddress_14, 
         currentWriteRamBaseAddress_13, currentWriteRamBaseAddress_12, 
         currentWriteRamBaseAddress_11, currentWriteRamBaseAddress_10, 
         currentWriteRamBaseAddress_9, currentWriteRamBaseAddress_8, 
         currentWriteRamBaseAddress_7, currentWriteRamBaseAddress_6, 
         currentWriteRamBaseAddress_5, currentWriteRamBaseAddress_4, 
         currentWriteRamBaseAddress_3, currentWriteRamBaseAddress_2, 
         currentWriteRamBaseAddress_1, currentWriteRamBaseAddress_0, 
         readLogicRamAddress_15, readLogicRamAddress_14, readLogicRamAddress_13, 
         readLogicRamAddress_12, readLogicRamAddress_11, readLogicRamAddress_10, 
         readLogicRamAddress_9, readLogicRamAddress_8, readLogicRamAddress_7, 
         readLogicRamAddress_6, readLogicRamAddress_5, readLogicRamAddress_4, 
         readLogicRamAddress_3, readLogicRamAddress_2, readLogicRamAddress_1, 
         readLogicRamAddress_0, writeLogicRamAddress_15, writeLogicRamAddress_14, 
         writeLogicRamAddress_13, writeLogicRamAddress_12, 
         writeLogicRamAddress_11, writeLogicRamAddress_10, 
         writeLogicRamAddress_9, writeLogicRamAddress_8, writeLogicRamAddress_7, 
         writeLogicRamAddress_6, writeLogicRamAddress_5, writeLogicRamAddress_4, 
         writeLogicRamAddress_3, writeLogicRamAddress_2, writeLogicRamAddress_1, 
         writeLogicRamAddress_0, switchRam, resetLogics, PWR, 
         ramBaseAddressSelector, NOT_ramBaseAddressSelector, nx389, nx393, nx398, 
         nx401, nx403, nx406, nx408, nx411, nx413, nx416, nx418, nx421, nx423, 
         nx426, nx428, nx431, nx433, nx436, nx438, nx441, nx443, nx446, nx448, 
         nx451, nx453, nx456, nx458, nx461, nx463, nx466, nx468, nx471, nx473, 
         nx476, nx478, nx481, nx483, nx486, nx488, nx491, nx493, nx496, nx498, 
         nx501, nx503, nx506, nx508, nx511, nx513, nx516, nx518, nx521, nx523, 
         nx526, nx528, nx531, nx533, nx536, nx538, nx541, nx543, nx546, nx548, 
         nx551, nx553, nx556, nx558, nx563, nx565, nx568, nx570, nx573, nx575, 
         nx578, nx580, nx583, nx585, nx588, nx590, nx593, nx595, nx598, nx600, 
         nx603, nx605, nx608, nx610, nx613, nx615, nx618, nx620, nx623, nx625, 
         nx628, nx630, nx633, nx635, nx642, nx644, nx646, nx648, nx650, nx652, 
         nx654, nx656, nx658, nx660, nx662, nx664, nx666, nx668;



    ReadLogic_16_16 windowReadLogicEnt (.clk (clk), .resetState (resetLogics), .switchRam (
                    switchRam), .ramBasedAddress ({currentReadRamBaseAddress_15,
                    currentReadRamBaseAddress_14,currentReadRamBaseAddress_13,
                    currentReadRamBaseAddress_12,currentReadRamBaseAddress_11,
                    currentReadRamBaseAddress_10,currentReadRamBaseAddress_9,
                    currentReadRamBaseAddress_8,currentReadRamBaseAddress_7,
                    currentReadRamBaseAddress_6,currentReadRamBaseAddress_5,
                    currentReadRamBaseAddress_4,currentReadRamBaseAddress_3,
                    currentReadRamBaseAddress_2,currentReadRamBaseAddress_1,
                    currentReadRamBaseAddress_0}), .internalBus ({
                    windowInternalBus[15],windowInternalBus[14],
                    windowInternalBus[13],windowInternalBus[12],
                    windowInternalBus[11],windowInternalBus[10],
                    windowInternalBus[9],windowInternalBus[8],
                    windowInternalBus[7],windowInternalBus[6],
                    windowInternalBus[5],windowInternalBus[4],
                    windowInternalBus[3],windowInternalBus[2],
                    windowInternalBus[1],windowInternalBus[0]}), .ramDataInBus (
                    {windowRamDataInBus[15],windowRamDataInBus[14],
                    windowRamDataInBus[13],windowRamDataInBus[12],
                    windowRamDataInBus[11],windowRamDataInBus[10],
                    windowRamDataInBus[9],windowRamDataInBus[8],
                    windowRamDataInBus[7],windowRamDataInBus[6],
                    windowRamDataInBus[5],windowRamDataInBus[4],
                    windowRamDataInBus[3],windowRamDataInBus[2],
                    windowRamDataInBus[1],windowRamDataInBus[0]}), .ramRead (
                    windowRamRead), .ramAddress ({readLogicRamAddress_15,
                    readLogicRamAddress_14,readLogicRamAddress_13,
                    readLogicRamAddress_12,readLogicRamAddress_11,
                    readLogicRamAddress_10,readLogicRamAddress_9,
                    readLogicRamAddress_8,readLogicRamAddress_7,
                    readLogicRamAddress_6,readLogicRamAddress_5,
                    readLogicRamAddress_4,readLogicRamAddress_3,
                    readLogicRamAddress_2,readLogicRamAddress_1,
                    readLogicRamAddress_0}), .MFC (MFCWindowRam), .inputSize ({
                    inputSize[15],inputSize[14],inputSize[13],inputSize[12],
                    inputSize[11],inputSize[10],inputSize[9],inputSize[8],
                    inputSize[7],inputSize[6],inputSize[5],inputSize[4],
                    inputSize[3],inputSize[2],inputSize[1],inputSize[0]}), .filterSize (
                    {resetLogics,resetLogics,resetLogics,resetLogics,resetLogics
                    ,resetLogics,resetLogics,resetLogics,resetLogics,resetLogics
                    ,resetLogics,resetLogics,resetLogics,filterSize[2],
                    filterSize[1],filterSize[0]}), .isFilter (resetLogics), .loadNextWordList (
                    loadNextWindow), .loadWord (loadNextRow), .readOne (
                    windowReadOne), .readFinal (windowReadFinal), .aluNumber ({
                    windowAluNumber[2],windowAluNumber[1],windowAluNumber[0]})
                    ) ;
    ReadLogic_16_16_unfolded0 filterReadLogicEnt (.clk (clk), .resetState (
                              resetLogics), .switchRam (reset), .ramBasedAddress (
                              {filterRamBaseAddress[15],filterRamBaseAddress[14]
                              ,filterRamBaseAddress[13],filterRamBaseAddress[12]
                              ,filterRamBaseAddress[11],filterRamBaseAddress[10]
                              ,filterRamBaseAddress[9],filterRamBaseAddress[8],
                              filterRamBaseAddress[7],filterRamBaseAddress[6],
                              filterRamBaseAddress[5],filterRamBaseAddress[4],
                              filterRamBaseAddress[3],filterRamBaseAddress[2],
                              filterRamBaseAddress[1],filterRamBaseAddress[0]})
                              , .internalBus ({weightsInternalBus[15],
                              weightsInternalBus[14],weightsInternalBus[13],
                              weightsInternalBus[12],weightsInternalBus[11],
                              weightsInternalBus[10],weightsInternalBus[9],
                              weightsInternalBus[8],weightsInternalBus[7],
                              weightsInternalBus[6],weightsInternalBus[5],
                              weightsInternalBus[4],weightsInternalBus[3],
                              weightsInternalBus[2],weightsInternalBus[1],
                              weightsInternalBus[0]}), .ramDataInBus ({
                              weightsRamDataInBus[15],weightsRamDataInBus[14],
                              weightsRamDataInBus[13],weightsRamDataInBus[12],
                              weightsRamDataInBus[11],weightsRamDataInBus[10],
                              weightsRamDataInBus[9],weightsRamDataInBus[8],
                              weightsRamDataInBus[7],weightsRamDataInBus[6],
                              weightsRamDataInBus[5],weightsRamDataInBus[4],
                              weightsRamDataInBus[3],weightsRamDataInBus[2],
                              weightsRamDataInBus[1],weightsRamDataInBus[0]}), .ramRead (
                              weightsRamRead), .ramAddress ({
                              weightsRamAddress[15],weightsRamAddress[14],
                              weightsRamAddress[13],weightsRamAddress[12],
                              weightsRamAddress[11],weightsRamAddress[10],
                              weightsRamAddress[9],weightsRamAddress[8],
                              weightsRamAddress[7],weightsRamAddress[6],
                              weightsRamAddress[5],weightsRamAddress[4],
                              weightsRamAddress[3],weightsRamAddress[2],
                              weightsRamAddress[1],weightsRamAddress[0]}), .MFC (
                              MFCWeightsRam), .inputSize ({filterSize[15],
                              filterSize[14],filterSize[13],filterSize[12],
                              filterSize[11],filterSize[10],filterSize[9],
                              filterSize[8],filterSize[7],filterSize[6],
                              filterSize[5],filterSize[4],filterSize[3],
                              filterSize[2],filterSize[1],filterSize[0]}), .filterSize (
                              {resetLogics,resetLogics,resetLogics,resetLogics,
                              resetLogics,resetLogics,resetLogics,resetLogics,
                              resetLogics,resetLogics,resetLogics,resetLogics,
                              resetLogics,resetLogics,resetLogics,resetLogics})
                              , .isFilter (PWR), .loadNextWordList (
                              loadNextFilter), .loadWord (loadWord), .readOne (
                              weightsReadOne), .readFinal (weightsReadFinal), .aluNumber (
                              {filterAluNumber[2],filterAluNumber[1],
                              filterAluNumber[0]})) ;
    WriteLogic_16_16 writeLogicEnt (.clk (clk), .resetState (resetLogics), .switchRam (
                     switchRam), .ramBasedAddress ({
                     currentWriteRamBaseAddress_15,currentWriteRamBaseAddress_14
                     ,currentWriteRamBaseAddress_13,
                     currentWriteRamBaseAddress_12,currentWriteRamBaseAddress_11
                     ,currentWriteRamBaseAddress_10,currentWriteRamBaseAddress_9
                     ,currentWriteRamBaseAddress_8,currentWriteRamBaseAddress_7,
                     currentWriteRamBaseAddress_6,currentWriteRamBaseAddress_5,
                     currentWriteRamBaseAddress_4,currentWriteRamBaseAddress_3,
                     currentWriteRamBaseAddress_2,currentWriteRamBaseAddress_1,
                     currentWriteRamBaseAddress_0}), .internalBus ({
                     windowInternalBus[15],windowInternalBus[14],
                     windowInternalBus[13],windowInternalBus[12],
                     windowInternalBus[11],windowInternalBus[10],
                     windowInternalBus[9],windowInternalBus[8],
                     windowInternalBus[7],windowInternalBus[6],
                     windowInternalBus[5],windowInternalBus[4],
                     windowInternalBus[3],windowInternalBus[2],
                     windowInternalBus[1],windowInternalBus[0]}), .ramWrite (
                     windowRamWrite), .ramDataOutBus ({windowRamDataOutBus[15],
                     windowRamDataOutBus[14],windowRamDataOutBus[13],
                     windowRamDataOutBus[12],windowRamDataOutBus[11],
                     windowRamDataOutBus[10],windowRamDataOutBus[9],
                     windowRamDataOutBus[8],windowRamDataOutBus[7],
                     windowRamDataOutBus[6],windowRamDataOutBus[5],
                     windowRamDataOutBus[4],windowRamDataOutBus[3],
                     windowRamDataOutBus[2],windowRamDataOutBus[1],
                     windowRamDataOutBus[0]}), .ramAddress ({
                     writeLogicRamAddress_15,writeLogicRamAddress_14,
                     writeLogicRamAddress_13,writeLogicRamAddress_12,
                     writeLogicRamAddress_11,writeLogicRamAddress_10,
                     writeLogicRamAddress_9,writeLogicRamAddress_8,
                     writeLogicRamAddress_7,writeLogicRamAddress_6,
                     writeLogicRamAddress_5,writeLogicRamAddress_4,
                     writeLogicRamAddress_3,writeLogicRamAddress_2,
                     writeLogicRamAddress_1,writeLogicRamAddress_0}), .MFC (
                     MFCWindowRam), .outputSize ({outputSize[15],outputSize[14],
                     outputSize[13],outputSize[12],outputSize[11],outputSize[10]
                     ,outputSize[9],outputSize[8],outputSize[7],outputSize[6],
                     outputSize[5],outputSize[4],outputSize[3],outputSize[2],
                     outputSize[1],outputSize[0]}), .write (write), .writeDone (
                     writeDoneAll), .writeDoneOne (writeDoneOne)) ;
    fake_vcc ix316 (.Y (PWR)) ;
    fake_gnd ix314 (.Y (resetLogics)) ;
    inv01 ix391 (.Y (switchRam), .A (nx389)) ;
    nor02_2x ix390 (.Y (nx389), .A0 (reset), .A1 (layerFinished)) ;
    nand02 ix141 (.Y (currentWriteRamBaseAddress_0), .A0 (nx393), .A1 (nx398)) ;
    nand02 ix394 (.Y (nx393), .A0 (windowRamBaseAddress1[0]), .A1 (nx642)) ;
    dffr reg_ramBaseAddressSelector (.Q (ramBaseAddressSelector), .QB (
         NOT_ramBaseAddressSelector), .D (NOT_ramBaseAddressSelector), .CLK (
         layerFinished), .R (reset)) ;
    nand02 ix399 (.Y (nx398), .A0 (windowRamBaseAddress2[0]), .A1 (nx652)) ;
    nand02 ix149 (.Y (currentWriteRamBaseAddress_1), .A0 (nx401), .A1 (nx403)) ;
    nand02 ix402 (.Y (nx401), .A0 (windowRamBaseAddress1[1]), .A1 (nx642)) ;
    nand02 ix404 (.Y (nx403), .A0 (windowRamBaseAddress2[1]), .A1 (nx652)) ;
    nand02 ix157 (.Y (currentWriteRamBaseAddress_2), .A0 (nx406), .A1 (nx408)) ;
    nand02 ix407 (.Y (nx406), .A0 (windowRamBaseAddress1[2]), .A1 (nx642)) ;
    nand02 ix409 (.Y (nx408), .A0 (windowRamBaseAddress2[2]), .A1 (nx652)) ;
    nand02 ix165 (.Y (currentWriteRamBaseAddress_3), .A0 (nx411), .A1 (nx413)) ;
    nand02 ix412 (.Y (nx411), .A0 (windowRamBaseAddress1[3]), .A1 (nx642)) ;
    nand02 ix414 (.Y (nx413), .A0 (windowRamBaseAddress2[3]), .A1 (nx652)) ;
    nand02 ix173 (.Y (currentWriteRamBaseAddress_4), .A0 (nx416), .A1 (nx418)) ;
    nand02 ix417 (.Y (nx416), .A0 (windowRamBaseAddress1[4]), .A1 (nx642)) ;
    nand02 ix419 (.Y (nx418), .A0 (windowRamBaseAddress2[4]), .A1 (nx652)) ;
    nand02 ix181 (.Y (currentWriteRamBaseAddress_5), .A0 (nx421), .A1 (nx423)) ;
    nand02 ix422 (.Y (nx421), .A0 (windowRamBaseAddress1[5]), .A1 (nx642)) ;
    nand02 ix424 (.Y (nx423), .A0 (windowRamBaseAddress2[5]), .A1 (nx652)) ;
    nand02 ix189 (.Y (currentWriteRamBaseAddress_6), .A0 (nx426), .A1 (nx428)) ;
    nand02 ix427 (.Y (nx426), .A0 (windowRamBaseAddress1[6]), .A1 (nx642)) ;
    nand02 ix429 (.Y (nx428), .A0 (windowRamBaseAddress2[6]), .A1 (nx652)) ;
    nand02 ix197 (.Y (currentWriteRamBaseAddress_7), .A0 (nx431), .A1 (nx433)) ;
    nand02 ix432 (.Y (nx431), .A0 (windowRamBaseAddress1[7]), .A1 (nx644)) ;
    nand02 ix434 (.Y (nx433), .A0 (windowRamBaseAddress2[7]), .A1 (nx654)) ;
    nand02 ix205 (.Y (currentWriteRamBaseAddress_8), .A0 (nx436), .A1 (nx438)) ;
    nand02 ix437 (.Y (nx436), .A0 (windowRamBaseAddress1[8]), .A1 (nx644)) ;
    nand02 ix439 (.Y (nx438), .A0 (windowRamBaseAddress2[8]), .A1 (nx654)) ;
    nand02 ix213 (.Y (currentWriteRamBaseAddress_9), .A0 (nx441), .A1 (nx443)) ;
    nand02 ix442 (.Y (nx441), .A0 (windowRamBaseAddress1[9]), .A1 (nx644)) ;
    nand02 ix444 (.Y (nx443), .A0 (windowRamBaseAddress2[9]), .A1 (nx654)) ;
    nand02 ix221 (.Y (currentWriteRamBaseAddress_10), .A0 (nx446), .A1 (nx448)
           ) ;
    nand02 ix447 (.Y (nx446), .A0 (windowRamBaseAddress1[10]), .A1 (nx644)) ;
    nand02 ix449 (.Y (nx448), .A0 (windowRamBaseAddress2[10]), .A1 (nx654)) ;
    nand02 ix229 (.Y (currentWriteRamBaseAddress_11), .A0 (nx451), .A1 (nx453)
           ) ;
    nand02 ix452 (.Y (nx451), .A0 (windowRamBaseAddress1[11]), .A1 (nx644)) ;
    nand02 ix454 (.Y (nx453), .A0 (windowRamBaseAddress2[11]), .A1 (nx654)) ;
    nand02 ix237 (.Y (currentWriteRamBaseAddress_12), .A0 (nx456), .A1 (nx458)
           ) ;
    nand02 ix457 (.Y (nx456), .A0 (windowRamBaseAddress1[12]), .A1 (nx644)) ;
    nand02 ix459 (.Y (nx458), .A0 (windowRamBaseAddress2[12]), .A1 (nx654)) ;
    nand02 ix245 (.Y (currentWriteRamBaseAddress_13), .A0 (nx461), .A1 (nx463)
           ) ;
    nand02 ix462 (.Y (nx461), .A0 (windowRamBaseAddress1[13]), .A1 (nx644)) ;
    nand02 ix464 (.Y (nx463), .A0 (windowRamBaseAddress2[13]), .A1 (nx654)) ;
    nand02 ix253 (.Y (currentWriteRamBaseAddress_14), .A0 (nx466), .A1 (nx468)
           ) ;
    nand02 ix467 (.Y (nx466), .A0 (windowRamBaseAddress1[14]), .A1 (nx646)) ;
    nand02 ix469 (.Y (nx468), .A0 (windowRamBaseAddress2[14]), .A1 (nx656)) ;
    nand02 ix261 (.Y (currentWriteRamBaseAddress_15), .A0 (nx471), .A1 (nx473)
           ) ;
    nand02 ix472 (.Y (nx471), .A0 (windowRamBaseAddress1[15]), .A1 (nx646)) ;
    nand02 ix474 (.Y (nx473), .A0 (windowRamBaseAddress2[15]), .A1 (nx656)) ;
    nand02 ix269 (.Y (currentReadRamBaseAddress_0), .A0 (nx476), .A1 (nx478)) ;
    nand02 ix477 (.Y (nx476), .A0 (windowRamBaseAddress2[0]), .A1 (nx646)) ;
    nand02 ix479 (.Y (nx478), .A0 (windowRamBaseAddress1[0]), .A1 (nx656)) ;
    nand02 ix277 (.Y (currentReadRamBaseAddress_1), .A0 (nx481), .A1 (nx483)) ;
    nand02 ix482 (.Y (nx481), .A0 (windowRamBaseAddress2[1]), .A1 (nx646)) ;
    nand02 ix484 (.Y (nx483), .A0 (windowRamBaseAddress1[1]), .A1 (nx656)) ;
    nand02 ix285 (.Y (currentReadRamBaseAddress_2), .A0 (nx486), .A1 (nx488)) ;
    nand02 ix487 (.Y (nx486), .A0 (windowRamBaseAddress2[2]), .A1 (nx646)) ;
    nand02 ix489 (.Y (nx488), .A0 (windowRamBaseAddress1[2]), .A1 (nx656)) ;
    nand02 ix293 (.Y (currentReadRamBaseAddress_3), .A0 (nx491), .A1 (nx493)) ;
    nand02 ix492 (.Y (nx491), .A0 (windowRamBaseAddress2[3]), .A1 (nx646)) ;
    nand02 ix494 (.Y (nx493), .A0 (windowRamBaseAddress1[3]), .A1 (nx656)) ;
    nand02 ix301 (.Y (currentReadRamBaseAddress_4), .A0 (nx496), .A1 (nx498)) ;
    nand02 ix497 (.Y (nx496), .A0 (windowRamBaseAddress2[4]), .A1 (nx646)) ;
    nand02 ix499 (.Y (nx498), .A0 (windowRamBaseAddress1[4]), .A1 (nx656)) ;
    nand02 ix309 (.Y (currentReadRamBaseAddress_5), .A0 (nx501), .A1 (nx503)) ;
    nand02 ix502 (.Y (nx501), .A0 (windowRamBaseAddress2[5]), .A1 (nx648)) ;
    nand02 ix504 (.Y (nx503), .A0 (windowRamBaseAddress1[5]), .A1 (nx658)) ;
    nand02 ix317 (.Y (currentReadRamBaseAddress_6), .A0 (nx506), .A1 (nx508)) ;
    nand02 ix507 (.Y (nx506), .A0 (windowRamBaseAddress2[6]), .A1 (nx648)) ;
    nand02 ix509 (.Y (nx508), .A0 (windowRamBaseAddress1[6]), .A1 (nx658)) ;
    nand02 ix325 (.Y (currentReadRamBaseAddress_7), .A0 (nx511), .A1 (nx513)) ;
    nand02 ix512 (.Y (nx511), .A0 (windowRamBaseAddress2[7]), .A1 (nx648)) ;
    nand02 ix514 (.Y (nx513), .A0 (windowRamBaseAddress1[7]), .A1 (nx658)) ;
    nand02 ix333 (.Y (currentReadRamBaseAddress_8), .A0 (nx516), .A1 (nx518)) ;
    nand02 ix517 (.Y (nx516), .A0 (windowRamBaseAddress2[8]), .A1 (nx648)) ;
    nand02 ix519 (.Y (nx518), .A0 (windowRamBaseAddress1[8]), .A1 (nx658)) ;
    nand02 ix341 (.Y (currentReadRamBaseAddress_9), .A0 (nx521), .A1 (nx523)) ;
    nand02 ix522 (.Y (nx521), .A0 (windowRamBaseAddress2[9]), .A1 (nx648)) ;
    nand02 ix524 (.Y (nx523), .A0 (windowRamBaseAddress1[9]), .A1 (nx658)) ;
    nand02 ix349 (.Y (currentReadRamBaseAddress_10), .A0 (nx526), .A1 (nx528)) ;
    nand02 ix527 (.Y (nx526), .A0 (windowRamBaseAddress2[10]), .A1 (nx648)) ;
    nand02 ix529 (.Y (nx528), .A0 (windowRamBaseAddress1[10]), .A1 (nx658)) ;
    nand02 ix357 (.Y (currentReadRamBaseAddress_11), .A0 (nx531), .A1 (nx533)) ;
    nand02 ix532 (.Y (nx531), .A0 (windowRamBaseAddress2[11]), .A1 (nx648)) ;
    nand02 ix534 (.Y (nx533), .A0 (windowRamBaseAddress1[11]), .A1 (nx658)) ;
    nand02 ix365 (.Y (currentReadRamBaseAddress_12), .A0 (nx536), .A1 (nx538)) ;
    nand02 ix537 (.Y (nx536), .A0 (windowRamBaseAddress2[12]), .A1 (nx650)) ;
    nand02 ix539 (.Y (nx538), .A0 (windowRamBaseAddress1[12]), .A1 (nx660)) ;
    nand02 ix373 (.Y (currentReadRamBaseAddress_13), .A0 (nx541), .A1 (nx543)) ;
    nand02 ix542 (.Y (nx541), .A0 (windowRamBaseAddress2[13]), .A1 (nx650)) ;
    nand02 ix544 (.Y (nx543), .A0 (windowRamBaseAddress1[13]), .A1 (nx660)) ;
    nand02 ix381 (.Y (currentReadRamBaseAddress_14), .A0 (nx546), .A1 (nx548)) ;
    nand02 ix547 (.Y (nx546), .A0 (windowRamBaseAddress2[14]), .A1 (nx650)) ;
    nand02 ix549 (.Y (nx548), .A0 (windowRamBaseAddress1[14]), .A1 (nx660)) ;
    nand02 ix389 (.Y (currentReadRamBaseAddress_15), .A0 (nx551), .A1 (nx553)) ;
    nand02 ix552 (.Y (nx551), .A0 (windowRamBaseAddress2[15]), .A1 (nx650)) ;
    nand02 ix554 (.Y (nx553), .A0 (windowRamBaseAddress1[15]), .A1 (nx660)) ;
    nand02 ix7 (.Y (windowRamAddress[0]), .A0 (nx556), .A1 (nx558)) ;
    nand02 ix557 (.Y (nx556), .A0 (writeLogicRamAddress_0), .A1 (write)) ;
    nand02 ix559 (.Y (nx558), .A0 (readLogicRamAddress_0), .A1 (nx664)) ;
    nand02 ix15 (.Y (windowRamAddress[1]), .A0 (nx563), .A1 (nx565)) ;
    nand02 ix564 (.Y (nx563), .A0 (writeLogicRamAddress_1), .A1 (write)) ;
    nand02 ix566 (.Y (nx565), .A0 (readLogicRamAddress_1), .A1 (nx664)) ;
    nand02 ix23 (.Y (windowRamAddress[2]), .A0 (nx568), .A1 (nx570)) ;
    nand02 ix569 (.Y (nx568), .A0 (writeLogicRamAddress_2), .A1 (write)) ;
    nand02 ix571 (.Y (nx570), .A0 (readLogicRamAddress_2), .A1 (nx664)) ;
    nand02 ix31 (.Y (windowRamAddress[3]), .A0 (nx573), .A1 (nx575)) ;
    nand02 ix574 (.Y (nx573), .A0 (writeLogicRamAddress_3), .A1 (write)) ;
    nand02 ix576 (.Y (nx575), .A0 (readLogicRamAddress_3), .A1 (nx664)) ;
    nand02 ix39 (.Y (windowRamAddress[4]), .A0 (nx578), .A1 (nx580)) ;
    nand02 ix579 (.Y (nx578), .A0 (writeLogicRamAddress_4), .A1 (write)) ;
    nand02 ix581 (.Y (nx580), .A0 (readLogicRamAddress_4), .A1 (nx664)) ;
    nand02 ix47 (.Y (windowRamAddress[5]), .A0 (nx583), .A1 (nx585)) ;
    nand02 ix584 (.Y (nx583), .A0 (writeLogicRamAddress_5), .A1 (write)) ;
    nand02 ix586 (.Y (nx585), .A0 (readLogicRamAddress_5), .A1 (nx664)) ;
    nand02 ix55 (.Y (windowRamAddress[6]), .A0 (nx588), .A1 (nx590)) ;
    nand02 ix589 (.Y (nx588), .A0 (writeLogicRamAddress_6), .A1 (write)) ;
    nand02 ix591 (.Y (nx590), .A0 (readLogicRamAddress_6), .A1 (nx664)) ;
    nand02 ix63 (.Y (windowRamAddress[7]), .A0 (nx593), .A1 (nx595)) ;
    nand02 ix594 (.Y (nx593), .A0 (writeLogicRamAddress_7), .A1 (write)) ;
    nand02 ix596 (.Y (nx595), .A0 (readLogicRamAddress_7), .A1 (nx666)) ;
    nand02 ix71 (.Y (windowRamAddress[8]), .A0 (nx598), .A1 (nx600)) ;
    nand02 ix599 (.Y (nx598), .A0 (writeLogicRamAddress_8), .A1 (write)) ;
    nand02 ix601 (.Y (nx600), .A0 (readLogicRamAddress_8), .A1 (nx666)) ;
    nand02 ix79 (.Y (windowRamAddress[9]), .A0 (nx603), .A1 (nx605)) ;
    nand02 ix604 (.Y (nx603), .A0 (writeLogicRamAddress_9), .A1 (write)) ;
    nand02 ix606 (.Y (nx605), .A0 (readLogicRamAddress_9), .A1 (nx666)) ;
    nand02 ix87 (.Y (windowRamAddress[10]), .A0 (nx608), .A1 (nx610)) ;
    nand02 ix609 (.Y (nx608), .A0 (writeLogicRamAddress_10), .A1 (write)) ;
    nand02 ix611 (.Y (nx610), .A0 (readLogicRamAddress_10), .A1 (nx666)) ;
    nand02 ix95 (.Y (windowRamAddress[11]), .A0 (nx613), .A1 (nx615)) ;
    nand02 ix614 (.Y (nx613), .A0 (writeLogicRamAddress_11), .A1 (write)) ;
    nand02 ix616 (.Y (nx615), .A0 (readLogicRamAddress_11), .A1 (nx666)) ;
    nand02 ix103 (.Y (windowRamAddress[12]), .A0 (nx618), .A1 (nx620)) ;
    nand02 ix619 (.Y (nx618), .A0 (writeLogicRamAddress_12), .A1 (write)) ;
    nand02 ix621 (.Y (nx620), .A0 (readLogicRamAddress_12), .A1 (nx666)) ;
    nand02 ix111 (.Y (windowRamAddress[13]), .A0 (nx623), .A1 (nx625)) ;
    nand02 ix624 (.Y (nx623), .A0 (writeLogicRamAddress_13), .A1 (write)) ;
    nand02 ix626 (.Y (nx625), .A0 (readLogicRamAddress_13), .A1 (nx666)) ;
    nand02 ix119 (.Y (windowRamAddress[14]), .A0 (nx628), .A1 (nx630)) ;
    nand02 ix629 (.Y (nx628), .A0 (writeLogicRamAddress_14), .A1 (write)) ;
    nand02 ix631 (.Y (nx630), .A0 (readLogicRamAddress_14), .A1 (nx668)) ;
    nand02 ix127 (.Y (windowRamAddress[15]), .A0 (nx633), .A1 (nx635)) ;
    nand02 ix634 (.Y (nx633), .A0 (write), .A1 (writeLogicRamAddress_15)) ;
    nand02 ix636 (.Y (nx635), .A0 (nx668), .A1 (readLogicRamAddress_15)) ;
    inv02 ix641 (.Y (nx642), .A (nx660)) ;
    inv02 ix643 (.Y (nx644), .A (nx660)) ;
    inv02 ix645 (.Y (nx646), .A (nx660)) ;
    inv02 ix647 (.Y (nx648), .A (nx662)) ;
    inv02 ix649 (.Y (nx650), .A (nx662)) ;
    inv02 ix651 (.Y (nx652), .A (ramBaseAddressSelector)) ;
    inv02 ix653 (.Y (nx654), .A (ramBaseAddressSelector)) ;
    inv02 ix655 (.Y (nx656), .A (ramBaseAddressSelector)) ;
    inv02 ix657 (.Y (nx658), .A (ramBaseAddressSelector)) ;
    inv02 ix659 (.Y (nx660), .A (ramBaseAddressSelector)) ;
    inv02 ix661 (.Y (nx662), .A (ramBaseAddressSelector)) ;
    inv02 ix663 (.Y (nx664), .A (write)) ;
    inv02 ix665 (.Y (nx666), .A (write)) ;
    inv02 ix667 (.Y (nx668), .A (write)) ;
endmodule


module WriteLogic_16_16 ( clk, resetState, switchRam, ramBasedAddress, 
                          internalBus, ramWrite, ramDataOutBus, ramAddress, MFC, 
                          outputSize, write, writeDone, writeDoneOne ) ;

    input clk ;
    input resetState ;
    input switchRam ;
    input [15:0]ramBasedAddress ;
    input [15:0]internalBus ;
    output ramWrite ;
    output [15:0]ramDataOutBus ;
    output [15:0]ramAddress ;
    input MFC ;
    input [15:0]outputSize ;
    input write ;
    output writeDone ;
    output writeDoneOne ;

    wire currentState_2, addressRegOut_15, addressRegOut_14, addressRegOut_13, 
         addressRegOut_12, addressRegOut_11, addressRegOut_10, addressRegOut_9, 
         addressRegOut_8, addressRegOut_7, addressRegOut_6, addressRegOut_5, 
         addressRegOut_4, addressRegOut_3, addressRegOut_2, addressRegOut_1, 
         addressRegOut_0, addressRegIn_15, addressRegIn_14, addressRegIn_13, 
         addressRegIn_12, addressRegIn_11, addressRegIn_10, addressRegIn_9, 
         addressRegIn_8, addressRegIn_7, addressRegIn_6, addressRegIn_5, 
         addressRegIn_4, addressRegIn_3, addressRegIn_2, addressRegIn_1, 
         addressRegIn_0, baseAddressCounterClk, dmaCountIn_15, dmaCountIn_14, 
         dmaCountIn_13, dmaCountIn_12, dmaCountIn_11, dmaCountIn_10, 
         dmaCountIn_9, dmaCountIn_8, dmaCountIn_7, dmaCountIn_6, dmaCountIn_5, 
         dmaCountIn_4, dmaCountIn_3, dmaCountIn_2, dmaCountIn_1, dmaCountIn_0, 
         nextState_1, currentState_4, nx61, NOT_clk, currentState_3, 
         currentState_0, nx38, nx42, nx68, nx78, nx89, nx99, nx109, nx123, nx125, 
         nx128, nx130, nx134, nx138, nx142, nx146, nx151, nx154, nx156, nx158, 
         nx160, nx166, nx169, nx172, nx175, nx178, nx181, nx184, nx187, nx190, 
         nx193, nx196, nx199, nx202, nx205, nx208, nx211, nx214, nx238, nx240, 
         nx242, nx244, nx246, nx248;
    wire [2:0] \$dummy ;




    WriteDMA_16_16 dma (.clk (clk), .writeBaseAddress ({addressRegOut_15,
                   addressRegOut_14,addressRegOut_13,addressRegOut_12,
                   addressRegOut_11,addressRegOut_10,addressRegOut_9,
                   addressRegOut_8,addressRegOut_7,addressRegOut_6,
                   addressRegOut_5,addressRegOut_4,addressRegOut_3,
                   addressRegOut_2,addressRegOut_1,addressRegOut_0}), .writeStep (
                   {outputSize[15],outputSize[14],outputSize[13],outputSize[12],
                   outputSize[11],outputSize[10],outputSize[9],outputSize[8],
                   outputSize[7],outputSize[6],outputSize[5],outputSize[4],
                   outputSize[3],outputSize[2],outputSize[1],outputSize[0]}), .writeToRam (
                   ramWrite), .counter ({dmaCountIn_15,dmaCountIn_14,
                   dmaCountIn_13,dmaCountIn_12,dmaCountIn_11,dmaCountIn_10,
                   dmaCountIn_9,dmaCountIn_8,dmaCountIn_7,dmaCountIn_6,
                   dmaCountIn_5,dmaCountIn_4,dmaCountIn_3,dmaCountIn_2,
                   dmaCountIn_1,dmaCountIn_0}), .initCounter (currentState_2), .initAddress (
                   nextState_1), .internalBus ({internalBus[15],internalBus[14],
                   internalBus[13],internalBus[12],internalBus[11],
                   internalBus[10],internalBus[9],internalBus[8],internalBus[7],
                   internalBus[6],internalBus[5],internalBus[4],internalBus[3],
                   internalBus[2],internalBus[1],internalBus[0]}), .ramWrite (
                   \$dummy [0]), .ramDataOutBus ({ramDataOutBus[15],
                   ramDataOutBus[14],ramDataOutBus[13],ramDataOutBus[12],
                   ramDataOutBus[11],ramDataOutBus[10],ramDataOutBus[9],
                   ramDataOutBus[8],ramDataOutBus[7],ramDataOutBus[6],
                   ramDataOutBus[5],ramDataOutBus[4],ramDataOutBus[3],
                   ramDataOutBus[2],ramDataOutBus[1],ramDataOutBus[0]}), .ramWriteAddress (
                   {ramAddress[15],ramAddress[14],ramAddress[13],ramAddress[12],
                   ramAddress[11],ramAddress[10],ramAddress[9],ramAddress[8],
                   ramAddress[7],ramAddress[6],ramAddress[5],ramAddress[4],
                   ramAddress[3],ramAddress[2],ramAddress[1],ramAddress[0]}), .MFC (
                   MFC), .writeComplete (writeDone), .writeCompleteOne (
                   writeDoneOne)) ;
    Counter2_16 baseAddressCounter (.load ({addressRegIn_15,addressRegIn_14,
                addressRegIn_13,addressRegIn_12,addressRegIn_11,addressRegIn_10,
                addressRegIn_9,addressRegIn_8,addressRegIn_7,addressRegIn_6,
                addressRegIn_5,addressRegIn_4,addressRegIn_3,addressRegIn_2,
                addressRegIn_1,addressRegIn_0}), .reset (nextState_1), .clk (
                baseAddressCounterClk), .isLoad (nx238), .count ({
                addressRegOut_15,addressRegOut_14,addressRegOut_13,
                addressRegOut_12,addressRegOut_11,addressRegOut_10,
                addressRegOut_9,addressRegOut_8,addressRegOut_7,addressRegOut_6,
                addressRegOut_5,addressRegOut_4,addressRegOut_3,addressRegOut_2,
                addressRegOut_1,addressRegOut_0})) ;
    fake_gnd ix6 (.Y (nextState_1)) ;
    nor02_2x ix81 (.Y (ramWrite), .A0 (nx123), .A1 (nx125)) ;
    inv01 ix124 (.Y (nx123), .A (write)) ;
    mux21 ix100 (.Y (nx99), .A0 (nx128), .A1 (nx125), .S0 (nx160)) ;
    nand02 ix129 (.Y (nx128), .A0 (nx130), .A1 (currentState_3)) ;
    inv01 ix131 (.Y (nx130), .A (switchRam)) ;
    mux21 ix90 (.Y (nx89), .A0 (nx134), .A1 (nx166), .S0 (nx160)) ;
    nand02 ix135 (.Y (nx134), .A0 (nx130), .A1 (currentState_2)) ;
    mux21 ix79 (.Y (nx78), .A0 (nx138), .A1 (nx244), .S0 (nx160)) ;
    nand02 ix139 (.Y (nx138), .A0 (nx130), .A1 (currentState_0)) ;
    mux21 ix69 (.Y (nx68), .A0 (nx142), .A1 (nx158), .S0 (nx160)) ;
    oai21 ix143 (.Y (nx142), .A0 (nx238), .A1 (currentState_4), .B0 (nx130)) ;
    oai21 ix110 (.Y (nx109), .A0 (nx146), .A1 (nx61), .B0 (nx130)) ;
    dff reg_currentState_1 (.Q (\$dummy [1]), .QB (nx146), .D (nx109), .CLK (
        NOT_clk)) ;
    inv01 ix149 (.Y (NOT_clk), .A (clk)) ;
    nand04 ix45 (.Y (nx61), .A0 (nx151), .A1 (nx130), .A2 (nx154), .A3 (nx156)
           ) ;
    nand02 ix152 (.Y (nx151), .A0 (writeDone), .A1 (currentState_4)) ;
    dff reg_currentState_4 (.Q (currentState_4), .QB (nx125), .D (nx99), .CLK (
        NOT_clk)) ;
    nand02 ix155 (.Y (nx154), .A0 (write), .A1 (currentState_0)) ;
    nand02 ix157 (.Y (nx156), .A0 (nx125), .A1 (nx158)) ;
    dff reg_currentState_0 (.Q (currentState_0), .QB (nx158), .D (nx68), .CLK (
        NOT_clk)) ;
    nor02_2x ix161 (.Y (nx160), .A0 (nx42), .A1 (nx38)) ;
    nand02 ix43 (.Y (nx42), .A0 (nx151), .A1 (nx130)) ;
    nand02 ix39 (.Y (nx38), .A0 (nx154), .A1 (nx156)) ;
    dff reg_currentState_2 (.Q (currentState_2), .QB (\$dummy [2]), .D (nx78), .CLK (
        NOT_clk)) ;
    dff reg_currentState_3 (.Q (currentState_3), .QB (nx166), .D (nx89), .CLK (
        NOT_clk)) ;
    nor02_2x ix83 (.Y (dmaCountIn_0), .A0 (nx169), .A1 (nx244)) ;
    inv01 ix170 (.Y (nx169), .A (outputSize[0])) ;
    nor02_2x ix85 (.Y (dmaCountIn_1), .A0 (nx172), .A1 (nx244)) ;
    inv01 ix173 (.Y (nx172), .A (outputSize[1])) ;
    nor02_2x ix87 (.Y (dmaCountIn_2), .A0 (nx175), .A1 (nx244)) ;
    inv01 ix176 (.Y (nx175), .A (outputSize[2])) ;
    nor02_2x ix89 (.Y (dmaCountIn_3), .A0 (nx178), .A1 (nx244)) ;
    inv01 ix179 (.Y (nx178), .A (outputSize[3])) ;
    nor02_2x ix91 (.Y (dmaCountIn_4), .A0 (nx181), .A1 (nx244)) ;
    inv01 ix182 (.Y (nx181), .A (outputSize[4])) ;
    nor02_2x ix93 (.Y (dmaCountIn_5), .A0 (nx184), .A1 (nx244)) ;
    inv01 ix185 (.Y (nx184), .A (outputSize[5])) ;
    nor02_2x ix95 (.Y (dmaCountIn_6), .A0 (nx187), .A1 (nx246)) ;
    inv01 ix188 (.Y (nx187), .A (outputSize[6])) ;
    nor02_2x ix97 (.Y (dmaCountIn_7), .A0 (nx190), .A1 (nx246)) ;
    inv01 ix191 (.Y (nx190), .A (outputSize[7])) ;
    nor02_2x ix99 (.Y (dmaCountIn_8), .A0 (nx193), .A1 (nx246)) ;
    inv01 ix194 (.Y (nx193), .A (outputSize[8])) ;
    nor02_2x ix101 (.Y (dmaCountIn_9), .A0 (nx196), .A1 (nx246)) ;
    inv01 ix197 (.Y (nx196), .A (outputSize[9])) ;
    nor02_2x ix103 (.Y (dmaCountIn_10), .A0 (nx199), .A1 (nx246)) ;
    inv01 ix200 (.Y (nx199), .A (outputSize[10])) ;
    nor02_2x ix105 (.Y (dmaCountIn_11), .A0 (nx202), .A1 (nx246)) ;
    inv01 ix203 (.Y (nx202), .A (outputSize[11])) ;
    nor02_2x ix107 (.Y (dmaCountIn_12), .A0 (nx205), .A1 (nx246)) ;
    inv01 ix206 (.Y (nx205), .A (outputSize[12])) ;
    nor02_2x ix109 (.Y (dmaCountIn_13), .A0 (nx208), .A1 (nx248)) ;
    inv01 ix209 (.Y (nx208), .A (outputSize[13])) ;
    nor02_2x ix111 (.Y (dmaCountIn_14), .A0 (nx211), .A1 (nx248)) ;
    inv01 ix212 (.Y (nx211), .A (outputSize[14])) ;
    nor02_2x ix113 (.Y (dmaCountIn_15), .A0 (nx214), .A1 (nx248)) ;
    inv01 ix215 (.Y (nx214), .A (outputSize[15])) ;
    mux21 ix121 (.Y (baseAddressCounterClk), .A0 (nx146), .A1 (nx166), .S0 (clk)
          ) ;
    latch lat_addressRegIn_0 (.Q (addressRegIn_0), .D (ramBasedAddress[0]), .CLK (
          nx238)) ;
    latch lat_addressRegIn_1 (.Q (addressRegIn_1), .D (ramBasedAddress[1]), .CLK (
          nx238)) ;
    latch lat_addressRegIn_2 (.Q (addressRegIn_2), .D (ramBasedAddress[2]), .CLK (
          nx238)) ;
    latch lat_addressRegIn_3 (.Q (addressRegIn_3), .D (ramBasedAddress[3]), .CLK (
          nx238)) ;
    latch lat_addressRegIn_4 (.Q (addressRegIn_4), .D (ramBasedAddress[4]), .CLK (
          nx238)) ;
    latch lat_addressRegIn_5 (.Q (addressRegIn_5), .D (ramBasedAddress[5]), .CLK (
          nx240)) ;
    latch lat_addressRegIn_6 (.Q (addressRegIn_6), .D (ramBasedAddress[6]), .CLK (
          nx240)) ;
    latch lat_addressRegIn_7 (.Q (addressRegIn_7), .D (ramBasedAddress[7]), .CLK (
          nx240)) ;
    latch lat_addressRegIn_8 (.Q (addressRegIn_8), .D (ramBasedAddress[8]), .CLK (
          nx240)) ;
    latch lat_addressRegIn_9 (.Q (addressRegIn_9), .D (ramBasedAddress[9]), .CLK (
          nx240)) ;
    latch lat_addressRegIn_10 (.Q (addressRegIn_10), .D (ramBasedAddress[10]), .CLK (
          nx240)) ;
    latch lat_addressRegIn_11 (.Q (addressRegIn_11), .D (ramBasedAddress[11]), .CLK (
          nx240)) ;
    latch lat_addressRegIn_12 (.Q (addressRegIn_12), .D (ramBasedAddress[12]), .CLK (
          nx242)) ;
    latch lat_addressRegIn_13 (.Q (addressRegIn_13), .D (ramBasedAddress[13]), .CLK (
          nx242)) ;
    latch lat_addressRegIn_14 (.Q (addressRegIn_14), .D (ramBasedAddress[14]), .CLK (
          nx242)) ;
    latch lat_addressRegIn_15 (.Q (addressRegIn_15), .D (ramBasedAddress[15]), .CLK (
          nx242)) ;
    inv02 ix237 (.Y (nx238), .A (nx146)) ;
    inv02 ix239 (.Y (nx240), .A (nx146)) ;
    inv02 ix241 (.Y (nx242), .A (nx146)) ;
    inv02 ix243 (.Y (nx244), .A (currentState_2)) ;
    inv02 ix245 (.Y (nx246), .A (currentState_2)) ;
    inv02 ix247 (.Y (nx248), .A (currentState_2)) ;
endmodule


module WriteDMA_16_16 ( clk, writeBaseAddress, writeStep, writeToRam, counter, 
                        initCounter, initAddress, internalBus, ramWrite, 
                        ramDataOutBus, ramWriteAddress, MFC, writeComplete, 
                        writeCompleteOne ) ;

    input clk ;
    input [15:0]writeBaseAddress ;
    input [15:0]writeStep ;
    input writeToRam ;
    input [15:0]counter ;
    input initCounter ;
    input initAddress ;
    input [15:0]internalBus ;
    output ramWrite ;
    output [15:0]ramDataOutBus ;
    output [15:0]ramWriteAddress ;
    input MFC ;
    output writeComplete ;
    output writeCompleteOne ;

    wire toBeAdded_15, toBeAdded_14, toBeAdded_13, toBeAdded_12, toBeAdded_11, 
         toBeAdded_10, toBeAdded_9, toBeAdded_8, toBeAdded_7, toBeAdded_6, 
         toBeAdded_5, toBeAdded_4, toBeAdded_3, toBeAdded_2, toBeAdded_1, 
         toBeAdded_0, currentCount_15, currentCount_14, currentCount_13, 
         currentCount_12, currentCount_11, currentCount_10, currentCount_9, 
         currentCount_8, currentCount_7, currentCount_6, currentCount_5, 
         currentCount_4, currentCount_3, currentCount_2, currentCount_1, 
         currentCount_0, enableCounter, nx76, nx82, nx90, nx96, nx112, nx114, 
         nx120, nx124, nx83, nx93, nx97, nx107, nx111, nx115, nx151, nx154, 
         nx157, nx160, nx163, nx166, nx169, nx172, nx175, nx178, nx181, nx184, 
         nx187, nx190, nx193, nx196, nx203, nx205, nx207, nx213, nx215, nx217, 
         nx219;
    wire [15:0] \$dummy ;




    MultiStepCounter_16 writeAddressRegister (.load ({writeBaseAddress[15],
                        writeBaseAddress[14],writeBaseAddress[13],
                        writeBaseAddress[12],writeBaseAddress[11],
                        writeBaseAddress[10],writeBaseAddress[9],
                        writeBaseAddress[8],writeBaseAddress[7],
                        writeBaseAddress[6],writeBaseAddress[5],
                        writeBaseAddress[4],writeBaseAddress[3],
                        writeBaseAddress[2],writeBaseAddress[1],
                        writeBaseAddress[0]}), .toBeAdded ({toBeAdded_15,
                        toBeAdded_14,toBeAdded_13,toBeAdded_12,toBeAdded_11,
                        toBeAdded_10,toBeAdded_9,toBeAdded_8,toBeAdded_7,
                        toBeAdded_6,toBeAdded_5,toBeAdded_4,toBeAdded_3,
                        toBeAdded_2,toBeAdded_1,toBeAdded_0}), .reset (ramWrite)
                        , .clk (clk), .isLoad (nx215), .MFC (MFC), .count ({
                        ramWriteAddress[15],ramWriteAddress[14],
                        ramWriteAddress[13],ramWriteAddress[12],
                        ramWriteAddress[11],ramWriteAddress[10],
                        ramWriteAddress[9],ramWriteAddress[8],ramWriteAddress[7]
                        ,ramWriteAddress[6],ramWriteAddress[5],
                        ramWriteAddress[4],ramWriteAddress[3],ramWriteAddress[2]
                        ,ramWriteAddress[1],ramWriteAddress[0]})) ;
    DownCounter_16 writecounter (.load ({counter[15],counter[14],counter[13],
                   counter[12],counter[11],counter[10],counter[9],counter[8],
                   counter[7],counter[6],counter[5],counter[4],counter[3],
                   counter[2],counter[1],counter[0]}), .enable (enableCounter), 
                   .clk (clk), .isLoad (nx215), .currentCount ({currentCount_15,
                   currentCount_14,currentCount_13,currentCount_12,
                   currentCount_11,currentCount_10,currentCount_9,currentCount_8
                   ,currentCount_7,currentCount_6,currentCount_5,currentCount_4,
                   currentCount_3,currentCount_2,currentCount_1,currentCount_0})
                   ) ;
    fake_gnd ix6 (.Y (ramWrite)) ;
    nor02_2x ix133 (.Y (writeComplete), .A0 (nx83), .A1 (nx93)) ;
    nand04 ix84 (.Y (nx83), .A0 (nx76), .A1 (nx82), .A2 (nx90), .A3 (nx96)) ;
    nor03_2x ix77 (.Y (nx76), .A0 (currentCount_13), .A1 (currentCount_15), .A2 (
             currentCount_14)) ;
    nor02_2x ix83 (.Y (nx82), .A0 (currentCount_12), .A1 (currentCount_11)) ;
    nor02_2x ix91 (.Y (nx90), .A0 (currentCount_10), .A1 (currentCount_9)) ;
    nor02_2x ix97 (.Y (nx96), .A0 (currentCount_8), .A1 (currentCount_7)) ;
    nand04 ix94 (.Y (nx93), .A0 (nx114), .A1 (nx120), .A2 (writeCompleteOne), .A3 (
           nx124)) ;
    nor03_2x ix115 (.Y (nx114), .A0 (currentCount_6), .A1 (currentCount_5), .A2 (
             nx97)) ;
    inv01 ix98 (.Y (nx97), .A (nx112)) ;
    nor02_2x ix113 (.Y (nx112), .A0 (currentCount_4), .A1 (currentCount_3)) ;
    nor02_2x ix121 (.Y (nx120), .A0 (currentCount_2), .A1 (currentCount_1)) ;
    nor02_2x ix123 (.Y (writeCompleteOne), .A0 (nx203), .A1 (nx107)) ;
    inv01 ix108 (.Y (nx107), .A (MFC)) ;
    xnor2 ix125 (.Y (nx124), .A0 (currentCount_0), .A1 (nx111)) ;
    inv01 ix112 (.Y (nx111), .A (clk)) ;
    inv01 ix135 (.Y (enableCounter), .A (nx115)) ;
    nor02_2x ix116 (.Y (nx115), .A0 (MFC), .A1 (nx215)) ;
    dff writeStepRegister_reg_Q_0 (.Q (toBeAdded_0), .QB (\$dummy [0]), .D (
        writeStep[0]), .CLK (nx215)) ;
    dff writeStepRegister_reg_Q_1 (.Q (toBeAdded_1), .QB (\$dummy [1]), .D (
        writeStep[1]), .CLK (nx215)) ;
    dff writeStepRegister_reg_Q_2 (.Q (toBeAdded_2), .QB (\$dummy [2]), .D (
        writeStep[2]), .CLK (nx215)) ;
    dff writeStepRegister_reg_Q_3 (.Q (toBeAdded_3), .QB (\$dummy [3]), .D (
        writeStep[3]), .CLK (nx215)) ;
    dff writeStepRegister_reg_Q_4 (.Q (toBeAdded_4), .QB (\$dummy [4]), .D (
        writeStep[4]), .CLK (nx217)) ;
    dff writeStepRegister_reg_Q_5 (.Q (toBeAdded_5), .QB (\$dummy [5]), .D (
        writeStep[5]), .CLK (nx217)) ;
    dff writeStepRegister_reg_Q_6 (.Q (toBeAdded_6), .QB (\$dummy [6]), .D (
        writeStep[6]), .CLK (nx217)) ;
    dff writeStepRegister_reg_Q_7 (.Q (toBeAdded_7), .QB (\$dummy [7]), .D (
        writeStep[7]), .CLK (nx217)) ;
    dff writeStepRegister_reg_Q_8 (.Q (toBeAdded_8), .QB (\$dummy [8]), .D (
        writeStep[8]), .CLK (nx217)) ;
    dff writeStepRegister_reg_Q_9 (.Q (toBeAdded_9), .QB (\$dummy [9]), .D (
        writeStep[9]), .CLK (nx217)) ;
    dff writeStepRegister_reg_Q_10 (.Q (toBeAdded_10), .QB (\$dummy [10]), .D (
        writeStep[10]), .CLK (nx217)) ;
    dff writeStepRegister_reg_Q_11 (.Q (toBeAdded_11), .QB (\$dummy [11]), .D (
        writeStep[11]), .CLK (nx219)) ;
    dff writeStepRegister_reg_Q_12 (.Q (toBeAdded_12), .QB (\$dummy [12]), .D (
        writeStep[12]), .CLK (nx219)) ;
    dff writeStepRegister_reg_Q_13 (.Q (toBeAdded_13), .QB (\$dummy [13]), .D (
        writeStep[13]), .CLK (nx219)) ;
    dff writeStepRegister_reg_Q_14 (.Q (toBeAdded_14), .QB (\$dummy [14]), .D (
        writeStep[14]), .CLK (nx219)) ;
    dff writeStepRegister_reg_Q_15 (.Q (toBeAdded_15), .QB (\$dummy [15]), .D (
        writeStep[15]), .CLK (nx219)) ;
    nor02_2x ix37 (.Y (ramDataOutBus[0]), .A0 (nx151), .A1 (nx203)) ;
    inv01 ix152 (.Y (nx151), .A (internalBus[0])) ;
    nor02_2x ix39 (.Y (ramDataOutBus[1]), .A0 (nx154), .A1 (nx203)) ;
    inv01 ix155 (.Y (nx154), .A (internalBus[1])) ;
    nor02_2x ix41 (.Y (ramDataOutBus[2]), .A0 (nx157), .A1 (nx203)) ;
    inv01 ix158 (.Y (nx157), .A (internalBus[2])) ;
    nor02_2x ix43 (.Y (ramDataOutBus[3]), .A0 (nx160), .A1 (nx203)) ;
    inv01 ix161 (.Y (nx160), .A (internalBus[3])) ;
    nor02_2x ix45 (.Y (ramDataOutBus[4]), .A0 (nx163), .A1 (nx203)) ;
    inv01 ix164 (.Y (nx163), .A (internalBus[4])) ;
    nor02_2x ix47 (.Y (ramDataOutBus[5]), .A0 (nx166), .A1 (nx203)) ;
    inv01 ix167 (.Y (nx166), .A (internalBus[5])) ;
    nor02_2x ix49 (.Y (ramDataOutBus[6]), .A0 (nx169), .A1 (nx205)) ;
    inv01 ix170 (.Y (nx169), .A (internalBus[6])) ;
    nor02_2x ix51 (.Y (ramDataOutBus[7]), .A0 (nx172), .A1 (nx205)) ;
    inv01 ix173 (.Y (nx172), .A (internalBus[7])) ;
    nor02_2x ix53 (.Y (ramDataOutBus[8]), .A0 (nx175), .A1 (nx205)) ;
    inv01 ix176 (.Y (nx175), .A (internalBus[8])) ;
    nor02_2x ix55 (.Y (ramDataOutBus[9]), .A0 (nx178), .A1 (nx205)) ;
    inv01 ix179 (.Y (nx178), .A (internalBus[9])) ;
    nor02_2x ix57 (.Y (ramDataOutBus[10]), .A0 (nx181), .A1 (nx205)) ;
    inv01 ix182 (.Y (nx181), .A (internalBus[10])) ;
    nor02_2x ix59 (.Y (ramDataOutBus[11]), .A0 (nx184), .A1 (nx205)) ;
    inv01 ix185 (.Y (nx184), .A (internalBus[11])) ;
    nor02_2x ix61 (.Y (ramDataOutBus[12]), .A0 (nx187), .A1 (nx205)) ;
    inv01 ix188 (.Y (nx187), .A (internalBus[12])) ;
    nor02_2x ix63 (.Y (ramDataOutBus[13]), .A0 (nx190), .A1 (nx207)) ;
    inv01 ix191 (.Y (nx190), .A (internalBus[13])) ;
    nor02_2x ix65 (.Y (ramDataOutBus[14]), .A0 (nx193), .A1 (nx207)) ;
    inv01 ix194 (.Y (nx193), .A (internalBus[14])) ;
    nor02_2x ix67 (.Y (ramDataOutBus[15]), .A0 (nx196), .A1 (nx207)) ;
    inv01 ix197 (.Y (nx196), .A (internalBus[15])) ;
    inv02 ix202 (.Y (nx203), .A (writeToRam)) ;
    inv02 ix204 (.Y (nx205), .A (writeToRam)) ;
    inv02 ix206 (.Y (nx207), .A (writeToRam)) ;
    inv01 ix212 (.Y (nx213), .A (initCounter)) ;
    inv02 ix214 (.Y (nx215), .A (nx213)) ;
    inv02 ix216 (.Y (nx217), .A (nx213)) ;
    inv02 ix218 (.Y (nx219), .A (nx213)) ;
endmodule


module DownCounter_16 ( load, enable, clk, isLoad, currentCount ) ;

    input [15:0]load ;
    input enable ;
    input clk ;
    input isLoad ;
    inout [15:0]currentCount ;

    wire nx20, nx28, nx42, nx56, nx80, nx104, nx114, nx128, nx138, nx152, nx176, 
         nx200, nx210, nx224, nx234, nx248, nx272, nx296, nx306, nx320, nx330, 
         nx344, nx360, nx107, nx117, nx127, nx137, nx147, nx157, nx167, nx177, 
         nx187, nx197, nx207, nx217, nx227, nx237, nx247, nx257, nx271, nx273, 
         nx277, nx281, nx285, nx289, nx293, nx295, nx299, nx302, nx304, nx309, 
         nx311, nx315, nx319, nx321, nx324, nx326, nx329, nx331, nx333, nx335, 
         nx341, nx343, nx347, nx349, nx351, nx353, nx357, nx359, nx363, nx366, 
         nx368, nx371, nx373, nx376, nx378, nx380, nx382, nx386, nx388, nx391, 
         nx393, nx395, nx397, nx401, nx403, nx406, nx408, nx410, nx412, nx416, 
         nx418, nx421, nx424, nx426, nx429, nx431, nx434, nx436, nx438, nx440, 
         nx444, nx446, nx449, nx451, nx453, nx455, nx459, nx461, nx464, nx466, 
         nx468, nx470, nx474, nx476, nx479, nx482, nx487, nx489, nx492, nx495, 
         nx498, nx501, nx503, nx511, nx513, nx515, nx521, nx523, nx525, nx527, 
         nx529, nx531, nx533, nx535, nx537, nx539;
    wire [2:0] \$dummy ;




    oai21 ix108 (.Y (nx107), .A0 (nx271), .A1 (nx539), .B0 (nx277)) ;
    mux21 ix272 (.Y (nx271), .A0 (nx273), .A1 (load[0]), .S0 (nx529)) ;
    dff counterReg_reg_Q_0 (.Q (currentCount[0]), .QB (nx273), .D (nx107), .CLK (
        clk)) ;
    nand02 ix278 (.Y (nx277), .A0 (currentCount[0]), .A1 (nx539)) ;
    oai21 ix118 (.Y (nx117), .A0 (nx281), .A1 (nx539), .B0 (nx289)) ;
    aoi21 ix282 (.Y (nx281), .A0 (load[1]), .A1 (nx529), .B0 (nx28)) ;
    nor02_2x ix29 (.Y (nx28), .A0 (nx529), .A1 (nx285)) ;
    dff counterReg_reg_Q_1 (.Q (currentCount[1]), .QB (\$dummy [0]), .D (nx117)
        , .CLK (clk)) ;
    nand02 ix290 (.Y (nx289), .A0 (currentCount[1]), .A1 (nx539)) ;
    dff counterReg_reg_Q_2 (.Q (currentCount[2]), .QB (nx304), .D (nx127), .CLK (
        clk)) ;
    nand02 ix128 (.Y (nx127), .A0 (nx293), .A1 (nx295)) ;
    nand02 ix294 (.Y (nx293), .A0 (currentCount[2]), .A1 (nx539)) ;
    nand02 ix296 (.Y (nx295), .A0 (nx56), .A1 (nx521)) ;
    oai21 ix57 (.Y (nx56), .A0 (nx529), .A1 (nx299), .B0 (nx302)) ;
    xnor2 ix300 (.Y (nx299), .A0 (nx20), .A1 (currentCount[2])) ;
    nor02_2x ix21 (.Y (nx20), .A0 (currentCount[0]), .A1 (currentCount[1])) ;
    nand02 ix303 (.Y (nx302), .A0 (load[2]), .A1 (nx529)) ;
    dff counterReg_reg_Q_3 (.Q (currentCount[3]), .QB (nx321), .D (nx137), .CLK (
        clk)) ;
    nand02 ix138 (.Y (nx137), .A0 (nx309), .A1 (nx311)) ;
    nand02 ix310 (.Y (nx309), .A0 (currentCount[3]), .A1 (nx539)) ;
    nand02 ix312 (.Y (nx311), .A0 (nx80), .A1 (nx521)) ;
    oai21 ix81 (.Y (nx80), .A0 (nx529), .A1 (nx315), .B0 (nx319)) ;
    xnor2 ix316 (.Y (nx315), .A0 (nx42), .A1 (currentCount[3])) ;
    nor03_2x ix43 (.Y (nx42), .A0 (currentCount[0]), .A1 (currentCount[1]), .A2 (
             currentCount[2])) ;
    nand02 ix320 (.Y (nx319), .A0 (load[3]), .A1 (nx529)) ;
    nand02 ix148 (.Y (nx147), .A0 (nx324), .A1 (nx326)) ;
    nand02 ix325 (.Y (nx324), .A0 (currentCount[4]), .A1 (nx539)) ;
    nand02 ix327 (.Y (nx326), .A0 (nx104), .A1 (nx521)) ;
    oai21 ix105 (.Y (nx104), .A0 (nx531), .A1 (nx329), .B0 (nx335)) ;
    xnor2 ix330 (.Y (nx329), .A0 (nx331), .A1 (nx333)) ;
    nand03 ix332 (.Y (nx331), .A0 (nx20), .A1 (nx304), .A2 (nx321)) ;
    dff counterReg_reg_Q_4 (.Q (currentCount[4]), .QB (nx333), .D (nx147), .CLK (
        clk)) ;
    nand02 ix336 (.Y (nx335), .A0 (load[4]), .A1 (nx531)) ;
    nand02 ix158 (.Y (nx157), .A0 (nx341), .A1 (nx343)) ;
    nand02 ix342 (.Y (nx341), .A0 (currentCount[5]), .A1 (nx513)) ;
    nand02 ix344 (.Y (nx343), .A0 (nx128), .A1 (nx521)) ;
    oai21 ix129 (.Y (nx128), .A0 (nx531), .A1 (nx347), .B0 (nx353)) ;
    xnor2 ix348 (.Y (nx347), .A0 (nx349), .A1 (nx351)) ;
    nand04 ix350 (.Y (nx349), .A0 (nx20), .A1 (nx304), .A2 (nx321), .A3 (nx333)
           ) ;
    dff counterReg_reg_Q_5 (.Q (currentCount[5]), .QB (nx351), .D (nx157), .CLK (
        clk)) ;
    nand02 ix354 (.Y (nx353), .A0 (load[5]), .A1 (nx531)) ;
    dff counterReg_reg_Q_6 (.Q (currentCount[6]), .QB (nx368), .D (nx167), .CLK (
        clk)) ;
    nand02 ix168 (.Y (nx167), .A0 (nx357), .A1 (nx359)) ;
    nand02 ix358 (.Y (nx357), .A0 (currentCount[6]), .A1 (nx513)) ;
    nand02 ix360 (.Y (nx359), .A0 (nx152), .A1 (nx521)) ;
    oai21 ix153 (.Y (nx152), .A0 (nx531), .A1 (nx363), .B0 (nx366)) ;
    xnor2 ix364 (.Y (nx363), .A0 (nx114), .A1 (currentCount[6])) ;
    nand02 ix367 (.Y (nx366), .A0 (load[6]), .A1 (nx531)) ;
    nand02 ix178 (.Y (nx177), .A0 (nx371), .A1 (nx373)) ;
    nand02 ix372 (.Y (nx371), .A0 (currentCount[7]), .A1 (nx513)) ;
    nand02 ix374 (.Y (nx373), .A0 (nx176), .A1 (nx521)) ;
    oai21 ix177 (.Y (nx176), .A0 (nx531), .A1 (nx376), .B0 (nx382)) ;
    xnor2 ix377 (.Y (nx376), .A0 (nx378), .A1 (nx380)) ;
    nand02 ix379 (.Y (nx378), .A0 (nx114), .A1 (nx368)) ;
    dff counterReg_reg_Q_7 (.Q (currentCount[7]), .QB (nx380), .D (nx177), .CLK (
        clk)) ;
    nand02 ix383 (.Y (nx382), .A0 (load[7]), .A1 (nx533)) ;
    nand02 ix188 (.Y (nx187), .A0 (nx386), .A1 (nx388)) ;
    nand02 ix387 (.Y (nx386), .A0 (currentCount[8]), .A1 (nx513)) ;
    nand02 ix389 (.Y (nx388), .A0 (nx200), .A1 (nx521)) ;
    oai21 ix201 (.Y (nx200), .A0 (nx533), .A1 (nx391), .B0 (nx397)) ;
    xnor2 ix392 (.Y (nx391), .A0 (nx393), .A1 (nx395)) ;
    nand03 ix394 (.Y (nx393), .A0 (nx114), .A1 (nx368), .A2 (nx380)) ;
    dff counterReg_reg_Q_8 (.Q (currentCount[8]), .QB (nx395), .D (nx187), .CLK (
        clk)) ;
    nand02 ix398 (.Y (nx397), .A0 (load[8]), .A1 (nx533)) ;
    nand02 ix198 (.Y (nx197), .A0 (nx401), .A1 (nx403)) ;
    nand02 ix402 (.Y (nx401), .A0 (currentCount[9]), .A1 (nx513)) ;
    nand02 ix404 (.Y (nx403), .A0 (nx224), .A1 (nx523)) ;
    oai21 ix225 (.Y (nx224), .A0 (nx533), .A1 (nx406), .B0 (nx412)) ;
    xnor2 ix407 (.Y (nx406), .A0 (nx408), .A1 (nx410)) ;
    nand04 ix409 (.Y (nx408), .A0 (nx114), .A1 (nx368), .A2 (nx380), .A3 (nx395)
           ) ;
    dff counterReg_reg_Q_9 (.Q (currentCount[9]), .QB (nx410), .D (nx197), .CLK (
        clk)) ;
    nand02 ix413 (.Y (nx412), .A0 (load[9]), .A1 (nx533)) ;
    dff counterReg_reg_Q_10 (.Q (currentCount[10]), .QB (nx426), .D (nx207), .CLK (
        clk)) ;
    nand02 ix208 (.Y (nx207), .A0 (nx416), .A1 (nx418)) ;
    nand02 ix417 (.Y (nx416), .A0 (currentCount[10]), .A1 (nx513)) ;
    nand02 ix419 (.Y (nx418), .A0 (nx248), .A1 (nx523)) ;
    oai21 ix249 (.Y (nx248), .A0 (nx533), .A1 (nx421), .B0 (nx424)) ;
    xnor2 ix422 (.Y (nx421), .A0 (nx210), .A1 (currentCount[10])) ;
    nand02 ix425 (.Y (nx424), .A0 (load[10]), .A1 (nx533)) ;
    nand02 ix218 (.Y (nx217), .A0 (nx429), .A1 (nx431)) ;
    nand02 ix430 (.Y (nx429), .A0 (currentCount[11]), .A1 (nx513)) ;
    nand02 ix432 (.Y (nx431), .A0 (nx272), .A1 (nx523)) ;
    oai21 ix273 (.Y (nx272), .A0 (nx535), .A1 (nx434), .B0 (nx440)) ;
    xnor2 ix435 (.Y (nx434), .A0 (nx436), .A1 (nx438)) ;
    nand02 ix437 (.Y (nx436), .A0 (nx210), .A1 (nx426)) ;
    dff counterReg_reg_Q_11 (.Q (currentCount[11]), .QB (nx438), .D (nx217), .CLK (
        clk)) ;
    nand02 ix441 (.Y (nx440), .A0 (load[11]), .A1 (nx535)) ;
    nand02 ix228 (.Y (nx227), .A0 (nx444), .A1 (nx446)) ;
    nand02 ix445 (.Y (nx444), .A0 (currentCount[12]), .A1 (nx515)) ;
    nand02 ix447 (.Y (nx446), .A0 (nx296), .A1 (nx523)) ;
    oai21 ix297 (.Y (nx296), .A0 (nx535), .A1 (nx449), .B0 (nx455)) ;
    xnor2 ix450 (.Y (nx449), .A0 (nx451), .A1 (nx453)) ;
    nand03 ix452 (.Y (nx451), .A0 (nx210), .A1 (nx426), .A2 (nx438)) ;
    dff counterReg_reg_Q_12 (.Q (currentCount[12]), .QB (nx453), .D (nx227), .CLK (
        clk)) ;
    nand02 ix456 (.Y (nx455), .A0 (load[12]), .A1 (nx535)) ;
    nand02 ix238 (.Y (nx237), .A0 (nx459), .A1 (nx461)) ;
    nand02 ix460 (.Y (nx459), .A0 (currentCount[13]), .A1 (nx515)) ;
    nand02 ix462 (.Y (nx461), .A0 (nx320), .A1 (nx523)) ;
    oai21 ix321 (.Y (nx320), .A0 (nx535), .A1 (nx464), .B0 (nx470)) ;
    xnor2 ix465 (.Y (nx464), .A0 (nx466), .A1 (nx468)) ;
    nand04 ix467 (.Y (nx466), .A0 (nx210), .A1 (nx426), .A2 (nx438), .A3 (nx453)
           ) ;
    dff counterReg_reg_Q_13 (.Q (currentCount[13]), .QB (nx468), .D (nx237), .CLK (
        clk)) ;
    nand02 ix471 (.Y (nx470), .A0 (load[13]), .A1 (nx535)) ;
    dff counterReg_reg_Q_14 (.Q (currentCount[14]), .QB (\$dummy [1]), .D (nx247
        ), .CLK (clk)) ;
    nand02 ix248 (.Y (nx247), .A0 (nx474), .A1 (nx476)) ;
    nand02 ix475 (.Y (nx474), .A0 (currentCount[14]), .A1 (nx515)) ;
    nand02 ix477 (.Y (nx476), .A0 (nx344), .A1 (nx523)) ;
    oai21 ix345 (.Y (nx344), .A0 (nx535), .A1 (nx479), .B0 (nx482)) ;
    xnor2 ix480 (.Y (nx479), .A0 (nx306), .A1 (currentCount[14])) ;
    nand02 ix483 (.Y (nx482), .A0 (load[14]), .A1 (nx537)) ;
    dff counterReg_reg_Q_15 (.Q (currentCount[15]), .QB (\$dummy [2]), .D (nx257
        ), .CLK (clk)) ;
    nand02 ix258 (.Y (nx257), .A0 (nx487), .A1 (nx489)) ;
    nand02 ix488 (.Y (nx487), .A0 (currentCount[15]), .A1 (nx515)) ;
    nand02 ix490 (.Y (nx489), .A0 (nx360), .A1 (nx523)) ;
    oai21 ix361 (.Y (nx360), .A0 (nx537), .A1 (nx492), .B0 (nx503)) ;
    xnor2 ix493 (.Y (nx492), .A0 (currentCount[15]), .A1 (nx330)) ;
    nand04 ix496 (.Y (nx495), .A0 (nx234), .A1 (nx438), .A2 (nx453), .A3 (nx468)
           ) ;
    nand04 ix499 (.Y (nx498), .A0 (nx138), .A1 (nx380), .A2 (nx395), .A3 (nx410)
           ) ;
    nand04 ix502 (.Y (nx501), .A0 (nx42), .A1 (nx321), .A2 (nx333), .A3 (nx351)
           ) ;
    nand02 ix504 (.Y (nx503), .A0 (nx537), .A1 (load[15])) ;
    inv02 ix510 (.Y (nx511), .A (enable)) ;
    inv02 ix512 (.Y (nx513), .A (nx525)) ;
    inv02 ix514 (.Y (nx515), .A (nx525)) ;
    xnor2 ix286 (.Y (nx285), .A0 (nx273), .A1 (currentCount[1])) ;
    nor02_2x ix115 (.Y (nx114), .A0 (nx349), .A1 (currentCount[5])) ;
    nor02_2x ix211 (.Y (nx210), .A0 (nx408), .A1 (currentCount[9])) ;
    nor02_2x ix307 (.Y (nx306), .A0 (nx466), .A1 (currentCount[13])) ;
    nor02_2x ix331 (.Y (nx330), .A0 (nx495), .A1 (currentCount[14])) ;
    nor02_2x ix235 (.Y (nx234), .A0 (nx498), .A1 (currentCount[10])) ;
    nor02_2x ix139 (.Y (nx138), .A0 (nx501), .A1 (currentCount[6])) ;
    inv02 ix520 (.Y (nx521), .A (nx511)) ;
    inv02 ix522 (.Y (nx523), .A (nx511)) ;
    inv02 ix524 (.Y (nx525), .A (nx511)) ;
    inv01 ix526 (.Y (nx527), .A (isLoad)) ;
    inv02 ix528 (.Y (nx529), .A (nx527)) ;
    inv02 ix530 (.Y (nx531), .A (nx527)) ;
    inv02 ix532 (.Y (nx533), .A (nx527)) ;
    inv02 ix534 (.Y (nx535), .A (nx527)) ;
    inv02 ix536 (.Y (nx537), .A (nx527)) ;
    inv02 ix538 (.Y (nx539), .A (enable)) ;
endmodule


module ReadLogic_16_16_unfolded0 ( clk, resetState, switchRam, ramBasedAddress, 
                                   internalBus, ramDataInBus, ramRead, 
                                   ramAddress, MFC, inputSize, filterSize, 
                                   isFilter, loadNextWordList, loadWord, readOne, 
                                   readFinal, aluNumber ) ;

    input clk ;
    input resetState ;
    input switchRam ;
    input [15:0]ramBasedAddress ;
    output [15:0]internalBus ;
    input [15:0]ramDataInBus ;
    output ramRead ;
    output [15:0]ramAddress ;
    input MFC ;
    input [15:0]inputSize ;
    input [15:0]filterSize ;
    input isFilter ;
    input loadNextWordList ;
    input loadWord ;
    output readOne ;
    output readFinal ;
    output [2:0]aluNumber ;

    wire currentState_4, currentState_2, currentState_1, dmaCountIn_2, 
         dmaCountIn_1, dmaCountIn_0, addressRegOut_15, addressRegOut_14, 
         addressRegOut_13, addressRegOut_12, addressRegOut_11, addressRegOut_10, 
         addressRegOut_9, addressRegOut_8, addressRegOut_7, addressRegOut_6, 
         addressRegOut_5, addressRegOut_4, addressRegOut_3, addressRegOut_2, 
         addressRegOut_1, addressRegOut_0, addressRegIn_15, addressRegIn_14, 
         addressRegIn_13, addressRegIn_12, addressRegIn_11, addressRegIn_10, 
         addressRegIn_9, addressRegIn_8, addressRegIn_7, addressRegIn_6, 
         addressRegIn_5, addressRegIn_4, addressRegIn_3, addressRegIn_2, 
         addressRegIn_1, addressRegIn_0, resetUnitNumberReg, 
         dmaReadBaseAddress_15, dmaReadBaseAddress_14, dmaReadBaseAddress_13, 
         dmaReadBaseAddress_12, dmaReadBaseAddress_11, dmaReadBaseAddress_10, 
         dmaReadBaseAddress_9, dmaReadBaseAddress_8, dmaReadBaseAddress_7, 
         dmaReadBaseAddress_6, dmaReadBaseAddress_5, dmaReadBaseAddress_4, 
         dmaReadBaseAddress_3, dmaReadBaseAddress_2, dmaReadBaseAddress_1, 
         dmaReadBaseAddress_0, baseAddressCounterClk, zerosSignal_2, 
         currentState_0, nx85, NOT_clk, nx20, nx24, nx32, nx54, nx58, nx64, nx82, 
         nx86, nx96, nx104, nx108, nx246, nx254, nx262, nx270, nx278, nx286, 
         nx294, nx302, nx310, nx318, nx326, nx334, nx342, nx350, nx358, nx366, 
         nx376, nx384, nx392, nx93, nx103, nx113, nx123, nx141, nx145, nx151, 
         nx155, nx159, nx163, nx165, nx171, nx175, nx177, nx179, nx181, nx183, 
         nx187, nx191, nx193, nx195, nx199, nx201, nx207, nx209, nx213, nx215, 
         nx219, nx221, nx225, nx227, nx231, nx233, nx237, nx239, nx243, nx245, 
         nx249, nx251, nx255, nx257, nx260, nx263, nx266, nx268, nx271, nx273, 
         nx276, nx279, nx282, nx284, nx287, nx289, nx331, nx337, nx341, nx347, 
         nx351, nx353, nx355, nx359, nx361, nx364, nx373, nx375, nx377, nx379, 
         nx381, nx383, nx385, nx391, nx398, nx400, nx402;
    wire [2:0] \$dummy ;




    DMA_16_16_16_16 dma (.initialCount ({dmaCountIn_2,dmaCountIn_1,dmaCountIn_0}
                    ), .readBaseAddress ({dmaReadBaseAddress_15,
                    dmaReadBaseAddress_14,dmaReadBaseAddress_13,
                    dmaReadBaseAddress_12,dmaReadBaseAddress_11,
                    dmaReadBaseAddress_10,dmaReadBaseAddress_9,
                    dmaReadBaseAddress_8,dmaReadBaseAddress_7,
                    dmaReadBaseAddress_6,dmaReadBaseAddress_5,
                    dmaReadBaseAddress_4,dmaReadBaseAddress_3,
                    dmaReadBaseAddress_2,dmaReadBaseAddress_1,
                    dmaReadBaseAddress_0}), .readStep ({inputSize[15],
                    inputSize[14],inputSize[13],inputSize[12],inputSize[11],
                    inputSize[10],inputSize[9],inputSize[8],inputSize[7],
                    inputSize[6],inputSize[5],inputSize[4],inputSize[3],
                    inputSize[2],inputSize[1],inputSize[0]}), .initAddress (
                    resetUnitNumberReg), .initCounter (currentState_2), .load (
                    currentState_4), .internalBus ({internalBus[15],
                    internalBus[14],internalBus[13],internalBus[12],
                    internalBus[11],internalBus[10],internalBus[9],
                    internalBus[8],internalBus[7],internalBus[6],internalBus[5],
                    internalBus[4],internalBus[3],internalBus[2],internalBus[1],
                    internalBus[0]}), .finishedOneRead (readOne), .finishedReading (
                    readFinal), .clk (clk), .ramDataInBus ({ramDataInBus[15],
                    ramDataInBus[14],ramDataInBus[13],ramDataInBus[12],
                    ramDataInBus[11],ramDataInBus[10],ramDataInBus[9],
                    ramDataInBus[8],ramDataInBus[7],ramDataInBus[6],
                    ramDataInBus[5],ramDataInBus[4],ramDataInBus[3],
                    ramDataInBus[2],ramDataInBus[1],ramDataInBus[0]}), .ramRead (
                    ramRead), .ramReadAddress ({ramAddress[15],ramAddress[14],
                    ramAddress[13],ramAddress[12],ramAddress[11],ramAddress[10],
                    ramAddress[9],ramAddress[8],ramAddress[7],ramAddress[6],
                    ramAddress[5],ramAddress[4],ramAddress[3],ramAddress[2],
                    ramAddress[1],ramAddress[0]}), .MFC (MFC)) ;
    Counter2_16 baseAddressCounter (.load ({addressRegIn_15,addressRegIn_14,
                addressRegIn_13,addressRegIn_12,addressRegIn_11,addressRegIn_10,
                addressRegIn_9,addressRegIn_8,addressRegIn_7,addressRegIn_6,
                addressRegIn_5,addressRegIn_4,addressRegIn_3,addressRegIn_2,
                addressRegIn_1,addressRegIn_0}), .reset (zerosSignal_2), .clk (
                baseAddressCounterClk), .isLoad (currentState_1), .count ({
                addressRegOut_15,addressRegOut_14,addressRegOut_13,
                addressRegOut_12,addressRegOut_11,addressRegOut_10,
                addressRegOut_9,addressRegOut_8,addressRegOut_7,addressRegOut_6,
                addressRegOut_5,addressRegOut_4,addressRegOut_3,addressRegOut_2,
                addressRegOut_1,addressRegOut_0})) ;
    fake_gnd ix17 (.Y (zerosSignal_2)) ;
    nor02_2x ix403 (.Y (baseAddressCounterClk), .A0 (clk), .A1 (nx379)) ;
    dff reg_currentState_1 (.Q (currentState_1), .QB (\$dummy [0]), .D (nx93), .CLK (
        NOT_clk)) ;
    oai21 ix94 (.Y (nx93), .A0 (nx379), .A1 (nx85), .B0 (nx165)) ;
    nand03 ix61 (.Y (nx85), .A0 (nx141), .A1 (nx187), .A2 (nx191)) ;
    inv01 ix142 (.Y (nx141), .A (nx58)) ;
    nand02 ix59 (.Y (nx58), .A0 (nx145), .A1 (nx165)) ;
    nand02 ix146 (.Y (nx145), .A0 (readFinal), .A1 (currentState_4)) ;
    mux21 ix124 (.Y (nx123), .A0 (nx151), .A1 (nx181), .S0 (nx183)) ;
    inv01 ix152 (.Y (nx151), .A (nx64)) ;
    nor02_2x ix65 (.Y (nx64), .A0 (switchRam), .A1 (nx155)) ;
    oai21 ix156 (.Y (nx155), .A0 (loadWord), .A1 (loadNextWordList), .B0 (
          currentState_2)) ;
    mux21 ix104 (.Y (nx103), .A0 (nx159), .A1 (nx163), .S0 (nx85)) ;
    dff reg_currentState_2 (.Q (currentState_2), .QB (nx159), .D (nx103), .CLK (
        NOT_clk)) ;
    inv01 ix162 (.Y (NOT_clk), .A (clk)) ;
    nand02 ix164 (.Y (nx163), .A0 (nx165), .A1 (currentState_0)) ;
    inv01 ix166 (.Y (nx165), .A (switchRam)) ;
    oai21 ix114 (.Y (nx113), .A0 (nx171), .A1 (nx183), .B0 (nx193)) ;
    nand02 ix172 (.Y (nx171), .A0 (nx165), .A1 (nx32)) ;
    nand03 ix33 (.Y (nx32), .A0 (nx175), .A1 (nx379), .A2 (nx181)) ;
    nand03 ix176 (.Y (nx175), .A0 (nx177), .A1 (nx179), .A2 (currentState_2)) ;
    nand02 ix178 (.Y (nx177), .A0 (loadWord), .A1 (currentState_2)) ;
    inv02 ix180 (.Y (nx179), .A (loadNextWordList)) ;
    dff reg_currentState_4 (.Q (currentState_4), .QB (nx181), .D (nx123), .CLK (
        NOT_clk)) ;
    nor02_2x ix184 (.Y (nx183), .A0 (nx58), .A1 (nx54)) ;
    nand02 ix55 (.Y (nx54), .A0 (nx187), .A1 (nx191)) ;
    nand02 ix188 (.Y (nx187), .A0 (nx373), .A1 (nx181)) ;
    dff reg_currentState_0 (.Q (currentState_0), .QB (\$dummy [1]), .D (nx113), 
        .CLK (NOT_clk)) ;
    oai21 ix192 (.Y (nx191), .A0 (loadNextWordList), .A1 (loadWord), .B0 (
          currentState_0)) ;
    nand04 ix194 (.Y (nx193), .A0 (currentState_0), .A1 (nx145), .A2 (nx165), .A3 (
           nx195)) ;
    nor02_2x ix196 (.Y (nx195), .A0 (loadNextWordList), .A1 (loadWord)) ;
    inv01 ix200 (.Y (nx199), .A (ramBasedAddress[0])) ;
    inv01 ix202 (.Y (nx201), .A (addressRegOut_0)) ;
    inv01 ix208 (.Y (nx207), .A (ramBasedAddress[1])) ;
    inv01 ix210 (.Y (nx209), .A (addressRegOut_1)) ;
    inv01 ix214 (.Y (nx213), .A (ramBasedAddress[2])) ;
    inv01 ix216 (.Y (nx215), .A (addressRegOut_2)) ;
    inv01 ix220 (.Y (nx219), .A (ramBasedAddress[3])) ;
    inv01 ix222 (.Y (nx221), .A (addressRegOut_3)) ;
    inv01 ix226 (.Y (nx225), .A (ramBasedAddress[4])) ;
    inv01 ix228 (.Y (nx227), .A (addressRegOut_4)) ;
    inv01 ix232 (.Y (nx231), .A (ramBasedAddress[5])) ;
    inv01 ix234 (.Y (nx233), .A (addressRegOut_5)) ;
    inv01 ix238 (.Y (nx237), .A (ramBasedAddress[6])) ;
    inv01 ix240 (.Y (nx239), .A (addressRegOut_6)) ;
    inv01 ix244 (.Y (nx243), .A (ramBasedAddress[7])) ;
    inv01 ix246 (.Y (nx245), .A (addressRegOut_7)) ;
    inv01 ix250 (.Y (nx249), .A (ramBasedAddress[8])) ;
    inv01 ix252 (.Y (nx251), .A (addressRegOut_8)) ;
    inv01 ix256 (.Y (nx255), .A (ramBasedAddress[9])) ;
    inv01 ix258 (.Y (nx257), .A (addressRegOut_9)) ;
    inv01 ix261 (.Y (nx260), .A (ramBasedAddress[10])) ;
    inv01 ix264 (.Y (nx263), .A (addressRegOut_10)) ;
    inv01 ix267 (.Y (nx266), .A (ramBasedAddress[11])) ;
    inv01 ix269 (.Y (nx268), .A (addressRegOut_11)) ;
    inv01 ix272 (.Y (nx271), .A (ramBasedAddress[12])) ;
    inv01 ix274 (.Y (nx273), .A (addressRegOut_12)) ;
    inv01 ix277 (.Y (nx276), .A (ramBasedAddress[13])) ;
    inv01 ix280 (.Y (nx279), .A (addressRegOut_13)) ;
    inv01 ix283 (.Y (nx282), .A (ramBasedAddress[14])) ;
    inv01 ix285 (.Y (nx284), .A (addressRegOut_14)) ;
    inv01 ix288 (.Y (nx287), .A (ramBasedAddress[15])) ;
    inv01 ix290 (.Y (nx289), .A (addressRegOut_15)) ;
    oai21 ix79 (.Y (resetUnitNumberReg), .A0 (nx179), .A1 (nx159), .B0 (nx379)
          ) ;
    latch lat_addressRegIn_0 (.Q (addressRegIn_0), .D (nx246), .CLK (nx373)) ;
    nor02_2x ix247 (.Y (nx246), .A0 (nx199), .A1 (nx379)) ;
    latch lat_addressRegIn_1 (.Q (addressRegIn_1), .D (nx254), .CLK (nx373)) ;
    nor02_2x ix255 (.Y (nx254), .A0 (nx207), .A1 (nx379)) ;
    latch lat_addressRegIn_2 (.Q (addressRegIn_2), .D (nx262), .CLK (nx373)) ;
    nor02_2x ix263 (.Y (nx262), .A0 (nx213), .A1 (nx379)) ;
    latch lat_addressRegIn_3 (.Q (addressRegIn_3), .D (nx270), .CLK (nx373)) ;
    nor02_2x ix271 (.Y (nx270), .A0 (nx219), .A1 (nx381)) ;
    latch lat_addressRegIn_4 (.Q (addressRegIn_4), .D (nx278), .CLK (nx373)) ;
    nor02_2x ix279 (.Y (nx278), .A0 (nx225), .A1 (nx381)) ;
    latch lat_addressRegIn_5 (.Q (addressRegIn_5), .D (nx286), .CLK (nx373)) ;
    nor02_2x ix287 (.Y (nx286), .A0 (nx231), .A1 (nx381)) ;
    latch lat_addressRegIn_6 (.Q (addressRegIn_6), .D (nx294), .CLK (nx375)) ;
    nor02_2x ix295 (.Y (nx294), .A0 (nx237), .A1 (nx381)) ;
    latch lat_addressRegIn_7 (.Q (addressRegIn_7), .D (nx302), .CLK (nx375)) ;
    nor02_2x ix303 (.Y (nx302), .A0 (nx243), .A1 (nx381)) ;
    latch lat_addressRegIn_8 (.Q (addressRegIn_8), .D (nx310), .CLK (nx375)) ;
    nor02_2x ix311 (.Y (nx310), .A0 (nx249), .A1 (nx381)) ;
    latch lat_addressRegIn_9 (.Q (addressRegIn_9), .D (nx318), .CLK (nx375)) ;
    nor02_2x ix319 (.Y (nx318), .A0 (nx255), .A1 (nx381)) ;
    latch lat_addressRegIn_10 (.Q (addressRegIn_10), .D (nx326), .CLK (nx375)) ;
    nor02_2x ix327 (.Y (nx326), .A0 (nx260), .A1 (nx383)) ;
    latch lat_addressRegIn_11 (.Q (addressRegIn_11), .D (nx334), .CLK (nx375)) ;
    nor02_2x ix335 (.Y (nx334), .A0 (nx266), .A1 (nx383)) ;
    latch lat_addressRegIn_12 (.Q (addressRegIn_12), .D (nx342), .CLK (nx375)) ;
    nor02_2x ix343 (.Y (nx342), .A0 (nx271), .A1 (nx383)) ;
    latch lat_addressRegIn_13 (.Q (addressRegIn_13), .D (nx350), .CLK (nx377)) ;
    nor02_2x ix351 (.Y (nx350), .A0 (nx276), .A1 (nx383)) ;
    latch lat_addressRegIn_14 (.Q (addressRegIn_14), .D (nx358), .CLK (nx377)) ;
    nor02_2x ix359 (.Y (nx358), .A0 (nx282), .A1 (nx383)) ;
    latch lat_addressRegIn_15 (.Q (addressRegIn_15), .D (nx366), .CLK (nx377)) ;
    nor02_2x ix367 (.Y (nx366), .A0 (nx287), .A1 (nx383)) ;
    latch lat_dmaCountIn_0 (.Q (dmaCountIn_0), .D (nx376), .CLK (nx24)) ;
    nand02 ix377 (.Y (nx376), .A0 (loadNextWordList), .A1 (nx331)) ;
    inv01 ix332 (.Y (nx331), .A (inputSize[0])) ;
    nand02 ix25 (.Y (nx24), .A0 (nx177), .A1 (nx391)) ;
    latch lat_dmaCountIn_1 (.Q (dmaCountIn_1), .D (nx384), .CLK (nx24)) ;
    nor02_2x ix385 (.Y (nx384), .A0 (nx337), .A1 (nx179)) ;
    inv01 ix338 (.Y (nx337), .A (inputSize[1])) ;
    latch lat_dmaCountIn_2 (.Q (dmaCountIn_2), .D (nx392), .CLK (nx24)) ;
    nor02_2x ix393 (.Y (nx392), .A0 (nx341), .A1 (nx179)) ;
    inv01 ix342 (.Y (nx341), .A (inputSize[2])) ;
    dff aluNumberCounter_counterReg_reg_Q_0 (.Q (aluNumber[0]), .QB (nx355), .D (
        nx86), .CLK (nx82)) ;
    nand03 ix87 (.Y (nx86), .A0 (nx383), .A1 (nx391), .A2 (aluNumber[0])) ;
    oai22 ix83 (.Y (nx82), .A0 (NOT_clk), .A1 (nx347), .B0 (nx351), .B1 (nx353)
          ) ;
    nor02_2x ix348 (.Y (nx347), .A0 (currentState_1), .A1 (nx20)) ;
    nor02_2x ix21 (.Y (nx20), .A0 (nx179), .A1 (nx159)) ;
    nand02 ix352 (.Y (nx351), .A0 (loadNextWordList), .A1 (readOne)) ;
    nand02 ix354 (.Y (nx353), .A0 (NOT_clk), .A1 (currentState_4)) ;
    dff aluNumberCounter_counterReg_reg_Q_1 (.Q (aluNumber[1]), .QB (nx361), .D (
        nx96), .CLK (nx82)) ;
    nand02 ix97 (.Y (nx96), .A0 (nx347), .A1 (nx359)) ;
    dff aluNumberCounter_counterReg_reg_Q_2 (.Q (aluNumber[2]), .QB (\$dummy [2]
        ), .D (nx108), .CLK (nx82)) ;
    nand02 ix109 (.Y (nx108), .A0 (nx347), .A1 (nx364)) ;
    xnor2 ix365 (.Y (nx364), .A0 (aluNumber[2]), .A1 (nx104)) ;
    nor02_2x ix105 (.Y (nx104), .A0 (nx355), .A1 (nx361)) ;
    inv02 ix372 (.Y (nx373), .A (currentState_0)) ;
    inv02 ix374 (.Y (nx375), .A (currentState_0)) ;
    inv02 ix376 (.Y (nx377), .A (currentState_0)) ;
    inv02 ix378 (.Y (nx379), .A (currentState_1)) ;
    inv02 ix380 (.Y (nx381), .A (currentState_1)) ;
    inv02 ix382 (.Y (nx383), .A (currentState_1)) ;
    inv02 ix390 (.Y (nx391), .A (nx385)) ;
    mux21 ix123 (.Y (dmaReadBaseAddress_0), .A0 (nx201), .A1 (nx199), .S0 (nx398
          )) ;
    nor02_2x ix204 (.Y (nx385), .A0 (nx179), .A1 (nx159)) ;
    mux21 ix131 (.Y (dmaReadBaseAddress_1), .A0 (nx209), .A1 (nx207), .S0 (nx398
          )) ;
    mux21 ix139 (.Y (dmaReadBaseAddress_2), .A0 (nx215), .A1 (nx213), .S0 (nx398
          )) ;
    mux21 ix147 (.Y (dmaReadBaseAddress_3), .A0 (nx221), .A1 (nx219), .S0 (nx398
          )) ;
    mux21 ix155 (.Y (dmaReadBaseAddress_4), .A0 (nx227), .A1 (nx225), .S0 (nx398
          )) ;
    mux21 ix163 (.Y (dmaReadBaseAddress_5), .A0 (nx233), .A1 (nx231), .S0 (nx398
          )) ;
    mux21 ix171 (.Y (dmaReadBaseAddress_6), .A0 (nx239), .A1 (nx237), .S0 (nx398
          )) ;
    mux21 ix179 (.Y (dmaReadBaseAddress_7), .A0 (nx245), .A1 (nx243), .S0 (nx400
          )) ;
    mux21 ix187 (.Y (dmaReadBaseAddress_8), .A0 (nx251), .A1 (nx249), .S0 (nx400
          )) ;
    mux21 ix195 (.Y (dmaReadBaseAddress_9), .A0 (nx257), .A1 (nx255), .S0 (nx400
          )) ;
    mux21 ix203 (.Y (dmaReadBaseAddress_10), .A0 (nx263), .A1 (nx260), .S0 (
          nx400)) ;
    mux21 ix211 (.Y (dmaReadBaseAddress_11), .A0 (nx268), .A1 (nx266), .S0 (
          nx400)) ;
    mux21 ix219 (.Y (dmaReadBaseAddress_12), .A0 (nx273), .A1 (nx271), .S0 (
          nx400)) ;
    mux21 ix227 (.Y (dmaReadBaseAddress_13), .A0 (nx279), .A1 (nx276), .S0 (
          nx400)) ;
    mux21 ix235 (.Y (dmaReadBaseAddress_14), .A0 (nx284), .A1 (nx282), .S0 (
          nx402)) ;
    mux21 ix243 (.Y (dmaReadBaseAddress_15), .A0 (nx289), .A1 (nx287), .S0 (
          nx402)) ;
    xnor2 ix360 (.Y (nx359), .A0 (nx361), .A1 (nx355)) ;
    inv02 ix397 (.Y (nx398), .A (nx391)) ;
    inv02 ix399 (.Y (nx400), .A (nx391)) ;
    inv02 ix401 (.Y (nx402), .A (nx391)) ;
endmodule


module ReadLogic_16_16 ( clk, resetState, switchRam, ramBasedAddress, 
                         internalBus, ramDataInBus, ramRead, ramAddress, MFC, 
                         inputSize, filterSize, isFilter, loadNextWordList, 
                         loadWord, readOne, readFinal, aluNumber ) ;

    input clk ;
    input resetState ;
    input switchRam ;
    input [15:0]ramBasedAddress ;
    output [15:0]internalBus ;
    input [15:0]ramDataInBus ;
    output ramRead ;
    output [15:0]ramAddress ;
    input MFC ;
    input [15:0]inputSize ;
    input [15:0]filterSize ;
    input isFilter ;
    input loadNextWordList ;
    input loadWord ;
    output readOne ;
    output readFinal ;
    output [2:0]aluNumber ;

    wire currentState_4, currentState_2, currentState_1, dmaCountIn_2, 
         dmaCountIn_1, dmaCountIn_0, addressRegOut_15, addressRegOut_14, 
         addressRegOut_13, addressRegOut_12, addressRegOut_11, addressRegOut_10, 
         addressRegOut_9, addressRegOut_8, addressRegOut_7, addressRegOut_6, 
         addressRegOut_5, addressRegOut_4, addressRegOut_3, addressRegOut_2, 
         addressRegOut_1, addressRegOut_0, addressRegIn_15, addressRegIn_14, 
         addressRegIn_13, addressRegIn_12, addressRegIn_11, addressRegIn_10, 
         addressRegIn_9, addressRegIn_8, addressRegIn_7, addressRegIn_6, 
         addressRegIn_5, addressRegIn_4, addressRegIn_3, addressRegIn_2, 
         addressRegIn_1, addressRegIn_0, resetUnitNumberReg, 
         baseAddressCounterClk, zerosSignal_2, currentState_0, nx77, NOT_clk, 
         nx20, nx22, nx28, nx44, nx52, nx56, currentState_3, nx64, nx74, nx94, 
         nx100, nx104, nx114, nx122, nx126, nx136, nx144, nx152, nx160, nx168, 
         nx176, nx184, nx192, nx200, nx208, nx216, nx224, nx232, nx240, nx248, 
         nx256, nx266, nx274, nx282, nx85, nx95, nx105, nx115, nx125, nx141, 
         nx145, nx149, nx153, nx156, nx163, nx167, nx169, nx172, nx179, nx181, 
         nx183, nx185, nx187, nx189, nx193, nx195, nx197, nx203, nx207, nx212, 
         nx217, nx221, nx225, nx229, nx233, nx237, nx241, nx245, nx249, nx253, 
         nx257, nx261, nx265, nx270, nx275, nx280, nx285, nx290, nx293, nx295, 
         nx297, nx300, nx302, nx305, nx314, nx316, nx318, nx320, nx322, nx324, 
         nx332, nx334, nx336, nx338;
    wire [2:0] \$dummy ;




    DMA_16_16_16_16 dma (.initialCount ({dmaCountIn_2,dmaCountIn_1,dmaCountIn_0}
                    ), .readBaseAddress ({addressRegOut_15,addressRegOut_14,
                    addressRegOut_13,addressRegOut_12,addressRegOut_11,
                    addressRegOut_10,addressRegOut_9,addressRegOut_8,
                    addressRegOut_7,addressRegOut_6,addressRegOut_5,
                    addressRegOut_4,addressRegOut_3,addressRegOut_2,
                    addressRegOut_1,addressRegOut_0}), .readStep ({inputSize[15]
                    ,inputSize[14],inputSize[13],inputSize[12],inputSize[11],
                    inputSize[10],inputSize[9],inputSize[8],inputSize[7],
                    inputSize[6],inputSize[5],inputSize[4],inputSize[3],
                    inputSize[2],inputSize[1],inputSize[0]}), .initAddress (
                    resetUnitNumberReg), .initCounter (currentState_2), .load (
                    currentState_4), .internalBus ({internalBus[15],
                    internalBus[14],internalBus[13],internalBus[12],
                    internalBus[11],internalBus[10],internalBus[9],
                    internalBus[8],internalBus[7],internalBus[6],internalBus[5],
                    internalBus[4],internalBus[3],internalBus[2],internalBus[1],
                    internalBus[0]}), .finishedOneRead (readOne), .finishedReading (
                    readFinal), .clk (clk), .ramDataInBus ({ramDataInBus[15],
                    ramDataInBus[14],ramDataInBus[13],ramDataInBus[12],
                    ramDataInBus[11],ramDataInBus[10],ramDataInBus[9],
                    ramDataInBus[8],ramDataInBus[7],ramDataInBus[6],
                    ramDataInBus[5],ramDataInBus[4],ramDataInBus[3],
                    ramDataInBus[2],ramDataInBus[1],ramDataInBus[0]}), .ramRead (
                    ramRead), .ramReadAddress ({ramAddress[15],ramAddress[14],
                    ramAddress[13],ramAddress[12],ramAddress[11],ramAddress[10],
                    ramAddress[9],ramAddress[8],ramAddress[7],ramAddress[6],
                    ramAddress[5],ramAddress[4],ramAddress[3],ramAddress[2],
                    ramAddress[1],ramAddress[0]}), .MFC (MFC)) ;
    Counter2_16 baseAddressCounter (.load ({addressRegIn_15,addressRegIn_14,
                addressRegIn_13,addressRegIn_12,addressRegIn_11,addressRegIn_10,
                addressRegIn_9,addressRegIn_8,addressRegIn_7,addressRegIn_6,
                addressRegIn_5,addressRegIn_4,addressRegIn_3,addressRegIn_2,
                addressRegIn_1,addressRegIn_0}), .reset (zerosSignal_2), .clk (
                baseAddressCounterClk), .isLoad (currentState_1), .count ({
                addressRegOut_15,addressRegOut_14,addressRegOut_13,
                addressRegOut_12,addressRegOut_11,addressRegOut_10,
                addressRegOut_9,addressRegOut_8,addressRegOut_7,addressRegOut_6,
                addressRegOut_5,addressRegOut_4,addressRegOut_3,addressRegOut_2,
                addressRegOut_1,addressRegOut_0})) ;
    fake_gnd ix23 (.Y (zerosSignal_2)) ;
    mux21 ix297 (.Y (baseAddressCounterClk), .A0 (nx320), .A1 (nx193), .S0 (clk)
          ) ;
    dff reg_currentState_1 (.Q (currentState_1), .QB (\$dummy [0]), .D (nx85), .CLK (
        NOT_clk)) ;
    oai21 ix86 (.Y (nx85), .A0 (nx320), .A1 (nx77), .B0 (nx336)) ;
    nand03 ix59 (.Y (nx77), .A0 (nx141), .A1 (nx172), .A2 (nx181)) ;
    inv01 ix142 (.Y (nx141), .A (nx56)) ;
    nand02 ix57 (.Y (nx56), .A0 (nx145), .A1 (nx336)) ;
    nand02 ix146 (.Y (nx145), .A0 (readFinal), .A1 (currentState_4)) ;
    oai21 ix126 (.Y (nx125), .A0 (nx149), .A1 (nx169), .B0 (nx197)) ;
    oai21 ix150 (.Y (nx149), .A0 (nx74), .A1 (currentState_3), .B0 (nx336)) ;
    nor02_2x ix75 (.Y (nx74), .A0 (nx64), .A1 (nx189)) ;
    nor03_2x ix65 (.Y (nx64), .A0 (nx153), .A1 (switchRam), .A2 (nx187)) ;
    dff reg_currentState_2 (.Q (currentState_2), .QB (nx153), .D (nx95), .CLK (
        NOT_clk)) ;
    mux21 ix96 (.Y (nx95), .A0 (nx153), .A1 (nx156), .S0 (nx77)) ;
    nand02 ix157 (.Y (nx156), .A0 (nx336), .A1 (currentState_0)) ;
    oai21 ix106 (.Y (nx105), .A0 (nx163), .A1 (nx169), .B0 (nx183)) ;
    oai21 ix164 (.Y (nx163), .A0 (nx28), .A1 (currentState_4), .B0 (nx336)) ;
    oai21 ix29 (.Y (nx28), .A0 (nx153), .A1 (nx20), .B0 (nx320)) ;
    inv01 ix24 (.Y (nx20), .A (nx167)) ;
    nor02_2x ix168 (.Y (nx167), .A0 (loadNextWordList), .A1 (loadWord)) ;
    nor02_2x ix170 (.Y (nx169), .A0 (nx56), .A1 (nx52)) ;
    nand02 ix53 (.Y (nx52), .A0 (nx172), .A1 (nx181)) ;
    nand02 ix173 (.Y (nx172), .A0 (nx314), .A1 (nx179)) ;
    dff reg_currentState_0 (.Q (currentState_0), .QB (\$dummy [1]), .D (nx105), 
        .CLK (NOT_clk)) ;
    inv02 ix178 (.Y (NOT_clk), .A (clk)) ;
    dff reg_currentState_4 (.Q (currentState_4), .QB (nx179), .D (nx125), .CLK (
        NOT_clk)) ;
    oai21 ix182 (.Y (nx181), .A0 (loadNextWordList), .A1 (loadWord), .B0 (
          currentState_0)) ;
    nand04 ix184 (.Y (nx183), .A0 (currentState_0), .A1 (nx145), .A2 (nx336), .A3 (
           nx185)) ;
    nor02_2x ix186 (.Y (nx185), .A0 (loadNextWordList), .A1 (loadWord)) ;
    inv01 ix188 (.Y (nx187), .A (loadNextWordList)) ;
    oai21 ix190 (.Y (nx189), .A0 (loadNextWordList), .A1 (loadWord), .B0 (
          currentState_2)) ;
    mux21 ix116 (.Y (nx115), .A0 (nx193), .A1 (nx195), .S0 (nx77)) ;
    dff reg_currentState_3 (.Q (currentState_3), .QB (nx193), .D (nx115), .CLK (
        NOT_clk)) ;
    nand03 ix196 (.Y (nx195), .A0 (currentState_2), .A1 (nx336), .A2 (
           loadNextWordList)) ;
    nor02_2x ix45 (.Y (nx44), .A0 (nx314), .A1 (nx185)) ;
    nand02 ix97 (.Y (resetUnitNumberReg), .A0 (nx203), .A1 (nx320)) ;
    nand02 ix204 (.Y (nx203), .A0 (loadNextWordList), .A1 (currentState_2)) ;
    latch lat_addressRegIn_0 (.Q (addressRegIn_0), .D (nx136), .CLK (nx314)) ;
    nor02_2x ix137 (.Y (nx136), .A0 (nx207), .A1 (nx320)) ;
    inv01 ix208 (.Y (nx207), .A (ramBasedAddress[0])) ;
    latch lat_addressRegIn_1 (.Q (addressRegIn_1), .D (nx144), .CLK (nx314)) ;
    nor02_2x ix145 (.Y (nx144), .A0 (nx212), .A1 (nx320)) ;
    inv01 ix213 (.Y (nx212), .A (ramBasedAddress[1])) ;
    latch lat_addressRegIn_2 (.Q (addressRegIn_2), .D (nx152), .CLK (nx314)) ;
    nor02_2x ix153 (.Y (nx152), .A0 (nx217), .A1 (nx320)) ;
    inv01 ix218 (.Y (nx217), .A (ramBasedAddress[2])) ;
    latch lat_addressRegIn_3 (.Q (addressRegIn_3), .D (nx160), .CLK (nx314)) ;
    nor02_2x ix161 (.Y (nx160), .A0 (nx221), .A1 (nx322)) ;
    inv01 ix222 (.Y (nx221), .A (ramBasedAddress[3])) ;
    latch lat_addressRegIn_4 (.Q (addressRegIn_4), .D (nx168), .CLK (nx314)) ;
    nor02_2x ix169 (.Y (nx168), .A0 (nx225), .A1 (nx322)) ;
    inv01 ix226 (.Y (nx225), .A (ramBasedAddress[4])) ;
    latch lat_addressRegIn_5 (.Q (addressRegIn_5), .D (nx176), .CLK (nx316)) ;
    nor02_2x ix177 (.Y (nx176), .A0 (nx229), .A1 (nx322)) ;
    inv01 ix230 (.Y (nx229), .A (ramBasedAddress[5])) ;
    latch lat_addressRegIn_6 (.Q (addressRegIn_6), .D (nx184), .CLK (nx316)) ;
    nor02_2x ix185 (.Y (nx184), .A0 (nx233), .A1 (nx322)) ;
    inv01 ix234 (.Y (nx233), .A (ramBasedAddress[6])) ;
    latch lat_addressRegIn_7 (.Q (addressRegIn_7), .D (nx192), .CLK (nx316)) ;
    nor02_2x ix193 (.Y (nx192), .A0 (nx237), .A1 (nx322)) ;
    inv01 ix238 (.Y (nx237), .A (ramBasedAddress[7])) ;
    latch lat_addressRegIn_8 (.Q (addressRegIn_8), .D (nx200), .CLK (nx316)) ;
    nor02_2x ix201 (.Y (nx200), .A0 (nx241), .A1 (nx322)) ;
    inv01 ix242 (.Y (nx241), .A (ramBasedAddress[8])) ;
    latch lat_addressRegIn_9 (.Q (addressRegIn_9), .D (nx208), .CLK (nx316)) ;
    nor02_2x ix209 (.Y (nx208), .A0 (nx245), .A1 (nx322)) ;
    inv01 ix246 (.Y (nx245), .A (ramBasedAddress[9])) ;
    latch lat_addressRegIn_10 (.Q (addressRegIn_10), .D (nx216), .CLK (nx316)) ;
    nor02_2x ix217 (.Y (nx216), .A0 (nx249), .A1 (nx324)) ;
    inv01 ix250 (.Y (nx249), .A (ramBasedAddress[10])) ;
    latch lat_addressRegIn_11 (.Q (addressRegIn_11), .D (nx224), .CLK (nx316)) ;
    nor02_2x ix225 (.Y (nx224), .A0 (nx253), .A1 (nx324)) ;
    inv01 ix254 (.Y (nx253), .A (ramBasedAddress[11])) ;
    latch lat_addressRegIn_12 (.Q (addressRegIn_12), .D (nx232), .CLK (nx318)) ;
    nor02_2x ix233 (.Y (nx232), .A0 (nx257), .A1 (nx324)) ;
    inv01 ix258 (.Y (nx257), .A (ramBasedAddress[12])) ;
    latch lat_addressRegIn_13 (.Q (addressRegIn_13), .D (nx240), .CLK (nx318)) ;
    nor02_2x ix241 (.Y (nx240), .A0 (nx261), .A1 (nx324)) ;
    inv01 ix262 (.Y (nx261), .A (ramBasedAddress[13])) ;
    latch lat_addressRegIn_14 (.Q (addressRegIn_14), .D (nx248), .CLK (nx318)) ;
    nor02_2x ix249 (.Y (nx248), .A0 (nx265), .A1 (nx324)) ;
    inv01 ix266 (.Y (nx265), .A (ramBasedAddress[14])) ;
    latch lat_addressRegIn_15 (.Q (addressRegIn_15), .D (nx256), .CLK (nx318)) ;
    nor02_2x ix257 (.Y (nx256), .A0 (nx270), .A1 (nx324)) ;
    inv01 ix271 (.Y (nx270), .A (ramBasedAddress[15])) ;
    latch lat_dmaCountIn_0 (.Q (dmaCountIn_0), .D (nx266), .CLK (nx22)) ;
    nand02 ix267 (.Y (nx266), .A0 (loadNextWordList), .A1 (nx275)) ;
    inv01 ix276 (.Y (nx275), .A (filterSize[0])) ;
    nor02_2x ix25 (.Y (nx22), .A0 (nx153), .A1 (nx167)) ;
    latch lat_dmaCountIn_1 (.Q (dmaCountIn_1), .D (nx274), .CLK (nx22)) ;
    nor02_2x ix275 (.Y (nx274), .A0 (nx280), .A1 (nx187)) ;
    inv01 ix281 (.Y (nx280), .A (filterSize[1])) ;
    latch lat_dmaCountIn_2 (.Q (dmaCountIn_2), .D (nx282), .CLK (nx22)) ;
    nor02_2x ix283 (.Y (nx282), .A0 (nx285), .A1 (nx187)) ;
    inv01 ix286 (.Y (nx285), .A (filterSize[2])) ;
    dff aluNumberCounter_counterReg_reg_Q_0 (.Q (aluNumber[0]), .QB (nx297), .D (
        nx104), .CLK (nx100)) ;
    nand03 ix105 (.Y (nx104), .A0 (nx203), .A1 (nx324), .A2 (aluNumber[0])) ;
    oai22 ix101 (.Y (nx100), .A0 (NOT_clk), .A1 (nx290), .B0 (nx293), .B1 (nx295
          )) ;
    nor02_2x ix95 (.Y (nx94), .A0 (nx187), .A1 (nx153)) ;
    nand02 ix294 (.Y (nx293), .A0 (loadNextWordList), .A1 (readOne)) ;
    nand02 ix296 (.Y (nx295), .A0 (NOT_clk), .A1 (currentState_4)) ;
    dff aluNumberCounter_counterReg_reg_Q_1 (.Q (aluNumber[1]), .QB (nx302), .D (
        nx114), .CLK (nx100)) ;
    nand02 ix115 (.Y (nx114), .A0 (nx290), .A1 (nx300)) ;
    dff aluNumberCounter_counterReg_reg_Q_2 (.Q (aluNumber[2]), .QB (\$dummy [2]
        ), .D (nx126), .CLK (nx100)) ;
    nand02 ix127 (.Y (nx126), .A0 (nx290), .A1 (nx305)) ;
    xnor2 ix306 (.Y (nx305), .A0 (aluNumber[2]), .A1 (nx122)) ;
    nor02_2x ix123 (.Y (nx122), .A0 (nx297), .A1 (nx302)) ;
    inv02 ix313 (.Y (nx314), .A (currentState_0)) ;
    inv02 ix315 (.Y (nx316), .A (currentState_0)) ;
    inv02 ix317 (.Y (nx318), .A (currentState_0)) ;
    inv02 ix319 (.Y (nx320), .A (currentState_1)) ;
    inv02 ix321 (.Y (nx322), .A (currentState_1)) ;
    inv02 ix323 (.Y (nx324), .A (currentState_1)) ;
    nand04 ix122 (.Y (nx197), .A0 (currentState_4), .A1 (nx332), .A2 (nx338), .A3 (
           nx334)) ;
    inv01 ix331 (.Y (nx332), .A (readFinal)) ;
    inv01 ix333 (.Y (nx334), .A (nx44)) ;
    nor02_2x ix291 (.Y (nx290), .A0 (nx94), .A1 (currentState_1)) ;
    xnor2 ix301 (.Y (nx300), .A0 (nx302), .A1 (nx297)) ;
    inv01 ix335 (.Y (nx336), .A (switchRam)) ;
    inv01 ix337 (.Y (nx338), .A (switchRam)) ;
endmodule


module Counter2_16 ( load, reset, clk, isLoad, count ) ;

    input [15:0]load ;
    input reset ;
    input clk ;
    input isLoad ;
    output [15:0]count ;

    wire nx10, nx24, nx38, nx42, nx52, nx56, nx66, nx80, nx94, nx98, nx108, 
         nx122, nx136, nx140, nx150, nx154, nx164, nx178, nx192, nx206, nx210, 
         nx220, nx47, nx49, nx51, nx53, nx57, nx59, nx61, nx65, nx69, nx71, nx75, 
         nx79, nx81, nx83, nx87, nx91, nx93, nx97, nx103, nx105, nx109, nx113, 
         nx115, nx117, nx121, nx125, nx127, nx131, nx137, nx139, nx143, nx147, 
         nx149, nx151, nx155, nx159, nx161, nx165, nx169, nx171, nx173, nx177, 
         nx183, nx185, nx189, nx195, nx197, nx201, nx207, nx209, nx213, nx217, 
         nx219, nx231, nx233, nx235, nx237, nx239, nx241, nx243, nx245, nx247, 
         nx249, nx251, nx253, nx255, nx257, nx259, nx261, nx263, nx265, nx267, 
         nx269, nx271, nx273, nx275, nx277, nx279, nx281, nx283;
    wire [0:0] \$dummy ;




    nand02 ix11 (.Y (nx10), .A0 (nx47), .A1 (nx49)) ;
    nand02 ix48 (.Y (nx47), .A0 (load[0]), .A1 (nx267)) ;
    nand02 ix50 (.Y (nx49), .A0 (nx51), .A1 (nx53)) ;
    inv01 ix52 (.Y (nx51), .A (isLoad)) ;
    dff counterReg_reg_Q_0 (.Q (count[0]), .QB (nx53), .D (nx10), .CLK (nx279)
        ) ;
    dff counterReg_reg_Q_1 (.Q (count[1]), .QB (nx61), .D (nx24), .CLK (nx279)
        ) ;
    oai21 ix25 (.Y (nx24), .A0 (nx267), .A1 (nx57), .B0 (nx59)) ;
    nand02 ix60 (.Y (nx59), .A0 (load[1]), .A1 (nx267)) ;
    dff counterReg_reg_Q_2 (.Q (count[2]), .QB (nx71), .D (nx38), .CLK (nx279)
        ) ;
    oai21 ix39 (.Y (nx38), .A0 (nx267), .A1 (nx65), .B0 (nx69)) ;
    nand02 ix70 (.Y (nx69), .A0 (load[2]), .A1 (nx267)) ;
    dff counterReg_reg_Q_3 (.Q (count[3]), .QB (nx83), .D (nx52), .CLK (nx279)
        ) ;
    oai21 ix53 (.Y (nx52), .A0 (nx267), .A1 (nx75), .B0 (nx81)) ;
    nor02_2x ix43 (.Y (nx42), .A0 (nx71), .A1 (nx79)) ;
    nand02 ix80 (.Y (nx79), .A0 (count[1]), .A1 (count[0])) ;
    nand02 ix82 (.Y (nx81), .A0 (load[3]), .A1 (nx267)) ;
    dff counterReg_reg_Q_4 (.Q (count[4]), .QB (nx93), .D (nx66), .CLK (nx279)
        ) ;
    oai21 ix67 (.Y (nx66), .A0 (nx269), .A1 (nx87), .B0 (nx91)) ;
    nor03_2x ix57 (.Y (nx56), .A0 (nx83), .A1 (nx71), .A2 (nx79)) ;
    nand02 ix92 (.Y (nx91), .A0 (load[4]), .A1 (nx269)) ;
    dff counterReg_reg_Q_5 (.Q (count[5]), .QB (nx105), .D (nx80), .CLK (nx279)
        ) ;
    oai21 ix81 (.Y (nx80), .A0 (nx269), .A1 (nx97), .B0 (nx103)) ;
    nand02 ix104 (.Y (nx103), .A0 (load[5]), .A1 (nx269)) ;
    dff counterReg_reg_Q_6 (.Q (count[6]), .QB (nx117), .D (nx94), .CLK (nx279)
        ) ;
    oai21 ix95 (.Y (nx94), .A0 (nx269), .A1 (nx109), .B0 (nx115)) ;
    nand04 ix114 (.Y (nx113), .A0 (count[3]), .A1 (count[2]), .A2 (count[1]), .A3 (
           count[0])) ;
    nand02 ix116 (.Y (nx115), .A0 (load[6]), .A1 (nx269)) ;
    dff counterReg_reg_Q_7 (.Q (count[7]), .QB (nx127), .D (nx108), .CLK (nx281)
        ) ;
    oai21 ix109 (.Y (nx108), .A0 (nx269), .A1 (nx121), .B0 (nx125)) ;
    nor04_2x ix99 (.Y (nx98), .A0 (nx117), .A1 (nx105), .A2 (nx93), .A3 (nx113)
             ) ;
    nand02 ix126 (.Y (nx125), .A0 (load[7]), .A1 (nx271)) ;
    dff counterReg_reg_Q_8 (.Q (count[8]), .QB (nx139), .D (nx122), .CLK (nx281)
        ) ;
    oai21 ix123 (.Y (nx122), .A0 (nx271), .A1 (nx131), .B0 (nx137)) ;
    nand02 ix138 (.Y (nx137), .A0 (load[8]), .A1 (nx271)) ;
    dff counterReg_reg_Q_9 (.Q (count[9]), .QB (nx151), .D (nx136), .CLK (nx281)
        ) ;
    oai21 ix137 (.Y (nx136), .A0 (nx271), .A1 (nx143), .B0 (nx149)) ;
    inv01 ix148 (.Y (nx147), .A (nx98)) ;
    nand02 ix150 (.Y (nx149), .A0 (load[9]), .A1 (nx271)) ;
    dff counterReg_reg_Q_10 (.Q (count[10]), .QB (nx161), .D (nx150), .CLK (
        nx281)) ;
    oai21 ix151 (.Y (nx150), .A0 (nx271), .A1 (nx155), .B0 (nx159)) ;
    nand02 ix160 (.Y (nx159), .A0 (load[10]), .A1 (nx271)) ;
    dff counterReg_reg_Q_11 (.Q (count[11]), .QB (nx173), .D (nx164), .CLK (
        nx281)) ;
    oai21 ix165 (.Y (nx164), .A0 (nx273), .A1 (nx165), .B0 (nx171)) ;
    nor04 ix155 (.Y (nx154), .A0 (nx161), .A1 (nx151), .A2 (nx139), .A3 (nx169)
          ) ;
    nand02 ix170 (.Y (nx169), .A0 (count[7]), .A1 (nx98)) ;
    nand02 ix172 (.Y (nx171), .A0 (load[11]), .A1 (nx273)) ;
    dff counterReg_reg_Q_12 (.Q (count[12]), .QB (nx185), .D (nx178), .CLK (
        nx281)) ;
    oai21 ix179 (.Y (nx178), .A0 (nx273), .A1 (nx177), .B0 (nx183)) ;
    nand02 ix184 (.Y (nx183), .A0 (load[12]), .A1 (nx273)) ;
    dff counterReg_reg_Q_13 (.Q (count[13]), .QB (nx197), .D (nx192), .CLK (
        nx281)) ;
    oai21 ix193 (.Y (nx192), .A0 (nx273), .A1 (nx189), .B0 (nx195)) ;
    nand02 ix196 (.Y (nx195), .A0 (load[13]), .A1 (nx273)) ;
    dff counterReg_reg_Q_14 (.Q (count[14]), .QB (nx209), .D (nx206), .CLK (
        nx283)) ;
    oai21 ix207 (.Y (nx206), .A0 (nx273), .A1 (nx201), .B0 (nx207)) ;
    nand02 ix208 (.Y (nx207), .A0 (load[14]), .A1 (nx275)) ;
    dff counterReg_reg_Q_15 (.Q (count[15]), .QB (\$dummy [0]), .D (nx220), .CLK (
        nx283)) ;
    oai21 ix221 (.Y (nx220), .A0 (nx275), .A1 (nx213), .B0 (nx219)) ;
    xnor2 ix214 (.Y (nx213), .A0 (count[15]), .A1 (nx210)) ;
    nor04 ix211 (.Y (nx210), .A0 (nx209), .A1 (nx197), .A2 (nx185), .A3 (nx217)
          ) ;
    nand02 ix218 (.Y (nx217), .A0 (count[11]), .A1 (nx154)) ;
    nand02 ix220 (.Y (nx219), .A0 (nx275), .A1 (load[15])) ;
    xnor2 ix58 (.Y (nx57), .A0 (nx61), .A1 (nx53)) ;
    xnor2 ix66 (.Y (nx65), .A0 (nx71), .A1 (nx231)) ;
    nand02 ix29 (.Y (nx231), .A0 (count[1]), .A1 (count[0])) ;
    xnor2 ix76 (.Y (nx75), .A0 (nx83), .A1 (nx233)) ;
    inv01 ix232 (.Y (nx233), .A (nx42)) ;
    xnor2 ix88 (.Y (nx87), .A0 (nx93), .A1 (nx235)) ;
    inv01 ix234 (.Y (nx235), .A (nx56)) ;
    xnor2 ix98 (.Y (nx97), .A0 (nx105), .A1 (nx237)) ;
    nand03 ix71 (.Y (nx237), .A0 (count[4]), .A1 (count[3]), .A2 (nx239)) ;
    nor03_2x ix102 (.Y (nx239), .A0 (nx71), .A1 (nx61), .A2 (nx53)) ;
    xnor2 ix110 (.Y (nx109), .A0 (nx117), .A1 (nx241)) ;
    nand03 ix85 (.Y (nx241), .A0 (count[5]), .A1 (count[4]), .A2 (nx243)) ;
    inv01 ix242 (.Y (nx243), .A (nx113)) ;
    xnor2 ix122 (.Y (nx121), .A0 (nx127), .A1 (nx147)) ;
    xnor2 ix132 (.Y (nx131), .A0 (nx139), .A1 (nx245)) ;
    nand04 ix113 (.Y (nx245), .A0 (count[7]), .A1 (count[6]), .A2 (count[5]), .A3 (
           nx247)) ;
    nor02_2x ix136 (.Y (nx247), .A0 (nx93), .A1 (nx235)) ;
    xnor2 ix144 (.Y (nx143), .A0 (nx151), .A1 (nx249)) ;
    nand03 ix127 (.Y (nx249), .A0 (count[8]), .A1 (count[7]), .A2 (nx98)) ;
    xnor2 ix156 (.Y (nx155), .A0 (nx161), .A1 (nx251)) ;
    inv01 ix250 (.Y (nx251), .A (nx140)) ;
    and04 ix141 (.Y (nx140), .A0 (count[9]), .A1 (count[8]), .A2 (count[7]), .A3 (
          nx98)) ;
    xnor2 ix166 (.Y (nx165), .A0 (nx173), .A1 (nx253)) ;
    inv01 ix252 (.Y (nx253), .A (nx154)) ;
    xnor2 ix178 (.Y (nx177), .A0 (nx185), .A1 (nx255)) ;
    nand04 ix169 (.Y (nx255), .A0 (count[11]), .A1 (count[10]), .A2 (count[9]), 
           .A3 (nx257)) ;
    nor03_2x ix182 (.Y (nx257), .A0 (nx139), .A1 (nx127), .A2 (nx147)) ;
    xnor2 ix190 (.Y (nx189), .A0 (nx197), .A1 (nx259)) ;
    nand04 ix183 (.Y (nx259), .A0 (count[12]), .A1 (count[11]), .A2 (count[10])
           , .A3 (nx261)) ;
    nor04 ix194 (.Y (nx261), .A0 (nx151), .A1 (nx139), .A2 (nx127), .A3 (nx147)
          ) ;
    xnor2 ix202 (.Y (nx201), .A0 (nx209), .A1 (nx263)) ;
    nand04 ix197 (.Y (nx263), .A0 (count[13]), .A1 (count[12]), .A2 (count[11])
           , .A3 (nx265)) ;
    nor02_2x ix206 (.Y (nx265), .A0 (nx161), .A1 (nx251)) ;
    inv02 ix266 (.Y (nx267), .A (nx51)) ;
    inv02 ix268 (.Y (nx269), .A (nx51)) ;
    inv02 ix270 (.Y (nx271), .A (nx51)) ;
    inv02 ix272 (.Y (nx273), .A (nx51)) ;
    inv02 ix274 (.Y (nx275), .A (nx51)) ;
    inv01 ix276 (.Y (nx277), .A (clk)) ;
    inv02 ix278 (.Y (nx279), .A (nx277)) ;
    inv02 ix280 (.Y (nx281), .A (nx277)) ;
    inv02 ix282 (.Y (nx283), .A (nx277)) ;
endmodule


module DMA_16_16_16_16 ( initialCount, readBaseAddress, readStep, initAddress, 
                         initCounter, load, internalBus, finishedOneRead, 
                         finishedReading, clk, ramDataInBus, ramRead, 
                         ramReadAddress, MFC ) ;

    input [2:0]initialCount ;
    input [15:0]readBaseAddress ;
    input [15:0]readStep ;
    input initAddress ;
    input initCounter ;
    input load ;
    output [15:0]internalBus ;
    output finishedOneRead ;
    output finishedReading ;
    input clk ;
    input [15:0]ramDataInBus ;
    output ramRead ;
    output [15:0]ramReadAddress ;
    input MFC ;

    wire tobeAdded_15, tobeAdded_14, tobeAdded_13, tobeAdded_12, tobeAdded_11, 
         tobeAdded_10, tobeAdded_9, tobeAdded_8, tobeAdded_7, tobeAdded_6, 
         tobeAdded_5, tobeAdded_4, tobeAdded_3, tobeAdded_2, tobeAdded_1, 
         tobeAdded_0, GND, currentCount_0, currentCount_2, currentCount_1, nx120, 
         nx142, nx158, nx170, nx184, nx171, nx181, nx191, nx202, nx204, nx207, 
         nx210, nx213, nx216, nx219, nx221, nx223, nx226, nx228, nx231, nx234, 
         nx238, nx240, nx242, nx244, nx247, nx249, nx254, nx309, nx311, nx313, 
         nx319, nx321, nx323, nx325, nx327, nx329;
    wire [15:0] \$dummy ;




    MultiStepCounter_16 addressRegister (.load ({readBaseAddress[15],
                        readBaseAddress[14],readBaseAddress[13],
                        readBaseAddress[12],readBaseAddress[11],
                        readBaseAddress[10],readBaseAddress[9],
                        readBaseAddress[8],readBaseAddress[7],readBaseAddress[6]
                        ,readBaseAddress[5],readBaseAddress[4],
                        readBaseAddress[3],readBaseAddress[2],readBaseAddress[1]
                        ,readBaseAddress[0]}), .toBeAdded ({tobeAdded_15,
                        tobeAdded_14,tobeAdded_13,tobeAdded_12,tobeAdded_11,
                        tobeAdded_10,tobeAdded_9,tobeAdded_8,tobeAdded_7,
                        tobeAdded_6,tobeAdded_5,tobeAdded_4,tobeAdded_3,
                        tobeAdded_2,tobeAdded_1,tobeAdded_0}), .reset (GND), .clk (
                        clk), .isLoad (initAddress), .MFC (MFC), .count ({
                        ramReadAddress[15],ramReadAddress[14],ramReadAddress[13]
                        ,ramReadAddress[12],ramReadAddress[11],
                        ramReadAddress[10],ramReadAddress[9],ramReadAddress[8],
                        ramReadAddress[7],ramReadAddress[6],ramReadAddress[5],
                        ramReadAddress[4],ramReadAddress[3],ramReadAddress[2],
                        ramReadAddress[1],ramReadAddress[0]})) ;
    fake_gnd ix119 (.Y (GND)) ;
    nor02_2x ix177 (.Y (ramRead), .A0 (nx202), .A1 (nx240)) ;
    nor03_2x ix203 (.Y (nx202), .A0 (nx204), .A1 (clk), .A2 (nx158)) ;
    inv01 ix205 (.Y (nx204), .A (MFC)) ;
    nand03 ix159 (.Y (nx158), .A0 (nx207), .A1 (nx228), .A2 (currentCount_0)) ;
    oai21 ix182 (.Y (nx181), .A0 (nx210), .A1 (nx221), .B0 (nx226)) ;
    aoi21 ix211 (.Y (nx210), .A0 (initialCount[1]), .A1 (nx323), .B0 (nx120)) ;
    nor02_2x ix122 (.Y (nx120), .A0 (nx323), .A1 (nx213)) ;
    dff counter_counterReg_reg_Q_1 (.Q (currentCount_1), .QB (nx207), .D (nx181)
        , .CLK (clk)) ;
    oai21 ix172 (.Y (nx171), .A0 (nx219), .A1 (nx221), .B0 (nx223)) ;
    mux21 ix220 (.Y (nx219), .A0 (nx216), .A1 (initialCount[0]), .S0 (nx323)) ;
    nor02_2x ix222 (.Y (nx221), .A0 (MFC), .A1 (nx323)) ;
    nand02 ix224 (.Y (nx223), .A0 (currentCount_0), .A1 (nx221)) ;
    dff counter_counterReg_reg_Q_0 (.Q (currentCount_0), .QB (nx216), .D (nx171)
        , .CLK (clk)) ;
    nand02 ix227 (.Y (nx226), .A0 (currentCount_1), .A1 (nx221)) ;
    oai21 ix192 (.Y (nx191), .A0 (nx231), .A1 (nx221), .B0 (nx238)) ;
    aoi21 ix232 (.Y (nx231), .A0 (initialCount[2]), .A1 (nx323), .B0 (nx142)) ;
    nor02_2x ix143 (.Y (nx142), .A0 (nx323), .A1 (nx234)) ;
    dff counter_counterReg_reg_Q_2 (.Q (currentCount_2), .QB (nx228), .D (nx191)
        , .CLK (clk)) ;
    nand02 ix239 (.Y (nx238), .A0 (currentCount_2), .A1 (nx221)) ;
    oai21 ix241 (.Y (nx240), .A0 (nx242), .A1 (nx244), .B0 (load)) ;
    nand02 ix243 (.Y (nx242), .A0 (nx207), .A1 (nx216)) ;
    nand02 ix245 (.Y (nx244), .A0 (clk), .A1 (nx228)) ;
    nor02_2x ix189 (.Y (finishedReading), .A0 (nx247), .A1 (nx249)) ;
    nand02 ix248 (.Y (nx247), .A0 (load), .A1 (MFC)) ;
    nor02_2x ix250 (.Y (nx249), .A0 (nx184), .A1 (nx170)) ;
    nor02_2x ix185 (.Y (nx184), .A0 (clk), .A1 (nx158)) ;
    nor03_2x ix171 (.Y (nx170), .A0 (currentCount_1), .A1 (currentCount_0), .A2 (
             nx244)) ;
    nor02_2x ix179 (.Y (finishedOneRead), .A0 (nx254), .A1 (nx204)) ;
    inv01 ix255 (.Y (nx254), .A (load)) ;
    dff readStepRegister_reg_Q_0 (.Q (tobeAdded_0), .QB (\$dummy [0]), .D (
        readStep[0]), .CLK (nx323)) ;
    dff readStepRegister_reg_Q_1 (.Q (tobeAdded_1), .QB (\$dummy [1]), .D (
        readStep[1]), .CLK (nx325)) ;
    dff readStepRegister_reg_Q_2 (.Q (tobeAdded_2), .QB (\$dummy [2]), .D (
        readStep[2]), .CLK (nx325)) ;
    dff readStepRegister_reg_Q_3 (.Q (tobeAdded_3), .QB (\$dummy [3]), .D (
        readStep[3]), .CLK (nx325)) ;
    dff readStepRegister_reg_Q_4 (.Q (tobeAdded_4), .QB (\$dummy [4]), .D (
        readStep[4]), .CLK (nx325)) ;
    dff readStepRegister_reg_Q_5 (.Q (tobeAdded_5), .QB (\$dummy [5]), .D (
        readStep[5]), .CLK (nx325)) ;
    dff readStepRegister_reg_Q_6 (.Q (tobeAdded_6), .QB (\$dummy [6]), .D (
        readStep[6]), .CLK (nx325)) ;
    dff readStepRegister_reg_Q_7 (.Q (tobeAdded_7), .QB (\$dummy [7]), .D (
        readStep[7]), .CLK (nx325)) ;
    dff readStepRegister_reg_Q_8 (.Q (tobeAdded_8), .QB (\$dummy [8]), .D (
        readStep[8]), .CLK (nx327)) ;
    dff readStepRegister_reg_Q_9 (.Q (tobeAdded_9), .QB (\$dummy [9]), .D (
        readStep[9]), .CLK (nx327)) ;
    dff readStepRegister_reg_Q_10 (.Q (tobeAdded_10), .QB (\$dummy [10]), .D (
        readStep[10]), .CLK (nx327)) ;
    dff readStepRegister_reg_Q_11 (.Q (tobeAdded_11), .QB (\$dummy [11]), .D (
        readStep[11]), .CLK (nx327)) ;
    dff readStepRegister_reg_Q_12 (.Q (tobeAdded_12), .QB (\$dummy [12]), .D (
        readStep[12]), .CLK (nx327)) ;
    dff readStepRegister_reg_Q_13 (.Q (tobeAdded_13), .QB (\$dummy [13]), .D (
        readStep[13]), .CLK (nx327)) ;
    dff readStepRegister_reg_Q_14 (.Q (tobeAdded_14), .QB (\$dummy [14]), .D (
        readStep[14]), .CLK (nx327)) ;
    dff readStepRegister_reg_Q_15 (.Q (tobeAdded_15), .QB (\$dummy [15]), .D (
        readStep[15]), .CLK (nx329)) ;
    trib04 tristateLabel_tri_output_0 (.Y (internalBus[0]), .A (ramDataInBus[0])
           , .E (nx309)) ;
    trib04 tristateLabel_tri_output_1 (.Y (internalBus[1]), .A (ramDataInBus[1])
           , .E (nx309)) ;
    trib04 tristateLabel_tri_output_2 (.Y (internalBus[2]), .A (ramDataInBus[2])
           , .E (nx309)) ;
    trib04 tristateLabel_tri_output_3 (.Y (internalBus[3]), .A (ramDataInBus[3])
           , .E (nx309)) ;
    trib04 tristateLabel_tri_output_4 (.Y (internalBus[4]), .A (ramDataInBus[4])
           , .E (nx309)) ;
    trib04 tristateLabel_tri_output_5 (.Y (internalBus[5]), .A (ramDataInBus[5])
           , .E (nx309)) ;
    trib04 tristateLabel_tri_output_6 (.Y (internalBus[6]), .A (ramDataInBus[6])
           , .E (nx309)) ;
    trib04 tristateLabel_tri_output_7 (.Y (internalBus[7]), .A (ramDataInBus[7])
           , .E (nx311)) ;
    trib04 tristateLabel_tri_output_8 (.Y (internalBus[8]), .A (ramDataInBus[8])
           , .E (nx311)) ;
    trib04 tristateLabel_tri_output_9 (.Y (internalBus[9]), .A (ramDataInBus[9])
           , .E (nx311)) ;
    trib04 tristateLabel_tri_output_10 (.Y (internalBus[10]), .A (
           ramDataInBus[10]), .E (nx311)) ;
    trib04 tristateLabel_tri_output_11 (.Y (internalBus[11]), .A (
           ramDataInBus[11]), .E (nx311)) ;
    trib04 tristateLabel_tri_output_12 (.Y (internalBus[12]), .A (
           ramDataInBus[12]), .E (nx311)) ;
    trib04 tristateLabel_tri_output_13 (.Y (internalBus[13]), .A (
           ramDataInBus[13]), .E (nx311)) ;
    trib04 tristateLabel_tri_output_14 (.Y (internalBus[14]), .A (
           ramDataInBus[14]), .E (nx313)) ;
    trib04 tristateLabel_tri_output_15 (.Y (internalBus[15]), .A (
           ramDataInBus[15]), .E (nx313)) ;
    buf02 ix308 (.Y (nx309), .A (finishedOneRead)) ;
    buf02 ix310 (.Y (nx311), .A (finishedOneRead)) ;
    buf02 ix312 (.Y (nx313), .A (finishedOneRead)) ;
    xnor2 ix214 (.Y (nx213), .A0 (nx207), .A1 (currentCount_0)) ;
    xnor2 ix235 (.Y (nx234), .A0 (nx228), .A1 (nx319)) ;
    nand02 ix137 (.Y (nx319), .A0 (nx207), .A1 (nx216)) ;
    inv01 ix320 (.Y (nx321), .A (initCounter)) ;
    inv02 ix322 (.Y (nx323), .A (nx321)) ;
    inv02 ix324 (.Y (nx325), .A (nx321)) ;
    inv02 ix326 (.Y (nx327), .A (nx321)) ;
    inv02 ix328 (.Y (nx329), .A (nx321)) ;
endmodule


module MultiStepCounter_16 ( load, toBeAdded, reset, clk, isLoad, MFC, count ) ;

    input [15:0]load ;
    input [15:0]toBeAdded ;
    input reset ;
    input clk ;
    input isLoad ;
    input MFC ;
    output [15:0]count ;

    wire countAdded_15, countAdded_14, countAdded_13, countAdded_12, 
         countAdded_11, countAdded_10, countAdded_9, countAdded_8, countAdded_7, 
         countAdded_6, countAdded_5, countAdded_4, countAdded_3, countAdded_2, 
         countAdded_1, countAdded_0, GND, nx12, nx18, nx34, nx50, nx66, nx82, 
         nx98, nx114, nx130, nx146, nx162, nx178, nx194, nx210, nx226, nx242, 
         nx258, nx69, nx72, nx75, nx77, nx83, nx85, nx87, nx93, nx95, nx97, 
         nx102, nx104, nx107, nx113, nx115, nx117, nx123, nx125, nx127, nx133, 
         nx135, nx137, nx143, nx145, nx147, nx152, nx155, nx157, nx163, nx165, 
         nx167, nx173, nx175, nx177, nx182, nx184, nx187, nx193, nx195, nx197, 
         nx203, nx205, nx207, nx213, nx215, nx217, nx223, nx225, nx227, nx235, 
         nx237, nx239, nx241, nx248, nx250, nx252, nx254;
    wire [16:0] \$dummy ;




    NBitAdder_16 nextCount (.a ({count[15],count[14],count[13],count[12],
                 count[11],count[10],count[9],count[8],count[7],count[6],
                 count[5],count[4],count[3],count[2],count[1],count[0]}), .b ({
                 toBeAdded[15],toBeAdded[14],toBeAdded[13],toBeAdded[12],
                 toBeAdded[11],toBeAdded[10],toBeAdded[9],toBeAdded[8],
                 toBeAdded[7],toBeAdded[6],toBeAdded[5],toBeAdded[4],
                 toBeAdded[3],toBeAdded[2],toBeAdded[1],toBeAdded[0]}), .carryIn (
                 GND), .sum ({countAdded_15,countAdded_14,countAdded_13,
                 countAdded_12,countAdded_11,countAdded_10,countAdded_9,
                 countAdded_8,countAdded_7,countAdded_6,countAdded_5,
                 countAdded_4,countAdded_3,countAdded_2,countAdded_1,
                 countAdded_0}), .carryOut (\$dummy [0])) ;
    fake_gnd ix4 (.Y (GND)) ;
    dff counterReg_reg_Q_0 (.Q (count[0]), .QB (\$dummy [1]), .D (nx18), .CLK (
        clk)) ;
    nand03 ix19 (.Y (nx18), .A0 (nx69), .A1 (nx72), .A2 (nx77)) ;
    nand02 ix70 (.Y (nx69), .A0 (count[0]), .A1 (nx235)) ;
    nor02_2x ix13 (.Y (nx12), .A0 (MFC), .A1 (nx250)) ;
    nand03 ix73 (.Y (nx72), .A0 (load[0]), .A1 (nx239), .A2 (nx250)) ;
    inv01 ix76 (.Y (nx75), .A (MFC)) ;
    nand02 ix78 (.Y (nx77), .A0 (countAdded_0), .A1 (MFC)) ;
    dff counterReg_reg_Q_1 (.Q (count[1]), .QB (\$dummy [2]), .D (nx34), .CLK (
        clk)) ;
    nand03 ix35 (.Y (nx34), .A0 (nx83), .A1 (nx85), .A2 (nx87)) ;
    nand02 ix84 (.Y (nx83), .A0 (count[1]), .A1 (nx235)) ;
    nand03 ix86 (.Y (nx85), .A0 (load[1]), .A1 (nx239), .A2 (nx250)) ;
    nand02 ix88 (.Y (nx87), .A0 (countAdded_1), .A1 (MFC)) ;
    dff counterReg_reg_Q_2 (.Q (count[2]), .QB (\$dummy [3]), .D (nx50), .CLK (
        clk)) ;
    nand03 ix51 (.Y (nx50), .A0 (nx93), .A1 (nx95), .A2 (nx97)) ;
    nand02 ix94 (.Y (nx93), .A0 (count[2]), .A1 (nx235)) ;
    nand03 ix96 (.Y (nx95), .A0 (load[2]), .A1 (nx239), .A2 (nx250)) ;
    nand02 ix98 (.Y (nx97), .A0 (countAdded_2), .A1 (MFC)) ;
    dff counterReg_reg_Q_3 (.Q (count[3]), .QB (\$dummy [4]), .D (nx66), .CLK (
        clk)) ;
    nand03 ix67 (.Y (nx66), .A0 (nx102), .A1 (nx104), .A2 (nx107)) ;
    nand02 ix103 (.Y (nx102), .A0 (count[3]), .A1 (nx235)) ;
    nand03 ix105 (.Y (nx104), .A0 (load[3]), .A1 (nx239), .A2 (nx250)) ;
    nand02 ix108 (.Y (nx107), .A0 (countAdded_3), .A1 (MFC)) ;
    dff counterReg_reg_Q_4 (.Q (count[4]), .QB (\$dummy [5]), .D (nx82), .CLK (
        clk)) ;
    nand03 ix83 (.Y (nx82), .A0 (nx113), .A1 (nx115), .A2 (nx117)) ;
    nand02 ix114 (.Y (nx113), .A0 (count[4]), .A1 (nx235)) ;
    nand03 ix116 (.Y (nx115), .A0 (load[4]), .A1 (nx239), .A2 (nx250)) ;
    nand02 ix118 (.Y (nx117), .A0 (countAdded_4), .A1 (MFC)) ;
    dff counterReg_reg_Q_5 (.Q (count[5]), .QB (\$dummy [6]), .D (nx98), .CLK (
        clk)) ;
    nand03 ix99 (.Y (nx98), .A0 (nx123), .A1 (nx125), .A2 (nx127)) ;
    nand02 ix124 (.Y (nx123), .A0 (count[5]), .A1 (nx235)) ;
    nand03 ix126 (.Y (nx125), .A0 (load[5]), .A1 (nx239), .A2 (nx250)) ;
    nand02 ix128 (.Y (nx127), .A0 (countAdded_5), .A1 (MFC)) ;
    dff counterReg_reg_Q_6 (.Q (count[6]), .QB (\$dummy [7]), .D (nx114), .CLK (
        clk)) ;
    nand03 ix115 (.Y (nx114), .A0 (nx133), .A1 (nx135), .A2 (nx137)) ;
    nand02 ix134 (.Y (nx133), .A0 (count[6]), .A1 (nx235)) ;
    nand03 ix136 (.Y (nx135), .A0 (load[6]), .A1 (nx241), .A2 (nx252)) ;
    nand02 ix138 (.Y (nx137), .A0 (countAdded_6), .A1 (MFC)) ;
    dff counterReg_reg_Q_7 (.Q (count[7]), .QB (\$dummy [8]), .D (nx130), .CLK (
        clk)) ;
    nand03 ix131 (.Y (nx130), .A0 (nx143), .A1 (nx145), .A2 (nx147)) ;
    nand02 ix144 (.Y (nx143), .A0 (count[7]), .A1 (nx237)) ;
    nand03 ix146 (.Y (nx145), .A0 (load[7]), .A1 (nx241), .A2 (nx252)) ;
    nand02 ix148 (.Y (nx147), .A0 (countAdded_7), .A1 (MFC)) ;
    dff counterReg_reg_Q_8 (.Q (count[8]), .QB (\$dummy [9]), .D (nx146), .CLK (
        clk)) ;
    nand03 ix147 (.Y (nx146), .A0 (nx152), .A1 (nx155), .A2 (nx157)) ;
    nand02 ix153 (.Y (nx152), .A0 (count[8]), .A1 (nx237)) ;
    nand03 ix156 (.Y (nx155), .A0 (load[8]), .A1 (nx241), .A2 (nx252)) ;
    nand02 ix158 (.Y (nx157), .A0 (countAdded_8), .A1 (MFC)) ;
    dff counterReg_reg_Q_9 (.Q (count[9]), .QB (\$dummy [10]), .D (nx162), .CLK (
        clk)) ;
    nand03 ix163 (.Y (nx162), .A0 (nx163), .A1 (nx165), .A2 (nx167)) ;
    nand02 ix164 (.Y (nx163), .A0 (count[9]), .A1 (nx237)) ;
    nand03 ix166 (.Y (nx165), .A0 (load[9]), .A1 (nx241), .A2 (nx252)) ;
    nand02 ix168 (.Y (nx167), .A0 (countAdded_9), .A1 (MFC)) ;
    dff counterReg_reg_Q_10 (.Q (count[10]), .QB (\$dummy [11]), .D (nx178), .CLK (
        clk)) ;
    nand03 ix179 (.Y (nx178), .A0 (nx173), .A1 (nx175), .A2 (nx177)) ;
    nand02 ix174 (.Y (nx173), .A0 (count[10]), .A1 (nx237)) ;
    nand03 ix176 (.Y (nx175), .A0 (load[10]), .A1 (nx241), .A2 (nx252)) ;
    nand02 ix178 (.Y (nx177), .A0 (countAdded_10), .A1 (MFC)) ;
    dff counterReg_reg_Q_11 (.Q (count[11]), .QB (\$dummy [12]), .D (nx194), .CLK (
        clk)) ;
    nand03 ix195 (.Y (nx194), .A0 (nx182), .A1 (nx184), .A2 (nx187)) ;
    nand02 ix183 (.Y (nx182), .A0 (count[11]), .A1 (nx237)) ;
    nand03 ix185 (.Y (nx184), .A0 (load[11]), .A1 (nx241), .A2 (nx252)) ;
    nand02 ix188 (.Y (nx187), .A0 (countAdded_11), .A1 (MFC)) ;
    dff counterReg_reg_Q_12 (.Q (count[12]), .QB (\$dummy [13]), .D (nx210), .CLK (
        clk)) ;
    nand03 ix211 (.Y (nx210), .A0 (nx193), .A1 (nx195), .A2 (nx197)) ;
    nand02 ix194 (.Y (nx193), .A0 (count[12]), .A1 (nx237)) ;
    nand03 ix196 (.Y (nx195), .A0 (load[12]), .A1 (nx75), .A2 (nx252)) ;
    nand02 ix198 (.Y (nx197), .A0 (countAdded_12), .A1 (MFC)) ;
    dff counterReg_reg_Q_13 (.Q (count[13]), .QB (\$dummy [14]), .D (nx226), .CLK (
        clk)) ;
    nand03 ix227 (.Y (nx226), .A0 (nx203), .A1 (nx205), .A2 (nx207)) ;
    nand02 ix204 (.Y (nx203), .A0 (count[13]), .A1 (nx237)) ;
    nand03 ix206 (.Y (nx205), .A0 (load[13]), .A1 (nx75), .A2 (nx254)) ;
    nand02 ix208 (.Y (nx207), .A0 (countAdded_13), .A1 (MFC)) ;
    dff counterReg_reg_Q_14 (.Q (count[14]), .QB (\$dummy [15]), .D (nx242), .CLK (
        clk)) ;
    nand03 ix243 (.Y (nx242), .A0 (nx213), .A1 (nx215), .A2 (nx217)) ;
    nand02 ix214 (.Y (nx213), .A0 (count[14]), .A1 (nx12)) ;
    nand03 ix216 (.Y (nx215), .A0 (load[14]), .A1 (nx75), .A2 (nx254)) ;
    nand02 ix218 (.Y (nx217), .A0 (countAdded_14), .A1 (MFC)) ;
    dff counterReg_reg_Q_15 (.Q (count[15]), .QB (\$dummy [16]), .D (nx258), .CLK (
        clk)) ;
    nand03 ix259 (.Y (nx258), .A0 (nx223), .A1 (nx225), .A2 (nx227)) ;
    nand02 ix224 (.Y (nx223), .A0 (count[15]), .A1 (nx12)) ;
    nand03 ix226 (.Y (nx225), .A0 (load[15]), .A1 (nx75), .A2 (nx254)) ;
    nand02 ix228 (.Y (nx227), .A0 (MFC), .A1 (countAdded_15)) ;
    nor02_2x ix234 (.Y (nx235), .A0 (MFC), .A1 (nx254)) ;
    nor02_2x ix236 (.Y (nx237), .A0 (MFC), .A1 (nx254)) ;
    inv01 ix238 (.Y (nx239), .A (MFC)) ;
    inv01 ix240 (.Y (nx241), .A (MFC)) ;
    inv01 ix247 (.Y (nx248), .A (isLoad)) ;
    inv02 ix249 (.Y (nx250), .A (nx248)) ;
    inv02 ix251 (.Y (nx252), .A (nx248)) ;
    inv02 ix253 (.Y (nx254), .A (nx248)) ;
endmodule


module NBitAdder_16 ( a, b, carryIn, sum, carryOut ) ;

    input [15:0]a ;
    input [15:0]b ;
    input carryIn ;
    output [15:0]sum ;
    output carryOut ;

    wire nx2, nx8, nx10, nx18, nx24, nx26, nx34, nx40, nx42, nx50, nx56, nx58, 
         nx66, nx72, nx74, nx82, nx88, nx90, nx98, nx104, nx106, nx114, nx87, 
         nx91, nx95, nx101, nx103, nx105, nx109, nx113, nx117, nx123, nx125, 
         nx127, nx131, nx135, nx139, nx145, nx147, nx149, nx153, nx156, nx159, 
         nx163, nx165, nx167, nx170, nx173, nx176, nx180, nx182, nx184, nx187, 
         nx190, nx193, nx197, nx199, nx201, nx204, nx207, nx210, nx214, nx216, 
         nx218, nx221, nx224, nx227;



    fake_gnd ix44 (.Y (carryOut)) ;
    xnor2 ix151 (.Y (sum[0]), .A0 (b[0]), .A1 (nx87)) ;
    inv01 ix88 (.Y (nx87), .A (a[0])) ;
    xnor2 ix145 (.Y (sum[1]), .A0 (nx91), .A1 (nx2)) ;
    nand02 ix92 (.Y (nx91), .A0 (b[0]), .A1 (a[0])) ;
    xnor2 ix3 (.Y (nx2), .A0 (a[1]), .A1 (nx95)) ;
    inv01 ix96 (.Y (nx95), .A (b[1])) ;
    xnor2 ix143 (.Y (sum[2]), .A0 (nx8), .A1 (nx105)) ;
    oai22 ix9 (.Y (nx8), .A0 (nx91), .A1 (nx101), .B0 (nx95), .B1 (nx103)) ;
    xnor2 ix102 (.Y (nx101), .A0 (a[1]), .A1 (b[1])) ;
    inv01 ix104 (.Y (nx103), .A (a[1])) ;
    xnor2 ix106 (.Y (nx105), .A0 (a[2]), .A1 (b[2])) ;
    xnor2 ix141 (.Y (sum[3]), .A0 (nx109), .A1 (nx18)) ;
    aoi22 ix110 (.Y (nx109), .A0 (b[2]), .A1 (a[2]), .B0 (nx8), .B1 (nx10)) ;
    xnor2 ix11 (.Y (nx10), .A0 (a[2]), .A1 (nx113)) ;
    inv01 ix114 (.Y (nx113), .A (b[2])) ;
    xnor2 ix19 (.Y (nx18), .A0 (a[3]), .A1 (nx117)) ;
    inv01 ix118 (.Y (nx117), .A (b[3])) ;
    xnor2 ix139 (.Y (sum[4]), .A0 (nx24), .A1 (nx127)) ;
    oai21 ix25 (.Y (nx24), .A0 (nx109), .A1 (nx123), .B0 (nx125)) ;
    xnor2 ix124 (.Y (nx123), .A0 (a[3]), .A1 (b[3])) ;
    nand02 ix126 (.Y (nx125), .A0 (b[3]), .A1 (a[3])) ;
    xnor2 ix128 (.Y (nx127), .A0 (a[4]), .A1 (b[4])) ;
    xnor2 ix137 (.Y (sum[5]), .A0 (nx131), .A1 (nx34)) ;
    aoi22 ix132 (.Y (nx131), .A0 (b[4]), .A1 (a[4]), .B0 (nx24), .B1 (nx26)) ;
    xnor2 ix27 (.Y (nx26), .A0 (a[4]), .A1 (nx135)) ;
    inv01 ix136 (.Y (nx135), .A (b[4])) ;
    xnor2 ix35 (.Y (nx34), .A0 (a[5]), .A1 (nx139)) ;
    inv01 ix140 (.Y (nx139), .A (b[5])) ;
    xnor2 ix135 (.Y (sum[6]), .A0 (nx40), .A1 (nx149)) ;
    oai21 ix41 (.Y (nx40), .A0 (nx131), .A1 (nx145), .B0 (nx147)) ;
    xnor2 ix146 (.Y (nx145), .A0 (a[5]), .A1 (b[5])) ;
    nand02 ix148 (.Y (nx147), .A0 (b[5]), .A1 (a[5])) ;
    xnor2 ix150 (.Y (nx149), .A0 (a[6]), .A1 (b[6])) ;
    xnor2 ix133 (.Y (sum[7]), .A0 (nx153), .A1 (nx50)) ;
    aoi22 ix154 (.Y (nx153), .A0 (b[6]), .A1 (a[6]), .B0 (nx40), .B1 (nx42)) ;
    xnor2 ix43 (.Y (nx42), .A0 (a[6]), .A1 (nx156)) ;
    inv01 ix157 (.Y (nx156), .A (b[6])) ;
    xnor2 ix51 (.Y (nx50), .A0 (a[7]), .A1 (nx159)) ;
    inv01 ix160 (.Y (nx159), .A (b[7])) ;
    xnor2 ix131 (.Y (sum[8]), .A0 (nx56), .A1 (nx167)) ;
    oai21 ix57 (.Y (nx56), .A0 (nx153), .A1 (nx163), .B0 (nx165)) ;
    xnor2 ix164 (.Y (nx163), .A0 (a[7]), .A1 (b[7])) ;
    nand02 ix166 (.Y (nx165), .A0 (b[7]), .A1 (a[7])) ;
    xnor2 ix168 (.Y (nx167), .A0 (a[8]), .A1 (b[8])) ;
    xnor2 ix129 (.Y (sum[9]), .A0 (nx170), .A1 (nx66)) ;
    aoi22 ix171 (.Y (nx170), .A0 (b[8]), .A1 (a[8]), .B0 (nx56), .B1 (nx58)) ;
    xnor2 ix59 (.Y (nx58), .A0 (a[8]), .A1 (nx173)) ;
    inv01 ix174 (.Y (nx173), .A (b[8])) ;
    xnor2 ix67 (.Y (nx66), .A0 (a[9]), .A1 (nx176)) ;
    inv01 ix177 (.Y (nx176), .A (b[9])) ;
    xnor2 ix127 (.Y (sum[10]), .A0 (nx72), .A1 (nx184)) ;
    oai21 ix73 (.Y (nx72), .A0 (nx170), .A1 (nx180), .B0 (nx182)) ;
    xnor2 ix181 (.Y (nx180), .A0 (a[9]), .A1 (b[9])) ;
    nand02 ix183 (.Y (nx182), .A0 (b[9]), .A1 (a[9])) ;
    xnor2 ix185 (.Y (nx184), .A0 (a[10]), .A1 (b[10])) ;
    xnor2 ix125 (.Y (sum[11]), .A0 (nx187), .A1 (nx82)) ;
    aoi22 ix188 (.Y (nx187), .A0 (b[10]), .A1 (a[10]), .B0 (nx72), .B1 (nx74)) ;
    xnor2 ix75 (.Y (nx74), .A0 (a[10]), .A1 (nx190)) ;
    inv01 ix191 (.Y (nx190), .A (b[10])) ;
    xnor2 ix83 (.Y (nx82), .A0 (a[11]), .A1 (nx193)) ;
    inv01 ix194 (.Y (nx193), .A (b[11])) ;
    xnor2 ix123 (.Y (sum[12]), .A0 (nx88), .A1 (nx201)) ;
    oai21 ix89 (.Y (nx88), .A0 (nx187), .A1 (nx197), .B0 (nx199)) ;
    xnor2 ix198 (.Y (nx197), .A0 (a[11]), .A1 (b[11])) ;
    nand02 ix200 (.Y (nx199), .A0 (b[11]), .A1 (a[11])) ;
    xnor2 ix202 (.Y (nx201), .A0 (a[12]), .A1 (b[12])) ;
    xnor2 ix121 (.Y (sum[13]), .A0 (nx204), .A1 (nx98)) ;
    aoi22 ix205 (.Y (nx204), .A0 (b[12]), .A1 (a[12]), .B0 (nx88), .B1 (nx90)) ;
    xnor2 ix91 (.Y (nx90), .A0 (a[12]), .A1 (nx207)) ;
    inv01 ix208 (.Y (nx207), .A (b[12])) ;
    xnor2 ix99 (.Y (nx98), .A0 (a[13]), .A1 (nx210)) ;
    inv01 ix211 (.Y (nx210), .A (b[13])) ;
    xnor2 ix119 (.Y (sum[14]), .A0 (nx104), .A1 (nx218)) ;
    oai21 ix105 (.Y (nx104), .A0 (nx204), .A1 (nx214), .B0 (nx216)) ;
    xnor2 ix215 (.Y (nx214), .A0 (a[13]), .A1 (b[13])) ;
    nand02 ix217 (.Y (nx216), .A0 (b[13]), .A1 (a[13])) ;
    xnor2 ix219 (.Y (nx218), .A0 (a[14]), .A1 (b[14])) ;
    xnor2 ix117 (.Y (sum[15]), .A0 (nx221), .A1 (nx114)) ;
    aoi22 ix222 (.Y (nx221), .A0 (b[14]), .A1 (a[14]), .B0 (nx104), .B1 (nx106)
          ) ;
    xnor2 ix107 (.Y (nx106), .A0 (a[14]), .A1 (nx224)) ;
    inv01 ix225 (.Y (nx224), .A (b[14])) ;
    xnor2 ix115 (.Y (nx114), .A0 (a[15]), .A1 (nx227)) ;
    inv01 ix228 (.Y (nx227), .A (b[15])) ;
endmodule

