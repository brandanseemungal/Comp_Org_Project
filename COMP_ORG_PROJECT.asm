# Prompt user for input
    .data
prompt: .asciiz "Enter a number N (N >= 25): "
error_msg: .asciiz "Illegal Number!\n"
fib_msg: .asciiz "\nFibonacci Sequence:\n"

    .text
    .globl main

main:
    li $v0, 4               # Print the prompt
    la $a0, prompt
    syscall
    
