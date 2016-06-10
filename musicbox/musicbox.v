module music(clk, speaker);
 initial
  begin
     $dumpfile("musicbox.vcd");
     $dumpvars(1,music);
  end
   
  input clk;
  output speaker;
   reg [15:0] counter;
   
   always @(posedge clk) counter <=counter+1;

   assign speaker = counter[15];
endmodule // music

//module clock_gen;
//   reg clk;
//  initial clk = 0;
//   always #10 clk = ~clk;
//
//endmodule // clock_gen

   
