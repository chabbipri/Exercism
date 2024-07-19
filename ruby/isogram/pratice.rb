class Isogram
  def self.isogram?(input)
    letter_count = Hash.new(0)

    input.split("/\w/").each do |letter|
      if letter_count.key?(letter)
        return false
      else
        letter_count[letter] += 1
      end
    end
    return true
  end
end