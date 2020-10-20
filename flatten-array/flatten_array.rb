=begin
Write your code for the 'Flatten Array' exercise in this file. Make the tests in
`flatten_array_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/flatten-array` directory.
=end
class FlattenArray
  def self.flatten(array)
    array.each_with_object([]) do |element, result|
      next if element.nil?

      if element.is_a?(Array)
        result.concat(flatten(element))
      else
        result << element
      end
    end
  end
end
