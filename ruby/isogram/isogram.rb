class Isogram
  def self.isogram?(word)
    return true if word.empty?

    characters = word.downcase.scan(/\w/)

    characters.uniq.size == characters.size
  end
end