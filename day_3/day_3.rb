require_relative "day_3_input"

class Problem1
  attr_reader :answer

  def initialize(input:)
    @answer = power_consumption(input: input)
  end
end

def power_consumption(input:)
  gamma = calculate_gamma(input: input)
  epsilon = calculate_epsilon(input: input)

  multiply(gamma: gamma, epsilon: epsilon)
end

def calculate_gamma(input:)
  binary_number = ""
  unit_length = input[0].to_s.length
  unit_length.times do |idx|
    ones = []
    zeros = []
    input.each do |element|
      ones << element[idx] if element[idx] == 1
      zeroes << element[idx] if element[idx] == 0
    end

    if ones.count > zeroes.count
      binary_number << 1
    else
      binary_number << 0
    end
  end


end

def calculate_epsilon(input:)
end

def to_decimal(binary:)
end

def multiply(gamma:, epsilon:)
  gamma * epsilon
end