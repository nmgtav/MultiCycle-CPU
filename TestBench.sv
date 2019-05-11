`timescale 1ns/1ns

module TB();
  reg rst, clk;
  CPU processor (clk, rst);
  always #10 clk = ~clk;
  initial begin
    rst = 1;
    #100;
    rst = 0;
    #100000;
    $stop;
  end