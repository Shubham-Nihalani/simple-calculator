#!/bin/bash

clear

while true
do

	echo "Welcome to our basic calculator!"
	sleep 1
	echo "First, tell us what operation you want to perform, then select the 2 numbers."
	sleep 3
	
		# the menu set
	echo "Select an operation:"
	sleep 1
	echo "1 - Add"
	echo "2 - Subtract"
	echo "3 - Multiply"
	echo "4 - Divide"
	echo "5 - Power the second number is treated as a power to the first number)"
	echo "6 - Exit :("
	
		# read user prompt
	
	read -n 1 -p "Enter your choice (1-6): " your_choice
	read -s -n 1 # silently ask for enter
	echo
	
		# exit if option is 6
	
	if [[ "$your_choice" == 6 ]]; then
	    echo "Goodbye!"
	    echo "Thanks for using this script."
	    exit 0
	fi
	
	
	read -p "Enter the first number: " num1
	read -p "Enter the second number: " num2
	
	case $your_choice in
	    1)
	        sleep 1
	        echo "Adding..."
	        sleep 1
	        echo "$num1 + $num2 = $((num1 + num2))"
	        read -p "Press Enter to continue..."
	        ;;
	    2)
	        sleep 1
	        echo "Subtracting..."
	        sleep 1
	        echo "$num1 - $num2 = $((num1 - num2))"
	        read -p "Press Enter to continue..."
	        ;;
	    3)
	        sleep 1
	        echo "Multiplying..."
	        sleep 1
	        echo "$num1 * $num2 = $((num1 * num2))"
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
	        echo "Power..."
	        sleep 1
	        echo "$num1 ^ $num2 = $((num1 ** num2))"
	        read -p "Press Enter to continue..."
	        ;;
	    *)
	        echo "Invalid Choice! BHAGGGG.."
	        read -p "Press Enter to continue..."
	        ;;
	esac
done
