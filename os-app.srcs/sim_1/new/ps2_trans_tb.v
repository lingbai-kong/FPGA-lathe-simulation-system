`timescale 1ps/1ps
module ps2_trans_tb;
   reg        clk;
   reg        rst;
   
   reg        clock_in;
   reg        serial_data_in;
   wire       [7:0] parallel_data_in;
   wire       parallel_data_valid;
   wire       data_in_error;
  
   wire       clock_out;
   wire       serial_data_out;
   reg        [7:0] parallel_data_out;
   reg        parallel_data_enable;
   wire       data_out_complete;
   
   wire       busy;
   wire       clock_output_oe;
   wire       data_output_oe;
   ps2_trans test (clk,rst,clock_in,serial_data_in,parallel_data_in,parallel_data_valid,data_in_error,clock_out,serial_data_out,parallel_data_out,parallel_data_enable,
                   data_out_complete,busy,clock_output_oe,data_output_oe);
   initial clk=0;
   always #1 clk=~clk;
   initial clock_in=0;
   always #5 clock_in=~clock_in;
   initial serial_data_in=0;
   always #5 serial_data_in=~serial_data_in;
   initial
   begin
   rst=1;
   parallel_data_out=8'h00;
   parallel_data_enable=0;
   #500
   rst=0;
   #5000;
   parallel_data_out=8'hAA;
   parallel_data_enable=1;
   #20000;
   $stop;
   end
endmodule