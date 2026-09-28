`timescale 1ns/1ps
module mealy_toggle(input wire clk,rst,enable,bit_in,output reg state,output wire [1:0] value);
always @(posedge clk) if(rst) state<=0;else if(enable && bit_in) state<=~state;
assign value=!bit_in ? 2'b00 : (state ? 2'b01 : 2'b10);
endmodule