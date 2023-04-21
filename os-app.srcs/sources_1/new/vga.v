 module vga(  
        input clk,  
        input rst,  
        output  reg vga_hs,  
        output  reg vga_vs,
        output [9:0] x,
        output [9:0] y,
        output valid
        );          
          reg[9:0]xsync,ysync;
          assign x=xsync-143;
          assign y=ysync-34;
          always @(posedge clk or posedge rst) begin
            if (rst) begin  
              xsync <= 10'd0;
            end
            else if (xsync == 10'd799) begin
              xsync <= 10'd0;
            end
            else begin
              xsync <= xsync + 1;
            end
          end
        
          always @(posedge clk or posedge rst) begin
            if (rst) begin
              ysync <= 10'd0;
            end
            else if (ysync == 10'd524) begin
              ysync <= 10'd0;
            end
            else if (xsync == 10'd799) begin
              ysync <= ysync + 1;
            end
          end
          
          always @(posedge clk or posedge rst) begin
            if (rst) begin
              vga_hs <= 1'b0;
            end
            else if (xsync == 799) begin
              vga_hs <=1'b0;
            end
            else if (xsync == 95) begin
              vga_hs <= 1'b1;
            end
          end
        
          always @(posedge clk or posedge rst) begin
            if (rst) begin
              vga_vs <= 1'b0;
            end
            else if (ysync == 0) begin
              vga_vs <=1'b0;
            end
            else if (ysync == 1) begin
              vga_vs <= 1'b1;
            end
          end
          assign valid = (xsync > 143) && (xsync < 784) && (ysync > 34) && (ysync < 515);  
endmodule