//: version "1.8.7"

module half_adder(CO, S, B, A);
//: interface  /sz:(101, 76) /bd:[ Ti0>B(64/101) Ti1>A(28/101) Lo0<CO(38/76) Bo0<S(47/101) ]
input B;    //: /sn:0 {0}(348,356)(369,356){1}
//: {2}(373,356)(442,356)(442,251)(450,251){3}
//: {4}(371,358)(371,369)(453,369){5}
input A;    //: /sn:0 {0}(336,246)(402,246){1}
//: {2}(406,246)(450,246){3}
//: {4}(404,248)(404,364)(453,364){5}
output CO;    //: /sn:0 /dp:1 {0}(474,366)(523,366){1}
output S;    //: /sn:0 /dp:1 {0}(471,248)(522,248){1}
//: enddecls

  and g4 (.I0(B), .I1(A), .Z(CO));   //: @(464,366) /sn:0 /delay:" 2" /w:[ 5 5 0 ]
  //: output g3 (CO) @(520,366) /sn:0 /w:[ 1 ]
  //: output g2 (S) @(519,248) /sn:0 /w:[ 1 ]
  //: input g1 (B) @(346,356) /sn:0 /w:[ 0 ]
  //: joint g6 (A) @(404, 246) /w:[ 2 -1 1 4 ]
  //: joint g7 (B) @(371, 356) /w:[ 2 -1 1 4 ]
  xor g5 (.I0(B), .I1(A), .Z(S));   //: @(461,248) /sn:0 /delay:" 3" /w:[ 3 3 0 ]
  //: input g0 (A) @(334,246) /sn:0 /w:[ 0 ]

endmodule

module main;    //: root_module
wire w4;    //: /sn:0 {0}(394,89)(329,89)(329,133){1}
wire w0;    //: /sn:0 {0}(187,182)(225,182)(225,172)(264,172){1}
wire w1;    //: /sn:0 {0}(313,253)(313,232)(312,232)(312,211){1}
wire w5;    //: /sn:0 {0}(228,85)(293,85)(293,133){1}
//: enddecls

  led g4 (.I(w1));   //: @(313,260) /sn:0 /R:2 /w:[ 0 ] /type:0
  led g3 (.I(w0));   //: @(180,182) /sn:0 /R:1 /w:[ 0 ] /type:0
  //: switch g2 (w5) @(211,85) /sn:0 /w:[ 0 ] /st:0
  //: switch g1 (w4) @(412,89) /sn:0 /R:2 /w:[ 0 ] /st:0
  half_adder g0 (.B(w4), .A(w5), .CO(w0), .S(w1));   //: @(265, 134) /sz:(101, 76) /sn:0 /p:[ Ti0>1 Ti1>1 Lo0<1 Bo0<1 ]

endmodule
