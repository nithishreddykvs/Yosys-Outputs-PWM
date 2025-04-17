`timescale 1ns / 1ps

module pwm_tb;

    reg clk;
    reg rst;
    reg [2:0] sw;
    wire pwm_out;

    // Instantiate the PWM module
    pwm uut (
        .clk(clk),
        .rst(rst),
        .sw(sw),
        .pwm_out(pwm_out)
    );

    // Clock generation (50MHz -> 20ns period)
    always #10 clk = ~clk;

    initial begin
        // Initialize signals
        $dumpfile("pwm.vcd");
    	$dumpvars(0,pwm_tb);
        
        clk = 0;
        rst = 1;
        sw = 3'b000;
        
        // Apply reset
        #20 rst = 0;
        
        // Test different duty cycle settings
        #200 sw = 3'b001; // 20% duty cycle
        #200 sw = 3'b010; // 30% duty cycle
        #200 sw = 3'b011; // 40% duty cycle
        #200 sw = 3'b100; // 50% duty cycle
        #200 sw = 3'b101; // 60% duty cycle
        #200 sw = 3'b110; // 70% duty cycle
        #200 sw = 3'b111; // 80% duty cycle
        
        // End simulation
        
    end

endmodule
