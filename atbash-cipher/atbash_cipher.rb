=begin
Write your code for the 'Atbash Cipher' exercise in this file. Make the tests in
`atbash_cipher_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/atbash-cipher` directory.
=end
class Atbash
  def self.encode(plaintext)
    plaintext
      .downcase
      .tr('a-z', [*('a'..'z')].reverse.join)
      .gsub(/[^a-z0-9]/, "")
      .scan(/\w{1,5}/)
      .join(" ")
  end

  def self.decode(encoded)
    encoded
      .tr('a-z', [*('a'..'z')].reverse.join)
      .gsub(/[^a-z0-9]/, "")
      .scan(/\w{1,5}/)
      .join
  end
end

