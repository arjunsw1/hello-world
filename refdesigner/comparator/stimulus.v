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
      #20 x=1;
      #40 y =1;
      #40 x =0;
      #60 x =1;
      #60 y=0;
      #60 y =1;
   end

   initial begin
      $monitor("x=%d, y=%d, z=%d \n", x, y, z);
   end
endmodule

