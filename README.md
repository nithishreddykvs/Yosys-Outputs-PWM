# PWM Module

## Overview

This Verilog module implements a Pulse Width Modulation (PWM) generator that allows the duty cycle to be controlled using 3 input switches. The module operates with a 50MHz clock input and generates a PWM signal with a duty cycle ranging from 10% to 80% in increments of 10%.

## Features

- Configurable Duty Cycle: Controlled by 3-bit switch input.

- 4-bit Counter: Manages the PWM period.

- Asynchronous Reset: Resets the module and duty cycle.

- Duty Cycle Ranges from 10% to 80%: Based on the switch combination.

# Module Interface

- Inputs:

clk: 50MHz clock signal

rst: Active-high reset signal

sw: 3-bit switch input to control duty cycle

- Output:

pwm_out: PWM signal output

## Functionality

Duty Cycle Selection

The duty_cycle register stores the PWM duty cycle value based on the 3-bit sw input:

sw Value - Duty Cycle

000 - 10%

001 - 20%

010 - 30%

011 - 40%

100 - 50%

101 - 60%

110 - 70%

111 - 80%

If an invalid input is detected, the default duty cycle is 10%.

## PWM Counter

A 4-bit counter (0 to 9) is used to divide the clock cycle into 10 time slots.

The counter resets to 0 after reaching 9 to ensure a constant frequency.

## PWM Signal Generation

The PWM output is HIGH when the counter value is less than the selected duty cycle.

Otherwise, it is LOW, effectively modulating the pulse width based on the selected duty cycle.

## Usage Instructions

Connect a 50MHz clock to the clk input.

Use 3 switches (sw) to control the duty cycle.

Monitor the pwm_out signal for PWM waveform output.

Reset (rst) to initialize the system if needed.

## Applications

Motor Speed Control

LED Brightness Control

Signal Modulation

Power Electronics

## License

This project is open-source and licensed under the MIT License. Feel free to modify and use it for your projects!
