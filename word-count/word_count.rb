class Phrase
  def initialize(phrase)
    @phrase = phrase.downcase.scan(/\b[\w']+\b/)
  end

  def word_count
    phrase.each_with_object(Hash.new(0)) do |word, hash|
      hash[word] += 1
    end
  end

  attr_reader :phrase
end
