=begin
Write your code for the 'Perfect Numbers' exercise in this file. Make the tests in
`perfect_numbers_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/perfect-numbers` directory.
=end
class PerfectNumber
  def self.classify(number)
    raise RuntimeError if number < 0

    aliquot = 0
    @number = number
    (1...@number).each do |i|
      aliquot += i if factor?(i)
    end
    if aliquot == @number
      'perfect'
    elsif aliquot > @number
      'abundant'
    else
      'deficient'
    end
  end

  def self.factor?(int)
    (@number % int).zero?
  end
end
