# number = 4539 3195 0343 6467
# step1 = 4_3_ 3_9_ 0_4_ 6_6_
# Double step1, minus 9 is the doubling number is greater than 9= 8_6_ 6_9_ 0_8_ 3_3_
# step2 = _5_9 _1_5 _3_3 _4_7
# Combine step1 and step2 = 8569 6195 0383 3437
# If the sum is evenly divisible by 10, then the number is valid. This number is valid!

class Luhn
  def self.valid?(card_number)
    false if card_number.chars.size <= 1

    numbers_array = card_number.split("")
    numbers_array.map!(&:to_i)

    i = 0
    numbers_array.each do |i|
      break if i > numbers_array.size
      if (numbers_array[i] * 2) > 9
        numbers_array[i] = (numbers_array[i] * 2) - 9
      else
        numbers_array[i] = (numbers_array[i] * 2)
      end
      i += 2
    end
    return true if numbers_array.sum % 10 == 0
  end

end
