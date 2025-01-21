class Acronym
  def self.abbreviate(string)
    words = string.split(/\W/).reject(&:empty?)

    words.map { |word| word[0].upcase
    }.join("")
  end
end