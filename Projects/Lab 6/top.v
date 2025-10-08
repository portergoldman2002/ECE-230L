// Implement top level module
module top (
    input [7:0]sw,
    output[5:0]led
);


light xor_inst(
    .downstairs(sw[0]),
    .upstairs(sw[1]),
    .stairway(led[0])
);

adder regular_adder_inst(
    .A(sw[2]),
    .B(sw[3]),
    .Y(led[1]),
    .Carry(led[2])
);

wire connector;

full_adder first_addition_inst(
    .A(sw[4]),
    .B(sw[6]),
    .Cin(1'b0),
    .Cout(connector),
    .Y(led[3])
);

full_adder second_addition_inst(
    .A(sw[5]),
    .B(sw[7]),
    .Cin(connector),
    .Cout(led[5]),
    .Y(led[4])
);

endmodule