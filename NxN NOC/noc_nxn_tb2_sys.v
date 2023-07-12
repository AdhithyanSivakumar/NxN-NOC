`timescale 1ns / 1ps
////////////////////////////////////////////////////////////
module noc_nxn_tb2();
		 parameter BUS_WIDTH = 32;

	 integer k;
	 integer L;
	reg [3:0] K00;
	reg [3:0] K01;
	reg [3:0] K02;
	reg [3:0] K03;
	reg [3:0] K10;
	reg [3:0] K11;
	reg [3:0] K12;
	reg [3:0] K13;
	reg [3:0] K20;
	reg [3:0] K21;
	reg [3:0] K22;
	reg [3:0] K23;
	reg [3:0] K30;
	reg [3:0] K31;
	reg [3:0] K32;
	reg [3:0] K33;
	reg buffer_in00;
	reg buffer_in01;
	reg buffer_in02;
	reg buffer_in03;
	reg buffer_in10;
	reg buffer_in11;
	reg buffer_in12;
	reg buffer_in13;
	reg buffer_in20;
	reg buffer_in21;
	reg buffer_in22;
	reg buffer_in23;
	reg buffer_in30;
	reg buffer_in31;
	reg buffer_in32;
	reg buffer_in33;
	wire buffer_out00;
	wire buffer_out01;
	wire buffer_out02;
	wire buffer_out03;
	wire buffer_out10;
	wire buffer_out11;
	wire buffer_out12;
	wire buffer_out13;
	wire buffer_out20;
	wire buffer_out21;
	wire buffer_out22;
	wire buffer_out23;
	wire buffer_out30;
	wire buffer_out31;
	wire buffer_out32;
	wire buffer_out33;
	reg clk1;
	reg clk2;
	reg rst;
	wire [BUS_WIDTH-1:0] router_in00;
	wire [BUS_WIDTH-1:0] router_in01;
	wire [BUS_WIDTH-1:0] router_in02;
	wire [BUS_WIDTH-1:0] router_in03;
	wire [BUS_WIDTH-1:0] router_in10;
	wire [BUS_WIDTH-1:0] router_in11;
	wire [BUS_WIDTH-1:0] router_in12;
	wire [BUS_WIDTH-1:0] router_in13;
	wire [BUS_WIDTH-1:0] router_in20;
	wire [BUS_WIDTH-1:0] router_in21;
	wire [BUS_WIDTH-1:0] router_in22;
	wire [BUS_WIDTH-1:0] router_in23;
	wire [BUS_WIDTH-1:0] router_in30;
	wire [BUS_WIDTH-1:0] router_in31;
	wire [BUS_WIDTH-1:0] router_in32;
	wire [BUS_WIDTH-1:0] router_in33;
	wire [BUS_WIDTH-1:0] router_out00;
	wire [BUS_WIDTH-1:0] router_out01;
	wire [BUS_WIDTH-1:0] router_out02;
	wire [BUS_WIDTH-1:0] router_out03;
	wire [BUS_WIDTH-1:0] router_out10;
	wire [BUS_WIDTH-1:0] router_out11;
	wire [BUS_WIDTH-1:0] router_out12;
	wire [BUS_WIDTH-1:0] router_out13;
	wire [BUS_WIDTH-1:0] router_out20;
	wire [BUS_WIDTH-1:0] router_out21;
	wire [BUS_WIDTH-1:0] router_out22;
	wire [BUS_WIDTH-1:0] router_out23;
	wire [BUS_WIDTH-1:0] router_out30;
	wire [BUS_WIDTH-1:0] router_out31;
	wire [BUS_WIDTH-1:0] router_out32;
	wire [BUS_WIDTH-1:0] router_out33;
	 reg [15:0] inp_w0_00;
	 reg [15:0] inp_w0_01;
	 reg [15:0] inp_w0_02;
	 reg [15:0] inp_w0_03;
	 reg [15:0] inp_w0_10;
	 reg [15:0] inp_w0_11;
	 reg [15:0] inp_w0_12;
	 reg [15:0] inp_w0_13;
	 reg [15:0] inp_w0_20;
	 reg [15:0] inp_w0_21;
	 reg [15:0] inp_w0_22;
	 reg [15:0] inp_w0_23;
	 reg [15:0] inp_w0_30;
	 reg [15:0] inp_w0_31;
	 reg [15:0] inp_w0_32;
	 reg [15:0] inp_w0_33;
	 reg [15:0] inp_w4_00;
	 reg [15:0] inp_w4_01;
	 reg [15:0] inp_w4_02;
	 reg [15:0] inp_w4_03;
	 reg [15:0] inp_w4_10;
	 reg [15:0] inp_w4_11;
	 reg [15:0] inp_w4_12;
	 reg [15:0] inp_w4_13;
	 reg [15:0] inp_w4_20;
	 reg [15:0] inp_w4_21;
	 reg [15:0] inp_w4_22;
	 reg [15:0] inp_w4_23;
	 reg [15:0] inp_w4_30;
	 reg [15:0] inp_w4_31;
	 reg [15:0] inp_w4_32;
	 reg [15:0] inp_w4_33;
	 reg [15:0] inp_w8_00;
	 reg [15:0] inp_w8_01;
	 reg [15:0] inp_w8_02;
	 reg [15:0] inp_w8_03;
	 reg [15:0] inp_w8_10;
	 reg [15:0] inp_w8_11;
	 reg [15:0] inp_w8_12;
	 reg [15:0] inp_w8_13;
	 reg [15:0] inp_w8_20;
	 reg [15:0] inp_w8_21;
	 reg [15:0] inp_w8_22;
	 reg [15:0] inp_w8_23;
	 reg [15:0] inp_w8_30;
	 reg [15:0] inp_w8_31;
	 reg [15:0] inp_w8_32;
	 reg [15:0] inp_w8_33;
	 reg [15:0] inp_w12_00;
	 reg [15:0] inp_w12_01;
	 reg [15:0] inp_w12_02;
	 reg [15:0] inp_w12_03;
	 reg [15:0] inp_w12_10;
	 reg [15:0] inp_w12_11;
	 reg [15:0] inp_w12_12;
	 reg [15:0] inp_w12_13;
	 reg [15:0] inp_w12_20;
	 reg [15:0] inp_w12_21;
	 reg [15:0] inp_w12_22;
	 reg [15:0] inp_w12_23;
	 reg [15:0] inp_w12_30;
	 reg [15:0] inp_w12_31;
	 reg [15:0] inp_w12_32;
	 reg [15:0] inp_w12_33;
	 reg [15:0] inp_n0_00;
	 reg [15:0] inp_n0_01;
	 reg [15:0] inp_n0_02;
	 reg [15:0] inp_n0_03;
	 reg [15:0] inp_n0_10;
	 reg [15:0] inp_n0_11;
	 reg [15:0] inp_n0_12;
	 reg [15:0] inp_n0_13;
	 reg [15:0] inp_n0_20;
	 reg [15:0] inp_n0_21;
	 reg [15:0] inp_n0_22;
	 reg [15:0] inp_n0_23;
	 reg [15:0] inp_n0_30;
	 reg [15:0] inp_n0_31;
	 reg [15:0] inp_n0_32;
	 reg [15:0] inp_n0_33;
	 reg [15:0] inp_n1_00;
	 reg [15:0] inp_n1_01;
	 reg [15:0] inp_n1_02;
	 reg [15:0] inp_n1_03;
	 reg [15:0] inp_n1_10;
	 reg [15:0] inp_n1_11;
	 reg [15:0] inp_n1_12;
	 reg [15:0] inp_n1_13;
	 reg [15:0] inp_n1_20;
	 reg [15:0] inp_n1_21;
	 reg [15:0] inp_n1_22;
	 reg [15:0] inp_n1_23;
	 reg [15:0] inp_n1_30;
	 reg [15:0] inp_n1_31;
	 reg [15:0] inp_n1_32;
	 reg [15:0] inp_n1_33;
	 reg [15:0] inp_n2_00;
	 reg [15:0] inp_n2_01;
	 reg [15:0] inp_n2_02;
	 reg [15:0] inp_n2_03;
	 reg [15:0] inp_n2_10;
	 reg [15:0] inp_n2_11;
	 reg [15:0] inp_n2_12;
	 reg [15:0] inp_n2_13;
	 reg [15:0] inp_n2_20;
	 reg [15:0] inp_n2_21;
	 reg [15:0] inp_n2_22;
	 reg [15:0] inp_n2_23;
	 reg [15:0] inp_n2_30;
	 reg [15:0] inp_n2_31;
	 reg [15:0] inp_n2_32;
	 reg [15:0] inp_n2_33;
	 input [15:0] inp_n3_00;
	 input [15:0] inp_n3_01;
	 input [15:0] inp_n3_02;
	 input [15:0] inp_n3_03;
	 input [15:0] inp_n3_10;
	 input [15:0] inp_n3_11;
	 input [15:0] inp_n3_12;
	 input [15:0] inp_n3_13;
	 input [15:0] inp_n3_20;
	 input [15:0] inp_n3_21;
	 input [15:0] inp_n3_22;
	 input [15:0] inp_n3_23;
	 input [15:0] inp_n3_30;
	 input [15:0] inp_n3_31;
	 input [15:0] inp_n3_32;
	 input [15:0] inp_n3_33;
	 wire [15:0] result_out0_00;
	 wire [15:0] result_out0_01;
	 wire [15:0] result_out0_02;
	 wire [15:0] result_out0_03;
	 wire [15:0] result_out0_10;
	 wire [15:0] result_out0_11;
	 wire [15:0] result_out0_12;
	 wire [15:0] result_out0_13;
	 wire [15:0] result_out0_20;
	 wire [15:0] result_out0_21;
	 wire [15:0] result_out0_22;
	 wire [15:0] result_out0_23;
	 wire [15:0] result_out0_30;
	 wire [15:0] result_out0_31;
	 wire [15:0] result_out0_32;
	 wire [15:0] result_out0_33;
	 wire [15:0] result_out1_00;
	 wire [15:0] result_out1_01;
	 wire [15:0] result_out1_02;
	 wire [15:0] result_out1_03;
	 wire [15:0] result_out1_10;
	 wire [15:0] result_out1_11;
	 wire [15:0] result_out1_12;
	 wire [15:0] result_out1_13;
	 wire [15:0] result_out1_20;
	 wire [15:0] result_out1_21;
	 wire [15:0] result_out1_22;
	 wire [15:0] result_out1_23;
	 wire [15:0] result_out1_30;
	 wire [15:0] result_out1_31;
	 wire [15:0] result_out1_32;
	 wire [15:0] result_out1_33;
	 wire [15:0] result_out2_00;
	 wire [15:0] result_out2_01;
	 wire [15:0] result_out2_02;
	 wire [15:0] result_out2_03;
	 wire [15:0] result_out2_10;
	 wire [15:0] result_out2_11;
	 wire [15:0] result_out2_12;
	 wire [15:0] result_out2_13;
	 wire [15:0] result_out2_20;
	 wire [15:0] result_out2_21;
	 wire [15:0] result_out2_22;
	 wire [15:0] result_out2_23;
	 wire [15:0] result_out2_30;
	 wire [15:0] result_out2_31;
	 wire [15:0] result_out2_32;
	 wire [15:0] result_out2_33;
	 wire [15:0] result_out3_00;
	 wire [15:0] result_out3_01;
	 wire [15:0] result_out3_02;
	 wire [15:0] result_out3_03;
	 wire [15:0] result_out3_10;
	 wire [15:0] result_out3_11;
	 wire [15:0] result_out3_12;
	 wire [15:0] result_out3_13;
	 wire [15:0] result_out3_20;
	 wire [15:0] result_out3_21;
	 wire [15:0] result_out3_22;
	 wire [15:0] result_out3_23;
	 wire [15:0] result_out3_30;
	 wire [15:0] result_out3_31;
	 wire [15:0] result_out3_32;
	 wire [15:0] result_out3_33;
	 wire [15:0] result_out4_00;
	 wire [15:0] result_out4_01;
	 wire [15:0] result_out4_02;
	 wire [15:0] result_out4_03;
	 wire [15:0] result_out4_10;
	 wire [15:0] result_out4_11;
	 wire [15:0] result_out4_12;
	 wire [15:0] result_out4_13;
	 wire [15:0] result_out4_20;
	 wire [15:0] result_out4_21;
	 wire [15:0] result_out4_22;
	 wire [15:0] result_out4_23;
	 wire [15:0] result_out4_30;
	 wire [15:0] result_out4_31;
	 wire [15:0] result_out4_32;
	 wire [15:0] result_out4_33;
	 wire [15:0] result_out5_00;
	 wire [15:0] result_out5_01;
	 wire [15:0] result_out5_02;
	 wire [15:0] result_out5_03;
	 wire [15:0] result_out5_10;
	 wire [15:0] result_out5_11;
	 wire [15:0] result_out5_12;
	 wire [15:0] result_out5_13;
	 wire [15:0] result_out5_20;
	 wire [15:0] result_out5_21;
	 wire [15:0] result_out5_22;
	 wire [15:0] result_out5_23;
	 wire [15:0] result_out5_30;
	 wire [15:0] result_out5_31;
	 wire [15:0] result_out5_32;
	 wire [15:0] result_out5_33;
	 wire [15:0] result_out6_00;
	 wire [15:0] result_out6_01;
	 wire [15:0] result_out6_02;
	 wire [15:0] result_out6_03;
	 wire [15:0] result_out6_10;
	 wire [15:0] result_out6_11;
	 wire [15:0] result_out6_12;
	 wire [15:0] result_out6_13;
	 wire [15:0] result_out6_20;
	 wire [15:0] result_out6_21;
	 wire [15:0] result_out6_22;
	 wire [15:0] result_out6_23;
	 wire [15:0] result_out6_30;
	 wire [15:0] result_out6_31;
	 wire [15:0] result_out6_32;
	 wire [15:0] result_out6_33;
	 wire [15:0] result_out7_00;
	 wire [15:0] result_out7_01;
	 wire [15:0] result_out7_02;
	 wire [15:0] result_out7_03;
	 wire [15:0] result_out7_10;
	 wire [15:0] result_out7_11;
	 wire [15:0] result_out7_12;
	 wire [15:0] result_out7_13;
	 wire [15:0] result_out7_20;
	 wire [15:0] result_out7_21;
	 wire [15:0] result_out7_22;
	 wire [15:0] result_out7_23;
	 wire [15:0] result_out7_30;
	 wire [15:0] result_out7_31;
	 wire [15:0] result_out7_32;
	 wire [15:0] result_out7_33;
	 wire [15:0] result_out8_00;
	 wire [15:0] result_out8_01;
	 wire [15:0] result_out8_02;
	 wire [15:0] result_out8_03;
	 wire [15:0] result_out8_10;
	 wire [15:0] result_out8_11;
	 wire [15:0] result_out8_12;
	 wire [15:0] result_out8_13;
	 wire [15:0] result_out8_20;
	 wire [15:0] result_out8_21;
	 wire [15:0] result_out8_22;
	 wire [15:0] result_out8_23;
	 wire [15:0] result_out8_30;
	 wire [15:0] result_out8_31;
	 wire [15:0] result_out8_32;
	 wire [15:0] result_out8_33;
	 wire [15:0] result_out9_00;
	 wire [15:0] result_out9_01;
	 wire [15:0] result_out9_02;
	 wire [15:0] result_out9_03;
	 wire [15:0] result_out9_10;
	 wire [15:0] result_out9_11;
	 wire [15:0] result_out9_12;
	 wire [15:0] result_out9_13;
	 wire [15:0] result_out9_20;
	 wire [15:0] result_out9_21;
	 wire [15:0] result_out9_22;
	 wire [15:0] result_out9_23;
	 wire [15:0] result_out9_30;
	 wire [15:0] result_out9_31;
	 wire [15:0] result_out9_32;
	 wire [15:0] result_out9_33;
	 wire [15:0] result_out10_00;
	 wire [15:0] result_out10_01;
	 wire [15:0] result_out10_02;
	 wire [15:0] result_out10_03;
	 wire [15:0] result_out10_10;
	 wire [15:0] result_out10_11;
	 wire [15:0] result_out10_12;
	 wire [15:0] result_out10_13;
	 wire [15:0] result_out10_20;
	 wire [15:0] result_out10_21;
	 wire [15:0] result_out10_22;
	 wire [15:0] result_out10_23;
	 wire [15:0] result_out10_30;
	 wire [15:0] result_out10_31;
	 wire [15:0] result_out10_32;
	 wire [15:0] result_out10_33;
	 wire [15:0] result_out11_00;
	 wire [15:0] result_out11_01;
	 wire [15:0] result_out11_02;
	 wire [15:0] result_out11_03;
	 wire [15:0] result_out11_10;
	 wire [15:0] result_out11_11;
	 wire [15:0] result_out11_12;
	 wire [15:0] result_out11_13;
	 wire [15:0] result_out11_20;
	 wire [15:0] result_out11_21;
	 wire [15:0] result_out11_22;
	 wire [15:0] result_out11_23;
	 wire [15:0] result_out11_30;
	 wire [15:0] result_out11_31;
	 wire [15:0] result_out11_32;
	 wire [15:0] result_out11_33;
	 wire [15:0] result_out12_00;
	 wire [15:0] result_out12_01;
	 wire [15:0] result_out12_02;
	 wire [15:0] result_out12_03;
	 wire [15:0] result_out12_10;
	 wire [15:0] result_out12_11;
	 wire [15:0] result_out12_12;
	 wire [15:0] result_out12_13;
	 wire [15:0] result_out12_20;
	 wire [15:0] result_out12_21;
	 wire [15:0] result_out12_22;
	 wire [15:0] result_out12_23;
	 wire [15:0] result_out12_30;
	 wire [15:0] result_out12_31;
	 wire [15:0] result_out12_32;
	 wire [15:0] result_out12_33;
	 wire [15:0] result_out13_00;
	 wire [15:0] result_out13_01;
	 wire [15:0] result_out13_02;
	 wire [15:0] result_out13_03;
	 wire [15:0] result_out13_10;
	 wire [15:0] result_out13_11;
	 wire [15:0] result_out13_12;
	 wire [15:0] result_out13_13;
	 wire [15:0] result_out13_20;
	 wire [15:0] result_out13_21;
	 wire [15:0] result_out13_22;
	 wire [15:0] result_out13_23;
	 wire [15:0] result_out13_30;
	 wire [15:0] result_out13_31;
	 wire [15:0] result_out13_32;
	 wire [15:0] result_out13_33;
	 wire [15:0] result_out14_00;
	 wire [15:0] result_out14_01;
	 wire [15:0] result_out14_02;
	 wire [15:0] result_out14_03;
	 wire [15:0] result_out14_10;
	 wire [15:0] result_out14_11;
	 wire [15:0] result_out14_12;
	 wire [15:0] result_out14_13;
	 wire [15:0] result_out14_20;
	 wire [15:0] result_out14_21;
	 wire [15:0] result_out14_22;
	 wire [15:0] result_out14_23;
	 wire [15:0] result_out14_30;
	 wire [15:0] result_out14_31;
	 wire [15:0] result_out14_32;
	 wire [15:0] result_out14_33;
	 wire [15:0] result_out15_00;
	 wire [15:0] result_out15_01;
	 wire [15:0] result_out15_02;
	 wire [15:0] result_out15_03;
	 wire [15:0] result_out15_10;
	 wire [15:0] result_out15_11;
	 wire [15:0] result_out15_12;
	 wire [15:0] result_out15_13;
	 wire [15:0] result_out15_20;
	 wire [15:0] result_out15_21;
	 wire [15:0] result_out15_22;
	 wire [15:0] result_out15_23;
	 wire [15:0] result_out15_30;
	 wire [15:0] result_out15_31;
	 wire [15:0] result_out15_32;
	 wire [15:0] result_out15_33;


noc_nxn uut(
	.K00(K00),
	.K01(K01),
	.K02(K02),
	.K03(K03),
	.K10(K10),
	.K11(K11),
	.K12(K12),
	.K13(K13),
	.K20(K20),
	.K21(K21),
	.K22(K22),
	.K23(K23),
	.K30(K30),
	.K31(K31),
	.K32(K32),
	.K33(K33),
	.buffer_in00(buffer_in00),
	.buffer_in01(buffer_in01),
	.buffer_in02(buffer_in02),
	.buffer_in03(buffer_in03),
	.buffer_in10(buffer_in10),
	.buffer_in11(buffer_in11),
	.buffer_in12(buffer_in12),
	.buffer_in13(buffer_in13),
	.buffer_in20(buffer_in20),
	.buffer_in21(buffer_in21),
	.buffer_in22(buffer_in22),
	.buffer_in23(buffer_in23),
	.buffer_in30(buffer_in30),
	.buffer_in31(buffer_in31),
	.buffer_in32(buffer_in32),
	.buffer_in33(buffer_in33),
	.buffer_out00(buffer_out00),
	.buffer_out01(buffer_out01),
	.buffer_out02(buffer_out02),
	.buffer_out03(buffer_out03),
	.buffer_out10(buffer_out10),
	.buffer_out11(buffer_out11),
	.buffer_out12(buffer_out12),
	.buffer_out13(buffer_out13),
	.buffer_out20(buffer_out20),
	.buffer_out21(buffer_out21),
	.buffer_out22(buffer_out22),
	.buffer_out23(buffer_out23),
	.buffer_out30(buffer_out30),
	.buffer_out31(buffer_out31),
	.buffer_out32(buffer_out32),
	.buffer_out33(buffer_out33),
	.clk1(clk1),
	.clk2(clk2),
	.rst(rst),
	.router_out00(router_out00),
	.router_out01(router_out01),
	.router_out02(router_out02),
	.router_out03(router_out03),
	.router_out10(router_out10),
	.router_out11(router_out11),
	.router_out12(router_out12),
	.router_out13(router_out13),
	.router_out20(router_out20),
	.router_out21(router_out21),
	.router_out22(router_out22),
	.router_out23(router_out23),
	.router_out30(router_out30),
	.router_out31(router_out31),
	.router_out32(router_out32),
	.router_out33(router_out33),
	.inp_w0_00(inp_w0_00),
	.inp_w0_01(inp_w0_01),
	.inp_w0_02(inp_w0_02),
	.inp_w0_03(inp_w0_03),
	.inp_w0_10(inp_w0_10),
	.inp_w0_11(inp_w0_11),
	.inp_w0_12(inp_w0_12),
	.inp_w0_13(inp_w0_13),
	.inp_w0_20(inp_w0_20),
	.inp_w0_21(inp_w0_21),
	.inp_w0_22(inp_w0_22),
	.inp_w0_23(inp_w0_23),
	.inp_w0_30(inp_w0_30),
	.inp_w0_31(inp_w0_31),
	.inp_w0_32(inp_w0_32),
	.inp_w0_33(inp_w0_33),
	.inp_w4_00(inp_w4_00),
	.inp_w4_01(inp_w4_01),
	.inp_w4_02(inp_w4_02),
	.inp_w4_03(inp_w4_03),
	.inp_w4_10(inp_w4_10),
	.inp_w4_11(inp_w4_11),
	.inp_w4_12(inp_w4_12),
	.inp_w4_13(inp_w4_13),
	.inp_w4_20(inp_w4_20),
	.inp_w4_21(inp_w4_21),
	.inp_w4_22(inp_w4_22),
	.inp_w4_23(inp_w4_23),
	.inp_w4_30(inp_w4_30),
	.inp_w4_31(inp_w4_31),
	.inp_w4_32(inp_w4_32),
	.inp_w4_33(inp_w4_33),
	.inp_w8_00(inp_w8_00),
	.inp_w8_01(inp_w8_01),
	.inp_w8_02(inp_w8_02),
	.inp_w8_03(inp_w8_03),
	.inp_w8_10(inp_w8_10),
	.inp_w8_11(inp_w8_11),
	.inp_w8_12(inp_w8_12),
	.inp_w8_13(inp_w8_13),
	.inp_w8_20(inp_w8_20),
	.inp_w8_21(inp_w8_21),
	.inp_w8_22(inp_w8_22),
	.inp_w8_23(inp_w8_23),
	.inp_w8_30(inp_w8_30),
	.inp_w8_31(inp_w8_31),
	.inp_w8_32(inp_w8_32),
	.inp_w8_33(inp_w8_33),
	.inp_w12_00(inp_w12_00),
	.inp_w12_01(inp_w12_01),
	.inp_w12_02(inp_w12_02),
	.inp_w12_03(inp_w12_03),
	.inp_w12_10(inp_w12_10),
	.inp_w12_11(inp_w12_11),
	.inp_w12_12(inp_w12_12),
	.inp_w12_13(inp_w12_13),
	.inp_w12_20(inp_w12_20),
	.inp_w12_21(inp_w12_21),
	.inp_w12_22(inp_w12_22),
	.inp_w12_23(inp_w12_23),
	.inp_w12_30(inp_w12_30),
	.inp_w12_31(inp_w12_31),
	.inp_w12_32(inp_w12_32),
	.inp_w12_33(inp_w12_33),
	.inp_n0_00(inp_n0_00),
	.inp_n0_01(inp_n0_01),
	.inp_n0_02(inp_n0_02),
	.inp_n0_03(inp_n0_03),
	.inp_n0_10(inp_n0_10),
	.inp_n0_11(inp_n0_11),
	.inp_n0_12(inp_n0_12),
	.inp_n0_13(inp_n0_13),
	.inp_n0_20(inp_n0_20),
	.inp_n0_21(inp_n0_21),
	.inp_n0_22(inp_n0_22),
	.inp_n0_23(inp_n0_23),
	.inp_n0_30(inp_n0_30),
	.inp_n0_31(inp_n0_31),
	.inp_n0_32(inp_n0_32),
	.inp_n0_33(inp_n0_33),
	.inp_n1_00(inp_n1_00),
	.inp_n1_01(inp_n1_01),
	.inp_n1_02(inp_n1_02),
	.inp_n1_03(inp_n1_03),
	.inp_n1_10(inp_n1_10),
	.inp_n1_11(inp_n1_11),
	.inp_n1_12(inp_n1_12),
	.inp_n1_13(inp_n1_13),
	.inp_n1_20(inp_n1_20),
	.inp_n1_21(inp_n1_21),
	.inp_n1_22(inp_n1_22),
	.inp_n1_23(inp_n1_23),
	.inp_n1_30(inp_n1_30),
	.inp_n1_31(inp_n1_31),
	.inp_n1_32(inp_n1_32),
	.inp_n1_33(inp_n1_33),
	.inp_n2_00(inp_n2_00),
	.inp_n2_01(inp_n2_01),
	.inp_n2_02(inp_n2_02),
	.inp_n2_03(inp_n2_03),
	.inp_n2_10(inp_n2_10),
	.inp_n2_11(inp_n2_11),
	.inp_n2_12(inp_n2_12),
	.inp_n2_13(inp_n2_13),
	.inp_n2_20(inp_n2_20),
	.inp_n2_21(inp_n2_21),
	.inp_n2_22(inp_n2_22),
	.inp_n2_23(inp_n2_23),
	.inp_n2_30(inp_n2_30),
	.inp_n2_31(inp_n2_31),
	.inp_n2_32(inp_n2_32),
	.inp_n2_33(inp_n2_33),
	.inp_n3_00(inp_n3_00),
	.inp_n3_01(inp_n3_01),
	.inp_n3_02(inp_n3_02),
	.inp_n3_03(inp_n3_03),
	.inp_n3_10(inp_n3_10),
	.inp_n3_11(inp_n3_11),
	.inp_n3_12(inp_n3_12),
	.inp_n3_13(inp_n3_13),
	.inp_n3_20(inp_n3_20),
	.inp_n3_21(inp_n3_21),
	.inp_n3_22(inp_n3_22),
	.inp_n3_23(inp_n3_23),
	.inp_n3_30(inp_n3_30),
	.inp_n3_31(inp_n3_31),
	.inp_n3_32(inp_n3_32),
	.inp_n3_33(inp_n3_33)
);

        initial 
            begin 
               forever 
                    begin
                       clk1 = 0;
                       clk2 = 0;
                       #5 clk1 = 1;
                       #5 clk1 = 0;
                       #5 clk2 = 1;
                       #5;
                   end
            end
	initial
	begin
		rst = 1'b1;
		#10;
				if(!buffer_out00)
					K00= 2'h0;
				if(!buffer_out01)
					K01= 2'h0;
				if(!buffer_out02)
					K02= 2'h0;
				if(!buffer_out03)
					K03= 2'h0;
				if(!buffer_out10)
					K10= 2'h0;
				if(!buffer_out11)
					K11= 2'h0;
				if(!buffer_out12)
					K12= 2'h0;
				if(!buffer_out13)
					K13= 2'h0;
				if(!buffer_out20)
					K20= 2'h0;
				if(!buffer_out21)
					K21= 2'h0;
				if(!buffer_out22)
					K22= 2'h0;
				if(!buffer_out23)
					K23= 2'h0;
				if(!buffer_out30)
					K30= 2'h0;
				if(!buffer_out31)
					K31= 2'h0;
				if(!buffer_out32)
					K32= 2'h0;
				if(!buffer_out33)
					K33= 2'h0;
				#10;
		rst = 1'b0;
		#18;
		rst = 1'b1;
		#10;
		rst = 1'b0;
		#10;
			k = 0;
			L = 0;
			repeat(100)
			begin
				if(!buffer_out00)
				begin
					k = k + 1;
					K00= $random;
				end
				if(!buffer_out01)
				begin
					k = k + 1;
					K01= $random;
				end
				if(!buffer_out02)
				begin
					k = k + 1;
					K02= $random;
				end
				if(!buffer_out03)
				begin
					k = k + 1;
					K03= $random;
				end
				if(!buffer_out10)
				begin
					k = k + 1;
					K10= $random;
				end
				if(!buffer_out11)
				begin
					k = k + 1;
					K11= $random;
				end
				if(!buffer_out12)
				begin
					k = k + 1;
					K12= $random;
				end
				if(!buffer_out13)
				begin
					k = k + 1;
					K13= $random;
				end
				if(!buffer_out20)
				begin
					k = k + 1;
					K20= $random;
				end
				if(!buffer_out21)
				begin
					k = k + 1;
					K21= $random;
				end
				if(!buffer_out22)
				begin
					k = k + 1;
					K22= $random;
				end
				if(!buffer_out23)
				begin
					k = k + 1;
					K23= $random;
				end
				if(!buffer_out30)
				begin
					k = k + 1;
					K30= $random;
				end
				if(!buffer_out31)
				begin
					k = k + 1;
					K31= $random;
				end
				if(!buffer_out32)
				begin
					k = k + 1;
					K32= $random;
				end
				if(!buffer_out33)
				begin
					k = k + 1;
					K33= $random;
				end
				#20;
			end
			#5;
			forever
			begin
				if(!buffer_out00)
					K00= 2'h0;
				if(!buffer_out01)
					K01= 2'h0;
				if(!buffer_out02)
					K02= 2'h0;
				if(!buffer_out03)
					K03= 2'h0;
				if(!buffer_out10)
					K10= 2'h0;
				if(!buffer_out11)
					K11= 2'h0;
				if(!buffer_out12)
					K12= 2'h0;
				if(!buffer_out13)
					K13= 2'h0;
				if(!buffer_out20)
					K20= 2'h0;
				if(!buffer_out21)
					K21= 2'h0;
				if(!buffer_out22)
					K22= 2'h0;
				if(!buffer_out23)
					K23= 2'h0;
				if(!buffer_out30)
					K30= 2'h0;
				if(!buffer_out31)
					K31= 2'h0;
				if(!buffer_out32)
					K32= 2'h0;
				if(!buffer_out33)
					K33= 2'h0;
				#20;
			end
		end
always @ (posedge clk2)
    begin
			if(!(router_out00===32'b0))
					L = L + 1;
				if(!(router_out01===32'b0))
					L = L + 1;
				if(!(router_out02===32'b0))
					L = L + 1;
				if(!(router_out03===32'b0))
					L = L + 1;
				if(!(router_out10===32'b0))
					L = L + 1;
				if(!(router_out11===32'b0))
					L = L + 1;
				if(!(router_out12===32'b0))
					L = L + 1;
				if(!(router_out13===32'b0))
					L = L + 1;
				if(!(router_out20===32'b0))
					L = L + 1;
				if(!(router_out21===32'b0))
					L = L + 1;
				if(!(router_out22===32'b0))
					L = L + 1;
				if(!(router_out23===32'b0))
					L = L + 1;
				if(!(router_out30===32'b0))
					L = L + 1;
				if(!(router_out31===32'b0))
					L = L + 1;
				if(!(router_out32===32'b0))
					L = L + 1;
				if(!(router_out33===32'b0))
					L = L + 1;
		end
 initial
            begin
                #1000;
                $finish;
            end
            endmodule