class Luhn
  def self.valid?(number)
    return false unless number.gsub(" ", "").scan(/\D/).empty?

    numbers = number.scan(/[0-9]/).map(&:to_i)

    return false if numbers.length < 2

    numbers.reverse!

    numbers.each_with_index do |num, index|
        if index.odd?
           numbers[index] = (num * 2).digits.sum
        end
    end
    numbers.sum % 10 == 0
  end
end
