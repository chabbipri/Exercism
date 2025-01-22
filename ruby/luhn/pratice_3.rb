class Luhn
  def self.valid?(digits_string)
    clean_string = digits_string.gsub(" ", "")
    return false unless clean_string =~ /\A\d+\z/

    digits = clean_string.chars.map(&:to_i)
    return false if digits.size <= 1

    sum_of_digits = digits.reverse.each_with_index.sum do |digit, index|
      if index.odd?
        digit = digit * 2
        digit -= 9 if digit > 9
      end
      digit
    end
    sum_of_digits % 10 == 0
  end
end
