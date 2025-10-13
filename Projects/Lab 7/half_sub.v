module half_sub(
    input A,
    input B,
    output Y,
    output Borrow
);

assign Y = A ^ B;
assign Borrow = B & ~A ; 



    // Enter logic equation here

endmodule