=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end
class Isogram
  def self.isogram?(input)
    return true if input.empty?

    set = []
    input.each_char do |c|
      next unless c =~ /[[:alpha:]]/
      if set.include?(c.downcase)
        return false
      else
        set << c.downcase
      end
    end
    true
  end
end
