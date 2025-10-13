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

	In today's lab we went into using One's Compliment with 4 bits, and then converting a One's Compliment
	number into a Two's Compliment. Beforehand we used a half subtractor to demonstrate a simplier form.
	We were tasked with using the implmentation of the adder from last week, and re-use it for the 
	One's Compliment, much like how in real programming we can re-use classes and its methods. 

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
	The main difference is that the truth tables along with the equations derived create different
	results.
### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
	Due to the carry around we were forced to essentially do 2 rounds of "addition"(since subtraction is
	essentially adding a negative number)first round to actually get the carry around but the 2nd to do the
	"real" addition.
### 3 - What is the edge case and problem with Two’s Complement number representation?
	One issue is that because there is only one 0 being 0000, that means that the negative side has an
	extra negative number that can be represented thus making it assymetrical	
