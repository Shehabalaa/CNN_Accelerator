//
// Verilog description for cell FcMain, 
// Sat May 11 17:08:32 2019
//
// LeonardoSpectrum Level 3, 2018a.2 
//
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
