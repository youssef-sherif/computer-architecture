
module alu(input logic [31:0] a, b,
           input logic [2:0] f,
           output logic [31:0] y,
           output logic zero);

logic x;

always_comb

case (f)
  3'b000: //AND
     begin
       y = a & b;
     end
   3'b001: //OR
      begin
       y = a | b;
      end
   3'b010: //ADD
      begin
       y = a + b;
      end
   3'b110: //SUB
      begin
       y = a - b;
      end
   3'b111: //SLT
      begin
       y = a>b? 1:0;
      end
    default: 
      begin 
      end
endcase
   always_comb
     begin
        if (y == 32'h00000000)
              x = 1'h1;
        else
              x = 1'h0;
	zero = x;
     end
endmodule

            