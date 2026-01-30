# Caesar Cipher

A simple Ruby implementation of the Caesar cipher encryption algorithm.

## Description

The Caesar cipher is a type of substitution cipher where each letter in the plaintext is shifted a certain number of places down the alphabet. This project provides a Ruby script to encrypt text using this method, preserving case and non-alphabetic characters.

## Features

- Encrypts both uppercase and lowercase letters
- Leaves non-alphabetic characters unchanged
- Supports any integer shift value (positive or negative)

## Requirements

- Ruby (version 2.0 or higher)

## Usage

1. Clone or download the repository.
2. Navigate to the `caesar_cipher` directory.
3. Run the script:

   ```bash
   ruby caesar_cipher.rb
   ```

The script includes built-in examples that will print encrypted outputs.

## Examples

```ruby
caesar_cipher("Hello World", 3)
# Output: "Khoor Zruog"

caesar_cipher("What a string!", 5)
# Output: "Bmfy f xywnsl!"
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request or open an Issue for any bugs, features, or improvements.

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/SalasNorman/theOdinProject-projectCompilation/blob/main/LICENSE) file for details.
