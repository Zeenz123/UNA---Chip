/* verilator lint_off LATCH */
/* verilator lint_off UNOPTFLAT */
/* verilator lint_off PINCONNECTEMPTY */
/* verilator lint_off PINMISSING */
/* verilator lint_off UNUSEDSIGNAL */
/* verilator lint_off UNDRIVEN */
/* ==========================================================================
   1. TINY TAPEOUT SKY130 MASTER HARDWARE WRAPPER (THE TOP MODULE)
   ========================================================================== */
module tt_um_CPU (
    input  wire [7:0] ui_in,    // Dedicated inputs from the chip pins
    output wire [7:0] uo_out,   // Dedicated outputs to the chip pins
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path
    input  wire       ena,      // design enable
    input  wire       clk,      // hardware clock
    input  wire       rst_n     // master reset (active low)
);

    wire [15:0] w_address_bus;
    wire [7:0]  w_data_out;
    wire        w_btn_2_bus, w_btn_rst, w_gpu_2_bus, w_ram_2_bus, w_rom_2_bus, w_sv_gpu, w_sv_ram;

    // Secure bidirectional hardware rows safely to pass OpenLane precheck
    assign uio_out = 8'b00000000;
    assign uio_oe  = 8'b00000000; 

    // Route your 8-bit CPU data bus to the physical chip output pins
    assign uo_out = w_data_out;

    // The Top Module instantiates your custom core layout natively:
    CPU my_custom_processor (
        .CLK           (clk),              
        .RST           (~rst_n),           
        .DATABUSIN     (ui_in),            
        .DATABUSOUT    (w_data_out),       
        .ADDRESSBUSOUT (w_address_bus),    
        .BUTTONPRESSED (1'b0),             
        .BUTTONRST     (w_btn_rst),        
        .BUTTON2BUS    (w_btn_2_bus),
        .GPU2BUS       (w_gpu_2_bus),
        .RAM2BUS       (w_ram_2_bus),
        .ROM2BUS       (w_rom_2_bus),
        .SVGPU         (w_sv_gpu),
        .SVRAM         (w_sv_ram)
    );

endmodule

/* ==========================================================================
   2. LOGISIM-EVOLUTION STANDARD GATE AND COMPONENT LIBRARY (PRIMITIVES)
   ========================================================================== */

module AND_GATE #(parameter BubblesMask = 2'b00) (input input1, input2, output result);
    assign result = input1 & input2;
endmodule

module OR_GATE #(parameter BubblesMask = 2'b00) (input input1, input2, output result);
    assign result = input1 | input2;
endmodule

module XOR_GATE_ONEHOT #(parameter BubblesMask = 2'b00) (input input1, input2, output result);
    assign result = input1 ^ input2;
endmodule

module AND_GATE_3_INPUTS #(parameter BubblesMask = 3'b000) (input input1, input2, input3, output result);
    assign result = input1 & input2 & input3;
endmodule

module OR_GATE_3_INPUTS #(parameter BubblesMask = 3'b000) (input input1, input2, input3, output result);
    assign result = input1 | input2 | input3;
endmodule

module OR_GATE_4_INPUTS #(parameter BubblesMask = 4'h0) (input input1, input2, input3, input4, output result);
    assign result = input1 | input2 | input3 | input4;
endmodule

module OR_GATE_5_INPUTS #(parameter BubblesMask = 5'b00000) (input input1, input2, input3, input4, input5, output result);
    assign result = input1 | input2 | input3 | input4 | input5;
endmodule

module OR_GATE_10_INPUTS #(parameter BubblesMask = 10'h000) (
    input input1, input2, input3, input4, input5, input6, input7, input8, input9, input10, output result
);
    assign result = input1 | input2 | input3 | input4 | input5 | input6 | input7 | input8 | input9 | input10;
endmodule

module AND_GATE_BUS #(parameter BubblesMask = 2'b00, parameter nrOfBits = 8) (input [nrOfBits-1:0] input1, input2, output [nrOfBits-1:0] result);
    assign result = input1 & input2;
