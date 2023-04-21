 module os(
        input clk,  
        input rst,  
        input [3:0] red,
        input [3:0] green,
        input [3:0] blue,
        output reg [3:0] vga_r,  
        output reg [3:0] vga_g,  
        output reg [3:0] vga_b,  
        input [9:0] mouse_x,
        input [9:0] mouse_y,
        input [3:0] op,
        input [3:0] app_r,
        input [3:0] app_g,
        input [3:0] app_b,
        input [9:0] x,
        input [9:0] y,
        input valid
        );          
          parameter open=4'd0;
          parameter desk=4'd1;
          parameter start=4'd2;
          parameter close=4'd3;
          parameter app=4'd4;
          parameter camera=4'd5;
          reg [3:0] state;          
          reg [9:0] temp;

          always @(posedge clk or posedge rst) begin
            if (rst) begin
              state<=open;
              vga_r <= 4'b0000;
              vga_g <=4'b0000;
              vga_b <=4'b0000;
            end
            else if (valid)
//------------------------------------------------------------------------------------------  
            case(state)
            open:
                begin
                if((y>=120&&y<238&&((x>322&&x<=420)||(x>=235&&x<318))&&((x+5*y)>=1020))
                ||(y>242&&y<=360&&((x>322&&x<=420)||(x>=235&&x<318))&&((5*y-x)<=1380)))
                begin
                vga_r <= 4'b1111;
                vga_g <= 4'b0000;
                vga_b <= 4'b0000;
                end
                else
                begin
                vga_r <= 4'b0000;
                vga_g <= 4'b0000;
                vga_b <= 4'b0000;
                end
                state<=op;
                end
            desk:            
                begin
                if((y-mouse_y==0&&x-mouse_x==0)
                ||(y-mouse_y==1&&x-mouse_x>=0&&x-mouse_x<=1)
                ||(y-mouse_y==2&&x-mouse_x>=0&&x-mouse_x<=1)
                ||(y-mouse_y==3&&x-mouse_x>=0&&x-mouse_x<=3)
                ||(y-mouse_y==4&&x-mouse_x>=0&&x-mouse_x<=4)
                ||(y-mouse_y==5&&x-mouse_x>=0&&x-mouse_x<=4)
                ||(y-mouse_y==6&&x-mouse_x>=0&&x-mouse_x<=5)
                ||(y-mouse_y==7&&x-mouse_x>=0&&x-mouse_x<=6)
                ||(y-mouse_y==8&&x-mouse_x>=0&&x-mouse_x<=7)
                ||(y-mouse_y==9&&x-mouse_x>=0&&x-mouse_x<=7)
                ||(y-mouse_y==10&&x-mouse_x>=0&&x-mouse_x<=8)
                ||(y-mouse_y==11&&x-mouse_x>=0&&x-mouse_x<=9)
                ||(y-mouse_y==12&&x-mouse_x>=0&&x-mouse_x<=10)
                ||(y-mouse_y==13&&x-mouse_x>=0&&x-mouse_x<=6)
                ||(y-mouse_y==14&&x-mouse_x>=0&&x-mouse_x<=7)
                ||(y-mouse_y==15&&x-mouse_x>=0&&x-mouse_x<=7)
                ||(y-mouse_y==16&&((x-mouse_x>=0&&x-mouse_x<=3)||(x-mouse_x>=5&&x-mouse_x<=8)))
                ||(y-mouse_y==17&&((x-mouse_x>=0&&x-mouse_x<=2)||(x-mouse_x>=6&&x-mouse_x<=8)))
                ||(y-mouse_y==18&&((x-mouse_x>=0&&x-mouse_x<=1)||(x-mouse_x>=6&&x-mouse_x<=9)))
                ||(y-mouse_y==19&&((x-mouse_x>=0&&x-mouse_x<=1)||(x-mouse_x>=7&&x-mouse_x<=9)))
                ||(y-mouse_y==20&&(x-mouse_x>=8&&x-mouse_x<=9)))
                 begin
                 vga_r <= 4'b1111;
                 vga_g <=4'b1111;
                 vga_b <=4'b1111;
                 end
                 else if((y==10&&x==16)
                 ||(y==11&&(x==16||x==17))
                 ||(y==12&&x>=16&&x<=19)
                 ||(y==13&&x>=16&&x<=21)
                 ||(y==14&&x>=16&&x<=23)
                 ||(y>=15&&y<=18&&x>=16&&x<=25)
                 ||(y==19&&x>=18&&x<=25)
                 ||(y==20&&x>=20&&x<=25)
                 ||(y==21&&x>=21&&x<=25)
                 ||(y==22&&x>=23&&x<=25)
                 ||(y==23&&(x==25||x==27||x==28))
                 ||(y==24&&x>=25&&x<=29)
                 ||(y==25&&x>=23&&x<=31)
                 ||(y==26&&x>=21&&x<=32)
                 ||(y==27&&x>=19&&x<=33)
                 ||(y==28&&x>=20&&x<=32)
                 ||(y==29&&x>=21&&x<=30)
                 ||(y==30&&x>=23&&x<=28)
                 ||(y==31&&x>=24&&x<=26))
                 begin
                 vga_r <= 4'b0111;
                 vga_g <= 4'b1000;
                 vga_b <= 4'b0000; 
                 end
                 else if((y==20&&x==18)
                 ||(y==21&&(x==17||x==18))
                 ||(y==22&&x>=15&&x<=18)
                 ||(y==23&&x>=13&&x<=18)
                 ||(y>=24&&y<=30&&x>=12&&x<=18)
                 ||(y==31&&x>=12&&x<=16)
                 ||(y==32&&x>=12&&x<=14)
                 ||(y==33&&x==12))
                 begin
                 vga_r <= 4'b0111;
                 vga_g <= 4'b0110;
                 vga_b <= 4'b0000;
                 end
                 else if(y>440)
                 begin
                     if(((y>442&&y<450)||(y>450&&y<=458))&&((x>4&&x<12)||(x>12&&x<20)))
                     begin
                     vga_r <= 4'b1111;
                     vga_g <= 4'b1111;
                     vga_b <= 4'b1111;
                     end
                     else
                     begin
                     vga_r <= 4'b0000;
                     vga_g <= 4'b0000;
                     vga_b <= 4'b0000;
                     end
                 end
         
                 else
                 begin
                 vga_r <= red;
                 vga_g <= green;
                 vga_b <= blue;
                 end
                 state<=op;
                 end
            start:
            begin
                if((y-mouse_y==0&&x-mouse_x==0)
                ||(y-mouse_y==1&&x-mouse_x>=0&&x-mouse_x<=1)
                ||(y-mouse_y==2&&x-mouse_x>=0&&x-mouse_x<=1)
                ||(y-mouse_y==3&&x-mouse_x>=0&&x-mouse_x<=3)
                ||(y-mouse_y==4&&x-mouse_x>=0&&x-mouse_x<=4)
                ||(y-mouse_y==5&&x-mouse_x>=0&&x-mouse_x<=4)
                ||(y-mouse_y==6&&x-mouse_x>=0&&x-mouse_x<=5)
                ||(y-mouse_y==7&&x-mouse_x>=0&&x-mouse_x<=6)
                ||(y-mouse_y==8&&x-mouse_x>=0&&x-mouse_x<=7)
                ||(y-mouse_y==9&&x-mouse_x>=0&&x-mouse_x<=7)
                ||(y-mouse_y==10&&x-mouse_x>=0&&x-mouse_x<=8)
                ||(y-mouse_y==11&&x-mouse_x>=0&&x-mouse_x<=9)
                ||(y-mouse_y==12&&x-mouse_x>=0&&x-mouse_x<=10)
                ||(y-mouse_y==13&&x-mouse_x>=0&&x-mouse_x<=6)
                ||(y-mouse_y==14&&x-mouse_x>=0&&x-mouse_x<=7)
                ||(y-mouse_y==15&&x-mouse_x>=0&&x-mouse_x<=7)
                ||(y-mouse_y==16&&((x-mouse_x>=0&&x-mouse_x<=3)||(x-mouse_x>=5&&x-mouse_x<=8)))
                ||(y-mouse_y==17&&((x-mouse_x>=0&&x-mouse_x<=2)||(x-mouse_x>=6&&x-mouse_x<=8)))
                ||(y-mouse_y==18&&((x-mouse_x>=0&&x-mouse_x<=1)||(x-mouse_x>=6&&x-mouse_x<=9)))
                ||(y-mouse_y==19&&((x-mouse_x>=0&&x-mouse_x<=1)||(x-mouse_x>=7&&x-mouse_x<=9)))
                ||(y-mouse_y==20&&(x-mouse_x>=8&&x-mouse_x<=9)))
                 begin
                 vga_r <= 4'b1111;
                 vga_g <=4'b1111;
                 vga_b <=4'b1111;
                 end
                 else if(y>40&&y<=440&&x>=0&&x<=170)
                 begin
                 if((y==421&&x==12)
                 ||(y==422&&x==12)
                 ||(y==423&&(x==11||x==12||x==13))
                 ||(y==424&&(x>=9&&x<=15))
                 ||(y==425&&(x==8||x==9||x==15||x==16||x==12))
                 ||(y==426&&(x==7||x==17||x==12))
                 ||(y==427&&(x==6||x==18||x==12))
                 ||(y==428&&(x==6||x==18||x==5||x==19||x==12))
                 ||((y==429||y==430||y==431)&&(x==5||x==19))
                 ||(y==432&&(x==6||x==18||x==5||x==19))
                 ||(y==433&&(x==6||x==18))
                 ||(y==434&&(x==7||x==17))
                 ||(y==435&&(x==8||x==9||x==15||x==16))
                 ||(y==436&&(x>=9&&x<=15&&x!=12))
                 ||(y==437&&(x==11||x==12||x==13)))
                 begin
                 vga_r <= 4'b1111;
                 vga_g <=4'b1111;
                 vga_b <=4'b1111;
                 end
                 else if(
                 (y>=65&&y<=85&&x>=45&&x<=145)
                 ||(y>=85&&y<=205&&x>=85&&x<=105)
                 ||(y>=220&&y<=240&&x>=65&&x<=145)
                 ||(y>=240&&y<=340&&x>=105&&x<=125)
                 ||(y>=320&&y<=340&&x>+45&&x<=65)
                 ||(y>=340&&y<=360&&x>=65&&x<=105)
                 )
                 begin
                 vga_r <= 4'b0000;
                 vga_g <=4'b0110;
                 vga_b <=4'b0110;                 
                 end
                 else
                 begin
                 vga_r <= 4'b0000;
                 vga_g <=4'b0000;
                 vga_b <=4'b0000;
                 end
                 end
                 else if(y>440)
                 begin
                     if(((y>442&&y<450)||(y>450&&y<=458))&&((x>4&&x<12)||(x>12&&x<20)))
                     begin
                     vga_r <= 4'b0000;
                     vga_g <= 4'b0100;
                     vga_b <= 4'b1000;
                     end
                     else
                     begin
                     vga_r <= 4'b0000;
                     vga_g <= 4'b0000;
                     vga_b <= 4'b0000;
                     end
                 end
         
                 else
                 begin
                 vga_r <= red;
                 vga_g <= green;
                 vga_b <= blue;
                 end
                 state<=op;
            end            
            close:
            begin
            vga_r <= 4'b0000;
            vga_g <= 4'b0000;
            vga_b <= 4'b0000;   
            state<=op; 
            end
