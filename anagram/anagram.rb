=begin
Write your code for the 'Anagram' exercise in this file. Make the tests in
`anagram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/anagram` directory.
=end

class Anagram
  def initialize(word)
    @word = word
  end

  def match(list)
    list.select { |w| anagram?(w) }
  end

  private

  def anagram?(word_to_match)
    word.downcase.chars.sort == word_to_match.downcase.chars.sort unless identical?(word_to_match)
  end

  def identical?(word_to_match)
    word.downcase == word_to_match.downcase
  end

  attr_reader :word
end
