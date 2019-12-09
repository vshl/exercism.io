=begin
Write your code for the 'Phone Number' exercise in this file. Make the tests in
`phone_number_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/phone-number` directory.
=end
class PhoneNumber
  def self.clean(phone_number)
    return if phone_number.length < 10

    phone_number.gsub!(/[\.()\s-]/, '')

    return if phone_number.length == 11 && phone_number[0] != '1'

    phone_number
  end
end
