module comparator(input x, input y, output z);
   assign z = (~x & ~y)|(x&y);
endmodule
