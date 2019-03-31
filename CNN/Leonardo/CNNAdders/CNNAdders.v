//
// Verilog description for cell CNNAdders, 
// Sun Mar 31 20:42:11 2019
//
// LeonardoSpectrum Level 3, 2018a.2 
//


module CNNAdders ( inputs_0__15, inputs_0__14, inputs_0__13, inputs_0__12, 
                   inputs_0__11, inputs_0__10, inputs_0__9, inputs_0__8, 
                   inputs_0__7, inputs_0__6, inputs_0__5, inputs_0__4, 
                   inputs_0__3, inputs_0__2, inputs_0__1, inputs_0__0, 
                   inputs_1__15, inputs_1__14, inputs_1__13, inputs_1__12, 
                   inputs_1__11, inputs_1__10, inputs_1__9, inputs_1__8, 
                   inputs_1__7, inputs_1__6, inputs_1__5, inputs_1__4, 
                   inputs_1__3, inputs_1__2, inputs_1__1, inputs_1__0, 
                   inputs_2__15, inputs_2__14, inputs_2__13, inputs_2__12, 
                   inputs_2__11, inputs_2__10, inputs_2__9, inputs_2__8, 
                   inputs_2__7, inputs_2__6, inputs_2__5, inputs_2__4, 
                   inputs_2__3, inputs_2__2, inputs_2__1, inputs_2__0, 
                   inputs_3__15, inputs_3__14, inputs_3__13, inputs_3__12, 
                   inputs_3__11, inputs_3__10, inputs_3__9, inputs_3__8, 
                   inputs_3__7, inputs_3__6, inputs_3__5, inputs_3__4, 
                   inputs_3__3, inputs_3__2, inputs_3__1, inputs_3__0, 
                   inputs_4__15, inputs_4__14, inputs_4__13, inputs_4__12, 
                   inputs_4__11, inputs_4__10, inputs_4__9, inputs_4__8, 
                   inputs_4__7, inputs_4__6, inputs_4__5, inputs_4__4, 
                   inputs_4__3, inputs_4__2, inputs_4__1, inputs_4__0, 
                   inputs_5__15, inputs_5__14, inputs_5__13, inputs_5__12, 
                   inputs_5__11, inputs_5__10, inputs_5__9, inputs_5__8, 
                   inputs_5__7, inputs_5__6, inputs_5__5, inputs_5__4, 
                   inputs_5__3, inputs_5__2, inputs_5__1, inputs_5__0, 
                   inputs_6__15, inputs_6__14, inputs_6__13, inputs_6__12, 
                   inputs_6__11, inputs_6__10, inputs_6__9, inputs_6__8, 
                   inputs_6__7, inputs_6__6, inputs_6__5, inputs_6__4, 
                   inputs_6__3, inputs_6__2, inputs_6__1, inputs_6__0, 
                   inputs_7__15, inputs_7__14, inputs_7__13, inputs_7__12, 
                   inputs_7__11, inputs_7__10, inputs_7__9, inputs_7__8, 
                   inputs_7__7, inputs_7__6, inputs_7__5, inputs_7__4, 
                   inputs_7__3, inputs_7__2, inputs_7__1, inputs_7__0, 
                   inputs_8__15, inputs_8__14, inputs_8__13, inputs_8__12, 
                   inputs_8__11, inputs_8__10, inputs_8__9, inputs_8__8, 
                   inputs_8__7, inputs_8__6, inputs_8__5, inputs_8__4, 
                   inputs_8__3, inputs_8__2, inputs_8__1, inputs_8__0, 
                   inputs_9__15, inputs_9__14, inputs_9__13, inputs_9__12, 
                   inputs_9__11, inputs_9__10, inputs_9__9, inputs_9__8, 
                   inputs_9__7, inputs_9__6, inputs_9__5, inputs_9__4, 
                   inputs_9__3, inputs_9__2, inputs_9__1, inputs_9__0, 
                   inputs_10__15, inputs_10__14, inputs_10__13, inputs_10__12, 
                   inputs_10__11, inputs_10__10, inputs_10__9, inputs_10__8, 
                   inputs_10__7, inputs_10__6, inputs_10__5, inputs_10__4, 
                   inputs_10__3, inputs_10__2, inputs_10__1, inputs_10__0, 
                   inputs_11__15, inputs_11__14, inputs_11__13, inputs_11__12, 
                   inputs_11__11, inputs_11__10, inputs_11__9, inputs_11__8, 
                   inputs_11__7, inputs_11__6, inputs_11__5, inputs_11__4, 
                   inputs_11__3, inputs_11__2, inputs_11__1, inputs_11__0, 
                   inputs_12__15, inputs_12__14, inputs_12__13, inputs_12__12, 
                   inputs_12__11, inputs_12__10, inputs_12__9, inputs_12__8, 
                   inputs_12__7, inputs_12__6, inputs_12__5, inputs_12__4, 
                   inputs_12__3, inputs_12__2, inputs_12__1, inputs_12__0, 
                   inputs_13__15, inputs_13__14, inputs_13__13, inputs_13__12, 
                   inputs_13__11, inputs_13__10, inputs_13__9, inputs_13__8, 
                   inputs_13__7, inputs_13__6, inputs_13__5, inputs_13__4, 
                   inputs_13__3, inputs_13__2, inputs_13__1, inputs_13__0, 
                   inputs_14__15, inputs_14__14, inputs_14__13, inputs_14__12, 
                   inputs_14__11, inputs_14__10, inputs_14__9, inputs_14__8, 
                   inputs_14__7, inputs_14__6, inputs_14__5, inputs_14__4, 
                   inputs_14__3, inputs_14__2, inputs_14__1, inputs_14__0, 
                   inputs_15__15, inputs_15__14, inputs_15__13, inputs_15__12, 
                   inputs_15__11, inputs_15__10, inputs_15__9, inputs_15__8, 
                   inputs_15__7, inputs_15__6, inputs_15__5, inputs_15__4, 
                   inputs_15__3, inputs_15__2, inputs_15__1, inputs_15__0, 
                   inputs_16__15, inputs_16__14, inputs_16__13, inputs_16__12, 
                   inputs_16__11, inputs_16__10, inputs_16__9, inputs_16__8, 
                   inputs_16__7, inputs_16__6, inputs_16__5, inputs_16__4, 
                   inputs_16__3, inputs_16__2, inputs_16__1, inputs_16__0, 
                   inputs_17__15, inputs_17__14, inputs_17__13, inputs_17__12, 
                   inputs_17__11, inputs_17__10, inputs_17__9, inputs_17__8, 
                   inputs_17__7, inputs_17__6, inputs_17__5, inputs_17__4, 
                   inputs_17__3, inputs_17__2, inputs_17__1, inputs_17__0, 
                   inputs_18__15, inputs_18__14, inputs_18__13, inputs_18__12, 
                   inputs_18__11, inputs_18__10, inputs_18__9, inputs_18__8, 
                   inputs_18__7, inputs_18__6, inputs_18__5, inputs_18__4, 
                   inputs_18__3, inputs_18__2, inputs_18__1, inputs_18__0, 
                   inputs_19__15, inputs_19__14, inputs_19__13, inputs_19__12, 
                   inputs_19__11, inputs_19__10, inputs_19__9, inputs_19__8, 
                   inputs_19__7, inputs_19__6, inputs_19__5, inputs_19__4, 
                   inputs_19__3, inputs_19__2, inputs_19__1, inputs_19__0, 
                   inputs_20__15, inputs_20__14, inputs_20__13, inputs_20__12, 
                   inputs_20__11, inputs_20__10, inputs_20__9, inputs_20__8, 
                   inputs_20__7, inputs_20__6, inputs_20__5, inputs_20__4, 
                   inputs_20__3, inputs_20__2, inputs_20__1, inputs_20__0, 
                   inputs_21__15, inputs_21__14, inputs_21__13, inputs_21__12, 
                   inputs_21__11, inputs_21__10, inputs_21__9, inputs_21__8, 
                   inputs_21__7, inputs_21__6, inputs_21__5, inputs_21__4, 
                   inputs_21__3, inputs_21__2, inputs_21__1, inputs_21__0, 
                   inputs_22__15, inputs_22__14, inputs_22__13, inputs_22__12, 
                   inputs_22__11, inputs_22__10, inputs_22__9, inputs_22__8, 
                   inputs_22__7, inputs_22__6, inputs_22__5, inputs_22__4, 
                   inputs_22__3, inputs_22__2, inputs_22__1, inputs_22__0, 
                   inputs_23__15, inputs_23__14, inputs_23__13, inputs_23__12, 
                   inputs_23__11, inputs_23__10, inputs_23__9, inputs_23__8, 
                   inputs_23__7, inputs_23__6, inputs_23__5, inputs_23__4, 
                   inputs_23__3, inputs_23__2, inputs_23__1, inputs_23__0, 
                   inputs_24__15, inputs_24__14, inputs_24__13, inputs_24__12, 
                   inputs_24__11, inputs_24__10, inputs_24__9, inputs_24__8, 
                   inputs_24__7, inputs_24__6, inputs_24__5, inputs_24__4, 
                   inputs_24__3, inputs_24__2, inputs_24__1, inputs_24__0, 
                   filterType, finalSum ) ;

    input inputs_0__15 ;
    input inputs_0__14 ;
    input inputs_0__13 ;
    input inputs_0__12 ;
    input inputs_0__11 ;
    input inputs_0__10 ;
    input inputs_0__9 ;
    input inputs_0__8 ;
    input inputs_0__7 ;
    input inputs_0__6 ;
    input inputs_0__5 ;
    input inputs_0__4 ;
    input inputs_0__3 ;
    input inputs_0__2 ;
    input inputs_0__1 ;
    input inputs_0__0 ;
    input inputs_1__15 ;
    input inputs_1__14 ;
    input inputs_1__13 ;
    input inputs_1__12 ;
    input inputs_1__11 ;
    input inputs_1__10 ;
    input inputs_1__9 ;
    input inputs_1__8 ;
    input inputs_1__7 ;
    input inputs_1__6 ;
    input inputs_1__5 ;
    input inputs_1__4 ;
    input inputs_1__3 ;
    input inputs_1__2 ;
    input inputs_1__1 ;
    input inputs_1__0 ;
    input inputs_2__15 ;
    input inputs_2__14 ;
    input inputs_2__13 ;
    input inputs_2__12 ;
    input inputs_2__11 ;
    input inputs_2__10 ;
    input inputs_2__9 ;
    input inputs_2__8 ;
    input inputs_2__7 ;
    input inputs_2__6 ;
    input inputs_2__5 ;
    input inputs_2__4 ;
    input inputs_2__3 ;
    input inputs_2__2 ;
    input inputs_2__1 ;
    input inputs_2__0 ;
    input inputs_3__15 ;
    input inputs_3__14 ;
    input inputs_3__13 ;
    input inputs_3__12 ;
    input inputs_3__11 ;
    input inputs_3__10 ;
    input inputs_3__9 ;
    input inputs_3__8 ;
    input inputs_3__7 ;
    input inputs_3__6 ;
    input inputs_3__5 ;
    input inputs_3__4 ;
    input inputs_3__3 ;
    input inputs_3__2 ;
    input inputs_3__1 ;
    input inputs_3__0 ;
    input inputs_4__15 ;
    input inputs_4__14 ;
    input inputs_4__13 ;
    input inputs_4__12 ;
    input inputs_4__11 ;
    input inputs_4__10 ;
    input inputs_4__9 ;
    input inputs_4__8 ;
    input inputs_4__7 ;
    input inputs_4__6 ;
    input inputs_4__5 ;
    input inputs_4__4 ;
    input inputs_4__3 ;
    input inputs_4__2 ;
    input inputs_4__1 ;
    input inputs_4__0 ;
    input inputs_5__15 ;
    input inputs_5__14 ;
    input inputs_5__13 ;
    input inputs_5__12 ;
    input inputs_5__11 ;
    input inputs_5__10 ;
    input inputs_5__9 ;
    input inputs_5__8 ;
    input inputs_5__7 ;
    input inputs_5__6 ;
    input inputs_5__5 ;
    input inputs_5__4 ;
    input inputs_5__3 ;
    input inputs_5__2 ;
    input inputs_5__1 ;
    input inputs_5__0 ;
    input inputs_6__15 ;
    input inputs_6__14 ;
    input inputs_6__13 ;
    input inputs_6__12 ;
    input inputs_6__11 ;
    input inputs_6__10 ;
    input inputs_6__9 ;
    input inputs_6__8 ;
    input inputs_6__7 ;
    input inputs_6__6 ;
    input inputs_6__5 ;
    input inputs_6__4 ;
    input inputs_6__3 ;
    input inputs_6__2 ;
    input inputs_6__1 ;
    input inputs_6__0 ;
    input inputs_7__15 ;
    input inputs_7__14 ;
    input inputs_7__13 ;
    input inputs_7__12 ;
    input inputs_7__11 ;
    input inputs_7__10 ;
    input inputs_7__9 ;
    input inputs_7__8 ;
    input inputs_7__7 ;
    input inputs_7__6 ;
    input inputs_7__5 ;
    input inputs_7__4 ;
    input inputs_7__3 ;
    input inputs_7__2 ;
    input inputs_7__1 ;
    input inputs_7__0 ;
    input inputs_8__15 ;
    input inputs_8__14 ;
    input inputs_8__13 ;
    input inputs_8__12 ;
    input inputs_8__11 ;
    input inputs_8__10 ;
    input inputs_8__9 ;
    input inputs_8__8 ;
    input inputs_8__7 ;
    input inputs_8__6 ;
    input inputs_8__5 ;
    input inputs_8__4 ;
    input inputs_8__3 ;
    input inputs_8__2 ;
    input inputs_8__1 ;
    input inputs_8__0 ;
    input inputs_9__15 ;
    input inputs_9__14 ;
    input inputs_9__13 ;
    input inputs_9__12 ;
    input inputs_9__11 ;
    input inputs_9__10 ;
    input inputs_9__9 ;
    input inputs_9__8 ;
    input inputs_9__7 ;
    input inputs_9__6 ;
    input inputs_9__5 ;
    input inputs_9__4 ;
    input inputs_9__3 ;
    input inputs_9__2 ;
    input inputs_9__1 ;
    input inputs_9__0 ;
    input inputs_10__15 ;
    input inputs_10__14 ;
    input inputs_10__13 ;
    input inputs_10__12 ;
    input inputs_10__11 ;
    input inputs_10__10 ;
    input inputs_10__9 ;
    input inputs_10__8 ;
    input inputs_10__7 ;
    input inputs_10__6 ;
    input inputs_10__5 ;
    input inputs_10__4 ;
    input inputs_10__3 ;
    input inputs_10__2 ;
    input inputs_10__1 ;
    input inputs_10__0 ;
    input inputs_11__15 ;
    input inputs_11__14 ;
    input inputs_11__13 ;
    input inputs_11__12 ;
    input inputs_11__11 ;
    input inputs_11__10 ;
    input inputs_11__9 ;
    input inputs_11__8 ;
    input inputs_11__7 ;
    input inputs_11__6 ;
    input inputs_11__5 ;
    input inputs_11__4 ;
    input inputs_11__3 ;
    input inputs_11__2 ;
    input inputs_11__1 ;
    input inputs_11__0 ;
    input inputs_12__15 ;
    input inputs_12__14 ;
    input inputs_12__13 ;
    input inputs_12__12 ;
    input inputs_12__11 ;
    input inputs_12__10 ;
    input inputs_12__9 ;
    input inputs_12__8 ;
    input inputs_12__7 ;
    input inputs_12__6 ;
    input inputs_12__5 ;
    input inputs_12__4 ;
    input inputs_12__3 ;
    input inputs_12__2 ;
    input inputs_12__1 ;
    input inputs_12__0 ;
    input inputs_13__15 ;
    input inputs_13__14 ;
    input inputs_13__13 ;
    input inputs_13__12 ;
    input inputs_13__11 ;
    input inputs_13__10 ;
    input inputs_13__9 ;
    input inputs_13__8 ;
    input inputs_13__7 ;
    input inputs_13__6 ;
    input inputs_13__5 ;
    input inputs_13__4 ;
    input inputs_13__3 ;
    input inputs_13__2 ;
    input inputs_13__1 ;
    input inputs_13__0 ;
    input inputs_14__15 ;
    input inputs_14__14 ;
    input inputs_14__13 ;
    input inputs_14__12 ;
    input inputs_14__11 ;
    input inputs_14__10 ;
    input inputs_14__9 ;
    input inputs_14__8 ;
    input inputs_14__7 ;
    input inputs_14__6 ;
    input inputs_14__5 ;
    input inputs_14__4 ;
    input inputs_14__3 ;
    input inputs_14__2 ;
    input inputs_14__1 ;
    input inputs_14__0 ;
    input inputs_15__15 ;
    input inputs_15__14 ;
    input inputs_15__13 ;
    input inputs_15__12 ;
    input inputs_15__11 ;
    input inputs_15__10 ;
    input inputs_15__9 ;
    input inputs_15__8 ;
    input inputs_15__7 ;
    input inputs_15__6 ;
    input inputs_15__5 ;
    input inputs_15__4 ;
    input inputs_15__3 ;
    input inputs_15__2 ;
    input inputs_15__1 ;
    input inputs_15__0 ;
    input inputs_16__15 ;
    input inputs_16__14 ;
    input inputs_16__13 ;
    input inputs_16__12 ;
    input inputs_16__11 ;
    input inputs_16__10 ;
    input inputs_16__9 ;
    input inputs_16__8 ;
    input inputs_16__7 ;
    input inputs_16__6 ;
    input inputs_16__5 ;
    input inputs_16__4 ;
    input inputs_16__3 ;
    input inputs_16__2 ;
    input inputs_16__1 ;
    input inputs_16__0 ;
    input inputs_17__15 ;
    input inputs_17__14 ;
    input inputs_17__13 ;
    input inputs_17__12 ;
    input inputs_17__11 ;
    input inputs_17__10 ;
    input inputs_17__9 ;
    input inputs_17__8 ;
    input inputs_17__7 ;
    input inputs_17__6 ;
    input inputs_17__5 ;
    input inputs_17__4 ;
    input inputs_17__3 ;
    input inputs_17__2 ;
    input inputs_17__1 ;
    input inputs_17__0 ;
    input inputs_18__15 ;
    input inputs_18__14 ;
    input inputs_18__13 ;
    input inputs_18__12 ;
    input inputs_18__11 ;
    input inputs_18__10 ;
    input inputs_18__9 ;
    input inputs_18__8 ;
    input inputs_18__7 ;
    input inputs_18__6 ;
    input inputs_18__5 ;
    input inputs_18__4 ;
    input inputs_18__3 ;
    input inputs_18__2 ;
    input inputs_18__1 ;
    input inputs_18__0 ;
    input inputs_19__15 ;
    input inputs_19__14 ;
    input inputs_19__13 ;
    input inputs_19__12 ;
    input inputs_19__11 ;
    input inputs_19__10 ;
    input inputs_19__9 ;
    input inputs_19__8 ;
    input inputs_19__7 ;
    input inputs_19__6 ;
    input inputs_19__5 ;
    input inputs_19__4 ;
    input inputs_19__3 ;
    input inputs_19__2 ;
    input inputs_19__1 ;
    input inputs_19__0 ;
    input inputs_20__15 ;
    input inputs_20__14 ;
    input inputs_20__13 ;
    input inputs_20__12 ;
    input inputs_20__11 ;
    input inputs_20__10 ;
    input inputs_20__9 ;
    input inputs_20__8 ;
    input inputs_20__7 ;
    input inputs_20__6 ;
    input inputs_20__5 ;
    input inputs_20__4 ;
    input inputs_20__3 ;
    input inputs_20__2 ;
    input inputs_20__1 ;
    input inputs_20__0 ;
    input inputs_21__15 ;
    input inputs_21__14 ;
    input inputs_21__13 ;
    input inputs_21__12 ;
    input inputs_21__11 ;
    input inputs_21__10 ;
    input inputs_21__9 ;
    input inputs_21__8 ;
    input inputs_21__7 ;
    input inputs_21__6 ;
    input inputs_21__5 ;
    input inputs_21__4 ;
    input inputs_21__3 ;
    input inputs_21__2 ;
    input inputs_21__1 ;
    input inputs_21__0 ;
    input inputs_22__15 ;
    input inputs_22__14 ;
    input inputs_22__13 ;
    input inputs_22__12 ;
    input inputs_22__11 ;
    input inputs_22__10 ;
    input inputs_22__9 ;
    input inputs_22__8 ;
    input inputs_22__7 ;
    input inputs_22__6 ;
    input inputs_22__5 ;
    input inputs_22__4 ;
    input inputs_22__3 ;
    input inputs_22__2 ;
    input inputs_22__1 ;
    input inputs_22__0 ;
    input inputs_23__15 ;
    input inputs_23__14 ;
    input inputs_23__13 ;
    input inputs_23__12 ;
    input inputs_23__11 ;
    input inputs_23__10 ;
    input inputs_23__9 ;
    input inputs_23__8 ;
    input inputs_23__7 ;
    input inputs_23__6 ;
    input inputs_23__5 ;
    input inputs_23__4 ;
    input inputs_23__3 ;
    input inputs_23__2 ;
    input inputs_23__1 ;
    input inputs_23__0 ;
    input inputs_24__15 ;
    input inputs_24__14 ;
    input inputs_24__13 ;
    input inputs_24__12 ;
    input inputs_24__11 ;
    input inputs_24__10 ;
    input inputs_24__9 ;
    input inputs_24__8 ;
    input inputs_24__7 ;
    input inputs_24__6 ;
    input inputs_24__5 ;
    input inputs_24__4 ;
    input inputs_24__3 ;
    input inputs_24__2 ;
    input inputs_24__1 ;
    input inputs_24__0 ;
    input filterType ;
    output [15:0]finalSum ;

    wire sum1_15, sum1_14, sum1_13, sum1_12, sum1_11, sum1_10, sum1_9, sum1_8, 
         sum1_7, sum1_6, sum1_5, sum1_4, sum1_3, sum1_2, sum1_1, sum1_0, sum2_15, 
         sum2_14, sum2_13, sum2_12, sum2_11, sum2_10, sum2_9, sum2_8, sum2_7, 
         sum2_6, sum2_5, sum2_4, sum2_3, sum2_2, sum2_1, sum2_0, sum3_15, 
         sum3_14, sum3_13, sum3_12, sum3_11, sum3_10, sum3_9, sum3_8, sum3_7, 
         sum3_6, sum3_5, sum3_4, sum3_3, sum3_2, sum3_1, sum3_0, sum3Filter_15, 
         sum3Filter_14, sum3Filter_13, sum3Filter_12, sum3Filter_11, 
         sum3Filter_10, sum3Filter_9, sum3Filter_8, sum3Filter_7, sum3Filter_6, 
         sum3Filter_5, sum3Filter_4, sum3Filter_3, sum3Filter_2, sum3Filter_1, 
         sum3Filter_0, sum4_15, sum4_14, sum4_13, sum4_12, sum4_11, sum4_10, 
         sum4_9, sum4_8, sum4_7, sum4_6, sum4_5, sum4_4, sum4_3, sum4_2, sum4_1, 
         sum4_0, totalSum_15, totalSum_14, totalSum_13, totalSum_12, totalSum_11, 
         totalSum_10, totalSum_9, totalSum_8, totalSum_7, totalSum_6, totalSum_5, 
         totalSum_4, totalSum_3, totalSum_2, totalSum_1, totalSum_0, 
         sum1Map_sum1_15__dup_0, sum1Map_sum1_14__dup_0, sum1Map_sum1_13__dup_0, 
         sum1Map_sum1_12__dup_0, sum1Map_sum1_11__dup_0, sum1Map_sum1_10__dup_0, 
         sum1Map_sum1_9__dup_0, sum1Map_sum1_8__dup_0, sum1Map_sum1_7__dup_0, 
         sum1Map_sum1_6__dup_0, sum1Map_sum1_5__dup_0, sum1Map_sum1_4__dup_0, 
         sum1Map_sum1_3__dup_0, sum1Map_sum1_2__dup_0, sum1Map_sum1_1__dup_0, 
         sum1Map_sum1_0__dup_0, sum1Map_sum2_15__dup_0, sum1Map_sum2_14__dup_0, 
         sum1Map_sum2_13__dup_0, sum1Map_sum2_12__dup_0, sum1Map_sum2_11__dup_0, 
         sum1Map_sum2_10__dup_0, sum1Map_sum2_9__dup_0, sum1Map_sum2_8__dup_0, 
         sum1Map_sum2_7__dup_0, sum1Map_sum2_6__dup_0, sum1Map_sum2_5__dup_0, 
         sum1Map_sum2_4__dup_0, sum1Map_sum2_3__dup_0, sum1Map_sum2_2__dup_0, 
         sum1Map_sum2_1__dup_0, sum1Map_sum2_0__dup_0, sum1Map_sum1Map_sum1_15, 
         sum1Map_sum1Map_sum1_14, sum1Map_sum1Map_sum1_13, 
         sum1Map_sum1Map_sum1_12, sum1Map_sum1Map_sum1_11, 
         sum1Map_sum1Map_sum1_10, sum1Map_sum1Map_sum1_9, sum1Map_sum1Map_sum1_8, 
         sum1Map_sum1Map_sum1_7, sum1Map_sum1Map_sum1_6, sum1Map_sum1Map_sum1_5, 
         sum1Map_sum1Map_sum1_4, sum1Map_sum1Map_sum1_3, sum1Map_sum1Map_sum1_2, 
         sum1Map_sum1Map_sum1_1, sum1Map_sum1Map_sum1_0, sum1Map_sum1Map_sum2_15, 
         sum1Map_sum1Map_sum2_14, sum1Map_sum1Map_sum2_13, 
         sum1Map_sum1Map_sum2_12, sum1Map_sum1Map_sum2_11, 
         sum1Map_sum1Map_sum2_10, sum1Map_sum1Map_sum2_9, sum1Map_sum1Map_sum2_8, 
         sum1Map_sum1Map_sum2_7, sum1Map_sum1Map_sum2_6, sum1Map_sum1Map_sum2_5, 
         sum1Map_sum1Map_sum2_4, sum1Map_sum1Map_sum2_3, sum1Map_sum1Map_sum2_2, 
         sum1Map_sum1Map_sum2_1, sum1Map_sum1Map_sum2_0, sum1Map_sum2Map_sum1_15, 
         sum1Map_sum2Map_sum1_14, sum1Map_sum2Map_sum1_13, 
         sum1Map_sum2Map_sum1_12, sum1Map_sum2Map_sum1_11, 
         sum1Map_sum2Map_sum1_10, sum1Map_sum2Map_sum1_9, sum1Map_sum2Map_sum1_8, 
         sum1Map_sum2Map_sum1_7, sum1Map_sum2Map_sum1_6, sum1Map_sum2Map_sum1_5, 
         sum1Map_sum2Map_sum1_4, sum1Map_sum2Map_sum1_3, sum1Map_sum2Map_sum1_2, 
         sum1Map_sum2Map_sum1_1, sum1Map_sum2Map_sum1_0, sum1Map_sum2Map_sum2_15, 
         sum1Map_sum2Map_sum2_14, sum1Map_sum2Map_sum2_13, 
         sum1Map_sum2Map_sum2_12, sum1Map_sum2Map_sum2_11, 
         sum1Map_sum2Map_sum2_10, sum1Map_sum2Map_sum2_9, sum1Map_sum2Map_sum2_8, 
         sum1Map_sum2Map_sum2_7, sum1Map_sum2Map_sum2_6, sum1Map_sum2Map_sum2_5, 
         sum1Map_sum2Map_sum2_4, sum1Map_sum2Map_sum2_3, sum1Map_sum2Map_sum2_2, 
         sum1Map_sum2Map_sum2_1, sum1Map_sum2Map_sum2_0, sum2Map_sum1_15__dup_0, 
         sum2Map_sum1_14__dup_0, sum2Map_sum1_13__dup_0, sum2Map_sum1_12__dup_0, 
         sum2Map_sum1_11__dup_0, sum2Map_sum1_10__dup_0, sum2Map_sum1_9__dup_0, 
         sum2Map_sum1_8__dup_0, sum2Map_sum1_7__dup_0, sum2Map_sum1_6__dup_0, 
         sum2Map_sum1_5__dup_0, sum2Map_sum1_4__dup_0, sum2Map_sum1_3__dup_0, 
         sum2Map_sum1_2__dup_0, sum2Map_sum1_1__dup_0, sum2Map_sum1_0__dup_0, 
         sum2Map_sum2_15__dup_0, sum2Map_sum2_14__dup_0, sum2Map_sum2_13__dup_0, 
         sum2Map_sum2_12__dup_0, sum2Map_sum2_11__dup_0, sum2Map_sum2_10__dup_0, 
         sum2Map_sum2_9__dup_0, sum2Map_sum2_8__dup_0, sum2Map_sum2_7__dup_0, 
         sum2Map_sum2_6__dup_0, sum2Map_sum2_5__dup_0, sum2Map_sum2_4__dup_0, 
         sum2Map_sum2_3__dup_0, sum2Map_sum2_2__dup_0, sum2Map_sum2_1__dup_0, 
         sum2Map_sum2_0__dup_0, sum2Map_sum1Map_sum1_15, sum2Map_sum1Map_sum1_14, 
         sum2Map_sum1Map_sum1_13, sum2Map_sum1Map_sum1_12, 
         sum2Map_sum1Map_sum1_11, sum2Map_sum1Map_sum1_10, 
         sum2Map_sum1Map_sum1_9, sum2Map_sum1Map_sum1_8, sum2Map_sum1Map_sum1_7, 
         sum2Map_sum1Map_sum1_6, sum2Map_sum1Map_sum1_5, sum2Map_sum1Map_sum1_4, 
         sum2Map_sum1Map_sum1_3, sum2Map_sum1Map_sum1_2, sum2Map_sum1Map_sum1_1, 
         sum2Map_sum1Map_sum1_0, sum2Map_sum1Map_sum2_15, 
         sum2Map_sum1Map_sum2_14, sum2Map_sum1Map_sum2_13, 
         sum2Map_sum1Map_sum2_12, sum2Map_sum1Map_sum2_11, 
         sum2Map_sum1Map_sum2_10, sum2Map_sum1Map_sum2_9, sum2Map_sum1Map_sum2_8, 
         sum2Map_sum1Map_sum2_7, sum2Map_sum1Map_sum2_6, sum2Map_sum1Map_sum2_5, 
         sum2Map_sum1Map_sum2_4, sum2Map_sum1Map_sum2_3, sum2Map_sum1Map_sum2_2, 
         sum2Map_sum1Map_sum2_1, sum2Map_sum1Map_sum2_0, sum2Map_sum2Map_sum1_15, 
         sum2Map_sum2Map_sum1_14, sum2Map_sum2Map_sum1_13, 
         sum2Map_sum2Map_sum1_12, sum2Map_sum2Map_sum1_11, 
         sum2Map_sum2Map_sum1_10, sum2Map_sum2Map_sum1_9, sum2Map_sum2Map_sum1_8, 
         sum2Map_sum2Map_sum1_7, sum2Map_sum2Map_sum1_6, sum2Map_sum2Map_sum1_5, 
         sum2Map_sum2Map_sum1_4, sum2Map_sum2Map_sum1_3, sum2Map_sum2Map_sum1_2, 
         sum2Map_sum2Map_sum1_1, sum2Map_sum2Map_sum1_0, sum2Map_sum2Map_sum2_15, 
         sum2Map_sum2Map_sum2_14, sum2Map_sum2Map_sum2_13, 
         sum2Map_sum2Map_sum2_12, sum2Map_sum2Map_sum2_11, 
         sum2Map_sum2Map_sum2_10, sum2Map_sum2Map_sum2_9, sum2Map_sum2Map_sum2_8, 
         sum2Map_sum2Map_sum2_7, sum2Map_sum2Map_sum2_6, sum2Map_sum2Map_sum2_5, 
         sum2Map_sum2Map_sum2_4, sum2Map_sum2Map_sum2_3, sum2Map_sum2Map_sum2_2, 
         sum2Map_sum2Map_sum2_1, sum2Map_sum2Map_sum2_0, sum3Map_sum1_15, 
         sum3Map_sum1_14, sum3Map_sum1_13, sum3Map_sum1_12, sum3Map_sum1_11, 
         sum3Map_sum1_10, sum3Map_sum1_9, sum3Map_sum1_8, sum3Map_sum1_7, 
         sum3Map_sum1_6, sum3Map_sum1_5, sum3Map_sum1_4, sum3Map_sum1_3, 
         sum3Map_sum1_2, sum3Map_sum1_1, sum3Map_sum1_0, sum3Map_sum2_15, 
         sum3Map_sum2_14, sum3Map_sum2_13, sum3Map_sum2_12, sum3Map_sum2_11, 
         sum3Map_sum2_10, sum3Map_sum2_9, sum3Map_sum2_8, sum3Map_sum2_7, 
         sum3Map_sum2_6, sum3Map_sum2_5, sum3Map_sum2_4, sum3Map_sum2_3, 
         sum3Map_sum2_2, sum3Map_sum2_1, sum3Map_sum2_0, sum3Map_sum1Map_sum1_15, 
         sum3Map_sum1Map_sum1_14, sum3Map_sum1Map_sum1_13, 
         sum3Map_sum1Map_sum1_12, sum3Map_sum1Map_sum1_11, 
         sum3Map_sum1Map_sum1_10, sum3Map_sum1Map_sum1_9, sum3Map_sum1Map_sum1_8, 
         sum3Map_sum1Map_sum1_7, sum3Map_sum1Map_sum1_6, sum3Map_sum1Map_sum1_5, 
         sum3Map_sum1Map_sum1_4, sum3Map_sum1Map_sum1_3, sum3Map_sum1Map_sum1_2, 
         sum3Map_sum1Map_sum1_1, sum3Map_sum1Map_sum1_0, sum3Map_sum1Map_sum2_15, 
         sum3Map_sum1Map_sum2_14, sum3Map_sum1Map_sum2_13, 
         sum3Map_sum1Map_sum2_12, sum3Map_sum1Map_sum2_11, 
         sum3Map_sum1Map_sum2_10, sum3Map_sum1Map_sum2_9, sum3Map_sum1Map_sum2_8, 
         sum3Map_sum1Map_sum2_7, sum3Map_sum1Map_sum2_6, sum3Map_sum1Map_sum2_5, 
         sum3Map_sum1Map_sum2_4, sum3Map_sum1Map_sum2_3, sum3Map_sum1Map_sum2_2, 
         sum3Map_sum1Map_sum2_1, sum3Map_sum1Map_sum2_0, sum3Map_sum2Map_sum1_15, 
         sum3Map_sum2Map_sum1_14, sum3Map_sum2Map_sum1_13, 
         sum3Map_sum2Map_sum1_12, sum3Map_sum2Map_sum1_11, 
         sum3Map_sum2Map_sum1_10, sum3Map_sum2Map_sum1_9, sum3Map_sum2Map_sum1_8, 
         sum3Map_sum2Map_sum1_7, sum3Map_sum2Map_sum1_6, sum3Map_sum2Map_sum1_5, 
         sum3Map_sum2Map_sum1_4, sum3Map_sum2Map_sum1_3, sum3Map_sum2Map_sum1_2, 
         sum3Map_sum2Map_sum1_1, sum3Map_sum2Map_sum1_0, sum3Map_sum2Map_sum2_15, 
         sum3Map_sum2Map_sum2_14, sum3Map_sum2Map_sum2_13, 
         sum3Map_sum2Map_sum2_12, sum3Map_sum2Map_sum2_11, 
         sum3Map_sum2Map_sum2_10, sum3Map_sum2Map_sum2_9, sum3Map_sum2Map_sum2_8, 
         sum3Map_sum2Map_sum2_7, sum3Map_sum2Map_sum2_6, sum3Map_sum2Map_sum2_5, 
         sum3Map_sum2Map_sum2_4, sum3Map_sum2Map_sum2_3, sum3Map_sum2Map_sum2_2, 
         sum3Map_sum2Map_sum2_1, sum3Map_sum2Map_sum2_0, GND, nx670, nx672, 
         nx677, nx679, nx682, nx684, nx687, nx689, nx692, nx694, nx697, nx699, 
         nx702, nx704, nx707, nx709, nx712, nx714, nx717, nx719, nx722, nx724, 
         nx727, nx729, nx732, nx734, nx737, nx739, nx742, nx744, nx747, nx749, 
         nx756, nx758, nx760;
    wire [23:0] \$dummy ;




    NBitAdder_16 sum3FilterMap (.a ({sum1_15,sum1_14,sum1_13,sum1_12,sum1_11,
                 sum1_10,sum1_9,sum1_8,sum1_7,sum1_6,sum1_5,sum1_4,sum1_3,sum1_2
                 ,sum1_1,sum1_0}), .b ({inputs_8__15,inputs_8__14,inputs_8__13,
                 inputs_8__12,inputs_8__11,inputs_8__10,inputs_8__9,inputs_8__8,
                 inputs_8__7,inputs_8__6,inputs_8__5,inputs_8__4,inputs_8__3,
                 inputs_8__2,inputs_8__1,inputs_8__0}), .carryIn (GND), .sum ({
                 sum3Filter_15,sum3Filter_14,sum3Filter_13,sum3Filter_12,
                 sum3Filter_11,sum3Filter_10,sum3Filter_9,sum3Filter_8,
                 sum3Filter_7,sum3Filter_6,sum3Filter_5,sum3Filter_4,
                 sum3Filter_3,sum3Filter_2,sum3Filter_1,sum3Filter_0}), .carryOut (
                 \$dummy [0])) ;
    NBitAdder_16 sumRestMap (.a ({sum2_15,sum2_14,sum2_13,sum2_12,sum2_11,
                 sum2_10,sum2_9,sum2_8,sum2_7,sum2_6,sum2_5,sum2_4,sum2_3,sum2_2
                 ,sum2_1,sum2_0}), .b ({sum3_15,sum3_14,sum3_13,sum3_12,sum3_11,
                 sum3_10,sum3_9,sum3_8,sum3_7,sum3_6,sum3_5,sum3_4,sum3_3,sum3_2
                 ,sum3_1,sum3_0}), .carryIn (GND), .sum ({sum4_15,sum4_14,
                 sum4_13,sum4_12,sum4_11,sum4_10,sum4_9,sum4_8,sum4_7,sum4_6,
                 sum4_5,sum4_4,sum4_3,sum4_2,sum4_1,sum4_0}), .carryOut (
                 \$dummy [1])) ;
    NBitAdder_16 sumFinalMap (.a ({sum3Filter_15,sum3Filter_14,sum3Filter_13,
                 sum3Filter_12,sum3Filter_11,sum3Filter_10,sum3Filter_9,
                 sum3Filter_8,sum3Filter_7,sum3Filter_6,sum3Filter_5,
                 sum3Filter_4,sum3Filter_3,sum3Filter_2,sum3Filter_1,
                 sum3Filter_0}), .b ({sum4_15,sum4_14,sum4_13,sum4_12,sum4_11,
                 sum4_10,sum4_9,sum4_8,sum4_7,sum4_6,sum4_5,sum4_4,sum4_3,sum4_2
                 ,sum4_1,sum4_0}), .carryIn (GND), .sum ({totalSum_15,
                 totalSum_14,totalSum_13,totalSum_12,totalSum_11,totalSum_10,
                 totalSum_9,totalSum_8,totalSum_7,totalSum_6,totalSum_5,
                 totalSum_4,totalSum_3,totalSum_2,totalSum_1,totalSum_0}), .carryOut (
                 \$dummy [2])) ;
    NBitAdder_16 sum1Map_sumFinalMap_dup_0 (.a ({sum1Map_sum1_15__dup_0,
                 sum1Map_sum1_14__dup_0,sum1Map_sum1_13__dup_0,
                 sum1Map_sum1_12__dup_0,sum1Map_sum1_11__dup_0,
                 sum1Map_sum1_10__dup_0,sum1Map_sum1_9__dup_0,
                 sum1Map_sum1_8__dup_0,sum1Map_sum1_7__dup_0,
                 sum1Map_sum1_6__dup_0,sum1Map_sum1_5__dup_0,
                 sum1Map_sum1_4__dup_0,sum1Map_sum1_3__dup_0,
                 sum1Map_sum1_2__dup_0,sum1Map_sum1_1__dup_0,
                 sum1Map_sum1_0__dup_0}), .b ({sum1Map_sum2_15__dup_0,
                 sum1Map_sum2_14__dup_0,sum1Map_sum2_13__dup_0,
                 sum1Map_sum2_12__dup_0,sum1Map_sum2_11__dup_0,
                 sum1Map_sum2_10__dup_0,sum1Map_sum2_9__dup_0,
                 sum1Map_sum2_8__dup_0,sum1Map_sum2_7__dup_0,
                 sum1Map_sum2_6__dup_0,sum1Map_sum2_5__dup_0,
                 sum1Map_sum2_4__dup_0,sum1Map_sum2_3__dup_0,
                 sum1Map_sum2_2__dup_0,sum1Map_sum2_1__dup_0,
                 sum1Map_sum2_0__dup_0}), .carryIn (GND), .sum ({sum1_15,sum1_14
                 ,sum1_13,sum1_12,sum1_11,sum1_10,sum1_9,sum1_8,sum1_7,sum1_6,
                 sum1_5,sum1_4,sum1_3,sum1_2,sum1_1,sum1_0}), .carryOut (
                 \$dummy [3])) ;
    NBitAdder_16 sum1Map_sum1Map_sum1Map (.a ({inputs_0__15,inputs_0__14,
                 inputs_0__13,inputs_0__12,inputs_0__11,inputs_0__10,inputs_0__9
                 ,inputs_0__8,inputs_0__7,inputs_0__6,inputs_0__5,inputs_0__4,
                 inputs_0__3,inputs_0__2,inputs_0__1,inputs_0__0}), .b ({
                 inputs_1__15,inputs_1__14,inputs_1__13,inputs_1__12,
                 inputs_1__11,inputs_1__10,inputs_1__9,inputs_1__8,inputs_1__7,
                 inputs_1__6,inputs_1__5,inputs_1__4,inputs_1__3,inputs_1__2,
                 inputs_1__1,inputs_1__0}), .carryIn (GND), .sum ({
                 sum1Map_sum1Map_sum1_15,sum1Map_sum1Map_sum1_14,
                 sum1Map_sum1Map_sum1_13,sum1Map_sum1Map_sum1_12,
                 sum1Map_sum1Map_sum1_11,sum1Map_sum1Map_sum1_10,
                 sum1Map_sum1Map_sum1_9,sum1Map_sum1Map_sum1_8,
                 sum1Map_sum1Map_sum1_7,sum1Map_sum1Map_sum1_6,
                 sum1Map_sum1Map_sum1_5,sum1Map_sum1Map_sum1_4,
                 sum1Map_sum1Map_sum1_3,sum1Map_sum1Map_sum1_2,
                 sum1Map_sum1Map_sum1_1,sum1Map_sum1Map_sum1_0}), .carryOut (
                 \$dummy [4])) ;
    NBitAdder_16 sum1Map_sum1Map_sum2Map (.a ({inputs_2__15,inputs_2__14,
                 inputs_2__13,inputs_2__12,inputs_2__11,inputs_2__10,inputs_2__9
                 ,inputs_2__8,inputs_2__7,inputs_2__6,inputs_2__5,inputs_2__4,
                 inputs_2__3,inputs_2__2,inputs_2__1,inputs_2__0}), .b ({
                 inputs_3__15,inputs_3__14,inputs_3__13,inputs_3__12,
                 inputs_3__11,inputs_3__10,inputs_3__9,inputs_3__8,inputs_3__7,
                 inputs_3__6,inputs_3__5,inputs_3__4,inputs_3__3,inputs_3__2,
                 inputs_3__1,inputs_3__0}), .carryIn (GND), .sum ({
                 sum1Map_sum1Map_sum2_15,sum1Map_sum1Map_sum2_14,
                 sum1Map_sum1Map_sum2_13,sum1Map_sum1Map_sum2_12,
                 sum1Map_sum1Map_sum2_11,sum1Map_sum1Map_sum2_10,
                 sum1Map_sum1Map_sum2_9,sum1Map_sum1Map_sum2_8,
                 sum1Map_sum1Map_sum2_7,sum1Map_sum1Map_sum2_6,
                 sum1Map_sum1Map_sum2_5,sum1Map_sum1Map_sum2_4,
                 sum1Map_sum1Map_sum2_3,sum1Map_sum1Map_sum2_2,
                 sum1Map_sum1Map_sum2_1,sum1Map_sum1Map_sum2_0}), .carryOut (
                 \$dummy [5])) ;
    NBitAdder_16 sum1Map_sum1Map_sumFinalMap (.a ({sum1Map_sum1Map_sum1_15,
                 sum1Map_sum1Map_sum1_14,sum1Map_sum1Map_sum1_13,
                 sum1Map_sum1Map_sum1_12,sum1Map_sum1Map_sum1_11,
                 sum1Map_sum1Map_sum1_10,sum1Map_sum1Map_sum1_9,
                 sum1Map_sum1Map_sum1_8,sum1Map_sum1Map_sum1_7,
                 sum1Map_sum1Map_sum1_6,sum1Map_sum1Map_sum1_5,
                 sum1Map_sum1Map_sum1_4,sum1Map_sum1Map_sum1_3,
                 sum1Map_sum1Map_sum1_2,sum1Map_sum1Map_sum1_1,
                 sum1Map_sum1Map_sum1_0}), .b ({sum1Map_sum1Map_sum2_15,
                 sum1Map_sum1Map_sum2_14,sum1Map_sum1Map_sum2_13,
                 sum1Map_sum1Map_sum2_12,sum1Map_sum1Map_sum2_11,
                 sum1Map_sum1Map_sum2_10,sum1Map_sum1Map_sum2_9,
                 sum1Map_sum1Map_sum2_8,sum1Map_sum1Map_sum2_7,
                 sum1Map_sum1Map_sum2_6,sum1Map_sum1Map_sum2_5,
                 sum1Map_sum1Map_sum2_4,sum1Map_sum1Map_sum2_3,
                 sum1Map_sum1Map_sum2_2,sum1Map_sum1Map_sum2_1,
                 sum1Map_sum1Map_sum2_0}), .carryIn (GND), .sum ({
                 sum1Map_sum1_15__dup_0,sum1Map_sum1_14__dup_0,
                 sum1Map_sum1_13__dup_0,sum1Map_sum1_12__dup_0,
                 sum1Map_sum1_11__dup_0,sum1Map_sum1_10__dup_0,
                 sum1Map_sum1_9__dup_0,sum1Map_sum1_8__dup_0,
                 sum1Map_sum1_7__dup_0,sum1Map_sum1_6__dup_0,
                 sum1Map_sum1_5__dup_0,sum1Map_sum1_4__dup_0,
                 sum1Map_sum1_3__dup_0,sum1Map_sum1_2__dup_0,
                 sum1Map_sum1_1__dup_0,sum1Map_sum1_0__dup_0}), .carryOut (
                 \$dummy [6])) ;
    NBitAdder_16 sum1Map_sum2Map_sum1Map (.a ({inputs_4__15,inputs_4__14,
                 inputs_4__13,inputs_4__12,inputs_4__11,inputs_4__10,inputs_4__9
                 ,inputs_4__8,inputs_4__7,inputs_4__6,inputs_4__5,inputs_4__4,
                 inputs_4__3,inputs_4__2,inputs_4__1,inputs_4__0}), .b ({
                 inputs_5__15,inputs_5__14,inputs_5__13,inputs_5__12,
                 inputs_5__11,inputs_5__10,inputs_5__9,inputs_5__8,inputs_5__7,
                 inputs_5__6,inputs_5__5,inputs_5__4,inputs_5__3,inputs_5__2,
                 inputs_5__1,inputs_5__0}), .carryIn (GND), .sum ({
                 sum1Map_sum2Map_sum1_15,sum1Map_sum2Map_sum1_14,
                 sum1Map_sum2Map_sum1_13,sum1Map_sum2Map_sum1_12,
                 sum1Map_sum2Map_sum1_11,sum1Map_sum2Map_sum1_10,
                 sum1Map_sum2Map_sum1_9,sum1Map_sum2Map_sum1_8,
                 sum1Map_sum2Map_sum1_7,sum1Map_sum2Map_sum1_6,
                 sum1Map_sum2Map_sum1_5,sum1Map_sum2Map_sum1_4,
                 sum1Map_sum2Map_sum1_3,sum1Map_sum2Map_sum1_2,
                 sum1Map_sum2Map_sum1_1,sum1Map_sum2Map_sum1_0}), .carryOut (
                 \$dummy [7])) ;
    NBitAdder_16 sum1Map_sum2Map_sum2Map (.a ({inputs_6__15,inputs_6__14,
                 inputs_6__13,inputs_6__12,inputs_6__11,inputs_6__10,inputs_6__9
                 ,inputs_6__8,inputs_6__7,inputs_6__6,inputs_6__5,inputs_6__4,
                 inputs_6__3,inputs_6__2,inputs_6__1,inputs_6__0}), .b ({
                 inputs_7__15,inputs_7__14,inputs_7__13,inputs_7__12,
                 inputs_7__11,inputs_7__10,inputs_7__9,inputs_7__8,inputs_7__7,
                 inputs_7__6,inputs_7__5,inputs_7__4,inputs_7__3,inputs_7__2,
                 inputs_7__1,inputs_7__0}), .carryIn (GND), .sum ({
                 sum1Map_sum2Map_sum2_15,sum1Map_sum2Map_sum2_14,
                 sum1Map_sum2Map_sum2_13,sum1Map_sum2Map_sum2_12,
                 sum1Map_sum2Map_sum2_11,sum1Map_sum2Map_sum2_10,
                 sum1Map_sum2Map_sum2_9,sum1Map_sum2Map_sum2_8,
                 sum1Map_sum2Map_sum2_7,sum1Map_sum2Map_sum2_6,
                 sum1Map_sum2Map_sum2_5,sum1Map_sum2Map_sum2_4,
                 sum1Map_sum2Map_sum2_3,sum1Map_sum2Map_sum2_2,
                 sum1Map_sum2Map_sum2_1,sum1Map_sum2Map_sum2_0}), .carryOut (
                 \$dummy [8])) ;
    NBitAdder_16 sum1Map_sum2Map_sumFinalMap (.a ({sum1Map_sum2Map_sum1_15,
                 sum1Map_sum2Map_sum1_14,sum1Map_sum2Map_sum1_13,
                 sum1Map_sum2Map_sum1_12,sum1Map_sum2Map_sum1_11,
                 sum1Map_sum2Map_sum1_10,sum1Map_sum2Map_sum1_9,
                 sum1Map_sum2Map_sum1_8,sum1Map_sum2Map_sum1_7,
                 sum1Map_sum2Map_sum1_6,sum1Map_sum2Map_sum1_5,
                 sum1Map_sum2Map_sum1_4,sum1Map_sum2Map_sum1_3,
                 sum1Map_sum2Map_sum1_2,sum1Map_sum2Map_sum1_1,
                 sum1Map_sum2Map_sum1_0}), .b ({sum1Map_sum2Map_sum2_15,
                 sum1Map_sum2Map_sum2_14,sum1Map_sum2Map_sum2_13,
                 sum1Map_sum2Map_sum2_12,sum1Map_sum2Map_sum2_11,
                 sum1Map_sum2Map_sum2_10,sum1Map_sum2Map_sum2_9,
                 sum1Map_sum2Map_sum2_8,sum1Map_sum2Map_sum2_7,
                 sum1Map_sum2Map_sum2_6,sum1Map_sum2Map_sum2_5,
                 sum1Map_sum2Map_sum2_4,sum1Map_sum2Map_sum2_3,
                 sum1Map_sum2Map_sum2_2,sum1Map_sum2Map_sum2_1,
                 sum1Map_sum2Map_sum2_0}), .carryIn (GND), .sum ({
                 sum1Map_sum2_15__dup_0,sum1Map_sum2_14__dup_0,
                 sum1Map_sum2_13__dup_0,sum1Map_sum2_12__dup_0,
                 sum1Map_sum2_11__dup_0,sum1Map_sum2_10__dup_0,
                 sum1Map_sum2_9__dup_0,sum1Map_sum2_8__dup_0,
                 sum1Map_sum2_7__dup_0,sum1Map_sum2_6__dup_0,
                 sum1Map_sum2_5__dup_0,sum1Map_sum2_4__dup_0,
                 sum1Map_sum2_3__dup_0,sum1Map_sum2_2__dup_0,
                 sum1Map_sum2_1__dup_0,sum1Map_sum2_0__dup_0}), .carryOut (
                 \$dummy [9])) ;
    NBitAdder_16 sum2Map_sumFinalMap_dup_0 (.a ({sum2Map_sum1_15__dup_0,
                 sum2Map_sum1_14__dup_0,sum2Map_sum1_13__dup_0,
                 sum2Map_sum1_12__dup_0,sum2Map_sum1_11__dup_0,
                 sum2Map_sum1_10__dup_0,sum2Map_sum1_9__dup_0,
                 sum2Map_sum1_8__dup_0,sum2Map_sum1_7__dup_0,
                 sum2Map_sum1_6__dup_0,sum2Map_sum1_5__dup_0,
                 sum2Map_sum1_4__dup_0,sum2Map_sum1_3__dup_0,
                 sum2Map_sum1_2__dup_0,sum2Map_sum1_1__dup_0,
                 sum2Map_sum1_0__dup_0}), .b ({sum2Map_sum2_15__dup_0,
                 sum2Map_sum2_14__dup_0,sum2Map_sum2_13__dup_0,
                 sum2Map_sum2_12__dup_0,sum2Map_sum2_11__dup_0,
                 sum2Map_sum2_10__dup_0,sum2Map_sum2_9__dup_0,
                 sum2Map_sum2_8__dup_0,sum2Map_sum2_7__dup_0,
                 sum2Map_sum2_6__dup_0,sum2Map_sum2_5__dup_0,
                 sum2Map_sum2_4__dup_0,sum2Map_sum2_3__dup_0,
                 sum2Map_sum2_2__dup_0,sum2Map_sum2_1__dup_0,
                 sum2Map_sum2_0__dup_0}), .carryIn (GND), .sum ({sum2_15,sum2_14
                 ,sum2_13,sum2_12,sum2_11,sum2_10,sum2_9,sum2_8,sum2_7,sum2_6,
                 sum2_5,sum2_4,sum2_3,sum2_2,sum2_1,sum2_0}), .carryOut (
                 \$dummy [10])) ;
    NBitAdder_16 sum2Map_sum1Map_sum1Map (.a ({inputs_9__15,inputs_9__14,
                 inputs_9__13,inputs_9__12,inputs_9__11,inputs_9__10,inputs_9__9
                 ,inputs_9__8,inputs_9__7,inputs_9__6,inputs_9__5,inputs_9__4,
                 inputs_9__3,inputs_9__2,inputs_9__1,inputs_9__0}), .b ({
                 inputs_10__15,inputs_10__14,inputs_10__13,inputs_10__12,
                 inputs_10__11,inputs_10__10,inputs_10__9,inputs_10__8,
                 inputs_10__7,inputs_10__6,inputs_10__5,inputs_10__4,
                 inputs_10__3,inputs_10__2,inputs_10__1,inputs_10__0}), .carryIn (
                 GND), .sum ({sum2Map_sum1Map_sum1_15,sum2Map_sum1Map_sum1_14,
                 sum2Map_sum1Map_sum1_13,sum2Map_sum1Map_sum1_12,
                 sum2Map_sum1Map_sum1_11,sum2Map_sum1Map_sum1_10,
                 sum2Map_sum1Map_sum1_9,sum2Map_sum1Map_sum1_8,
                 sum2Map_sum1Map_sum1_7,sum2Map_sum1Map_sum1_6,
                 sum2Map_sum1Map_sum1_5,sum2Map_sum1Map_sum1_4,
                 sum2Map_sum1Map_sum1_3,sum2Map_sum1Map_sum1_2,
                 sum2Map_sum1Map_sum1_1,sum2Map_sum1Map_sum1_0}), .carryOut (
                 \$dummy [11])) ;
    NBitAdder_16 sum2Map_sum1Map_sum2Map (.a ({inputs_11__15,inputs_11__14,
                 inputs_11__13,inputs_11__12,inputs_11__11,inputs_11__10,
                 inputs_11__9,inputs_11__8,inputs_11__7,inputs_11__6,
                 inputs_11__5,inputs_11__4,inputs_11__3,inputs_11__2,
                 inputs_11__1,inputs_11__0}), .b ({inputs_12__15,inputs_12__14,
                 inputs_12__13,inputs_12__12,inputs_12__11,inputs_12__10,
                 inputs_12__9,inputs_12__8,inputs_12__7,inputs_12__6,
                 inputs_12__5,inputs_12__4,inputs_12__3,inputs_12__2,
                 inputs_12__1,inputs_12__0}), .carryIn (GND), .sum ({
                 sum2Map_sum1Map_sum2_15,sum2Map_sum1Map_sum2_14,
                 sum2Map_sum1Map_sum2_13,sum2Map_sum1Map_sum2_12,
                 sum2Map_sum1Map_sum2_11,sum2Map_sum1Map_sum2_10,
                 sum2Map_sum1Map_sum2_9,sum2Map_sum1Map_sum2_8,
                 sum2Map_sum1Map_sum2_7,sum2Map_sum1Map_sum2_6,
                 sum2Map_sum1Map_sum2_5,sum2Map_sum1Map_sum2_4,
                 sum2Map_sum1Map_sum2_3,sum2Map_sum1Map_sum2_2,
                 sum2Map_sum1Map_sum2_1,sum2Map_sum1Map_sum2_0}), .carryOut (
                 \$dummy [12])) ;
    NBitAdder_16 sum2Map_sum1Map_sumFinalMap (.a ({sum2Map_sum1Map_sum1_15,
                 sum2Map_sum1Map_sum1_14,sum2Map_sum1Map_sum1_13,
                 sum2Map_sum1Map_sum1_12,sum2Map_sum1Map_sum1_11,
                 sum2Map_sum1Map_sum1_10,sum2Map_sum1Map_sum1_9,
                 sum2Map_sum1Map_sum1_8,sum2Map_sum1Map_sum1_7,
                 sum2Map_sum1Map_sum1_6,sum2Map_sum1Map_sum1_5,
                 sum2Map_sum1Map_sum1_4,sum2Map_sum1Map_sum1_3,
                 sum2Map_sum1Map_sum1_2,sum2Map_sum1Map_sum1_1,
                 sum2Map_sum1Map_sum1_0}), .b ({sum2Map_sum1Map_sum2_15,
                 sum2Map_sum1Map_sum2_14,sum2Map_sum1Map_sum2_13,
                 sum2Map_sum1Map_sum2_12,sum2Map_sum1Map_sum2_11,
                 sum2Map_sum1Map_sum2_10,sum2Map_sum1Map_sum2_9,
                 sum2Map_sum1Map_sum2_8,sum2Map_sum1Map_sum2_7,
                 sum2Map_sum1Map_sum2_6,sum2Map_sum1Map_sum2_5,
                 sum2Map_sum1Map_sum2_4,sum2Map_sum1Map_sum2_3,
                 sum2Map_sum1Map_sum2_2,sum2Map_sum1Map_sum2_1,
                 sum2Map_sum1Map_sum2_0}), .carryIn (GND), .sum ({
                 sum2Map_sum1_15__dup_0,sum2Map_sum1_14__dup_0,
                 sum2Map_sum1_13__dup_0,sum2Map_sum1_12__dup_0,
                 sum2Map_sum1_11__dup_0,sum2Map_sum1_10__dup_0,
                 sum2Map_sum1_9__dup_0,sum2Map_sum1_8__dup_0,
                 sum2Map_sum1_7__dup_0,sum2Map_sum1_6__dup_0,
                 sum2Map_sum1_5__dup_0,sum2Map_sum1_4__dup_0,
                 sum2Map_sum1_3__dup_0,sum2Map_sum1_2__dup_0,
                 sum2Map_sum1_1__dup_0,sum2Map_sum1_0__dup_0}), .carryOut (
                 \$dummy [13])) ;
    NBitAdder_16 sum2Map_sum2Map_sum1Map (.a ({inputs_13__15,inputs_13__14,
                 inputs_13__13,inputs_13__12,inputs_13__11,inputs_13__10,
                 inputs_13__9,inputs_13__8,inputs_13__7,inputs_13__6,
                 inputs_13__5,inputs_13__4,inputs_13__3,inputs_13__2,
                 inputs_13__1,inputs_13__0}), .b ({inputs_14__15,inputs_14__14,
                 inputs_14__13,inputs_14__12,inputs_14__11,inputs_14__10,
                 inputs_14__9,inputs_14__8,inputs_14__7,inputs_14__6,
                 inputs_14__5,inputs_14__4,inputs_14__3,inputs_14__2,
                 inputs_14__1,inputs_14__0}), .carryIn (GND), .sum ({
                 sum2Map_sum2Map_sum1_15,sum2Map_sum2Map_sum1_14,
                 sum2Map_sum2Map_sum1_13,sum2Map_sum2Map_sum1_12,
                 sum2Map_sum2Map_sum1_11,sum2Map_sum2Map_sum1_10,
                 sum2Map_sum2Map_sum1_9,sum2Map_sum2Map_sum1_8,
                 sum2Map_sum2Map_sum1_7,sum2Map_sum2Map_sum1_6,
                 sum2Map_sum2Map_sum1_5,sum2Map_sum2Map_sum1_4,
                 sum2Map_sum2Map_sum1_3,sum2Map_sum2Map_sum1_2,
                 sum2Map_sum2Map_sum1_1,sum2Map_sum2Map_sum1_0}), .carryOut (
                 \$dummy [14])) ;
    NBitAdder_16 sum2Map_sum2Map_sum2Map (.a ({inputs_15__15,inputs_15__14,
                 inputs_15__13,inputs_15__12,inputs_15__11,inputs_15__10,
                 inputs_15__9,inputs_15__8,inputs_15__7,inputs_15__6,
                 inputs_15__5,inputs_15__4,inputs_15__3,inputs_15__2,
                 inputs_15__1,inputs_15__0}), .b ({inputs_16__15,inputs_16__14,
                 inputs_16__13,inputs_16__12,inputs_16__11,inputs_16__10,
                 inputs_16__9,inputs_16__8,inputs_16__7,inputs_16__6,
                 inputs_16__5,inputs_16__4,inputs_16__3,inputs_16__2,
                 inputs_16__1,inputs_16__0}), .carryIn (GND), .sum ({
                 sum2Map_sum2Map_sum2_15,sum2Map_sum2Map_sum2_14,
                 sum2Map_sum2Map_sum2_13,sum2Map_sum2Map_sum2_12,
                 sum2Map_sum2Map_sum2_11,sum2Map_sum2Map_sum2_10,
                 sum2Map_sum2Map_sum2_9,sum2Map_sum2Map_sum2_8,
                 sum2Map_sum2Map_sum2_7,sum2Map_sum2Map_sum2_6,
                 sum2Map_sum2Map_sum2_5,sum2Map_sum2Map_sum2_4,
                 sum2Map_sum2Map_sum2_3,sum2Map_sum2Map_sum2_2,
                 sum2Map_sum2Map_sum2_1,sum2Map_sum2Map_sum2_0}), .carryOut (
                 \$dummy [15])) ;
    NBitAdder_16 sum2Map_sum2Map_sumFinalMap (.a ({sum2Map_sum2Map_sum1_15,
                 sum2Map_sum2Map_sum1_14,sum2Map_sum2Map_sum1_13,
                 sum2Map_sum2Map_sum1_12,sum2Map_sum2Map_sum1_11,
                 sum2Map_sum2Map_sum1_10,sum2Map_sum2Map_sum1_9,
                 sum2Map_sum2Map_sum1_8,sum2Map_sum2Map_sum1_7,
                 sum2Map_sum2Map_sum1_6,sum2Map_sum2Map_sum1_5,
                 sum2Map_sum2Map_sum1_4,sum2Map_sum2Map_sum1_3,
                 sum2Map_sum2Map_sum1_2,sum2Map_sum2Map_sum1_1,
                 sum2Map_sum2Map_sum1_0}), .b ({sum2Map_sum2Map_sum2_15,
                 sum2Map_sum2Map_sum2_14,sum2Map_sum2Map_sum2_13,
                 sum2Map_sum2Map_sum2_12,sum2Map_sum2Map_sum2_11,
                 sum2Map_sum2Map_sum2_10,sum2Map_sum2Map_sum2_9,
                 sum2Map_sum2Map_sum2_8,sum2Map_sum2Map_sum2_7,
                 sum2Map_sum2Map_sum2_6,sum2Map_sum2Map_sum2_5,
                 sum2Map_sum2Map_sum2_4,sum2Map_sum2Map_sum2_3,
                 sum2Map_sum2Map_sum2_2,sum2Map_sum2Map_sum2_1,
                 sum2Map_sum2Map_sum2_0}), .carryIn (GND), .sum ({
                 sum2Map_sum2_15__dup_0,sum2Map_sum2_14__dup_0,
                 sum2Map_sum2_13__dup_0,sum2Map_sum2_12__dup_0,
                 sum2Map_sum2_11__dup_0,sum2Map_sum2_10__dup_0,
                 sum2Map_sum2_9__dup_0,sum2Map_sum2_8__dup_0,
                 sum2Map_sum2_7__dup_0,sum2Map_sum2_6__dup_0,
                 sum2Map_sum2_5__dup_0,sum2Map_sum2_4__dup_0,
                 sum2Map_sum2_3__dup_0,sum2Map_sum2_2__dup_0,
                 sum2Map_sum2_1__dup_0,sum2Map_sum2_0__dup_0}), .carryOut (
                 \$dummy [16])) ;
    NBitAdder_16 sum3Map_sumFinalMap (.a ({sum3Map_sum1_15,sum3Map_sum1_14,
                 sum3Map_sum1_13,sum3Map_sum1_12,sum3Map_sum1_11,sum3Map_sum1_10
                 ,sum3Map_sum1_9,sum3Map_sum1_8,sum3Map_sum1_7,sum3Map_sum1_6,
                 sum3Map_sum1_5,sum3Map_sum1_4,sum3Map_sum1_3,sum3Map_sum1_2,
                 sum3Map_sum1_1,sum3Map_sum1_0}), .b ({sum3Map_sum2_15,
                 sum3Map_sum2_14,sum3Map_sum2_13,sum3Map_sum2_12,sum3Map_sum2_11
                 ,sum3Map_sum2_10,sum3Map_sum2_9,sum3Map_sum2_8,sum3Map_sum2_7,
                 sum3Map_sum2_6,sum3Map_sum2_5,sum3Map_sum2_4,sum3Map_sum2_3,
                 sum3Map_sum2_2,sum3Map_sum2_1,sum3Map_sum2_0}), .carryIn (GND)
                 , .sum ({sum3_15,sum3_14,sum3_13,sum3_12,sum3_11,sum3_10,sum3_9
                 ,sum3_8,sum3_7,sum3_6,sum3_5,sum3_4,sum3_3,sum3_2,sum3_1,sum3_0
                 }), .carryOut (\$dummy [17])) ;
    NBitAdder_16 sum3Map_sum1Map_sum1Map (.a ({inputs_17__15,inputs_17__14,
                 inputs_17__13,inputs_17__12,inputs_17__11,inputs_17__10,
                 inputs_17__9,inputs_17__8,inputs_17__7,inputs_17__6,
                 inputs_17__5,inputs_17__4,inputs_17__3,inputs_17__2,
                 inputs_17__1,inputs_17__0}), .b ({inputs_18__15,inputs_18__14,
                 inputs_18__13,inputs_18__12,inputs_18__11,inputs_18__10,
                 inputs_18__9,inputs_18__8,inputs_18__7,inputs_18__6,
                 inputs_18__5,inputs_18__4,inputs_18__3,inputs_18__2,
                 inputs_18__1,inputs_18__0}), .carryIn (GND), .sum ({
                 sum3Map_sum1Map_sum1_15,sum3Map_sum1Map_sum1_14,
                 sum3Map_sum1Map_sum1_13,sum3Map_sum1Map_sum1_12,
                 sum3Map_sum1Map_sum1_11,sum3Map_sum1Map_sum1_10,
                 sum3Map_sum1Map_sum1_9,sum3Map_sum1Map_sum1_8,
                 sum3Map_sum1Map_sum1_7,sum3Map_sum1Map_sum1_6,
                 sum3Map_sum1Map_sum1_5,sum3Map_sum1Map_sum1_4,
                 sum3Map_sum1Map_sum1_3,sum3Map_sum1Map_sum1_2,
                 sum3Map_sum1Map_sum1_1,sum3Map_sum1Map_sum1_0}), .carryOut (
                 \$dummy [18])) ;
    NBitAdder_16 sum3Map_sum1Map_sum2Map (.a ({inputs_19__15,inputs_19__14,
                 inputs_19__13,inputs_19__12,inputs_19__11,inputs_19__10,
                 inputs_19__9,inputs_19__8,inputs_19__7,inputs_19__6,
                 inputs_19__5,inputs_19__4,inputs_19__3,inputs_19__2,
                 inputs_19__1,inputs_19__0}), .b ({inputs_20__15,inputs_20__14,
                 inputs_20__13,inputs_20__12,inputs_20__11,inputs_20__10,
                 inputs_20__9,inputs_20__8,inputs_20__7,inputs_20__6,
                 inputs_20__5,inputs_20__4,inputs_20__3,inputs_20__2,
                 inputs_20__1,inputs_20__0}), .carryIn (GND), .sum ({
                 sum3Map_sum1Map_sum2_15,sum3Map_sum1Map_sum2_14,
                 sum3Map_sum1Map_sum2_13,sum3Map_sum1Map_sum2_12,
                 sum3Map_sum1Map_sum2_11,sum3Map_sum1Map_sum2_10,
                 sum3Map_sum1Map_sum2_9,sum3Map_sum1Map_sum2_8,
                 sum3Map_sum1Map_sum2_7,sum3Map_sum1Map_sum2_6,
                 sum3Map_sum1Map_sum2_5,sum3Map_sum1Map_sum2_4,
                 sum3Map_sum1Map_sum2_3,sum3Map_sum1Map_sum2_2,
                 sum3Map_sum1Map_sum2_1,sum3Map_sum1Map_sum2_0}), .carryOut (
                 \$dummy [19])) ;
    NBitAdder_16 sum3Map_sum1Map_sumFinalMap (.a ({sum3Map_sum1Map_sum1_15,
                 sum3Map_sum1Map_sum1_14,sum3Map_sum1Map_sum1_13,
                 sum3Map_sum1Map_sum1_12,sum3Map_sum1Map_sum1_11,
                 sum3Map_sum1Map_sum1_10,sum3Map_sum1Map_sum1_9,
                 sum3Map_sum1Map_sum1_8,sum3Map_sum1Map_sum1_7,
                 sum3Map_sum1Map_sum1_6,sum3Map_sum1Map_sum1_5,
                 sum3Map_sum1Map_sum1_4,sum3Map_sum1Map_sum1_3,
                 sum3Map_sum1Map_sum1_2,sum3Map_sum1Map_sum1_1,
                 sum3Map_sum1Map_sum1_0}), .b ({sum3Map_sum1Map_sum2_15,
                 sum3Map_sum1Map_sum2_14,sum3Map_sum1Map_sum2_13,
                 sum3Map_sum1Map_sum2_12,sum3Map_sum1Map_sum2_11,
                 sum3Map_sum1Map_sum2_10,sum3Map_sum1Map_sum2_9,
                 sum3Map_sum1Map_sum2_8,sum3Map_sum1Map_sum2_7,
                 sum3Map_sum1Map_sum2_6,sum3Map_sum1Map_sum2_5,
                 sum3Map_sum1Map_sum2_4,sum3Map_sum1Map_sum2_3,
                 sum3Map_sum1Map_sum2_2,sum3Map_sum1Map_sum2_1,
                 sum3Map_sum1Map_sum2_0}), .carryIn (GND), .sum ({
                 sum3Map_sum1_15,sum3Map_sum1_14,sum3Map_sum1_13,sum3Map_sum1_12
                 ,sum3Map_sum1_11,sum3Map_sum1_10,sum3Map_sum1_9,sum3Map_sum1_8,
                 sum3Map_sum1_7,sum3Map_sum1_6,sum3Map_sum1_5,sum3Map_sum1_4,
                 sum3Map_sum1_3,sum3Map_sum1_2,sum3Map_sum1_1,sum3Map_sum1_0}), 
                 .carryOut (\$dummy [20])) ;
    NBitAdder_16 sum3Map_sum2Map_sum1Map (.a ({inputs_21__15,inputs_21__14,
                 inputs_21__13,inputs_21__12,inputs_21__11,inputs_21__10,
                 inputs_21__9,inputs_21__8,inputs_21__7,inputs_21__6,
                 inputs_21__5,inputs_21__4,inputs_21__3,inputs_21__2,
                 inputs_21__1,inputs_21__0}), .b ({inputs_22__15,inputs_22__14,
                 inputs_22__13,inputs_22__12,inputs_22__11,inputs_22__10,
                 inputs_22__9,inputs_22__8,inputs_22__7,inputs_22__6,
                 inputs_22__5,inputs_22__4,inputs_22__3,inputs_22__2,
                 inputs_22__1,inputs_22__0}), .carryIn (GND), .sum ({
                 sum3Map_sum2Map_sum1_15,sum3Map_sum2Map_sum1_14,
                 sum3Map_sum2Map_sum1_13,sum3Map_sum2Map_sum1_12,
                 sum3Map_sum2Map_sum1_11,sum3Map_sum2Map_sum1_10,
                 sum3Map_sum2Map_sum1_9,sum3Map_sum2Map_sum1_8,
                 sum3Map_sum2Map_sum1_7,sum3Map_sum2Map_sum1_6,
                 sum3Map_sum2Map_sum1_5,sum3Map_sum2Map_sum1_4,
                 sum3Map_sum2Map_sum1_3,sum3Map_sum2Map_sum1_2,
                 sum3Map_sum2Map_sum1_1,sum3Map_sum2Map_sum1_0}), .carryOut (
                 \$dummy [21])) ;
    NBitAdder_16 sum3Map_sum2Map_sum2Map (.a ({inputs_23__15,inputs_23__14,
                 inputs_23__13,inputs_23__12,inputs_23__11,inputs_23__10,
                 inputs_23__9,inputs_23__8,inputs_23__7,inputs_23__6,
                 inputs_23__5,inputs_23__4,inputs_23__3,inputs_23__2,
                 inputs_23__1,inputs_23__0}), .b ({inputs_24__15,inputs_24__14,
                 inputs_24__13,inputs_24__12,inputs_24__11,inputs_24__10,
                 inputs_24__9,inputs_24__8,inputs_24__7,inputs_24__6,
                 inputs_24__5,inputs_24__4,inputs_24__3,inputs_24__2,
                 inputs_24__1,inputs_24__0}), .carryIn (GND), .sum ({
                 sum3Map_sum2Map_sum2_15,sum3Map_sum2Map_sum2_14,
                 sum3Map_sum2Map_sum2_13,sum3Map_sum2Map_sum2_12,
                 sum3Map_sum2Map_sum2_11,sum3Map_sum2Map_sum2_10,
                 sum3Map_sum2Map_sum2_9,sum3Map_sum2Map_sum2_8,
                 sum3Map_sum2Map_sum2_7,sum3Map_sum2Map_sum2_6,
                 sum3Map_sum2Map_sum2_5,sum3Map_sum2Map_sum2_4,
                 sum3Map_sum2Map_sum2_3,sum3Map_sum2Map_sum2_2,
                 sum3Map_sum2Map_sum2_1,sum3Map_sum2Map_sum2_0}), .carryOut (
                 \$dummy [22])) ;
    NBitAdder_16 sum3Map_sum2Map_sumFinalMap (.a ({sum3Map_sum2Map_sum1_15,
                 sum3Map_sum2Map_sum1_14,sum3Map_sum2Map_sum1_13,
                 sum3Map_sum2Map_sum1_12,sum3Map_sum2Map_sum1_11,
                 sum3Map_sum2Map_sum1_10,sum3Map_sum2Map_sum1_9,
                 sum3Map_sum2Map_sum1_8,sum3Map_sum2Map_sum1_7,
                 sum3Map_sum2Map_sum1_6,sum3Map_sum2Map_sum1_5,
                 sum3Map_sum2Map_sum1_4,sum3Map_sum2Map_sum1_3,
                 sum3Map_sum2Map_sum1_2,sum3Map_sum2Map_sum1_1,
                 sum3Map_sum2Map_sum1_0}), .b ({sum3Map_sum2Map_sum2_15,
                 sum3Map_sum2Map_sum2_14,sum3Map_sum2Map_sum2_13,
                 sum3Map_sum2Map_sum2_12,sum3Map_sum2Map_sum2_11,
                 sum3Map_sum2Map_sum2_10,sum3Map_sum2Map_sum2_9,
                 sum3Map_sum2Map_sum2_8,sum3Map_sum2Map_sum2_7,
                 sum3Map_sum2Map_sum2_6,sum3Map_sum2Map_sum2_5,
                 sum3Map_sum2Map_sum2_4,sum3Map_sum2Map_sum2_3,
                 sum3Map_sum2Map_sum2_2,sum3Map_sum2Map_sum2_1,
                 sum3Map_sum2Map_sum2_0}), .carryIn (GND), .sum ({
                 sum3Map_sum2_15,sum3Map_sum2_14,sum3Map_sum2_13,sum3Map_sum2_12
                 ,sum3Map_sum2_11,sum3Map_sum2_10,sum3Map_sum2_9,sum3Map_sum2_8,
                 sum3Map_sum2_7,sum3Map_sum2_6,sum3Map_sum2_5,sum3Map_sum2_4,
                 sum3Map_sum2_3,sum3Map_sum2_2,sum3Map_sum2_1,sum3Map_sum2_0}), 
                 .carryOut (\$dummy [23])) ;
    fake_gnd ix629 (.Y (GND)) ;
    nand02 ix7 (.Y (finalSum[0]), .A0 (nx670), .A1 (nx672)) ;
    nand02 ix671 (.Y (nx670), .A0 (totalSum_0), .A1 (filterType)) ;
    nand02 ix673 (.Y (nx672), .A0 (sum3Filter_0), .A1 (nx756)) ;
    nand02 ix15 (.Y (finalSum[1]), .A0 (nx677), .A1 (nx679)) ;
    nand02 ix678 (.Y (nx677), .A0 (totalSum_1), .A1 (filterType)) ;
    nand02 ix680 (.Y (nx679), .A0 (sum3Filter_1), .A1 (nx756)) ;
    nand02 ix23 (.Y (finalSum[2]), .A0 (nx682), .A1 (nx684)) ;
    nand02 ix683 (.Y (nx682), .A0 (totalSum_2), .A1 (filterType)) ;
    nand02 ix685 (.Y (nx684), .A0 (sum3Filter_2), .A1 (nx756)) ;
    nand02 ix31 (.Y (finalSum[3]), .A0 (nx687), .A1 (nx689)) ;
    nand02 ix688 (.Y (nx687), .A0 (totalSum_3), .A1 (filterType)) ;
    nand02 ix690 (.Y (nx689), .A0 (sum3Filter_3), .A1 (nx756)) ;
    nand02 ix39 (.Y (finalSum[4]), .A0 (nx692), .A1 (nx694)) ;
    nand02 ix693 (.Y (nx692), .A0 (totalSum_4), .A1 (filterType)) ;
    nand02 ix695 (.Y (nx694), .A0 (sum3Filter_4), .A1 (nx756)) ;
    nand02 ix47 (.Y (finalSum[5]), .A0 (nx697), .A1 (nx699)) ;
    nand02 ix698 (.Y (nx697), .A0 (totalSum_5), .A1 (filterType)) ;
    nand02 ix700 (.Y (nx699), .A0 (sum3Filter_5), .A1 (nx756)) ;
    nand02 ix55 (.Y (finalSum[6]), .A0 (nx702), .A1 (nx704)) ;
    nand02 ix703 (.Y (nx702), .A0 (totalSum_6), .A1 (filterType)) ;
    nand02 ix705 (.Y (nx704), .A0 (sum3Filter_6), .A1 (nx756)) ;
    nand02 ix63 (.Y (finalSum[7]), .A0 (nx707), .A1 (nx709)) ;
    nand02 ix708 (.Y (nx707), .A0 (totalSum_7), .A1 (filterType)) ;
    nand02 ix710 (.Y (nx709), .A0 (sum3Filter_7), .A1 (nx758)) ;
    nand02 ix71 (.Y (finalSum[8]), .A0 (nx712), .A1 (nx714)) ;
    nand02 ix713 (.Y (nx712), .A0 (totalSum_8), .A1 (filterType)) ;
    nand02 ix715 (.Y (nx714), .A0 (sum3Filter_8), .A1 (nx758)) ;
    nand02 ix79 (.Y (finalSum[9]), .A0 (nx717), .A1 (nx719)) ;
    nand02 ix718 (.Y (nx717), .A0 (totalSum_9), .A1 (filterType)) ;
    nand02 ix720 (.Y (nx719), .A0 (sum3Filter_9), .A1 (nx758)) ;
    nand02 ix87 (.Y (finalSum[10]), .A0 (nx722), .A1 (nx724)) ;
    nand02 ix723 (.Y (nx722), .A0 (totalSum_10), .A1 (filterType)) ;
    nand02 ix725 (.Y (nx724), .A0 (sum3Filter_10), .A1 (nx758)) ;
    nand02 ix95 (.Y (finalSum[11]), .A0 (nx727), .A1 (nx729)) ;
    nand02 ix728 (.Y (nx727), .A0 (totalSum_11), .A1 (filterType)) ;
    nand02 ix730 (.Y (nx729), .A0 (sum3Filter_11), .A1 (nx758)) ;
    nand02 ix103 (.Y (finalSum[12]), .A0 (nx732), .A1 (nx734)) ;
    nand02 ix733 (.Y (nx732), .A0 (totalSum_12), .A1 (filterType)) ;
    nand02 ix735 (.Y (nx734), .A0 (sum3Filter_12), .A1 (nx758)) ;
    nand02 ix111 (.Y (finalSum[13]), .A0 (nx737), .A1 (nx739)) ;
    nand02 ix738 (.Y (nx737), .A0 (totalSum_13), .A1 (filterType)) ;
    nand02 ix740 (.Y (nx739), .A0 (sum3Filter_13), .A1 (nx758)) ;
    nand02 ix119 (.Y (finalSum[14]), .A0 (nx742), .A1 (nx744)) ;
    nand02 ix743 (.Y (nx742), .A0 (totalSum_14), .A1 (filterType)) ;
    nand02 ix745 (.Y (nx744), .A0 (sum3Filter_14), .A1 (nx760)) ;
    nand02 ix127 (.Y (finalSum[15]), .A0 (nx747), .A1 (nx749)) ;
    nand02 ix748 (.Y (nx747), .A0 (filterType), .A1 (totalSum_15)) ;
    nand02 ix750 (.Y (nx749), .A0 (nx760), .A1 (sum3Filter_15)) ;
    inv02 ix755 (.Y (nx756), .A (filterType)) ;
    inv02 ix757 (.Y (nx758), .A (filterType)) ;
    inv02 ix759 (.Y (nx760), .A (filterType)) ;
