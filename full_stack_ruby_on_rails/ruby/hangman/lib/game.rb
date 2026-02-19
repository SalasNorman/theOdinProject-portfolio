require_relative 'player'
require_relative 'rule'

class Game
  attr_reader :secret_word, :display_word

  def initialize
    @secret_word = load_random_word
    @display_word = Array.new(secret_word.length, '_')
    @player = Player.new
    @rule = Rule.new
  end

  def play
    until @rule.game_over?(secret_word, display_word)
      show_status
      process_turn
    end

    puts "\nSecret word is '#{secret_word.join}'"
    show_result
  end

  private

  def load_random_word
    random_word = nil
    File.foreach('google-10000-english-no-swears.txt').with_index do |line, index|
      random_word = line.strip if rand(index + 1) == 0
    end
    random_word.chars
  end

  def process_turn
    letter = @player.guess
    return if @player.guessed_letters.include?(letter)

    @player.add_guess(letter)

    if @rule.correct_guess?(secret_word, letter)
      update_display(letter)
    else
      @rule.increment_wrong_attempts
    end
  end

  def update_display(letter)
    secret_word.each_with_index do |char, index|
      display_word[index] = char if char == letter
    end
  end

  def show_status
    puts "\nWord: #{display_word.join(' ')}"
    puts "Guessed: #{@player.guessed_letters.join(', ')}"
    puts "Wrong attempts: #{@rule.wrong_attempts}/#{Rule::MAX_ATTEMPTS}"
  end

  def show_result
    if @rule.win?(secret_word, display_word)
      puts '=== You win! ==='
    else
      puts '=== You lose! ==='
    end
  end
end
