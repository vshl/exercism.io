=begin
Write your code for the 'Run Length Encoding' exercise in this file. Make the tests in
`run_length_encoding_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/run-length-encoding` directory.
=end

class RunLengthEncoding
  def self.encode(input)
    input
      .chars
      .chunk { |c| c }
      .collect { |k, v| [v.length > 1 ? v.length : '', k]. join }
      .join
  end

  def self.decode(input)
    input
      .scan(/(\d*)([ \w]+?)/)
      .map { |c| c[1] * (c[0] != '' ? c[0].to_i : 1) }
      .join
  end
end
