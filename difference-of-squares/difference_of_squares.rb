=begin
Write your code for the 'Difference Of Squares' exercise in this file. Make the tests in
`difference_of_squares_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/difference-of-squares` directory.
=end
class Squares
  def initialize(number)
    @number = number
  end

  def square_of_sum
    sum = (1..number).each.reduce(:+)
    sum*sum
  end

  def sum_of_squares
    square = 0
    (1..number).each do |n|
      square += n * n
    end
    square
  end

  def difference
    square_of_sum - sum_of_squares
  end

  attr_reader :number
end
