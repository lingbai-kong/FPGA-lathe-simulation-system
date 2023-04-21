module top(
    input clk,
    input open,
    input usb_en,
    input sound_en,
    
    input [3:0] red,
    input [3:0] green,
    input [3:0] blue,
    output rVSYNC,
    output rHERF,
    output [3:0]r,
    output [3:0]g,
    output [3:0]b,
    
    input button_yes,
    input button_up,
    input button_down,
    input button_left,
    input button_right,
    
    input sound,
    output led,
    
    inout USB_CLOCK,
    inout USB_DATA,
    output error,
    
    output [7:0] led_id,
    output [7:0] out_led 
);
    wire rst;
    wire pclk;
    wire valid;
    wire [9:0] mouse_x,mouse_y;
    wire [3:0] op;
    wire [3:0] app_r,app_g,app_b;
    wire [9:0] vga_x,vga_y;
    wire [9:0] knief_x,knief_y;
    wire usb_mouse_up,usb_mouse_down,usb_mouse_right,usb_mouse_left,usb_mouse_yes;
    wire yes;
    wire [7:0] dx;
    wire [7:0] dy;
    wire usb_rst;
    wire free;
    wire app_en;
    assign rst=~open;
    assign yes=usb_en? usb_mouse_yes:button_yes;
    assign usb_rst=rst|~usb_en;
    assign led=~sound&sound_en;
    assign free=(op==4'd4)? 0:1;
    assign app_en=(op==4'd4)? 1:0;
    
    vga m1(pclk,rst,rHERF,rVSYNC,vga_x,vga_y,valid);
    display7 m2 (clk,rst,free,knief_x,knief_y,led_id,out_led);
    USB_mouse m3 (clk,usb_rst,usb_mouse_up,usb_mouse_down,usb_mouse_left,usb_mouse_right,usb_mouse_yes,dx,dy,USB_CLOCK,USB_DATA,error);
    os m4(pclk,rst,red,green,blue,r,g,b,mouse_x,mouse_y,op,app_r,app_g,app_b,vga_x,vga_y,valid);
    divider #(.div(1)) m5 (clk,rst,pclk);
    mouse m6(clk,rst,usb_en,button_up,button_down,button_left,button_right,usb_mouse_up,usb_mouse_down,usb_mouse_left,usb_mouse_right,dx,dy,mouse_x,mouse_y);
    divider #(.div(21)) m7 (clk,rst,control_clk);
    option m8(clk,rst,yes,mouse_x,mouse_y,op);
    app m9 (clk,control_clk,rst,app_en,usb_en,vga_x,vga_y,mouse_x,mouse_y,button_up,button_down,button_left,button_right,yes,app_r,app_g,app_b,sound,sound_en,knief_x,knief_y);
endmodule