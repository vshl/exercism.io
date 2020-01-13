=begin
Write your code for the 'Simple Cipher' exercise in this file. Make the tests in
`simple_cipher_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/simple-cipher` directory.
=end
class Cipher
  CHARS = [*'a'..'z']
  ORD = 'a'.ord

  def initialize(key = 'aaaaaaaaaaaaaaaaaa')
    @key = key
    raise ArgumentError unless valid?
  end

  def encode(plaintext)
    plaintext
      .chars
      .zip(key.chars)
      .map do |char, key|
      CHARS[(char.ord - ORD + key.ord - ORD) % CHARS.length]
    end.join
  end

  def decode(encoded)
    encoded
      .chars
      .zip(key.chars)
      .map do |char, key|
      CHARS[char.ord - key.ord]
    end.join
  end

  attr_reader :key

  private

  def valid?
    !key.empty? && key !~ /[^a-z]/
  end
end
