

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
wire third_carry;
wire fourth_carry;


full_adder first_bit_two(
    .A(APlusB[0]),
    .B(1'b0),
    .Y(FinalAPlusB[0]),
    .Cin(around), 
    .Cout(second_carry)
);
    

full_adder second_bit_two(
    .A(APlusB[1]),
    .B(1'b0), 
    .Y(FinalAPlusB[1]),
    .Cin(second_carry), 
    .Cout(third_carry)
);


full_adder third_bit_two(
    .A(APlusB[2]),
    .B(1'b0),
    .Y(FinalAPlusB[2]),
    .Cin(third_carry),
    .Cout(fourth_carry)
);

    
 full_adder fourth_bit_two(
        .A(APlusB[3]),
        .B(1'b0),
        .Y(FinalAPlusB[3]),
        .Cin(fourth_carry)
        // no final carry out
    );

    
assign Y = FinalAPlusB;

endmodule


