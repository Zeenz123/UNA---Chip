/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : FA                                                           **
 **                                                                          **
 *****************************************************************************/

module FA( Input_1,
           Input_2,
           Input_3,
           Output_1,
           Output_2 );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input Input_1;
   input Input_2;
   input Input_3;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output Output_1;
   output Output_2;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_logisimNet0;
   wire s_logisimNet1;
   wire s_logisimNet2;
   wire s_logisimNet3;
   wire s_logisimNet4;
   wire s_logisimNet5;
   wire s_logisimNet6;
   wire s_logisimNet7;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimNet0 = Input_3;
   assign s_logisimNet3 = Input_1;
   assign s_logisimNet4 = Input_2;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Output_1 = s_logisimNet2;
   assign Output_2 = s_logisimNet1;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   OR_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet6),
               .input2(s_logisimNet7),
               .result(s_logisimNet2));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet3),
               .input2(s_logisimNet4),
               .result(s_logisimNet6));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimNet3),
               .input2(s_logisimNet4),
               .result(s_logisimNet5));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet0),
               .input2(s_logisimNet5),
               .result(s_logisimNet7));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet5),
               .input2(s_logisimNet0),
               .result(s_logisimNet1));


endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : REG16                                                        **
 **                                                                          **
 *****************************************************************************/

