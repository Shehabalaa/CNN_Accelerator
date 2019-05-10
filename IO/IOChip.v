//
// Verilog description for cell IOChip, 
// Fri May 10 11:14:08 2019
//
// LeonardoSpectrum Level 3, 2018a.2 
//


module IOChip ( din, clk, rst, imageOrCNN, INTR, load, processing, doneWithPhase, 
                busy, doneDMAFC, doneDMACNN, doneDMAImage, imgRamWrite, 
                CNNRamWrite, FCRamWrite, imageDMAAddressOut, imageDMADataOut, 
                CNNDMAAddressOut, CNNDMADataOut, FCDMAAddressOut, FCDMADataOut, 
                result, FCResult, FCDone ) ;

    input [15:0]din ;
    input clk ;
    input rst ;
    input imageOrCNN ;
    input INTR ;
    input load ;
    input processing ;
    output doneWithPhase ;
    output busy ;
    input doneDMAFC ;
    input doneDMACNN ;
    input doneDMAImage ;
    inout imgRamWrite ;
    inout CNNRamWrite ;
    inout FCRamWrite ;
    output [12:0]imageDMAAddressOut ;
    output [15:0]imageDMADataOut ;
    output [12:0]CNNDMAAddressOut ;
    output [15:0]CNNDMADataOut ;
    output [15:0]FCDMAAddressOut ;
    output [79:0]FCDMADataOut ;
    output [3:0]result ;
    input [3:0]FCResult ;
    input FCDone ;

    wire decompZeroState, CNNCounterEnable, decompDecrementorEnable, 
         CNNRegisterEnable, imageCounterEnable, imageRegisterEnable, 
         FCCounterEnable, FCRegisterEnable, imageLoad, INTRDelayed, 
         interfaceOutput_15, interfaceOutput_14, interfaceOutput_13, 
         interfaceOutput_12, interfaceOutput_11, interfaceOutput_10, 
         interfaceOutput_9, interfaceOutput_8, interfaceOutput_7, 
         interfaceOutput_6, interfaceOutput_5, interfaceOutput_4, 
         interfaceOutput_3, interfaceOutput_2, interfaceOutput_1, 
         interfaceOutput_0, decompDataOut_7, decompDataOut_6, decompDataOut_5, 
         decompDataOut_4, decompDataOut_3, decompDataOut_2, decompDataOut_1, 
         decompDataOut_0, FCRamWriteOld;
    wire [1:0] \$dummy ;




    IO_16_4 io (.Din ({din[15],din[14],din[13],din[12],din[11],din[10],din[9],
            din[8],din[7],din[6],din[5],din[4],din[3],din[2],din[1],din[0]}), .doneDMAFC (
            doneDMAFC), .doneDMACNN (doneDMACNN), .doneDMAImage (doneDMAImage), 
            .INTR (INTR), .load (load), .clk (clk), .rst (rst), .processing (
            processing), .imageOrCNN (imageOrCNN), .decompZeroState (
            decompZeroState), .doneWithPhase (doneWithPhase), .CNNCounterEnable (
            CNNCounterEnable), .imageCounterEnable (imageCounterEnable), .FCCounterEnable (
            FCCounterEnable), .decompDecrementorEnable (decompDecrementorEnable)
            , .busy (busy), .toCNN (\$dummy [0]), .toFC (\$dummy [1]), .INTRDelayed (
            INTRDelayed), .imageLoad (imageLoad), .imageRegisterEnable (
            imageRegisterEnable), .CNNRegisterEnable (CNNRegisterEnable), .FCRegisterEnable (
            FCRegisterEnable), .imageRamEnable (imgRamWrite), .CNNRamEnable (
            CNNRamWrite), .FCRamEnable (FCRamWrite), .interfaceOutput ({
            interfaceOutput_15,interfaceOutput_14,interfaceOutput_13,
            interfaceOutput_12,interfaceOutput_11,interfaceOutput_10,
            interfaceOutput_9,interfaceOutput_8,interfaceOutput_7,
            interfaceOutput_6,interfaceOutput_5,interfaceOutput_4,
            interfaceOutput_3,interfaceOutput_2,interfaceOutput_1,
            interfaceOutput_0}), .FCRamWriteOld (FCRamWriteOld), .result ({
            result[3],result[2],result[1],result[0]}), .FCResult ({FCResult[3],
            FCResult[2],FCResult[1],FCResult[0]}), .FCDone (FCDone)) ;
    Decompressor decomp (.dataIn ({interfaceOutput_5,interfaceOutput_4,
                 interfaceOutput_3,interfaceOutput_2,interfaceOutput_1,
                 interfaceOutput_0}), .clk (clk), .en (decompDecrementorEnable)
                 , .rst (rst), .imageLoad (imageLoad), .intrDelayed (INTRDelayed
                 ), .zeroState (decompZeroState), .dataOut ({decompDataOut_7,
                 decompDataOut_6,decompDataOut_5,decompDataOut_4,decompDataOut_3
                 ,decompDataOut_2,decompDataOut_1,decompDataOut_0})) ;
    DMAImage imageDMA (.dataIn ({decompDataOut_7,decompDataOut_6,decompDataOut_5
             ,decompDataOut_4,decompDataOut_3,decompDataOut_2,decompDataOut_1,
             decompDataOut_0}), .addressIn ({interfaceOutput_15,
             interfaceOutput_14,interfaceOutput_13,interfaceOutput_12,
             interfaceOutput_11,interfaceOutput_10,interfaceOutput_9,
             interfaceOutput_8,interfaceOutput_7,interfaceOutput_6}), .clk (clk)
             , .enableImageCounter (imageCounterEnable), .enableImageRegister (
             imageRegisterEnable), .rst (rst), .intrDelayed (INTRDelayed), .dataOut (
             {imageDMADataOut[15],imageDMADataOut[14],imageDMADataOut[13],
             imageDMADataOut[12],imageDMADataOut[11],imageDMADataOut[10],
             imageDMADataOut[9],imageDMADataOut[8],imageDMADataOut[7],
             imageDMADataOut[6],imageDMADataOut[5],imageDMADataOut[4],
             imageDMADataOut[3],imageDMADataOut[2],imageDMADataOut[1],
             imageDMADataOut[0]}), .addressOut ({imageDMAAddressOut[12],
             imageDMAAddressOut[11],imageDMAAddressOut[10],imageDMAAddressOut[9]
             ,imageDMAAddressOut[8],imageDMAAddressOut[7],imageDMAAddressOut[6],
             imageDMAAddressOut[5],imageDMAAddressOut[4],imageDMAAddressOut[3],
             imageDMAAddressOut[2],imageDMAAddressOut[1],imageDMAAddressOut[0]})
             ) ;
    DMACNN cnnDMA (.dataIn ({interfaceOutput_15,interfaceOutput_14,
           interfaceOutput_13,interfaceOutput_12,interfaceOutput_11,
           interfaceOutput_10,interfaceOutput_9,interfaceOutput_8,
           interfaceOutput_7,interfaceOutput_6,interfaceOutput_5,
           interfaceOutput_4,interfaceOutput_3,interfaceOutput_2,
           interfaceOutput_1,interfaceOutput_0}), .clk (clk), .enableCNNCounter (
           CNNCounterEnable), .enableCNNRegister (CNNRegisterEnable), .rst (rst)
           , .dataOut ({CNNDMADataOut[15],CNNDMADataOut[14],CNNDMADataOut[13],
           CNNDMADataOut[12],CNNDMADataOut[11],CNNDMADataOut[10],
           CNNDMADataOut[9],CNNDMADataOut[8],CNNDMADataOut[7],CNNDMADataOut[6],
           CNNDMADataOut[5],CNNDMADataOut[4],CNNDMADataOut[3],CNNDMADataOut[2],
           CNNDMADataOut[1],CNNDMADataOut[0]}), .addressOut ({
           CNNDMAAddressOut[12],CNNDMAAddressOut[11],CNNDMAAddressOut[10],
           CNNDMAAddressOut[9],CNNDMAAddressOut[8],CNNDMAAddressOut[7],
           CNNDMAAddressOut[6],CNNDMAAddressOut[5],CNNDMAAddressOut[4],
           CNNDMAAddressOut[3],CNNDMAAddressOut[2],CNNDMAAddressOut[1],
           CNNDMAAddressOut[0]})) ;
    FCDMA_16 fcDMA (.dataIn ({interfaceOutput_15,interfaceOutput_14,
             interfaceOutput_13,interfaceOutput_12,interfaceOutput_11,
             interfaceOutput_10,interfaceOutput_9,interfaceOutput_8,
             interfaceOutput_7,interfaceOutput_6,interfaceOutput_5,
             interfaceOutput_4,interfaceOutput_3,interfaceOutput_2,
             interfaceOutput_1,interfaceOutput_0}), .clk (clk), .rst (rst), .addressCounterEnable (
             FCCounterEnable), .delayedInt (FCRegisterEnable), .doneFCRAM (
             doneDMAFC), .address ({FCDMAAddressOut[15],FCDMAAddressOut[14],
             FCDMAAddressOut[13],FCDMAAddressOut[12],FCDMAAddressOut[11],
             FCDMAAddressOut[10],FCDMAAddressOut[9],FCDMAAddressOut[8],
             FCDMAAddressOut[7],FCDMAAddressOut[6],FCDMAAddressOut[5],
             FCDMAAddressOut[4],FCDMAAddressOut[3],FCDMAAddressOut[2],
             FCDMAAddressOut[1],FCDMAAddressOut[0]}), .dataOut ({
             FCDMADataOut[79],FCDMADataOut[78],FCDMADataOut[77],FCDMADataOut[76]
             ,FCDMADataOut[75],FCDMADataOut[74],FCDMADataOut[73],
             FCDMADataOut[72],FCDMADataOut[71],FCDMADataOut[70],FCDMADataOut[69]
             ,FCDMADataOut[68],FCDMADataOut[67],FCDMADataOut[66],
             FCDMADataOut[65],FCDMADataOut[64],FCDMADataOut[63],FCDMADataOut[62]
             ,FCDMADataOut[61],FCDMADataOut[60],FCDMADataOut[59],
             FCDMADataOut[58],FCDMADataOut[57],FCDMADataOut[56],FCDMADataOut[55]
             ,FCDMADataOut[54],FCDMADataOut[53],FCDMADataOut[52],
             FCDMADataOut[51],FCDMADataOut[50],FCDMADataOut[49],FCDMADataOut[48]
             ,FCDMADataOut[47],FCDMADataOut[46],FCDMADataOut[45],
             FCDMADataOut[44],FCDMADataOut[43],FCDMADataOut[42],FCDMADataOut[41]
             ,FCDMADataOut[40],FCDMADataOut[39],FCDMADataOut[38],
             FCDMADataOut[37],FCDMADataOut[36],FCDMADataOut[35],FCDMADataOut[34]
             ,FCDMADataOut[33],FCDMADataOut[32],FCDMADataOut[31],
             FCDMADataOut[30],FCDMADataOut[29],FCDMADataOut[28],FCDMADataOut[27]
             ,FCDMADataOut[26],FCDMADataOut[25],FCDMADataOut[24],
             FCDMADataOut[23],FCDMADataOut[22],FCDMADataOut[21],FCDMADataOut[20]
             ,FCDMADataOut[19],FCDMADataOut[18],FCDMADataOut[17],
             FCDMADataOut[16],FCDMADataOut[15],FCDMADataOut[14],FCDMADataOut[13]
             ,FCDMADataOut[12],FCDMADataOut[11],FCDMADataOut[10],FCDMADataOut[9]
             ,FCDMADataOut[8],FCDMADataOut[7],FCDMADataOut[6],FCDMADataOut[5],
             FCDMADataOut[4],FCDMADataOut[3],FCDMADataOut[2],FCDMADataOut[1],
             FCDMADataOut[0]}), .write (FCRamWriteOld)) ;
endmodule


