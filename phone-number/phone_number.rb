=begin
Write your code for the 'Phone Number' exercise in this file. Make the tests in
`phone_number_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/phone-number` directory.
=end
class PhoneNumber
  def self.clean(phonenumber)
    phonenumber = phonenumber.gsub(/\D/, '')
    phonenumber = phonenumber[1..-1] if /1\d{10}/.match?(phonenumber)
    phonenumber if valid?(phonenumber)
  end

  def self.valid?(number)
    /^[2-9]\d\d[2-9]\d{6}$/.match?(number)
  end
end
