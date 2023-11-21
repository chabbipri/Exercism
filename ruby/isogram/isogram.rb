class Isogram
  def self.isogram?(input)
    return true if input == ""

    input.gsub(/\W+/, '').downcase.split("").uniq.size == input.gsub(/\W+/, '').split("").size
  end
end