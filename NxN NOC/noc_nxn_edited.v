`timescale 1ns / 1ps
////////////////////////////////////////////////////////////
module noc_nxn #(parameter BUS_WIDTH = 32, parameter m = 2)
(	input [7:0] A00,
	input [7:0] B00,
	input [3:0] K00,
	input [7:0] A01,
	input [7:0] B01,
	input [3:0] K01,
	input [7:0] A02,
	input [7:0] B02,
	input [3:0] K02,
	input [7:0] A03,
	input [7:0] B03,
	input [3:0] K03,
	input [7:0] A10,
	input [7:0] B10,
	input [3:0] K10,
	input [7:0] A11,
	input [7:0] B11,
	input [3:0] K11,
	input [7:0] A12,
	input [7:0] B12,
	input [3:0] K12,
	input [7:0] A13,
	input [7:0] B13,
	input [3:0] K13,
	input [7:0] A20,
	input [7:0] B20,
	input [3:0] K20,
	input [7:0] A21,
	input [7:0] B21,
	input [3:0] K21,
	input [7:0] A22,
	input [7:0] B22,
	input [3:0] K22,
	input [7:0] A23,
	input [7:0] B23,
	input [3:0] K23,
	input [7:0] A30,
	input [7:0] B30,
	input [3:0] K30,
	input [7:0] A31,
	input [7:0] B31,
	input [3:0] K31,
	input [7:0] A32,
	input [7:0] B32,
	input [3:0] K32,
	input [7:0] A33,
	input [7:0] B33,
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
	wire [BUS_WIDTH-1:0] int1_WE01;
	wire [BUS_WIDTH-1:0] int2_WE01;
	wire bf1_WE01;
	wire bf2_WE01;
	wire [BUS_WIDTH-1:0] int1_WE02;
	wire [BUS_WIDTH-1:0] int2_WE02;
	wire bf1_WE02;
	wire bf2_WE02;
	wire [BUS_WIDTH-1:0] int1_WE03;
	wire [BUS_WIDTH-1:0] int2_WE03;
	wire bf1_WE03;
	wire bf2_WE03;
	wire [BUS_WIDTH-1:0] int1_WE10;
	wire [BUS_WIDTH-1:0] int2_WE10;
	wire bf1_WE10;
	wire bf2_WE10;
	wire [BUS_WIDTH-1:0] int1_WE11;
	wire [BUS_WIDTH-1:0] int2_WE11;
	wire bf1_WE11;
	wire bf2_WE11;
	wire [BUS_WIDTH-1:0] int1_WE12;
	wire [BUS_WIDTH-1:0] int2_WE12;
	wire bf1_WE12;
	wire bf2_WE12;
	wire [BUS_WIDTH-1:0] int1_WE13;
	wire [BUS_WIDTH-1:0] int2_WE13;
	wire bf1_WE13;
	wire bf2_WE13;
	wire [BUS_WIDTH-1:0] int1_WE20;
	wire [BUS_WIDTH-1:0] int2_WE20;
	wire bf1_WE20;
	wire bf2_WE20;
	wire [BUS_WIDTH-1:0] int1_WE21;
	wire [BUS_WIDTH-1:0] int2_WE21;
	wire bf1_WE21;
	wire bf2_WE21;
	wire [BUS_WIDTH-1:0] int1_WE22;
	wire [BUS_WIDTH-1:0] int2_WE22;
	wire bf1_WE22;
	wire bf2_WE22;
	wire [BUS_WIDTH-1:0] int1_WE23;
	wire [BUS_WIDTH-1:0] int2_WE23;
	wire bf1_WE23;
	wire bf2_WE23;
	wire [BUS_WIDTH-1:0] int1_WE30;
	wire [BUS_WIDTH-1:0] int2_WE30;
	wire bf1_WE30;
	wire bf2_WE30;
	wire [BUS_WIDTH-1:0] int1_WE31;
	wire [BUS_WIDTH-1:0] int2_WE31;
	wire bf1_WE31;
	wire bf2_WE31;
	wire [BUS_WIDTH-1:0] int1_WE32;
	wire [BUS_WIDTH-1:0] int2_WE32;
	wire bf1_WE32;
	wire bf2_WE32;
	wire [BUS_WIDTH-1:0] int1_WE33;
	wire [BUS_WIDTH-1:0] int2_WE33;
	wire bf1_WE33;
	wire bf2_WE33;
	wire [BUS_WIDTH-1:0] int1_WE40;
	wire [BUS_WIDTH-1:0] int2_WE40;
	wire bf1_WE40;
	wire bf2_WE40;
	wire [BUS_WIDTH-1:0] int1_WE41;
	wire [BUS_WIDTH-1:0] int2_WE41;
	wire bf1_WE41;
	wire bf2_WE41;
	wire [BUS_WIDTH-1:0] int1_WE42;
	wire [BUS_WIDTH-1:0] int2_WE42;
	wire bf1_WE42;
	wire bf2_WE42;
	wire [BUS_WIDTH-1:0] int1_WE43;
	wire [BUS_WIDTH-1:0] int2_WE43;
	wire bf1_WE43;
	wire bf2_WE43;
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
	wire [BUS_WIDTH-5:0] z00;
	wire [BUS_WIDTH-5:0] z01;
	wire [BUS_WIDTH-5:0] z02;
	wire [BUS_WIDTH-5:0] z03;
	wire [BUS_WIDTH-5:0] z10;
	wire [BUS_WIDTH-5:0] z11;
	wire [BUS_WIDTH-5:0] z12;
	wire [BUS_WIDTH-5:0] z13;
	wire [BUS_WIDTH-5:0] z20;
	wire [BUS_WIDTH-5:0] z21;
	wire [BUS_WIDTH-5:0] z22;
	wire [BUS_WIDTH-5:0] z23;
	wire [BUS_WIDTH-5:0] z30;
	wire [BUS_WIDTH-5:0] z31;
	wire [BUS_WIDTH-5:0] z32;
	wire [BUS_WIDTH-5:0] z33;
	multiplier m00	 (A00	 , B00	 , router_in00	 , clk1);
	multiplier m01	 (A01	 , B01	 , router_in01	 , clk1);
	multiplier m02	 (A02	 , B02	 , router_in02	 , clk1);
	multiplier m03	 (A03	 , B03	 , router_in03	 , clk1);
	multiplier m10	 (A10	 , B10	 , router_in10	 , clk1);
	multiplier m11	 (A11	 , B11	 , router_in11	 , clk1);
	multiplier m12	 (A12	 , B12	 , router_in12	 , clk1);
	multiplier m13	 (A13	 , B13	 , router_in13	 , clk1);
	multiplier m20	 (A20	 , B20	 , router_in20	 , clk1);
	multiplier m21	 (A21	 , B21	 , router_in21	 , clk1);
	multiplier m22	 (A22	 , B22	 , router_in22	 , clk1);
	multiplier m23	 (A23	 , B23	 , router_in23	 , clk1);
	multiplier m30	 (A30	 , B30	 , router_in30	 , clk1);
	multiplier m31	 (A31	 , B31	 , router_in31	 , clk1);
	multiplier m32	 (A32	 , B32	 , router_in32	 , clk1);
	multiplier m33	 (A33	 , B33	 , router_in33	 , clk1);
	assign router_in00 = {K00, z00};
	assign router_in01 = {K01, z01};
	assign router_in02 = {K02, z02};
	assign router_in03 = {K03, z03};
	assign router_in10 = {K10, z10};
	assign router_in11 = {K11, z11};
	assign router_in12 = {K12, z12};
	assign router_in13 = {K13, z13};
	assign router_in20 = {K20, z20};
	assign router_in21 = {K21, z21};
	assign router_in22 = {K22, z22};
	assign router_in23 = {K23, z23};
	assign router_in30 = {K30, z30};
	assign router_in31 = {K31, z31};
	assign router_in32 = {K32, z32};
	assign router_in33 = {K33, z33};

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