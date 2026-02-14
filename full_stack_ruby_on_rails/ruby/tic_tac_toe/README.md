# Tic Tac Toe

A simple Ruby terminal Tic Tac Toe game (human vs computer).

## Description

This is a command-line Tic Tac Toe game implemented in Ruby. The board uses positions 1–9. The human player uses the symbol `O` and the computer uses `X`. The game displays the board, validates moves, detects wins and ties, and prints result messages. The display uses the `rainbow` gem to color `O` (blue) and `X` (red).

## Features

- Human vs computer
- Terminal board display with colored symbols (uses the `rainbow` gem)
- Validates player input and prevents invalid moves
- Displays game results when a player wins or the game ends in a tie

## Requirements

- Ruby (version 2.0 or higher)
- The `rainbow` gem (included in the `Gemfile`)

## Usage

1. Clone or download the repository.
2. Navigate to the `tic_tac_toe` directory.
3. Install dependencies (optional, uses the Gemfile):

```bash
bundle install
```

4. Run the game:

```bash
ruby main.rb
```

Follow on-screen prompts to enter a move (1-9).

## Live Demo

No live demo available.

## Examples

When you run the game, the output looks like this (player input shown after prompts):

```
1 | 2 | 3
----------
4 | 5 | 6
----------
7 | 8 | 9

Player Input: 
1

O | 2 | 3
----------
4 | 5 | X
----------
7 | 8 | 9

Player Input: 
2

O | O | 3
----------
4 | 5 | X
----------
7 | 8 | X

Player Input: 
3
O | O | O
----------
4 | 5 | X
----------
7 | 8 | X

You Win!
```

The human player's symbol is `O` (message "You Win!" when human wins). The computer uses `X` (message "Computer Wins!" when computer wins). A tied game prints `It's a Tie!`.

## Contributing

Contributions are welcome! Please submit a Pull Request or open an Issue for improvements.

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/SalasNorman/theOdinProject-projectCompilation/blob/main/LICENSE) file for details.
