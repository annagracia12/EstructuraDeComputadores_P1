//: version "1.8.7"

module PFA(Cin, B, P, S, A, G);
//: interface  /sz:(52, 48) /bd:[ Ti0>A(9/52) Ti1>B(39/52) Ri0>Cin(25/48) Bo0<S(40/52) Bo1<P(7/52) Bo2<G(18/52) ]
input B;    //: /sn:0 /dp:1 {0}(214,137)(104,137){1}
//: {2}(102,135)(102,66){3}
//: {4}(104,64)(139,64){5}
//: {6}(100,64)(84,64)(84,80)(76,80){7}
//: {8}(102,139)(102,163)(212,163){9}
input A;    //: /sn:0 /dp:1 {0}(139,59)(129,59){1}
//: {2}(125,59)(76,59){3}
//: {4}(127,61)(127,130){5}
//: {6}(129,132)(214,132){7}
//: {8}(127,134)(127,158)(212,158){9}
output G;    //: /sn:0 {0}(283,161)(233,161){1}
input Cin;    //: /sn:0 {0}(76,104)(209,104)(209,74)(219,74){1}
output P;    //: /sn:0 {0}(283,135)(235,135){1}
output S;    //: /sn:0 /dp:1 {0}(240,72)(283,72){1}
wire w2;    //: /sn:0 {0}(160,62)(209,62)(209,69)(219,69){1}
//: enddecls

  //: joint g8 (A) @(127, 59) /w:[ 1 -1 2 4 ]
  xor g4 (.I0(w2), .I1(Cin), .Z(S));   //: @(230,72) /sn:0 /delay:" 3" /w:[ 1 1 0 ]
  xor g3 (.I0(A), .I1(B), .Z(w2));   //: @(150,62) /sn:0 /delay:" 3" /w:[ 0 5 0 ]
  //: input g2 (Cin) @(74,104) /sn:0 /w:[ 0 ]
  //: input g1 (B) @(74,80) /sn:0 /w:[ 7 ]
  //: joint g10 (A) @(127, 132) /w:[ 6 5 -1 8 ]
  and g6 (.I0(A), .I1(B), .Z(G));   //: @(223,161) /sn:0 /delay:" 2" /w:[ 9 9 1 ]
  //: joint g9 (B) @(102, 64) /w:[ 4 -1 6 3 ]
  or g7 (.I0(A), .I1(B), .Z(P));   //: @(225,135) /sn:0 /delay:" 2" /w:[ 7 0 1 ]
  //: output g12 (P) @(280,135) /sn:0 /w:[ 0 ]
  //: joint g11 (B) @(102, 137) /w:[ 1 2 -1 8 ]
  //: output g5 (S) @(280,72) /sn:0 /w:[ 1 ]
  //: input g0 (A) @(74,59) /sn:0 /w:[ 3 ]
  //: output g13 (G) @(280,161) /sn:0 /w:[ 0 ]

endmodule