endmodule

module D_FLIPFLOP #(parameter invertClockEnable = 0) (input clock, d, preset, reset, tick, output q, qBar);
    reg q_reg;
    assign q = q_reg;
    assign qBar = ~q_reg;
    always @(posedge clock or posedge reset or posedge preset) begin
        if (reset) q_reg <= 1'b0;
        else if (preset) q_reg <= 1'b1;
        else if (tick) q_reg <= d;
    end
endmodule

module Decoder_8 #(parameter nrOfBits = 3) (
    input [nrOfBits-1:0] sel, input enable,
    output decoderOut_0, decoderOut_1, decoderOut_2, decoderOut_3, decoderOut_4, decoderOut_5, decoderOut_6, decoderOut_7
);
    assign decoderOut_0 = enable & (sel == 3'b000); assign decoderOut_1 = enable & (sel == 3'b001);
    assign decoderOut_2 = enable & (sel == 3'b010); assign decoderOut_3 = enable & (sel == 3'b011);
    assign decoderOut_4 = enable & (sel == 3'b100); assign decoderOut_5 = enable & (sel == 3'b101);
    assign decoderOut_6 = enable & (sel == 3'b110); assign decoderOut_7 = enable & (sel == 3'b111);
endmodule

module Decoder_16 #(parameter nrOfBits = 4) (
    input [nrOfBits-1:0] sel, input enable,
    output decoderOut_0, decoderOut_1, decoderOut_2, decoderOut_3, decoderOut_4, decoderOut_5, decoderOut_6, decoderOut_7,
    decoderOut_8, decoderOut_9, decoderOut_10, decoderOut_11, decoderOut_12, decoderOut_13, decoderOut_14, decoderOut_15
);
    assign decoderOut_0  = enable & (sel == 4'b0000); assign decoderOut_1  = enable & (sel == 4'b0001);
    assign decoderOut_2  = enable & (sel == 4'b0010); assign decoderOut_3  = enable & (sel == 4'b0011);
    assign decoderOut_4  = enable & (sel == 4'b0100); assign decoderOut_5  = enable & (sel == 4'b0101);
    assign decoderOut_6  = enable & (sel == 4'b0110); assign decoderOut_7  = enable & (sel == 4'b0111);
    assign decoderOut_8  = enable & (sel == 4'b1000); assign decoderOut_9  = enable & (sel == 4'b1001);
    assign decoderOut_10 = enable & (sel == 4'b1010); assign decoderOut_11 = enable & (sel == 4'b1011);
    assign decoderOut_12 = enable & (sel == 4'b1100); assign decoderOut_13 = enable & (sel == 4'b1101);
    assign decoderOut_14 = enable & (sel == 4'b1110); assign decoderOut_15 = enable & (sel == 4'b1111);
endmodule

module Multiplexer_bus_2 #(parameter nrOfBits = 8) (input enable, input [nrOfBits-1:0] muxIn_0, muxIn_1, input sel, output reg [nrOfBits-1:0] muxOut);
    always @(*) begin
        if (!enable) muxOut = 0;
        else muxOut = sel ? muxIn_1 : muxIn_0;
    end
endmodule

module Multiplexer_bus_16 #(parameter nrOfBits = 8) (
    input enable, input [nrOfBits-1:0] muxIn_0, muxIn_1, muxIn_2, muxIn_3, muxIn_4, muxIn_5, muxIn_6, muxIn_7,
    muxIn_8, muxIn_9, muxIn_10, muxIn_11, muxIn_12, muxIn_13, muxIn_14, muxIn_15, input [3:0] sel, output reg [nrOfBits-1:0] muxOut
);
    always @(*) begin
        if (!enable) muxOut = 0;
        else begin
            case(sel)
                4'h0: muxOut = muxIn_0;   4'h1: muxOut = muxIn_1;   4'h2: muxOut = muxIn_2;   4'h3: muxOut = muxIn_3;
                4'h4: muxOut = muxIn_4;   4'h5: muxOut = muxIn_5;   4'h6: muxOut = muxIn_6;   4'h7: muxOut = muxIn_7;
                4'h8: muxOut = muxIn_8;   4'h9: muxOut = muxIn_9;   4'd10: muxOut = muxIn_10; 4'd11: muxOut = muxIn_11;
                4'd12: muxOut = muxIn_12; 4'd13: muxOut = muxIn_13; 4'd14: muxOut = muxIn_14; 4'd15: muxOut = muxIn_15;
                default: muxOut = 0;
            endcase
        end
    end
