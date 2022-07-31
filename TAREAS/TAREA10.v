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

  xor g4 (.I0(w2), .I1(Cin), .Z(S));   //: @(230,72) /sn:0 /delay:" 3" /w:[ 1 1 0 ]
  //: joint g8 (A) @(127, 59) /w:[ 1 -1 2 4 ]
  xor g3 (.I0(A), .I1(B), .Z(w2));   //: @(150,62) /sn:0 /delay:" 3" /w:[ 0 5 0 ]
  //: input g2 (Cin) @(74,104) /sn:0 /w:[ 0 ]
  //: input g1 (B) @(74,80) /sn:0 /w:[ 7 ]
  //: joint g10 (A) @(127, 132) /w:[ 6 5 -1 8 ]
  and g6 (.I0(A), .I1(B), .Z(G));   //: @(223,161) /sn:0 /delay:" 2" /w:[ 9 9 1 ]
  or g7 (.I0(A), .I1(B), .Z(P));   //: @(225,135) /sn:0 /delay:" 2" /w:[ 7 0 1 ]
  //: joint g9 (B) @(102, 64) /w:[ 4 -1 6 3 ]
  //: output g12 (P) @(280,135) /sn:0 /w:[ 0 ]
  //: output g5 (S) @(280,72) /sn:0 /w:[ 1 ]
  //: joint g11 (B) @(102, 137) /w:[ 1 2 -1 8 ]
  //: input g0 (A) @(74,59) /sn:0 /w:[ 3 ]
  //: output g13 (G) @(280,161) /sn:0 /w:[ 0 ]

endmodule

module main;    //: root_module
wire w6;    //: /sn:0 {0}(228,93)(278,93)(278,131){1}
wire w7;    //: /sn:0 {0}(369,92)(308,92)(308,131){1}
wire w10;    //: /sn:0 {0}(287,219)(287,181){1}
wire w8;    //: /sn:0 {0}(375,157)(322,157){1}
wire w11;    //: /sn:0 {0}(327,196)(309,196)(309,181){1}
wire w9;    //: /sn:0 {0}(230,197)(276,197)(276,181){1}
//: enddecls

  led g4 (.I(w9));   //: @(223,197) /sn:0 /R:1 /w:[ 0 ] /type:0
  //: switch g3 (w8) @(393,157) /sn:0 /R:2 /w:[ 0 ] /st:1
  //: switch g2 (w7) @(387,92) /sn:0 /R:2 /w:[ 0 ] /st:1
  //: switch g1 (w6) @(211,93) /sn:0 /w:[ 0 ] /st:1
  led g6 (.I(w11));   //: @(334,196) /sn:0 /R:3 /w:[ 0 ] /type:0
  led g5 (.I(w10));   //: @(287,226) /sn:0 /R:2 /w:[ 0 ] /type:0
  PFA g0 (.B(w7), .A(w6), .Cin(w8), .G(w10), .P(w9), .S(w11));   //: @(269, 132) /sz:(52, 48) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>1 Bo0<1 Bo1<1 Bo2<1 ]

endmodule
