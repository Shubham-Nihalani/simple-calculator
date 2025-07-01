# Bash Calculator Script

A simple, interactive calculator written in Bash for use in Termux or any Linux shell. Supports both integers and decimal numbers.

## About This Project

This is my second Bash scripting project, created as part of my journey to explore Git, GitHub, and command-line scripting. It’s a basic calculator that focuses on user interaction, logical flow, and handling simple arithmetic. While it's simple by design, I plan to gradually enhance it as I learn more about Bash scripting and improve my coding skills.

## Features

- Addition
- Subtraction
- Multiplication
- Division (with zero-check and decimal precision upto 3 digits)
- Power (exponentiation)
- Square (calculates the square of a number)
- Menu-driven interface
- Repeats until you choose to exit

## How It Works

1. The user runs the script in the terminal.
2. A menu is displayed with numbered options for operations.
3. The user selects an operation by pressing a single key (1–7).
4. The script asks for two numbers.
5. It performs the selected operation:
   - For division, it checks if the second number is zero.
   - For power, it raises the first number to the power of the second.
6. After showing the result, it waits for the user to press Enter.
7. The menu appears again unless the user selects Exit.

## Requirements

- Bash shell
- `bc` command-line calculator  
  (Install it in Ubuntu with `apt install bc -y`)

## How to Use

1. Clone or download this repo
2. Make the script executable:
   ```bash
   chmod +x calculator.sh
   ```
3. Run the script:
   ```bash
   ./calculator.sh
   ```

## Notes

- Only **one character input** is accepted for the operation choice (1–7).
- The calculator waits for **user confirmation after each result** before continuing.
- **Division supports decimal output** using `bc`.
- Inputs are not validated for non-numeric entries (future improvement idea).
- The script has a fun and friendly tone to keep the user engaged.

> Note: `calculator.sh` is a work in progress and will continue to receive updates with new features and improvements.


