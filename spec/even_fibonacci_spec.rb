require 'spec_helper'
require 'even_fibonacci.rb'

describe 'FibonacciFinder' do
  let(:finder) { FibonacciFinder.new }

  describe '#find_sequence' do
    it 'returns the fibonacci sequence that are less than the given integer' do
      finder.find_sequence(90).must_equal [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
    end
  end

  describe '#add_evens' do
    it 'adds the even fibonacci numbers that are less than the given integer' do
      finder.add_evens(90).must_equal 44
    end
  end
end
