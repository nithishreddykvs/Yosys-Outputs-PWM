/* Generated by Yosys 0.33 (git sha1 2584903a060) */

(* top =  1  *)
(* src = "pwm.v:22.1-78.10" *)
module pwm(clk, rst, sw, pwm_out);
  wire [3:0] _00_;
  (* src = "pwm.v:53.5-63.8" *)
  wire [3:0] _01_;
  (* src = "pwm.v:66.5-76.8" *)
  wire _02_;
  (* src = "pwm.v:60.28-60.39" *)
  (* unused_bits = "4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31" *)
  wire [31:0] _03_;
  (* src = "pwm.v:57.17-57.29" *)
  wire _04_;
  (* src = "pwm.v:70.17-70.37" *)
  wire _05_;
  wire [3:0] _06_;
  wire [3:0] _07_;
  wire [3:0] _08_;
  wire [3:0] _09_;
  wire [3:0] _10_;
  wire [3:0] _11_;
  (* src = "pwm.v:23.11-23.14" *)
  input clk;
  wire clk;
  (* src = "pwm.v:29.15-29.22" *)
  reg [3:0] counter;
  (* src = "pwm.v:30.15-30.25" *)
  reg [3:0] duty_cycle;
  (* src = "pwm.v:26.16-26.23" *)
  output pwm_out;
  reg pwm_out;
  (* src = "pwm.v:24.11-24.14" *)
  input rst;
  wire rst;
  (* src = "pwm.v:25.17-25.19" *)
  input [2:0] sw;
  wire [2:0] sw;
  always @(posedge clk, posedge rst)
    if (rst) duty_cycle <= 4'h0;
    else duty_cycle <= _00_;
  assign _03_ = counter + (* src = "pwm.v:60.28-60.39" *) 32'd1;
  assign _04_ = counter == (* src = "pwm.v:57.17-57.29" *) 4'h9;
  assign _05_ = counter < (* src = "pwm.v:70.17-70.37" *) duty_cycle;
  assign _00_ = sw[2] ? _07_ : _06_;
  assign _06_ = sw[1] ? _09_ : _08_;
  assign _07_ = sw[1] ? _11_ : _10_;
  assign _08_ = sw[0] ? 4'h2 : 4'h1;
  assign _09_ = sw[0] ? 4'h4 : 4'h3;
  assign _10_ = sw[0] ? 4'h6 : 4'h5;
  assign _11_ = sw[0] ? 4'h8 : 4'h7;
  (* src = "pwm.v:66.5-76.8" *)
  always @(posedge clk, posedge rst)
    if (rst) pwm_out <= 1'h0;
    else pwm_out <= _02_;
  (* src = "pwm.v:53.5-63.8" *)
  always @(posedge clk, posedge rst)
    if (rst) counter <= 4'h0;
    else counter <= _01_;
  assign _02_ = _05_ ? (* full_case = 32'd1 *) (* src = "pwm.v:70.17-70.37|pwm.v:70.13-74.16" *) 1'h1 : 1'h0;
  assign _01_ = _04_ ? (* full_case = 32'd1 *) (* src = "pwm.v:57.17-57.29|pwm.v:57.13-61.16" *) 4'h0 : _03_[3:0];
endmodule
