module comparator(input x, input y, output z);
   /*gate level primitives
   wire xp, yp, p, q, z;
   not(xp, x);
   not(yp,y);
   and(p, x,y);
   and(q, xp, yp);
   or(z, p, q);*/

   //direct logic 
   // assign z =(~x && ~y) || (x&&y);

   //user defined primitive
   compare c1(z, x, y);
endmodule

primitive compare(out, in1, in2);
   output out;
   input  in1, in2;

   table
   //in1  in2  out
      0    0  :1;
      0    1  :0;
      1    0  :0;
      1    1  :1;
   endtable
endprimitive
