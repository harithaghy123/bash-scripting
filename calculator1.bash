#!/bin/bash
# prompt the user to enter the first number
echo "Enter the first number:"
read num1
# prompt the user to enter the second number
echo "Enter the second number:"
read num2
# prompt the user to enter the operation to perform
echo "Enter the operation to perform (+, -, *, /):"
read operation
# perform the calculation based on the operation
case $operation in
    +)
        result=$((num1 + num2))
        ;;
    -)
        result=$((num1 - num2))
        ;;
    \*)
        result=$((num1 * num2))
        ;;
    /)
        result=$((num1 / num2))
        ;;
    *)
        echo "Invalid operation"
        exit 1
        ;;
esac
# print the result
echo "Result: $result"
