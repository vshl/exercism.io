=begin
Write your code for the 'Circular Buffer' exercise in this file. Make the tests in
`circular_buffer_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/circular-buffer` directory.
=end
class CircularBuffer
  class BufferEmptyException < RuntimeError; end
  class BufferFullException < RuntimeError; end

  def initialize(size)
    @size = size
    @buffer = []
  end

  def read
    raise BufferEmptyException if @buffer.empty?

    @buffer.shift
  end

  def write(value)
    raise BufferFullException if full?

    @buffer << value
  end

  def write!(value)
    read if full?
    write(value)
  end

  def clear
    @buffer = []
  end

  private

  def full?
    @buffer.size == @size
  end
end
