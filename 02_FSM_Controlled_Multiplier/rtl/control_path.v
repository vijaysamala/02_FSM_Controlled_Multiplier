module controller(
    output reg LdA, LdB, LdP, clrP, decB, done,
    input clk, eqz, start
);

reg [2:0] state;

parameter s0=3'b000,
          s1=3'b001,
          s2=3'b010,
          s3=3'b011,
          s4=3'b100;

initial
    state = s0;

always @(posedge clk)
begin
    case(state)
        s0 : if(start)
                 state <= s1;

        s1 : state <= s2;

        s2 : state <= s3;

        s3 : if(eqz)
                 state <= s4;
             else
                 state <= s3;

        s4 : state <= s4;

        default : state <= s0;
    endcase
end

always @(*)
begin
    LdA  = 0;
    LdB  = 0;
    LdP  = 0;
    clrP = 0;
    decB = 0;
    done = 0;

    case(state)
        s1 : LdA = 1;

        s2 : begin
                 LdB  = 1;
                 clrP = 1;
             end

        s3 : begin
                 LdP  = 1;
                 decB = 1;
             end

        s4 : done = 1;
    endcase
end

endmodule