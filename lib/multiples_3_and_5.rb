# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
# The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

class MultipleFinder
  attr_reader :num1, :num2

  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end

  def find_multiple_sum(limit)
    multiples = (1..limit - 1).find_all { |i| i % num1 == 0 || i % num2 == 0}
    multiples.reduce(:+)
  end
end

finder = MultipleFinder.new(3, 5)

puts finder.find_multiple_sum(1000)
