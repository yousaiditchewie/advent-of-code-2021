require_relative "day_1"
require_relative "day_1_problem_1_puzzle_input"

describe Problem1 do
  before do
    @problem_1 = Problem1.new(input: SAMPLE_INPUT)
  end
  
  context "Happy path" do
    it "Should output the input" do
      expect(@problem_1.answer).to eq(7)
    end
  end
end

describe Problem2 do
  before do
    @problem_2 = Problem2.new(input: SAMPLE_INPUT)
  end
  
  context "Happy path" do
    it "Should output the input" do
      expect(@problem_2.answer).to eq(5)
    end
  end
end