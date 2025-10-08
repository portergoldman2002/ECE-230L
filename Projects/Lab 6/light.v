
module light(
    // Declare downstairs and upstairs input
    // Declare stair light output
    input downstairs,
    input upstairs,
    output stairway
);

assign stairway = downstairs ^ upstairs;



endmodule