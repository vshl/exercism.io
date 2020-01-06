# Write your code for the 'Pig Latin' exercise in this file. Make the tests in
# `pig_latin_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/pig-latin` directory.
class PigLatin
  def self.translate(string)
    string
      .split(/ /)
      .map { |word| PigLatin.new(word).translate }
      .join(' ')
  end

  attr_reader :word

  def initialize(word)
    @word = word
  end

  def translate
    return "#{word}ay" if begins_with_vowel?

    return "y#{word[0]}ay" if y_after_consonant?

    rot = begins_with_qu? ? 2 : 1
    PigLatin.new(word.chars.rotate(rot).join).translate
  end

  private

  def begins_with_vowel?
    word.start_with?('a', 'e', 'i', 'o', 'u', 'xr', 'yt')
  end

  def begins_with_qu?
    word.start_with?('qu')
  end

  def y_after_consonant?
    word.length == 2 && word[1] == 'y'
  end
end