module Carrylookahead_logic(C1, P2, G2, G0, C3, P0, C4, GG, G1, P1, P3, PG, G3, C0, C2);
//: interface  /sz:(196, 57) /bd:[ Ti0>G2(88/196) Ti1>P2(76/196) Ti2>P3(22/196) Ti3>G3(38/196) Ti4>P1(120/196) Ti5>G1(132/196) Ti6>P0(174/196) Ti7>G0(184/196) Ri0>C0(36/57) To0<C3(65/196) To1<C2(108/196) To2<C1(160/196) Lo0<C4(33/57) Bo0<PG(105/196) Bo1<GG(135/196) ]
input G2;    //: /sn:0 {0}(475,310)(472,310)(472,341)(184,341){1}
//: {2}(180,341)(61,341){3}
//: {4}(182,343)(182,476){5}
//: {6}(184,478)(358,478){7}
//: {8}(182,480)(182,641)(338,641){9}
output GG;    //: /sn:0 /dp:1 {0}(473,578)(537,578){1}
input C0;    //: /sn:0 /dp:1 {0}(65,91)(324,91){1}
//: {2}(328,91)(338,91){3}
//: {4}(326,93)(326,144){5}
//: {6}(328,146)(341,146){7}
//: {8}(326,148)(326,236){9}
//: {10}(328,238)(358,238){11}
//: {12}(326,240)(326,370)(360,370){13}
input P1;    //: /sn:0 {0}(360,380)(244,380){1}
//: {2}(242,378)(242,285){3}
//: {4}(244,283)(357,283){5}
//: {6}(242,281)(242,250){7}
//: {8}(244,248)(358,248){9}
//: {10}(242,246)(242,181){11}
//: {12}(244,179)(273,179){13}
//: {14}(242,177)(242,158){15}
//: {16}(244,156)(341,156){17}
//: {18}(240,156)(63,156){19}
//: {20}(242,382)(242,415){21}
//: {22}(244,417)(359,417){23}
//: {24}(242,419)(242,527){25}
//: {26}(244,529)(338,529){27}
//: {28}(242,531)(242,569)(339,569){29}
output C3;    //: /sn:0 /dp:1 {0}(496,302)(631,302){1}
output PG;    //: /sn:0 /dp:1 {0}(359,531)(454,531){1}
input G0;    //: /sn:0 /dp:1 {0}(65,122)(264,122){1}
//: {2}(268,122)(424,122){3}
//: {4}(266,124)(266,172){5}
//: {6}(268,174)(273,174){7}
//: {8}(266,176)(266,276){9}
//: {10}(268,278)(357,278){11}
//: {12}(266,280)(266,410){13}
//: {14}(268,412)(359,412){15}
//: {16}(266,414)(266,564)(339,564){17}
output C4;    //: /sn:0 {0}(612,446)(516,446){1}
output C2;    //: /sn:0 {0}(637,185)(541,185)(541,181)(447,181){1}
input P3;    //: /sn:0 {0}(339,612)(198,612){1}
//: {2}(196,610)(196,581){3}
//: {4}(198,579)(339,579){5}
//: {6}(196,577)(196,541){7}
//: {8}(198,539)(338,539){9}
//: {10}(196,537)(196,485){11}
//: {12}(198,483)(358,483){13}
//: {14}(196,481)(196,458){15}
//: {16}(198,456)(358,456){17}
//: {18}(196,454)(196,429){19}
//: {20}(198,427)(359,427){21}
//: {22}(196,425)(196,392){23}
//: {24}(198,390)(360,390){25}
//: {26}(194,390)(57,390){27}
//: {28}(196,614)(196,636)(338,636){29}
input G1;    //: /sn:0 {0}(62,190)(213,190){1}
//: {2}(217,190)(321,190)(321,186)(426,186){3}
//: {4}(215,192)(215,314){5}
//: {6}(217,316)(357,316){7}
//: {8}(215,318)(215,444){9}
//: {10}(217,446)(358,446){11}
//: {12}(215,448)(215,602)(339,602){13}
input G3;    //: /sn:0 {0}(452,586)(391,586)(391,657)(133,657)(133,501){1}
//: {2}(135,499)(487,499)(487,456)(495,456){3}
//: {4}(131,499)(64,499){5}
input P0;    //: /sn:0 /dp:1 {0}(65,113)(85,113)(85,96)(309,96){1}
//: {2}(313,96)(338,96){3}
//: {4}(311,98)(311,149){5}
//: {6}(313,151)(341,151){7}
//: {8}(311,153)(311,241){9}
//: {10}(313,243)(358,243){11}
//: {12}(311,245)(311,373){13}
//: {14}(313,375)(360,375){15}
//: {16}(311,377)(311,524)(338,524){17}
output C1;    //: /sn:0 /dp:1 {0}(445,120)(640,120){1}
input P2;    //: /sn:0 {0}(339,574)(228,574){1}
//: {2}(226,572)(226,536){3}
//: {4}(228,534)(338,534){5}
//: {6}(226,532)(226,453){7}
//: {8}(228,451)(358,451){9}
//: {10}(226,449)(226,424){11}
//: {12}(228,422)(359,422){13}
//: {14}(226,420)(226,387){15}
//: {16}(228,385)(360,385){17}
//: {18}(226,383)(226,313){19}
//: {20}(228,311)(357,311){21}
//: {22}(226,309)(226,290){23}
//: {24}(228,288)(357,288){25}
//: {26}(226,286)(226,255){27}
//: {28}(228,253)(358,253){29}
//: {30}(224,253)(52,253){31}
//: {32}(226,576)(226,607)(339,607){33}
wire w16;    //: /sn:0 {0}(452,581)(379,581)(379,639)(359,639){1}
wire w6;    //: /sn:0 /dp:1 {0}(452,576)(370,576)(370,607)(360,607){1}
wire w7;    //: /sn:0 {0}(381,380)(485,380)(485,436)(495,436){1}
wire w4;    //: /sn:0 /dp:1 {0}(426,176)(416,176)(416,151)(362,151){1}
wire w0;    //: /sn:0 /dp:1 {0}(424,117)(402,117)(402,94)(359,94){1}
wire w3;    //: /sn:0 /dp:1 {0}(475,300)(388,300)(388,283)(378,283){1}
wire w18;    //: /sn:0 /dp:1 {0}(452,571)(360,571){1}
wire w1;    //: /sn:0 /dp:1 {0}(426,181)(318,181)(318,177)(294,177){1}
wire w8;    //: /sn:0 /dp:1 {0}(495,441)(459,441)(459,419)(380,419){1}
wire w14;    //: /sn:0 {0}(495,446)(389,446)(389,451)(379,451){1}
wire w2;    //: /sn:0 /dp:1 {0}(475,295)(445,295)(445,245)(379,245){1}
wire w15;    //: /sn:0 {0}(495,451)(408,451)(408,481)(379,481){1}
wire w9;    //: /sn:0 {0}(475,305)(388,305)(388,314)(378,314){1}
//: enddecls

  and g4 (.I0(C0), .I1(P0), .Z(w0));   //: @(349,94) /sn:0 /delay:" 2" /w:[ 3 3 1 ]
  and g8 (.I0(C0), .I1(P0), .I2(P1), .Z(w4));   //: @(352,151) /sn:0 /delay:" 2" /w:[ 7 7 17 1 ]
  //: joint g44 (G1) @(215, 316) /w:[ 6 5 -1 8 ]
  //: output g3 (C1) @(637,120) /sn:0 /w:[ 1 ]
  and g47 (.I0(G2), .I1(P3), .Z(w15));   //: @(369,481) /sn:0 /delay:" 2" /w:[ 7 13 1 ]
  //: input g16 (P2) @(50,253) /sn:0 /w:[ 31 ]
  //: input g17 (G2) @(59,341) /sn:0 /w:[ 3 ]
  and g26 (.I0(P2), .I1(G1), .Z(w9));   //: @(368,314) /sn:0 /delay:" 2" /w:[ 21 7 1 ]
  //: input g2 (G0) @(63,122) /sn:0 /w:[ 0 ]
  //: joint g23 (G0) @(266, 174) /w:[ 6 5 -1 8 ]
  //: output g30 (C3) @(628,302) /sn:0 /w:[ 1 ]
  //: input g1 (P0) @(63,113) /sn:0 /w:[ 0 ]
  //: joint g24 (P1) @(242, 248) /w:[ 8 10 -1 7 ]
  //: joint g39 (G0) @(266, 278) /w:[ 10 9 -1 12 ]
  //: joint g60 (P1) @(242, 529) /w:[ 26 25 -1 28 ]
  or g29 (.I0(w2), .I1(w3), .I2(w9), .I3(G2), .Z(C3));   //: @(486,302) /sn:0 /delay:" 2" /w:[ 0 0 0 0 0 ]
  //: output g51 (C4) @(609,446) /sn:0 /w:[ 0 ]
  or g70 (.I0(w18), .I1(w6), .I2(w16), .I3(G3), .Z(GG));   //: @(463,578) /sn:0 /delay:" 2" /w:[ 0 0 0 0 0 ]
  and g18 (.I0(C0), .I1(P0), .I2(P1), .I3(P2), .Z(w2));   //: @(369,245) /sn:0 /delay:" 2" /w:[ 11 11 9 29 1 ]
  //: joint g65 (P2) @(226, 574) /w:[ 1 2 -1 32 ]
  //: joint g10 (C0) @(326, 91) /w:[ 2 -1 1 4 ]
  //: joint g25 (P2) @(226, 253) /w:[ 28 -1 30 27 ]
  //: joint g64 (G1) @(215, 446) /w:[ 10 9 -1 12 ]
  //: output g72 (GG) @(534,578) /sn:0 /w:[ 1 ]
  //: joint g49 (P3) @(196, 456) /w:[ 16 18 -1 15 ]
  //: input g6 (G1) @(60,190) /sn:0 /w:[ 0 ]
  or g50 (.I0(w7), .I1(w8), .I2(w14), .I3(w15), .I4(G3), .Z(C4));   //: @(506,446) /sn:0 /delay:" 2" /w:[ 1 0 0 0 3 1 ]
  //: joint g68 (P3) @(196, 612) /w:[ 1 2 -1 28 ]
  and g58 (.I0(G0), .I1(P1), .I2(P2), .I3(P3), .Z(w18));   //: @(350,571) /sn:0 /delay:" 1" /w:[ 17 29 0 5 1 ]
  //: joint g56 (P0) @(311, 375) /w:[ 14 13 -1 16 ]
  //: input g7 (P1) @(61,156) /sn:0 /w:[ 19 ]
  //: joint g9 (P0) @(311, 96) /w:[ 2 -1 1 4 ]
  //: joint g35 (P0) @(311, 243) /w:[ 10 9 -1 12 ]
  //: joint g71 (G3) @(133, 499) /w:[ 2 -1 4 1 ]
  //: joint g59 (G0) @(266, 412) /w:[ 14 13 -1 16 ]
  and g22 (.I0(G0), .I1(P1), .I2(P2), .Z(w3));   //: @(368,283) /sn:0 /delay:" 2" /w:[ 11 5 25 1 ]
  //: input g31 (P3) @(55,390) /sn:0 /w:[ 27 ]
  and g67 (.I0(P3), .I1(G2), .Z(w16));   //: @(349,639) /sn:0 /delay:" 2" /w:[ 29 9 1 ]
  //: joint g54 (P2) @(226, 451) /w:[ 8 10 -1 7 ]
  and g33 (.I0(C0), .I1(P0), .I2(P1), .I3(P2), .I4(P3), .Z(w7));   //: @(371,380) /sn:0 /delay:" 2" /w:[ 13 15 0 17 25 0 ]
  //: joint g36 (P1) @(242, 283) /w:[ 4 6 -1 3 ]
  //: joint g41 (P2) @(226, 385) /w:[ 16 18 -1 15 ]
  //: joint g45 (P2) @(226, 422) /w:[ 12 14 -1 11 ]
  //: joint g69 (G2) @(182, 478) /w:[ 6 5 -1 8 ]
  and g52 (.I0(P0), .I1(P1), .I2(P2), .I3(P3), .Z(PG));   //: @(349,531) /sn:0 /delay:" 2" /w:[ 17 27 5 9 0 ]
  //: joint g40 (P1) @(242, 380) /w:[ 1 2 -1 20 ]
  //: joint g42 (P3) @(196, 390) /w:[ 24 -1 26 23 ]
  //: joint g66 (P3) @(196, 579) /w:[ 4 6 -1 3 ]
  //: joint g12 (G0) @(266, 122) /w:[ 2 -1 1 4 ]
  //: output g57 (PG) @(451,531) /sn:0 /w:[ 1 ]
  //: joint g28 (G1) @(215, 190) /w:[ 2 -1 1 4 ]
  //: joint g34 (C0) @(326, 238) /w:[ 10 9 -1 12 ]
  //: joint g46 (P3) @(196, 427) /w:[ 20 22 -1 19 ]
  or g5 (.I0(w0), .I1(G0), .Z(C1));   //: @(435,120) /sn:0 /delay:" 2" /w:[ 0 3 0 ]
  and g11 (.I0(G0), .I1(P1), .Z(w1));   //: @(284,177) /sn:0 /delay:" 2" /w:[ 7 13 1 ]
  or g14 (.I0(w4), .I1(w1), .I2(G1), .Z(C2));   //: @(437,181) /sn:0 /delay:" 2" /w:[ 0 0 3 1 ]
  //: joint g61 (P2) @(226, 534) /w:[ 4 6 -1 3 ]
  //: joint g19 (C0) @(326, 146) /w:[ 6 5 -1 8 ]
  //: joint g21 (P1) @(242, 179) /w:[ 12 14 -1 11 ]
  //: joint g20 (P0) @(311, 151) /w:[ 6 5 -1 8 ]
  //: input g32 (G3) @(62,499) /sn:0 /w:[ 5 ]
  and g63 (.I0(G1), .I1(P2), .I2(P3), .Z(w6));   //: @(350,607) /sn:0 /delay:" 2" /w:[ 13 33 0 1 ]
  //: input g0 (C0) @(63,91) /sn:0 /w:[ 0 ]
  //: output g15 (C2) @(634,185) /sn:0 /w:[ 0 ]
  and g38 (.I0(G0), .I1(P1), .I2(P2), .I3(P3), .Z(w8));   //: @(370,419) /sn:0 /delay:" 2" /w:[ 15 23 13 21 1 ]
  and g43 (.I0(G1), .I1(P2), .I2(P3), .Z(w14));   //: @(369,451) /sn:0 /delay:" 2" /w:[ 11 9 17 1 ]
  //: joint g27 (P2) @(226, 288) /w:[ 24 26 -1 23 ]
  //: joint g48 (G2) @(182, 341) /w:[ 1 -1 2 4 ]
  //: joint g62 (P3) @(196, 539) /w:[ 8 10 -1 7 ]
  //: joint g37 (P2) @(226, 311) /w:[ 20 22 -1 19 ]
  //: joint g55 (P1) @(242, 417) /w:[ 22 21 -1 24 ]
  //: joint g53 (P3) @(196, 483) /w:[ 12 14 -1 11 ]
  //: joint g13 (P1) @(242, 156) /w:[ 16 -1 18 15 ]

