require 'minitest/autorun'
require 'minitest/spec'
require 'multiples_3_and_5.rb'

describe 'MultipleFinder' do
  let(:finder) { MultipleFinder.new(3, 5) }

  describe 'find_multiple_sum' do
    it 'finds the sum of all of the multiples within the given limit' do
      finder.find_multiple_sum(10).must_equal 23
    end
  end
end
