4*1_multiplexer.v
// 4-to-1 Multiplexer
module mux_4to1 (
    input I0,
    input I1,
    input I2,
    input I3,
    input S1,
    input S0,
    output Y
);

assign Y = (~S1 & ~S0 & I0) |
           (~S1 &  S0 & I1) |
           ( S1 & ~S0 & I2) |
           ( S1 &  S0 & I3);

endmodule