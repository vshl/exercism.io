class Series
  def initialize(series)
    @series = series
  end

  def slices(k)
    raise ArgumentError if series.size < k

    series.each_char.each_cons(k).map(&:join)
  end

  attr_reader :series
end
