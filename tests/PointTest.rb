require 'test/unit'
require_relative '../point'

class PointTest < Test::Unit::TestCase

  def test_initialize
    point = Point.new(3,7)
    assert_equal(3, point.x, "It should have been initialized to 3")
    assert_equal(7, point.y, "It should have been initialized to 7")
  end

  def test_equals?
    point = Point.new(0, 1)
    copy = Point.new(0,1)
    copy2 = Point.new(0,2)
    assert(point.equals?(copy), 'They actually are the same(0,1) == (0,1)')
    assert(!point.equals?(copy2), 'They actually are not the same(0,1) == (0,2)')
  end
end