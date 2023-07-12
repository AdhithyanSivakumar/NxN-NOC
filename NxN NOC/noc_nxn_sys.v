`timescale 1ns / 1ps
////////////////////////////////////////////////////////////
module noc_nxn #(parameter BUS_WIDTH = 32, parameter m = 2)
(	input [3:0] K00,
	input [3:0] K01,
	input [3:0] K02,
	input [3:0] K03,
	input [3:0] K10,
	input [3:0] K11,
	input [3:0] K12,
	input [3:0] K13,
	input [3:0] K20,
	input [3:0] K21,
	input [3:0] K22,
	input [3:0] K23,
	input [3:0] K30,
	input [3:0] K31,
	input [3:0] K32,
	input [3:0] K33,
	input buffer_in00,
	input buffer_in01,
	input buffer_in02,
	input buffer_in03,
	input buffer_in10,
	input buffer_in11,
	input buffer_in12,
	input buffer_in13,
	input buffer_in20,
	input buffer_in21,
	input buffer_in22,
	input buffer_in23,
	input buffer_in30,
	input buffer_in31,
	input buffer_in32,
	input buffer_in33,
	output buffer_out00,
	output buffer_out01,
	output buffer_out02,
	output buffer_out03,
	output buffer_out10,
	output buffer_out11,
	output buffer_out12,
	output buffer_out13,
	output buffer_out20,
	output buffer_out21,
	output buffer_out22,
	output buffer_out23,
	output buffer_out30,
	output buffer_out31,
	output buffer_out32,
	output buffer_out33,
	input clk1,
	input clk2,
	input rst,
	 input [15:0] inp_w0_00,
	 input [15:0] inp_w0_01,
	 input [15:0] inp_w0_02,
	 input [15:0] inp_w0_03,
	 input [15:0] inp_w0_10,
	 input [15:0] inp_w0_11,
	 input [15:0] inp_w0_12,
	 input [15:0] inp_w0_13,
	 input [15:0] inp_w0_20,
	 input [15:0] inp_w0_21,
	 input [15:0] inp_w0_22,
	 input [15:0] inp_w0_23,
	 input [15:0] inp_w0_30,
	 input [15:0] inp_w0_31,
	 input [15:0] inp_w0_32,
	 input [15:0] inp_w0_33,
	 input [15:0] inp_w4_00,
	 input [15:0] inp_w4_01,
	 input [15:0] inp_w4_02,
	 input [15:0] inp_w4_03,
	 input [15:0] inp_w4_10,
	 input [15:0] inp_w4_11,
	 input [15:0] inp_w4_12,
	 input [15:0] inp_w4_13,
	 input [15:0] inp_w4_20,
	 input [15:0] inp_w4_21,
	 input [15:0] inp_w4_22,
	 input [15:0] inp_w4_23,
	 input [15:0] inp_w4_30,
	 input [15:0] inp_w4_31,
	 input [15:0] inp_w4_32,
	 input [15:0] inp_w4_33,
	 input [15:0] inp_w8_00,
	 input [15:0] inp_w8_01,
	 input [15:0] inp_w8_02,
	 input [15:0] inp_w8_03,
	 input [15:0] inp_w8_10,
	 input [15:0] inp_w8_11,
	 input [15:0] inp_w8_12,
	 input [15:0] inp_w8_13,
	 input [15:0] inp_w8_20,
	 input [15:0] inp_w8_21,
	 input [15:0] inp_w8_22,
	 input [15:0] inp_w8_23,
	 input [15:0] inp_w8_30,
	 input [15:0] inp_w8_31,
	 input [15:0] inp_w8_32,
	 input [15:0] inp_w8_33,
	 input [15:0] inp_w12_00,
	 input [15:0] inp_w12_01,
	 input [15:0] inp_w12_02,
	 input [15:0] inp_w12_03,
	 input [15:0] inp_w12_10,
	 input [15:0] inp_w12_11,
	 input [15:0] inp_w12_12,
	 input [15:0] inp_w12_13,
	 input [15:0] inp_w12_20,
	 input [15:0] inp_w12_21,
	 input [15:0] inp_w12_22,
	 input [15:0] inp_w12_23,
	 input [15:0] inp_w12_30,
	 input [15:0] inp_w12_31,
	 input [15:0] inp_w12_32,
	 input [15:0] inp_w12_33,
	 input [15:0] inp_n0_00,
	 input [15:0] inp_n0_01,
	 input [15:0] inp_n0_02,
	 input [15:0] inp_n0_03,
	 input [15:0] inp_n0_10,
	 input [15:0] inp_n0_11,
	 input [15:0] inp_n0_12,
	 input [15:0] inp_n0_13,
	 input [15:0] inp_n0_20,
	 input [15:0] inp_n0_21,
	 input [15:0] inp_n0_22,
	 input [15:0] inp_n0_23,
	 input [15:0] inp_n0_30,
	 input [15:0] inp_n0_31,
	 input [15:0] inp_n0_32,
	 input [15:0] inp_n0_33,
	 input [15:0] inp_n1_00,
	 input [15:0] inp_n1_01,
	 input [15:0] inp_n1_02,
	 input [15:0] inp_n1_03,
	 input [15:0] inp_n1_10,
	 input [15:0] inp_n1_11,
	 input [15:0] inp_n1_12,
	 input [15:0] inp_n1_13,
	 input [15:0] inp_n1_20,
	 input [15:0] inp_n1_21,
	 input [15:0] inp_n1_22,
	 input [15:0] inp_n1_23,
	 input [15:0] inp_n1_30,
	 input [15:0] inp_n1_31,
	 input [15:0] inp_n1_32,
	 input [15:0] inp_n1_33,
	 input [15:0] inp_n2_00,
	 input [15:0] inp_n2_01,
	 input [15:0] inp_n2_02,
	 input [15:0] inp_n2_03,
	 input [15:0] inp_n2_10,
	 input [15:0] inp_n2_11,
	 input [15:0] inp_n2_12,
	 input [15:0] inp_n2_13,
	 input [15:0] inp_n2_20,
	 input [15:0] inp_n2_21,
	 input [15:0] inp_n2_22,
	 input [15:0] inp_n2_23,
	 input [15:0] inp_n2_30,
	 input [15:0] inp_n2_31,
	 input [15:0] inp_n2_32,
	 input [15:0] inp_n2_33,
	 input [15:0] inp_n3_00,
	 input [15:0] inp_n3_01,
	 input [15:0] inp_n3_02,
	 input [15:0] inp_n3_03,
	 input [15:0] inp_n3_10,
	 input [15:0] inp_n3_11,
	 input [15:0] inp_n3_12,
	 input [15:0] inp_n3_13,
	 input [15:0] inp_n3_20,
	 input [15:0] inp_n3_21,
	 input [15:0] inp_n3_22,
	 input [15:0] inp_n3_23,
	 input [15:0] inp_n3_30,
	 input [15:0] inp_n3_31,
	 input [15:0] inp_n3_32,
	 input [15:0] inp_n3_33,
	output [BUS_WIDTH-1:0] router_out00,
	output [BUS_WIDTH-1:0] router_out01,
	output [BUS_WIDTH-1:0] router_out02,
	output [BUS_WIDTH-1:0] router_out03,
	output [BUS_WIDTH-1:0] router_out10,
	output [BUS_WIDTH-1:0] router_out11,
	output [BUS_WIDTH-1:0] router_out12,
	output [BUS_WIDTH-1:0] router_out13,
	output [BUS_WIDTH-1:0] router_out20,
	output [BUS_WIDTH-1:0] router_out21,
	output [BUS_WIDTH-1:0] router_out22,
	output [BUS_WIDTH-1:0] router_out23,
	output [BUS_WIDTH-1:0] router_out30,
	output [BUS_WIDTH-1:0] router_out31,
	output [BUS_WIDTH-1:0] router_out32,
	output [BUS_WIDTH-1:0] router_out33
);

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
	wire [BUS_WIDTH-1:0] int1_NS00;
	wire [BUS_WIDTH-1:0] int2_NS00;
	wire bf1_NS00;
	wire bf2_NS00;
	wire [BUS_WIDTH-1:0] int1_NS10;
	wire [BUS_WIDTH-1:0] int2_NS10;
	wire bf1_NS10;
	wire bf2_NS10;
	wire [BUS_WIDTH-1:0] int1_NS20;
	wire [BUS_WIDTH-1:0] int2_NS20;
	wire bf1_NS20;
	wire bf2_NS20;
	wire [BUS_WIDTH-1:0] int1_NS30;
	wire [BUS_WIDTH-1:0] int2_NS30;
	wire bf1_NS30;
	wire bf2_NS30;
	wire [BUS_WIDTH-1:0] int1_NS01;
	wire [BUS_WIDTH-1:0] int2_NS01;
	wire bf1_NS01;
	wire bf2_NS01;
	wire [BUS_WIDTH-1:0] int1_NS11;
	wire [BUS_WIDTH-1:0] int2_NS11;
	wire bf1_NS11;
	wire bf2_NS11;
	wire [BUS_WIDTH-1:0] int1_NS21;
	wire [BUS_WIDTH-1:0] int2_NS21;
	wire bf1_NS21;
	wire bf2_NS21;
	wire [BUS_WIDTH-1:0] int1_NS31;
	wire [BUS_WIDTH-1:0] int2_NS31;
	wire bf1_NS31;
	wire bf2_NS31;
	wire [BUS_WIDTH-1:0] int1_NS02;
	wire [BUS_WIDTH-1:0] int2_NS02;
	wire bf1_NS02;
	wire bf2_NS02;
	wire [BUS_WIDTH-1:0] int1_NS12;
	wire [BUS_WIDTH-1:0] int2_NS12;
	wire bf1_NS12;
	wire bf2_NS12;
	wire [BUS_WIDTH-1:0] int1_NS22;
	wire [BUS_WIDTH-1:0] int2_NS22;
	wire bf1_NS22;
	wire bf2_NS22;
	wire [BUS_WIDTH-1:0] int1_NS32;
	wire [BUS_WIDTH-1:0] int2_NS32;
	wire bf1_NS32;
	wire bf2_NS32;
	wire [BUS_WIDTH-1:0] int1_NS03;
	wire [BUS_WIDTH-1:0] int2_NS03;
	wire bf1_NS03;
	wire bf2_NS03;
	wire [BUS_WIDTH-1:0] int1_NS13;
	wire [BUS_WIDTH-1:0] int2_NS13;
	wire bf1_NS13;
	wire bf2_NS13;
	wire [BUS_WIDTH-1:0] int1_NS23;
	wire [BUS_WIDTH-1:0] int2_NS23;
	wire bf1_NS23;
	wire bf2_NS23;
	wire [BUS_WIDTH-1:0] int1_NS33;
	wire [BUS_WIDTH-1:0] int2_NS33;
	wire bf1_NS33;
	wire bf2_NS33;
	wire [BUS_WIDTH-1:0] int1_NS04;
	wire [BUS_WIDTH-1:0] int2_NS04;
	wire bf1_NS04;
	wire bf2_NS04;
	wire [BUS_WIDTH-1:0] int1_NS14;
	wire [BUS_WIDTH-1:0] int2_NS14;
	wire bf1_NS14;
	wire bf2_NS14;
	wire [BUS_WIDTH-1:0] int1_NS24;
	wire [BUS_WIDTH-1:0] int2_NS24;
	wire bf1_NS24;
	wire bf2_NS24;
	wire [BUS_WIDTH-1:0] int1_NS34;
	wire [BUS_WIDTH-1:0] int2_NS34;
	wire bf1_NS34;
	wire bf2_NS34;
	wire [BUS_WIDTH-1:0] int1_WE00;
	wire [BUS_WIDTH-1:0] int2_WE00;
	wire bf1_WE00;
	wire bf2_WE00;
	wire [BUS_WIDTH-1:0] int1_WE10;
	wire [BUS_WIDTH-1:0] int2_WE10;
	wire bf1_WE10;
	wire bf2_WE10;
	wire [BUS_WIDTH-1:0] int1_WE20;
	wire [BUS_WIDTH-1:0] int2_WE20;
	wire bf1_WE20;
	wire bf2_WE20;
	wire [BUS_WIDTH-1:0] int1_WE30;
	wire [BUS_WIDTH-1:0] int2_WE30;
	wire bf1_WE30;
	wire bf2_WE30;
	wire [BUS_WIDTH-1:0] int1_WE01;
	wire [BUS_WIDTH-1:0] int2_WE01;
	wire bf1_WE01;
	wire bf2_WE01;
	wire [BUS_WIDTH-1:0] int1_WE11;
	wire [BUS_WIDTH-1:0] int2_WE11;
	wire bf1_WE11;
	wire bf2_WE11;
	wire [BUS_WIDTH-1:0] int1_WE21;
	wire [BUS_WIDTH-1:0] int2_WE21;
	wire bf1_WE21;
	wire bf2_WE21;
	wire [BUS_WIDTH-1:0] int1_WE31;
	wire [BUS_WIDTH-1:0] int2_WE31;
	wire bf1_WE31;
	wire bf2_WE31;
	wire [BUS_WIDTH-1:0] int1_WE02;
	wire [BUS_WIDTH-1:0] int2_WE02;
	wire bf1_WE02;
	wire bf2_WE02;
	wire [BUS_WIDTH-1:0] int1_WE12;
	wire [BUS_WIDTH-1:0] int2_WE12;
	wire bf1_WE12;
	wire bf2_WE12;
	wire [BUS_WIDTH-1:0] int1_WE22;
	wire [BUS_WIDTH-1:0] int2_WE22;
	wire bf1_WE22;
	wire bf2_WE22;
	wire [BUS_WIDTH-1:0] int1_WE32;
	wire [BUS_WIDTH-1:0] int2_WE32;
	wire bf1_WE32;
	wire bf2_WE32;
	wire [BUS_WIDTH-1:0] int1_WE03;
	wire [BUS_WIDTH-1:0] int2_WE03;
	wire bf1_WE03;
	wire bf2_WE03;
	wire [BUS_WIDTH-1:0] int1_WE13;
	wire [BUS_WIDTH-1:0] int2_WE13;
	wire bf1_WE13;
	wire bf2_WE13;
	wire [BUS_WIDTH-1:0] int1_WE23;
	wire [BUS_WIDTH-1:0] int2_WE23;
	wire bf1_WE23;
	wire bf2_WE23;
	wire [BUS_WIDTH-1:0] int1_WE33;
	wire [BUS_WIDTH-1:0] int2_WE33;
	wire bf1_WE33;
	wire bf2_WE33;
	wire [BUS_WIDTH-1:0] int1_WE04;
	wire [BUS_WIDTH-1:0] int2_WE04;
	wire bf1_WE04;
	wire bf2_WE04;
	wire [BUS_WIDTH-1:0] int1_WE14;
	wire [BUS_WIDTH-1:0] int2_WE14;
	wire bf1_WE14;
	wire bf2_WE14;
	wire [BUS_WIDTH-1:0] int1_WE24;
	wire [BUS_WIDTH-1:0] int2_WE24;
	wire bf1_WE24;
	wire bf2_WE24;
	wire [BUS_WIDTH-1:0] int1_WE34;
	wire [BUS_WIDTH-1:0] int2_WE34;
	wire bf1_WE34;
	wire bf2_WE34;
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
	wire [BUS_WIDTH-5:0] sum_00;
	wire [BUS_WIDTH-5:0] sum_01;
	wire [BUS_WIDTH-5:0] sum_02;
	wire [BUS_WIDTH-5:0] sum_03;
	wire [BUS_WIDTH-5:0] sum_10;
	wire [BUS_WIDTH-5:0] sum_11;
	wire [BUS_WIDTH-5:0] sum_12;
	wire [BUS_WIDTH-5:0] sum_13;
	wire [BUS_WIDTH-5:0] sum_20;
	wire [BUS_WIDTH-5:0] sum_21;
	wire [BUS_WIDTH-5:0] sum_22;
	wire [BUS_WIDTH-5:0] sum_23;
	wire [BUS_WIDTH-5:0] sum_30;
	wire [BUS_WIDTH-5:0] sum_31;
	wire [BUS_WIDTH-5:0] sum_32;
	wire [BUS_WIDTH-5:0] sum_33;
	sys s00	 (inp_w0_00	 , inp_w4_00	 , inp_w8_00	 , inp_w12_00	 , inp_n0_00	 , inp_n1_00	 , inp_n2_00	 , inp_n3_00	 , result_out0_00	 , result_out1_00	 , result_out2_00	 , result_out3_00	 , result_out4_00	 , result_out5_00	 , result_out6_00	 , result_out7_00	 , result_out8_00	 , result_out9_00	 , result_out10_00	 , result_out11_00	 , result_out12_00	 , result_out13_00	 , result_out14_00	 , result_out15_00	 , done_00	 , clk	 , rst);
	sys s01	 (inp_w0_01	 , inp_w4_01	 , inp_w8_01	 , inp_w12_01	 , inp_n0_01	 , inp_n1_01	 , inp_n2_01	 , inp_n3_01	 , result_out0_01	 , result_out1_01	 , result_out2_01	 , result_out3_01	 , result_out4_01	 , result_out5_01	 , result_out6_01	 , result_out7_01	 , result_out8_01	 , result_out9_01	 , result_out10_01	 , result_out11_01	 , result_out12_01	 , result_out13_01	 , result_out14_01	 , result_out15_01	 , done_01	 , clk	 , rst);
	sys s02	 (inp_w0_02	 , inp_w4_02	 , inp_w8_02	 , inp_w12_02	 , inp_n0_02	 , inp_n1_02	 , inp_n2_02	 , inp_n3_02	 , result_out0_02	 , result_out1_02	 , result_out2_02	 , result_out3_02	 , result_out4_02	 , result_out5_02	 , result_out6_02	 , result_out7_02	 , result_out8_02	 , result_out9_02	 , result_out10_02	 , result_out11_02	 , result_out12_02	 , result_out13_02	 , result_out14_02	 , result_out15_02	 , done_02	 , clk	 , rst);
	sys s03	 (inp_w0_03	 , inp_w4_03	 , inp_w8_03	 , inp_w12_03	 , inp_n0_03	 , inp_n1_03	 , inp_n2_03	 , inp_n3_03	 , result_out0_03	 , result_out1_03	 , result_out2_03	 , result_out3_03	 , result_out4_03	 , result_out5_03	 , result_out6_03	 , result_out7_03	 , result_out8_03	 , result_out9_03	 , result_out10_03	 , result_out11_03	 , result_out12_03	 , result_out13_03	 , result_out14_03	 , result_out15_03	 , done_03	 , clk	 , rst);
	sys s10	 (inp_w0_10	 , inp_w4_10	 , inp_w8_10	 , inp_w12_10	 , inp_n0_10	 , inp_n1_10	 , inp_n2_10	 , inp_n3_10	 , result_out0_10	 , result_out1_10	 , result_out2_10	 , result_out3_10	 , result_out4_10	 , result_out5_10	 , result_out6_10	 , result_out7_10	 , result_out8_10	 , result_out9_10	 , result_out10_10	 , result_out11_10	 , result_out12_10	 , result_out13_10	 , result_out14_10	 , result_out15_10	 , done_10	 , clk	 , rst);
	sys s11	 (inp_w0_11	 , inp_w4_11	 , inp_w8_11	 , inp_w12_11	 , inp_n0_11	 , inp_n1_11	 , inp_n2_11	 , inp_n3_11	 , result_out0_11	 , result_out1_11	 , result_out2_11	 , result_out3_11	 , result_out4_11	 , result_out5_11	 , result_out6_11	 , result_out7_11	 , result_out8_11	 , result_out9_11	 , result_out10_11	 , result_out11_11	 , result_out12_11	 , result_out13_11	 , result_out14_11	 , result_out15_11	 , done_11	 , clk	 , rst);
	sys s12	 (inp_w0_12	 , inp_w4_12	 , inp_w8_12	 , inp_w12_12	 , inp_n0_12	 , inp_n1_12	 , inp_n2_12	 , inp_n3_12	 , result_out0_12	 , result_out1_12	 , result_out2_12	 , result_out3_12	 , result_out4_12	 , result_out5_12	 , result_out6_12	 , result_out7_12	 , result_out8_12	 , result_out9_12	 , result_out10_12	 , result_out11_12	 , result_out12_12	 , result_out13_12	 , result_out14_12	 , result_out15_12	 , done_12	 , clk	 , rst);
	sys s13	 (inp_w0_13	 , inp_w4_13	 , inp_w8_13	 , inp_w12_13	 , inp_n0_13	 , inp_n1_13	 , inp_n2_13	 , inp_n3_13	 , result_out0_13	 , result_out1_13	 , result_out2_13	 , result_out3_13	 , result_out4_13	 , result_out5_13	 , result_out6_13	 , result_out7_13	 , result_out8_13	 , result_out9_13	 , result_out10_13	 , result_out11_13	 , result_out12_13	 , result_out13_13	 , result_out14_13	 , result_out15_13	 , done_13	 , clk	 , rst);
	sys s20	 (inp_w0_20	 , inp_w4_20	 , inp_w8_20	 , inp_w12_20	 , inp_n0_20	 , inp_n1_20	 , inp_n2_20	 , inp_n3_20	 , result_out0_20	 , result_out1_20	 , result_out2_20	 , result_out3_20	 , result_out4_20	 , result_out5_20	 , result_out6_20	 , result_out7_20	 , result_out8_20	 , result_out9_20	 , result_out10_20	 , result_out11_20	 , result_out12_20	 , result_out13_20	 , result_out14_20	 , result_out15_20	 , done_20	 , clk	 , rst);
	sys s21	 (inp_w0_21	 , inp_w4_21	 , inp_w8_21	 , inp_w12_21	 , inp_n0_21	 , inp_n1_21	 , inp_n2_21	 , inp_n3_21	 , result_out0_21	 , result_out1_21	 , result_out2_21	 , result_out3_21	 , result_out4_21	 , result_out5_21	 , result_out6_21	 , result_out7_21	 , result_out8_21	 , result_out9_21	 , result_out10_21	 , result_out11_21	 , result_out12_21	 , result_out13_21	 , result_out14_21	 , result_out15_21	 , done_21	 , clk	 , rst);
	sys s22	 (inp_w0_22	 , inp_w4_22	 , inp_w8_22	 , inp_w12_22	 , inp_n0_22	 , inp_n1_22	 , inp_n2_22	 , inp_n3_22	 , result_out0_22	 , result_out1_22	 , result_out2_22	 , result_out3_22	 , result_out4_22	 , result_out5_22	 , result_out6_22	 , result_out7_22	 , result_out8_22	 , result_out9_22	 , result_out10_22	 , result_out11_22	 , result_out12_22	 , result_out13_22	 , result_out14_22	 , result_out15_22	 , done_22	 , clk	 , rst);
	sys s23	 (inp_w0_23	 , inp_w4_23	 , inp_w8_23	 , inp_w12_23	 , inp_n0_23	 , inp_n1_23	 , inp_n2_23	 , inp_n3_23	 , result_out0_23	 , result_out1_23	 , result_out2_23	 , result_out3_23	 , result_out4_23	 , result_out5_23	 , result_out6_23	 , result_out7_23	 , result_out8_23	 , result_out9_23	 , result_out10_23	 , result_out11_23	 , result_out12_23	 , result_out13_23	 , result_out14_23	 , result_out15_23	 , done_23	 , clk	 , rst);
	sys s30	 (inp_w0_30	 , inp_w4_30	 , inp_w8_30	 , inp_w12_30	 , inp_n0_30	 , inp_n1_30	 , inp_n2_30	 , inp_n3_30	 , result_out0_30	 , result_out1_30	 , result_out2_30	 , result_out3_30	 , result_out4_30	 , result_out5_30	 , result_out6_30	 , result_out7_30	 , result_out8_30	 , result_out9_30	 , result_out10_30	 , result_out11_30	 , result_out12_30	 , result_out13_30	 , result_out14_30	 , result_out15_30	 , done_30	 , clk	 , rst);
	sys s31	 (inp_w0_31	 , inp_w4_31	 , inp_w8_31	 , inp_w12_31	 , inp_n0_31	 , inp_n1_31	 , inp_n2_31	 , inp_n3_31	 , result_out0_31	 , result_out1_31	 , result_out2_31	 , result_out3_31	 , result_out4_31	 , result_out5_31	 , result_out6_31	 , result_out7_31	 , result_out8_31	 , result_out9_31	 , result_out10_31	 , result_out11_31	 , result_out12_31	 , result_out13_31	 , result_out14_31	 , result_out15_31	 , done_31	 , clk	 , rst);
	sys s32	 (inp_w0_32	 , inp_w4_32	 , inp_w8_32	 , inp_w12_32	 , inp_n0_32	 , inp_n1_32	 , inp_n2_32	 , inp_n3_32	 , result_out0_32	 , result_out1_32	 , result_out2_32	 , result_out3_32	 , result_out4_32	 , result_out5_32	 , result_out6_32	 , result_out7_32	 , result_out8_32	 , result_out9_32	 , result_out10_32	 , result_out11_32	 , result_out12_32	 , result_out13_32	 , result_out14_32	 , result_out15_32	 , done_32	 , clk	 , rst);
	sys s33	 (inp_w0_33	 , inp_w4_33	 , inp_w8_33	 , inp_w12_33	 , inp_n0_33	 , inp_n1_33	 , inp_n2_33	 , inp_n3_33	 , result_out0_33	 , result_out1_33	 , result_out2_33	 , result_out3_33	 , result_out4_33	 , result_out5_33	 , result_out6_33	 , result_out7_33	 , result_out8_33	 , result_out9_33	 , result_out10_33	 , result_out11_33	 , result_out12_33	 , result_out13_33	 , result_out14_33	 , result_out15_33	 , done_33	 , clk	 , rst);
	adder a00	  (result_out0_00	 , result_out1_00	 , result_out2_00	 , result_out3_00	 , result_out4_00	 , result_out5_00	 , result_out6_00	 , result_out7_00	 , result_out8_00	 , result_out9_00	 , result_out10_00	 , result_out11_00	 , result_out12_00	 , result_out13_00	 , result_out14_00	 , result_out15_00	 , clk1	 , sum_00);
	adder a01	  (result_out0_01	 , result_out1_01	 , result_out2_01	 , result_out3_01	 , result_out4_01	 , result_out5_01	 , result_out6_01	 , result_out7_01	 , result_out8_01	 , result_out9_01	 , result_out10_01	 , result_out11_01	 , result_out12_01	 , result_out13_01	 , result_out14_01	 , result_out15_01	 , clk1	 , sum_01);
	adder a02	  (result_out0_02	 , result_out1_02	 , result_out2_02	 , result_out3_02	 , result_out4_02	 , result_out5_02	 , result_out6_02	 , result_out7_02	 , result_out8_02	 , result_out9_02	 , result_out10_02	 , result_out11_02	 , result_out12_02	 , result_out13_02	 , result_out14_02	 , result_out15_02	 , clk1	 , sum_02);
	adder a03	  (result_out0_03	 , result_out1_03	 , result_out2_03	 , result_out3_03	 , result_out4_03	 , result_out5_03	 , result_out6_03	 , result_out7_03	 , result_out8_03	 , result_out9_03	 , result_out10_03	 , result_out11_03	 , result_out12_03	 , result_out13_03	 , result_out14_03	 , result_out15_03	 , clk1	 , sum_03);
	adder a10	  (result_out0_10	 , result_out1_10	 , result_out2_10	 , result_out3_10	 , result_out4_10	 , result_out5_10	 , result_out6_10	 , result_out7_10	 , result_out8_10	 , result_out9_10	 , result_out10_10	 , result_out11_10	 , result_out12_10	 , result_out13_10	 , result_out14_10	 , result_out15_10	 , clk1	 , sum_10);
	adder a11	  (result_out0_11	 , result_out1_11	 , result_out2_11	 , result_out3_11	 , result_out4_11	 , result_out5_11	 , result_out6_11	 , result_out7_11	 , result_out8_11	 , result_out9_11	 , result_out10_11	 , result_out11_11	 , result_out12_11	 , result_out13_11	 , result_out14_11	 , result_out15_11	 , clk1	 , sum_11);
	adder a12	  (result_out0_12	 , result_out1_12	 , result_out2_12	 , result_out3_12	 , result_out4_12	 , result_out5_12	 , result_out6_12	 , result_out7_12	 , result_out8_12	 , result_out9_12	 , result_out10_12	 , result_out11_12	 , result_out12_12	 , result_out13_12	 , result_out14_12	 , result_out15_12	 , clk1	 , sum_12);
	adder a13	  (result_out0_13	 , result_out1_13	 , result_out2_13	 , result_out3_13	 , result_out4_13	 , result_out5_13	 , result_out6_13	 , result_out7_13	 , result_out8_13	 , result_out9_13	 , result_out10_13	 , result_out11_13	 , result_out12_13	 , result_out13_13	 , result_out14_13	 , result_out15_13	 , clk1	 , sum_13);
	adder a20	  (result_out0_20	 , result_out1_20	 , result_out2_20	 , result_out3_20	 , result_out4_20	 , result_out5_20	 , result_out6_20	 , result_out7_20	 , result_out8_20	 , result_out9_20	 , result_out10_20	 , result_out11_20	 , result_out12_20	 , result_out13_20	 , result_out14_20	 , result_out15_20	 , clk1	 , sum_20);
	adder a21	  (result_out0_21	 , result_out1_21	 , result_out2_21	 , result_out3_21	 , result_out4_21	 , result_out5_21	 , result_out6_21	 , result_out7_21	 , result_out8_21	 , result_out9_21	 , result_out10_21	 , result_out11_21	 , result_out12_21	 , result_out13_21	 , result_out14_21	 , result_out15_21	 , clk1	 , sum_21);
	adder a22	  (result_out0_22	 , result_out1_22	 , result_out2_22	 , result_out3_22	 , result_out4_22	 , result_out5_22	 , result_out6_22	 , result_out7_22	 , result_out8_22	 , result_out9_22	 , result_out10_22	 , result_out11_22	 , result_out12_22	 , result_out13_22	 , result_out14_22	 , result_out15_22	 , clk1	 , sum_22);
	adder a23	  (result_out0_23	 , result_out1_23	 , result_out2_23	 , result_out3_23	 , result_out4_23	 , result_out5_23	 , result_out6_23	 , result_out7_23	 , result_out8_23	 , result_out9_23	 , result_out10_23	 , result_out11_23	 , result_out12_23	 , result_out13_23	 , result_out14_23	 , result_out15_23	 , clk1	 , sum_23);
	adder a30	  (result_out0_30	 , result_out1_30	 , result_out2_30	 , result_out3_30	 , result_out4_30	 , result_out5_30	 , result_out6_30	 , result_out7_30	 , result_out8_30	 , result_out9_30	 , result_out10_30	 , result_out11_30	 , result_out12_30	 , result_out13_30	 , result_out14_30	 , result_out15_30	 , clk1	 , sum_30);
	adder a31	  (result_out0_31	 , result_out1_31	 , result_out2_31	 , result_out3_31	 , result_out4_31	 , result_out5_31	 , result_out6_31	 , result_out7_31	 , result_out8_31	 , result_out9_31	 , result_out10_31	 , result_out11_31	 , result_out12_31	 , result_out13_31	 , result_out14_31	 , result_out15_31	 , clk1	 , sum_31);
	adder a32	  (result_out0_32	 , result_out1_32	 , result_out2_32	 , result_out3_32	 , result_out4_32	 , result_out5_32	 , result_out6_32	 , result_out7_32	 , result_out8_32	 , result_out9_32	 , result_out10_32	 , result_out11_32	 , result_out12_32	 , result_out13_32	 , result_out14_32	 , result_out15_32	 , clk1	 , sum_32);
	adder a33	  (result_out0_33	 , result_out1_33	 , result_out2_33	 , result_out3_33	 , result_out4_33	 , result_out5_33	 , result_out6_33	 , result_out7_33	 , result_out8_33	 , result_out9_33	 , result_out10_33	 , result_out11_33	 , result_out12_33	 , result_out13_33	 , result_out14_33	 , result_out15_33	 , clk1	 , sum_33);
	assign router_in00 = {K00, sum_00};
	assign router_in01 = {K01, sum_01};
	assign router_in02 = {K02, sum_02};
	assign router_in03 = {K03, sum_03};
	assign router_in10 = {K10, sum_10};
	assign router_in11 = {K11, sum_11};
	assign router_in12 = {K12, sum_12};
	assign router_in13 = {K13, sum_13};
	assign router_in20 = {K20, sum_20};
	assign router_in21 = {K21, sum_21};
	assign router_in22 = {K22, sum_22};
	assign router_in23 = {K23, sum_23};
	assign router_in30 = {K30, sum_30};
	assign router_in31 = {K31, sum_31};
	assign router_in32 = {K32, sum_32};
	assign router_in33 = {K33, sum_33};

router #(.LOC_Y(2'd0),.LOC_X(2'd0),.NOC_SIZE(4)) inst00
	(.north_in (int2_NS00),
	.south_in (int2_NS01),
	.east_in (int2_WE01),
	.west_in (int2_WE00),
	.local_in (router_in00),
	.bf_inp_north (bf2_NS00),
	.bf_inp_south (bf2_NS01),
	.bf_inp_east (bf2_WE01),
	.bf_inp_west (bf2_WE00),
	.bf_inp_local (buffer_in00),
	.bf_op_north (bf1_NS00),
	.bf_op_south (bf1_NS01),
	.bf_op_east (bf1_WE01),
	.bf_op_west (bf1_WE00),
	.bf_op_local (buffer_out00),
	.north_out (int1_NS00),
	.south_out (int1_NS01),
	.east_out (int1_WE01),
	.west_out (int1_WE00),
	.local_out (router_out00),
	.clk1 (clk1),
	.clk2 (clk2),
	.rst (rst));

router #(.LOC_Y(2'd0),.LOC_X(2'd1),.NOC_SIZE(4)) inst01
	(.north_in (int1_NS10),
	.south_in (int1_NS11),
	.east_in (int1_WE02),
	.west_in (int1_WE01),
	.local_in (router_in01),
	.bf_inp_north (bf1_NS10),
	.bf_inp_south (bf1_NS11),
	.bf_inp_east (bf1_WE02),
	.bf_inp_west (bf1_WE01),
	.bf_inp_local (buffer_in01),
	.bf_op_north (bf2_NS10),
	.bf_op_south (bf2_NS11),
	.bf_op_east (bf2_WE02),
	.bf_op_west (bf2_WE01),
	.bf_op_local (buffer_out01),
	.north_out (int2_NS10),
	.south_out (int2_NS11),
	.east_out (int2_WE02),
	.west_out (int2_WE01),
	.local_out (router_out01),
	.clk1 (clk1),
	.clk2 (clk2),
	.rst (rst));

router #(.LOC_Y(2'd0),.LOC_X(2'd2),.NOC_SIZE(4)) inst02
	(.north_in (int2_NS20),
	.south_in (int2_NS21),
	.east_in (int2_WE03),
	.west_in (int2_WE02),
	.local_in (router_in02),
	.bf_inp_north (bf2_NS20),
	.bf_inp_south (bf2_NS21),
	.bf_inp_east (bf2_WE03),
	.bf_inp_west (bf2_WE02),
	.bf_inp_local (buffer_in02),
	.bf_op_north (bf1_NS20),
	.bf_op_south (bf1_NS21),
	.bf_op_east (bf1_WE03),
	.bf_op_west (bf1_WE02),
	.bf_op_local (buffer_out02),
	.north_out (int1_NS20),
	.south_out (int1_NS21),
	.east_out (int1_WE03),
	.west_out (int1_WE02),
	.local_out (router_out02),
	.clk1 (clk1),
	.clk2 (clk2),
	.rst (rst));

router #(.LOC_Y(2'd0),.LOC_X(2'd3),.NOC_SIZE(4)) inst03
	(.north_in (int1_NS30),
	.south_in (int1_NS31),
	.east_in (int1_WE04),
	.west_in (int1_WE03),
	.local_in (router_in03),
	.bf_inp_north (bf1_NS30),
	.bf_inp_south (bf1_NS31),
	.bf_inp_east (bf1_WE04),
	.bf_inp_west (bf1_WE03),
	.bf_inp_local (buffer_in03),
	.bf_op_north (bf2_NS30),
	.bf_op_south (bf2_NS31),
	.bf_op_east (bf2_WE04),
	.bf_op_west (bf2_WE03),
	.bf_op_local (buffer_out03),
	.north_out (int2_NS30),
	.south_out (int2_NS31),
	.east_out (int2_WE04),
	.west_out (int2_WE03),
	.local_out (router_out03),
	.clk1 (clk1),
	.clk2 (clk2),
	.rst (rst));

router #(.LOC_Y(2'd1),.LOC_X(2'd0),.NOC_SIZE(4)) inst10
	(.north_in (int1_NS01),
	.south_in (int1_NS02),
	.east_in (int1_WE11),
	.west_in (int1_WE10),
	.local_in (router_in10),
	.bf_inp_north (bf1_NS01),
	.bf_inp_south (bf1_NS02),
	.bf_inp_east (bf1_WE11),
	.bf_inp_west (bf1_WE10),
	.bf_inp_local (buffer_in10),
	.bf_op_north (bf2_NS01),
	.bf_op_south (bf2_NS02),
	.bf_op_east (bf2_WE11),
	.bf_op_west (bf2_WE10),
	.bf_op_local (buffer_out10),
	.north_out (int2_NS01),
	.south_out (int2_NS02),
	.east_out (int2_WE11),
	.west_out (int2_WE10),
	.local_out (router_out10),
	.clk1 (clk1),
	.clk2 (clk2),
	.rst (rst));

router #(.LOC_Y(2'd1),.LOC_X(2'd1),.NOC_SIZE(4)) inst11
	(.north_in (int2_NS11),
	.south_in (int2_NS12),
	.east_in (int2_WE12),
	.west_in (int2_WE11),
	.local_in (router_in11),
	.bf_inp_north (bf2_NS11),
	.bf_inp_south (bf2_NS12),
	.bf_inp_east (bf2_WE12),
	.bf_inp_west (bf2_WE11),
	.bf_inp_local (buffer_in11),
	.bf_op_north (bf1_NS11),
	.bf_op_south (bf1_NS12),
	.bf_op_east (bf1_WE12),
	.bf_op_west (bf1_WE11),
	.bf_op_local (buffer_out11),
	.north_out (int1_NS11),
	.south_out (int1_NS12),
	.east_out (int1_WE12),
	.west_out (int1_WE11),
	.local_out (router_out11),
	.clk1 (clk1),
	.clk2 (clk2),
	.rst (rst));

router #(.LOC_Y(2'd1),.LOC_X(2'd2),.NOC_SIZE(4)) inst12
	(.north_in (int1_NS21),
	.south_in (int1_NS22),
	.east_in (int1_WE13),
	.west_in (int1_WE12),
	.local_in (router_in12),
	.bf_inp_north (bf1_NS21),
	.bf_inp_south (bf1_NS22),
	.bf_inp_east (bf1_WE13),
	.bf_inp_west (bf1_WE12),
	.bf_inp_local (buffer_in12),
	.bf_op_north (bf2_NS21),
	.bf_op_south (bf2_NS22),
	.bf_op_east (bf2_WE13),
	.bf_op_west (bf2_WE12),
	.bf_op_local (buffer_out12),
	.north_out (int2_NS21),
	.south_out (int2_NS22),
	.east_out (int2_WE13),
	.west_out (int2_WE12),
	.local_out (router_out12),
	.clk1 (clk1),
	.clk2 (clk2),
	.rst (rst));

router #(.LOC_Y(2'd1),.LOC_X(2'd3),.NOC_SIZE(4)) inst13
	(.north_in (int2_NS31),
	.south_in (int2_NS32),
	.east_in (int2_WE14),
	.west_in (int2_WE13),
	.local_in (router_in13),
	.bf_inp_north (bf2_NS31),
	.bf_inp_south (bf2_NS32),
	.bf_inp_east (bf2_WE14),
	.bf_inp_west (bf2_WE13),
	.bf_inp_local (buffer_in13),
	.bf_op_north (bf1_NS31),
	.bf_op_south (bf1_NS32),
	.bf_op_east (bf1_WE14),
	.bf_op_west (bf1_WE13),
	.bf_op_local (buffer_out13),
	.north_out (int1_NS31),
	.south_out (int1_NS32),
	.east_out (int1_WE14),
	.west_out (int1_WE13),
	.local_out (router_out13),
	.clk1 (clk1),
	.clk2 (clk2),
	.rst (rst));

router #(.LOC_Y(2'd2),.LOC_X(2'd0),.NOC_SIZE(4)) inst20
	(.north_in (int2_NS02),
	.south_in (int2_NS03),
	.east_in (int2_WE21),
	.west_in (int2_WE20),
	.local_in (router_in20),
	.bf_inp_north (bf2_NS02),
	.bf_inp_south (bf2_NS03),
	.bf_inp_east (bf2_WE21),
	.bf_inp_west (bf2_WE20),
	.bf_inp_local (buffer_in20),
	.bf_op_north (bf1_NS02),
	.bf_op_south (bf1_NS03),
	.bf_op_east (bf1_WE21),
	.bf_op_west (bf1_WE20),
	.bf_op_local (buffer_out20),
	.north_out (int1_NS02),
	.south_out (int1_NS03),
	.east_out (int1_WE21),
	.west_out (int1_WE20),
	.local_out (router_out20),
	.clk1 (clk1),
	.clk2 (clk2),
	.rst (rst));

router #(.LOC_Y(2'd2),.LOC_X(2'd1),.NOC_SIZE(4)) inst21
	(.north_in (int1_NS12),
	.south_in (int1_NS13),
	.east_in (int1_WE22),
	.west_in (int1_WE21),
	.local_in (router_in21),
	.bf_inp_north (bf1_NS12),
	.bf_inp_south (bf1_NS13),
	.bf_inp_east (bf1_WE22),
	.bf_inp_west (bf1_WE21),
	.bf_inp_local (buffer_in21),
	.bf_op_north (bf2_NS12),
	.bf_op_south (bf2_NS13),
	.bf_op_east (bf2_WE22),
	.bf_op_west (bf2_WE21),
	.bf_op_local (buffer_out21),
	.north_out (int2_NS12),
	.south_out (int2_NS13),
	.east_out (int2_WE22),
	.west_out (int2_WE21),
	.local_out (router_out21),
	.clk1 (clk1),
	.clk2 (clk2),
	.rst (rst));

router #(.LOC_Y(2'd2),.LOC_X(2'd2),.NOC_SIZE(4)) inst22
	(.north_in (int2_NS22),
	.south_in (int2_NS23),
	.east_in (int2_WE23),
	.west_in (int2_WE22),
	.local_in (router_in22),
	.bf_inp_north (bf2_NS22),
	.bf_inp_south (bf2_NS23),
	.bf_inp_east (bf2_WE23),
	.bf_inp_west (bf2_WE22),
	.bf_inp_local (buffer_in22),
	.bf_op_north (bf1_NS22),
	.bf_op_south (bf1_NS23),
	.bf_op_east (bf1_WE23),
	.bf_op_west (bf1_WE22),
	.bf_op_local (buffer_out22),
	.north_out (int1_NS22),
	.south_out (int1_NS23),
	.east_out (int1_WE23),
	.west_out (int1_WE22),
	.local_out (router_out22),
	.clk1 (clk1),
	.clk2 (clk2),
	.rst (rst));

router #(.LOC_Y(2'd2),.LOC_X(2'd3),.NOC_SIZE(4)) inst23
	(.north_in (int1_NS32),
	.south_in (int1_NS33),
	.east_in (int1_WE24),
	.west_in (int1_WE23),
	.local_in (router_in23),
	.bf_inp_north (bf1_NS32),
	.bf_inp_south (bf1_NS33),
	.bf_inp_east (bf1_WE24),
	.bf_inp_west (bf1_WE23),
	.bf_inp_local (buffer_in23),
	.bf_op_north (bf2_NS32),
	.bf_op_south (bf2_NS33),
	.bf_op_east (bf2_WE24),
	.bf_op_west (bf2_WE23),
	.bf_op_local (buffer_out23),
	.north_out (int2_NS32),
	.south_out (int2_NS33),
	.east_out (int2_WE24),
	.west_out (int2_WE23),
	.local_out (router_out23),
	.clk1 (clk1),
	.clk2 (clk2),
	.rst (rst));

router #(.LOC_Y(2'd3),.LOC_X(2'd0),.NOC_SIZE(4)) inst30
	(.north_in (int1_NS03),
	.south_in (int1_NS04),
	.east_in (int1_WE31),
	.west_in (int1_WE30),
	.local_in (router_in30),
	.bf_inp_north (bf1_NS03),
	.bf_inp_south (bf1_NS04),
	.bf_inp_east (bf1_WE31),
	.bf_inp_west (bf1_WE30),
	.bf_inp_local (buffer_in30),
	.bf_op_north (bf2_NS03),
	.bf_op_south (bf2_NS04),
	.bf_op_east (bf2_WE31),
	.bf_op_west (bf2_WE30),
	.bf_op_local (buffer_out30),
	.north_out (int2_NS03),
	.south_out (int2_NS04),
	.east_out (int2_WE31),
	.west_out (int2_WE30),
	.local_out (router_out30),
	.clk1 (clk1),
	.clk2 (clk2),
	.rst (rst));

router #(.LOC_Y(2'd3),.LOC_X(2'd1),.NOC_SIZE(4)) inst31
	(.north_in (int2_NS13),
	.south_in (int2_NS14),
	.east_in (int2_WE32),
	.west_in (int2_WE31),
	.local_in (router_in31),
	.bf_inp_north (bf2_NS13),
	.bf_inp_south (bf2_NS14),
	.bf_inp_east (bf2_WE32),
	.bf_inp_west (bf2_WE31),
	.bf_inp_local (buffer_in31),
	.bf_op_north (bf1_NS13),
	.bf_op_south (bf1_NS14),
	.bf_op_east (bf1_WE32),
	.bf_op_west (bf1_WE31),
	.bf_op_local (buffer_out31),
	.north_out (int1_NS13),
	.south_out (int1_NS14),
	.east_out (int1_WE32),
	.west_out (int1_WE31),
	.local_out (router_out31),
	.clk1 (clk1),
	.clk2 (clk2),
	.rst (rst));

router #(.LOC_Y(2'd3),.LOC_X(2'd2),.NOC_SIZE(4)) inst32
	(.north_in (int1_NS23),
	.south_in (int1_NS24),
	.east_in (int1_WE33),
	.west_in (int1_WE32),
	.local_in (router_in32),
	.bf_inp_north (bf1_NS23),
	.bf_inp_south (bf1_NS24),
	.bf_inp_east (bf1_WE33),
	.bf_inp_west (bf1_WE32),
	.bf_inp_local (buffer_in32),
	.bf_op_north (bf2_NS23),
	.bf_op_south (bf2_NS24),
	.bf_op_east (bf2_WE33),
	.bf_op_west (bf2_WE32),
	.bf_op_local (buffer_out32),
	.north_out (int2_NS23),
	.south_out (int2_NS24),
	.east_out (int2_WE33),
	.west_out (int2_WE32),
	.local_out (router_out32),
	.clk1 (clk1),
	.clk2 (clk2),
	.rst (rst));

router #(.LOC_Y(2'd3),.LOC_X(2'd3),.NOC_SIZE(4)) inst33
	(.north_in (int2_NS33),
	.south_in (int2_NS34),
	.east_in (int2_WE34),
	.west_in (int2_WE33),
	.local_in (router_in33),
	.bf_inp_north (bf2_NS33),
	.bf_inp_south (bf2_NS34),
	.bf_inp_east (bf2_WE34),
	.bf_inp_west (bf2_WE33),
	.bf_inp_local (buffer_in33),
	.bf_op_north (bf1_NS33),
	.bf_op_south (bf1_NS34),
	.bf_op_east (bf1_WE34),
	.bf_op_west (bf1_WE33),
	.bf_op_local (buffer_out33),
	.north_out (int1_NS33),
	.south_out (int1_NS34),
	.east_out (int1_WE34),
	.west_out (int1_WE33),
	.local_out (router_out33),
	.clk1 (clk1),
	.clk2 (clk2),
	.rst (rst));

endmodule