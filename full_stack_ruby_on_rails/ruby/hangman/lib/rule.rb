class Rule
  MAX_ATTEMPTS = 6

  attr_reader :wrong_attempts

  def initialize
    @wrong_attempts = 0
  end

  def correct_guess?(secret_word, letter)
    secret_word.include?(letter)
  end

  def increment_wrong_attempts
    @wrong_attempts += 1
  end

  def win?(secret_word, display_word)
    secret_word == display_word
  end

  def lose?
    wrong_attempts >= MAX_ATTEMPTS
  end

  def game_over?(secret_word, display_word)
    win?(secret_word, display_word) || lose?
  end
end
