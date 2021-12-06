require_relative "day_3"
require_relative "day_3_input"

describe Problem1 do
  it "should return the 198 given the sample input" do
    @problem_1 = Problem1.new(input: SAMPLE_INPUT)
    expect(@problem_1.answer).to eq(198)
  end
end

# describe Problem2 do
#   it "should return 900 given the sample input" do
#     @problem_2 = Problem2.new(input: SAMPLE_INPUT)
#     expect(@problem_2.answer).to eq(900)
#   end
# end
