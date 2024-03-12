# 49142 ==> 3
# 491, 914, 142
# return number if series < number

class Series
  attr_reader :chars

  def initialize(string)
    @chars = string
  end

  def slices(slice)
    check_errors(slice)

    return [chars] if chars.size == slice

    start_num = 0
    series = []

    while slice <= chars.size
      series << chars[start_num...slice]
      start_num += 1
      slice += 1
    end
    series
  end

  private

  def check_errors(slice)
      chrs_size = chars.size
      raise ArgumentError if (chrs_size < slice || slice == 0 || chrs_size == 0 || slice < 0 )
      return [chars] if chrs_size == slice
  end
end