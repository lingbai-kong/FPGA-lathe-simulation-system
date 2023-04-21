module option(
    input clk,
    input rst,
    input yes,
    input [9:0] mouse_x,
    input [9:0] mouse_y,
    output reg [3:0] op
);
    parameter open=4'd0;
    parameter desk=4'd1;
    parameter start=4'd2;
    parameter close=4'd3;
    parameter app=4'd4;
    always@(posedge clk or posedge rst)
    begin
        if(rst)
        op<=open;
        else
        begin
        case(op)
        open:
        begin
            if(yes)
            op<=desk;
            else
            op<=open;
        end
        desk:
        begin
            if(yes&&mouse_x>=0&&mouse_x<=20&&mouse_y>=440&&mouse_y<=460)
            begin
            op<=start;
            end
            else if(yes&&mouse_x>=10&&mouse_x<=35&&mouse_y>=10&&mouse_y<=350)
            op<=app;
            else
            begin
            op<=desk;
            end
        end
        start:
        begin
            if(yes&&mouse_x>=0&&mouse_x<=20&&mouse_y>=420&&mouse_y<=440)
            begin
            op<=close;
            end
            else if(yes&&((mouse_x>=170&&mouse_x<=680)||(mouse_y>=440||mouse_y<=40)))
            begin
            op<=desk;
            end
            else
            begin
            op<=start;
            end
        end
        close:
        begin
        op<=close;
        end
        app:
        begin
            if(yes&&mouse_x>=617&&mouse_x<=635&&mouse_y>=0&&mouse_y<=20)
            begin
            op<=desk;
            end
            else
            begin
            op<=app;
            end
        end    
        endcase
        end
    end
endmodule