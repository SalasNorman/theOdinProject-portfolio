class Player
  NUMBER_OF_GUESSES = 12
  MAX_LENGTH = 4

  LINE_SPACE = '=' * 50

  def greet
    puts LINE_SPACE
    puts 'Welcome to Mastermind'
    puts LINE_SPACE
    puts "I'm thinking of a 4-digit code (1 to 6)"
    puts 'No duplicate digits allowed'
    puts "Can you guess it in #{NUMBER_OF_GUESSES} turns?"
    puts LINE_SPACE
    puts 'Feedback:'
    puts '  +  correct number in correct position'
    puts '  -  correct number in wrong position'
    puts '-------- Ctrl + C to exit--------'
    puts LINE_SPACE
  end

  def number?(input)
    return if /\A\d+\Z/.match?(input)

    puts '=== Has letter ==='
    false
  end

  def max_length?(input)
    return if input.length == MAX_LENGTH

    puts '=== 4 digit only ==='
    false
  end

  def duplicate?(input)
    return if input.uniq.length == MAX_LENGTH

    puts '=== No Dupicate digit allowed ==='
    false
  end

  def valid_range?(guess)
    return if guess.all? { |num| Array(1..6).include?(num) }

    puts '=== Must between 1-6 ==='
    false
  end
end