module FCDMA_16 ( dataIn, clk, rst, addressCounterEnable, delayedInt, doneFCRAM, 
                  address, dataOut, write ) ;

    input [15:0]dataIn ;
    input clk ;
    input rst ;
    input addressCounterEnable ;
    input delayedInt ;
    input doneFCRAM ;
    output [15:0]address ;
    output [79:0]dataOut ;
    output write ;

    wire registersIn_0__15, registersIn_0__14, registersIn_0__13, 
         registersIn_0__12, registersIn_0__11, registersIn_0__10, 
         registersIn_0__9, registersIn_0__8, registersIn_0__7, registersIn_0__6, 
         registersIn_0__5, registersIn_0__4, registersIn_0__3, registersIn_0__2, 
         registersIn_0__1, registersIn_0__0, registersIn_1__15, 
         registersIn_1__14, registersIn_1__13, registersIn_1__12, 
         registersIn_1__11, registersIn_1__10, registersIn_1__9, 
         registersIn_1__8, registersIn_1__7, registersIn_1__6, registersIn_1__5, 
         registersIn_1__4, registersIn_1__3, registersIn_1__2, registersIn_1__1, 
         registersIn_1__0, registersIn_2__15, registersIn_2__14, 
         registersIn_2__13, registersIn_2__12, registersIn_2__11, 
         registersIn_2__10, registersIn_2__9, registersIn_2__8, registersIn_2__7, 
         registersIn_2__6, registersIn_2__5, registersIn_2__4, registersIn_2__3, 
         registersIn_2__2, registersIn_2__1, registersIn_2__0, registersIn_3__15, 
         registersIn_3__14, registersIn_3__13, registersIn_3__12, 
         registersIn_3__11, registersIn_3__10, registersIn_3__9, 
         registersIn_3__8, registersIn_3__7, registersIn_3__6, registersIn_3__5, 
         registersIn_3__4, registersIn_3__3, registersIn_3__2, registersIn_3__1, 
         registersIn_3__0, registersIn_4__15, registersIn_4__14, 
         registersIn_4__13, registersIn_4__12, registersIn_4__11, 
         registersIn_4__10, registersIn_4__9, registersIn_4__8, registersIn_4__7, 
         registersIn_4__6, registersIn_4__5, registersIn_4__4, registersIn_4__3, 
         registersIn_4__2, registersIn_4__1, registersIn_4__0, 
         registersOut_0__15, registersOut_0__14, registersOut_0__13, 
         registersOut_0__12, registersOut_0__11, registersOut_0__10, 
         registersOut_0__9, registersOut_0__8, registersOut_0__7, 
         registersOut_0__6, registersOut_0__5, registersOut_0__4, 
         registersOut_0__3, registersOut_0__2, registersOut_0__1, 
         registersOut_0__0, registersOut_1__15, registersOut_1__14, 
         registersOut_1__13, registersOut_1__12, registersOut_1__11, 
         registersOut_1__10, registersOut_1__9, registersOut_1__8, 
         registersOut_1__7, registersOut_1__6, registersOut_1__5, 
         registersOut_1__4, registersOut_1__3, registersOut_1__2, 
         registersOut_1__1, registersOut_1__0, registersOut_2__15, 
         registersOut_2__14, registersOut_2__13, registersOut_2__12, 
         registersOut_2__11, registersOut_2__10, registersOut_2__9, 
         registersOut_2__8, registersOut_2__7, registersOut_2__6, 
         registersOut_2__5, registersOut_2__4, registersOut_2__3, 
         registersOut_2__2, registersOut_2__1, registersOut_2__0, 
         registersOut_3__15, registersOut_3__14, registersOut_3__13, 
         registersOut_3__12, registersOut_3__11, registersOut_3__10, 
         registersOut_3__9, registersOut_3__8, registersOut_3__7, 
         registersOut_3__6, registersOut_3__5, registersOut_3__4, 
         registersOut_3__3, registersOut_3__2, registersOut_3__1, 
         registersOut_3__0, registersOut_4__15, registersOut_4__14, 
         registersOut_4__13, registersOut_4__12, registersOut_4__11, 
         registersOut_4__10, registersOut_4__9, registersOut_4__8, 
         registersOut_4__7, registersOut_4__6, registersOut_4__5, 
         registersOut_4__4, registersOut_4__3, registersOut_4__2, 
         registersOut_4__1, registersOut_4__0, moduloCounterSignal_2, 
         moduloCounterSignal_1, moduloCounterSignal_0, notClk, moduloRst, 
         enArray_0, enArray_1, enArray_2, enArray_3, enArray_4, zeros_15, PWR, 
         nx1021, nx1024, nx1027, nx1031, nx1122, nx1124, nx1128, nx1134, nx1136, 
         nx1138, nx1140, nx1142, nx1144, nx1146, nx1148, nx1150, nx1152, nx1154, 
         nx1156, nx1158, nx1160;



    Reg_16 loop1_0_fx (.D ({registersIn_0__15,registersIn_0__14,
           registersIn_0__13,registersIn_0__12,registersIn_0__11,
           registersIn_0__10,registersIn_0__9,registersIn_0__8,registersIn_0__7,
           registersIn_0__6,registersIn_0__5,registersIn_0__4,registersIn_0__3,
           registersIn_0__2,registersIn_0__1,registersIn_0__0}), .en (enArray_0)
           , .clk (clk), .rst (rst), .Q ({registersOut_0__15,registersOut_0__14,
           registersOut_0__13,registersOut_0__12,registersOut_0__11,
           registersOut_0__10,registersOut_0__9,registersOut_0__8,
           registersOut_0__7,registersOut_0__6,registersOut_0__5,
           registersOut_0__4,registersOut_0__3,registersOut_0__2,
           registersOut_0__1,registersOut_0__0})) ;
    Reg_16 loop1_1_fx (.D ({registersIn_1__15,registersIn_1__14,
           registersIn_1__13,registersIn_1__12,registersIn_1__11,
           registersIn_1__10,registersIn_1__9,registersIn_1__8,registersIn_1__7,
           registersIn_1__6,registersIn_1__5,registersIn_1__4,registersIn_1__3,
           registersIn_1__2,registersIn_1__1,registersIn_1__0}), .en (enArray_1)
           , .clk (clk), .rst (rst), .Q ({registersOut_1__15,registersOut_1__14,
           registersOut_1__13,registersOut_1__12,registersOut_1__11,
           registersOut_1__10,registersOut_1__9,registersOut_1__8,
           registersOut_1__7,registersOut_1__6,registersOut_1__5,
           registersOut_1__4,registersOut_1__3,registersOut_1__2,
           registersOut_1__1,registersOut_1__0})) ;
    Reg_16 loop1_2_fx (.D ({registersIn_2__15,registersIn_2__14,
           registersIn_2__13,registersIn_2__12,registersIn_2__11,
           registersIn_2__10,registersIn_2__9,registersIn_2__8,registersIn_2__7,
           registersIn_2__6,registersIn_2__5,registersIn_2__4,registersIn_2__3,
           registersIn_2__2,registersIn_2__1,registersIn_2__0}), .en (enArray_2)
           , .clk (clk), .rst (rst), .Q ({registersOut_2__15,registersOut_2__14,
           registersOut_2__13,registersOut_2__12,registersOut_2__11,
           registersOut_2__10,registersOut_2__9,registersOut_2__8,
           registersOut_2__7,registersOut_2__6,registersOut_2__5,
           registersOut_2__4,registersOut_2__3,registersOut_2__2,
           registersOut_2__1,registersOut_2__0})) ;
    Reg_16 loop1_3_fx (.D ({registersIn_3__15,registersIn_3__14,
           registersIn_3__13,registersIn_3__12,registersIn_3__11,
           registersIn_3__10,registersIn_3__9,registersIn_3__8,registersIn_3__7,
           registersIn_3__6,registersIn_3__5,registersIn_3__4,registersIn_3__3,
           registersIn_3__2,registersIn_3__1,registersIn_3__0}), .en (enArray_3)
           , .clk (clk), .rst (rst), .Q ({registersOut_3__15,registersOut_3__14,
           registersOut_3__13,registersOut_3__12,registersOut_3__11,
           registersOut_3__10,registersOut_3__9,registersOut_3__8,
           registersOut_3__7,registersOut_3__6,registersOut_3__5,
           registersOut_3__4,registersOut_3__3,registersOut_3__2,
           registersOut_3__1,registersOut_3__0})) ;
    Reg_16 loop1_4_fx (.D ({registersIn_4__15,registersIn_4__14,
           registersIn_4__13,registersIn_4__12,registersIn_4__11,
           registersIn_4__10,registersIn_4__9,registersIn_4__8,registersIn_4__7,
           registersIn_4__6,registersIn_4__5,registersIn_4__4,registersIn_4__3,
           registersIn_4__2,registersIn_4__1,registersIn_4__0}), .en (enArray_4)
           , .clk (clk), .rst (rst), .Q ({registersOut_4__15,registersOut_4__14,
           registersOut_4__13,registersOut_4__12,registersOut_4__11,
           registersOut_4__10,registersOut_4__9,registersOut_4__8,
           registersOut_4__7,registersOut_4__6,registersOut_4__5,
           registersOut_4__4,registersOut_4__3,registersOut_4__2,
           registersOut_4__1,registersOut_4__0})) ;
    ModuloCounter_3 ModuloCounter (.modulator ({PWR,zeros_15,PWR}), .en (
                    delayedInt), .rst (moduloRst), .clk (notClk), .currentCount (
                    {moduloCounterSignal_2,moduloCounterSignal_1,
                    moduloCounterSignal_0})) ;
    InverseMux_16 InverseMux (.dataIn ({dataIn[15],dataIn[14],dataIn[13],
                  dataIn[12],dataIn[11],dataIn[10],dataIn[9],dataIn[8],dataIn[7]
                  ,dataIn[6],dataIn[5],dataIn[4],dataIn[3],dataIn[2],dataIn[1],
                  dataIn[0]}), .sel ({nx1122,nx1124,nx1128}), .en (delayedInt), 
                  .rst (rst), .dataOut1 ({registersIn_0__15,registersIn_0__14,
                  registersIn_0__13,registersIn_0__12,registersIn_0__11,
                  registersIn_0__10,registersIn_0__9,registersIn_0__8,
                  registersIn_0__7,registersIn_0__6,registersIn_0__5,
                  registersIn_0__4,registersIn_0__3,registersIn_0__2,
                  registersIn_0__1,registersIn_0__0}), .dataOut2 ({
                  registersIn_1__15,registersIn_1__14,registersIn_1__13,
                  registersIn_1__12,registersIn_1__11,registersIn_1__10,
                  registersIn_1__9,registersIn_1__8,registersIn_1__7,
                  registersIn_1__6,registersIn_1__5,registersIn_1__4,
                  registersIn_1__3,registersIn_1__2,registersIn_1__1,
                  registersIn_1__0}), .dataOut3 ({registersIn_2__15,
                  registersIn_2__14,registersIn_2__13,registersIn_2__12,
                  registersIn_2__11,registersIn_2__10,registersIn_2__9,
                  registersIn_2__8,registersIn_2__7,registersIn_2__6,
                  registersIn_2__5,registersIn_2__4,registersIn_2__3,
                  registersIn_2__2,registersIn_2__1,registersIn_2__0}), .dataOut4 (
                  {registersIn_3__15,registersIn_3__14,registersIn_3__13,
                  registersIn_3__12,registersIn_3__11,registersIn_3__10,
                  registersIn_3__9,registersIn_3__8,registersIn_3__7,
                  registersIn_3__6,registersIn_3__5,registersIn_3__4,
                  registersIn_3__3,registersIn_3__2,registersIn_3__1,
                  registersIn_3__0}), .dataOut5 ({registersIn_4__15,
                  registersIn_4__14,registersIn_4__13,registersIn_4__12,
                  registersIn_4__11,registersIn_4__10,registersIn_4__9,
                  registersIn_4__8,registersIn_4__7,registersIn_4__6,
                  registersIn_4__5,registersIn_4__4,registersIn_4__3,
                  registersIn_4__2,registersIn_4__1,registersIn_4__0})) ;
    Counter2_16 MAR (.en (addressCounterEnable), .reset (rst), .clk (clk), .count (
                {address[15],address[14],address[13],address[12],address[11],
                address[10],address[9],address[8],address[7],address[6],
                address[5],address[4],address[3],address[2],address[1],
                address[0]})) ;
    fake_vcc ix851 (.Y (PWR)) ;
    fake_gnd ix849 (.Y (zeros_15)) ;
    inv01 ix1022 (.Y (nx1021), .A (moduloCounterSignal_1)) ;
    inv01 ix1025 (.Y (nx1024), .A (moduloCounterSignal_2)) ;
    inv02 ix1032 (.Y (nx1031), .A (moduloCounterSignal_0)) ;
    or02 ix209 (.Y (moduloRst), .A0 (rst), .A1 (doneFCRAM)) ;
    inv01 ix1036 (.Y (notClk), .A (clk)) ;
    latch lat_dataOut_0 (.Q (dataOut[0]), .D (registersOut_0__0), .CLK (nx1134)
          ) ;
    latch lat_dataOut_1 (.Q (dataOut[1]), .D (registersOut_0__1), .CLK (nx1134)
          ) ;
    latch lat_dataOut_2 (.Q (dataOut[2]), .D (registersOut_0__2), .CLK (nx1134)
          ) ;
    latch lat_dataOut_3 (.Q (dataOut[3]), .D (registersOut_0__3), .CLK (nx1134)
          ) ;
    latch lat_dataOut_4 (.Q (dataOut[4]), .D (registersOut_0__4), .CLK (nx1134)
          ) ;
    latch lat_dataOut_5 (.Q (dataOut[5]), .D (registersOut_0__5), .CLK (nx1134)
          ) ;
    latch lat_dataOut_6 (.Q (dataOut[6]), .D (registersOut_0__6), .CLK (nx1134)
          ) ;
    latch lat_dataOut_7 (.Q (dataOut[7]), .D (registersOut_0__7), .CLK (nx1136)
          ) ;
    latch lat_dataOut_8 (.Q (dataOut[8]), .D (registersOut_0__8), .CLK (nx1136)
          ) ;
    latch lat_dataOut_9 (.Q (dataOut[9]), .D (registersOut_0__9), .CLK (nx1136)
          ) ;
    latch lat_dataOut_10 (.Q (dataOut[10]), .D (registersOut_0__10), .CLK (
          nx1136)) ;
    latch lat_dataOut_11 (.Q (dataOut[11]), .D (registersOut_0__11), .CLK (
          nx1136)) ;
    latch lat_dataOut_12 (.Q (dataOut[12]), .D (registersOut_0__12), .CLK (
          nx1136)) ;
    latch lat_dataOut_13 (.Q (dataOut[13]), .D (registersOut_0__13), .CLK (
          nx1136)) ;
    latch lat_dataOut_14 (.Q (dataOut[14]), .D (registersOut_0__14), .CLK (
          nx1138)) ;
    latch lat_dataOut_15 (.Q (dataOut[15]), .D (registersOut_0__15), .CLK (
          nx1138)) ;
    latch lat_dataOut_16 (.Q (dataOut[16]), .D (registersOut_1__0), .CLK (nx1138
          )) ;
    latch lat_dataOut_17 (.Q (dataOut[17]), .D (registersOut_1__1), .CLK (nx1138
          )) ;
    latch lat_dataOut_18 (.Q (dataOut[18]), .D (registersOut_1__2), .CLK (nx1138
          )) ;
    latch lat_dataOut_19 (.Q (dataOut[19]), .D (registersOut_1__3), .CLK (nx1138
          )) ;
    latch lat_dataOut_20 (.Q (dataOut[20]), .D (registersOut_1__4), .CLK (nx1138
          )) ;
    latch lat_dataOut_21 (.Q (dataOut[21]), .D (registersOut_1__5), .CLK (nx1140
          )) ;
    latch lat_dataOut_22 (.Q (dataOut[22]), .D (registersOut_1__6), .CLK (nx1140
          )) ;
    latch lat_dataOut_23 (.Q (dataOut[23]), .D (registersOut_1__7), .CLK (nx1140
          )) ;
    latch lat_dataOut_24 (.Q (dataOut[24]), .D (registersOut_1__8), .CLK (nx1140
          )) ;
    latch lat_dataOut_25 (.Q (dataOut[25]), .D (registersOut_1__9), .CLK (nx1140
          )) ;
    latch lat_dataOut_26 (.Q (dataOut[26]), .D (registersOut_1__10), .CLK (
          nx1140)) ;
    latch lat_dataOut_27 (.Q (dataOut[27]), .D (registersOut_1__11), .CLK (
          nx1140)) ;
    latch lat_dataOut_28 (.Q (dataOut[28]), .D (registersOut_1__12), .CLK (
          nx1142)) ;
    latch lat_dataOut_29 (.Q (dataOut[29]), .D (registersOut_1__13), .CLK (
          nx1142)) ;
    latch lat_dataOut_30 (.Q (dataOut[30]), .D (registersOut_1__14), .CLK (
          nx1142)) ;
    latch lat_dataOut_31 (.Q (dataOut[31]), .D (registersOut_1__15), .CLK (
          nx1142)) ;
    latch lat_dataOut_32 (.Q (dataOut[32]), .D (registersOut_2__0), .CLK (nx1142
          )) ;
    latch lat_dataOut_33 (.Q (dataOut[33]), .D (registersOut_2__1), .CLK (nx1142
          )) ;
    latch lat_dataOut_34 (.Q (dataOut[34]), .D (registersOut_2__2), .CLK (nx1142
          )) ;
    latch lat_dataOut_35 (.Q (dataOut[35]), .D (registersOut_2__3), .CLK (nx1144
          )) ;
    latch lat_dataOut_36 (.Q (dataOut[36]), .D (registersOut_2__4), .CLK (nx1144
          )) ;
    latch lat_dataOut_37 (.Q (dataOut[37]), .D (registersOut_2__5), .CLK (nx1144
          )) ;
    latch lat_dataOut_38 (.Q (dataOut[38]), .D (registersOut_2__6), .CLK (nx1144
          )) ;
    latch lat_dataOut_39 (.Q (dataOut[39]), .D (registersOut_2__7), .CLK (nx1144
          )) ;
    latch lat_dataOut_40 (.Q (dataOut[40]), .D (registersOut_2__8), .CLK (nx1144
          )) ;
    latch lat_dataOut_41 (.Q (dataOut[41]), .D (registersOut_2__9), .CLK (nx1144
          )) ;
    latch lat_dataOut_42 (.Q (dataOut[42]), .D (registersOut_2__10), .CLK (
          nx1146)) ;
    latch lat_dataOut_43 (.Q (dataOut[43]), .D (registersOut_2__11), .CLK (
          nx1146)) ;
    latch lat_dataOut_44 (.Q (dataOut[44]), .D (registersOut_2__12), .CLK (
          nx1146)) ;
    latch lat_dataOut_45 (.Q (dataOut[45]), .D (registersOut_2__13), .CLK (
          nx1146)) ;
    latch lat_dataOut_46 (.Q (dataOut[46]), .D (registersOut_2__14), .CLK (
          nx1146)) ;
    latch lat_dataOut_47 (.Q (dataOut[47]), .D (registersOut_2__15), .CLK (
          nx1146)) ;
    latch lat_dataOut_48 (.Q (dataOut[48]), .D (registersOut_3__0), .CLK (nx1146
          )) ;
    latch lat_dataOut_49 (.Q (dataOut[49]), .D (registersOut_3__1), .CLK (nx1148
          )) ;
    latch lat_dataOut_50 (.Q (dataOut[50]), .D (registersOut_3__2), .CLK (nx1148
          )) ;
    latch lat_dataOut_51 (.Q (dataOut[51]), .D (registersOut_3__3), .CLK (nx1148
          )) ;
    latch lat_dataOut_52 (.Q (dataOut[52]), .D (registersOut_3__4), .CLK (nx1148
          )) ;
    latch lat_dataOut_53 (.Q (dataOut[53]), .D (registersOut_3__5), .CLK (nx1148
          )) ;
    latch lat_dataOut_54 (.Q (dataOut[54]), .D (registersOut_3__6), .CLK (nx1148
          )) ;
    latch lat_dataOut_55 (.Q (dataOut[55]), .D (registersOut_3__7), .CLK (nx1148
          )) ;
    latch lat_dataOut_56 (.Q (dataOut[56]), .D (registersOut_3__8), .CLK (nx1150
          )) ;
    latch lat_dataOut_57 (.Q (dataOut[57]), .D (registersOut_3__9), .CLK (nx1150
          )) ;
    latch lat_dataOut_58 (.Q (dataOut[58]), .D (registersOut_3__10), .CLK (
          nx1150)) ;
    latch lat_dataOut_59 (.Q (dataOut[59]), .D (registersOut_3__11), .CLK (
          nx1150)) ;
    latch lat_dataOut_60 (.Q (dataOut[60]), .D (registersOut_3__12), .CLK (
          nx1150)) ;
    latch lat_dataOut_61 (.Q (dataOut[61]), .D (registersOut_3__13), .CLK (
          nx1150)) ;
    latch lat_dataOut_62 (.Q (dataOut[62]), .D (registersOut_3__14), .CLK (
          nx1150)) ;
    latch lat_dataOut_63 (.Q (dataOut[63]), .D (registersOut_3__15), .CLK (
          nx1152)) ;
    latch lat_dataOut_64 (.Q (dataOut[64]), .D (registersOut_4__0), .CLK (nx1152
          )) ;
    latch lat_dataOut_65 (.Q (dataOut[65]), .D (registersOut_4__1), .CLK (nx1152
          )) ;
    latch lat_dataOut_66 (.Q (dataOut[66]), .D (registersOut_4__2), .CLK (nx1152
          )) ;
    latch lat_dataOut_67 (.Q (dataOut[67]), .D (registersOut_4__3), .CLK (nx1152
          )) ;
    latch lat_dataOut_68 (.Q (dataOut[68]), .D (registersOut_4__4), .CLK (nx1152
          )) ;
    latch lat_dataOut_69 (.Q (dataOut[69]), .D (registersOut_4__5), .CLK (nx1152
          )) ;
    latch lat_dataOut_70 (.Q (dataOut[70]), .D (registersOut_4__6), .CLK (nx1154
          )) ;
    latch lat_dataOut_71 (.Q (dataOut[71]), .D (registersOut_4__7), .CLK (nx1154
          )) ;
    latch lat_dataOut_72 (.Q (dataOut[72]), .D (registersOut_4__8), .CLK (nx1154
          )) ;
    latch lat_dataOut_73 (.Q (dataOut[73]), .D (registersOut_4__9), .CLK (nx1154
          )) ;
    latch lat_dataOut_74 (.Q (dataOut[74]), .D (registersOut_4__10), .CLK (
          nx1154)) ;
    latch lat_dataOut_75 (.Q (dataOut[75]), .D (registersOut_4__11), .CLK (
          nx1154)) ;
    latch lat_dataOut_76 (.Q (dataOut[76]), .D (registersOut_4__12), .CLK (
          nx1154)) ;
    latch lat_dataOut_77 (.Q (dataOut[77]), .D (registersOut_4__13), .CLK (
          nx1156)) ;
    latch lat_dataOut_78 (.Q (dataOut[78]), .D (registersOut_4__14), .CLK (
          nx1156)) ;
    latch lat_dataOut_79 (.Q (dataOut[79]), .D (registersOut_4__15), .CLK (
          nx1156)) ;
    inv02 ix1121 (.Y (nx1122), .A (nx1024)) ;
    inv02 ix1123 (.Y (nx1124), .A (nx1021)) ;
    inv02 ix1127 (.Y (nx1128), .A (nx1031)) ;
    inv02 ix1133 (.Y (nx1134), .A (nx1158)) ;
    inv02 ix1135 (.Y (nx1136), .A (nx1158)) ;
    inv02 ix1137 (.Y (nx1138), .A (nx1158)) ;
    inv02 ix1139 (.Y (nx1140), .A (nx1158)) ;
    inv02 ix1141 (.Y (nx1142), .A (nx1158)) ;
    inv02 ix1143 (.Y (nx1144), .A (nx1158)) ;
    inv02 ix1145 (.Y (nx1146), .A (nx1158)) ;
    inv02 ix1147 (.Y (nx1148), .A (nx1160)) ;
    inv02 ix1149 (.Y (nx1150), .A (nx1160)) ;
    inv02 ix1151 (.Y (nx1152), .A (nx1160)) ;
    inv02 ix1153 (.Y (nx1154), .A (nx1160)) ;
    inv02 ix1155 (.Y (nx1156), .A (nx1160)) ;
    inv02 ix1157 (.Y (nx1158), .A (write)) ;
    inv02 ix1159 (.Y (nx1160), .A (write)) ;
    nor03_2x ix45 (.Y (write), .A0 (nx1024), .A1 (moduloCounterSignal_1), .A2 (
             nx1031)) ;
    and03 ix39 (.Y (enArray_4), .A0 (moduloCounterSignal_2), .A1 (nx1021), .A2 (
          nx1031)) ;
    nor02ii ix31 (.Y (enArray_3), .A0 (nx1027), .A1 (nx1024)) ;
    or02 ix1028 (.Y (nx1027), .A0 (nx1021), .A1 (nx1031)) ;
    and03 ix25 (.Y (enArray_2), .A0 (nx1024), .A1 (moduloCounterSignal_1), .A2 (
          nx1031)) ;
    and03 ix17 (.Y (enArray_1), .A0 (nx1024), .A1 (nx1021), .A2 (
          moduloCounterSignal_0)) ;
    and03 ix9 (.Y (enArray_0), .A0 (nx1024), .A1 (nx1021), .A2 (nx1031)) ;
