=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end
class Luhn
  def self.valid?(number)

    return false if number =~ /[[:alpha:]]/ || number =~ /[[:punct:]]/

    number = number.gsub(/ /, '')
    return false if number.length <= 1

    (number.length - 2).step(0, -2) do |i|
      if number[i].to_i * 2 < 10
        number[i] = (number[i].to_i * 2).to_s
      else
        number[i] = (number[i].to_i * 2 - 9).to_s
      end
    end
    sum_of_digits = number.each_char.map(&:to_i).sum
    sum_of_digits % 10 == 0
  end
end
