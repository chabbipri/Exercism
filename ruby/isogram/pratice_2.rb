require 'pry'

class Isogram
  def self.isogram?(word)
    true if word.empty?

    characters = word.downcase.scan(/\w/)
    char_count = {}

    characters.each do |char|
      if char_count.has_key?(char)
       char_count[char] += 1
       return false
      else
       char_count[char] = 1
      end
    end
    return true

    # characters.uniq.size == characters.size

  end
end