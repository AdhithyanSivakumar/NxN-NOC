`timescale 1ns / 1ps
////////////////////////////////////////////////////////////
module noc_nxn_tb();
		 parameter BUS_WIDTH = 32;
	reg [7:0] A00;
	reg [7:0] B00;
	reg [3:0] K00;
	reg [7:0] A01;
	reg [7:0] B01;
	reg [3:0] K01;
	reg [7:0] A02;
	reg [7:0] B02;
	reg [3:0] K02;
	reg [7:0] A03;
	reg [7:0] B03;
	reg [3:0] K03;
	reg [7:0] A10;
	reg [7:0] B10;
	reg [3:0] K10;
	reg [7:0] A11;
	reg [7:0] B11;
	reg [3:0] K11;
	reg [7:0] A12;
	reg [7:0] B12;
	reg [3:0] K12;
	reg [7:0] A13;
	reg [7:0] B13;
	reg [3:0] K13;
	reg [7:0] A20;
	reg [7:0] B20;
	reg [3:0] K20;
	reg [7:0] A21;
	reg [7:0] B21;
	reg [3:0] K21;
	reg [7:0] A22;
	reg [7:0] B22;
	reg [3:0] K22;
	reg [7:0] A23;
	reg [7:0] B23;
	reg [3:0] K23;
	reg [7:0] A30;
	reg [7:0] B30;
	reg [3:0] K30;
	reg [7:0] A31;
	reg [7:0] B31;
	reg [3:0] K31;
	reg [7:0] A32;
	reg [7:0] B32;
	reg [3:0] K32;
	reg [7:0] A33;
	reg [7:0] B33;
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


noc_nxn uut(
	.A00(A00),
	.B00(B00),
	.K00(K00),
	.A01(A01),
	.B01(B01),
	.K01(K01),
	.A02(A02),
	.B02(B02),
	.K02(K02),
	.A03(A03),
	.B03(B03),
	.K03(K03),
	.A10(A10),
	.B10(B10),
	.K10(K10),
	.A11(A11),
	.B11(B11),
	.K11(K11),
	.A12(A12),
	.B12(B12),
	.K12(K12),
	.A13(A13),
	.B13(B13),
	.K13(K13),
	.A20(A20),
	.B20(B20),
	.K20(K20),
	.A21(A21),
	.B21(B21),
	.K21(K21),
	.A22(A22),
	.B22(B22),
	.K22(K22),
	.A23(A23),
	.B23(B23),
	.K23(K23),
	.A30(A30),
	.B30(B30),
	.K30(K30),
	.A31(A31),
	.B31(B31),
	.K31(K31),
	.A32(A32),
	.B32(B32),
	.K32(K32),
	.A33(A33),
	.B33(B33),
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
	.router_out33(router_out33)
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
		buffer_in00 = 1'b0;
		buffer_in01 = 1'b0;
		buffer_in02 = 1'b0;
		buffer_in03 = 1'b0;
		buffer_in10 = 1'b0;
		buffer_in11 = 1'b0;
		buffer_in12 = 1'b0;
		buffer_in13 = 1'b0;
		buffer_in20 = 1'b0;
		buffer_in21 = 1'b0;
		buffer_in22 = 1'b0;
		buffer_in23 = 1'b0;
		buffer_in30 = 1'b0;
		buffer_in31 = 1'b0;
		buffer_in32 = 1'b0;
		buffer_in33 = 1'b0;
		#10;
				if(!buffer_out00)
					A00= 8'h0;
					B00= 8'h0;
					K00= 2'h0;
				if(!buffer_out01)
					A01= 8'h0;
					B01= 8'h0;
					K01= 2'h0;
				if(!buffer_out02)
					A02= 8'h0;
					B02= 8'h0;
					K02= 2'h0;
				if(!buffer_out03)
					A03= 8'h0;
					B03= 8'h0;
					K03= 2'h0;
				if(!buffer_out10)
					A10= 8'h0;
					B10= 8'h0;
					K10= 2'h0;
				if(!buffer_out11)
					A11= 8'h0;
					B11= 8'h0;
					K11= 2'h0;
				if(!buffer_out12)
					A12= 8'h0;
					B12= 8'h0;
					K12= 2'h0;
				if(!buffer_out13)
					A13= 8'h0;
					B13= 8'h0;
					K13= 2'h0;
				if(!buffer_out20)
					A20= 8'h0;
					B20= 8'h0;
					K20= 2'h0;
				if(!buffer_out21)
					A21= 8'h0;
					B21= 8'h0;
					K21= 2'h0;
				if(!buffer_out22)
					A22= 8'h0;
					B22= 8'h0;
					K22= 2'h0;
				if(!buffer_out23)
					A23= 8'h0;
					B23= 8'h0;
					K23= 2'h0;
				if(!buffer_out30)
					A30= 8'h0;
					B30= 8'h0;
					K30= 2'h0;
				if(!buffer_out31)
					A31= 8'h0;
					B31= 8'h0;
					K31= 2'h0;
				if(!buffer_out32)
					A32= 8'h0;
					B32= 8'h0;
					K32= 2'h0;
				if(!buffer_out33)
					A33= 8'h0;
					B33= 8'h0;
					K33= 2'h0;
				#10;
		rst = 1'b0;
		#28;
			forever
			begin
				if(!buffer_out00)
					A00=$random;
					B00= $random;
					K00= $random;
				if(!buffer_out01)
					A01=$random;
					B01= $random;
					K01= $random;
				if(!buffer_out02)
					A02=$random;
					B02= $random;
					K02= $random;
				if(!buffer_out03)
					A03=$random;
					B03= $random;
					K03= $random;
				if(!buffer_out10)
					A10=$random;
					B10= $random;
					K10= $random;
				if(!buffer_out11)
					A11=$random;
					B11= $random;
					K11= $random;
				if(!buffer_out12)
					A12=$random;
					B12= $random;
					K12= $random;
				if(!buffer_out13)
					A13=$random;
					B13= $random;
					K13= $random;
				if(!buffer_out20)
					A20=$random;
					B20= $random;
					K20= $random;
				if(!buffer_out21)
					A21=$random;
					B21= $random;
					K21= $random;
				if(!buffer_out22)
					A22=$random;
					B22= $random;
					K22= $random;
				if(!buffer_out23)
					A23=$random;
					B23= $random;
					K23= $random;
				if(!buffer_out30)
					A30=$random;
					B30= $random;
					K30= $random;
				if(!buffer_out31)
					A31=$random;
					B31= $random;
					K31= $random;
				if(!buffer_out32)
					A32=$random;
					B32= $random;
					K32= $random;
				if(!buffer_out33)
					A33=$random;
					B33= $random;
					K33= $random;
				#20;
			end
		end
 initial
            begin
                #1000;
                $finish;
            end
            endmodule