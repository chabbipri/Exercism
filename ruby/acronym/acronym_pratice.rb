class Acronym
#   def self.abbreviate(sentence)
#     abbreviation = ""

#     sentence.titleize.split(" ").each do |word|
#       abbreviation += word[0]
#     end

#     abbreviation
#   end

  def self.abbreviate(sentence)
    abbreviation = ""

    sentence.split(/\W/).map{ |word|
      abbreviation += word[0].upcase if word != ""
    }

    abbreviation
  end
end