require_relative 'kangaroo.rb'
require_relative 'point.rb'
require_relative 'grid.rb'

class KangarooBuilder
  attr_accessor :kangaroo

  def initialize
    @kangaroo = Kangaroo.new
    self
  end

  def set_name(name)
    @kangaroo.name = name
    self
  end

  def set_position(x,y)
    @kangaroo.position = Point.new(x,y)
    self
  end

  def init_hops
    @kangaroo.number_of_hops = 0
    self
  end

  def get
    @kangaroo
  end
end