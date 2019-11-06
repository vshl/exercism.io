=begin
Write your code for the 'Armstrong Numbers' exercise in this file. Make the tests in
`armstrong_numbers_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/armstrong-numbers` directory.
=end
class ArmstrongNumbers
  def self.include?(number)
    n = number.digits.count
    number.digits.map { |d| d ** n }.sum == number
  end
end
