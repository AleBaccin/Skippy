class Point
  attr_accessor :x, :y

  def initialize(x, y)
    @x, @y = x, y
  end

  def equals?(other)
    @x==other.x && @y==other.y
  end

  def to_s
    "x:#{x} y:#{y}"
  end
end