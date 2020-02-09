=begin
Write your code for the 'Change' exercise in this file. Make the tests in
`change_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/change` directory.
=end
class Change
  def self.generate(coins, input)
    raise NegativeTargetError if input.negative?

    return [] unless input.positive?

    return [input] if coins.include?(input)

    1.upto(input) do |i|
      change_sum = coins.repeated_combination(i).find do |change|
        change.sum == input
      end

      return change_sum if change_sum
    end
    raise ImpossibleCombinationError
  end

  class ImpossibleCombinationError < RuntimeError; end
  class NegativeTargetError < RuntimeError; end
end
