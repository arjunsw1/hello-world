module comparator(input x, input y, output z);
initial begin
   $dumpfile("comparator.vcd");
   $dumpvars(0,comparator);
   end
 
  assign z = (~x & ~y)|(x&y);
endmodule
