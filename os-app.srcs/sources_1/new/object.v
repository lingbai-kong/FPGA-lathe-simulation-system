module object(
    input mclk,
    input rst,
    input knief_kind,
    input [9:0] knief_x,
    input [9:0] knief_y,
    output reg [0:399] obj1,
    output reg [0:399] obj2,
    output reg [0:399] obj3,
    output reg [0:399] obj4,
    output reg [0:399] obj5,
    output reg [0:399] obj6,
    output reg [0:399] obj7,
    output reg [0:399] obj8,
    output reg [0:399] obj9,
    output reg [0:399] obj10,
    output reg [0:399] obj11,
    output reg [0:399] obj12,
    output reg [0:399] obj13,
    output reg [0:399] obj14,
    output reg [0:399] obj15,
    output reg [0:399] obj16,
    output reg [0:399] obj17,
    output reg [0:399] obj18,
    output reg [0:399] obj19,
    output reg [0:399] obj20,
    output reg [0:399] obj21,
    output reg [0:399] obj22,
    output reg [0:399] obj23,
    output reg [0:399] obj24,
    output reg [0:399] obj25,
    output reg [0:399] obj26,
    output reg [0:399] obj27,
    output reg [0:399] obj28,
    output reg [0:399] obj29,
    output reg [0:399] obj30,
    output reg [0:399] obj31,
    output reg [0:399] obj32,
    output reg [0:399] obj33,
    output reg [0:399] obj34,
    output reg [0:399] obj35,
    output reg [0:399] obj36,
    output reg [0:399] obj37,
    output reg [0:399] obj38,
    output reg [0:399] obj39,
    output reg [0:399] obj40,
    output reg [0:399] obj41,
    output reg [0:399] obj42,
    output reg [0:399] obj43,
    output reg [0:399] obj44,
    output reg [0:399] obj45,
    output reg [0:399] obj46,
    output reg [0:399] obj47,
    output reg [0:399] obj48,
    output reg [0:399] obj49,
    output reg [0:399] obj50,
    output reg [0:399] obj51,
    output reg [0:399] obj52,
    output reg [0:399] obj53,
    output reg [0:399] obj54,
    output reg [0:399] obj55,
    output reg [0:399] obj56,
    output reg [0:399] obj57,
    output reg [0:399] obj58,
    output reg [0:399] obj59,
    output reg [0:399] obj60,
    output reg [0:399] obj61,
    output reg [0:399] obj62,
    output reg [0:399] obj63,
    output reg [0:399] obj64,
    output reg [0:399] obj65,
    output reg [0:399] obj66,
    output reg [0:399] obj67,
    output reg [0:399] obj68,
    output reg [0:399] obj69,
    output reg [0:399] obj70
);
    always@(posedge mclk or posedge rst)
    begin
    if(rst)
    begin
    obj1<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj2<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj3<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj4<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj5<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj6<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj7<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj8<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj9<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj10<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj11<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj12<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj13<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj14<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj15<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj16<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj17<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj18<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj19<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj20<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj21<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj22<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj23<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj24<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj25<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj26<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj27<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj28<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj29<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj30<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj31<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj32<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj33<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj34<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj35<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj36<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj37<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj38<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj39<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj40<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj41<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj42<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj43<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj44<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj45<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj46<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj47<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj48<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj49<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj50<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj51<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj52<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj53<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj54<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj55<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj56<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj57<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj58<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj59<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj60<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj61<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj62<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj63<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj64<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj65<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj66<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj67<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj68<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj69<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    obj70<=400'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    end
    else
    begin
    if(knief_kind&&knief_x<=420)
    begin
        if(knief_y<=240&&knief_y>=205)
        obj1[knief_x - 20] <= 0;
        if(knief_y<=241&&knief_y>=206)
        obj2[knief_x - 20] <= 0;
        if(knief_y<=242&&knief_y>=207)
        obj3[knief_x - 20] <= 0;
        if(knief_y<=243&&knief_y>=208)
        obj4[knief_x - 20] <= 0;
        if(knief_y<=244&&knief_y>=209)
        obj5[knief_x - 20] <= 0;
        if(knief_y<=245&&knief_y>=210)
        obj6[knief_x - 20] <= 0;
        if(knief_y<=246&&knief_y>=211)
        obj7[knief_x - 20] <= 0;
        if(knief_y<=247&&knief_y>=212)
        obj8[knief_x - 20] <= 0;
        if(knief_y<=248&&knief_y>=213)
        obj9[knief_x - 20] <= 0;
        if(knief_y<=249&&knief_y>=214)
        obj10[knief_x - 20] <= 0;
        if(knief_y<=250&&knief_y>=215)
        obj11[knief_x - 20] <= 0;
        if(knief_y<=251&&knief_y>=216)
        obj12[knief_x - 20] <= 0;
        if(knief_y<=252&&knief_y>=217)
        obj13[knief_x - 20] <= 0;
        if(knief_y<=253&&knief_y>=218)
        obj14[knief_x - 20] <= 0;
        if(knief_y<=254&&knief_y>=219)
        obj15[knief_x - 20] <= 0;
        if(knief_y<=255&&knief_y>=220)
        obj16[knief_x - 20] <= 0;
        if(knief_y<=256&&knief_y>=221)
        obj17[knief_x - 20] <= 0;
        if(knief_y<=257&&knief_y>=222)
        obj18[knief_x - 20] <= 0;
        if(knief_y<=258&&knief_y>=223)
        obj19[knief_x - 20] <= 0;
        if(knief_y<=259&&knief_y>=224)
        obj20[knief_x - 20] <= 0;
        if(knief_y<=260&&knief_y>=225)
        obj21[knief_x - 20] <= 0;
        if(knief_y<=261&&knief_y>=226)
        obj22[knief_x - 20] <= 0;
        if(knief_y<=262&&knief_y>=227)
        obj23[knief_x - 20] <= 0;
        if(knief_y<=263&&knief_y>=228)
        obj24[knief_x - 20] <= 0;
        if(knief_y<=264&&knief_y>=229)
        obj25[knief_x - 20] <= 0;
        if(knief_y<=265&&knief_y>=230)
        obj26[knief_x - 20] <= 0;
        if(knief_y<=266&&knief_y>=231)
        obj27[knief_x - 20] <= 0;
        if(knief_y<=267&&knief_y>=232)
        obj28[knief_x - 20] <= 0;
        if(knief_y<=268&&knief_y>=233)
        obj29[knief_x - 20] <= 0;
        if(knief_y<=269&&knief_y>=234)
        obj30[knief_x - 20] <= 0;
        if(knief_y<=270&&knief_y>=235)
        obj31[knief_x - 20] <= 0;
        if(knief_y<=271&&knief_y>=236)
        obj32[knief_x - 20] <= 0;
        if(knief_y<=272&&knief_y>=237)
        obj33[knief_x - 20] <= 0;
        if(knief_y<=273&&knief_y>=238)
        obj34[knief_x - 20] <= 0;
        if(knief_y<=274&&knief_y>=239)
        obj35[knief_x - 20] <= 0;
        if(knief_y<=275&&knief_y>=240)
        obj36[knief_x - 20] <= 0;
        if(knief_y<=276&&knief_y>=241)
        obj37[knief_x - 20] <= 0;
        if(knief_y<=277&&knief_y>=242)
        obj38[knief_x - 20] <= 0;
        if(knief_y<=278&&knief_y>=243)
        obj39[knief_x - 20] <= 0;
        if(knief_y<=279&&knief_y>=244)
        obj40[knief_x - 20] <= 0;
        if(knief_y<=280&&knief_y>=245)
        obj41[knief_x - 20] <= 0;
        if(knief_y<=281&&knief_y>=246)
        obj42[knief_x - 20] <= 0;
        if(knief_y<=282&&knief_y>=247)
        obj43[knief_x - 20] <= 0;
        if(knief_y<=283&&knief_y>=248)
        obj44[knief_x - 20] <= 0;
        if(knief_y<=284&&knief_y>=249)
        obj45[knief_x - 20] <= 0;
        if(knief_y<=285&&knief_y>=250)
        obj46[knief_x - 20] <= 0;
        if(knief_y<=286&&knief_y>=251)
        obj47[knief_x - 20] <= 0;
        if(knief_y<=287&&knief_y>=252)
        obj48[knief_x - 20] <= 0;
        if(knief_y<=288&&knief_y>=253)
        obj49[knief_x - 20] <= 0;
        if(knief_y<=289&&knief_y>=254)
        obj50[knief_x - 20] <= 0;
        if(knief_y<=290&&knief_y>=255)
        obj51[knief_x - 20] <= 0;
        if(knief_y<=291&&knief_y>=256)
        obj52[knief_x - 20] <= 0;
        if(knief_y<=292&&knief_y>=257)
        obj53[knief_x - 20] <= 0;
        if(knief_y<=293&&knief_y>=258)
        obj54[knief_x - 20] <= 0;
        if(knief_y<=294&&knief_y>=259)
        obj55[knief_x - 20] <= 0;
        if(knief_y<=295&&knief_y>=260)
        obj56[knief_x - 20] <= 0;
        if(knief_y<=296&&knief_y>=261)
        obj57[knief_x - 20] <= 0;
        if(knief_y<=297&&knief_y>=262)
        obj58[knief_x - 20] <= 0;
        if(knief_y<=298&&knief_y>=263)
        obj59[knief_x - 20] <= 0;
        if(knief_y<=299&&knief_y>=264)
        obj60[knief_x - 20] <= 0;
        if(knief_y<=300&&knief_y>=265)
        obj61[knief_x - 20] <= 0;
        if(knief_y<=301&&knief_y>=266)
        obj62[knief_x - 20] <= 0;
        if(knief_y<=302&&knief_y>=267)
        obj63[knief_x - 20] <= 0;
        if(knief_y<=303&&knief_y>=268)
        obj64[knief_x - 20] <= 0;
        if(knief_y<=304&&knief_y>=269)
        obj65[knief_x - 20] <= 0;
        if(knief_y<=305&&knief_y>=270)
        obj66[knief_x - 20] <= 0;
        if(knief_y<=306&&knief_y>=271)
        obj67[knief_x - 20] <= 0;
        if(knief_y<=307&&knief_y>=272)
        obj68[knief_x - 20] <= 0;
        if(knief_y<=308&&knief_y>=273)
        obj69[knief_x - 20] <= 0;
        if(knief_y<=309&&knief_y>=274)
        obj70[knief_x - 20] <= 0;
      end
      else if(!knief_kind)
      begin
          if((knief_x>=1+260-knief_y)&&(knief_x<=400+260-knief_y)&&(240>=knief_y)&&(220<=knief_y))
              obj1[knief_x+knief_y-260] <= 0;
          if((knief_x>=1+261-knief_y)&&(knief_x<=400+261-knief_y)&&(241>=knief_y)&&(221<=knief_y))
                  obj2[knief_x+knief_y-261] <= 0;
          if((knief_x>=1+262-knief_y)&&(knief_x<=400+262-knief_y)&&(242>=knief_y)&&(222<=knief_y))
                  obj3[knief_x+knief_y-262] <= 0;
          if((knief_x>=1+263-knief_y)&&(knief_x<=400+263-knief_y)&&(243>=knief_y)&&(223<=knief_y))
                  obj4[knief_x+knief_y-263] <= 0;
          if((knief_x>=1+264-knief_y)&&(knief_x<=400+264-knief_y)&&(244>=knief_y)&&(224<=knief_y))
                  obj5[knief_x+knief_y-264] <= 0;
          if((knief_x>=1+265-knief_y)&&(knief_x<=400+265-knief_y)&&(245>=knief_y)&&(225<=knief_y))
                  obj6[knief_x+knief_y-265] <= 0;
          if((knief_x>=1+266-knief_y)&&(knief_x<=400+266-knief_y)&&(246>=knief_y)&&(226<=knief_y))
                  obj7[knief_x+knief_y-266] <= 0;
          if((knief_x>=1+267-knief_y)&&(knief_x<=400+267-knief_y)&&(247>=knief_y)&&(227<=knief_y))
                  obj8[knief_x+knief_y-267] <= 0;
          if((knief_x>=1+268-knief_y)&&(knief_x<=400+268-knief_y)&&(248>=knief_y)&&(228<=knief_y))
                  obj9[knief_x+knief_y-268] <= 0;
          if((knief_x>=1+269-knief_y)&&(knief_x<=400+269-knief_y)&&(249>=knief_y)&&(229<=knief_y))
                  obj10[knief_x+knief_y-269] <= 0;
          if((knief_x>=1+270-knief_y)&&(knief_x<=400+270-knief_y)&&(250>=knief_y)&&(230<=knief_y))
                  obj11[knief_x+knief_y-270] <= 0;
          if((knief_x>=1+271-knief_y)&&(knief_x<=400+271-knief_y)&&(251>=knief_y)&&(231<=knief_y))
                  obj12[knief_x+knief_y-271] <= 0;
          if((knief_x>=1+272-knief_y)&&(knief_x<=400+272-knief_y)&&(252>=knief_y)&&(232<=knief_y))
                  obj13[knief_x+knief_y-272] <= 0;
          if((knief_x>=1+273-knief_y)&&(knief_x<=400+273-knief_y)&&(253>=knief_y)&&(233<=knief_y))
                  obj14[knief_x+knief_y-273] <= 0;
          if((knief_x>=1+274-knief_y)&&(knief_x<=400+274-knief_y)&&(254>=knief_y)&&(234<=knief_y))
                  obj15[knief_x+knief_y-274] <= 0;
          if((knief_x>=1+275-knief_y)&&(knief_x<=400+275-knief_y)&&(255>=knief_y)&&(235<=knief_y))
                  obj16[knief_x+knief_y-275] <= 0;
          if((knief_x>=1+276-knief_y)&&(knief_x<=400+276-knief_y)&&(256>=knief_y)&&(236<=knief_y))
                  obj17[knief_x+knief_y-276] <= 0;
          if((knief_x>=1+277-knief_y)&&(knief_x<=400+277-knief_y)&&(257>=knief_y)&&(237<=knief_y))
                  obj18[knief_x+knief_y-277] <= 0;
          if((knief_x>=1+278-knief_y)&&(knief_x<=400+278-knief_y)&&(258>=knief_y)&&(238<=knief_y))
                  obj19[knief_x+knief_y-278] <= 0;
          if((knief_x>=1+279-knief_y)&&(knief_x<=400+279-knief_y)&&(259>=knief_y)&&(239<=knief_y))
                  obj20[knief_x+knief_y-279] <= 0;
          if((knief_x>=1+280-knief_y)&&(knief_x<=400+280-knief_y)&&(260>=knief_y)&&(240<=knief_y))
                  obj21[knief_x+knief_y-280] <= 0;
          if((knief_x>=1+281-knief_y)&&(knief_x<=400+281-knief_y)&&(261>=knief_y)&&(241<=knief_y))
                  obj22[knief_x+knief_y-281] <= 0;
          if((knief_x>=1+282-knief_y)&&(knief_x<=400+282-knief_y)&&(262>=knief_y)&&(242<=knief_y))
                  obj23[knief_x+knief_y-282] <= 0;
          if((knief_x>=1+283-knief_y)&&(knief_x<=400+283-knief_y)&&(263>=knief_y)&&(243<=knief_y))
                  obj24[knief_x+knief_y-283] <= 0;
          if((knief_x>=1+284-knief_y)&&(knief_x<=400+284-knief_y)&&(264>=knief_y)&&(244<=knief_y))
                  obj25[knief_x+knief_y-284] <= 0;
          if((knief_x>=1+285-knief_y)&&(knief_x<=400+285-knief_y)&&(265>=knief_y)&&(245<=knief_y))
                  obj26[knief_x+knief_y-285] <= 0;
          if((knief_x>=1+286-knief_y)&&(knief_x<=400+286-knief_y)&&(266>=knief_y)&&(246<=knief_y))
                  obj27[knief_x+knief_y-286] <= 0;
          if((knief_x>=1+287-knief_y)&&(knief_x<=400+287-knief_y)&&(267>=knief_y)&&(247<=knief_y))
                  obj28[knief_x+knief_y-287] <= 0;
          if((knief_x>=1+288-knief_y)&&(knief_x<=400+288-knief_y)&&(268>=knief_y)&&(248<=knief_y))
                  obj29[knief_x+knief_y-288] <= 0;
          if((knief_x>=1+289-knief_y)&&(knief_x<=400+289-knief_y)&&(269>=knief_y)&&(249<=knief_y))
                  obj30[knief_x+knief_y-289] <= 0;
          if((knief_x>=1+290-knief_y)&&(knief_x<=400+290-knief_y)&&(270>=knief_y)&&(250<=knief_y))
                  obj31[knief_x+knief_y-290] <= 0;
          if((knief_x>=1+291-knief_y)&&(knief_x<=400+291-knief_y)&&(271>=knief_y)&&(251<=knief_y))
                  obj32[knief_x+knief_y-291] <= 0;
          if((knief_x>=1+292-knief_y)&&(knief_x<=400+292-knief_y)&&(272>=knief_y)&&(252<=knief_y))
                  obj33[knief_x+knief_y-292] <= 0;
          if((knief_x>=1+293-knief_y)&&(knief_x<=400+293-knief_y)&&(273>=knief_y)&&(253<=knief_y))
                  obj34[knief_x+knief_y-293] <= 0;
          if((knief_x>=1+294-knief_y)&&(knief_x<=400+294-knief_y)&&(274>=knief_y)&&(254<=knief_y))
                  obj35[knief_x+knief_y-294] <= 0;
          if((knief_x>=1+295-knief_y)&&(knief_x<=400+295-knief_y)&&(275>=knief_y)&&(255<=knief_y))
                  obj36[knief_x+knief_y-295] <= 0;
          if((knief_x>=1+296-knief_y)&&(knief_x<=400+296-knief_y)&&(276>=knief_y)&&(256<=knief_y))
                  obj37[knief_x+knief_y-296] <= 0;
          if((knief_x>=1+297-knief_y)&&(knief_x<=400+297-knief_y)&&(277>=knief_y)&&(257<=knief_y))
                  obj38[knief_x+knief_y-297] <= 0;
          if((knief_x>=1+298-knief_y)&&(knief_x<=400+298-knief_y)&&(278>=knief_y)&&(258<=knief_y))
                  obj39[knief_x+knief_y-298] <= 0;
          if((knief_x>=1+299-knief_y)&&(knief_x<=400+299-knief_y)&&(279>=knief_y)&&(259<=knief_y))
                  obj40[knief_x+knief_y-299] <= 0;
          if((knief_x>=1+300-knief_y)&&(knief_x<=400+300-knief_y)&&(280>=knief_y)&&(260<=knief_y))
                  obj41[knief_x+knief_y-300] <= 0;
          if((knief_x>=1+301-knief_y)&&(knief_x<=400+301-knief_y)&&(281>=knief_y)&&(261<=knief_y))
                  obj42[knief_x+knief_y-301] <= 0;
          if((knief_x>=1+302-knief_y)&&(knief_x<=400+302-knief_y)&&(282>=knief_y)&&(262<=knief_y))
                  obj43[knief_x+knief_y-302] <= 0;
          if((knief_x>=1+303-knief_y)&&(knief_x<=400+303-knief_y)&&(283>=knief_y)&&(263<=knief_y))
                  obj44[knief_x+knief_y-303] <= 0;
          if((knief_x>=1+304-knief_y)&&(knief_x<=400+304-knief_y)&&(284>=knief_y)&&(264<=knief_y))
                  obj45[knief_x+knief_y-304] <= 0;
          if((knief_x>=1+305-knief_y)&&(knief_x<=400+305-knief_y)&&(285>=knief_y)&&(265<=knief_y))
                  obj46[knief_x+knief_y-305] <= 0;
          if((knief_x>=1+306-knief_y)&&(knief_x<=400+306-knief_y)&&(286>=knief_y)&&(266<=knief_y))
                  obj47[knief_x+knief_y-306] <= 0;
          if((knief_x>=1+307-knief_y)&&(knief_x<=400+307-knief_y)&&(287>=knief_y)&&(267<=knief_y))
                  obj48[knief_x+knief_y-307] <= 0;
          if((knief_x>=1+308-knief_y)&&(knief_x<=400+308-knief_y)&&(288>=knief_y)&&(268<=knief_y))
                  obj49[knief_x+knief_y-308] <= 0;
          if((knief_x>=1+309-knief_y)&&(knief_x<=400+309-knief_y)&&(289>=knief_y)&&(269<=knief_y))
                  obj50[knief_x+knief_y-309] <= 0;
          if((knief_x>=1+310-knief_y)&&(knief_x<=400+310-knief_y)&&(290>=knief_y)&&(270<=knief_y))
                  obj51[knief_x+knief_y-310] <= 0;
          if((knief_x>=1+311-knief_y)&&(knief_x<=400+311-knief_y)&&(291>=knief_y)&&(271<=knief_y))
                  obj52[knief_x+knief_y-311] <= 0;
          if((knief_x>=1+312-knief_y)&&(knief_x<=400+312-knief_y)&&(292>=knief_y)&&(272<=knief_y))
                  obj53[knief_x+knief_y-312] <= 0;
          if((knief_x>=1+313-knief_y)&&(knief_x<=400+313-knief_y)&&(293>=knief_y)&&(273<=knief_y))
                  obj54[knief_x+knief_y-313] <= 0;
          if((knief_x>=1+314-knief_y)&&(knief_x<=400+314-knief_y)&&(294>=knief_y)&&(274<=knief_y))
                  obj55[knief_x+knief_y-314] <= 0;
          if((knief_x>=1+315-knief_y)&&(knief_x<=400+315-knief_y)&&(295>=knief_y)&&(275<=knief_y))
                  obj56[knief_x+knief_y-315] <= 0;
          if((knief_x>=1+316-knief_y)&&(knief_x<=400+316-knief_y)&&(296>=knief_y)&&(276<=knief_y))
                  obj57[knief_x+knief_y-316] <= 0;
          if((knief_x>=1+317-knief_y)&&(knief_x<=400+317-knief_y)&&(297>=knief_y)&&(277<=knief_y))
                  obj58[knief_x+knief_y-317] <= 0;
          if((knief_x>=1+318-knief_y)&&(knief_x<=400+318-knief_y)&&(298>=knief_y)&&(278<=knief_y))
                  obj59[knief_x+knief_y-318] <= 0;
          if((knief_x>=1+319-knief_y)&&(knief_x<=400+319-knief_y)&&(299>=knief_y)&&(279<=knief_y))
                  obj60[knief_x+knief_y-319] <= 0;
          if((knief_x>=1+320-knief_y)&&(knief_x<=400+320-knief_y)&&(300>=knief_y)&&(280<=knief_y))
                  obj61[knief_x+knief_y-320] <= 0;
          if((knief_x>=1+321-knief_y)&&(knief_x<=400+321-knief_y)&&(301>=knief_y)&&(281<=knief_y))
                  obj62[knief_x+knief_y-321] <= 0;
          if((knief_x>=1+322-knief_y)&&(knief_x<=400+322-knief_y)&&(302>=knief_y)&&(282<=knief_y))
                  obj63[knief_x+knief_y-322] <= 0;
          if((knief_x>=1+323-knief_y)&&(knief_x<=400+323-knief_y)&&(303>=knief_y)&&(283<=knief_y))
                  obj64[knief_x+knief_y-323] <= 0;
          if((knief_x>=1+324-knief_y)&&(knief_x<=400+324-knief_y)&&(304>=knief_y)&&(284<=knief_y))
                  obj65[knief_x+knief_y-324] <= 0;
          if((knief_x>=1+325-knief_y)&&(knief_x<=400+325-knief_y)&&(305>=knief_y)&&(285<=knief_y))
                  obj66[knief_x+knief_y-325] <= 0;
          if((knief_x>=1+326-knief_y)&&(knief_x<=400+326-knief_y)&&(306>=knief_y)&&(286<=knief_y))
                  obj67[knief_x+knief_y-326] <= 0;
          if((knief_x>=1+327-knief_y)&&(knief_x<=400+327-knief_y)&&(307>=knief_y)&&(287<=knief_y))
                  obj68[knief_x+knief_y-327] <= 0;
          if((knief_x>=1+328-knief_y)&&(knief_x<=400+328-knief_y)&&(308>=knief_y)&&(288<=knief_y))
                  obj69[knief_x+knief_y-328] <= 0;
          if((knief_x>=1+329-knief_y)&&(knief_x<=400+329-knief_y)&&(309>=knief_y)&&(289<=knief_y))
                  obj70[knief_x+knief_y-329] <= 0;
    end
    end
    end
endmodule 