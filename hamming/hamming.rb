=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

class Hamming
  def self.compute(strand1, strand2)
    return 0 if strand1.empty? && strand2.empty?

    raise ArgumentError if strand1.length != strand2.length

    n = strand1.length || strand2.length
    distance = 0
    (0...n).each do |k|
      distance += 1 unless strand1[k] == strand2[k]
    end
    distance
  end
end
