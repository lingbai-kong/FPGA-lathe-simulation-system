module divider #(parameter div=14)
(
    input clk100M,
    input rst,
    output clk1
);
 reg [div:0] count; 
assign clk1 = count[div];
always @ (posedge clk100M or posedge rst)  
begin  
    if (rst)  
    count <= 0;  
    else  
    count <= count+1;  
end 
endmodule