
module circuit_a(

    // Declare inputs
    // Declare Y output
	input A,B,C,D,
	output Y
);

// Enter logic equation here
assign Y = ~A & D;
    

endmodule



