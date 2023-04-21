module mouse(
    input clk,
    input rst,
    input usb_en,
    input up,
    input down,
    input left,
    input right,
    input usb_up,
    input usb_down,
    input usb_left,
    input usb_right,
    input [7:0] dx,
    input [7:0] dy,
    output [9:0] x,
    output [9:0] y
);
    wire usb_mouse_clk;
    wire button_clk;
    
    reg [9:0] usb_x,usb_y;
    reg [9:0] button_x,button_y;
    
    divider #(.div(14)) n1 (clk,rst,usb_mouse_clk);
    divider #(.div(21)) n2 (clk,rst,button_clk);
    assign x=usb_en? usb_x:button_x;
    assign y=usb_en? usb_y:button_y;
    
    always@(posedge usb_mouse_clk or posedge rst)
    begin
    if(rst)
    begin
    usb_x<=10'b0;
    usb_y<=10'b0;
    end
    else if(usb_up||usb_down||usb_left||usb_right)
    begin
        if(usb_up&&y>1&&dy>8'b000000010)
        usb_y<=y-1;//{6'b0,dy[7:4]};
        if(usb_down&&y<480&&dy>8'b000000010)
        usb_y<=y+1;//{6'b0,dy[7:4]};
        if(usb_left&&x>1&&dx>8'b000000010)
        usb_x<=x-1;//{6'b0,dx[7:4]};
        if(usb_right&&x<640&&dx>8'b000000010)
        usb_x<=x+1;//{6'b0,dx[7:4]};
    end
    else
    begin
        usb_y<=y;
        usb_x<=x;
    end
    end
    always@(posedge button_clk or posedge rst)
    begin
    if(rst)
    begin
    button_x<=10'b0;
    button_y<=10'b0;
    end
    else if(up||down||left||right)
    begin
        if(up&&y>5)
        button_y<=y-5;
        if(down&&y<475)
        button_y<=y+5;
        if(left&&x>6)
        button_x<=x-5;
        if(right&&x<635)
        button_x<=x+5;    
    end
    else
    begin
        button_x<=x;
        button_y<=y;
    end
    end
endmodule