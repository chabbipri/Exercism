class Luhn
  def self.valid?(digits_string)
    string = digits_string.gsub(" ", "")
    non_digits = string.scan(/\D/)
    return false if non_digits.any?

    digits = string.reverse.chars.map(&:to_i)
    return false if digits.one?

    sum = digits.map.with_index do |digit, i|
      i.odd? ? double_digit(digit) : digit
    end.sum

    sin_number?(sum)
  end

  private

  def self.double_digit(digit)
    product = digit * 2
    product > 9 ? product - 9 : product
  end

  def self.sin_number?(sum)
    sum % 10 == 0 ? true : false
  end

end


#4539 3195 0343 6467
# Remove the spaces.
# 4539319503436467
# Double the second element from right
# 4_3_ 3_9_ 0_4_ 6_6_
# digit > 9 , digit - 9
# Add all the digits
