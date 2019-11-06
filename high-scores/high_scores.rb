class HighScores
  def initialize(scores)
    @scores = scores
  end

  def latest
    scores[-1]
  end

  def personal_best
    scores.max
  end

  def personal_top_three
    scores.sort.reverse.first(3)
  end

  attr_reader :scores
end
