# Integer Overflow in Assembly Memory Access

This repository demonstrates an integer overflow bug in an assembly instruction that calculates a memory address.  The `mov` instruction uses a base address (`ebx`), an index (`ecx`), and an offset (8) to access memory. If the sum of these values exceeds the maximum addressable memory, an overflow occurs, leading to unpredictable behavior or a crash.

The `bug.asm` file contains the erroneous code, and `bugSolution.asm` provides a corrected version that includes checks to prevent integer overflow.