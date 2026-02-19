require_relative 'lib/game'
# Start game
begin
  game = Game.new
  game.play
rescue Interrupt
  puts 'Program close'
end
