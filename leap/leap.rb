# Write your code for the 'Leap' exercise in this file. Make the tests in
# `leap_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/leap` directory.
class Year
  def self.leap?(year)
    (year % 4).zero? && (year % 100 != 0 || (year % 400).zero?)
  end
end
