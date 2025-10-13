# ECE230L-Lab7
# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

Summary

In today's lab we went into using One's Compliment with 4 bits, and then converting a One's Compliment number into a Two's Compliment. Beforehand we used a half subtractor to demonstrate a simplier form. We were tasked with using the implmentation of the adder from last week, and re-use it for the One's Compliment, much like how in real programming we can re-use classes and its methods. 

<br>

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
The main difference is that the truth tables along with the equations derived create different
results. The Half Adder performs addition by calculating the XOR of the two inputs (Sum), and a "Carry" output if both inputs are 1. On the other hand, the Half Subtractor performs subtraction by using 		the same XOR operation, but instead calculates for a difference output by replacing the "Carry" logic with a "Borrow" logic. The "Borrow", happens if first input is less than the second input, and is 		calculated as the inverse of A AND B. While the two function similarly in structure, their behaviors are opposite when looking at their final output.

<br>	

	
### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
Due to the carry around we were forced to essentially do 2 rounds of "addition"(since subtraction is essentially adding a negative number). The first round, to find and get the carry, and then the second to bring it back around and add it back in. Both steps are required to do the "real" addition, and the additional step makes the hardware more complex and slow overall. 

<br>

	
### 3 - What is the edge case and problem with Two’s Complement number representation?
One issue is that because there is only one 0 being 0000, that means that the negative side has an extra negative number which can be represented (-8 as 1000) thus making it assymetrical. In our case of a 4-bit system, the total range of Two’s Complement numbers ranges from −8 to +7. However, although that asymmetry is not usually a major issue when computing, it is important to note that it does limit the largest positive number which can be represented as compared to the lowest negative number.

<br>

	
