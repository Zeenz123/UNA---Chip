/* ==========================================================================
   1. TINY TAPEOUT SKY130 HARDWARE WRAPPER MODULE
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

    // Instantiate your complete Logisim-generated processor core
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
