=begin
Write your code for the 'Linked List' exercise in this file. Make the tests in
`linked_list_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/linked-list` directory.
=end
class Deque
  def initialize(list = [])
    @list = list
  end

  def push(value)
    list.unshift(value)
  end

  def pop
    list.shift
  end

  def shift
    list.pop
  end

  def unshift(value)
    list << value
  end

  attr_accessor :list
end
