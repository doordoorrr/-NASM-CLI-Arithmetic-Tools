# -NASM-CLI-Arithmetic-Tools
A dual-program project written in NASM (x86) that performs basic command-line arithmetic. Each tool demonstrates low-level data manipulation using Linux system calls.
## The Multiplication Program
A minimal NASM program that prompts the user for two single-digit numbers, converts their ASCII values to integers, multiplies them, and outputs the product. Built to demonstrate the use of the imul instruction and manual ASCII conversion in a bare-metal environment.

## The Adding Program
Another NASM tool that asks for two single-digit numbers, converts them from ASCII, adds them together, and prints the sum. It emphasizes addition logic and demonstrates how to handle I/O with int 0x80.
