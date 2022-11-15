`timescale 100 ns / 100 ps
module tb_barrel_shift_16bit;
  reg [15:0] in;
  reg [3:0] ctrl;
  wire [15:0] out; 
  initial begin $dumpfile("tb_barrel_shifter.vcd"); 
 $dumpvars(0,tb_barrel_shift_16bit); 
 end
barrel_shift_16bit bs(.in(in), .ctrl(ctrl), .out(out));
  
initial 
 begin    
         in=16'd16385; ctrl=4'd0; 
        #5 in=16'd16385; ctrl=4'd1; 
        #5 in=16'd16385; ctrl=4'd2; 
        #5 in=16'd16385; ctrl=4'd3; 
        #5 in=16'd16385; ctrl=4'd4; 
        #5 in=16'd16385; ctrl=4'd5; 
        #5 in=16'd16385; ctrl=4'd6; 
        #5 in=16'd16385; ctrl=4'd7; 
        #5 in=16'd16385; ctrl=4'd8; 
        #5 in=16'd16385; ctrl=4'd9; 
        #5 in=16'd16385; ctrl=4'd10; 
        #5 in=16'd16385; ctrl=4'd11; 
        #5 in=16'd16385; ctrl=4'd12; 
        #5 in=16'd16385; ctrl=4'd13; 
        #5 in=16'd16385; ctrl=4'd14; 
        #5 in=16'd16385; ctrl=4'd15; 
  end
    initial begin
      $monitor("Input=%d, Control=%d, Output=%d",in,ctrl,out);    
    end
endmodule
