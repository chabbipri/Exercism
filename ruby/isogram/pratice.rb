class Isogram
  def self.isogram?(input)
    return repeated_letter(input)
  end

  private

  def self.repeated_letter(input)
    return true if input == ""
    letter_count = []

    input.downcase.gsub(/\W/, "").split("").each do |letter|
      return false if letter_count.include?(letter)
      letter_count << letter
    end
    return true
  end
end