# Lab 04 - SOP/POS and KMaps

In this lab, you’ve learned how to apply KMaps, Sum Of Products and Products of
sums to simplify digital logic equations. Then, you’ve proven out that they work
using an implemented design on your Basys3 boards.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary

Summarize your learnings from the lab here.

## Lab Questions

### Why are the groups of 1’s (or 0’s) that we select in the KMap able to go across edges?

- The groups of 1's or 0's that we select in the KMap are able to go across edges because Kmaps exist according to Gray Code Order, which means that adjacent cells, including the ones that "wrap around" or "go across edges" we are reffering to, differ by exactly one variable. In a conceptual formation, the Kmap can be thought as like a torus, where the right and left edges touch and the top and bottom edges touch.
So, when we are grouping cells, we are required to select cells that differ by only one literal, and edge cases are then also valid. Allowing us to form larger "power of two" rectangles (1, 2, 4, or 8) to express more literals as we minimize the expression.


### Why are the names Sum of Products and Products of Sums?

The names that each equation have been given, have been done so because they describe the function of each equations operator at the top level, and the internal structure of their inner terms:

Sum of Products: Is called this because after each region of 1's is grouped together they become Product Terms (the AND's of the selected literals). After completing the selections the expression results in the Sum/OR of product terms.
Example: Y = (A & ~B & C) | (~A & D) | (B & ~D)  <-- OR("Sum") of AND's("Products")

Product of Sums: Is called this because after each region of 0's is grouped together they become Sum Terms (the OR's of the selected literals). After completing the selections and the conversion is made, the expression results in the Product/AND of sum terms.
Example: Y = (A | ~C | D) & (~A | B) & (~B | ~D)  <-- AND("Product") of OR's("Sums")


### Open the test.v file – how are we able to check that the signals match using XOR?

We can use XOR within the test.v file to check if the signals match, by checking the output of each set of inputs. XOR will output 1 if the inputs differ, and 0 if the inputs are equal. So, if the output of every set of inputs is 0, we know that each signal tested matches and is equal. 
If the testing suite goes through 16 cases and checks for equivalence between inputs, and it output a short message detailing which optimized form does not match the "naive" form, and halts. When an message like that it output, it is an indication of where the problem may be and how to fix it.


