
`timescale 10ns/1ns
module testfile;
   reg clk;
   wire speaker;

   music spkr(.clk(clk), .speaker(speaker));
   initial begin
      $dumpfile("testfile.vcd");
      $dumpvars(0, testfile);
      clk <=0;     
   end

   always begin//creates running clock and prints statuses
      #1 clk = ~clk;
      $monitor("t = %d, clk = %b, spkr = %d\n", $time, clk, speaker);
      //stops after certain time
      if($time >= 1000000)//2 second
	$finish(1);
   end
endmodule

   
