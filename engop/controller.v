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
input released,
output  reg motor1,
output  reg motor2,
output  reg motor3

    );
	initial 
	begin
	motor1=1;
	motor2=1;
	motor3=1;
	end
	reg[40:0] counter=0;
	reg  onesecclk=0;
	reg  [5:0]secclk=0;
	reg count=0;
	reg temp;
	always@(posedge clk)
	begin
		if(counter == 2700000)
		begin
			onesecclk=~onesecclk;
			counter=0;
		
		end
		else
		counter=counter+1'b1;
	end
	/*
	always@(posedge onesecclk )
	begin
		if (data==8'h24)
			if (secclk==3 || secclk==5 ||secclk==7 )
			begin
				motor1=0;
				motor2=0;
				motor3=0;
				secclk=secclk+1'b1;
				//secclk=0;
				
			end
			else
			begin
			secclk=secclk+1'b1;
			motor1=1;
			motor2=1;
			motor3=1;
			end
	end	
		*/
	always@(posedge onesecclk)
	begin
	if (released==1)
	begin
	if ((secclk<20 && secclk>10)||(secclk<40 && secclk>30)||(secclk<60 && secclk>50))
			begin
				motor1=0;
				secclk=secclk+1'b1;
				//motor2=0;
				//motor3=0;
				//secclk=0;
				//secclk=0;
				
			end
			//else if(secclk==60)
			//secclk=0;
			else
			begin
			secclk=secclk+1'b1;
			motor1=1;
			//motor2=1;
			//motor3=1;
			end
	end
	
	else
			case (data)
			8'h1d:
			motor1=0;
			8'h15:
			begin
			motor1=0;
			motor2=0;
			motor3=0;
			end
			//8'h24:

			default:
			begin
			motor1=1;
			motor2=1;
			motor3=1;
			end
			endcase
	

	end
		
	
//assign motor1=(data==8'h1d||data==8'h15)?0:1;
//assign motor2=(data==8'h15)?0:1;
//assign motor3=(data==8'h15)?0:1;
endmodule
