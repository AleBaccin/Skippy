class Kangaroo
  attr_accessor :name, :position, :number_of_hops

  def hop(face, grid)
    case face
    when face = 1
      move_north(grid)
    when face = 2
      move_south(grid)
    when face = 3
      move_east(grid)
    when face = 4
      move_west(grid)
    end
  end

  def arrived?(grid)
    @position.equals?(Point.new(grid.dimension - 1, grid.dimension - 1))
  end

  def move_north(grid)
    x = @position.x
    y = @position.y
    if !grid.out_of_grid?(Point.new(x, y + 1))
      @position.y =  y + 1
      increment_hops
      puts(@position.to_s)
    else
      puts("Ooops #{Point.new(x, y + 1).to_s}")
    end
  end

  def move_south(grid)
    x = @position.x
    y = @position.y
    if !grid.out_of_grid?(Point.new(x, y - 1))
      @position.y =  y - 1
      increment_hops
      puts(@position.to_s)
    else
      puts("Ooops #{Point.new(x, y - 1).to_s}")
    end
  end

  def move_east(grid)
    x = @position.x
    y = @position.y
    if !grid.out_of_grid?(Point.new(x + 1, y))
      @position.x =  x + 1
      increment_hops
      puts(@position.to_s)
    else
      puts("Ooops #{Point.new(x + 1, y).to_s}")
    end
  end

  def move_west(grid)
    x = @position.x
    y = @position.y
    if !grid.out_of_grid?(Point.new(x - 1, y))
      @position.x =  x - 1
      increment_hops
      puts(@position.to_s)
    else
      puts("Ooops #{Point.new(x - 1, y).to_s}")
    end
  end

  def increment_hops
    @number_of_hops = @number_of_hops + 1
  end

  def to_s
    "name:#{@name} position:#{@position} number of hops:#{@number_of_hops}"
  end
end