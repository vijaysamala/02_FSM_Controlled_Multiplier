module tb;

  reg [7:0] A;
  reg [7:0] B;
  reg [3:0] ALU_sel;
  wire [7:0] ALU_output;

  alu dut (
    .A(A),
    .B(B),
    .ALU_sel(ALU_sel),
    .ALU_output(ALU_output)
  );

  initial begin

    ALU_sel = 4'b0000; // Addition

    A = 8'b10101010;
    B = 8'b11100010;

    #10 A = 8'b10101011;
    #10 B = 8'b11111111;

    #10 $finish;

  end

  initial begin
    $monitor("Time=%0t A=%d B=%d ALU_sel=%b ALU_output=%d",
              $time, A, B, ALU_sel, ALU_output);
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);
  end

endmodule
             
      
  