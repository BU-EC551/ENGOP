`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:45:49 04/17/2015 
// Design Name: 
// Module Name:    controller 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
																																																																																																																																																																																			                                                                                                                                                                                                                                                   module controller(
input [7:0] data,
input clk,
input [1:0]released,
output  reg motor1,
output  reg motor2,
output  reg motor3,
output  reg motor4,
output  reg motor5,
output  reg motor6,
output  reg motor7,
output  reg motor8,
output  reg motor9,
output  reg motor10,
output  reg wheel1,
output  reg wheel2,
output  reg wheel3,
output  reg wheel4,
output  reg wheel5,
output  reg wheel6,
output  reg wheel7,
output  reg wheel8
    );

	reg [40:0] counter=0;
	reg onesecclk=0;
	reg [5:0]secclk=0;
	reg [7:0]pc;
	reg temp;
	reg [7:0]i=0;
	reg [7:0]j=0;
	reg [1:0] mem [200:0][4:0];
	reg [7:0] endOfRec;
	parameter forward=1;
	parameter backward=2;
	parameter stop=0;
	

initial
begin
pc=0;
endOfRec = 8'd0;
end
	always@(posedge clk)
	begin
		if(counter == 5400000)
		begin
			onesecclk=~onesecclk;
			counter=0;
		
		end
		else
		counter=counter+1'b1;
	end
		
	reg clear = 0;
	reg flag = 0;
	reg pcflag = 0;
		
	always@(posedge onesecclk)
	begin
	case(released)
	default:
	begin
			pcflag = 1;
			flag = 0;
			clear = 0;
			case (data)
			8'h75://arrow up
			begin
				wheel1=1;
				wheel2=0;
				wheel3=1;
				wheel4=0;
				wheel5=1;
				wheel6=0;
				wheel7=1;
				wheel8=0;
			end
			8'h72://arrow down
			begin
				wheel1=0;
				wheel2=1;
				wheel3=0;
				wheel4=1;
				wheel5=0;
				wheel6=1;
				wheel7=0;
				wheel8=1;
			end
			8'h6B://arrow left
			begin
				wheel1=1;
				wheel2=0;
				wheel3=1;
				wheel4=0;
				wheel5=0;
				wheel6=1;
				wheel7=0;
				wheel8=1;
			end
			8'h74://arrow right
			begin
				wheel1=0;
				wheel2=1;
				wheel3=0;
				wheel4=1;
				wheel5=1;
				wheel6=0;
				wheel7=1;
				wheel8=0;
			end
			8'h2B://f for hold
			begin
				motor9=1;
				motor10=0;
			end
			8'h34://g for release
			begin
				motor9=0;
				motor10=1;
			end	
			8'h1d://w for up	
			begin
				motor1=0;
				motor2=1;
			end	
			8'h1b://d for down
			begin
				motor1=1;
				motor2=0;
			//motor3=0;
			end	
			8'h1c://a for left
			begin
				motor3=0;
				motor4=1;
			end
			8'h23://d for right
			begin
				motor4=0;
				motor3=1;
			end
			8'h31://arrow down for low
			begin
				motor5=0;
				motor6=1;
			end		
			8'h33://arrow up for high
			begin
				motor6=0;
				motor5=1;
			end			
			8'h3a://arrow left for head down
			begin
				motor7=0;
				motor8=1;
			end
			8'h3b://arrow right for head up
			begin
				motor8=0;
				motor7=1;
			end
			8'h15://q for left up
			begin
				motor1=0;
				motor2=1;
				motor3=0;
				motor4=1;
			end		
			8'h24://e for right up
			begin
				motor1=0;
				motor2=1;
				motor3=1;
				motor4=0;
			end
			8'h1a://z for left down
			begin
				motor1=1;
				motor2=0;
				motor3=0;
				motor4=1;
			end
			8'h21://c for right up
			begin
				motor1=1;
				motor2=0;
				motor3=1;
				motor4=0;
			end
			default://8'h24:
			begin
				motor1=0;
				motor2=0;
				motor3=0;
				motor4=0;
				motor5=0;
				motor6=0;
				motor7=0;
				motor8=0;
				motor9=0;
				motor10=0;
				wheel1=0;
				wheel2=0;
				wheel3=0;
				wheel4=0;
				wheel5=0;
				wheel6=0;
				wheel7=0;
				wheel8=0;
			end
			endcase
	end

	1:
	begin
		clear = 0;
		pcflag = 0;
		if(pc == endOfRec || pc == 200)
			flag = 0;
		else if (pc == 0)
			flag = 1;
		if (flag == 1)
		begin
			pc = pc + 1;
			motor1=mem[pc][0][0];
			motor2=mem[pc][0][1];
			motor3=mem[pc][1][0];
			motor4=mem[pc][1][1];
			motor5=mem[pc][2][0];
			motor6=mem[pc][2][1];
			motor7=mem[pc][3][0];
			motor8=mem[pc][3][1];
			motor9=mem[pc][4][0];
			motor10=mem[pc][4][1];
		end
		else if(flag == 0)
		begin
			pc = pc - 1;
			motor1=mem[pc][0][1];
			motor2=mem[pc][0][0];
			motor3=mem[pc][1][1];
			motor4=mem[pc][1][0];
			motor5=mem[pc][2][1];
			motor6=mem[pc][2][0];
			motor7=mem[pc][3][1];
			motor8=mem[pc][3][0];
			motor9=mem[pc][4][1];
			motor10=mem[pc][4][0];
		end
	end		
	//-----------------end of run mode----------------------------
	2:
	begin
		if(pcflag == 0)
		begin
			pc = 0;
			endOfRec = 8'd0;
			pcflag = 1;
		end
		flag = 0;
		
		if(clear == 0)
		begin
			for(i=0;i<200;i=i+1'b1)
			begin
				for(j=0;j<4;j=j+1'b1)
				begin
				mem[i][j] = 0;
				end
			end
		clear = 1;
		end
		
			case (data)
				8'h2B://f for hold
				begin
					motor9=1;
					motor10=0;
					mem[pc][0]=stop;
					mem[pc][1]=stop;
					mem[pc][2]=stop;
					mem[pc][3]=stop;
					mem[pc][4]=forward;
				end
				8'h34://g for release
				begin
					motor9=0;
					motor10=1;
					mem[pc][0]=stop;
					mem[pc][1]=stop;
					mem[pc][2]=stop;
					mem[pc][3]=stop;
					mem[pc][4]=backward;
				end
				8'h1d://s for down
				begin
					motor1=0;
					motor2=1;
					mem[pc][0]=backward;
					mem[pc][1]=stop;
					mem[pc][2]=stop;
					mem[pc][3]=stop;
					mem[pc][4]=stop;			
				end
				8'h1b://w for up
				begin
					motor1=1;
					motor2=0;
					mem[pc][0]=forward;
					mem[pc][1]=stop;
					mem[pc][2]=stop;
					mem[pc][3]=stop;
					mem[pc][4]=stop;
				end
				8'h1c://a for left
				begin
					motor3=0;
					motor4=1;
					mem[pc][1]=backward;
					mem[pc][3]=stop;
					mem[pc][2]=stop;
					mem[pc][0]=stop;
					mem[pc][4]=stop;
				end
				8'h23://d for right
				begin
					motor4=0;
					motor3=1;
					mem[pc][1]=forward;
					mem[pc][3]=stop;
					mem[pc][2]=stop;
					mem[pc][0]=stop;
					mem[pc][4]=stop;
				end
				8'h31://arrow down for low
				begin
					motor5=0;
					motor6=1;
					mem[pc][2]=backward;
					mem[pc][1]=stop;
					mem[pc][3]=stop;
					mem[pc][0]=stop;
					mem[pc][4]=stop;
				end
				8'h33://arrow up for high
				begin
					motor6=0;
					motor5=1;
					mem[pc][2]=forward;
					mem[pc][1]=stop;
					mem[pc][3]=stop;
					mem[pc][0]=stop;
					mem[pc][4]=stop;
				end
				8'h3a://arrow left for head down
				begin
					motor7=0;
					motor8=1;
					mem[pc][3]=backward;
					mem[pc][1]=stop;
					mem[pc][2]=stop;
					mem[pc][0]=stop;
					mem[pc][4]=stop;
				end
				8'h3b://arrow right for head up
				begin
					motor8=0;
					motor7=1;
					mem[pc][3]=forward;
					mem[pc][1]=stop;
					mem[pc][2]=stop;
					mem[pc][0]=stop;
					mem[pc][4]=stop;
				end
				8'h15://q for left up
				begin
					motor1=1;
					motor2=0;
					motor3=0;
					motor4=1;
					mem[pc][0]=forward;
					mem[pc][1]=backward;
					mem[pc][2]=stop;
					mem[pc][3]=stop;
					mem[pc][4]=stop;
				end
				8'h24://e for right up
				begin
					motor1=0;
					motor2=1;
					motor3=1;
					motor4=0;
					mem[pc][0]=forward;
					mem[pc][1]=forward;
					mem[pc][2]=stop;
					mem[pc][3]=stop;
					mem[pc][4]=stop;
				end
				8'h1a://z for left down
				begin
					motor1=1;
					motor2=0;
					motor3=0;
					motor4=1;
					mem[pc][0]=backward;
					mem[pc][1]=backward;
					mem[pc][2]=stop;
					mem[pc][3]=stop;
					mem[pc][4]=stop;
				end
				8'h21://c for right up
				begin
					motor1=1;
					motor2=0;
					motor3=1;
					motor4=0;
					mem[pc][0]=backward;
					mem[pc][1]=forward;
					mem[pc][2]=stop;
					mem[pc][3]=stop;
					mem[pc][4]=stop;
				end
				default://8'h24:
				begin
					motor1=0;
					motor2=0;
					motor3=0;
					motor4=0;
					motor5=0;
					motor6=0;
					motor7=0;
					motor8=0;
					motor9=0;
					motor10=0;
					mem[pc][0][1]=0;
					mem[pc][0][0]=0;
					mem[pc][1][1]=0;
					mem[pc][1][0]=0;
					mem[pc][2][1]=0;
					mem[pc][2][0]=0;
					mem[pc][3][1]=0;
					mem[pc][3][0]=0;
					mem[pc][4][1]=0;
					mem[pc][4][0]=0;
				end
				endcase
				if (pc!=200)
				begin
					pc=pc+1'b1;
					endOfRec = endOfRec + 1;
				end
				else
				begin
					pc=0;
					endOfRec = 0;
				end
			end		
		endcase
	end
endmodule
