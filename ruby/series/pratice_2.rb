class Series
  attr_reader :series

  def initialize(series)
    @series = series
  end

  def slices(length)
    validate_errors(length)

    string_of_digits = []
    n = (series.size - length) + 1

    n.times do |i|
      string_of_digits << series[i...(length + i)]
    end
    string_of_digits
  end

  private

  def validate_errors(length)
    raise ArgumentError if series.size < length
    raise ArgumentError if length < 1
  end
end