=begin
Write your code for the 'Largest Series Product' exercise in this file. Make the tests in
`largest_series_product_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/largest-series-product` directory.
=end

class Series
  def initialize(string)
    raise ArgumentError if string.chars.any? { |s| s =~ /[a-zA-Z]/ }

    @string = string.chars.map(&:to_i)
  end

  def substring_product(span)
    string.each_cons(span).to_a
  end

  def largest_product(span)
    return 1 if span.zero?

    raise ArgumentError if span > string.length || span.negative?

    substring_product(span).map { |substring| substring.reduce(:*) }.max
  end

  attr_reader :string
end
