module MUL_test;

reg [15:0] data_in;
reg clk, start;

wire done;
wire eqz;
wire LdA, LdB, LdP, clrP, decB;

MUL_datapath DP(
    eqz,
    LdA,
    LdB,
    LdP,
    clrP,
    decB,
    data_in,
    clk
);

controller CON(
    LdA,
    LdB,
    LdP,
    clrP,
    decB,
    done,
    clk,
    eqz,
    start
);

initial begin
    clk   = 0;
    start = 0;

    #3 start = 1;
    #500 $finish;
end

always #5 clk = ~clk;

initial begin
    #17 data_in = 17;
    #10 data_in = 5;
end

initial begin
    $monitor("time=%0t Product=%0d done=%b",
             $time, DP.Y, done);

    $dumpfile("mul.vcd");
    $dumpvars(0, MUL_test);
end

endmodule