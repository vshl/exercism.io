=begin
Write your code for the 'Sum Of Multiples' exercise in this file. Make the tests in
`sum_of_multiples_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/sum-of-multiples` directory.
=end
class SumOfMultiples
  def initialize(*probables)
    @probables = probables
  end

  def to(max)
    (1...max)
      .select { |n| multiple?(n) }
      .reduce(0, :+)
  end

  private

  def multiple?(num)
    @probables.any? { |m| (num % m).zero? }
  end

  attr_reader :probables
end
