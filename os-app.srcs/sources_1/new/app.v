module app(
    input clk,
    input control_clk,
    input m_rst,
    input app_en,
    input usb_en,
    input [9:0]vga_x,
    input [9:0]vga_y,
    input [9:0]mouse_x,
    input [9:0]mouse_y,
    input button_up,
    input button_down,
    input button_left,
    input button_right,
    input yes,
    output [3:0]app_r,
    output [3:0]app_g,
    output [3:0]app_b,
    
    input sound,
    input sound_en,
    
    output [9:0] knief_x,
    output [9:0] knief_y
);
    wire machine_en,machine_reset;
    wire k_rst;
    wire knief_kind;
    wire [0:399] obj1;
    wire [0:399] obj2;
    wire [0:399] obj3;
    wire [0:399] obj4;
    wire [0:399] obj5;
    wire [0:399] obj6;
    wire [0:399] obj7;
    wire [0:399] obj8;
    wire [0:399] obj9;
    wire [0:399] obj10;
    wire [0:399] obj11;
    wire [0:399] obj12;
    wire [0:399] obj13;
    wire [0:399] obj14;
    wire [0:399] obj15;
    wire [0:399] obj16;
    wire [0:399] obj17;
    wire [0:399] obj18;
    wire [0:399] obj19;
    wire [0:399] obj20;
    wire [0:399] obj21;
    wire [0:399] obj22;
    wire [0:399] obj23;
    wire [0:399] obj24;
    wire [0:399] obj25;
    wire [0:399] obj26;
    wire [0:399] obj27;
    wire [0:399] obj28;
    wire [0:399] obj29;
    wire [0:399] obj30;
    wire [0:399] obj31;
    wire [0:399] obj32;
    wire [0:399] obj33;
    wire [0:399] obj34;
    wire [0:399] obj35;
    wire [0:399] obj36;
    wire [0:399] obj37;
    wire [0:399] obj38;
    wire [0:399] obj39;
    wire [0:399] obj40;
    wire [0:399] obj41;
    wire [0:399] obj42;
    wire [0:399] obj43;
    wire [0:399] obj44;
    wire [0:399] obj45;
    wire [0:399] obj46;
    wire [0:399] obj47;
    wire [0:399] obj48;
    wire [0:399] obj49;
    wire [0:399] obj50;
    wire [0:399] obj51;
    wire [0:399] obj52;
    wire [0:399] obj53;
    wire [0:399] obj54;
    wire [0:399] obj55;
    wire [0:399] obj56;
    wire [0:399] obj57;
    wire [0:399] obj58;
    wire [0:399] obj59;
    wire [0:399] obj60;
    wire [0:399] obj61;
    wire [0:399] obj62;
    wire [0:399] obj63;
    wire [0:399] obj64;
    wire [0:399] obj65;
    wire [0:399] obj66;
    wire [0:399] obj67;
    wire [0:399] obj68;
    wire [0:399] obj69;
    wire [0:399] obj70;
    wire state;
    wire rst;
    
    assign k_rst=rst|machine_reset;
    assign rst=~app_en|m_rst;
    appvga k1 (rst,vga_x,vga_y,app_r,app_g,app_b,knief_x,knief_y,knief_kind,machine_en,usb_en,sound_en,state,obj1,obj2,obj3,obj4,obj5,obj6,obj7,obj8,obj9,obj10,obj11,obj12,obj13,obj14,obj15,obj16,obj17,obj18,obj19,obj20,obj21,obj22,obj23,obj24,obj25,obj26,obj27,obj28,obj29,obj30,obj31,obj32,obj33,obj34,obj35,obj36,obj37,obj38,obj39,obj40,obj41,obj42,obj43,obj44,obj45,obj46,obj47,obj48,obj49,obj50,obj51,obj52,obj53,obj54,obj55,obj56,obj57,obj58,obj59,obj60,obj61,obj62,obj63,obj64,obj65,obj66,obj67,obj68,obj69,obj70);
    appcontrol k2(clk,rst,mouse_x,mouse_y,yes,machine_en,machine_reset,sound,sound_en);
    knief k3(control_clk,k_rst,machine_en,usb_en,yes,mouse_x,mouse_y,button_up,button_down,button_left,button_right,knief_x,knief_y,knief_kind,state);
    object k4(control_clk,k_rst,knief_kind,knief_x,knief_y,obj1,obj2,obj3,obj4,obj5,obj6,obj7,obj8,obj9,obj10,obj11,obj12,obj13,obj14,obj15,obj16,obj17,obj18,obj19,obj20,obj21,obj22,obj23,obj24,obj25,obj26,obj27,obj28,obj29,obj30,obj31,obj32,obj33,obj34,obj35,obj36,obj37,obj38,obj39,obj40,obj41,obj42,obj43,obj44,obj45,obj46,obj47,obj48,obj49,obj50,obj51,obj52,obj53,obj54,obj55,obj56,obj57,obj58,obj59,obj60,obj61,obj62,obj63,obj64,obj65,obj66,obj67,obj68,obj69,obj70);
endmodule