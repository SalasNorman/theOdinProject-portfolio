**NOTE:** I only use AI for README and commit. That what AI use for.

# Substrings

A Ruby implementation of a substring counter that finds and counts occurrences of words from a dictionary within a given string.

## Description

This project provides a Ruby script that takes a string and a dictionary of words, then returns a hash with the count of how many times each dictionary word appears as a substring in the input string. The matching is case-insensitive.

## Features

- Case-insensitive substring matching
- Counts multiple occurrences of the same word
- Returns a hash with word counts
- Efficient scanning using Ruby's scan method

## Requirements

- Ruby (version 2.0 or higher)

## Usage

1. Clone or download the repository.
2. Navigate to the `sub_string` directory.
3. Run the script:

   ```bash
   ruby sub_string.rb
   ```

The script includes built-in examples that will print the substring counts.

## Live Demo

Try the Substrings counter online: [Paiza.io Demo](https://paiza.io/projects/Zev12u-5QouWglY20uet-A)

## Examples

```ruby
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)
# Output: { "below" => 1, "low" => 1 }

substrings("Howdy partner, sit down! How's it going?", dictionary)
# Output: { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request or open an Issue for any bugs, features, or improvements.

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/SalasNorman/theOdinProject-projectCompilation/blob/main/LICENSE) file for details.
