`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2023 10:38:53 AM
// Design Name: 
// Module Name: adder
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


module adder (
  input [15:0] num0,
  input [15:0] num1,
  input [15:0] num2,
  input [15:0] num3,
  input [15:0] num4,
  input [15:0] num5,
  input [15:0] num6,
  input [15:0] num7,
  input [15:0] num8,
  input [15:0] num9,
  input [15:0] num10,
  input [15:0] num11,
  input [15:0] num12,
  input [15:0] num13,
  input [15:0] num14,
  input [15:0] num15,
  input clk,
  output reg [27:0] sum
);

  reg [28:0] temp_sum;

  always @(posedge clk) begin
    temp_sum = num0 + num1 + num2 + num3 + num4 + num5 + num6 + num7 + num8 + num9 + num10 + num11 + num12 + num13 + num14 + num15;
    sum = temp_sum;
  end

endmodule