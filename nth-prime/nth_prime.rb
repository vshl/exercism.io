=begin
Write your code for the 'Nth Prime' exercise in this file. Make the tests in
`nth_prime_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/nth-prime` directory.
=end
class Prime
  def self.nth(number)
    raise ArgumentError if number < 1

    primes = []
    i = 1
    while primes.size < number
      i += 1
      primes << i if prime?(i)
    end
    i
  end

  def self.prime?(number)
    2.upto(number - 1) do |i|
      return false if (number % i).zero?
    end
    true
  end
end

