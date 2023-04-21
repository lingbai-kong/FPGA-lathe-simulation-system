module knief(
    input mclk,
    input rst,
    input en,
    input usb_en,
    input yes,
    input [9:0] x,//mouse
    input [9:0] y,//mouse
    input button_up,
    input button_down,
    input button_left,
    input button_right,
        
    output reg [9:0] knief_x,
    output reg [9:0] knief_y,
    output reg kind,
    output reg state
);
    parameter base=5'd20;
    parameter auto=1;
    parameter manip=0;
    reg auto_left;
    reg auto_up;

    always@(posedge yes or posedge rst)
    begin
    if(rst)
    begin
    state<=manip;
    end
    else
    begin
        if(!en)
        begin
        state<=manip;
        end
        else
        begin
            case(state)
            manip:
            begin
            if(yes&&y>=115&&y<=155&&x>=505&&x<=545)
            begin
            state<=auto;
            end
            end
            auto:
            begin
            if(yes&&y>=115&&y<=155&&x>=505&&x<=545)
            begin
            state<=manip;
            end         
            end
            endcase
        end
    end
    end
    
    always@(posedge mclk or posedge rst)
    begin
    if(rst)
    begin
    knief_x<=505;
    knief_y<=400;   
    auto_left<=0;
    auto_up<=0;
    end
    else
    begin
        if(!en)
        begin
        auto_left<=0;
        auto_up<=0;
        end
        else
        begin
        case(state)
        manip:
        begin
            auto_left<=0;
            auto_up<=0;
            if((~usb_en&&yes&&y>=25&&y<=65&&x>=550&&x<=590&&knief_y>200)||(usb_en&&button_up&&knief_y>200))
            begin
            knief_y<=knief_y-1;
            end
            else if((~usb_en&&yes&&y>=70&&y<=110&&x>=505&&x<=545&&knief_x>base)||(usb_en&&button_left&&knief_x>base))
            begin
            knief_x<=knief_x-1;
            end
            else if((~usb_en&&yes&&y>=70&&y<=110&&x>=550&&x<=590&&knief_y<440)||(usb_en&&button_down&&knief_y<440))
            begin
            knief_y<=knief_y+1;
            end
            else if((~usb_en&&yes&&y>=70&&y<=110&&x>=595&&x<=635&&knief_x<505)||(usb_en&&button_right&&knief_x<505))
            begin
            knief_x<=knief_x+1;
            end
        end
        auto:
        begin
            if(yes&&y>=115&&y<=155&&x>=550&&x<=590)
            begin
            auto_up<=0;
            auto_left<=1;
            end
            else if(yes&&y>=115&&y<=155&&x>=595&&x<=635)
            begin
            auto_left<=0;
            auto_up<=1;
            end
            else if(auto_left&&knief_x>base)
            begin
            knief_x<=knief_x-1;
            end
            else if(auto_up&&knief_y>200)
            begin
            knief_y<=knief_y-1;
            end 
        end
        endcase
        end
    end
    end
    
    always@(posedge yes or posedge rst)
    if(rst)
    begin
    kind<=0;
    end
    else
    begin
    if(yes&&y>=25&&y<=65&&x>=505&&x<=545)
    kind<=0;
    if(yes&&y>=25&&y<=65&&x>=595&&x<=635)
    kind<=1;
    end
endmodule