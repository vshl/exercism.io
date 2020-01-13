=begin
Write your code for the 'Pascals Triangle' exercise in this file. Make the tests in
`pascals_triangle_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/pascals-triangle` directory.
=end
class Triangle
  def initialize(value)
    @value = value
  end

  def rows
    pascal = []
    value.times { |i| pascal << [1] * (i + 1) }
    (0...value).each do |i|
      (1...i).each do |j|
        pascal[i][j] = pascal[i - 1][j - 1] + pascal[i - 1][j]
      end
    end
    pascal
  end

  attr_reader :value
end
