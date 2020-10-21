# Write your code for the 'Scrabble Score' exercise in this file. Make the tests in
# `scrabble_score_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/scrabble-score` directory.
require 'pry'
class Scrabble
  attr_reader :word

  def initialize(word)
    @word = word&.strip&.downcase || ''
  end

  def score
    return 0 if word.empty?

    @score ||=
      begin
        score = 0
        word.each_char do |ch|
          score += letter_scores[ch]
        end
        score
      end
  end

  def letter_scores
    @letter_scores ||=
      letter_values.each_with_object({}) do |(arr, v), h|
        arr.each { |k| h[k] = v }
      end
  end

  def letter_values
    @letter_values ||= {
      %w[a e i o u l n r s t] => 1,
      %w[d g] => 2,
      %w[b c m p] => 3,
      %w[f h v w y] => 4,
      %w[k] => 5,
      %w[j x] => 8,
      %w[q z] => 10
    }
  end

  def self.score(word)
    new(word).score
  end
end
