module USB_mouse(
    input clk,
    input rst,
    output reg up,
    output reg down,
    output reg left,
    output reg right,
    output reg yes,//左键信号
    
    output reg [7:0] dx,
    output reg [7:0] dy,
    // usb接口
    inout CLK,
    inout DATA,
    output PS2_error
);
    //usb接口控制
    wire   clk_out_en;
    wire   data_out_en;
    wire   clk_out;
    wire   clk_in;
    wire   data_out;
    wire   data_in;
    assign CLK = (clk_out_en) ? clk_out : 1'bz;
    assign DATA = (data_out_en) ? data_out : 1'bz;
    assign clk_in = CLK;
    assign data_in = DATA;
    
    wire       PS2_valid;
    wire [7:0] PS2_data_in;
    reg  [7:0] PS2_data_out;
    wire       PS2_busy;

    wire       PS2_complete;
    reg        PS2_enable;
    
    reg  CLK_d;
    reg  DATA_d;
    
    always @(posedge clk or posedge rst) 
    begin
        if(rst) 
        begin
            CLK_d <= 1'b0;
            DATA_d  <= 1'b0;
        end
        else 
        begin
            CLK_d <= clk_in;
            DATA_d <= data_in;
        end
    end
    
    ps2_trans ps2_trans(clk,rst,clk_in,data_in,PS2_data_in,PS2_valid,PS2_error,clk_out,data_out,PS2_data_out,PS2_enable,PS2_complete,PS2_busy,clk_out_en,data_out_en);
    
    // 状态机
    parameter IDLE = 4'd0;
    parameter SEND_RESET = 4'd1;
    parameter WAIT_ACKNOWLEDGE1 = 4'd2;
    parameter WAIT_SELF_TEST = 4'd3;
    parameter WAIT_MOUSE_ID = 4'd4;
    parameter ENABLE_DATA_REPORT = 4'd5;
    parameter WAIT_ACKNOWLEDGE2 = 4'd6;
    parameter GET_DATA1 = 4'd7;
    parameter GET_DATA2 = 4'd8;
    parameter GET_DATA3 = 4'd9;
    
    reg [3:0] state;
    reg [3:0] next_state;
    
    always @(posedge clk or posedge rst) 
        begin
        if(rst) 
        begin
            state <= IDLE;
        end
        else 
        begin
            state <= next_state;
        end
    end
    
    always @(posedge clk) 
        begin
        case(state)
        IDLE: 
        begin
            next_state <= SEND_RESET;
            PS2_enable <= 1'b0;
            PS2_data_out <= 8'h00;
        end
        SEND_RESET: 
        begin
            if(~PS2_busy && PS2_complete) 
            begin
                next_state <= WAIT_ACKNOWLEDGE1;
                PS2_enable <= 1'b0;
            end
            else 
            begin
                next_state <= SEND_RESET;
                PS2_enable <= 1'b1;
                PS2_data_out <= 8'hFF;
            end
        end
        WAIT_ACKNOWLEDGE1: 
        begin
            if(PS2_valid && (PS2_data_in == 8'hFA)) 
            begin
                next_state <= WAIT_SELF_TEST;
            end
            else 
            begin
                next_state <= WAIT_ACKNOWLEDGE1;
            end
        end
        WAIT_SELF_TEST: 
        begin
            if(PS2_valid && (PS2_data_in == 8'hAA)) 
            begin   
                next_state <= WAIT_MOUSE_ID;
            end
            else 
            begin
                next_state <= WAIT_SELF_TEST;
            end
        end
        WAIT_MOUSE_ID: 
        begin
            if(PS2_valid && (PS2_data_in == 8'h00)) 
            begin  
                next_state <= ENABLE_DATA_REPORT;
            end
            else 
            begin
                next_state <= WAIT_MOUSE_ID;
            end
        end
        ENABLE_DATA_REPORT: 
        begin
            if(~PS2_busy && PS2_complete) 
            begin
                next_state <= WAIT_ACKNOWLEDGE2;
                PS2_enable <= 1'b0;
            end
            else 
            begin
                next_state <= ENABLE_DATA_REPORT;
                PS2_enable <= 1'b1;
                PS2_data_out <= 8'hF4;
            end
        end
    
        WAIT_ACKNOWLEDGE2: 
        begin
            if(PS2_valid && (PS2_data_in == 8'hFA)) 
            begin
                next_state <= GET_DATA1;
            end
            else 
            begin
                next_state <= WAIT_ACKNOWLEDGE2;
            end
        end
        GET_DATA1: 
        begin
            if(PS2_valid)
            begin
                up <= ~PS2_data_in[5];
                down <= PS2_data_in[5];
                right <= ~PS2_data_in[4];
                left <= PS2_data_in[4];
                yes <= PS2_data_in[0];
                next_state <= GET_DATA2;
            end
            else 
            begin
                up <= 1'b0;
                down <= 1'b0;
                right <= 1'b0;
                left <= 1'b0;
                yes <= 1'b0;
                next_state <= GET_DATA1;
            end
        end
        GET_DATA2: 
        begin
            if(PS2_valid) 
            begin
                dx<=PS2_data_in;
                next_state <= GET_DATA3;
            end
            else 
            begin
                dx<=8'b0;;
                next_state <= GET_DATA2;
            end
        end
        GET_DATA3: 
        begin
            if(PS2_valid) 
            begin
                dy<=PS2_data_in;
                next_state <= GET_DATA1;
            end
            else 
            begin
                dy<=8'b0;
                next_state <= GET_DATA3;
            end
        end
        endcase
    end
endmodule