endmodule

module main;    //: root_module
wire w6;    //: /sn:0 {0}(557,403)(557,437)(494,437){1}
wire w7;    //: /sn:0 {0}(472,414)(545,414)(545,403){1}
wire [3:0] w0;    //: /sn:0 /dp:1 {0}(642,292)(642,339)(587,339)(587,351){1}
wire [3:0] w3;    //: /sn:0 {0}(592,441)(592,422)(593,422)(593,403){1}
wire w1;    //: /sn:0 {0}(644,382)(600,382){1}
wire w2;    //: /sn:0 {0}(539,381)(473,381){1}
wire [3:0] w5;    //: /sn:0 /dp:1 {0}(468,287)(468,343)(547,343)(547,351){1}
//: enddecls

  led g4 (.I(w2));   //: @(466,381) /sn:0 /R:1 /w:[ 1 ] /type:0
  //: switch g3 (w1) @(662,382) /sn:0 /R:2 /w:[ 0 ] /st:0
  //: dip g2 (w0) @(642,282) /sn:0 /w:[ 0 ] /st:6
  //: dip g1 (w5) @(468,277) /sn:0 /w:[ 0 ] /st:10
  led g6 (.I(w7));   //: @(465,414) /sn:0 /R:1 /w:[ 0 ] /type:0
  led g7 (.I(w6));   //: @(487,437) /sn:0 /R:1 /w:[ 1 ] /type:0
  led g5 (.I(w3));   //: @(592,448) /sn:0 /R:2 /w:[ 0 ] /type:3
  CLA g0 (.B(w0), .A(w5), .Cin(w1), .Cout(w2), .G(w6), .P(w7), .S(w3));   //: @(540, 352) /sz:(59, 50) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>1 Lo0<0 Bo0<0 Bo1<1 Bo2<1 ]

