
module twos_compliment(
    input [7:0]A,
    output [7:0]Y

);
    wire [7:0] invertedA;
    wire [7:0] sum;
    wire [7:0] carry;
    
    assign invertedA = ~A;
    
    full_adder fa0(
        .A(invertedA[0]), 
        .B(1'b1), .Cin(1'b0), 
        .Y(sum[0]), 
        .Cout(carry[0])
     );
     
    genvar i;
    generate 
        for (i = 1; i < 8;i = i + 1)begin
            full_adder fa(
                .A(invertedA[i]),
                .B(1'b0), .Cin(carry[i-1]),
                .Y(sum[i]),
                .Cout(carry[i])
             );
        end
    endgenerate
    
    assign Y = sum;
endmodule