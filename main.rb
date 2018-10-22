require_relative 'game.rb'

class Main
  puts 'Enter dimension of the Grid (>=1):'
  while((dimension = gets.to_i) < 1) do
    puts 'Dimension must be greater than 0. Please enter dimension of the Grid:'
  end
  game = Game.new(dimension)
  puts(game.skippy.position)
  game.play
  puts(game.skippy.to_s)
  puts(game.tetrahedron.metadata)
  puts(game.tetrahedron.throws)
end