=begin
Write your code for the 'Robot Simulator' exercise in this file. Make the tests in
`robot_simulator_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/robot-simulator` directory.
=end
class Robot
  def orient(direction)
    raise ArgumentError unless [:east, :west, :north, :south].any?(direction)

    @direction = direction
  end

  def bearing
    @direction
  end

  def turn_right
    case bearing
    when :north
      @direction = :east
    when :east
      @direction = :south
    when :south
      @direction = :west
    when :west
      @direction = :north
    end
  end

  def turn_left
    case bearing
    when :north
      @direction = :west
    when :east
      @direction = :north
    when :south
      @direction = :east
    when :west
      @direction = :south
    end
  end

  def at(x, y)
    @x = x
    @y = y
  end

  def coordinates
    [@x, @y]
  end

  def advance
    case bearing
    when :north
      @y += 1
    when :east
      @x += 1
    when :south
      @y -= 1
    when :west
      @x -= 1
    end
  end
end

class Simulator
  def instructions(instructions)
    instructions.chars.map do |i|
      case i
      when 'L'
        :turn_left
      when 'R'
        :turn_right
      when 'A'
        :advance
      end
    end
  end

  def place(robot, x: 0, y: 0, direction: :east)
    robot.at(x, y)
    robot.orient(direction)
  end

  def evaluate(robot, instructions)
    instructions(instructions).map { |instruction| robot.send(instruction) }
  end
end
