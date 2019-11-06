=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end
class Raindrops
  def self.convert(num)
    raindrops = ''
    raindrops << 'Pling' if num % 3 == 0
    raindrops << 'Plang' if num % 5 == 0
    raindrops << 'Plong' if num % 7 == 0
    raindrops.empty? ? num.to_s : raindrops
  end
end
