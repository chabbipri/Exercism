class Phrase
  attr_reader :words

  def initialize(string)
    @words = string.downcase.scan(/[\w']+/)
  end

  def word_count
    # counts = Hash.new(0)
    # words.each do |word|
    #   counts[word] += 1
    # end
    words.tally
  end
end
