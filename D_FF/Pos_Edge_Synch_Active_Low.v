`timescale 1ns / 1ps
`default_nettype none

module top(SW, LEDR); 
	input[9:0]SW;
	output[9:0]LEDR;

	PosEdge_SyncActiveLow u0(SW[0], SW[9], SW[1], LEDR[0]);

endmodule

module PosEdge_SyncActiveLow(d, clock, resetn, q);
    input d, clock, resetn;
    output reg q;
	 
    always@(posedge clock) 
        begin
            if (resetn == 1'b0)
                q <= 0; 
            else
                q <= d;
        end
endmodule
