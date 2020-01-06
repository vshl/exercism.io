=begin
Write your code for the 'Strain' exercise in this file. Make the tests in
`strain_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/strain` directory.
=end
class Array
  def keep(&block)
    self.select { |element| block.call(element) }
  end

  def discard(&block)
    self.reject { |element| block.call(element) }
  end
end