module REG16( CNTRL,
              DATA,
              OPERAND1,
              OPERANDEN,
              Output_bus_1 );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [7:0] CNTRL;
   input [7:0] DATA;
   input [7:0] OPERAND1;
   input       OPERANDEN;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [7:0] Output_bus_1;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [7:0] s_logisimBus0;
   wire [7:0] s_logisimBus10;
   wire [7:0] s_logisimBus11;
   wire [7:0] s_logisimBus14;
   wire [7:0] s_logisimBus16;
   wire [7:0] s_logisimBus18;
   wire [7:0] s_logisimBus20;
   wire [7:0] s_logisimBus23;
   wire [7:0] s_logisimBus24;
   wire [7:0] s_logisimBus26;
   wire [7:0] s_logisimBus3;
   wire [7:0] s_logisimBus30;
   wire [7:0] s_logisimBus31;
   wire [7:0] s_logisimBus32;
   wire [7:0] s_logisimBus35;
   wire [7:0] s_logisimBus36;
   wire [7:0] s_logisimBus37;
   wire [7:0] s_logisimBus38;
   wire [7:0] s_logisimBus4;
   wire [7:0] s_logisimBus43;
   wire [7:0] s_logisimBus8;
   wire [3:0] s_logisimBus9;
   wire       s_logisimNet1;
   wire       s_logisimNet12;
   wire       s_logisimNet13;
   wire       s_logisimNet15;
   wire       s_logisimNet17;
   wire       s_logisimNet19;
   wire       s_logisimNet2;
   wire       s_logisimNet21;
   wire       s_logisimNet22;
   wire       s_logisimNet25;
   wire       s_logisimNet27;
   wire       s_logisimNet28;
   wire       s_logisimNet29;
   wire       s_logisimNet33;
   wire       s_logisimNet34;
   wire       s_logisimNet39;
   wire       s_logisimNet41;
   wire       s_logisimNet42;
   wire       s_logisimNet5;
   wire       s_logisimNet6;
   wire       s_logisimNet7;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus11[7:0] = OPERAND1;
   assign s_logisimBus43[7:0] = CNTRL;
   assign s_logisimBus8[7:0]  = DATA;
   assign s_logisimNet41      = OPERANDEN;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Output_bus_1 = s_logisimBus30[7:0];

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   Multiplexer_bus_16 #(.nrOfBits(8))
      PLEXERS_1 (.enable(1'b1),
                 .muxIn_0(s_logisimBus35[7:0]),
                 .muxIn_1(s_logisimBus23[7:0]),
                 .muxIn_10(s_logisimBus10[7:0]),
                 .muxIn_11(s_logisimBus32[7:0]),
                 .muxIn_12(s_logisimBus4[7:0]),
                 .muxIn_13(s_logisimBus16[7:0]),
                 .muxIn_14(s_logisimBus26[7:0]),
                 .muxIn_15(s_logisimBus31[7:0]),
                 .muxIn_2(s_logisimBus3[7:0]),
                 .muxIn_3(s_logisimBus24[7:0]),
                 .muxIn_4(s_logisimBus18[7:0]),
                 .muxIn_5(s_logisimBus0[7:0]),
                 .muxIn_6(s_logisimBus14[7:0]),
                 .muxIn_7(s_logisimBus36[7:0]),
                 .muxIn_8(s_logisimBus20[7:0]),
                 .muxIn_9(s_logisimBus38[7:0]),
                 .muxOut(s_logisimBus37[7:0]),
                 .sel(s_logisimBus9[3:0]));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_2 (.enable(1'b1),
                 .muxIn_0(s_logisimBus37[7:0]),
                 .muxIn_1(s_logisimBus11[7:0]),
                 .muxOut(s_logisimBus30[7:0]),
                 .sel(s_logisimNet41));

   Decoder_16   PLEXERS_3 (.decoderOut_0(s_logisimNet15),
                           .decoderOut_1(s_logisimNet39),
                           .decoderOut_10(s_logisimNet25),
                           .decoderOut_11(s_logisimNet12),
                           .decoderOut_12(s_logisimNet28),
                           .decoderOut_13(s_logisimNet27),
                           .decoderOut_14(s_logisimNet42),
                           .decoderOut_15(s_logisimNet6),
                           .decoderOut_2(s_logisimNet13),
                           .decoderOut_3(s_logisimNet7),
                           .decoderOut_4(s_logisimNet33),
                           .decoderOut_5(s_logisimNet22),
                           .decoderOut_6(s_logisimNet2),
                           .decoderOut_7(s_logisimNet21),
                           .decoderOut_8(s_logisimNet19),
                           .decoderOut_9(s_logisimNet17),
                           .enable(s_logisimBus43[6]),
                           .sel(s_logisimBus9[3:0]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(4))
      MEMORY_4 (.clock(s_logisimBus43[5]),
                .clockEnable(s_logisimBus43[4]),
                .d(s_logisimBus43[3:0]),
                .q(s_logisimBus9[3:0]),
                .reset(s_logisimBus43[7]),
                .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_5 (.clock(s_logisimBus43[5]),
                .clockEnable(s_logisimNet12),
                .d(s_logisimBus8[7:0]),
                .q(s_logisimBus32[7:0]),
                .reset(s_logisimBus43[7]),
                .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_6 (.clock(s_logisimBus43[5]),
                .clockEnable(s_logisimNet28),
                .d(s_logisimBus8[7:0]),
                .q(s_logisimBus4[7:0]),
                .reset(s_logisimBus43[7]),
                .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_7 (.clock(s_logisimBus43[5]),
                .clockEnable(s_logisimNet27),
                .d(s_logisimBus8[7:0]),
                .q(s_logisimBus16[7:0]),
                .reset(s_logisimBus43[7]),
                .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_8 (.clock(s_logisimBus43[5]),
                .clockEnable(s_logisimNet42),
                .d(s_logisimBus8[7:0]),
                .q(s_logisimBus26[7:0]),
                .reset(s_logisimBus43[7]),
                .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_9 (.clock(s_logisimBus43[5]),
                .clockEnable(s_logisimNet6),
                .d(s_logisimBus8[7:0]),
                .q(s_logisimBus31[7:0]),
                .reset(s_logisimBus43[7]),
                .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_10 (.clock(s_logisimBus43[5]),
                 .clockEnable(s_logisimNet15),
                 .d(s_logisimBus8[7:0]),
                 .q(s_logisimBus35[7:0]),
                 .reset(s_logisimBus43[7]),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_11 (.clock(s_logisimBus43[5]),
                 .clockEnable(s_logisimNet39),
                 .d(s_logisimBus8[7:0]),
                 .q(s_logisimBus23[7:0]),
                 .reset(s_logisimBus43[7]),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_12 (.clock(s_logisimBus43[5]),
                 .clockEnable(s_logisimNet13),
                 .d(s_logisimBus8[7:0]),
                 .q(s_logisimBus3[7:0]),
                 .reset(s_logisimBus43[7]),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_13 (.clock(s_logisimBus43[5]),
                 .clockEnable(s_logisimNet7),
                 .d(s_logisimBus8[7:0]),
                 .q(s_logisimBus24[7:0]),
                 .reset(s_logisimBus43[7]),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_14 (.clock(s_logisimBus43[5]),
                 .clockEnable(s_logisimNet33),
                 .d(s_logisimBus8[7:0]),
                 .q(s_logisimBus18[7:0]),
                 .reset(s_logisimBus43[7]),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_15 (.clock(s_logisimBus43[5]),
                 .clockEnable(s_logisimNet22),
                 .d(s_logisimBus8[7:0]),
                 .q(s_logisimBus0[7:0]),
                 .reset(s_logisimBus43[7]),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_16 (.clock(s_logisimBus43[5]),
                 .clockEnable(s_logisimNet2),
                 .d(s_logisimBus8[7:0]),
                 .q(s_logisimBus14[7:0]),
                 .reset(s_logisimBus43[7]),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_17 (.clock(s_logisimBus43[5]),
                 .clockEnable(s_logisimNet21),
                 .d(s_logisimBus8[7:0]),
                 .q(s_logisimBus36[7:0]),
                 .reset(s_logisimBus43[7]),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_18 (.clock(s_logisimBus43[5]),
                 .clockEnable(s_logisimNet19),
                 .d(s_logisimBus8[7:0]),
                 .q(s_logisimBus20[7:0]),
                 .reset(s_logisimBus43[7]),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_19 (.clock(s_logisimBus43[5]),
                 .clockEnable(s_logisimNet17),
                 .d(s_logisimBus8[7:0]),
                 .q(s_logisimBus38[7:0]),
                 .reset(s_logisimBus43[7]),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_20 (.clock(s_logisimBus43[5]),
                 .clockEnable(s_logisimNet25),
                 .d(s_logisimBus8[7:0]),
                 .q(s_logisimBus10[7:0]),
                 .reset(s_logisimBus43[7]),
                 .tick(1'b1));


endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : DELAY                                                        **
 **                                                                          **
 *****************************************************************************/

module DELAY( CLK,
              DELAYIN,
              DELAYTIME,
              ENCLK,
              RST );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input        CLK;
   input        DELAYIN;
   input [15:0] DELAYTIME;
   input        RST;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output ENCLK;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [23:0] s_logisimBus7;
   wire        s_logisimNet0;
   wire        s_logisimNet1;
   wire        s_logisimNet2;
   wire        s_logisimNet3;
   wire        s_logisimNet4;
   wire        s_logisimNet5;
   wire        s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus7[15:0] = DELAYTIME;
   assign s_logisimNet0       = RST;
   assign s_logisimNet1       = DELAYIN;
   assign s_logisimNet4       = CLK;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign ENCLK = s_logisimNet3;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Ground
   assign  s_logisimBus7[23:16]  =  8'h00;


   // Ground
   assign  s_logisimNet9  =  1'b0;


   // NOT Gate
   assign s_logisimNet2 = ~s_logisimNet4;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet3),
               .input2(s_logisimNet1),
               .result(s_logisimNet5));

   LogisimCounter #(.invertClock(0),
                    .maxVal(24'hFFFFFF),
                    .mode(0),
                    .width(24))
      MEMORY_2 (.clear(s_logisimNet0),
                .clock(s_logisimNet2),
                .compareOut(s_logisimNet3),
                .countValue(),
                .enable(s_logisimNet1),
                .load(s_logisimNet5),
                .loadData(s_logisimBus7[23:0]),
                .tick(1'b1),
                .upNotDown(s_logisimNet9));


endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : ADDSUB                                                       **
 **                                                                          **
 *****************************************************************************/

module ADDSUB( A,
               ADC,
               ADD,
               B,
               COUT,
               D2,
               DEC,
               INC,
               OUTADDSUB,
               ROLL,
               RST,
               SBC,
               SUB,
               X2 );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [7:0] A;
   input       ADC;
   input       ADD;
   input [7:0] B;
   input       D2;
   input       DEC;
   input       INC;
   input [3:0] ROLL;
   input       RST;
   input       SBC;
   input       SUB;
   input       X2;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output       COUT;
   output [7:0] OUTADDSUB;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [7:0] s_logisimBus23;
   wire [7:0] s_logisimBus54;
   wire [3:0] s_logisimBus64;
   wire [7:0] s_logisimBus69;
   wire       s_logisimNet0;
   wire       s_logisimNet1;
   wire       s_logisimNet10;
   wire       s_logisimNet11;
   wire       s_logisimNet12;
   wire       s_logisimNet13;
   wire       s_logisimNet14;
   wire       s_logisimNet15;
   wire       s_logisimNet16;
   wire       s_logisimNet17;
   wire       s_logisimNet18;
   wire       s_logisimNet19;
   wire       s_logisimNet2;
   wire       s_logisimNet20;
   wire       s_logisimNet21;
   wire       s_logisimNet22;
   wire       s_logisimNet24;
   wire       s_logisimNet25;
   wire       s_logisimNet26;
   wire       s_logisimNet27;
   wire       s_logisimNet28;
   wire       s_logisimNet29;
   wire       s_logisimNet3;
   wire       s_logisimNet30;
   wire       s_logisimNet31;
   wire       s_logisimNet32;
   wire       s_logisimNet33;
   wire       s_logisimNet34;
   wire       s_logisimNet35;
   wire       s_logisimNet36;
   wire       s_logisimNet37;
   wire       s_logisimNet38;
   wire       s_logisimNet39;
   wire       s_logisimNet4;
   wire       s_logisimNet40;
   wire       s_logisimNet41;
   wire       s_logisimNet42;
   wire       s_logisimNet43;
   wire       s_logisimNet44;
   wire       s_logisimNet45;
   wire       s_logisimNet46;
   wire       s_logisimNet47;
   wire       s_logisimNet48;
   wire       s_logisimNet49;
   wire       s_logisimNet5;
   wire       s_logisimNet50;
   wire       s_logisimNet51;
   wire       s_logisimNet52;
   wire       s_logisimNet53;
   wire       s_logisimNet55;
   wire       s_logisimNet56;
   wire       s_logisimNet57;
   wire       s_logisimNet58;
   wire       s_logisimNet59;
   wire       s_logisimNet6;
   wire       s_logisimNet60;
   wire       s_logisimNet61;
   wire       s_logisimNet62;
   wire       s_logisimNet63;
   wire       s_logisimNet65;
   wire       s_logisimNet66;
   wire       s_logisimNet67;
   wire       s_logisimNet68;
   wire       s_logisimNet7;
   wire       s_logisimNet70;
   wire       s_logisimNet8;
   wire       s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus54[7:0] = A;
   assign s_logisimBus64[3:0] = ROLL;
   assign s_logisimBus69[7:0] = B;
   assign s_logisimNet0       = SUB;
   assign s_logisimNet13      = DEC;
   assign s_logisimNet14      = SBC;
   assign s_logisimNet17      = RST;
   assign s_logisimNet22      = ADC;
   assign s_logisimNet24      = X2;
   assign s_logisimNet39      = INC;
   assign s_logisimNet43      = D2;
   assign s_logisimNet7       = ADD;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign COUT      = s_logisimNet8;
   assign OUTADDSUB = s_logisimBus23[7:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Ground
   assign  s_logisimNet70  =  1'b0;


   // NOT Gate
   assign s_logisimNet55 = ~s_logisimBus64[0];

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   OR_GATE_5_INPUTS #(.BubblesMask({1'b0, 4'h0}))
      GATES_1 (.input1(s_logisimNet7),
               .input2(s_logisimNet22),
               .input3(s_logisimNet4),
               .input4(s_logisimNet0),
               .input5(s_logisimNet14),
               .result(s_logisimNet65));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimBus69[7]),
               .input2(s_logisimNet21),
               .result(s_logisimNet42));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimBus69[6]),
               .input2(s_logisimNet21),
               .result(s_logisimNet44));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimBus69[5]),
               .input2(s_logisimNet21),
               .result(s_logisimNet58));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimBus69[4]),
               .input2(s_logisimNet21),
               .result(s_logisimNet5));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_6 (.input1(s_logisimBus69[3]),
               .input2(s_logisimNet21),
               .result(s_logisimNet52));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimBus69[2]),
               .input2(s_logisimNet21),
               .result(s_logisimNet11));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_8 (.input1(s_logisimBus69[1]),
               .input2(s_logisimNet21),
               .result(s_logisimNet9));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_9 (.input1(s_logisimBus69[0]),
               .input2(s_logisimNet21),
               .result(s_logisimNet49));

   OR_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_10 (.input1(s_logisimNet14),
                .input2(s_logisimNet0),
                .input3(s_logisimNet27),
                .input4(s_logisimNet39),
                .result(s_logisimNet19));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_11 (.input1(s_logisimBus64[1]),
                .input2(s_logisimBus64[2]),
                .input3(s_logisimBus64[3]),
                .result(s_logisimNet4));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_12 (.input1(s_logisimBus64[0]),
                .input2(s_logisimNet4),
                .result(s_logisimNet10));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_13 (.input1(s_logisimNet55),
                .input2(s_logisimNet4),
                .result(s_logisimNet20));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_14 (.input1(s_logisimNet24),
                .input2(s_logisimNet20),
                .result(s_logisimNet63));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_15 (.input1(s_logisimNet10),
                .input2(s_logisimNet43),
                .result(s_logisimNet33));

   OR_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_16 (.input1(s_logisimNet13),
                .input2(s_logisimNet0),
                .input3(s_logisimNet14),
                .result(s_logisimNet21));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_17 (.input1(s_logisimNet22),
                .input2(s_logisimNet14),
                .result(s_logisimNet31));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_18 (.input1(s_logisimNet63),
                .input2(s_logisimNet33),
                .result(s_logisimNet53));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_19 (.clock(s_logisimNet65),
                 .d(s_logisimNet26),
                 .preset(s_logisimNet53),
                 .q(s_logisimNet8),
                 .qBar(),
                 .reset(s_logisimNet17),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_20 (.clock(s_logisimNet31),
                 .d(s_logisimNet8),
                 .preset(s_logisimNet70),
                 .q(s_logisimNet27),
                 .qBar(),
                 .reset(s_logisimNet17),
                 .tick(1'b1));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   FA   FA_1 (.Input_1(s_logisimBus54[7]),
              .Input_2(s_logisimNet42),
              .Input_3(s_logisimNet61),
              .Output_1(s_logisimNet26),
              .Output_2(s_logisimBus23[7]));

   FA   FA_2 (.Input_1(s_logisimBus54[6]),
              .Input_2(s_logisimNet44),
              .Input_3(s_logisimNet29),
              .Output_1(s_logisimNet61),
              .Output_2(s_logisimBus23[6]));

   FA   FA_3 (.Input_1(s_logisimBus54[5]),
              .Input_2(s_logisimNet58),
              .Input_3(s_logisimNet15),
              .Output_1(s_logisimNet29),
              .Output_2(s_logisimBus23[5]));

   FA   FA_4 (.Input_1(s_logisimBus54[4]),
              .Input_2(s_logisimNet5),
              .Input_3(s_logisimNet51),
              .Output_1(s_logisimNet15),
              .Output_2(s_logisimBus23[4]));

   FA   FA_5 (.Input_1(s_logisimBus54[3]),
              .Input_2(s_logisimNet52),
              .Input_3(s_logisimNet62),
              .Output_1(s_logisimNet51),
              .Output_2(s_logisimBus23[3]));

   FA   FA_6 (.Input_1(s_logisimBus54[2]),
              .Input_2(s_logisimNet11),
              .Input_3(s_logisimNet30),
              .Output_1(s_logisimNet62),
              .Output_2(s_logisimBus23[2]));

   FA   FA_7 (.Input_1(s_logisimBus54[1]),
              .Input_2(s_logisimNet9),
              .Input_3(s_logisimNet16),
              .Output_1(s_logisimNet30),
              .Output_2(s_logisimBus23[1]));

   FA   FA_8 (.Input_1(s_logisimBus54[0]),
              .Input_2(s_logisimNet49),
              .Input_3(s_logisimNet19),
              .Output_1(s_logisimNet16),
              .Output_2(s_logisimBus23[0]));

endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : ROLLSSHIFTS                                                  **
 **                                                                          **
 *****************************************************************************/

module ROLLSSHIFTS( CIN,
                    D2,
                    D2COUT,
                    DATAIN,
                    ROLLDOWN,
                    ROLLUP,
                    X2,
                    X2COUT );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       CIN;
   input [7:0] DATAIN;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [7:0] D2;
   output       D2COUT;
   output [7:0] ROLLDOWN;
   output [7:0] ROLLUP;
   output [7:0] X2;
   output       X2COUT;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [7:0] s_logisimBus12;
   wire [7:0] s_logisimBus13;
   wire [7:0] s_logisimBus7;
   wire [7:0] s_logisimBus8;
   wire [7:0] s_logisimBus9;
   wire       s_logisimNet0;
   wire       s_logisimNet1;
   wire       s_logisimNet10;
   wire       s_logisimNet11;
   wire       s_logisimNet2;
   wire       s_logisimNet3;
   wire       s_logisimNet4;
   wire       s_logisimNet5;
   wire       s_logisimNet6;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all wiring is defined                                                 **
   *******************************************************************************/
   assign s_logisimBus12[0] = s_logisimNet1;
   assign s_logisimBus12[1] = s_logisimNet6;
   assign s_logisimBus12[2] = s_logisimNet5;
   assign s_logisimBus12[3] = s_logisimNet4;
   assign s_logisimBus12[4] = s_logisimNet3;
   assign s_logisimBus12[5] = s_logisimNet0;
   assign s_logisimBus12[6] = s_logisimNet11;
   assign s_logisimBus12[7] = s_logisimNet2;
   assign s_logisimBus7[0]  = s_logisimNet10;
   assign s_logisimBus7[1]  = s_logisimNet2;
   assign s_logisimBus7[2]  = s_logisimNet1;
   assign s_logisimBus7[3]  = s_logisimNet6;
   assign s_logisimBus7[4]  = s_logisimNet5;
   assign s_logisimBus7[5]  = s_logisimNet4;
   assign s_logisimBus7[6]  = s_logisimNet3;
   assign s_logisimBus7[7]  = s_logisimNet0;
   assign s_logisimBus8[0]  = s_logisimNet1;
   assign s_logisimBus8[1]  = s_logisimNet6;
   assign s_logisimBus8[2]  = s_logisimNet5;
   assign s_logisimBus8[3]  = s_logisimNet4;
   assign s_logisimBus8[4]  = s_logisimNet3;
   assign s_logisimBus8[5]  = s_logisimNet0;
   assign s_logisimBus8[6]  = s_logisimNet11;
   assign s_logisimBus8[7]  = s_logisimNet10;
   assign s_logisimBus9[0]  = s_logisimNet11;
   assign s_logisimBus9[1]  = s_logisimNet2;
   assign s_logisimBus9[2]  = s_logisimNet1;
   assign s_logisimBus9[3]  = s_logisimNet6;
   assign s_logisimBus9[4]  = s_logisimNet5;
   assign s_logisimBus9[5]  = s_logisimNet4;
   assign s_logisimBus9[6]  = s_logisimNet3;
   assign s_logisimBus9[7]  = s_logisimNet0;
   assign s_logisimNet0     = s_logisimBus13[6];
   assign s_logisimNet1     = s_logisimBus13[1];
   assign s_logisimNet11    = s_logisimBus13[7];
   assign s_logisimNet2     = s_logisimBus13[0];
   assign s_logisimNet3     = s_logisimBus13[5];
   assign s_logisimNet4     = s_logisimBus13[4];
   assign s_logisimNet5     = s_logisimBus13[3];
   assign s_logisimNet6     = s_logisimBus13[2];

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus13[7:0] = DATAIN;
   assign s_logisimNet10      = CIN;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign D2       = s_logisimBus8[7:0];
   assign D2COUT   = s_logisimNet2;
   assign ROLLDOWN = s_logisimBus12[7:0];
   assign ROLLUP   = s_logisimBus9[7:0];
   assign X2       = s_logisimBus7[7:0];
   assign X2COUT   = s_logisimNet11;

endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : CU                                                           **
 **                                                                          **
 *****************************************************************************/

module CU( ALUCNTRL,
           ALUFLAGS,
           AORBREG,
           BUSCNTRL,
           BUTPRESS,
           BUTTON2BUS,
           CHNGERAMADD,
           CLK,
           DELAY,
           GPU2BUS,
           INCORDEC,
           INSTRUCTION,
           JMP,
           OPERAND1OUT,
           OPERAND2OUT,
           PC,
           RAM2BUS,
           REGCNTRL,
           ROM2BUS,
           RST,
           RSTBUTTON,
           SVFLAGS,
           SVGPU,
           SVRAM,
           SVRAMADD );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [7:0] ALUFLAGS;
   input       BUTPRESS;
   input       CLK;
   input [7:0] INSTRUCTION;
   input       RST;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [7:0] ALUCNTRL;
   output       AORBREG;
   output       BUSCNTRL;
   output       BUTTON2BUS;
   output       CHNGERAMADD;
   output       DELAY;
   output       GPU2BUS;
   output       INCORDEC;
   output       JMP;
   output [7:0] OPERAND1OUT;
   output [7:0] OPERAND2OUT;
   output       PC;
   output       RAM2BUS;
   output [7:0] REGCNTRL;
   output       ROM2BUS;
   output       RSTBUTTON;
   output       SVFLAGS;
   output       SVGPU;
   output       SVRAM;
   output       SVRAMADD;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [7:0] s_logisimBus11;
   wire [7:0] s_logisimBus19;
   wire [2:0] s_logisimBus2;
   wire [7:0] s_logisimBus20;
   wire [7:0] s_logisimBus27;
   wire [7:0] s_logisimBus35;
   wire [7:0] s_logisimBus4;
   wire [2:0] s_logisimBus40;
   wire [7:0] s_logisimBus5;
   wire [3:0] s_logisimBus6;
   wire       s_logisimNet0;
   wire       s_logisimNet1;
   wire       s_logisimNet10;
   wire       s_logisimNet12;
   wire       s_logisimNet13;
   wire       s_logisimNet14;
   wire       s_logisimNet15;
   wire       s_logisimNet16;
   wire       s_logisimNet17;
   wire       s_logisimNet18;
   wire       s_logisimNet21;
   wire       s_logisimNet22;
   wire       s_logisimNet23;
   wire       s_logisimNet24;
   wire       s_logisimNet25;
   wire       s_logisimNet26;
   wire       s_logisimNet28;
   wire       s_logisimNet29;
   wire       s_logisimNet3;
   wire       s_logisimNet30;
   wire       s_logisimNet31;
   wire       s_logisimNet32;
   wire       s_logisimNet33;
   wire       s_logisimNet34;
   wire       s_logisimNet36;
   wire       s_logisimNet37;
   wire       s_logisimNet38;
   wire       s_logisimNet39;
   wire       s_logisimNet41;
   wire       s_logisimNet42;
   wire       s_logisimNet43;
   wire       s_logisimNet44;
   wire       s_logisimNet45;
   wire       s_logisimNet46;
   wire       s_logisimNet47;
   wire       s_logisimNet48;
   wire       s_logisimNet49;
   wire       s_logisimNet50;
   wire       s_logisimNet7;
   wire       s_logisimNet8;
   wire       s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all wiring is defined                                                 **
   *******************************************************************************/
   assign s_logisimBus11[0] = s_logisimBus6[0];
   assign s_logisimBus11[1] = s_logisimBus6[1];
   assign s_logisimBus11[2] = s_logisimBus6[2];
   assign s_logisimBus11[3] = s_logisimBus6[3];
   assign s_logisimBus11[7] = s_logisimNet9;
   assign s_logisimBus27[0] = s_logisimBus6[0];
   assign s_logisimBus27[1] = s_logisimBus6[1];
   assign s_logisimBus27[2] = s_logisimBus6[2];
   assign s_logisimBus27[3] = s_logisimBus6[3];
   assign s_logisimBus27[5] = s_logisimNet9;

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus35[7:0] = ALUFLAGS;
   assign s_logisimBus4[7:0]  = INSTRUCTION;
   assign s_logisimNet21      = RST;
   assign s_logisimNet41      = BUTPRESS;
   assign s_logisimNet9       = CLK;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign ALUCNTRL    = s_logisimBus11[7:0];
   assign AORBREG     = s_logisimNet47;
   assign BUSCNTRL    = s_logisimNet33;
   assign BUTTON2BUS  = s_logisimNet32;
   assign CHNGERAMADD = s_logisimNet16;
   assign DELAY       = s_logisimNet43;
   assign GPU2BUS     = s_logisimNet46;
   assign INCORDEC    = s_logisimNet12;
   assign JMP         = s_logisimNet42;
   assign OPERAND1OUT = s_logisimBus5[7:0];
   assign OPERAND2OUT = s_logisimBus20[7:0];
   assign PC          = s_logisimNet31;
   assign RAM2BUS     = s_logisimNet45;
   assign REGCNTRL    = s_logisimBus27[7:0];
   assign ROM2BUS     = s_logisimNet44;
   assign RSTBUTTON   = s_logisimNet34;
   assign SVFLAGS     = s_logisimBus27[6];
   assign SVGPU       = s_logisimNet29;
   assign SVRAM       = s_logisimNet48;
   assign SVRAMADD    = s_logisimNet28;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Power
   assign  s_logisimNet50  =  1'b1;


   // Power
   assign  s_logisimNet49  =  1'b1;


   // Constant
   assign  s_logisimBus40[2:0]  =  3'b110;


   // NOT Gate
   assign s_logisimNet13 = ~s_logisimNet9;

   // NOT Gate
   assign s_logisimNet12 = ~s_logisimNet30;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   OR_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet21),
               .input2(s_logisimNet1),
               .result(s_logisimNet14));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet30),
               .input2(s_logisimNet36),
               .result(s_logisimNet16));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimNet7),
               .input2(s_logisimNet26),
               .result(s_logisimBus11[5]));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet25),
               .input2(s_logisimNet23),
               .result(s_logisimBus11[4]));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet22),
               .input2(s_logisimNet0),
               .result(s_logisimNet29));

   LogisimCounter #(.invertClock(0),
                    .maxVal(3'b111),
                    .mode(0),
                    .width(3))
      MEMORY_6 (.clear(s_logisimNet14),
                .clock(s_logisimNet9),
                .compareOut(),
                .countValue(s_logisimBus2[2:0]),
                .enable(s_logisimNet50),
                .load(s_logisimNet15),
                .loadData(s_logisimBus40[2:0]),
                .tick(1'b1),
                .upNotDown(s_logisimNet49));

   REGISTER_LATCH #(.invertClock(0),
                    .nrOfBits(8))
      OPERAND2 (.clock(s_logisimNet13),
                .clockEnable(s_logisimNet17),
                .d(s_logisimBus4[7:0]),
                .q(s_logisimBus20[7:0]),
                .reset(s_logisimNet14),
                .tick(1'b1));

   REGISTER_LATCH #(.invertClock(0),
                    .nrOfBits(8))
      OPCODE (.clock(s_logisimNet13),
              .clockEnable(s_logisimNet24),
              .d(s_logisimBus4[7:0]),
              .q(s_logisimBus19[7:0]),
              .reset(s_logisimNet14),
              .tick(1'b1));

   REGISTER_LATCH #(.invertClock(0),
                    .nrOfBits(8))
      OPERAND1 (.clock(s_logisimNet13),
                .clockEnable(s_logisimNet37),
                .d(s_logisimBus4[7:0]),
                .q(s_logisimBus5[7:0]),
                .reset(s_logisimNet14),
                .tick(1'b1));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   CU2   CU2_1 (.ALUREG(s_logisimBus6[3:0]),
                .AORBREG(s_logisimNet47),
                .BUTPRESS(s_logisimNet41),
                .CPUBUSCNTRL(s_logisimNet33),
                .CYCLE(s_logisimBus2[2:0]),
                .DECRAMADD(s_logisimNet30),
                .DELAY(s_logisimNet43),
                .FLAGS(s_logisimBus35[7:0]),
                .INCRAMADD(s_logisimNet36),
                .JMP(s_logisimNet42),
                .LIA(s_logisimNet23),
                .LIB(s_logisimNet26),
                .LIG(s_logisimNet0),
                .LOADBUTTON2BUS(s_logisimNet32),
                .LOADGPU2BUS(s_logisimNet46),
                .LOADRAM2DATABUS(s_logisimNet45),
                .NEXTINSTR(s_logisimNet1),
                .OPCODE(s_logisimBus19[7:0]),
                .PC(s_logisimNet31),
                .ROM2BUS(s_logisimNet44),
                .RSTALU(s_logisimBus11[6]),
                .RSTBUTTON(s_logisimNet34),
                .RSTREG(s_logisimBus27[7]),
                .SKIP(s_logisimNet15),
                .SVA(s_logisimNet25),
                .SVALU(s_logisimBus27[6]),
                .SVB(s_logisimNet7),
                .SVGPU(s_logisimNet22),
                .SVOPCODE(s_logisimNet24),
                .SVOPERAND1(s_logisimNet37),
                .SVOPERAND2(s_logisimNet17),
                .SVRAM(s_logisimNet48),
                .SVRAMADD(s_logisimNet28),
                .SVREGADD(s_logisimBus27[4]));

endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : CU2                                                          **
 **                                                                          **
 *****************************************************************************/

module CU2( ALUREG,
            AORBREG,
            BUTPRESS,
            CPUBUSCNTRL,
            CYCLE,
            DECRAMADD,
            DELAY,
            FLAGS,
            INCRAMADD,
            JMP,
            LIA,
            LIB,
            LIG,
            LOADBUTTON2BUS,
            LOADGPU2BUS,
            LOADRAM2DATABUS,
            NEXTINSTR,
            OPCODE,
            PC,
            ROM2BUS,
            RSTALU,
            RSTBUTTON,
            RSTREG,
            SKIP,
            SVA,
            SVALU,
            SVB,
            SVGPU,
            SVOPCODE,
            SVOPERAND1,
            SVOPERAND2,
            SVRAM,
            SVRAMADD,
            SVREGADD );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       BUTPRESS;
   input [2:0] CYCLE;
   input [7:0] FLAGS;
   input [7:0] OPCODE;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [3:0] ALUREG;
   output       AORBREG;
   output       CPUBUSCNTRL;
   output       DECRAMADD;
   output       DELAY;
   output       INCRAMADD;
   output       JMP;
   output       LIA;
   output       LIB;
   output       LIG;
   output       LOADBUTTON2BUS;
   output       LOADGPU2BUS;
   output       LOADRAM2DATABUS;
   output       NEXTINSTR;
   output       PC;
   output       ROM2BUS;
   output       RSTALU;
   output       RSTBUTTON;
   output       RSTREG;
   output       SKIP;
   output       SVA;
   output       SVALU;
   output       SVB;
   output       SVGPU;
   output       SVOPCODE;
   output       SVOPERAND1;
   output       SVOPERAND2;
   output       SVRAM;
   output       SVRAMADD;
   output       SVREGADD;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [3:0] s_logisimBus16;
   wire [3:0] s_logisimBus27;
   wire [7:0] s_logisimBus39;
   wire [2:0] s_logisimBus49;
   wire [7:0] s_logisimBus56;
   wire [7:0] s_logisimBus63;
   wire [7:0] s_logisimBus69;
   wire       s_logisimNet0;
   wire       s_logisimNet10;
   wire       s_logisimNet11;
   wire       s_logisimNet12;
   wire       s_logisimNet13;
   wire       s_logisimNet14;
   wire       s_logisimNet15;
   wire       s_logisimNet17;
   wire       s_logisimNet18;
   wire       s_logisimNet19;
   wire       s_logisimNet2;
   wire       s_logisimNet20;
   wire       s_logisimNet21;
   wire       s_logisimNet22;
   wire       s_logisimNet23;
   wire       s_logisimNet24;
   wire       s_logisimNet25;
   wire       s_logisimNet26;
   wire       s_logisimNet28;
   wire       s_logisimNet29;
   wire       s_logisimNet3;
   wire       s_logisimNet30;
   wire       s_logisimNet31;
   wire       s_logisimNet32;
   wire       s_logisimNet33;
   wire       s_logisimNet34;
   wire       s_logisimNet35;
   wire       s_logisimNet36;
   wire       s_logisimNet37;
   wire       s_logisimNet38;
   wire       s_logisimNet4;
   wire       s_logisimNet40;
   wire       s_logisimNet41;
   wire       s_logisimNet42;
   wire       s_logisimNet43;
   wire       s_logisimNet44;
   wire       s_logisimNet45;
   wire       s_logisimNet46;
   wire       s_logisimNet47;
   wire       s_logisimNet48;
   wire       s_logisimNet5;
   wire       s_logisimNet50;
   wire       s_logisimNet52;
   wire       s_logisimNet53;
   wire       s_logisimNet54;
   wire       s_logisimNet55;
   wire       s_logisimNet57;
   wire       s_logisimNet58;
   wire       s_logisimNet59;
   wire       s_logisimNet6;
   wire       s_logisimNet60;
   wire       s_logisimNet61;
   wire       s_logisimNet62;
   wire       s_logisimNet64;
   wire       s_logisimNet65;
   wire       s_logisimNet66;
   wire       s_logisimNet67;
   wire       s_logisimNet68;
   wire       s_logisimNet7;
   wire       s_logisimNet70;
   wire       s_logisimNet71;
   wire       s_logisimNet72;
   wire       s_logisimNet73;
   wire       s_logisimNet74;
   wire       s_logisimNet75;
   wire       s_logisimNet76;
   wire       s_logisimNet77;
   wire       s_logisimNet8;
   wire       s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all wiring is defined                                                 **
   *******************************************************************************/
   assign s_logisimBus16[0] = s_logisimNet15;
   assign s_logisimBus16[1] = s_logisimNet15;
   assign s_logisimBus16[2] = s_logisimNet15;
   assign s_logisimBus16[3] = s_logisimNet15;

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus49[2:0] = CYCLE;
   assign s_logisimBus56[7:0] = OPCODE;
   assign s_logisimBus63[7:0] = FLAGS;
   assign s_logisimNet19      = BUTPRESS;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign ALUREG          = s_logisimBus27[3:0];
   assign AORBREG         = s_logisimNet36;
   assign CPUBUSCNTRL     = s_logisimNet18;
   assign DECRAMADD       = s_logisimNet55;
   assign DELAY           = s_logisimNet59;
   assign INCRAMADD       = s_logisimNet62;
   assign JMP             = s_logisimNet68;
   assign LIA             = s_logisimNet5;
   assign LIB             = s_logisimNet67;
   assign LIG             = s_logisimNet38;
   assign LOADBUTTON2BUS  = s_logisimNet17;
   assign LOADGPU2BUS     = s_logisimNet33;
   assign LOADRAM2DATABUS = s_logisimNet21;
   assign NEXTINSTR       = s_logisimNet64;
   assign PC              = s_logisimNet0;
   assign ROM2BUS         = s_logisimNet29;
   assign RSTALU          = s_logisimNet3;
   assign RSTBUTTON       = s_logisimNet37;
   assign RSTREG          = s_logisimNet30;
   assign SKIP            = s_logisimNet43;
   assign SVA             = s_logisimNet61;
   assign SVALU           = s_logisimNet26;
   assign SVB             = s_logisimNet66;
   assign SVGPU           = s_logisimNet50;
   assign SVOPCODE        = s_logisimNet22;
   assign SVOPERAND1      = s_logisimNet10;
   assign SVOPERAND2      = s_logisimNet42;
   assign SVRAM           = s_logisimNet47;
   assign SVRAMADD        = s_logisimNet6;
   assign SVREGADD        = s_logisimNet4;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // NOT Gate
   assign s_logisimNet2 = ~s_logisimNet29;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   OR_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_1 (.input1(s_logisimNet28),
               .input2(s_logisimNet32),
               .input3(s_logisimNet14),
               .input4(s_logisimNet45),
               .result(s_logisimNet8));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet57),
               .input2(s_logisimNet36),
               .result(s_logisimNet26));

   OR_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_3 (.input1(s_logisimNet11),
               .input2(s_logisimNet20),
               .input3(s_logisimNet13),
               .result(s_logisimNet0));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet26),
               .input2(s_logisimNet4),
               .result(s_logisimNet15));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet12),
               .input2(s_logisimNet31),
               .result(s_logisimNet23));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_6 (.input1(s_logisimNet12),
               .input2(s_logisimNet8),
               .result(s_logisimNet44));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimNet12),
               .input2(s_logisimNet18),
               .result(s_logisimNet34));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_8 (.input1(s_logisimNet8),
               .input2(s_logisimNet11),
               .result(s_logisimNet35));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_9 (.input1(s_logisimNet18),
               .input2(s_logisimNet20),
               .result(s_logisimNet60));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_10 (.input1(s_logisimNet15),
                .input2(s_logisimNet10),
                .result(s_logisimNet58));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_11 (.input1(s_logisimNet35),
                .input2(s_logisimNet60),
                .result(s_logisimNet43));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_12 (.input1(s_logisimNet7),
                .input2(s_logisimNet58),
                .result(s_logisimNet64));

   AND_GATE_BUS #(.BubblesMask(2'b00),
                  .NrOfBits(4))
      GATES_13 (.input1(s_logisimBus56[3:0]),
                .input2(s_logisimBus16[3:0]),
                .result(s_logisimBus27[3:0]));

   AND_GATE_BUS #(.BubblesMask(2'b00),
                  .NrOfBits(8))
      GATES_14 (.input1(s_logisimBus39[7:0]),
                .input2(s_logisimBus63[7:0]),
                .result(s_logisimBus69[7:0]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_15 (.input1(s_logisimNet52),
                .input2(s_logisimNet19),
                .result(s_logisimNet40));

   OR_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_16 (.input1(s_logisimNet22),
                .input2(s_logisimNet10),
                .input3(s_logisimNet42),
                .input4(s_logisimNet0),
                .result(s_logisimNet29));

   OR_GATE_10_INPUTS #(.BubblesMask({2'b00, 8'h00}))
      GATES_17 (.input1(s_logisimNet25),
                .input10(s_logisimBus69[7]),
                .input2(s_logisimNet40),
                .input3(s_logisimBus69[0]),
                .input4(s_logisimBus69[1]),
                .input5(s_logisimBus69[2]),
                .input6(s_logisimBus69[3]),
                .input7(s_logisimBus69[4]),
                .input8(s_logisimBus69[5]),
                .input9(s_logisimBus69[6]),
                .result(s_logisimNet68));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_18 (.input1(s_logisimNet2),
                .input2(s_logisimNet32),
                .result(s_logisimNet21));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_19 (.input1(s_logisimNet2),
                .input2(s_logisimNet14),
                .result(s_logisimNet17));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_20 (.input1(s_logisimNet2),
                .input2(s_logisimNet45),
                .result(s_logisimNet33));

   Decoder_16   PLEXERS_21 (.decoderOut_0(s_logisimNet28),
                            .decoderOut_1(s_logisimNet18),
                            .decoderOut_10(),
                            .decoderOut_11(),
                            .decoderOut_12(),
                            .decoderOut_13(),
                            .decoderOut_14(),
                            .decoderOut_15(),
                            .decoderOut_2(s_logisimNet31),
                            .decoderOut_3(s_logisimNet57),
                            .decoderOut_4(s_logisimNet4),
                            .decoderOut_5(s_logisimNet32),
                            .decoderOut_6(s_logisimNet14),
                            .decoderOut_7(s_logisimNet45),
                            .decoderOut_8(s_logisimNet36),
                            .decoderOut_9(),
                            .enable(1'b1),
                            .sel(s_logisimBus56[7:4]));

   Decoder_8   PLEXERS_22 (.decoderOut_0(s_logisimNet22),
                           .decoderOut_1(s_logisimNet11),
                           .decoderOut_2(s_logisimNet10),
                           .decoderOut_3(s_logisimNet20),
                           .decoderOut_4(s_logisimNet42),
                           .decoderOut_5(s_logisimNet13),
                           .decoderOut_6(s_logisimNet12),
                           .decoderOut_7(s_logisimNet7),
                           .enable(1'b1),
                           .sel(s_logisimBus49[2:0]));

   Decoder_16   PLEXERS_23 (.decoderOut_0(),
                            .decoderOut_1(),
                            .decoderOut_10(s_logisimBus39[2]),
                            .decoderOut_11(s_logisimBus39[3]),
                            .decoderOut_12(s_logisimBus39[4]),
                            .decoderOut_13(s_logisimBus39[5]),
                            .decoderOut_14(s_logisimBus39[6]),
                            .decoderOut_15(s_logisimBus39[7]),
                            .decoderOut_2(),
                            .decoderOut_3(),
                            .decoderOut_4(s_logisimNet59),
                            .decoderOut_5(s_logisimNet6),
                            .decoderOut_6(s_logisimNet25),
                            .decoderOut_7(s_logisimNet52),
                            .decoderOut_8(s_logisimBus39[0]),
                            .decoderOut_9(s_logisimBus39[1]),
                            .enable(s_logisimNet23),
                            .sel(s_logisimBus56[3:0]));

   Decoder_16   PLEXERS_24 (.decoderOut_0(),
                            .decoderOut_1(s_logisimNet61),
                            .decoderOut_10(),
                            .decoderOut_11(),
                            .decoderOut_12(),
                            .decoderOut_13(),
                            .decoderOut_14(),
                            .decoderOut_15(),
                            .decoderOut_2(s_logisimNet66),
                            .decoderOut_3(s_logisimNet3),
                            .decoderOut_4(s_logisimNet30),
                            .decoderOut_5(s_logisimNet37),
                            .decoderOut_6(s_logisimNet47),
                            .decoderOut_7(s_logisimNet50),
                            .decoderOut_8(s_logisimNet55),
                            .decoderOut_9(s_logisimNet62),
                            .enable(s_logisimNet44),
                            .sel(s_logisimBus56[3:0]));

   Decoder_16   PLEXERS_25 (.decoderOut_0(s_logisimNet5),
                            .decoderOut_1(s_logisimNet67),
                            .decoderOut_10(),
                            .decoderOut_11(),
                            .decoderOut_12(),
                            .decoderOut_13(),
                            .decoderOut_14(),
                            .decoderOut_15(),
                            .decoderOut_2(s_logisimNet38),
                            .decoderOut_3(),
                            .decoderOut_4(),
                            .decoderOut_5(),
                            .decoderOut_6(),
                            .decoderOut_7(),
                            .decoderOut_8(),
                            .decoderOut_9(),
                            .enable(s_logisimNet34),
                            .sel(s_logisimBus56[3:0]));


endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : ALU                                                          **
 **                                                                          **
 *****************************************************************************/

module ALU( ALUCNTRL,
            ALUOUT,
            AORB,
            DATA,
            FLAGS,
            SVFLAGS );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [7:0] ALUCNTRL;
   input       AORB;
   input [7:0] DATA;
   input       SVFLAGS;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [7:0] ALUOUT;
   output [7:0] FLAGS;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [7:0] s_logisimBus13;
   wire [7:0] s_logisimBus15;
   wire [7:0] s_logisimBus17;
   wire [7:0] s_logisimBus18;
   wire [7:0] s_logisimBus19;
   wire [7:0] s_logisimBus2;
   wire [7:0] s_logisimBus20;
   wire [7:0] s_logisimBus24;
   wire [7:0] s_logisimBus25;
   wire [7:0] s_logisimBus3;
   wire [7:0] s_logisimBus31;
   wire [7:0] s_logisimBus38;
   wire [7:0] s_logisimBus4;
   wire [7:0] s_logisimBus41;
   wire [7:0] s_logisimBus46;
   wire [7:0] s_logisimBus48;
   wire [7:0] s_logisimBus8;
   wire       s_logisimNet0;
   wire       s_logisimNet1;
   wire       s_logisimNet11;
   wire       s_logisimNet12;
   wire       s_logisimNet14;
   wire       s_logisimNet16;
   wire       s_logisimNet21;
   wire       s_logisimNet22;
   wire       s_logisimNet23;
   wire       s_logisimNet26;
   wire       s_logisimNet27;
   wire       s_logisimNet28;
   wire       s_logisimNet29;
   wire       s_logisimNet30;
   wire       s_logisimNet32;
   wire       s_logisimNet33;
   wire       s_logisimNet34;
   wire       s_logisimNet35;
   wire       s_logisimNet36;
   wire       s_logisimNet37;
   wire       s_logisimNet39;
   wire       s_logisimNet40;
   wire       s_logisimNet43;
   wire       s_logisimNet44;
   wire       s_logisimNet45;
   wire       s_logisimNet47;
   wire       s_logisimNet49;
   wire       s_logisimNet5;
   wire       s_logisimNet50;
   wire       s_logisimNet51;
   wire       s_logisimNet52;
   wire       s_logisimNet53;
   wire       s_logisimNet54;
   wire       s_logisimNet6;
   wire       s_logisimNet7;
   wire       s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus31[7:0] = DATA;
   assign s_logisimBus46[7:0] = ALUCNTRL;
   assign s_logisimNet26      = SVFLAGS;
   assign s_logisimNet51      = AORB;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign ALUOUT = s_logisimBus48[7:0];
   assign FLAGS  = s_logisimBus41[7:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Ground
   assign  s_logisimNet53  =  1'b0;


   // Ground
   assign  s_logisimNet54  =  1'b0;


   // NOT Gate
   assign s_logisimNet27 = ~s_logisimBus46[3];

   // NOT Gate
   assign s_logisimBus4 = ~s_logisimBus24;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   NOR_GATE_8_INPUTS #(.BubblesMask(8'h00))
      GATES_1 (.input1(s_logisimBus48[0]),
               .input2(s_logisimBus48[1]),
               .input3(s_logisimBus48[2]),
               .input4(s_logisimBus48[3]),
               .input5(s_logisimBus48[4]),
               .input6(s_logisimBus48[5]),
               .input7(s_logisimBus48[6]),
               .input8(s_logisimBus48[7]),
               .result(s_logisimNet5));

   AND_GATE_BUS #(.BubblesMask(2'b00),
                  .NrOfBits(8))
      GATES_2 (.input1(s_logisimBus3[7:0]),
               .input2(s_logisimBus2[7:0]),
               .result(s_logisimBus17[7:0]));

   OR_GATE_BUS #(.BubblesMask(2'b00),
                 .NrOfBits(8))
      GATES_3 (.input1(s_logisimBus3[7:0]),
               .input2(s_logisimBus2[7:0]),
               .result(s_logisimBus25[7:0]));

   XOR_GATE_BUS_ONEHOT #(.BubblesMask(2'b00),
                         .NrOfBits(8))
      GATES_4 (.input1(s_logisimBus3[7:0]),
               .input2(s_logisimBus2[7:0]),
               .result(s_logisimBus38[7:0]));

   Multiplexer_bus_16 #(.nrOfBits(8))
      PLEXERS_5 (.enable(1'b1),
                 .muxIn_0(s_logisimBus13[7:0]),
                 .muxIn_1(s_logisimBus13[7:0]),
                 .muxIn_10(s_logisimBus4[7:0]),
                 .muxIn_11(s_logisimBus19[7:0]),
                 .muxIn_12(s_logisimBus15[7:0]),
                 .muxIn_13(s_logisimBus8[7:0]),
                 .muxIn_14(s_logisimBus20[7:0]),
                 .muxIn_15(s_logisimBus18[7:0]),
                 .muxIn_2(s_logisimBus13[7:0]),
                 .muxIn_3(s_logisimBus13[7:0]),
                 .muxIn_4(s_logisimBus13[7:0]),
                 .muxIn_5(s_logisimBus13[7:0]),
                 .muxIn_6(s_logisimBus13[7:0]),
                 .muxIn_7(s_logisimBus17[7:0]),
                 .muxIn_8(s_logisimBus25[7:0]),
                 .muxIn_9(s_logisimBus38[7:0]),
                 .muxOut(s_logisimBus48[7:0]),
                 .sel(s_logisimBus46[3:0]));

   Decoder_8   PLEXERS_6 (.decoderOut_0(),
                          .decoderOut_1(s_logisimNet6),
                          .decoderOut_2(s_logisimNet32),
                          .decoderOut_3(s_logisimNet33),
                          .decoderOut_4(s_logisimNet14),
                          .decoderOut_5(s_logisimNet40),
                          .decoderOut_6(s_logisimNet7),
                          .decoderOut_7(),
                          .enable(s_logisimNet27),
                          .sel(s_logisimBus46[2:0]));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_7 (.enable(1'b1),
                 .muxIn_0(s_logisimBus2[7:0]),
                 .muxIn_1(s_logisimBus3[7:0]),
                 .muxOut(s_logisimBus24[7:0]),
                 .sel(s_logisimNet51));

   Negator #(.nrOfBits(8))
      ARITH_8 (.dataX(s_logisimBus24[7:0]),
               .minDataX(s_logisimBus19[7:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(0))
      ARITH_9 (.aEqualsB(s_logisimBus41[2]),
               .aGreaterThanB(s_logisimBus41[1]),
               .aLessThanB(s_logisimBus41[3]),
               .dataA(s_logisimBus2[7:0]),
               .dataB(s_logisimBus3[7:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(1))
      ARITH_10 (.aEqualsB(s_logisimBus41[5]),
                .aGreaterThanB(s_logisimBus41[4]),
                .aLessThanB(),
                .dataA(s_logisimBus2[7:0]),
                .dataB(s_logisimBus3[7:0]));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_11 (.clock(s_logisimNet26),
                 .d(s_logisimNet5),
                 .preset(1'b0),
                 .q(s_logisimBus41[7]),
                 .qBar(),
                 .reset(1'b0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_12 (.clock(s_logisimNet26),
                 .d(s_logisimBus48[7]),
                 .preset(1'b0),
                 .q(s_logisimBus41[0]),
                 .qBar(),
                 .reset(1'b0),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      ACC (.clock(s_logisimBus46[7]),
           .clockEnable(s_logisimBus46[4]),
           .d(s_logisimBus31[7:0]),
           .q(s_logisimBus2[7:0]),
           .reset(s_logisimNet53),
           .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      B (.clock(s_logisimBus46[7]),
         .clockEnable(s_logisimBus46[5]),
         .d(s_logisimBus31[7:0]),
         .q(s_logisimBus3[7:0]),
         .reset(s_logisimNet54),
         .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_15 (.clock(s_logisimBus48[7]),
                 .d(s_logisimNet39),
                 .preset(1'b0),
                 .q(s_logisimBus41[6]),
                 .qBar(),
                 .reset(s_logisimBus46[6]),
                 .tick(1'b1));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   ROLLSSHIFTS   ROLLSSHIFTS_1 (.CIN(s_logisimBus41[6]),
                                .D2(s_logisimBus18[7:0]),
                                .D2COUT(s_logisimNet0),
                                .DATAIN(s_logisimBus24[7:0]),
                                .ROLLDOWN(s_logisimBus15[7:0]),
                                .ROLLUP(s_logisimBus8[7:0]),
                                .X2(s_logisimBus20[7:0]),
                                .X2COUT(s_logisimNet34));

   ADDSUB   ADDSUB_1 (.A(s_logisimBus2[7:0]),
                      .ADC(s_logisimNet32),
                      .ADD(s_logisimNet6),
                      .B(s_logisimBus3[7:0]),
                      .COUT(s_logisimNet39),
                      .D2(s_logisimNet0),
                      .DEC(s_logisimNet7),
                      .INC(s_logisimNet40),
                      .OUTADDSUB(s_logisimBus13[7:0]),
                      .ROLL(s_logisimBus46[3:0]),
                      .RST(s_logisimBus46[6]),
                      .SBC(s_logisimNet14),
                      .SUB(s_logisimNet33),
                      .X2(s_logisimNet34));

endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : CPU                                                          **
 **                                                                          **
 *****************************************************************************/

module CPU( ADDRESSBUSOUT,
            BUTTON2BUS,
            BUTTONPRESSED,
            BUTTONRST,
            CLK,
            DATABUSIN,
            DATABUSOUT,
            GPU2BUS,
            RAM2BUS,
            ROM2BUS,
            RST,
            SVGPU,
            SVRAM );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       BUTTONPRESSED;
   input       CLK;
   input [7:0] DATABUSIN;
   input       RST;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [15:0] ADDRESSBUSOUT;
   output        BUTTON2BUS;
   output        BUTTONRST;
   output [7:0]  DATABUSOUT;
   output        GPU2BUS;
   output        RAM2BUS;
   output        ROM2BUS;
   output        SVGPU;
   output        SVRAM;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [15:0] s_logisimBus1;
   wire [7:0]  s_logisimBus11;
   wire [7:0]  s_logisimBus14;
   wire [7:0]  s_logisimBus16;
   wire [7:0]  s_logisimBus19;
   wire [15:0] s_logisimBus22;
   wire [7:0]  s_logisimBus29;
   wire [7:0]  s_logisimBus3;
   wire [15:0] s_logisimBus30;
   wire [7:0]  s_logisimBus32;
   wire [15:0] s_logisimBus33;
   wire        s_logisimNet0;
   wire        s_logisimNet10;
   wire        s_logisimNet12;
   wire        s_logisimNet13;
   wire        s_logisimNet15;
   wire        s_logisimNet18;
   wire        s_logisimNet2;
   wire        s_logisimNet20;
   wire        s_logisimNet21;
   wire        s_logisimNet23;
   wire        s_logisimNet24;
   wire        s_logisimNet25;
   wire        s_logisimNet26;
   wire        s_logisimNet27;
   wire        s_logisimNet28;
   wire        s_logisimNet31;
   wire        s_logisimNet34;
   wire        s_logisimNet35;
   wire        s_logisimNet4;
   wire        s_logisimNet5;
   wire        s_logisimNet6;
   wire        s_logisimNet7;
   wire        s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus19[7:0] = DATABUSIN;
   assign s_logisimNet10      = RST;
   assign s_logisimNet23      = BUTTONPRESSED;
   assign s_logisimNet24      = CLK;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign ADDRESSBUSOUT = s_logisimBus30[15:0];
   assign BUTTON2BUS    = s_logisimNet31;
   assign BUTTONRST     = s_logisimNet18;
   assign DATABUSOUT    = s_logisimBus11[7:0];
   assign GPU2BUS       = s_logisimNet12;
   assign RAM2BUS       = s_logisimNet4;
   assign ROM2BUS       = s_logisimNet21;
   assign SVGPU         = s_logisimNet28;
   assign SVRAM         = s_logisimNet7;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Power
   assign  s_logisimNet35  =  1'b1;


   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet24),
               .input2(s_logisimNet34),
               .result(s_logisimNet2));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet7),
               .input2(s_logisimNet4),
               .result(s_logisimNet27));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_3 (.enable(1'b1),
                 .muxIn_0(s_logisimBus14[7:0]),
                 .muxIn_1(s_logisimBus19[7:0]),
                 .muxOut(s_logisimBus11[7:0]),
                 .sel(s_logisimNet4));

   Multiplexer_bus_2 #(.nrOfBits(16))
      PLEXERS_4 (.enable(1'b1),
                 .muxIn_0(s_logisimBus33[15:0]),
                 .muxIn_1(s_logisimBus22[15:0]),
                 .muxOut(s_logisimBus30[15:0]),
                 .sel(s_logisimNet27));

   LogisimCounter #(.invertClock(0),
                    .maxVal(16'hFFFF),
                    .mode(0),
                    .width(16))
      MEMORY_5 (.clear(s_logisimNet10),
                .clock(s_logisimNet2),
                .compareOut(),
                .countValue(s_logisimBus33[15:0]),
                .enable(s_logisimNet9),
                .load(s_logisimNet6),
                .loadData(s_logisimBus1[15:0]),
                .tick(1'b1),
                .upNotDown(s_logisimNet35));

   LogisimCounter #(.invertClock(0),
                    .maxVal(16'hFFFF),
                    .mode(0),
                    .width(16))
      MEMORY_6 (.clear(s_logisimNet10),
                .clock(s_logisimNet2),
                .compareOut(),
                .countValue(s_logisimBus22[15:0]),
                .enable(s_logisimNet26),
                .load(s_logisimNet25),
                .loadData(s_logisimBus1[15:0]),
                .tick(1'b1),
                .upNotDown(s_logisimNet5));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   CU   CU_1 (.ALUCNTRL(s_logisimBus32[7:0]),
              .ALUFLAGS(s_logisimBus16[7:0]),
              .AORBREG(s_logisimNet20),
              .BUSCNTRL(s_logisimNet15),
              .BUTPRESS(s_logisimNet23),
              .BUTTON2BUS(s_logisimNet31),
              .CHNGERAMADD(s_logisimNet26),
              .CLK(s_logisimNet2),
              .DELAY(s_logisimNet13),
              .GPU2BUS(s_logisimNet12),
              .INCORDEC(s_logisimNet5),
              .INSTRUCTION(s_logisimBus19[7:0]),
              .JMP(s_logisimNet6),
              .OPERAND1OUT(s_logisimBus1[7:0]),
              .OPERAND2OUT(s_logisimBus1[15:8]),
              .PC(s_logisimNet9),
              .RAM2BUS(s_logisimNet4),
              .REGCNTRL(s_logisimBus3[7:0]),
              .ROM2BUS(s_logisimNet21),
              .RST(s_logisimNet10),
              .RSTBUTTON(s_logisimNet18),
              .SVFLAGS(s_logisimNet0),
              .SVGPU(s_logisimNet28),
              .SVRAM(s_logisimNet7),
              .SVRAMADD(s_logisimNet25));

   ALU   ALU_1 (.ALUCNTRL(s_logisimBus32[7:0]),
                .ALUOUT(s_logisimBus29[7:0]),
                .AORB(s_logisimNet20),
                .DATA(s_logisimBus11[7:0]),
                .FLAGS(s_logisimBus16[7:0]),
                .SVFLAGS(s_logisimNet0));

   REG16   REG16_1 (.CNTRL(s_logisimBus3[7:0]),
                    .DATA(s_logisimBus29[7:0]),
                    .OPERAND1(s_logisimBus1[7:0]),
                    .OPERANDEN(s_logisimNet15),
                    .Output_bus_1(s_logisimBus14[7:0]));

   DELAY   DELAY_1 (.CLK(s_logisimNet24),
                    .DELAYIN(s_logisimNet13),
                    .DELAYTIME(s_logisimBus1[15:0]),
                    .ENCLK(s_logisimNet34),
                    .RST(s_logisimNet10));

endmodule
