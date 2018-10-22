class Die
  attr_accessor :faces, :throws

  def initialize(faces)
    @faces = faces
    @throws = 0
  end

  def roll
    @throws = @throws + 1
    1 + rand(@faces)
  end
end