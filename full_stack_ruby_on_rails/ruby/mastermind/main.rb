# # check if there not number
# def number?(input)
#   unless /\A\d+\Z/.match?(input)
#     puts "=== Has letter ==="
#     false
#   end
# end

# def max_length?(input)
#   unless input.length == MAX_LENGTH
#     puts "=== 4 digit only ==="
#     false
#   end
# end

# def duplicate?(input)
#   unless input.uniq.length == MAX_LENGTH
#     puts "=== No Dupicate digit allowed ==="
#     false
#   end
# end

# def valid_range?(guess)
#   unless guess.all? { |num| Array(1..6).include?(num) }
#   puts '=== Must between 1-6 ==='
#   false
# end

# def greet
#   puts "|============================================"
#   puts "|  Welcome to Mastermind"
#   puts "|============================================"
#   puts "|  I'm thinking 4 digit within 1 to 6"
#   puts "|  No duplicate"
#   puts "|  Can you guess it in #{NUMBER_OF_GUESSES} turn"
#   puts "|============================================"
# end

# def correct_position_guess(secret_code, guess, remaining_guess, remaining_secret_code, feedback)
#   guess.each_with_index do |element, index|
#     if secret_code[index] == element
#       feedback << '+'
#     else
#       remaining_guess << element
#       remaining_secret_code << secret_code[index]
#     end
#   end
# end

# def correct_guess(remaining_guess, remaining_secret_code, feedback)
#   remaining_guess.each do |element|
#     if remaining_secret_code.include?(element)
#       feedback << '-'
#     end
#   end
# end

# def win?(feedback)
#   if feedback.join == "+" * MAX_LENGTH
#     puts "=== YOU WIN ==="
#     true
#   end
# end

# def lose?(turn)
#   if turn >= NUMBER_OF_GUESSES
#     puts "=== YOU LOSE ==="
#     true
#   end
# end

# NUMBER_OF_GUESSES = 12
# MAX_LENGTH = 4

# def player_input
#   turn = 1
#   secret_code = Array(1..6).sample(4)

#   greet
#   # puts secret_code.join
#   loop do
#     remaining_guess = []
#     feedback = []
#     remaining_secret_code = []

#     print "Guess #{turn}: "
#     input = gets.chomp
#     guess = input.chars.map(&:to_i)
#     next if number?(input) == false
#     next if max_length?(guess) == false
#     next if duplicate?(guess) == false
#     next if valid_range?(guess) == false

#     correct_position_guess(secret_code, guess, remaining_guess, remaining_secret_code, feedback)
#     correct_guess(remaining_guess, remaining_secret_code, feedback)
#     puts "Feedback: #{feedback.join}"

#     break if win?(feedback) == true
#     break if lose?(turn) == true

#     turn+=1
#   end
# end
# # player_input


require_relative 'lib/game'

begin
  game = Game.new
  game.start
rescue Interrupt
  puts "\n=== Program Terminated ==="
end


# [0,1,2,3]
# [5,2,3,1] code
# [1,2,3,4] guess
#
# # remove correct position and guess
# [5,1]
# [1,4]
# [+,+] << +
#
# # remove correct guess
# [5]
# [4]
# [+,+,-] << -