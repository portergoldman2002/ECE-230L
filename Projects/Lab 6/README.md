# Number Theory: Addition

In this lab you've learned the basics of number theory as it relates to addition.

## Rubric:

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Summary:
In this lab, we learned about and practiced using binary addition with use of adders. Using Verilog, we then created implementations of a fully functional multi-bit adder, which we completed by combining multiple Verilog modules (`light.v`, `adder.v`, and `full_adder.v`). This then allowed us to control with physical switches on our FPGA Board (Basys3). Through this lab, the abilities of simple structures like gates (XOR & AND) were shown to be able to be implemented into larger/more-complex structures like adders. This helped teach us how use the "carry out" (output) values of 1-bit adders as "carry in" (input) values for 2-bit full adders, replicating the concept of base ten addition.


## Lab Questions:

### 1 - How might you add more than two bits together?
Adding more than two bits together requires linking multiple full adders together, so that the output of one logic computation (carry out), can be used as an input of a different following logic computation (carry in). For example, a 4-bit adder uses four seperate full adders each connected in a sequence, in order for the following adder to use the previous adders output as an input, to then compute their own output (1 -> 2 -> 3 -> 4). This process mirrors the way multiple digit addition calculations function (base ten form), where each digits "carry-out" value adds into the next place value.


### 2 - What is the importance of the XOR gate in an adder?
The imporatnce of an XOR gate in an adder is its ability to produce the sum output of binary addition calculation. In the case of both half and full adders, the XOR gate forces the sum bit to be 1, whether or not one of the bits was a 0. In a one bit adder, the formula which represents this is "Y = A ^ B", and for a full adder it is represented as "Y = A ^ B ^ Cin". In short, without an XOR gate, an adder would not be able to correctly perform binary addition or "carry" values.


### 3 - What is the largest number a two bit adder can handle? What happens when you go over?
A two bit adder is able to represent values that range from 0 (00) to 3 (11) in decimal. The largest number a two bit adder can compute is 6, or "11" + "11" ("3 + 3" in binary), and the sum of this additon in binary is "110". However, a two-bit is only able to show the lower two bits, or least significant bits, ("10"), and the most significant bit ("1") becomes the "carry-out" bit (Cout). Overflow errors such as that are an example outlining the need for additional bits (more/larger adders) when adding numbers which exceed the number of bits of the current adder being used.
