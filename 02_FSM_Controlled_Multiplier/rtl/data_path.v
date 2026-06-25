   module MUL_datapath (
    output eqz,
    input  LdA,
    input  LdB,
    input  LdP,
    input  clrP,
    input  decB,
    input  [15:0] data_in,
    input  clk
);

    wire [15:0] X, Y, Z, Bout;

    PIPO1 A (
        .dout(X),
        .din(data_in),
        .ld(LdA),
        .clk(clk)
    );

    PIPO2 P (
        .dout(Y),
        .din(Z),
        .ld(LdP),
        .clr(clrP),
        .clk(clk)
    );

    CNTR B (
        .dout(Bout),
        .din(data_in),
        .ld(LdB),
        .dec(decB),
        .clk(clk)
    );

    ADD AD (
        .out(Z),
        .in1(X),
        .in2(Y)
    );

    EQZ COMP (
        .eqz(eqz),
        .data(Bout)
    );

endmodule


// Register A
module PIPO1 (
    output reg [15:0] dout,
    input  [15:0] din,
    input  ld,
    input  clk
);

always @(posedge clk)
begin
    if (ld)
        dout <= din;
end

endmodule


// Product Register P
module PIPO2 (
    output reg [15:0] dout,
    input  [15:0] din,
    input  ld,
    input  clr,
    input  clk
);

always @(posedge clk)
begin
    if (clr)
        dout <= 16'b0;
    else if (ld)
        dout <= din;
end

endmodule


// Adder
module ADD (
    output [15:0] out,
    input  [15:0] in1,
    input  [15:0] in2
);

assign out = in1 + in2;

endmodule


// Equality-to-zero comparator
module EQZ (
    output eqz,
    input [15:0] data
);

assign eqz = (data == 16'b0);

endmodule


// Counter B
module CNTR (
    output reg [15:0] dout,
    input  [15:0] din,
    input  ld,
    input  dec,
    input  clk
);

always @(posedge clk)
begin
    if (ld)
        dout <= din;
    else if (dec)
        dout <= dout - 1'b1;
end

endmodule
