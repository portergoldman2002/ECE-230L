
module circuit_b(

    // Declare inputs
    // Declare Y output
	input A,B,C,D,
	output Y
);

// Enter logic equation here
assign Y = (~C&~D) | (A&B) | (B&~D);


endmodule



