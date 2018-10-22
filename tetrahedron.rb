require_relative 'die.rb'

class Tetrahedron < Die
  attr_accessor :metadata

  def initialize
    @metadata = {"North" => 0, "South" => 0, "East" => 0, "West" =>0}
    super(4)
  end

  def gather_roll(face)
    case face
    when face = 1
      @metadata["North"] += 1
    when face = 2
      @metadata["South"] += 1
    when face = 3
      @metadata["East"] += 1
    when face = 4
      @metadata["West"] += 1
    end
  end

end