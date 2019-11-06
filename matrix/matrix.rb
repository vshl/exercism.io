class Matrix
  def initialize(matrix)
    @matrix = matrix
  end

  def rows
    matrix.split("\n").map(&:split).map { |a| a.map(&:to_i) }
  end

  def columns
    rows.transpose
  end

  attr_reader :matrix
end
