require 'test/unit'
require_relative '../grid'
require_relative '../point'
require_relative '../kangaroobuilder'
require_relative '../kangaroo'

class KangarooTest < Test::Unit::TestCase
  def setup
    @kangaroo = KangarooBuilder.new.set_name("test").set_position(0,0).init_hops.get
  end

  def test_initialization
    assert(@kangaroo.number_of_hops == 0, "Wrong starting number of hops.")
  end

  def test_arrived?
    assert(@kangaroo.arrived?(Grid.new(1)), "Actually on the home position (0,0) with dimension 1")
    assert(!@kangaroo.arrived?(Grid.new(2)), "Shouldn't be arrived (0,0)")
  end
end