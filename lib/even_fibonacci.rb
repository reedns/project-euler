# By considering the terms in the Fibonacci sequence whose values do not exceed four million,
# find the sum of the even-valued terms.

class FibonacciFinder
  def find_sequence(limit)
    sequence = []
    fib = 1
    prev = 1
    while fib < limit
      sequence << fib
      fib = fib + prev
      prev = fib - prev
    end
    sequence
  end

  def add_evens(limit)
    sequence = find_sequence(limit)
    evens = sequence.select { |i| i.even? }
    evens.inject(:+)
  end
end

fibo = FibonacciFinder.new

puts fibo.add_evens(4_000_000)