endmodule

// Dual-Input Resolution: Supports both clockEnable and clockenable pin assignments perfectly
module REGISTER_FLIP_FLOP #(parameter invertClock = 0, parameter nrOfBits = 8) (
    input clock, clockEnable, clockenable, reset, tick, input [nrOfBits-1:0] d, output reg [nrOfBits-1:0] q
);
    wire internal_en = clockEnable | clockenable;
    always @(posedge clock or posedge reset) begin
        if (reset) q <= 0;
        else if (internal_en && tick) q <= d;
    end
endmodule

module LogisimCounter #(parameter invertClock = 0, parameter maxVal = 16'hFFFF, parameter mode = 0, parameter width = 16) (
    input clear, clock, enable, load, upNotDown, tick, input [width-1:0] loadData, output reg [width-1:0] countValue, output compareOut
);
    assign compareOut = (countValue == maxVal);
    always @(posedge clock or posedge clear) begin
        if (clear) countValue <= 0;
        else if (tick) begin
            if (load) countValue <= loadData;
            else if (enable) countValue <= upNotDown ? (countValue + 1) : (countValue - 1);
        end
    end
endmodule

/* ==========================================================================
   3. ALU AND ADVANCED MATHEMATICAL BUS PRIMITIVES
   ========================================================================== */

module NOR_GATE_8_INPUTS #(parameter BubblesMask = 8'h00) (
    input input1, input2, input3, input4, input5, input6, input7, input8, output result
);
    assign result = ~(input1 | input2 | input3 | input4 | input5 | input6 | input7 | input8);
endmodule

module OR_GATE_BUS #(parameter BubblesMask = 2'b00, parameter nrOfBits = 8) (
    input [nrOfBits-1:0] input1, input2, output [nrOfBits-1:0] result
);
    assign result = input1 | input2;
endmodule

module XOR_GATE_BUS_ONEHOT #(parameter BubblesMask = 2'b00, parameter nrOfBits = 8) (
    input [nrOfBits-1:0] input1, input2, output [nrOfBits-1:0] result
);
    assign result = input1 ^ input2;
endmodule

module Negator #(parameter nrOfBits = 8) (
    input [nrOfBits-1:0] datain, output [nrOfBits-1:0] dataout
);
    assign dataout = ~datain;
endmodule

module Comparator #(parameter nrOfBits = 8) (
    input [nrOfBits-1:0] dataA, dataB, input twosComplement,
    output aEqualsB, aLessThanB, aGreaterThanB
);
    assign aEqualsB      = (dataA == dataB);
    assign aLessThanB    = (dataA < dataB);
    assign aGreaterThanB = (dataA > dataB);
endmodule

module ARITH_8 (
    input [7:0] dataX, minDataX,
    output [7:0] result
);
    assign result = (dataX < minDataX) ? dataX : minDataX;
endmodule

// Updated Latch Primitive: Natively handles your CPU's .clockEnable signal
module REGISTER_LATCH #(parameter invertClock = 0, parameter nrOfBits = 8) (
    input clock, 
    input clockEnable,              // <-- Added clockEnable port support here!
    input [nrOfBits-1:0] d, 
    output reg [nrOfBits-1:0] q, 
    input reset, 
    input tick
);
    // Combine the trigger networks: latch updates only when the clock AND enable are active
    wire latch_gate = clock & (clockEnable | tick);

    always @(*) begin
        if (reset) 
            q = 0;
        else if (latch_gate) 
            q = d;
    end
endmodule
