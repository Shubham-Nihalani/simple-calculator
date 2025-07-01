#!/bin/bash

clear
echo "Welcome to our basic calculator!"
sleep 1
echo "First, tell us what operation you want to perform, then select the 2 numbers."
sleep 2
	

while true
do

	# the menu set
	echo "Select an operation:"
	sleep 1
	echo "1 - Add"
	echo "2 - Subtract"
	echo "3 - Multiply"
	echo "4 - Divide"
	echo "5 - Power (Only integers are allowed)"
	echo "6 - Square"
	echo "7 - Exit :("
	
	# read user prompt
	
	read -n 1 -p "Enter your choice (1-7): " your_choice
	read -s -n 1 # silently ask for enter
	echo
	
	# if else to check for inputs
	
	# if input is 7 exit
	if [[ "$your_choice" == 7 ]]; then
	    echo "Goodbye!"
	    echo "Thanks for using this script."
	    exit 0
	# if input is 6 , aak for one number only
	elif [[ "$your_choice" == 6 ]]; then
	    read -p "Enter a number: " num1
	# if input is 5, ask for base and exponent
	elif [[ "$your_choice" == 5 ]]; then
		read -p "Enter the base: " num1
		read -p "Enter the exponent: " num2
	# if input is 4 ask for dividend and divisor
	elif [[ "$your_choice" == 5 ]]; then
		read -p "Enter the dividend: " num1
		read -p "Enter the divisor: " num2
	# else ask for normal input
	else
		read -p "Enter the first number: " num1
		read -p "Enter the second number: " num2		
	fi
	
	
	
	case $your_choice in
	    1)
	        sleep 1
	        echo "Adding..."
	        sleep 1
	        echo "$num1 + $num2 = $(echo "scale=3; $num1 + $num2" | bc)"
	        read -p "Press Enter to continue..."
	        ;;
	    2)
	        sleep 1
	        echo "Subtracting..."
	        sleep 1
	        echo "$num1 - $num2 = $(echo "scale=3; $num1 - $num2" | bc)"
	        read -p "Press Enter to continue..."
	        ;;
	    3)
	        sleep 1
	        echo "Multiplying..."
	        sleep 1
	        echo "$num1 * $num2 = $(echo "scale=3; $num1 * $num2" | bc)"
	        read -p "Press Enter to continue..."
	        ;;
	    4)
	        sleep 1
	        echo "Dividing..."
	        sleep 1
	        # check for zero division error
	        if [[ "$num2" == 0 ]]; then
	            echo "Error: Division by zero is not allowed!"
	            read -p "Press Enter to continue..."
	        else
	            echo "$num1 / $num2 = $(echo "scale=3; $num1 / $num2" | bc)"
	                # to round of to 3 decimal places
	                read -p "Press Enter to continue..."
	            fi
	            ;;
	    5)
	        sleep 1
	        echo "Exponentiating..."
	        sleep 1
	        echo "$num1 ^ $num2 = $((num1 ** num2))"
	        read -p "Press Enter to continue..."
	        ;;
	    6)
	        sleep 1
	        echo "Squaring..."
	        sleep 1
	        echo "$num1 ^ 2 = $(echo "scale=3; $num1 ^ 2" | bc)"
	        read -p "Press Enter to continue..."
	        ;;
	    *)
	        echo "Invalid Choice! BHAGGGG.."
	        read -p "Press Enter to continue..."
	        ;;
	esac
done