endmodule


module NBitAdder_16 ( a, b, carryIn, sum, carryOut ) ;

    input [15:0]a ;
    input [15:0]b ;
    input carryIn ;
    output [15:0]sum ;
    output carryOut ;

    wire nx2, nx8, nx10, nx18, nx24, nx26, nx34, nx40, nx42, nx50, nx56, nx58, 
         nx66, nx72, nx74, nx82, nx88, nx90, nx98, nx104, nx106, nx114, nx85, 
         nx89, nx93, nx99, nx101, nx103, nx107, nx111, nx115, nx121, nx123, 
         nx125, nx129, nx133, nx137, nx143, nx145, nx147, nx151, nx154, nx157, 
         nx161, nx163, nx165, nx168, nx171, nx174, nx178, nx180, nx182, nx185, 
         nx188, nx191, nx195, nx197, nx199, nx202, nx205, nx208, nx212, nx214, 
         nx216, nx219, nx222, nx225;



    fake_gnd ix42 (.Y (carryOut)) ;
    xnor2 ix151 (.Y (sum[0]), .A0 (b[0]), .A1 (nx85)) ;
    inv01 ix86 (.Y (nx85), .A (a[0])) ;
    xnor2 ix145 (.Y (sum[1]), .A0 (nx89), .A1 (nx2)) ;
    nand02 ix90 (.Y (nx89), .A0 (b[0]), .A1 (a[0])) ;
    xnor2 ix3 (.Y (nx2), .A0 (a[1]), .A1 (nx93)) ;
    inv01 ix94 (.Y (nx93), .A (b[1])) ;
    xnor2 ix143 (.Y (sum[2]), .A0 (nx8), .A1 (nx103)) ;
    oai22 ix9 (.Y (nx8), .A0 (nx89), .A1 (nx99), .B0 (nx93), .B1 (nx101)) ;
    xnor2 ix100 (.Y (nx99), .A0 (a[1]), .A1 (b[1])) ;
    inv01 ix102 (.Y (nx101), .A (a[1])) ;
    xnor2 ix104 (.Y (nx103), .A0 (a[2]), .A1 (b[2])) ;
    xnor2 ix141 (.Y (sum[3]), .A0 (nx107), .A1 (nx18)) ;
    aoi22 ix108 (.Y (nx107), .A0 (b[2]), .A1 (a[2]), .B0 (nx8), .B1 (nx10)) ;
    xnor2 ix11 (.Y (nx10), .A0 (a[2]), .A1 (nx111)) ;
    inv01 ix112 (.Y (nx111), .A (b[2])) ;
    xnor2 ix19 (.Y (nx18), .A0 (a[3]), .A1 (nx115)) ;
    inv01 ix116 (.Y (nx115), .A (b[3])) ;
    xnor2 ix139 (.Y (sum[4]), .A0 (nx24), .A1 (nx125)) ;
    oai21 ix25 (.Y (nx24), .A0 (nx107), .A1 (nx121), .B0 (nx123)) ;
    xnor2 ix122 (.Y (nx121), .A0 (a[3]), .A1 (b[3])) ;
    nand02 ix124 (.Y (nx123), .A0 (b[3]), .A1 (a[3])) ;
    xnor2 ix126 (.Y (nx125), .A0 (a[4]), .A1 (b[4])) ;
    xnor2 ix137 (.Y (sum[5]), .A0 (nx129), .A1 (nx34)) ;
    aoi22 ix130 (.Y (nx129), .A0 (b[4]), .A1 (a[4]), .B0 (nx24), .B1 (nx26)) ;
    xnor2 ix27 (.Y (nx26), .A0 (a[4]), .A1 (nx133)) ;
    inv01 ix134 (.Y (nx133), .A (b[4])) ;
    xnor2 ix35 (.Y (nx34), .A0 (a[5]), .A1 (nx137)) ;
    inv01 ix138 (.Y (nx137), .A (b[5])) ;
    xnor2 ix135 (.Y (sum[6]), .A0 (nx40), .A1 (nx147)) ;
    oai21 ix41 (.Y (nx40), .A0 (nx129), .A1 (nx143), .B0 (nx145)) ;
    xnor2 ix144 (.Y (nx143), .A0 (a[5]), .A1 (b[5])) ;
    nand02 ix146 (.Y (nx145), .A0 (b[5]), .A1 (a[5])) ;
    xnor2 ix148 (.Y (nx147), .A0 (a[6]), .A1 (b[6])) ;
    xnor2 ix133 (.Y (sum[7]), .A0 (nx151), .A1 (nx50)) ;
    aoi22 ix152 (.Y (nx151), .A0 (b[6]), .A1 (a[6]), .B0 (nx40), .B1 (nx42)) ;
    xnor2 ix43 (.Y (nx42), .A0 (a[6]), .A1 (nx154)) ;
    inv01 ix155 (.Y (nx154), .A (b[6])) ;
    xnor2 ix51 (.Y (nx50), .A0 (a[7]), .A1 (nx157)) ;
    inv01 ix158 (.Y (nx157), .A (b[7])) ;
    xnor2 ix131 (.Y (sum[8]), .A0 (nx56), .A1 (nx165)) ;
    oai21 ix57 (.Y (nx56), .A0 (nx151), .A1 (nx161), .B0 (nx163)) ;
    xnor2 ix162 (.Y (nx161), .A0 (a[7]), .A1 (b[7])) ;
    nand02 ix164 (.Y (nx163), .A0 (b[7]), .A1 (a[7])) ;
    xnor2 ix166 (.Y (nx165), .A0 (a[8]), .A1 (b[8])) ;
    xnor2 ix129 (.Y (sum[9]), .A0 (nx168), .A1 (nx66)) ;
    aoi22 ix169 (.Y (nx168), .A0 (b[8]), .A1 (a[8]), .B0 (nx56), .B1 (nx58)) ;
    xnor2 ix59 (.Y (nx58), .A0 (a[8]), .A1 (nx171)) ;
    inv01 ix172 (.Y (nx171), .A (b[8])) ;
    xnor2 ix67 (.Y (nx66), .A0 (a[9]), .A1 (nx174)) ;
    inv01 ix175 (.Y (nx174), .A (b[9])) ;
    xnor2 ix127 (.Y (sum[10]), .A0 (nx72), .A1 (nx182)) ;
    oai21 ix73 (.Y (nx72), .A0 (nx168), .A1 (nx178), .B0 (nx180)) ;
    xnor2 ix179 (.Y (nx178), .A0 (a[9]), .A1 (b[9])) ;
    nand02 ix181 (.Y (nx180), .A0 (b[9]), .A1 (a[9])) ;
    xnor2 ix183 (.Y (nx182), .A0 (a[10]), .A1 (b[10])) ;
    xnor2 ix125 (.Y (sum[11]), .A0 (nx185), .A1 (nx82)) ;
    aoi22 ix186 (.Y (nx185), .A0 (b[10]), .A1 (a[10]), .B0 (nx72), .B1 (nx74)) ;
    xnor2 ix75 (.Y (nx74), .A0 (a[10]), .A1 (nx188)) ;
    inv01 ix189 (.Y (nx188), .A (b[10])) ;
    xnor2 ix83 (.Y (nx82), .A0 (a[11]), .A1 (nx191)) ;
    inv01 ix192 (.Y (nx191), .A (b[11])) ;
    xnor2 ix123 (.Y (sum[12]), .A0 (nx88), .A1 (nx199)) ;
    oai21 ix89 (.Y (nx88), .A0 (nx185), .A1 (nx195), .B0 (nx197)) ;
    xnor2 ix196 (.Y (nx195), .A0 (a[11]), .A1 (b[11])) ;
    nand02 ix198 (.Y (nx197), .A0 (b[11]), .A1 (a[11])) ;
    xnor2 ix200 (.Y (nx199), .A0 (a[12]), .A1 (b[12])) ;
    xnor2 ix121 (.Y (sum[13]), .A0 (nx202), .A1 (nx98)) ;
    aoi22 ix203 (.Y (nx202), .A0 (b[12]), .A1 (a[12]), .B0 (nx88), .B1 (nx90)) ;
    xnor2 ix91 (.Y (nx90), .A0 (a[12]), .A1 (nx205)) ;
    inv01 ix206 (.Y (nx205), .A (b[12])) ;
    xnor2 ix99 (.Y (nx98), .A0 (a[13]), .A1 (nx208)) ;
    inv01 ix209 (.Y (nx208), .A (b[13])) ;
    xnor2 ix119 (.Y (sum[14]), .A0 (nx104), .A1 (nx216)) ;
    oai21 ix105 (.Y (nx104), .A0 (nx202), .A1 (nx212), .B0 (nx214)) ;
    xnor2 ix213 (.Y (nx212), .A0 (a[13]), .A1 (b[13])) ;
    nand02 ix215 (.Y (nx214), .A0 (b[13]), .A1 (a[13])) ;
    xnor2 ix217 (.Y (nx216), .A0 (a[14]), .A1 (b[14])) ;
    xnor2 ix117 (.Y (sum[15]), .A0 (nx219), .A1 (nx114)) ;
    aoi22 ix220 (.Y (nx219), .A0 (b[14]), .A1 (a[14]), .B0 (nx104), .B1 (nx106)
          ) ;
    xnor2 ix107 (.Y (nx106), .A0 (a[14]), .A1 (nx222)) ;
    inv01 ix223 (.Y (nx222), .A (b[14])) ;
    xnor2 ix115 (.Y (nx114), .A0 (a[15]), .A1 (nx225)) ;
    inv01 ix226 (.Y (nx225), .A (b[15])) ;
endmodule