endmodule


module Counter2_16 ( en, reset, clk, count ) ;

    input en ;
    input reset ;
    input clk ;
    output [15:0]count ;

    wire addedOne_15, addedOne_14, addedOne_13, addedOne_12, addedOne_11, 
         addedOne_10, addedOne_9, addedOne_8, addedOne_7, addedOne_6, addedOne_5, 
         addedOne_4, addedOne_3, addedOne_2, addedOne_1, addedOne_0, finalReset, 
         oneSignal_15, PWR;
    wire [0:0] \$dummy ;




    Reg_16 counterReg (.D ({addedOne_15,addedOne_14,addedOne_13,addedOne_12,
           addedOne_11,addedOne_10,addedOne_9,addedOne_8,addedOne_7,addedOne_6,
           addedOne_5,addedOne_4,addedOne_3,addedOne_2,addedOne_1,addedOne_0}), 
           .en (en), .clk (clk), .rst (finalReset), .Q ({count[15],count[14],
           count[13],count[12],count[11],count[10],count[9],count[8],count[7],
           count[6],count[5],count[4],count[3],count[2],count[1],count[0]})) ;
    NBitAdder_16 nextCount (.a ({count[15],count[14],count[13],count[12],
                 count[11],count[10],count[9],count[8],count[7],count[6],
                 count[5],count[4],count[3],count[2],count[1],count[0]}), .b ({
                 oneSignal_15,oneSignal_15,oneSignal_15,oneSignal_15,
                 oneSignal_15,oneSignal_15,oneSignal_15,oneSignal_15,
                 oneSignal_15,oneSignal_15,oneSignal_15,oneSignal_15,
                 oneSignal_15,oneSignal_15,oneSignal_15,oneSignal_15}), .carryIn (
                 PWR), .sum ({addedOne_15,addedOne_14,addedOne_13,addedOne_12,
                 addedOne_11,addedOne_10,addedOne_9,addedOne_8,addedOne_7,
                 addedOne_6,addedOne_5,addedOne_4,addedOne_3,addedOne_2,
                 addedOne_1,addedOne_0}), .carryOut (\$dummy [0])) ;
    fake_vcc ix43 (.Y (PWR)) ;
    fake_gnd ix41 (.Y (oneSignal_15)) ;
    and02 ix1 (.Y (finalReset), .A0 (reset), .A1 (clk)) ;
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


