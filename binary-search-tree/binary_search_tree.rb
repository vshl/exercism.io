=begin
Write your code for the 'Binary Search Tree' exercise in this file. Make the tests in
`binary_search_tree_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/binary-search-tree` directory.
=end
class Bst
  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end

  def insert(value)
    value > data ? insert_right(value) : insert_left(value)
  end

  def insert_left(value)
    @left ? @left.insert(value) : @left = Bst.new(value)
  end

  def insert_right(value)
    @right ? @right.insert(value) : @right = Bst.new(value)
  end

  def each(&block)
    return enum_for(:each) unless block_given?

    left.each(&block) if left
    yield data
    right.each(&block) if right
  end

  attr_reader :data, :left, :right
end
