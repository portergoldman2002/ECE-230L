
module full_adder(
    input A,
    input B,
    input Cin,
    output Y,
    output Cout
);

assign Y = (~A&~B&Cin) | (~A&B&~Cin) | (A&B&Cin) | (A&~B&~Cin);
assign Cout = (B&Cin) | (A&Cin) | (A&B); 



endmodule