//-------------------------------------------------------------------------------------------
            app:
            begin
            if((y-mouse_y==0&&x-mouse_x==0)
            ||(y-mouse_y==1&&x-mouse_x>=0&&x-mouse_x<=1)
            ||(y-mouse_y==2&&x-mouse_x>=0&&x-mouse_x<=1)
            ||(y-mouse_y==3&&x-mouse_x>=0&&x-mouse_x<=3)
            ||(y-mouse_y==4&&x-mouse_x>=0&&x-mouse_x<=4)
            ||(y-mouse_y==5&&x-mouse_x>=0&&x-mouse_x<=4)
            ||(y-mouse_y==6&&x-mouse_x>=0&&x-mouse_x<=5)
            ||(y-mouse_y==7&&x-mouse_x>=0&&x-mouse_x<=6)
            ||(y-mouse_y==8&&x-mouse_x>=0&&x-mouse_x<=7)
            ||(y-mouse_y==9&&x-mouse_x>=0&&x-mouse_x<=7)
            ||(y-mouse_y==10&&x-mouse_x>=0&&x-mouse_x<=8)
            ||(y-mouse_y==11&&x-mouse_x>=0&&x-mouse_x<=9)
            ||(y-mouse_y==12&&x-mouse_x>=0&&x-mouse_x<=10)
            ||(y-mouse_y==13&&x-mouse_x>=0&&x-mouse_x<=6)
            ||(y-mouse_y==14&&x-mouse_x>=0&&x-mouse_x<=7)
            ||(y-mouse_y==15&&x-mouse_x>=0&&x-mouse_x<=7)
            ||(y-mouse_y==16&&((x-mouse_x>=0&&x-mouse_x<=3)||(x-mouse_x>=5&&x-mouse_x<=8)))
            ||(y-mouse_y==17&&((x-mouse_x>=0&&x-mouse_x<=2)||(x-mouse_x>=6&&x-mouse_x<=8)))
            ||(y-mouse_y==18&&((x-mouse_x>=0&&x-mouse_x<=1)||(x-mouse_x>=6&&x-mouse_x<=9)))
            ||(y-mouse_y==19&&((x-mouse_x>=0&&x-mouse_x<=1)||(x-mouse_x>=7&&x-mouse_x<=9)))
            ||(y-mouse_y==20&&(x-mouse_x>=8&&x-mouse_x<=9)))
             begin
                 vga_r <= 4'b1111;
                 vga_g <=4'b1111;
                 vga_b <=4'b1111;
             end
             else if(y>440)
             begin
                 if(((y>442&&y<450)||(y>450&&y<=458))&&((x>4&&x<12)||(x>12&&x<20)))
                 begin
                 vga_r <= 4'b1111;
                 vga_g <= 4'b1111;
                 vga_b <= 4'b1111;
                 end
                 else
                 begin
                 vga_r <= 4'b0000;
                 vga_g <= 4'b0000;
                 vga_b <= 4'b0000;
                 end
             end
             else if(y<20)
             begin
                 if(x>=617&&x<=635&&y>=2&&y<=18)
                 begin
                 vga_r <= 4'b1000;
                 vga_g <= 4'b0000;
                 vga_b <= 4'b0000;
                 end
                 else
                 vga_r <= 4'b0000;
                 vga_g <= 4'b0000;
                 vga_b <= 4'b1000;
                 begin
                 end
             end
             else
             begin
                vga_r<=app_r;
                vga_g<=app_g;
                vga_b<=app_b;
             end
             state<=op;   
            end
            camera:
            begin
            end
             
            endcase
//------------------------------------------------------------------------------------------
            else begin
              vga_r <= 4'b0;
              vga_g<=4'b0;
              vga_b<=4'b0;
            end
          end
endmodule