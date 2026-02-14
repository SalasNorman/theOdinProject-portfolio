require_relative 'player'

class Computer < Player
  def initialize(symbol = 'X')
    super('Computer', symbol)
  end

  def get_move(board)
    board.table.flatten.select { |value| value.class == Integer }.sample
  end
end
