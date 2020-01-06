=begin
Write your code for the 'Binary Search' exercise in this file. Make the tests in
`binary_search_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/binary-search` directory.
=end
class BinarySearch
  def initialize(list)
    raise ArgumentError unless list.sorted?

    @list = list
    @middle = (list.size - 1) / 2
  end

  def search_for(element)
    raise RuntimeError unless list.include?(element)

    left = 0
    right = list.size - 1
    while left < right
      mid = left + (right - left) / 2
      return mid if list[mid] == element

      if list[mid] < element
        left = mid + 1
      else
        right = mid - 1
      end
    end
  end

  attr_accessor :list, :middle
end

module Enumerable
  def sorted?
    each_cons(2).all? { |a, b| (a <=> b) <= 0 }
  end
end
