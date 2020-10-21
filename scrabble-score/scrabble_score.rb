# Write your code for the 'Scrabble Score' exercise in this file. Make the tests in
# `scrabble_score_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/scrabble-score` directory.
class Scrabble
  attr_reader :word

  def initialize(word)
    @word = word&.strip&.upcase || ''
  end

  def score
    return 0 if word.empty?

    @score ||=
      begin
        score = 0
        letter_values.each do |letters, value|
          score += word.scan(letters).count * value
        end
        score
      end
  end

  def letter_values
    @letter_values ||= {
      /[AWEIOULNRST]/ => 1,
      /[DG]/ => 2,
      /[BCMP]/ => 3,
      /[FHVWY]/ => 4,
      /[K]/ => 5,
      /[JX]/ => 8,
      /[QZ]/ => 10
    }
  end

  def self.score(word)
    new(word).score
  end
end
