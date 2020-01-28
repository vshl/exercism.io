=begin
Write your code for the 'Accumulate' exercise in this file. Make the tests in
`accumulate_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/accumulate` directory.
=end
module Accumulate
  def accumulate(&block)
    return self unless block

    map { |i| block.call(i) }
  end
end

class Array
  include Accumulate
end