module InverseMux_16 ( dataIn, sel, en, rst, dataOut1, dataOut2, dataOut3, 
                       dataOut4, dataOut5 ) ;

    input [15:0]dataIn ;
    input [2:0]sel ;
    input en ;
    input rst ;
    output [15:0]dataOut1 ;
    output [15:0]dataOut2 ;
    output [15:0]dataOut3 ;
    output [15:0]dataOut4 ;
    output [15:0]dataOut5 ;

    wire nx48, nx92, nx134, nx178, nx1142, nx1144, nx1146, nx1148, nx1196, 
         nx1198, nx1220, nx1296, nx1304, nx1312, nx1324, nx1326, nx1328, nx1330, 
         nx1332, nx1334, nx1336, nx1338, nx1340, nx1342, nx1344, nx1346, nx1348, 
         nx1350, nx1352, nx1354, nx1356, nx1358;



    and02 ix1143 (.Y (nx1142), .A0 (nx1144), .A1 (rst)) ;
    nand04 ix1145 (.Y (nx1144), .A0 (nx1146), .A1 (nx1148), .A2 (sel[2]), .A3 (
           en)) ;
    inv01 ix1147 (.Y (nx1146), .A (sel[1])) ;
    inv01 ix1149 (.Y (nx1148), .A (sel[0])) ;
    and02 ix1197 (.Y (nx1196), .A0 (nx1198), .A1 (rst)) ;
    nand03 ix1199 (.Y (nx1198), .A0 (nx48), .A1 (sel[1]), .A2 (sel[0])) ;
    nor02ii ix49 (.Y (nx48), .A0 (sel[2]), .A1 (en)) ;
    inv01 ix1221 (.Y (nx1220), .A (rst)) ;
    nor02_2x ix179 (.Y (nx178), .A0 (sel[1]), .A1 (sel[0])) ;
    and02 ix15 (.Y (dataOut5[0]), .A0 (dataIn[0]), .A1 (nx1324)) ;
    and02 ix17 (.Y (dataOut5[1]), .A0 (dataIn[1]), .A1 (nx1324)) ;
    and02 ix19 (.Y (dataOut5[2]), .A0 (dataIn[2]), .A1 (nx1324)) ;
    and02 ix21 (.Y (dataOut5[3]), .A0 (dataIn[3]), .A1 (nx1324)) ;
    and02 ix23 (.Y (dataOut5[4]), .A0 (dataIn[4]), .A1 (nx1324)) ;
    and02 ix25 (.Y (dataOut5[5]), .A0 (dataIn[5]), .A1 (nx1324)) ;
    and02 ix27 (.Y (dataOut5[6]), .A0 (dataIn[6]), .A1 (nx1324)) ;
    and02 ix29 (.Y (dataOut5[7]), .A0 (dataIn[7]), .A1 (nx1326)) ;
    and02 ix31 (.Y (dataOut5[8]), .A0 (dataIn[8]), .A1 (nx1326)) ;
    and02 ix33 (.Y (dataOut5[9]), .A0 (dataIn[9]), .A1 (nx1326)) ;
    and02 ix35 (.Y (dataOut5[10]), .A0 (dataIn[10]), .A1 (nx1326)) ;
    and02 ix37 (.Y (dataOut5[11]), .A0 (dataIn[11]), .A1 (nx1326)) ;
    and02 ix39 (.Y (dataOut5[12]), .A0 (dataIn[12]), .A1 (nx1326)) ;
    and02 ix41 (.Y (dataOut5[13]), .A0 (dataIn[13]), .A1 (nx1326)) ;
    and02 ix43 (.Y (dataOut5[14]), .A0 (dataIn[14]), .A1 (nx1328)) ;
    and02 ix45 (.Y (dataOut5[15]), .A0 (dataIn[15]), .A1 (nx1328)) ;
    and02 ix59 (.Y (dataOut4[0]), .A0 (dataIn[0]), .A1 (nx1330)) ;
    and02 ix61 (.Y (dataOut4[1]), .A0 (dataIn[1]), .A1 (nx1330)) ;
    and02 ix63 (.Y (dataOut4[2]), .A0 (dataIn[2]), .A1 (nx1330)) ;
    and02 ix65 (.Y (dataOut4[3]), .A0 (dataIn[3]), .A1 (nx1330)) ;
    and02 ix67 (.Y (dataOut4[4]), .A0 (dataIn[4]), .A1 (nx1330)) ;
    and02 ix69 (.Y (dataOut4[5]), .A0 (dataIn[5]), .A1 (nx1330)) ;
    and02 ix71 (.Y (dataOut4[6]), .A0 (dataIn[6]), .A1 (nx1330)) ;
    and02 ix73 (.Y (dataOut4[7]), .A0 (dataIn[7]), .A1 (nx1332)) ;
    and02 ix75 (.Y (dataOut4[8]), .A0 (dataIn[8]), .A1 (nx1332)) ;
    and02 ix77 (.Y (dataOut4[9]), .A0 (dataIn[9]), .A1 (nx1332)) ;
    and02 ix79 (.Y (dataOut4[10]), .A0 (dataIn[10]), .A1 (nx1332)) ;
    and02 ix81 (.Y (dataOut4[11]), .A0 (dataIn[11]), .A1 (nx1332)) ;
    and02 ix83 (.Y (dataOut4[12]), .A0 (dataIn[12]), .A1 (nx1332)) ;
    and02 ix85 (.Y (dataOut4[13]), .A0 (dataIn[13]), .A1 (nx1332)) ;
    and02 ix87 (.Y (dataOut4[14]), .A0 (dataIn[14]), .A1 (nx1334)) ;
    and02 ix89 (.Y (dataOut4[15]), .A0 (dataIn[15]), .A1 (nx1334)) ;
    and02 ix101 (.Y (dataOut3[0]), .A0 (dataIn[0]), .A1 (nx1338)) ;
    ao21 ix1218 (.Y (nx1296), .A0 (nx48), .A1 (nx92), .B0 (nx1220)) ;
    nor02ii ix93 (.Y (nx92), .A0 (sel[0]), .A1 (sel[1])) ;
    and02 ix103 (.Y (dataOut3[1]), .A0 (dataIn[1]), .A1 (nx1338)) ;
    and02 ix105 (.Y (dataOut3[2]), .A0 (dataIn[2]), .A1 (nx1338)) ;
    and02 ix107 (.Y (dataOut3[3]), .A0 (dataIn[3]), .A1 (nx1338)) ;
    and02 ix109 (.Y (dataOut3[4]), .A0 (dataIn[4]), .A1 (nx1338)) ;
    and02 ix111 (.Y (dataOut3[5]), .A0 (dataIn[5]), .A1 (nx1338)) ;
    and02 ix113 (.Y (dataOut3[6]), .A0 (dataIn[6]), .A1 (nx1338)) ;
    and02 ix115 (.Y (dataOut3[7]), .A0 (dataIn[7]), .A1 (nx1340)) ;
    and02 ix117 (.Y (dataOut3[8]), .A0 (dataIn[8]), .A1 (nx1340)) ;
    and02 ix119 (.Y (dataOut3[9]), .A0 (dataIn[9]), .A1 (nx1340)) ;
    and02 ix121 (.Y (dataOut3[10]), .A0 (dataIn[10]), .A1 (nx1340)) ;
    and02 ix123 (.Y (dataOut3[11]), .A0 (dataIn[11]), .A1 (nx1340)) ;
    and02 ix125 (.Y (dataOut3[12]), .A0 (dataIn[12]), .A1 (nx1340)) ;
    and02 ix127 (.Y (dataOut3[13]), .A0 (dataIn[13]), .A1 (nx1340)) ;
    and02 ix129 (.Y (dataOut3[14]), .A0 (dataIn[14]), .A1 (nx1342)) ;
    and02 ix131 (.Y (dataOut3[15]), .A0 (dataIn[15]), .A1 (nx1342)) ;
    and02 ix143 (.Y (dataOut2[0]), .A0 (dataIn[0]), .A1 (nx1346)) ;
    ao21 ix1239 (.Y (nx1304), .A0 (nx48), .A1 (nx134), .B0 (nx1220)) ;
    nor02ii ix135 (.Y (nx134), .A0 (sel[1]), .A1 (sel[0])) ;
    and02 ix145 (.Y (dataOut2[1]), .A0 (dataIn[1]), .A1 (nx1346)) ;
    and02 ix147 (.Y (dataOut2[2]), .A0 (dataIn[2]), .A1 (nx1346)) ;
    and02 ix149 (.Y (dataOut2[3]), .A0 (dataIn[3]), .A1 (nx1346)) ;
    and02 ix151 (.Y (dataOut2[4]), .A0 (dataIn[4]), .A1 (nx1346)) ;
    and02 ix153 (.Y (dataOut2[5]), .A0 (dataIn[5]), .A1 (nx1346)) ;
    and02 ix155 (.Y (dataOut2[6]), .A0 (dataIn[6]), .A1 (nx1346)) ;
    and02 ix157 (.Y (dataOut2[7]), .A0 (dataIn[7]), .A1 (nx1348)) ;
    and02 ix159 (.Y (dataOut2[8]), .A0 (dataIn[8]), .A1 (nx1348)) ;
    and02 ix161 (.Y (dataOut2[9]), .A0 (dataIn[9]), .A1 (nx1348)) ;
    and02 ix163 (.Y (dataOut2[10]), .A0 (dataIn[10]), .A1 (nx1348)) ;
    and02 ix165 (.Y (dataOut2[11]), .A0 (dataIn[11]), .A1 (nx1348)) ;
    and02 ix167 (.Y (dataOut2[12]), .A0 (dataIn[12]), .A1 (nx1348)) ;
    and02 ix169 (.Y (dataOut2[13]), .A0 (dataIn[13]), .A1 (nx1348)) ;
    and02 ix171 (.Y (dataOut2[14]), .A0 (dataIn[14]), .A1 (nx1350)) ;
    and02 ix173 (.Y (dataOut2[15]), .A0 (dataIn[15]), .A1 (nx1350)) ;
    and02 ix187 (.Y (dataOut1[0]), .A0 (dataIn[0]), .A1 (nx1354)) ;
    ao21 ix1258 (.Y (nx1312), .A0 (nx48), .A1 (nx178), .B0 (nx1220)) ;
    and02 ix189 (.Y (dataOut1[1]), .A0 (dataIn[1]), .A1 (nx1354)) ;
    and02 ix191 (.Y (dataOut1[2]), .A0 (dataIn[2]), .A1 (nx1354)) ;
    and02 ix193 (.Y (dataOut1[3]), .A0 (dataIn[3]), .A1 (nx1354)) ;
    and02 ix195 (.Y (dataOut1[4]), .A0 (dataIn[4]), .A1 (nx1354)) ;
    and02 ix197 (.Y (dataOut1[5]), .A0 (dataIn[5]), .A1 (nx1354)) ;
    and02 ix199 (.Y (dataOut1[6]), .A0 (dataIn[6]), .A1 (nx1354)) ;
    and02 ix201 (.Y (dataOut1[7]), .A0 (dataIn[7]), .A1 (nx1356)) ;
    and02 ix203 (.Y (dataOut1[8]), .A0 (dataIn[8]), .A1 (nx1356)) ;
    and02 ix205 (.Y (dataOut1[9]), .A0 (dataIn[9]), .A1 (nx1356)) ;
    and02 ix207 (.Y (dataOut1[10]), .A0 (dataIn[10]), .A1 (nx1356)) ;
    and02 ix209 (.Y (dataOut1[11]), .A0 (dataIn[11]), .A1 (nx1356)) ;
    and02 ix211 (.Y (dataOut1[12]), .A0 (dataIn[12]), .A1 (nx1356)) ;
    and02 ix213 (.Y (dataOut1[13]), .A0 (dataIn[13]), .A1 (nx1356)) ;
    and02 ix215 (.Y (dataOut1[14]), .A0 (dataIn[14]), .A1 (nx1358)) ;
    and02 ix217 (.Y (dataOut1[15]), .A0 (dataIn[15]), .A1 (nx1358)) ;
    inv02 ix1323 (.Y (nx1324), .A (nx1142)) ;
    inv02 ix1325 (.Y (nx1326), .A (nx1142)) ;
    inv02 ix1327 (.Y (nx1328), .A (nx1142)) ;
    inv02 ix1329 (.Y (nx1330), .A (nx1196)) ;
    inv02 ix1331 (.Y (nx1332), .A (nx1196)) ;
    inv02 ix1333 (.Y (nx1334), .A (nx1196)) ;
    inv01 ix1335 (.Y (nx1336), .A (nx1296)) ;
    inv02 ix1337 (.Y (nx1338), .A (nx1336)) ;
    inv02 ix1339 (.Y (nx1340), .A (nx1336)) ;
    inv02 ix1341 (.Y (nx1342), .A (nx1336)) ;
    inv01 ix1343 (.Y (nx1344), .A (nx1304)) ;
    inv02 ix1345 (.Y (nx1346), .A (nx1344)) ;
    inv02 ix1347 (.Y (nx1348), .A (nx1344)) ;
    inv02 ix1349 (.Y (nx1350), .A (nx1344)) ;
    inv01 ix1351 (.Y (nx1352), .A (nx1312)) ;
    inv02 ix1353 (.Y (nx1354), .A (nx1352)) ;
    inv02 ix1355 (.Y (nx1356), .A (nx1352)) ;
    inv02 ix1357 (.Y (nx1358), .A (nx1352)) ;
endmodule


module ModuloCounter_3 ( modulator, en, rst, clk, currentCount ) ;

    input [2:0]modulator ;
    input en ;
    input rst ;
    input clk ;
    output [2:0]currentCount ;

    wire nextCount_2, nextCount_1, nextCount_0, muxedCount_2, muxedCount_1, 
         muxedCount_0, sel, zeros_2, PWR, nx36, nx38, nx40;
    wire [0:0] \$dummy ;




    Reg_3 counterReg (.D ({muxedCount_2,muxedCount_1,muxedCount_0}), .en (en), .clk (
          clk), .rst (rst), .Q ({currentCount[2],currentCount[1],currentCount[0]
          })) ;
    NBitAdder_3 nBitAdder (.a ({currentCount[2],currentCount[1],currentCount[0]}
                ), .b ({zeros_2,zeros_2,zeros_2}), .carryIn (PWR), .sum ({
                nextCount_2,nextCount_1,nextCount_0}), .carryOut (\$dummy [0])
                ) ;
    Mux2_3 Mux2 (.A ({nextCount_2,nextCount_1,nextCount_0}), .B ({zeros_2,
           zeros_2,zeros_2}), .S (sel), .C ({muxedCount_2,muxedCount_1,
           muxedCount_0})) ;
    fake_vcc ix26 (.Y (PWR)) ;
    fake_gnd ix24 (.Y (zeros_2)) ;
    and03 ix15 (.Y (sel), .A0 (nx36), .A1 (nx38), .A2 (nx40)) ;
    xnor2 ix37 (.Y (nx36), .A0 (currentCount[1]), .A1 (modulator[1])) ;
    xnor2 ix39 (.Y (nx38), .A0 (currentCount[2]), .A1 (modulator[2])) ;
    xnor2 ix41 (.Y (nx40), .A0 (currentCount[0]), .A1 (modulator[0])) ;
endmodule


module Mux2_3 ( A, B, S, C ) ;

    input [2:0]A ;
    input [2:0]B ;
    input S ;
    output [2:0]C ;




    mux21_ni ix7 (.Y (C[0]), .A0 (A[0]), .A1 (B[0]), .S0 (S)) ;
    mux21_ni ix15 (.Y (C[1]), .A0 (A[1]), .A1 (B[1]), .S0 (S)) ;
    mux21_ni ix23 (.Y (C[2]), .A0 (A[2]), .A1 (B[2]), .S0 (S)) ;
endmodule


module NBitAdder_3 ( a, b, carryIn, sum, carryOut ) ;

    input [2:0]a ;
    input [2:0]b ;
    input carryIn ;
    output [2:0]sum ;
    output carryOut ;

    wire temp_1, temp_0;



    FullAdder f0 (.a (a[0]), .b (b[0]), .cin (carryIn), .s (sum[0]), .cout (
              temp_0)) ;
    FullAdder loop1_1_fx (.a (a[1]), .b (b[1]), .cin (temp_0), .s (sum[1]), .cout (
              temp_1)) ;
    FullAdder loop1_2_fx (.a (a[2]), .b (b[2]), .cin (temp_1), .s (sum[2]), .cout (
              carryOut)) ;
endmodule


module Reg_3 ( D, en, clk, rst, Q ) ;

    input [2:0]D ;
    input en ;
    input clk ;
    input rst ;
    output [2:0]Q ;

    wire nx72, nx82, nx92;
    wire [2:0] \$dummy ;




    dffr reg_Q_0 (.Q (Q[0]), .QB (\$dummy [0]), .D (nx72), .CLK (clk), .R (rst)
         ) ;
    mux21_ni ix73 (.Y (nx72), .A0 (Q[0]), .A1 (D[0]), .S0 (en)) ;
    dffr reg_Q_1 (.Q (Q[1]), .QB (\$dummy [1]), .D (nx82), .CLK (clk), .R (rst)
         ) ;
    mux21_ni ix83 (.Y (nx82), .A0 (Q[1]), .A1 (D[1]), .S0 (en)) ;
    dffr reg_Q_2 (.Q (Q[2]), .QB (\$dummy [2]), .D (nx92), .CLK (clk), .R (rst)
         ) ;
    mux21_ni ix93 (.Y (nx92), .A0 (Q[2]), .A1 (D[2]), .S0 (en)) ;
endmodule


module DMACNN ( dataIn, clk, enableCNNCounter, enableCNNRegister, rst, dataOut, 
                addressOut ) ;

    input [15:0]dataIn ;
    input clk ;
    input enableCNNCounter ;
    input enableCNNRegister ;
    input rst ;
    output [15:0]dataOut ;
    output [12:0]addressOut ;




    Counter2_13 addressCounter (.en (enableCNNCounter), .reset (rst), .clk (clk)
                , .count ({addressOut[12],addressOut[11],addressOut[10],
                addressOut[9],addressOut[8],addressOut[7],addressOut[6],
                addressOut[5],addressOut[4],addressOut[3],addressOut[2],
                addressOut[1],addressOut[0]})) ;
    Reg_16 MyReg (.D ({dataIn[15],dataIn[14],dataIn[13],dataIn[12],dataIn[11],
           dataIn[10],dataIn[9],dataIn[8],dataIn[7],dataIn[6],dataIn[5],
           dataIn[4],dataIn[3],dataIn[2],dataIn[1],dataIn[0]}), .en (
           enableCNNRegister), .clk (clk), .rst (rst), .Q ({dataOut[15],
           dataOut[14],dataOut[13],dataOut[12],dataOut[11],dataOut[10],
           dataOut[9],dataOut[8],dataOut[7],dataOut[6],dataOut[5],dataOut[4],
           dataOut[3],dataOut[2],dataOut[1],dataOut[0]})) ;
endmodule


module Counter2_13 ( en, reset, clk, count ) ;

    input en ;
    input reset ;
    input clk ;
    output [12:0]count ;

    wire addedOne_12, addedOne_11, addedOne_10, addedOne_9, addedOne_8, 
         addedOne_7, addedOne_6, addedOne_5, addedOne_4, addedOne_3, addedOne_2, 
         addedOne_1, addedOne_0, finalReset, oneSignal_12, PWR;
    wire [0:0] \$dummy ;




    Reg_13 counterReg (.D ({addedOne_12,addedOne_11,addedOne_10,addedOne_9,
           addedOne_8,addedOne_7,addedOne_6,addedOne_5,addedOne_4,addedOne_3,
           addedOne_2,addedOne_1,addedOne_0}), .en (en), .clk (clk), .rst (
           finalReset), .Q ({count[12],count[11],count[10],count[9],count[8],
           count[7],count[6],count[5],count[4],count[3],count[2],count[1],
           count[0]})) ;
    NBitAdder_13 nextCount (.a ({count[12],count[11],count[10],count[9],count[8]
                 ,count[7],count[6],count[5],count[4],count[3],count[2],count[1]
                 ,count[0]}), .b ({oneSignal_12,oneSignal_12,oneSignal_12,
                 oneSignal_12,oneSignal_12,oneSignal_12,oneSignal_12,
                 oneSignal_12,oneSignal_12,oneSignal_12,oneSignal_12,
                 oneSignal_12,oneSignal_12}), .carryIn (PWR), .sum ({addedOne_12
                 ,addedOne_11,addedOne_10,addedOne_9,addedOne_8,addedOne_7,
                 addedOne_6,addedOne_5,addedOne_4,addedOne_3,addedOne_2,
                 addedOne_1,addedOne_0}), .carryOut (\$dummy [0])) ;
    fake_vcc ix37 (.Y (PWR)) ;
    fake_gnd ix35 (.Y (oneSignal_12)) ;
    and02 ix1 (.Y (finalReset), .A0 (reset), .A1 (clk)) ;
