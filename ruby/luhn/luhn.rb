require 'pry'
class Luhn
  def self.valid?(digits_string)
    return false if digits_string.chars.size == 1

    return false if !digits_string.gsub(" ", "").scan(/\D/).empty?

    digits = digits_string.reverse.gsub(" ", "").chars

    return false if digits.size == 1

    sum = 0
    i = 1

    digits.each do |digit|
      i % 2 == 0 ? sum += double_digit(digit) : sum += digit.to_i
      i += 1
    end
    sum % 10 == 0
  end

  private

  def self.double_digit(digit)
    double_digit = digit.to_i * 2
    digit = double_digit - 9 if double_digit > 9
    digit = double_digit if double_digit <= 9
    digit.to_i
  end
end
