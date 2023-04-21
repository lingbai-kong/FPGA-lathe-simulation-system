`timescale 1ps/1ps
module vga_tb;
    reg pclk;
    reg rst;
    wire HERF;
    wire VSYNC;
    wire [9:0] x,y;
    wire valid;
    vga test (pclk,rst,HERF,VSYNC,x,y,valid);
    initial pclk=0;
    always #5 pclk=~pclk;
    initial
    begin
    rst=1;
    #1000;
    rst=0;
    end
endmodule