endmodule


module DMAImage ( dataIn, addressIn, clk, enableImageCounter, 
                  enableImageRegister, rst, intrDelayed, dataOut, addressOut ) ;

    input [7:0]dataIn ;
    input [9:0]addressIn ;
    input clk ;
    input enableImageCounter ;
    input enableImageRegister ;
    input rst ;
    input intrDelayed ;
    output [15:0]dataOut ;
    output [12:0]addressOut ;

    wire addressCounterIn_12;



    UpCounterSyncLoad_13 addressCounter (.loadData ({addressCounterIn_12,
                         addressCounterIn_12,addressCounterIn_12,addressIn[9],
                         addressIn[8],addressIn[7],addressIn[6],addressIn[5],
                         addressIn[4],addressIn[3],addressIn[2],addressIn[1],
                         addressIn[0]}), .en (enableImageCounter), .load (
                         intrDelayed), .rst (rst), .clk (clk), .counterOutput ({
                         addressOut[12],addressOut[11],addressOut[10],
                         addressOut[9],addressOut[8],addressOut[7],addressOut[6]
                         ,addressOut[5],addressOut[4],addressOut[3],
                         addressOut[2],addressOut[1],addressOut[0]})) ;
    Reg_16 MyReg (.D ({dataIn[7],dataIn[6],dataIn[5],dataIn[4],dataIn[3],
           dataIn[2],dataIn[1],dataIn[0],addressCounterIn_12,addressCounterIn_12
           ,addressCounterIn_12,addressCounterIn_12,addressCounterIn_12,
           addressCounterIn_12,addressCounterIn_12,addressCounterIn_12}), .en (
           enableImageRegister), .clk (clk), .rst (rst), .Q ({dataOut[15],
           dataOut[14],dataOut[13],dataOut[12],dataOut[11],dataOut[10],
           dataOut[9],dataOut[8],dataOut[7],dataOut[6],dataOut[5],dataOut[4],
           dataOut[3],dataOut[2],dataOut[1],dataOut[0]})) ;
    fake_gnd ix53 (.Y (addressCounterIn_12)) ;
endmodule


module UpCounterSyncLoad_13 ( loadData, en, load, rst, clk, counterOutput ) ;

    input [12:0]loadData ;
    input en ;
    input load ;
    input rst ;
    input clk ;
    output [12:0]counterOutput ;

    wire counterInput_12, counterInput_11, counterInput_10, counterInput_9, 
         counterInput_8, counterInput_7, counterInput_6, counterInput_5, 
         counterInput_4, counterInput_3, counterInput_2, counterInput_1, 
         counterInput_0, adderOutput_12, adderOutput_11, adderOutput_10, 
         adderOutput_9, adderOutput_8, adderOutput_7, adderOutput_6, 
         adderOutput_5, adderOutput_4, adderOutput_3, adderOutput_2, 
         adderOutput_1, adderOutput_0, dummyInput_12, PWR;
    wire [0:0] \$dummy ;




    Reg_13 counterReg (.D ({counterInput_12,counterInput_11,counterInput_10,
           counterInput_9,counterInput_8,counterInput_7,counterInput_6,
           counterInput_5,counterInput_4,counterInput_3,counterInput_2,
           counterInput_1,counterInput_0}), .en (en), .clk (clk), .rst (rst), .Q (
           {counterOutput[12],counterOutput[11],counterOutput[10],
           counterOutput[9],counterOutput[8],counterOutput[7],counterOutput[6],
           counterOutput[5],counterOutput[4],counterOutput[3],counterOutput[2],
           counterOutput[1],counterOutput[0]})) ;
    NBitAdder_13 nextCount (.a ({counterOutput[12],counterOutput[11],
                 counterOutput[10],counterOutput[9],counterOutput[8],
                 counterOutput[7],counterOutput[6],counterOutput[5],
                 counterOutput[4],counterOutput[3],counterOutput[2],
                 counterOutput[1],counterOutput[0]}), .b ({dummyInput_12,
                 dummyInput_12,dummyInput_12,dummyInput_12,dummyInput_12,
                 dummyInput_12,dummyInput_12,dummyInput_12,dummyInput_12,
                 dummyInput_12,dummyInput_12,dummyInput_12,dummyInput_12}), .carryIn (
                 PWR), .sum ({adderOutput_12,adderOutput_11,adderOutput_10,
                 adderOutput_9,adderOutput_8,adderOutput_7,adderOutput_6,
                 adderOutput_5,adderOutput_4,adderOutput_3,adderOutput_2,
                 adderOutput_1,adderOutput_0}), .carryOut (\$dummy [0])) ;
    Mux2_13 muxloadOrCurrent (.A ({adderOutput_12,adderOutput_11,adderOutput_10,
            adderOutput_9,adderOutput_8,adderOutput_7,adderOutput_6,
            adderOutput_5,adderOutput_4,adderOutput_3,adderOutput_2,
            adderOutput_1,adderOutput_0}), .B ({loadData[12],loadData[11],
            loadData[10],loadData[9],loadData[8],loadData[7],loadData[6],
            loadData[5],loadData[4],loadData[3],loadData[2],loadData[1],
            loadData[0]}), .S (load), .C ({counterInput_12,counterInput_11,
            counterInput_10,counterInput_9,counterInput_8,counterInput_7,
            counterInput_6,counterInput_5,counterInput_4,counterInput_3,
            counterInput_2,counterInput_1,counterInput_0})) ;
    fake_vcc ix48 (.Y (PWR)) ;
    fake_gnd ix46 (.Y (dummyInput_12)) ;
endmodule


module Mux2_13 ( A, B, S, C ) ;

    input [12:0]A ;
    input [12:0]B ;
    input S ;
    output [12:0]C ;

    wire nx152, nx154;



    mux21_ni ix7 (.Y (C[0]), .A0 (A[0]), .A1 (B[0]), .S0 (nx152)) ;
    mux21_ni ix15 (.Y (C[1]), .A0 (A[1]), .A1 (B[1]), .S0 (nx152)) ;
    mux21_ni ix23 (.Y (C[2]), .A0 (A[2]), .A1 (B[2]), .S0 (nx152)) ;
    mux21_ni ix31 (.Y (C[3]), .A0 (A[3]), .A1 (B[3]), .S0 (nx152)) ;
    mux21_ni ix39 (.Y (C[4]), .A0 (A[4]), .A1 (B[4]), .S0 (nx152)) ;
    mux21_ni ix47 (.Y (C[5]), .A0 (A[5]), .A1 (B[5]), .S0 (nx152)) ;
    mux21_ni ix55 (.Y (C[6]), .A0 (A[6]), .A1 (B[6]), .S0 (nx152)) ;
    mux21_ni ix63 (.Y (C[7]), .A0 (A[7]), .A1 (B[7]), .S0 (nx154)) ;
    mux21_ni ix71 (.Y (C[8]), .A0 (A[8]), .A1 (B[8]), .S0 (nx154)) ;
    mux21_ni ix79 (.Y (C[9]), .A0 (A[9]), .A1 (B[9]), .S0 (nx154)) ;
    mux21_ni ix87 (.Y (C[10]), .A0 (A[10]), .A1 (B[10]), .S0 (nx154)) ;
    mux21_ni ix95 (.Y (C[11]), .A0 (A[11]), .A1 (B[11]), .S0 (nx154)) ;
    mux21_ni ix103 (.Y (C[12]), .A0 (A[12]), .A1 (B[12]), .S0 (nx154)) ;
    buf02 ix151 (.Y (nx152), .A (S)) ;
    buf02 ix153 (.Y (nx154), .A (S)) ;
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


module Reg_13 ( D, en, clk, rst, Q ) ;

    input [12:0]D ;
    input en ;
    input clk ;
    input rst ;
    output [12:0]Q ;

    wire nx192, nx202, nx212, nx222, nx232, nx242, nx252, nx262, nx272, nx282, 
         nx292, nx302, nx312, nx366, nx368, nx370, nx372;
    wire [12:0] \$dummy ;




    dffr reg_Q_0 (.Q (Q[0]), .QB (\$dummy [0]), .D (nx192), .CLK (clk), .R (
         nx366)) ;
    mux21_ni ix193 (.Y (nx192), .A0 (Q[0]), .A1 (D[0]), .S0 (nx370)) ;
    dffr reg_Q_1 (.Q (Q[1]), .QB (\$dummy [1]), .D (nx202), .CLK (clk), .R (
         nx366)) ;
    mux21_ni ix203 (.Y (nx202), .A0 (Q[1]), .A1 (D[1]), .S0 (nx370)) ;
    dffr reg_Q_2 (.Q (Q[2]), .QB (\$dummy [2]), .D (nx212), .CLK (clk), .R (
         nx366)) ;
    mux21_ni ix213 (.Y (nx212), .A0 (Q[2]), .A1 (D[2]), .S0 (nx370)) ;
    dffr reg_Q_3 (.Q (Q[3]), .QB (\$dummy [3]), .D (nx222), .CLK (clk), .R (
         nx366)) ;
    mux21_ni ix223 (.Y (nx222), .A0 (Q[3]), .A1 (D[3]), .S0 (nx370)) ;
    dffr reg_Q_4 (.Q (Q[4]), .QB (\$dummy [4]), .D (nx232), .CLK (clk), .R (
         nx366)) ;
    mux21_ni ix233 (.Y (nx232), .A0 (Q[4]), .A1 (D[4]), .S0 (nx370)) ;
    dffr reg_Q_5 (.Q (Q[5]), .QB (\$dummy [5]), .D (nx242), .CLK (clk), .R (
         nx366)) ;
    mux21_ni ix243 (.Y (nx242), .A0 (Q[5]), .A1 (D[5]), .S0 (nx370)) ;
    dffr reg_Q_6 (.Q (Q[6]), .QB (\$dummy [6]), .D (nx252), .CLK (clk), .R (
         nx366)) ;
    mux21_ni ix253 (.Y (nx252), .A0 (Q[6]), .A1 (D[6]), .S0 (nx370)) ;
    dffr reg_Q_7 (.Q (Q[7]), .QB (\$dummy [7]), .D (nx262), .CLK (clk), .R (
         nx368)) ;
    mux21_ni ix263 (.Y (nx262), .A0 (Q[7]), .A1 (D[7]), .S0 (nx372)) ;
    dffr reg_Q_8 (.Q (Q[8]), .QB (\$dummy [8]), .D (nx272), .CLK (clk), .R (
         nx368)) ;
    mux21_ni ix273 (.Y (nx272), .A0 (Q[8]), .A1 (D[8]), .S0 (nx372)) ;
    dffr reg_Q_9 (.Q (Q[9]), .QB (\$dummy [9]), .D (nx282), .CLK (clk), .R (
         nx368)) ;
    mux21_ni ix283 (.Y (nx282), .A0 (Q[9]), .A1 (D[9]), .S0 (nx372)) ;
    dffr reg_Q_10 (.Q (Q[10]), .QB (\$dummy [10]), .D (nx292), .CLK (clk), .R (
         nx368)) ;
    mux21_ni ix293 (.Y (nx292), .A0 (Q[10]), .A1 (D[10]), .S0 (nx372)) ;
    dffr reg_Q_11 (.Q (Q[11]), .QB (\$dummy [11]), .D (nx302), .CLK (clk), .R (
         nx368)) ;
    mux21_ni ix303 (.Y (nx302), .A0 (Q[11]), .A1 (D[11]), .S0 (nx372)) ;
    dffr reg_Q_12 (.Q (Q[12]), .QB (\$dummy [12]), .D (nx312), .CLK (clk), .R (
         nx368)) ;
    mux21_ni ix313 (.Y (nx312), .A0 (Q[12]), .A1 (D[12]), .S0 (nx372)) ;
    buf02 ix365 (.Y (nx366), .A (rst)) ;
    buf02 ix367 (.Y (nx368), .A (rst)) ;
    buf02 ix369 (.Y (nx370), .A (en)) ;
    buf02 ix371 (.Y (nx372), .A (en)) ;
endmodule


module Decompressor ( dataIn, clk, en, rst, imageLoad, intrDelayed, zeroState, 
                      dataOut ) ;

    input [5:0]dataIn ;
    input clk ;
    input en ;
    input rst ;
    input imageLoad ;
    input intrDelayed ;
    output zeroState ;
    output [7:0]dataOut ;

    wire countOut_5, countOut_4, countOut_3, countOut_2, countOut_1, countOut_0, 
         registerIn_0, registerIn_7, nx45;



    DownCounterSyncLoad_6 Counter (.loadData ({dataIn[5],dataIn[4],dataIn[3],
                          dataIn[2],dataIn[1],dataIn[0]}), .en (en), .load (
                          intrDelayed), .rst (rst), .clk (clk), .counterOutput (
                          {countOut_5,countOut_4,countOut_3,countOut_2,
                          countOut_1,countOut_0})) ;
    Reg_8 MyReg (.D ({registerIn_7,registerIn_7,registerIn_7,registerIn_7,
          registerIn_7,registerIn_7,registerIn_7,registerIn_0}), .en (imageLoad)
          , .clk (clk), .rst (rst), .Q ({dataOut[7],dataOut[6],dataOut[5],
          dataOut[4],dataOut[3],dataOut[2],dataOut[1],dataOut[0]})) ;
    fake_gnd ix35 (.Y (registerIn_7)) ;
    fake_vcc ix33 (.Y (registerIn_0)) ;
    nor04 ix21 (.Y (zeroState), .A0 (countOut_3), .A1 (countOut_5), .A2 (
          countOut_4), .A3 (nx45)) ;
    or03 ix46 (.Y (nx45), .A0 (countOut_0), .A1 (countOut_2), .A2 (countOut_1)
         ) ;
endmodule


