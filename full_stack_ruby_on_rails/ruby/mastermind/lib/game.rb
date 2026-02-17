require_relative 'player'
require_relative 'rule'

class Game
  attr_accessor :player, :rule, :turn, :secret_code
  def initialize
    @turn = 1
    # @secret_code = Array(1..6).sample(4)
    @secret_code = [3,1,2,4]
    @player = Player.new
    @rule = Rule.new
  end

  def win?(feedback)
    return unless feedback.join == '+' * Player::MAX_LENGTH
    puts '=== YOU WIN ==='
    true
  end

  def lose?(turn)
    return unless turn >= Player::NUMBER_OF_GUESSES

    puts '=== YOU LOSE ==='
    true
  end

  def start
    player.greet
    # puts secret_code.join
    loop do
      remaining_guess = []
      feedback = []
      remaining_secret_code = []

      print "Guess #{turn}: "
      input = gets.chomp
      guess = input.chars.map(&:to_i)
      next if player.number?(input) == false
      next if player.max_length?(guess) == false
      next if player.duplicate?(guess) == false
      next if player.valid_range?(guess) == false

      rule.correct_position_guess(secret_code, guess, remaining_guess, remaining_secret_code, feedback)
      rule.correct_guess(remaining_guess, remaining_secret_code, feedback)
      puts "Feedback: #{feedback.join}"

      break if win?(feedback) == true
      break if lose?(turn) == true

      self.turn += 1
    end
  end
end
