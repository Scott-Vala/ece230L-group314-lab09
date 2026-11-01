# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

Dylan Goodell
Austin Hart

## Summary

Latches are the basic building block of memory. They hold a value after the inputs go away. We wrote them in behaviorial Verilog and used them to build a four-byte memory.

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?

A latch needs a combinatorial loop and Vivado won’t synthesize loops written structurally. Behavioral Verilog with reg lets it build the memory correctly.

### What is the meaning of always @(*) in a sensitivity block?

It means “re-run this block whenever any input changes.” That makes the output react immediately with no memory like a mux.

### What importance is memory to digital circuits?

Memory lets a circuit hold values over time and only update them when told to.
