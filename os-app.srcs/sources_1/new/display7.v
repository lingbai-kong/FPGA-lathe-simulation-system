module display7(
    input clk,
    input rst,
    input free,
    input [9:0] x,
    input [9:0] y,
    output reg [7:0] led_id,
    output reg [7:0] out_led 
    );
    
    wire [3:0] thou_x,hund_x,tens_x,unit_x; 
    wire [3:0] thou_y,hund_y,tens_y,unit_y; 
    
    reg [3:0] temp_data;
    
    reg trans_en=1;
    wire trans_done;
    reg [2:0] id;   
    reg [2:0] data_id;
    wire pclk;
    divider #(.div(10)) m (clk,rst,pclk);
    always @(posedge pclk or posedge rst)
    begin
    if(rst)
    begin
    id<=0;
    data_id<=0;
    led_id <= 8'b1111_1111;
    end
    else
    begin
        case(id)
            0 : begin led_id <= 8'b1111_1110; id<=1;data_id<=0; end
            1 : begin led_id <= 8'b1111_1101; id<=2;data_id<=1; end
            2 : begin led_id <= 8'b1111_1011; id<=3;data_id<=2; end
            3 : begin led_id <= 8'b1111_0111; id<=4;data_id<=3; end
            4 : begin led_id <= 8'b1110_1111; id<=5;data_id<=4; end
            5 : begin led_id <= 8'b1101_1111; id<=6;data_id<=5; end
            6 : begin led_id <= 8'b1011_1111; id<=7;data_id<=6; end
            7 : begin led_id <= 8'b0111_1111; id<=0;data_id<=7; end
            default: id<=1;
        endcase
    end
    end
    bin8421(x,thou_x,hund_x,tens_x,unit_x);
    bin8421(y,thou_y,hund_y,tens_y,unit_y);      
    always @(*)
    begin
         case(data_id)
                3'b000: temp_data <=free? 4'h6:unit_x;
                3'b001: temp_data <=free? 4'h4:tens_x;  
                3'b010: temp_data <=free? 4'h1:hund_x;   
                3'b011: temp_data <=free? 4'h2:thou_x;    
                3'b100: temp_data <=free? 4'h5:unit_y;
                3'b101: temp_data <=free? 4'h8:tens_y;
                3'b110: temp_data <=free? 4'h1:hund_y;
                3'b111: temp_data <=free? 4'hF:thou_y;     
                default:
                   temp_data <= 4'b1111;
           endcase
    end
    always @(*)
    case(temp_data)
        4'b0000: out_led <= 8'b0000_0011;    //0
        4'b0001: out_led <= 8'b1001_1111;    //1
        4'b0010: out_led <= 8'b0010_0101;    //2
        4'b0011: out_led <= 8'b0000_1101;    //3
        4'b0100: out_led <= 8'b1001_1001;    //4
        4'b0101: out_led <= 8'b0100_1001;    //5
        4'b0110: out_led <= 8'b0100_0001;    //6
        4'b0111: out_led <= 8'b0001_1111;    //7
        4'b1000: out_led <= 8'b0000_0001;    //8
        4'b1001: out_led <= 8'b0001_1001;    //9            
        default:out_led <= 8'b1111_1111;
    endcase   
endmodule