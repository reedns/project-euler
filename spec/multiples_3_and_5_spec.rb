require 'minitest/autorun'
require 'minitest/spec'
require 'multiples_3_and_5.rb'

describe 'MultipleFinder' do
  describe 'find_multiple_sum' do
    it 'finds the all the multiples of 3 and 5 under 10' do
      finder = MultipleFinder.new(3, 5)
      finder.find_multiple_sum(10).must_equal [3, 5, 6, 9]
    end
    it 'finds the sum of all of the multiples'
  end
end
