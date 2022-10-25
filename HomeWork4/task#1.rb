# colors = ['red', 'blue', 'black']
# serial = 0

class BricksFactory < Brick
  def initialize(number)
    number.times do
       super
    end
  end

  def total_number_of_bricks
#     return @serial_number
    return self::serial_number
  end

  #- which must return the last 10 created unbroken bricks of the requested color.
  def unbroken_bricks(color)
    return objects.sort_by(color)
  end

  #- which must return a sorted array of unbroken bricks (sorting by color).
  def sorted array_of_unbroken_bricks(color)
    return objects.sort_by(color)
  end
end

class Brick

#   serial
  attr_accessor :color, :serial_number, :state

  def initialize(color)
    @color = color
    state = rand(100)
    if state <= 20
     @state = "broken"
     @serial_number = 0
    else
#      serial = serial + 1
#      @serial_number = serial
     @serial_number = (ObjectSpace.each_object(Brick).count * 0.8).ceil  # unusable because of garbage collector
    end
  end
end
