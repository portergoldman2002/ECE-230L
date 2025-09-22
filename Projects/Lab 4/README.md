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

In this lab we practiced three similar implementations of 4-input logic which result in the same overall function:
- Naive (Sum of Minterms): The OR of all input combinations that produce Y = 1
- Sum of Products (SOP): Group 1's in powers of two (1, 2, 4, 8) on a KMap to find the "OR of AND's"
- Product of Sums (POS): Group 0's in powers of two (1, 2, 4, 8) on a KMap to find the "AND of OR's"

We also verified the functional equivalence of these three different implementations of the logic, by comparing the outputs produced by each function when processing the same input. The equivalence was tested using an XOR-based program `test.v`, which immediatley flags any mismatch and displays information regaurding the issues origin. This was repeated with sixteen different input patterns, all of which returned True (meaning the outputs of each input all returned the same), confirming that the Naive, SOP, and POS equations will produce Truth Tables containing the same output data.


## Lab Questions

### 1.  Why are the groups of 1’s (or 0’s) that we select in the KMap able to go across edges?

- The groups of 1's or 0's that we select in the KMap are able to go across edges because Kmaps exist according to Gray Code Order, which means that adjacent cells, including the ones that "wrap around" or "go across edges" we are reffering to, differ by exactly one variable. A Kmap works similarly to how a torus is shaped, with the right and left edges are connected, and the top and bottom edges are connected, and when we are grouping cells, the edge cases are also "attatched" because of that. Using this method allows us to form larger "power of two" rectangle groupings (1, 2, 4, or 8) as we minimize the expression. 


### 2.  Why are the names Sum of Products and Products of Sums?

- The names that each equation have been given, have been done so because they describe the function of each equations operator at the top level, and the internal structure of their inner terms:

- Sum of Products: Is called this because after each region of 1's is grouped together they become Product Terms (the AND's of the selected literals). After completing the selections the expression results in the Sum/OR of product terms.
Example: Y = (A & ~B & C) | (~A & D) | (B & ~D)  <-- OR("Sum") of AND's("Products")

- Product of Sums: Is called this because after each region of 0's is grouped together they become Sum Terms (the OR's of the selected literals). After completing the selections and the conversion is made, the expression results in the Product/AND of sum terms.
Example: Y = (A | ~C | D) & (~A | B) & (~B | ~D)  <-- AND("Product") of OR's("Sums")


### 3.  Open the test.v file – how are we able to check that the signals match using XOR?

- We can use XOR comparator within the test.v file to check if signals match, by checking the output of each set of inputs. XOR will output 1 if the inputs differ, and 0 if the inputs are equal. So, if the output of every set of inputs is 0, we know that each signal tested matches and is equal.
  
- If the testing suite goes through 16 cases and checks for equivalence between inputs, and it returns a 1, it will output a short message detailing which optimized form does not match the "naive" form. When an message like that is output, it helps to indicate and identify where the problem may be and how to fix it.


