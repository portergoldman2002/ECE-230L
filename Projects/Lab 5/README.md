# Lab 05 - Combinatorial Logic

In this lab, you’ve learned real world applications of digital logic, as well
as how to assemble your own Verilog modules. In addition, you’ve learned how
the constraints file maps your inputs and outputs to real pins on the FPGA.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### Lab Summary - 
- In this lab, we worked with digital logic equations, practicing how to describe them, simplify them, and then implement this into Verilog. We used Maxterms(Product of Sums(POS)) and Minterms(Sum of Products(SOP)), to practice converting truth tables into boolean equations in order to add the required logic to our `circuit_a.v` and `circuit_b.v` files, mapping those equations into our functional code. We also practiced how to create and implement modular designs into our circuits by using a top level file to combine them during compilation. Additionally, we learned important functions of the constraints file, which functions to directly map the logical signals given by the code to the physical pins on the FPGA board(Basys3). By being able to map the code to a physical board, we were able to practice testing and confirming the correctness of our code by programming it to the board and physically flipping the switch inputs we specified, and then observing the reaction of the visible LED outputs.

### 1 - Explain the role of the Top Level file.
- The role of the Top Level File (`top.v`) in this lab, is the role of acting as a central module which connects everything together. It functions by instantiating the `circuit_a.v` and `circuit_b.v` files, and then wiring the ouptut of Circuit A into the "A" input of Circuit B. It also maps the FPGA switches (sw[0..6]), and LEDs (led[0..1]) as the physical interface. Without the Top Level File, Vivado would not be able to correctly combine each circuit module correctly, nor would it know how to assign them to the physical hardware.


### 2 - Explain the function of the Constraints file.
- The function of the Constraints File (`constraints.xdc`) in this lab, is to specify the specific FPGA pins which correspond to the logical signals given by the Verilog program. In the lab we mapped the switches sw[0] through sw[6] to the pins on our board(Basys3), along with the LEDs led[0] and led[1], as the corresponding output pins. By doing this, it ensures that when the FPGA is implemented, when a physical switch is flipped, it sends the intended logic signal to the circuit, which should also further result with the correct LED lighting up.


### 3 - Was the selection of Minterm and Maxterm correct for each circuit? What would you have chosen?
- The final selections of Minterm and Maxterm that we chose for each circuit resulted in being correct, and were checked off by the Lab Assistant. When finding the correct equation for each portion, Circuit A was defined by using Maxterms(Product of Sums(POS)), while Circuit B was defined using Minterms(Sum of Products(SOP)). After we calculating, simplifiying, and having the Lab assistant check them for correctness, we then compiled them into their respective `circuit_a.v` and `circuit_b.v` files, and then generated a bitstream for our Basys3 board in order to check if they also resulted in the intended LED outputs. After sending it to the board and testing the LED outputs using different combinations of the switches, we were able to conclude that the equations were correct because the LED outputs were correct after every iteration. Because of this, I would not have chosen to change the expressions at all, and am very pleased with the results of our process during this Lab.


