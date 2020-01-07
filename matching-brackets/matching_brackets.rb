=begin
Write your code for the 'Matching Brackets' exercise in this file. Make the tests in
`matching_brackets_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matching-brackets` directory.
=end
class Brackets
  def self.paired?(brackets)
    stack = []
    mapping = {
      '(' => ')',
      '[' => ']',
      '{' => '}',
      '\'' => '\''
    }

    brackets.each_char do |char|
      next unless mapping.any? { |k, v| k == char || v == char }

      if mapping.key?(char)
        stack << mapping[char]
      else
        open = stack.pop
        return false unless open == char
      end
    end
    stack.empty?
  end
end
