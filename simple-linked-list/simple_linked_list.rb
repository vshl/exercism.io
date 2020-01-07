=begin
Write your code for the 'Simple Linked List' exercise in this file. Make the tests in
`simple_linked_list_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/simple-linked-list` directory.
=end
class Element
  def initialize(datum)
    @datum = datum
    @next = nil
  end

  attr_accessor :datum, :next
end

class SimpleLinkedList
  def initialize(list = [])
    @list = list.to_a.reverse.map { |e| Element.new(e) }
    @head = nil
  end

  def push(element)
    list.unshift(element)
    self
  end

  def pop
    list.shift
  end

  def to_a
    list.map(&:datum)
  end

  def reverse!
    list.reverse!
    self
  end

  attr_accessor :list
end
