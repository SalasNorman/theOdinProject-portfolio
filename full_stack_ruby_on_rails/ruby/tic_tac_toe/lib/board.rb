class Board
  attr_accessor :table

  def initialize
    @table = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  end

  def display
    table.each_with_index do |row, index|
      display_row = row.map do |cell|
        if cell == 'O'
          Rainbow(cell).blue
        elsif cell == 'X'
          Rainbow(cell).red
        else
          cell
        end
      end

      puts display_row.join(' | ')
      puts '----------' unless index == table.length - 1
    end
  end

  def update(input, symbol)
    table.each do |row|
      row.map! { |value| value == input ? symbol : value }
    end
  end

  def valid_move?(input)
    table.flatten.include?(input)
  end

  def full?
    table.flatten.none? { |value| value.class == Integer }
  end
end
