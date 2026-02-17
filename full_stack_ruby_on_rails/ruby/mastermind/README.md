# Mastermind

A simple Ruby terminal Mastermind game (human vs computer).

## Description

This is a command-line Mastermind game implemented in Ruby. The computer thinks of a 4-digit secret code using numbers 1–6 (no duplicates allowed). The human player has 12 tries to guess the code. The game validates moves, provides feedback on each guess, detects wins and losses, and prints result messages.

## Features

- Human vs computer
- Computer generates random 4-digit codes (1-6, no duplicates)
- Terminal-based gameplay with turn counter
- Validates player input and prevents invalid moves
- Feedback system:
  - `+` for correct number in correct position
  - `-` for correct number in wrong position
- Displays game results when a player wins or runs out of guesses

## Requirements

- Ruby (version 2.0 or higher)

## Usage

1. Clone or download the repository.
2. Navigate to the `mastermind` directory.
3. Run the game:

```bash
ruby main.rb
```

Enter your 4-digit guess (1-6, no duplicates). You have 12 turns to guess the code.

## Live Demo

No live demo available.

## Examples

When you run the game, the output looks like this (player input shown after prompts):

```
==================================================
Welcome to Mastermind
==================================================
I'm thinking of a 4-digit code (1 to 6)
No duplicate digits allowed
Can you guess it in 12 turns?
==================================================
Feedback:
  +  correct number in correct position
  -  correct number in wrong position
-------- Ctrl + C to exit--------
==================================================
Guess 1: 123
=== 4 digit only ===
Guess 1: 123w
=== Has letter ===
Guess 1: 1230
=== Must between 1-6 ===
Guess 1: 1233
=== No Dupicate digit allowed ===
Guess 1: 1234
Feedback: +---
Guess 2: 2143
Feedback: +---
Guess 3: 3124
Feedback: ++++
=== YOU WIN ===
```

The game validates that your input is:

- Exactly 4 digits
- Contains only numbers (no letters)
- Contains only numbers between 1 and 6
- Has no duplicate digits

The feedback shows how many digits are correct and in the correct position (`+`) vs. correct but in the wrong position (`-`).

## Contributing

Contributions are welcome! Please submit a Pull Request or open an Issue for improvements.

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/SalasNorman/theOdinProject-projectCompilation/blob/main/LICENSE) file for details.
