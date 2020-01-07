=begin
Write your code for the 'Triangle' exercise in this file. Make the tests in
`triangle_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/triangle` directory.
=end
class Triangle
  def initialize(edges)
    @edges = edges
  end

  def equilateral?
    triangle? && edges.uniq.count == 1
  end

  def isosceles?
    triangle? && edges.uniq.count <= 2
  end

  def triangle?
    return false if edges.any?(&:zero?)

    edges.all? { |edge| edge < edges.sum - edge }
  end

  def scalene?
    triangle? && edges.uniq.count == 3
  end

  attr_reader :edges
end