module Reg_8 ( D, en, clk, rst, Q ) ;

    input [7:0]D ;
    input en ;
    input clk ;
    input rst ;
    output [7:0]Q ;

    wire nx132, nx142, nx152, nx162, nx172, nx182, nx192, nx202, nx241, nx243;
    wire [7:0] \$dummy ;




    dffr reg_Q_0 (.Q (Q[0]), .QB (\$dummy [0]), .D (nx132), .CLK (clk), .R (rst)
         ) ;
    mux21_ni ix133 (.Y (nx132), .A0 (Q[0]), .A1 (D[0]), .S0 (nx241)) ;
    dffr reg_Q_1 (.Q (Q[1]), .QB (\$dummy [1]), .D (nx142), .CLK (clk), .R (rst)
         ) ;
    mux21_ni ix143 (.Y (nx142), .A0 (Q[1]), .A1 (D[1]), .S0 (nx241)) ;
    dffr reg_Q_2 (.Q (Q[2]), .QB (\$dummy [2]), .D (nx152), .CLK (clk), .R (rst)
         ) ;
    mux21_ni ix153 (.Y (nx152), .A0 (Q[2]), .A1 (D[2]), .S0 (nx241)) ;
    dffr reg_Q_3 (.Q (Q[3]), .QB (\$dummy [3]), .D (nx162), .CLK (clk), .R (rst)
         ) ;
    mux21_ni ix163 (.Y (nx162), .A0 (Q[3]), .A1 (D[3]), .S0 (nx241)) ;
    dffr reg_Q_4 (.Q (Q[4]), .QB (\$dummy [4]), .D (nx172), .CLK (clk), .R (rst)
         ) ;
    mux21_ni ix173 (.Y (nx172), .A0 (Q[4]), .A1 (D[4]), .S0 (nx241)) ;
    dffr reg_Q_5 (.Q (Q[5]), .QB (\$dummy [5]), .D (nx182), .CLK (clk), .R (rst)
         ) ;
    mux21_ni ix183 (.Y (nx182), .A0 (Q[5]), .A1 (D[5]), .S0 (nx241)) ;
    dffr reg_Q_6 (.Q (Q[6]), .QB (\$dummy [6]), .D (nx192), .CLK (clk), .R (rst)
         ) ;
    mux21_ni ix193 (.Y (nx192), .A0 (Q[6]), .A1 (D[6]), .S0 (nx241)) ;
    dffr reg_Q_7 (.Q (Q[7]), .QB (\$dummy [7]), .D (nx202), .CLK (clk), .R (rst)
         ) ;
    mux21_ni ix203 (.Y (nx202), .A0 (Q[7]), .A1 (D[7]), .S0 (nx243)) ;
    buf02 ix240 (.Y (nx241), .A (en)) ;
    buf02 ix242 (.Y (nx243), .A (en)) ;
endmodule


module DownCounterSyncLoad_6 ( loadData, en, load, rst, clk, counterOutput ) ;

    input [5:0]loadData ;
    input en ;
    input load ;
    input rst ;
    input clk ;
    output [5:0]counterOutput ;

    wire counterInput_5, counterInput_4, counterInput_3, counterInput_2, 
         counterInput_1, counterInput_0, subtractorOutput_5, subtractorOutput_4, 
         subtractorOutput_3, subtractorOutput_2, subtractorOutput_1, 
         subtractorOutput_0, dummyInput_5, PWR;
    wire [0:0] \$dummy ;




    Reg_6 counterReg (.D ({counterInput_5,counterInput_4,counterInput_3,
          counterInput_2,counterInput_1,counterInput_0}), .en (en), .clk (clk), 
          .rst (rst), .Q ({counterOutput[5],counterOutput[4],counterOutput[3],
          counterOutput[2],counterOutput[1],counterOutput[0]})) ;
    NBitSubtractor_6 nextCount (.x ({counterOutput[5],counterOutput[4],
                     counterOutput[3],counterOutput[2],counterOutput[1],
                     counterOutput[0]}), .y ({dummyInput_5,dummyInput_5,
                     dummyInput_5,dummyInput_5,dummyInput_5,dummyInput_5}), .bin (
                     PWR), .difference ({subtractorOutput_5,subtractorOutput_4,
                     subtractorOutput_3,subtractorOutput_2,subtractorOutput_1,
                     subtractorOutput_0}), .borrowOut (\$dummy [0])) ;
    Mux2_6 muxloadOrCurrent (.A ({subtractorOutput_5,subtractorOutput_4,
           subtractorOutput_3,subtractorOutput_2,subtractorOutput_1,
           subtractorOutput_0}), .B ({loadData[5],loadData[4],loadData[3],
           loadData[2],loadData[1],loadData[0]}), .S (load), .C ({counterInput_5
           ,counterInput_4,counterInput_3,counterInput_2,counterInput_1,
           counterInput_0})) ;
    fake_vcc ix33 (.Y (PWR)) ;
    fake_gnd ix31 (.Y (dummyInput_5)) ;
endmodule


module Mux2_6 ( A, B, S, C ) ;

    input [5:0]A ;
    input [5:0]B ;
    input S ;
    output [5:0]C ;

    wire nx103;



    mux21_ni ix7 (.Y (C[0]), .A0 (A[0]), .A1 (B[0]), .S0 (nx103)) ;
    mux21_ni ix15 (.Y (C[1]), .A0 (A[1]), .A1 (B[1]), .S0 (nx103)) ;
    mux21_ni ix23 (.Y (C[2]), .A0 (A[2]), .A1 (B[2]), .S0 (nx103)) ;
    mux21_ni ix31 (.Y (C[3]), .A0 (A[3]), .A1 (B[3]), .S0 (nx103)) ;
    mux21_ni ix39 (.Y (C[4]), .A0 (A[4]), .A1 (B[4]), .S0 (nx103)) ;
    mux21_ni ix47 (.Y (C[5]), .A0 (A[5]), .A1 (B[5]), .S0 (nx103)) ;
    buf02 ix102 (.Y (nx103), .A (S)) ;
endmodule


module NBitSubtractor_6 ( x, y, bin, difference, borrowOut ) ;

    input [5:0]x ;
    input [5:0]y ;
    input bin ;
    output [5:0]difference ;
    output borrowOut ;

    wire temp_4, temp_3, temp_2, temp_1, temp_0;



    FullSubtractor f0 (.x (x[0]), .y (y[0]), .bin (bin), .difference (
                   difference[0]), .bout (temp_0)) ;
    FullSubtractor loop1_1_fx (.x (x[1]), .y (y[1]), .bin (temp_0), .difference (
                   difference[1]), .bout (temp_1)) ;
    FullSubtractor loop1_2_fx (.x (x[2]), .y (y[2]), .bin (temp_1), .difference (
                   difference[2]), .bout (temp_2)) ;
    FullSubtractor loop1_3_fx (.x (x[3]), .y (y[3]), .bin (temp_2), .difference (
                   difference[3]), .bout (temp_3)) ;
    FullSubtractor loop1_4_fx (.x (x[4]), .y (y[4]), .bin (temp_3), .difference (
                   difference[4]), .bout (temp_4)) ;
    FullSubtractor loop1_5_fx (.x (x[5]), .y (y[5]), .bin (temp_4), .difference (
                   difference[5]), .bout (borrowOut)) ;
endmodule


module Reg_6 ( D, en, clk, rst, Q ) ;

    input [5:0]D ;
    input en ;
    input clk ;
    input rst ;
    output [5:0]Q ;

    wire nx108, nx118, nx128, nx138, nx148, nx158;
    wire [5:0] \$dummy ;




    dffr reg_Q_0 (.Q (Q[0]), .QB (\$dummy [0]), .D (nx108), .CLK (clk), .R (rst)
         ) ;
    mux21_ni ix109 (.Y (nx108), .A0 (Q[0]), .A1 (D[0]), .S0 (en)) ;
    dffr reg_Q_1 (.Q (Q[1]), .QB (\$dummy [1]), .D (nx118), .CLK (clk), .R (rst)
         ) ;
    mux21_ni ix119 (.Y (nx118), .A0 (Q[1]), .A1 (D[1]), .S0 (en)) ;
    dffr reg_Q_2 (.Q (Q[2]), .QB (\$dummy [2]), .D (nx128), .CLK (clk), .R (rst)
         ) ;
    mux21_ni ix129 (.Y (nx128), .A0 (Q[2]), .A1 (D[2]), .S0 (en)) ;
    dffr reg_Q_3 (.Q (Q[3]), .QB (\$dummy [3]), .D (nx138), .CLK (clk), .R (rst)
         ) ;
    mux21_ni ix139 (.Y (nx138), .A0 (Q[3]), .A1 (D[3]), .S0 (en)) ;
    dffr reg_Q_4 (.Q (Q[4]), .QB (\$dummy [4]), .D (nx148), .CLK (clk), .R (rst)
         ) ;
    mux21_ni ix149 (.Y (nx148), .A0 (Q[4]), .A1 (D[4]), .S0 (en)) ;
    dffr reg_Q_5 (.Q (Q[5]), .QB (\$dummy [5]), .D (nx158), .CLK (clk), .R (rst)
         ) ;
    mux21_ni ix159 (.Y (nx158), .A0 (Q[5]), .A1 (D[5]), .S0 (en)) ;
endmodule


module IO_16_4 ( Din, doneDMAFC, doneDMACNN, doneDMAImage, INTR, load, clk, rst, 
                 processing, imageOrCNN, decompZeroState, doneWithPhase, 
                 CNNCounterEnable, imageCounterEnable, FCCounterEnable, 
                 decompDecrementorEnable, busy, toCNN, toFC, INTRDelayed, 
                 imageLoad, imageRegisterEnable, CNNRegisterEnable, 
                 FCRegisterEnable, imageRamEnable, CNNRamEnable, FCRamEnable, 
                 interfaceOutput, FCRamWriteOld, result, FCResult, FCDone ) ;

    input [15:0]Din ;
    input doneDMAFC ;
    input doneDMACNN ;
    input doneDMAImage ;
    input INTR ;
    input load ;
    input clk ;
    input rst ;
    input processing ;
    input imageOrCNN ;
    input decompZeroState ;
    output doneWithPhase ;
    output CNNCounterEnable ;
    output imageCounterEnable ;
    output FCCounterEnable ;
    output decompDecrementorEnable ;
    output busy ;
    output toCNN ;
    output toFC ;
    inout INTRDelayed ;
    inout imageLoad ;
    inout imageRegisterEnable ;
    inout CNNRegisterEnable ;
    inout FCRegisterEnable ;
    inout imageRamEnable ;
    inout CNNRamEnable ;
    inout FCRamEnable ;
    output [15:0]interfaceOutput ;
    input FCRamWriteOld ;
    output [3:0]result ;
    input [3:0]FCResult ;
    input FCDone ;

    wire globalCounterEnable, zeroState, globalCounterLoad;
    wire [3:0] \$dummy ;




    IOInterface_16_4 Interface (.Din ({Din[15],Din[14],Din[13],Din[12],Din[11],
                     Din[10],Din[9],Din[8],Din[7],Din[6],Din[5],Din[4],Din[3],
                     Din[2],Din[1],Din[0]}), .INTR (INTR), .clk (clk), .rst (rst
                     ), .globalCounterEnable (globalCounterEnable), .globalCounterLoad (
                     globalCounterLoad), .zeroState (zeroState), .Q ({
                     interfaceOutput[15],interfaceOutput[14],interfaceOutput[13]
                     ,interfaceOutput[12],interfaceOutput[11],
                     interfaceOutput[10],interfaceOutput[9],interfaceOutput[8],
                     interfaceOutput[7],interfaceOutput[6],interfaceOutput[5],
                     interfaceOutput[4],interfaceOutput[3],interfaceOutput[2],
                     interfaceOutput[1],interfaceOutput[0]}), .result ({
                     result[3],result[2],result[1],result[0]}), .FCResult ({
                     FCResult[3],FCResult[2],FCResult[1],FCResult[0]}), .FCDone (
                     FCDone)) ;
    Controller_16_4 Controller (.doneDMAFC (doneDMAFC), .doneDMACNN (doneDMACNN)
                    , .doneDMAImage (doneDMAImage), .INTR (INTR), .load (load), 
                    .clk (clk), .processing (processing), .imageOrCNN (
                    imageOrCNN), .zeroState (zeroState), .decompZeroState (
                    decompZeroState), .rst (rst), .FCRamWriteOld (FCRamWriteOld)
                    , .INTRDelayed (INTRDelayed), .globalCounterLoad (
                    globalCounterLoad), .imageLoad (imageLoad), .imageRegisterEnable (
                    imageRegisterEnable), .imageRamEnable (imageRamEnable), .CNNRegisterEnable (
                    CNNRegisterEnable), .CNNRamEnable (CNNRamEnable), .FCRegisterEnable (
                    FCRegisterEnable), .FCRamEnable (FCRamEnable), .busy (busy)
                    , .doneWithPhase (doneWithPhase), .interfaceRegEnable (
                    \$dummy [0]), .interfaceMuxSel (\$dummy [1]), .interfaceMuxEnable (
                    \$dummy [2]), .CNNCounterEnable (CNNCounterEnable), .FCCounterEnable (
                    FCCounterEnable), .decompDecrementorEnable (
                    decompDecrementorEnable), .imageCounterEnable (
                    imageCounterEnable), .globalCounterEnable (
                    globalCounterEnable), .toCNN (toCNN), .toFC (toFC), .doneDecomp (
                    \$dummy [3])) ;
endmodule


