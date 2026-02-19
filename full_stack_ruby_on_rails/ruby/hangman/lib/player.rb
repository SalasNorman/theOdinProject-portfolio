class Player
  attr_reader :guessed_letters

  def initialize
    @guessed_letters = []
  end

  def guess
    loop do
      print 'Enter a letter: '
      input = gets.chomp.downcase

      error = validate(input)

      return input if error.nil?

      puts error
    end
  end

  def add_guess(letter)
    guessed_letters << letter
  end

  private

  def validate(input)
    return 'Please enter ONE letter (a-z) only.' unless input.match?(/\A[a-z]\z/)
    return "You already guessed '#{input}'." if guessed_letters.include?(input)

    nil
  end
end