endmodule

module CLA(Cout, B, A, G, S, P, Cin);
//: interface  /sz:(59, 50) /bd:[ Ti0>A[3:0](7/59) Ti1>B[3:0](47/59) Ri0>Cin(30/50) Lo0<Cout(29/50) Bo0<S[3:0](53/59) Bo1<P(5/59) Bo2<G(17/59) ]
input [3:0] B;    //: /sn:0 {0}(91,36)(91,52)(180,52){1}
//: {2}(181,52)(276,52){3}
//: {4}(277,52)(378,52){5}
//: {6}(379,52)(470,52){7}
//: {8}(471,52)(509,52){9}
input [3:0] A;    //: /sn:0 {0}(68,37)(68,63)(151,63){1}
//: {2}(152,63)(245,63){3}
//: {4}(246,63)(346,63){5}
//: {6}(347,63)(443,63){7}
//: {8}(444,63)(452,63){9}
output G;    //: /sn:0 {0}(365,317)(365,276){1}
input Cin;    //: /sn:0 {0}(427,254)(498,254)(498,152){1}
//: {2}(500,150)(574,150){3}
//: {4}(498,148)(498,127)(488,127){5}
output Cout;    //: /sn:0 /dp:1 {0}(229,251)(144,251){1}
output P;    //: /sn:0 {0}(335,276)(335,317){1}
output [3:0] S;    //: /sn:0 /dp:1 {0}(97,203)(34,203){1}
wire w13;    //: /sn:0 {0}(379,106)(379,56){1}
wire w16;    //: /sn:0 {0}(358,156)(358,206)(362,206)(362,217){1}
wire w25;    //: /sn:0 {0}(295,103)(295,64)(277,64)(277,56){1}
wire w3;    //: /sn:0 {0}(268,217)(268,182)(170,182)(170,154){1}
wire w0;    //: /sn:0 {0}(318,217)(318,164)(274,164)(274,153){1}
wire w22;    //: /sn:0 {0}(453,151)(453,207)(414,207)(414,217){1}
wire w36;    //: /sn:0 {0}(192,154)(192,218)(103,218){1}
wire w20;    //: /sn:0 {0}(444,101)(444,67){1}
wire w30;    //: /sn:0 {0}(296,153)(296,208)(103,208){1}
wire w19;    //: /sn:0 {0}(474,101)(474,64)(471,64)(471,56){1}
wire w18;    //: /sn:0 {0}(380,156)(380,198)(103,198){1}
wire w10;    //: /sn:0 {0}(338,217)(338,129)(309,129){1}
wire w23;    //: /sn:0 {0}(442,151)(442,192)(404,192)(404,217){1}
wire w24;    //: /sn:0 {0}(475,151)(475,188)(103,188){1}
wire w1;    //: /sn:0 {0}(306,217)(306,170)(263,170)(263,153){1}
wire w31;    //: /sn:0 {0}(191,105)(191,66)(181,66)(181,56){1}
wire w32;    //: /sn:0 {0}(161,105)(161,87)(152,87)(152,67){1}
wire w17;    //: /sn:0 {0}(347,156)(347,207)(350,207)(350,217){1}
wire w14;    //: /sn:0 {0}(349,106)(349,75)(347,75)(347,67){1}
wire w11;    //: /sn:0 {0}(390,217)(390,168)(404,168)(404,132)(393,132){1}
wire w2;    //: /sn:0 {0}(252,217)(252,192)(159,192)(159,154){1}
wire w9;    //: /sn:0 {0}(295,217)(295,177)(250,177)(250,130)(205,130){1}
wire w26;    //: /sn:0 {0}(265,103)(265,75)(246,75)(246,67){1}
//: enddecls

  PFA g4 (.A(w32), .B(w31), .Cin(w9), .S(w36), .P(w2), .G(w3));   //: @(152, 106) /sz:(52, 47) /sn:0 /p:[ Ti0>0 Ti1>0 Ri0>1 Bo0<0 Bo1<1 Bo2<1 ]
  tran g8(.Z(w19), .I(B[0]));   //: @(471,50) /sn:0 /R:1 /w:[ 1 7 8 ] /ss:1
  PFA g3 (.A(w26), .B(w25), .Cin(w10), .S(w30), .P(w1), .G(w0));   //: @(256, 104) /sz:(52, 48) /sn:0 /p:[ Ti0>0 Ti1>0 Ri0>1 Bo0<0 Bo1<1 Bo2<1 ]
  //: joint g16 (Cin) @(498, 150) /w:[ 2 4 -1 1 ]
  //: output g17 (Cout) @(147,251) /sn:0 /R:2 /w:[ 1 ]
  PFA g2 (.A(w20), .B(w19), .Cin(Cin), .S(w24), .P(w23), .G(w22));   //: @(435, 102) /sz:(52, 48) /sn:0 /p:[ Ti0>0 Ti1>0 Ri0>5 Bo0<0 Bo1<0 Bo2<0 ]
  PFA g1 (.A(w14), .B(w13), .Cin(w11), .S(w18), .P(w17), .G(w16));   //: @(340, 107) /sz:(52, 48) /sn:0 /p:[ Ti0>0 Ti1>0 Ri0>1 Bo0<0 Bo1<0 Bo2<0 ]
  concat g18 (.I0(w24), .I1(w18), .I2(w30), .I3(w36), .Z(S));   //: @(98,203) /sn:0 /R:2 /w:[ 1 1 1 1 0 ] /dr:0
  tran g10(.Z(w14), .I(A[1]));   //: @(347,61) /sn:0 /R:1 /w:[ 1 5 6 ] /ss:1
  //: input g6 (B) @(91,34) /sn:0 /R:3 /w:[ 0 ]
  tran g7(.Z(w20), .I(A[0]));   //: @(444,61) /sn:0 /R:1 /w:[ 1 7 8 ] /ss:1
  tran g9(.Z(w13), .I(B[1]));   //: @(379,50) /sn:0 /R:1 /w:[ 1 5 6 ] /ss:1
  tran g12(.Z(w26), .I(A[2]));   //: @(246,61) /sn:0 /R:1 /w:[ 1 3 4 ] /ss:1
  //: input g5 (A) @(68,35) /sn:0 /R:3 /w:[ 0 ]
  tran g11(.Z(w25), .I(B[2]));   //: @(277,50) /sn:0 /R:1 /w:[ 1 3 4 ] /ss:1
  tran g14(.Z(w32), .I(A[3]));   //: @(152,61) /sn:0 /R:1 /w:[ 1 1 2 ] /ss:1
  //: output g21 (G) @(365,314) /sn:0 /R:3 /w:[ 0 ]
  //: output g19 (S) @(37,203) /sn:0 /R:2 /w:[ 1 ]
  //: output g20 (P) @(335,314) /sn:0 /R:3 /w:[ 1 ]
  Carrylookahead_logic g0 (.G0(w22), .P0(w23), .G1(w16), .P1(w17), .G3(w3), .P3(w2), .P2(w1), .G2(w0), .C0(Cin), .C1(w11), .C2(w10), .C3(w9), .C4(Cout), .GG(G), .PG(P));   //: @(230, 218) /sz:(196, 57) /sn:0 /p:[ Ti0>1 Ti1>1 Ti2>1 Ti3>1 Ti4>0 Ti5>0 Ti6>0 Ti7>0 Ri0>0 To0<0 To1<0 To2<0 Lo0<0 Bo0<1 Bo1<0 ]
  //: input g15 (Cin) @(576,150) /sn:0 /R:2 /w:[ 3 ]
  tran g13(.Z(w31), .I(B[3]));   //: @(181,50) /sn:0 /R:1 /w:[ 1 1 2 ] /ss:1

endmodule
