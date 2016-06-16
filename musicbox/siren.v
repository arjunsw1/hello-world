module music(clk, speaker);
   initial begin
      $dumpfile("siren.vcd");
      $dumpvars(0,music);
   end
   
   input clk;
   output speaker;
   //if tone[22]=1, ramp counts up, if =0, ramp counts down by inv
   wire [6:0] ramp = (tone[22] ? tone[21:15] : ~tone[21:15]);
   wire [14:0] clkdivider={2'b01, ramp, 6'b000000}; //28409 for ambulance
   //counter counts down from clkdivider to 0

   initial begin
      speaker =0;
      tone[23:0] =0;
      counter[14:0] =0;
   end
   
   reg [23:0] tone;
   always @(posedge clk) 
     tone <=tone+1;

   reg [14:0] counter;
   always @(posedge clk)
     if(counter == 0)
       counter <=(tone[23] ? clkdivider-1 : clkdivider/2-1);
     else
       counter <=counter+1;

   reg speaker;
   always @(posedge clk)
     if(counter ==0)
       speaker <=~speaker;

endmodule
   
