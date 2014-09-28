#!/usr/bin/env ruby

class Eratosthenes
  def self.sieve(upper_bound)
    # create an initial list of numbers, shift the index to avoid
    # computing the shift every iteration
    numbers = [nil, nil, *2..upper_bound]

    (2..upper_bound).map do |number|
      (number**2..upper_bound).step(number).map do |not_prime|
        numbers[not_prime] = nil if numbers[not_prime]
      end
    end

    numbers.compact
  end
end
