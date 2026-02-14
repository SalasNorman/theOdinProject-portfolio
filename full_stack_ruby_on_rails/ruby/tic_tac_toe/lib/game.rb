class Game
  attr_accessor :board, :player, :computer

  def initialize
    @board = Board.new
    @player = Player.new('Player')
    @computer = Computer.new
  end

  def start
    loop do
      puts
      board.display
      break if play_turn
    end
  end

  def play_turn
    # Player move
    loop do
      puts "\nPlayer Input: "
      input = player.get_move
      if board.valid_move?(input)
        board.update(input, player.symbol)
        break
      else
        puts 'Invalid move. Try again.'
      end
    end

    return true if check_winner(player.symbol)
    return true if game_over

    # Computer move
    computer_choice = computer.get_move(board)
    board.update(computer_choice, computer.symbol)

    return true if check_winner(computer.symbol)
    return true if game_over

    false
  end

  def check_winner(symbol)
    t = board.table
    win = t.any? { |row| row.all? { |c| c == symbol } } ||
          t.transpose.any? { |col| col.all? { |c| c == symbol } } ||
          [t[0][0], t[1][1], t[2][2]].all? { |c| c == symbol } ||
          [t[0][2], t[1][1], t[2][0]].all? { |c| c == symbol }

    if win
      board.display
      puts symbol == 'O' ? "\nYou Win!" : "\nComputer Wins!"
    end
    win
  end

  def game_over
    if board.full?
      board.display
      puts "\nIt's a Tie!"
      true
    else
      false
    end
  end
end
