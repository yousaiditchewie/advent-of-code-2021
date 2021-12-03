require_relative "day_2_input"

class Problem1
  attr_reader :answer

  def initialize(input:)
    @answer = find_position(input: input)
  end
end

class Problem2
  attr_reader :answer
  
  def initialize(input:)
    @answer = find_position_with_aim(input: input)
  end
end

def find_position(input:)
  horizontal = 0
  depth = 0

  input.each do |course|
    direction = course.split(' ')[0]
    velocity = course.split(' ')[1].to_i

    horizontal += velocity if direction == "forward"
    depth += velocity if direction == "down"
    depth -= velocity if direction == "up"
  end

  return horizontal * depth
end

def find_position_with_aim(input:)
  horizontal = 0
  depth = 0
  aim = 0

  input.each do |course|
    direction = course.split(' ')[0]
    units = course.split(' ')[1].to_i

    if direction == "forward"
      horizontal += units 
      depth += aim * units
    end
    aim += units if direction == "down"
    aim -= units if direction == "up"
  end

  return horizontal * depth
end

# puts Problem1.new(input: PROBLEM_INPUT).answer
# Answer: 2027977

# puts Problem2.new(input: PROBLEM_INPUT).answer
# Answer: XXXX
