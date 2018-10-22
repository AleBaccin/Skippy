require_relative 'point.rb'

class Grid
  attr_accessor :dimension

  def initialize(dimension)
    @dimension = dimension
  end

  def out_of_grid?(point)
    (point.x < 0 || point.x > @dimension-1) || (point.y < 0 || point.y > @dimension-1)
  end

  def to_s
    "width:#{@dimension}, height:#{@dimension}"
  end
end