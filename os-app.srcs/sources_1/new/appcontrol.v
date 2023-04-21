module appcontrol(
    input clk,
    input rst,
    input [9:0] mouse_x,
    input [9:0] mouse_y,
    input yes,
    output reg machine_en,
    output reg machine_reset,
    input sound,
    input sound_en
);
    parameter stop=4'd0;
    parameter start=4'd1;
    parameter reset=4'd2;
    reg [3:0] state;
    always@(posedge clk or posedge rst)
    begin
    if(rst)
    begin
    state<=reset;
    end
    else
    begin
        case(state)
        reset:
        begin
            machine_reset<=1;
            machine_en<=0;
            state<=stop;
        end
        stop:
        begin
            machine_reset<=0;
            machine_en<=0;
            if(yes&&mouse_y>=160&&mouse_y<=200&&mouse_x>=550&&mouse_x<=590)
                state<=reset;
            else if(yes&&mouse_y>=160&&mouse_y<=200&&mouse_x>=505&&mouse_x<=545)
                state<=start;
            else
                state<=stop;
        end
        start:
        begin
            machine_en<=1;
            if(yes&&mouse_y>=160&&mouse_y<=200&&mouse_x>=550&&mouse_x<=590)
                state<=reset;
            else if((yes&&mouse_y>=160&&mouse_y<=200&&mouse_x>=595&&mouse_x<=635)||(sound_en&&~sound))
                state<=stop;
            else
                state<=start;
        end
        endcase
    end
    end
endmodule