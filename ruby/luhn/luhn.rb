class Luhn
  def self.valid?(digits_string)
    string = digits_string.gsub(" ", "")
    non_digits = string.scan(/\D/)
    return false if non_digits.any?

    digits = string.reverse.chars.map(&:to_i)
    return false if digits.one?

    sum =
      digits.map.with_index do |digit, i|
        i.odd? ? double_digit(digit) : digit
      end.sum

    divisible?(sum, by: 10)
  end

  private

  def self.double_digit(digit)
    (digit * 2).digits.sum
  end

  def self.divisible?(dividend, by:)
    divisor = by
    dividend % divisor == 0
  end
end