module Controller_16_4 ( doneDMAFC, doneDMACNN, doneDMAImage, INTR, load, clk, 
                         processing, imageOrCNN, zeroState, decompZeroState, rst, 
                         FCRamWriteOld, INTRDelayed, globalCounterLoad, 
                         imageLoad, imageRegisterEnable, imageRamEnable, 
                         CNNRegisterEnable, CNNRamEnable, FCRegisterEnable, 
                         FCRamEnable, busy, doneWithPhase, interfaceRegEnable, 
                         interfaceMuxSel, interfaceMuxEnable, CNNCounterEnable, 
                         FCCounterEnable, decompDecrementorEnable, 
                         imageCounterEnable, globalCounterEnable, toCNN, toFC, 
                         doneDecomp ) ;

    input doneDMAFC ;
    input doneDMACNN ;
    input doneDMAImage ;
    input INTR ;
    input load ;
    input clk ;
    input processing ;
    input imageOrCNN ;
    input zeroState ;
    input decompZeroState ;
    input rst ;
    input FCRamWriteOld ;
    inout INTRDelayed ;
    inout globalCounterLoad ;
    inout imageLoad ;
    inout imageRegisterEnable ;
    inout imageRamEnable ;
    inout CNNRegisterEnable ;
    inout CNNRamEnable ;
    inout FCRegisterEnable ;
    inout FCRamEnable ;
    output busy ;
    output doneWithPhase ;
    output interfaceRegEnable ;
    output interfaceMuxSel ;
    output interfaceMuxEnable ;
    output CNNCounterEnable ;
    output FCCounterEnable ;
    output decompDecrementorEnable ;
    output imageCounterEnable ;
    output globalCounterEnable ;
    output toCNN ;
    output toFC ;
    inout doneDecomp ;

    wire doneImage, imageLatcherD, busyFFD, busyFFQ, imageRamLatchD, 
         CNNRamLatchD, FCRamLatchD, CNNRamRst, imageRamRst, FCRamRst, 
         zeroStateDelayed, zeroStateDelayedSq, INTRDelayedSq, INTRFFD, 
         stateCounterEnable, CNNOrFC, busyRst, doneDMAImageDelayed, 
         stateCounterQ_0, notClk, PWR, nx16, nx120, nx202, nx204, nx206, nx208, 
         nx214, nx225, nx229, nx234, nx238, nx241, nx243, nx246, nx248, nx251, 
         nx254, nx257, nx270;



    assign interfaceMuxSel = imageOrCNN ;
    assign interfaceMuxEnable = load ;
    DFF imageLatcher (.D (imageLatcherD), .clk (clk), .rst (rst), .en (PWR), .Q (
        doneImage)) ;
    DFF busyFF (.D (busyFFD), .clk (clk), .rst (busyRst), .en (PWR), .Q (busyFFQ
        )) ;
    Counter2_2 stateCounter (.en (stateCounterEnable), .reset (rst), .clk (nx270
               ), .count ({CNNOrFC,stateCounterQ_0})) ;
    DFF zeroLatch (.D (zeroState), .clk (nx270), .rst (rst), .en (PWR), .Q (
        zeroStateDelayed)) ;
    DFF zeroDelayedLatch (.D (zeroStateDelayed), .clk (nx270), .rst (rst), .en (
        PWR), .Q (zeroStateDelayedSq)) ;
    DFF INTRFF1 (.D (INTRFFD), .clk (notClk), .rst (rst), .en (PWR), .Q (
        INTRDelayed)) ;
    DFF INTRFF2 (.D (INTRDelayed), .clk (notClk), .rst (rst), .en (PWR), .Q (
        INTRDelayedSq)) ;
    DFF imgLatcher (.D (doneDMAImage), .clk (notClk), .rst (rst), .en (PWR), .Q (
        doneDMAImageDelayed)) ;
    DFF imageRamEn (.D (imageRamLatchD), .clk (clk), .rst (imageRamRst), .en (
        PWR), .Q (imageRamEnable)) ;
    DFF CNNRamEn (.D (CNNRamLatchD), .clk (clk), .rst (CNNRamRst), .en (PWR), .Q (
        CNNRamEnable)) ;
    DFF FCRamEn (.D (FCRamLatchD), .clk (clk), .rst (FCRamRst), .en (PWR), .Q (
        FCRamEnable)) ;
    fake_vcc ix167 (.Y (PWR)) ;
    inv01 ix199 (.Y (notClk), .A (clk)) ;
    or03 ix125 (.Y (busyRst), .A0 (nx120), .A1 (nx16), .A2 (zeroStateDelayedSq)
         ) ;
    nor03_2x ix121 (.Y (nx120), .A0 (nx202), .A1 (FCRamEnable), .A2 (nx208)) ;
    nand02 ix205 (.Y (nx204), .A0 (INTRDelayed), .A1 (nx206)) ;
    inv01 ix207 (.Y (nx206), .A (zeroState)) ;
    nand03 ix209 (.Y (nx208), .A0 (CNNOrFC), .A1 (load), .A2 (imageOrCNN)) ;
    and02 ix13 (.Y (doneDecomp), .A0 (decompZeroState), .A1 (doneDMAImageDelayed
          )) ;
    and02 ix109 (.Y (stateCounterEnable), .A0 (imageOrCNN), .A1 (doneWithPhase)
          ) ;
    nor02ii ix19 (.Y (doneWithPhase), .A0 (nx214), .A1 (zeroState)) ;
    nor03_2x ix215 (.Y (nx214), .A0 (doneDMACNN), .A1 (doneDMAFC), .A2 (
             doneDecomp)) ;
    or02 ix21 (.Y (FCRamRst), .A0 (rst), .A1 (doneDMAFC)) ;
    or03 ix83 (.Y (imageRamRst), .A0 (decompZeroState), .A1 (rst), .A2 (
         doneDMAImage)) ;
    or02 ix35 (.Y (CNNRamRst), .A0 (rst), .A1 (doneDMACNN)) ;
    or02 ix23 (.Y (FCRamLatchD), .A0 (FCRamEnable), .A1 (FCRamWriteOld)) ;
    or02 ix51 (.Y (CNNRamLatchD), .A0 (CNNRegisterEnable), .A1 (CNNRamEnable)) ;
    nor04 ix49 (.Y (CNNRegisterEnable), .A0 (CNNOrFC), .A1 (rst), .A2 (nx225), .A3 (
          nx204)) ;
    nand02 ix226 (.Y (nx225), .A0 (load), .A1 (imageOrCNN)) ;
    or02 ix93 (.Y (imageRamLatchD), .A0 (imageRegisterEnable), .A1 (
         imageRamEnable)) ;
    inv01 ix91 (.Y (imageRegisterEnable), .A (nx229)) ;
    oai21 ix230 (.Y (nx229), .A0 (doneDMAImageDelayed), .A1 (INTRDelayedSq), .B0 (
          imageLoad)) ;
    nor02ii ix87 (.Y (imageLoad), .A0 (imageOrCNN), .A1 (load)) ;
    or02 ix127 (.Y (busyFFD), .A0 (INTR), .A1 (busyFFQ)) ;
    nand02 ix133 (.Y (imageLatcherD), .A0 (imageOrCNN), .A1 (nx234)) ;
    inv01 ix235 (.Y (nx234), .A (doneImage)) ;
    and04 ix5 (.Y (toFC), .A0 (stateCounterQ_0), .A1 (processing), .A2 (CNNOrFC)
          , .A3 (doneImage)) ;
    and03 ix11 (.Y (toCNN), .A0 (doneDMAImage), .A1 (processing), .A2 (nx238)) ;
    inv01 ix239 (.Y (nx238), .A (CNNOrFC)) ;
    aoi21 ix73 (.Y (globalCounterEnable), .A0 (nx241), .A1 (nx214), .B0 (rst)) ;
    nand03 ix242 (.Y (nx241), .A0 (INTR), .A1 (nx243), .A2 (zeroState)) ;
    inv01 ix244 (.Y (nx243), .A (rst)) ;
    aoi21 ix103 (.Y (imageCounterEnable), .A0 (nx246), .A1 (nx248), .B0 (
          zeroState)) ;
    inv01 ix247 (.Y (nx246), .A (doneDMAImageDelayed)) ;
    inv01 ix249 (.Y (nx248), .A (INTRDelayed)) ;
    inv02 ix97 (.Y (decompDecrementorEnable), .A (nx251)) ;
    oai21 ix252 (.Y (nx251), .A0 (INTRDelayed), .A1 (doneDMAImage), .B0 (
          imageLoad)) ;
    nor03_2x ix33 (.Y (FCCounterEnable), .A0 (nx208), .A1 (nx254), .A2 (rst)) ;
    inv01 ix255 (.Y (nx254), .A (doneDMAFC)) ;
    nor04 ix61 (.Y (CNNCounterEnable), .A0 (nx257), .A1 (CNNOrFC), .A2 (rst), .A3 (
          nx225)) ;
    inv01 ix258 (.Y (nx257), .A (doneDMACNN)) ;
    or02 ix129 (.Y (busy), .A0 (busyFFD), .A1 (FCRamEnable)) ;
    nor03_2x ix115 (.Y (FCRegisterEnable), .A0 (nx204), .A1 (rst), .A2 (nx208)
             ) ;
    inv01 ix17 (.Y (nx16), .A (nx214)) ;
    inv01 ix203 (.Y (nx202), .A (FCRegisterEnable)) ;
    inv01 ix67 (.Y (globalCounterLoad), .A (nx241)) ;
    inv01 ix269 (.Y (nx270), .A (clk)) ;
    nor02ii ix107 (.Y (INTRFFD), .A0 (zeroStateDelayed), .A1 (INTR)) ;
    and03 ix79 (.Y (interfaceRegEnable), .A0 (INTR), .A1 (nx243), .A2 (load)) ;
endmodule


module Counter2_2 ( en, reset, clk, count ) ;

    input en ;
    input reset ;
    input clk ;
    output [1:0]count ;

    wire addedOne_1, addedOne_0, finalReset, oneSignal_1, PWR;
    wire [0:0] \$dummy ;




    Reg_2 counterReg (.D ({addedOne_1,addedOne_0}), .en (en), .clk (clk), .rst (
          finalReset), .Q ({count[1],count[0]})) ;
    NBitAdder_2 nextCount (.a ({count[1],count[0]}), .b ({oneSignal_1,
                oneSignal_1}), .carryIn (PWR), .sum ({addedOne_1,addedOne_0}), .carryOut (
                \$dummy [0])) ;
    fake_vcc ix15 (.Y (PWR)) ;
    fake_gnd ix13 (.Y (oneSignal_1)) ;
    and02 ix1 (.Y (finalReset), .A0 (reset), .A1 (clk)) ;
endmodule


module NBitAdder_2 ( a, b, carryIn, sum, carryOut ) ;

    input [1:0]a ;
    input [1:0]b ;
    input carryIn ;
    output [1:0]sum ;
    output carryOut ;

    wire temp_0;



    FullAdder f0 (.a (a[0]), .b (b[0]), .cin (carryIn), .s (sum[0]), .cout (
              temp_0)) ;
    FullAdder loop1_1_fx (.a (a[1]), .b (b[1]), .cin (temp_0), .s (sum[1]), .cout (
              carryOut)) ;
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


module Reg_2 ( D, en, clk, rst, Q ) ;

    input [1:0]D ;
    input en ;
    input clk ;
    input rst ;
    output [1:0]Q ;

    wire nx60, nx70;
    wire [1:0] \$dummy ;




    dffr reg_Q_0 (.Q (Q[0]), .QB (\$dummy [0]), .D (nx60), .CLK (clk), .R (rst)
         ) ;
    mux21_ni ix61 (.Y (nx60), .A0 (Q[0]), .A1 (D[0]), .S0 (en)) ;
    dffr reg_Q_1 (.Q (Q[1]), .QB (\$dummy [1]), .D (nx70), .CLK (clk), .R (rst)
         ) ;
    mux21_ni ix71 (.Y (nx70), .A0 (Q[1]), .A1 (D[1]), .S0 (en)) ;
endmodule


module DFF ( D, clk, rst, en, Q ) ;

    input D ;
    input clk ;
    input rst ;
    input en ;
    output Q ;

    wire nx50;
    wire [0:0] \$dummy ;




    dffr reg_Q (.Q (Q), .QB (\$dummy [0]), .D (nx50), .CLK (clk), .R (rst)) ;
    mux21_ni ix51 (.Y (nx50), .A0 (Q), .A1 (D), .S0 (en)) ;
endmodule


module IOInterface_16_4 ( Din, INTR, clk, rst, globalCounterEnable, 
                          globalCounterLoad, zeroState, Q, result, FCResult, 
                          FCDone ) ;

    input [15:0]Din ;
    input INTR ;
    input clk ;
    input rst ;
    input globalCounterEnable ;
    input globalCounterLoad ;
    output zeroState ;
    output [15:0]Q ;
    output [3:0]result ;
    input [3:0]FCResult ;
    input FCDone ;

    wire myGlobalCounterEnable, globalCounterOutput_15, globalCounterOutput_14, 
         globalCounterOutput_13, globalCounterOutput_12, globalCounterOutput_11, 
         globalCounterOutput_10, globalCounterOutput_9, globalCounterOutput_8, 
         globalCounterOutput_7, globalCounterOutput_6, globalCounterOutput_5, 
         globalCounterOutput_4, globalCounterOutput_3, globalCounterOutput_2, 
         globalCounterOutput_1, globalCounterOutput_0, nx12, nx26, nx42, nx56;



    DownCounterSyncLoad_16 GlobalCounter (.loadData ({Din[15],Din[14],Din[13],
                           Din[12],Din[11],Din[10],Din[9],Din[8],Din[7],Din[6],
                           Din[5],Din[4],Din[3],Din[2],Din[1],Din[0]}), .en (
                           myGlobalCounterEnable), .load (globalCounterLoad), .rst (
                           rst), .clk (clk), .counterOutput ({
                           globalCounterOutput_15,globalCounterOutput_14,
                           globalCounterOutput_13,globalCounterOutput_12,
                           globalCounterOutput_11,globalCounterOutput_10,
                           globalCounterOutput_9,globalCounterOutput_8,
                           globalCounterOutput_7,globalCounterOutput_6,
                           globalCounterOutput_5,globalCounterOutput_4,
                           globalCounterOutput_3,globalCounterOutput_2,
                           globalCounterOutput_1,globalCounterOutput_0})) ;
    Reg_16 DataReg (.D ({Din[15],Din[14],Din[13],Din[12],Din[11],Din[10],Din[9],
           Din[8],Din[7],Din[6],Din[5],Din[4],Din[3],Din[2],Din[1],Din[0]}), .en (
           INTR), .clk (clk), .rst (rst), .Q ({Q[15],Q[14],Q[13],Q[12],Q[11],
           Q[10],Q[9],Q[8],Q[7],Q[6],Q[5],Q[4],Q[3],Q[2],Q[1],Q[0]})) ;
    and04 ix61 (.Y (zeroState), .A0 (nx12), .A1 (nx26), .A2 (nx42), .A3 (nx56)
          ) ;
    nor04 ix13 (.Y (nx12), .A0 (globalCounterOutput_15), .A1 (
          globalCounterOutput_14), .A2 (globalCounterOutput_13), .A3 (
          globalCounterOutput_12)) ;
    nor04 ix27 (.Y (nx26), .A0 (globalCounterOutput_11), .A1 (
          globalCounterOutput_10), .A2 (globalCounterOutput_9), .A3 (
          globalCounterOutput_8)) ;
    nor04 ix43 (.Y (nx42), .A0 (globalCounterOutput_7), .A1 (
          globalCounterOutput_6), .A2 (globalCounterOutput_5), .A3 (
          globalCounterOutput_4)) ;
    nor04 ix57 (.Y (nx56), .A0 (globalCounterOutput_3), .A1 (
          globalCounterOutput_2), .A2 (globalCounterOutput_1), .A3 (
          globalCounterOutput_0)) ;
    or02 ix71 (.Y (myGlobalCounterEnable), .A0 (globalCounterEnable), .A1 (
         globalCounterLoad)) ;
    and02 ix63 (.Y (result[0]), .A0 (FCResult[0]), .A1 (FCDone)) ;
    and02 ix65 (.Y (result[1]), .A0 (FCResult[1]), .A1 (FCDone)) ;
    and02 ix67 (.Y (result[2]), .A0 (FCResult[2]), .A1 (FCDone)) ;
    and02 ix69 (.Y (result[3]), .A0 (FCDone), .A1 (FCResult[3])) ;
endmodule


