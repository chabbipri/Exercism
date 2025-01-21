class Luhn
  def self.valid?(digits_string)
    string = digits_string.gsub(" ", "")
    non_digits = string.scan(/\D/)
    return false if non_digits.any?

    digits = string.reverse.chars.map(&:to_i)
    return false if digits.one?

    sum = digits.map.with_index{ |digit, i|
      i.odd? ? double_digit(digit) : digit
    }.sum

    sin_check(sum)
  end

  private

  def self.double_digit(digit)
    product = digit * 2
    product > 9 ? product - 9 : product
  end

  def self.sin_check(number)
    number % 10 == 0 ? true : false
  end
end