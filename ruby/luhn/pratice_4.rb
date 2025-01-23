class Luhn
  def self.valid?(digit_string)

    string = digit_string.gsub(" ", "")
    non_digits = string.scan(/\D/)
    return false if non_digits.any?

    digits = string.chars.map(&:to_i).reverse
    return false if digits.one?

    sum = 0

    digits.each_with_index do |digit, index|
      if index.odd?
        digit = digit * 2
        digit = digit - 9 if digit > 9
      end
        sum += digit
    end
     return sum % 10 == 0
  end
end