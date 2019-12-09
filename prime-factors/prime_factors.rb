=begin
Write your code for the 'Prime Factors' exercise in this file. Make the tests in
`prime_factors_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/prime-factors` directory.
=end
class PrimeFactors
  def self.of(number)
    return [] if number <= 1

    return [number] if number <= 3

    result = []
    div = 2
    while number > 1
      if (number % div).zero?
        number /= div
        result << div
      else
        div += 1
      end
    end
    result
  end
end
