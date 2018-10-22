require_relative 'kangaroo.rb'
require_relative 'kangaroobuilder.rb'
require_relative 'grid.rb'
require_relative 'tetrahedron.rb'

class Game
  attr_accessor :skippy, :grid, :tetrahedron

  def initialize(dimension)
    @skippy = KangarooBuilder.new().set_name("Skippy").set_position(0,0).init_hops.get
    @grid = Grid.new(dimension)
    @tetrahedron = Tetrahedron.new
  end

  def take_turn
    result = @tetrahedron.roll
    @tetrahedron.gather_roll(result)
    @skippy.hop(result, @grid)
  end

  def play
    while !@skippy.arrived?(@grid)
      take_turn
    end
  end
end