module DownCounterSyncLoad_16 ( loadData, en, load, rst, clk, counterOutput ) ;

    input [15:0]loadData ;
    input en ;
    input load ;
    input rst ;
    input clk ;
    output [15:0]counterOutput ;

    wire counterInput_15, counterInput_14, counterInput_13, counterInput_12, 
         counterInput_11, counterInput_10, counterInput_9, counterInput_8, 
         counterInput_7, counterInput_6, counterInput_5, counterInput_4, 
         counterInput_3, counterInput_2, counterInput_1, counterInput_0, 
         subtractorOutput_15, subtractorOutput_14, subtractorOutput_13, 
         subtractorOutput_12, subtractorOutput_11, subtractorOutput_10, 
         subtractorOutput_9, subtractorOutput_8, subtractorOutput_7, 
         subtractorOutput_6, subtractorOutput_5, subtractorOutput_4, 
         subtractorOutput_3, subtractorOutput_2, subtractorOutput_1, 
         subtractorOutput_0, dummyInput_15, PWR;
    wire [0:0] \$dummy ;




    Reg_16 counterReg (.D ({counterInput_15,counterInput_14,counterInput_13,
           counterInput_12,counterInput_11,counterInput_10,counterInput_9,
           counterInput_8,counterInput_7,counterInput_6,counterInput_5,
           counterInput_4,counterInput_3,counterInput_2,counterInput_1,
           counterInput_0}), .en (en), .clk (clk), .rst (rst), .Q ({
           counterOutput[15],counterOutput[14],counterOutput[13],
           counterOutput[12],counterOutput[11],counterOutput[10],
           counterOutput[9],counterOutput[8],counterOutput[7],counterOutput[6],
           counterOutput[5],counterOutput[4],counterOutput[3],counterOutput[2],
           counterOutput[1],counterOutput[0]})) ;
    NBitSubtractor_16 nextCount (.x ({counterOutput[15],counterOutput[14],
                      counterOutput[13],counterOutput[12],counterOutput[11],
                      counterOutput[10],counterOutput[9],counterOutput[8],
                      counterOutput[7],counterOutput[6],counterOutput[5],
                      counterOutput[4],counterOutput[3],counterOutput[2],
                      counterOutput[1],counterOutput[0]}), .y ({dummyInput_15,
                      dummyInput_15,dummyInput_15,dummyInput_15,dummyInput_15,
                      dummyInput_15,dummyInput_15,dummyInput_15,dummyInput_15,
                      dummyInput_15,dummyInput_15,dummyInput_15,dummyInput_15,
                      dummyInput_15,dummyInput_15,dummyInput_15}), .bin (PWR), .difference (
                      {subtractorOutput_15,subtractorOutput_14,
                      subtractorOutput_13,subtractorOutput_12,
                      subtractorOutput_11,subtractorOutput_10,subtractorOutput_9
                      ,subtractorOutput_8,subtractorOutput_7,subtractorOutput_6,
                      subtractorOutput_5,subtractorOutput_4,subtractorOutput_3,
                      subtractorOutput_2,subtractorOutput_1,subtractorOutput_0})
                      , .borrowOut (\$dummy [0])) ;
    Mux2_16 muxloadOrCurrent (.A ({subtractorOutput_15,subtractorOutput_14,
            subtractorOutput_13,subtractorOutput_12,subtractorOutput_11,
            subtractorOutput_10,subtractorOutput_9,subtractorOutput_8,
            subtractorOutput_7,subtractorOutput_6,subtractorOutput_5,
            subtractorOutput_4,subtractorOutput_3,subtractorOutput_2,
            subtractorOutput_1,subtractorOutput_0}), .B ({loadData[15],
            loadData[14],loadData[13],loadData[12],loadData[11],loadData[10],
            loadData[9],loadData[8],loadData[7],loadData[6],loadData[5],
            loadData[4],loadData[3],loadData[2],loadData[1],loadData[0]}), .S (
            load), .C ({counterInput_15,counterInput_14,counterInput_13,
            counterInput_12,counterInput_11,counterInput_10,counterInput_9,
            counterInput_8,counterInput_7,counterInput_6,counterInput_5,
            counterInput_4,counterInput_3,counterInput_2,counterInput_1,
            counterInput_0})) ;
    fake_vcc ix73 (.Y (PWR)) ;
    fake_gnd ix71 (.Y (dummyInput_15)) ;
endmodule


module Mux2_16 ( A, B, S, C ) ;

    input [15:0]A ;
    input [15:0]B ;
    input S ;
    output [15:0]C ;

    wire nx173, nx175, nx177, nx179;



    mux21_ni ix7 (.Y (C[0]), .A0 (A[0]), .A1 (B[0]), .S0 (nx175)) ;
    mux21_ni ix15 (.Y (C[1]), .A0 (A[1]), .A1 (B[1]), .S0 (nx175)) ;
    mux21_ni ix23 (.Y (C[2]), .A0 (A[2]), .A1 (B[2]), .S0 (nx175)) ;
    mux21_ni ix31 (.Y (C[3]), .A0 (A[3]), .A1 (B[3]), .S0 (nx175)) ;
    mux21_ni ix39 (.Y (C[4]), .A0 (A[4]), .A1 (B[4]), .S0 (nx175)) ;
    mux21_ni ix47 (.Y (C[5]), .A0 (A[5]), .A1 (B[5]), .S0 (nx175)) ;
    mux21_ni ix55 (.Y (C[6]), .A0 (A[6]), .A1 (B[6]), .S0 (nx175)) ;
    mux21_ni ix63 (.Y (C[7]), .A0 (A[7]), .A1 (B[7]), .S0 (nx177)) ;
    mux21_ni ix71 (.Y (C[8]), .A0 (A[8]), .A1 (B[8]), .S0 (nx177)) ;
    mux21_ni ix79 (.Y (C[9]), .A0 (A[9]), .A1 (B[9]), .S0 (nx177)) ;
    mux21_ni ix87 (.Y (C[10]), .A0 (A[10]), .A1 (B[10]), .S0 (nx177)) ;
    mux21_ni ix95 (.Y (C[11]), .A0 (A[11]), .A1 (B[11]), .S0 (nx177)) ;
    mux21_ni ix103 (.Y (C[12]), .A0 (A[12]), .A1 (B[12]), .S0 (nx177)) ;
    mux21_ni ix111 (.Y (C[13]), .A0 (A[13]), .A1 (B[13]), .S0 (nx177)) ;
    mux21_ni ix119 (.Y (C[14]), .A0 (A[14]), .A1 (B[14]), .S0 (nx179)) ;
    mux21_ni ix127 (.Y (C[15]), .A0 (A[15]), .A1 (B[15]), .S0 (nx179)) ;
    inv01 ix172 (.Y (nx173), .A (S)) ;
    inv02 ix174 (.Y (nx175), .A (nx173)) ;
    inv02 ix176 (.Y (nx177), .A (nx173)) ;
    inv02 ix178 (.Y (nx179), .A (nx173)) ;
endmodule


module NBitSubtractor_16 ( x, y, bin, difference, borrowOut ) ;

    input [15:0]x ;
    input [15:0]y ;
    input bin ;
    output [15:0]difference ;
    output borrowOut ;

    wire temp_14, temp_13, temp_12, temp_11, temp_10, temp_9, temp_8, temp_7, 
         temp_6, temp_5, temp_4, temp_3, temp_2, temp_1, temp_0;



    FullSubtractor f0 (.x (x[0]), .y (y[0]), .bin (bin), .difference (
                   difference[0]), .bout (temp_0)) ;
    FullSubtractor loop1_1_fx (.x (x[1]), .y (y[1]), .bin (temp_0), .difference (
                   difference[1]), .bout (temp_1)) ;
    FullSubtractor loop1_2_fx (.x (x[2]), .y (y[2]), .bin (temp_1), .difference (
                   difference[2]), .bout (temp_2)) ;
    FullSubtractor loop1_3_fx (.x (x[3]), .y (y[3]), .bin (temp_2), .difference (
                   difference[3]), .bout (temp_3)) ;
    FullSubtractor loop1_4_fx (.x (x[4]), .y (y[4]), .bin (temp_3), .difference (
                   difference[4]), .bout (temp_4)) ;
    FullSubtractor loop1_5_fx (.x (x[5]), .y (y[5]), .bin (temp_4), .difference (
                   difference[5]), .bout (temp_5)) ;
    FullSubtractor loop1_6_fx (.x (x[6]), .y (y[6]), .bin (temp_5), .difference (
                   difference[6]), .bout (temp_6)) ;
    FullSubtractor loop1_7_fx (.x (x[7]), .y (y[7]), .bin (temp_6), .difference (
                   difference[7]), .bout (temp_7)) ;
    FullSubtractor loop1_8_fx (.x (x[8]), .y (y[8]), .bin (temp_7), .difference (
                   difference[8]), .bout (temp_8)) ;
    FullSubtractor loop1_9_fx (.x (x[9]), .y (y[9]), .bin (temp_8), .difference (
                   difference[9]), .bout (temp_9)) ;
    FullSubtractor loop1_10_fx (.x (x[10]), .y (y[10]), .bin (temp_9), .difference (
                   difference[10]), .bout (temp_10)) ;
    FullSubtractor loop1_11_fx (.x (x[11]), .y (y[11]), .bin (temp_10), .difference (
                   difference[11]), .bout (temp_11)) ;
    FullSubtractor loop1_12_fx (.x (x[12]), .y (y[12]), .bin (temp_11), .difference (
                   difference[12]), .bout (temp_12)) ;
    FullSubtractor loop1_13_fx (.x (x[13]), .y (y[13]), .bin (temp_12), .difference (
                   difference[13]), .bout (temp_13)) ;
    FullSubtractor loop1_14_fx (.x (x[14]), .y (y[14]), .bin (temp_13), .difference (
                   difference[14]), .bout (temp_14)) ;
    FullSubtractor loop1_15_fx (.x (x[15]), .y (y[15]), .bin (temp_14), .difference (
                   difference[15]), .bout (borrowOut)) ;
endmodule


module FullSubtractor ( x, y, bin, difference, bout ) ;

    input x ;
    input y ;
    input bin ;
    output difference ;
    output bout ;

    wire nx71, nx73;



    mux21_ni ix11 (.Y (bout), .A0 (nx71), .A1 (bin), .S0 (nx73)) ;
    inv01 ix72 (.Y (nx71), .A (x)) ;
    xnor2 ix74 (.Y (nx73), .A0 (x), .A1 (y)) ;
    xnor2 ix13 (.Y (difference), .A0 (nx73), .A1 (bin)) ;
endmodule


module Reg_16 ( D, en, clk, rst, Q ) ;

    input [15:0]D ;
    input en ;
    input clk ;
    input rst ;
    output [15:0]Q ;

    wire nx228, nx238, nx248, nx258, nx268, nx278, nx288, nx298, nx308, nx318, 
         nx328, nx338, nx348, nx358, nx368, nx378, nx441, nx443, nx445, nx447, 
         nx449, nx451, nx453, nx455;
    wire [15:0] \$dummy ;




    dffr reg_Q_0 (.Q (Q[0]), .QB (\$dummy [0]), .D (nx228), .CLK (clk), .R (
         nx451)) ;
    mux21_ni ix229 (.Y (nx228), .A0 (Q[0]), .A1 (D[0]), .S0 (nx443)) ;
    dffr reg_Q_1 (.Q (Q[1]), .QB (\$dummy [1]), .D (nx238), .CLK (clk), .R (
         nx451)) ;
    mux21_ni ix239 (.Y (nx238), .A0 (Q[1]), .A1 (D[1]), .S0 (nx443)) ;
    dffr reg_Q_2 (.Q (Q[2]), .QB (\$dummy [2]), .D (nx248), .CLK (clk), .R (
         nx451)) ;
    mux21_ni ix249 (.Y (nx248), .A0 (Q[2]), .A1 (D[2]), .S0 (nx443)) ;
    dffr reg_Q_3 (.Q (Q[3]), .QB (\$dummy [3]), .D (nx258), .CLK (clk), .R (
         nx451)) ;
    mux21_ni ix259 (.Y (nx258), .A0 (Q[3]), .A1 (D[3]), .S0 (nx443)) ;
    dffr reg_Q_4 (.Q (Q[4]), .QB (\$dummy [4]), .D (nx268), .CLK (clk), .R (
         nx451)) ;
    mux21_ni ix269 (.Y (nx268), .A0 (Q[4]), .A1 (D[4]), .S0 (nx443)) ;
    dffr reg_Q_5 (.Q (Q[5]), .QB (\$dummy [5]), .D (nx278), .CLK (clk), .R (
         nx451)) ;
    mux21_ni ix279 (.Y (nx278), .A0 (Q[5]), .A1 (D[5]), .S0 (nx443)) ;
    dffr reg_Q_6 (.Q (Q[6]), .QB (\$dummy [6]), .D (nx288), .CLK (clk), .R (
         nx451)) ;
    mux21_ni ix289 (.Y (nx288), .A0 (Q[6]), .A1 (D[6]), .S0 (nx443)) ;
    dffr reg_Q_7 (.Q (Q[7]), .QB (\$dummy [7]), .D (nx298), .CLK (clk), .R (
         nx453)) ;
    mux21_ni ix299 (.Y (nx298), .A0 (Q[7]), .A1 (D[7]), .S0 (nx445)) ;
    dffr reg_Q_8 (.Q (Q[8]), .QB (\$dummy [8]), .D (nx308), .CLK (clk), .R (
         nx453)) ;
    mux21_ni ix309 (.Y (nx308), .A0 (Q[8]), .A1 (D[8]), .S0 (nx445)) ;
    dffr reg_Q_9 (.Q (Q[9]), .QB (\$dummy [9]), .D (nx318), .CLK (clk), .R (
         nx453)) ;
    mux21_ni ix319 (.Y (nx318), .A0 (Q[9]), .A1 (D[9]), .S0 (nx445)) ;
    dffr reg_Q_10 (.Q (Q[10]), .QB (\$dummy [10]), .D (nx328), .CLK (clk), .R (
         nx453)) ;
    mux21_ni ix329 (.Y (nx328), .A0 (Q[10]), .A1 (D[10]), .S0 (nx445)) ;
    dffr reg_Q_11 (.Q (Q[11]), .QB (\$dummy [11]), .D (nx338), .CLK (clk), .R (
         nx453)) ;
    mux21_ni ix339 (.Y (nx338), .A0 (Q[11]), .A1 (D[11]), .S0 (nx445)) ;
    dffr reg_Q_12 (.Q (Q[12]), .QB (\$dummy [12]), .D (nx348), .CLK (clk), .R (
         nx453)) ;
    mux21_ni ix349 (.Y (nx348), .A0 (Q[12]), .A1 (D[12]), .S0 (nx445)) ;
    dffr reg_Q_13 (.Q (Q[13]), .QB (\$dummy [13]), .D (nx358), .CLK (clk), .R (
         nx453)) ;
    mux21_ni ix359 (.Y (nx358), .A0 (Q[13]), .A1 (D[13]), .S0 (nx445)) ;
    dffr reg_Q_14 (.Q (Q[14]), .QB (\$dummy [14]), .D (nx368), .CLK (clk), .R (
         nx455)) ;
    mux21_ni ix369 (.Y (nx368), .A0 (Q[14]), .A1 (D[14]), .S0 (nx447)) ;
    dffr reg_Q_15 (.Q (Q[15]), .QB (\$dummy [15]), .D (nx378), .CLK (clk), .R (
         nx455)) ;
    mux21_ni ix379 (.Y (nx378), .A0 (Q[15]), .A1 (D[15]), .S0 (nx447)) ;
    inv01 ix440 (.Y (nx441), .A (en)) ;
    inv02 ix442 (.Y (nx443), .A (nx441)) ;
    inv02 ix444 (.Y (nx445), .A (nx441)) ;
    inv02 ix446 (.Y (nx447), .A (nx441)) ;
    inv01 ix448 (.Y (nx449), .A (rst)) ;
    inv02 ix450 (.Y (nx451), .A (nx449)) ;
    inv02 ix452 (.Y (nx453), .A (nx449)) ;
    inv02 ix454 (.Y (nx455), .A (nx449)) ;
endmodule

