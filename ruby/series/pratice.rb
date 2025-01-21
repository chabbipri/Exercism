class Series
  attr_reader :chars

  def initialize(string)
    @chars = string.split("")
  end

  def slices(slice_length)
    validate_argument(slice_length)

    (0..chars.size - slice_length).map do |i|
      chars[i..slice_length - 1 + i].join
    end
  end

  private

  def validate_argument(slice_length)
    raise ArgumentError unless (1..chars.size).cover?(slice_length)
    raise ArgumentError if chars.none?
  end
end
