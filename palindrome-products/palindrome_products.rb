=begin
Write your code for the 'Palindrome Products' exercise in this file. Make the tests in
`palindrome_products_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/palindrome-products` directory.
=end
class Palindromes
  PalindromeProducts = Struct.new(:value, :factors)
  attr_reader :min_factor, :max_factor

  def initialize(max_factor: 1, min_factor: 1)
    @max_factor = max_factor
    @min_factor = min_factor
  end

  def generate
    pairs.each do |pair|
      product = pair.reduce(:*)
      palindromes[product] << pair if palindrome?(product)
    end
  end

  def largest
    PalindromeProducts.new(*palindromes.max)
  end

  def smallest
    PalindromeProducts.new(*palindromes.min)
  end

  private

  def pairs
    [*min_factor..max_factor].repeated_combination(2).lazy
  end

  def palindromes
    @palindromes ||= Hash.new { |palindrome, product| palindrome[product] = [] }
  end

  def palindrome?(product)
    return false if product.negative? || ((product % 10).zero? && product != 0)

    temp = 0
    while product > temp
      temp = (temp * 10) + (product % 10)
      product /= 10
    end
    [temp, temp / 10].include?(product)
  end
end
