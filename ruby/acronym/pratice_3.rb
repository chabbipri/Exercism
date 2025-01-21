class Acronym

  def self.abbreviate(phrase)
    phrase.scan(/\w+/).map do |word|
      word[0].upcase
    end.join("")
  end
end