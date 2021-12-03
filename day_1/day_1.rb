require_relative "day_1_problem_1_puzzle_input"

class Problem1
  attr_reader :answer

  def initialize(input:)
    @answer = find_numbers_of_increased_depths(input: input)
  end
  
end


class Problem2
  attr_reader :answer

  def initialize(input:)
    @answer = find_number_of_increased_groups(input: input)
  end

end

def find_number_of_increased_groups(input:)
  group_totals = []
  input.each_cons(3) do |triplet|
    group_totals << triplet.sum
  end
  find_numbers_of_increased_depths(input: group_totals)
end

def find_numbers_of_increased_depths(input:)
  iterator = 0 
  input.each_with_index do |val, idx|
    next if idx == 0
    if val > input[idx - 1]
      iterator += 1
    end
  end
  
  return iterator
end

# puts Problem1.new(input: PUZZLE_INPUT).answer 
# Answer: 1139

# puts Problem2.new(input: PUZZLE_INPUT).answer
# Answer 1103

