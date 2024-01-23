`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2024 15:29:15
// Design Name: 
// Module Name: Ripple_Counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ripplecounter(clk,rst,q);
  input clk,rst;
  output [3:0]q;

  // initiate 4 T-FF to update the count





endmodule

module tff(q,clk,rst);
  // tff takes clk and reset as input
  // q is output
  input clk,rst;
  output q;
  wire d;
  // by referring the diagram of tff, 
  // instantiate d flip flop and not gate
  dff df1(q,d,clk,rst);
  not n1(d,q);
endmodule

module dff(q,d,clk,rst);
  input d,clk,rst;
  output q;
  reg q; // store the output value
  always @(posedge clk or posedge rst)
   begin
    // refer the truth table to provide
    // values to q based on reset.
    if(rst) q=1'b0;
    else q=d;
end    
endmodule