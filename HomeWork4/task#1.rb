class BricksFactory
  # should be able to create a given number of bricks, randomly determine the color of each brick
  def create_brick(number)
    # foreach
    # :color.sample
  end

  def totall_number_of_bricks
    return 
  end

  #- which must return the last 10 created unbroken bricks of the requested color.
  def unbroken_bricks(color)
    
  end

  #- which must return a sorted array of unbroken bricks (sorting by color).
  def sorted array_of_unbroken_bricks(color)
    
  end

end

Class Brick
  attr_accessor :color, :serial_number, :state

  def initialize(color, serial_number)
    @color = color

    @serial_number = serial_number
    state = rand(100)
    if state <= 20
     @state = "broken"
    end

  end

end