=begin
Write your code for the 'Custom Set' exercise in this file. Make the tests in
`custom_set_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/custom-set` directory.
=end
class CustomSet
  def initialize(buffer)
    @buffer = buffer
  end

  def empty?
    buffer.empty?
  end

  def member?(element)
    buffer.include?(element)
  end

  def subset?(set)
    buffer.all? { |element| set.member?(element) }
  end

  def disjoint?(set)
    buffer.none? { |element| set.member?(element) }
  end

  def ==(other)
    subset?(other) && other.subset?(self)
  end

  def add(value)
    buffer << value
    self
  end

  def intersection(other)
    CustomSet.new(buffer & other.buffer)
  end

  def difference(other)
    CustomSet.new(buffer - other.buffer)
  end

  def union(other)
    CustomSet.new(buffer + other.buffer)
  end

  attr_reader :buffer
end
