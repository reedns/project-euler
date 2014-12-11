class MultipleFinder
  attr_reader :num1, :num2

  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end

  def find_multiple_sum(limit)
    multiples = []
    (1..limit - 1).to_a.each do |num|
      multiples << num if num % num1 == 0
      multiples << num if num % num2 == 0
    end
    multiples
  end
end
