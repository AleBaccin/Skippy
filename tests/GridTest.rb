require 'test/unit'
require_relative '../grid'
require_relative '../point'

class GridTest < Test::Unit::TestCase
  def setup
    @grid = Grid.new(10)
  end

  def test_boudaries
    assert(@grid.out_of_grid?(Point.new(0,-1)), '(0,-1) incorrectly stated to be inside grid')
    assert(@grid.out_of_grid?(Point.new(10,0)), '(10,0) incorrectly stated to be inside grid')
    assert(@grid.out_of_grid?(Point.new(11,-2)), '(11,-2) incorrectly stated to be inside grid')

    assert(!@grid.out_of_grid?(Point.new(0,0)), '(0,0) incorrectly stated to be outside grid')
    assert(!@grid.out_of_grid?(Point.new(9,0)), '(9,0) incorrectly stated to be outside grid')
    assert(!@grid.out_of_grid?(Point.new(9,1)), '(9,1) incorrectly stated to be outside grid')
  end
end