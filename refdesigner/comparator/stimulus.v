//comparator testbench
`timescale 1ns/1ps
module stimulus;
   reg x;
   reg y;
   wire z;
   comparator uut(.x(x), .y(x), .z(z));
   //initialize inputs
   initial begin
      $dumpfile("stimulus.vcd");
      $dumpvars(0,stimulus);   
   x = 0;
   y = 0;
      #100
      #10 x=1;
      #10 x = 0;
      #10 y=1;
      #10 x=0;
      #10 x=1;
      #10 y=0;
      #10 y=1;
   end

   initial begin
      $monitor("t = %3d, x=%d, y=%d, z=%d \n", $time, x, y, z);
   end
endmodule

