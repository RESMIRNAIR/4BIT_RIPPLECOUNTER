`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2024 15:32:46
// Design Name: 
// Module Name: Ripple_Test
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


module Ripple_Test();
reg clk;
    reg rst;
    wire [3:0]q;

    // instantiate the ripplecounter design block
    ripplecounter dut(clk,rst,q);

    // generate clock pulse
    // initially provide 0
    // then inside always block toggle 
    // clock every 5 time units
    initial
      clk = 0;
    always
      #5 clk = ~clk;

    // provide reset values as the input
    initial
       begin
         rst = 1;
         #15 rst = 0;
         #180 rst = 1;
         #10 rst = 1;
         #20 $finish;
       end
       initial
        $monitor("time=%g,rst=%b,clk=%b,q=%d",$time,rst,clk,q);
endmodule
