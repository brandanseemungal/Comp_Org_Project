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
    
    li $v0, 5               # Read user input (N)
    syscall
    move $t0, $v0           # Save input in $t0


    # Check if input is legal
check_input:
    blez $t0, illegal_input # Check if N <= 0
    li $t1, 25              # Load 25 to $t1
    blt $t0, $t1, illegal_input # Check if N < 25


    # If input is legal, proceed to calculate Fibonacci sequence
    li $t2, 0               # Initialize first Fibonacci number
    li $t3, 1               # Initialize second Fibonacci number
    li $t4, 0               # Initialize counter
    

