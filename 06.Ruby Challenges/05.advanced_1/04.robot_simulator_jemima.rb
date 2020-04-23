# Robot Simulator
# A robot factory's test facility needs a program to verify robot movements.

# The robots have three possible movements:

# turn right
# turn left
# advance
# Robots are placed on a hypothetical infinite grid, facing a particular direction (north, east, south, or west) at a set of {x,y} coordinates, e.g., {3,8}, with coordinates increasing to the north and east.

# The robot then receives a number of instructions, at which point the testing facility verifies the robot's new position, and in which direction it is pointing.

# The letter-string "RAALAL" means:
# Turn right
# Advance twice
# Turn left
# Advance once
# Turn left yet again
# Say a robot starts at {7, 3} facing north. Then running this stream of instructions should leave it at {9, 4} facing west.


class Robot
  ALLOWED_DIRECTIONS = [:east, :west, :north, :south]
  
  attr_accessor :bearing, :x_cord, :y_cord

  def orient(direction)
    raise ArgumentError unless ALLOWED_DIRECTIONS.include?(direction)
    @bearing = direction
  end

  def turn_right
    self.bearing = case bearing
                  when :north
                    :east
                  when :east
                    :south
                  when :south
                    :west
                  when :west
                    :north
                  end
  end

  def turn_left
    directions = {north: :west, west: :south, south: :east, east: :north}
    self.bearing = directions[bearing]
  end

  def at(x, y)
    self.x_cord = x
    self.y_cord = y
  end

  def coordinates
    [x_cord, y_cord]
  end

  def advance
    if bearing == :north
      self.y_cord += 1
    elsif bearing == :south
      self.y_cord -= 1
    elsif bearing == :west
      self.x_cord -= 1
    elsif bearing == :east
      self.x_cord += 1
    end
  end
end

class Simulator
  def instructions(instruction)
    translation = { :L => :turn_left, R: :turn_right, A: :advance }

    instruction.chars.map do |letter|
      translation[letter.to_sym]
    end
  end

  def place(robot, params)
    robot.at(params[:x], params[:y])
    robot.orient(params[:direction])
  end

  def evaluate(robot, given_commands)
    instructions(given_commands).each do |instruction|
      robot.send(instruction)
    end
  end
end