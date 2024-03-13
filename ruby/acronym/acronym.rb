class Acronym
  def self.abbreviate(sentence)
    words(sentence).map(&:chr).join.upcase
  end

  private

  def self.words(sentence)
    sentence.split(/\W/).reject(&:empty?)
  end
end 
    
 