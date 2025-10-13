
module ones_compliment(
    input [3:0]A,
    input [3:0]B,
    output [3:0]Y

);

wire connector1;
wire connector2;
wire connector3;
wire around;
wire [3:0] APlusB;

full_adder first_bit_inst(
    .A(A[0]),
    .B(B[0]),
    .Cin(1'b0),
    .Cout(connector1),
    .Y(APlusB[0])
);

full_adder second_bit_inst(
    .A(A[1]),
    .B(B[1]),
    .Cin(connector1),
    .Cout(connector2),
    .Y(APlusB[1])
);

full_adder third_bit_inst(
    .A(A[2]),
    .B(B[2]),
    .Cin(connector2),
    .Cout(connector3),
    .Y(APlusB[2])
);

full_adder final_bit_inst(
    .A(A[3]),
    .B(B[3]),
    .Cin(connector3),
    .Cout(around),
    .Y(APlusB[3])
);

//second stage
wire[3:0]FinalAPlusB;
wire second_carry;
full_adder first_bit_two(
    .A(APlusB[0]), // Adding LSB of (A + B)
    .B(1'b0), // We are adding 0, with the optional carry:
    .Y(FinalAPlusB[0]), // This is now the real summation
    .Cin(around), // This now takes *in* from the last sum
    .Cout(second_carry) // We still need to carry to second
    // bit of second addition
);
wire third_carry;
full_adder second_bit_two(
    .A(APlusB[1]), // Adding LSB of (A + B)
    .B(1'b0), // We are adding 0, with the optional carry:
    .Y(FinalAPlusB[1]), // This is now the real summation
    .Cin(second_carry), // This now takes *in* from the last sum
    .Cout(third_carry) // We still need to carry to second
    // bit of second addition
);

wire fourth_carry;
full_adder third_bit_two(
    .A(APlusB[2]), // Adding LSB of (A + B)
    .B(1'b0), // We are adding 0, with the optional carry:
    .Y(FinalAPlusB[2]), // This is now the real summation
    .Cin(third_carry), // This now takes *in* from the last sum
    .Cout(fourth_carry) // We still need to carry to second
    // bit of second addition
);

 full_adder fourth_bit_two(
        .A(APlusB[3]),
        .B(1'b0),
        .Y(FinalAPlusB[3]),
        .Cin(fourth_carry)
        // no carry out!
    );

assign Y = FinalAPlusB;


endmodule