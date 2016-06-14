module music(clk, speaker);
 initial
  begin
     $dumpfile("musicbox.vcd");
     $dumpvars(0,music);
  end
   
  input clk;
  output speaker;
   
  reg [14:0] counter;
   initial begin
   counter[14:0] <= 0;
   speaker <=0;   
   end
   always @(posedge clk) 
     if(counter==28408) 
       counter <=0; 
     else
       counter <=(counter+1);
       initial begin
       //$monitor("cntr= %d \n", counter[14:0]);
       end

   reg speaker;
   always @(posedge clk) 
     if(counter==28408)  
       speaker <= ~speaker;
   
endmodule

   
