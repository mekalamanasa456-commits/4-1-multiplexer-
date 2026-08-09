4*1_multiplexer_tb.v
// Testbench for 4-to-1 Multiplexer
`timescale 1ns/1ps

module mux_4to1_tb;

reg I0, I1, I2, I3;
reg S1, S0;

wire Y;

// Instantiate the MUX
mux_4to1 uut (
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .S1(S1),
    .S0(S0),
    .Y(Y)
);

initial begin

    // Create waveform file
    $dumpfile("mux.vcd");
    $dumpvars(0, mux_4to1_tb);

    $display("S1 S0 | I0 I1 I2 I3 | Y");
    $display("-------------------------");

    // Input values
    I0 = 0;
    I1 = 1;
    I2 = 1;
    I3 = 0;

    // Select I0
    S1 = 0;
    S0 = 0;
    #10;
    $display("%b  %b  | %b  %b  %b  %b  | %b",
             S1, S0, I0, I1, I2, I3, Y);

    // Select I1
    S1 = 0;
    S0 = 1;
    #10;
    $display("%b  %b  | %b  %b  %b  %b  | %b",
             S1, S0, I0, I1, I2, I3, Y);

    // Select I2
    S1 = 1;
    S0 = 0;
    #10;
    $display("%b  %b  | %b  %b  %b  %b  | %b",
             S1, S0, I0, I1, I2, I3, Y);

    // Select I3
    S1 = 1;
    S0 = 1;
    #10;
    $display("%b  %b  | %b  %b  %b  %b  | %b",
             S1, S0, I0, I1, I2, I3, Y);

    $finish;
end

endmodule