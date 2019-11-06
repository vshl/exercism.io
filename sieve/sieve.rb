=begin
Write your code for the 'Sieve' exercise in this file. Make the tests in
`sieve_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/sieve` directory.
=end
class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    return [] if limit < 2

    lot = []
    mark = [false] * (limit + 1)
    (2..limit).each do |number|
      next if mark[number] == true

      lot << number
      (number * number).step(limit, number) do |j|
        mark[j] = true
      end
    end
    lot
  end

  attr_reader :limit
end
