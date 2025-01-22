class Phrase
  attr_reader :words

  def initialize(sentence)
    @words = sentence.downcase.scan(/\b[\w']+\b/)
  end

  def word_count
    counts = {}
    @words.map do |word|
      if counts.keys.include?(word)
        counts[word] += 1
      else
        counts[word] = 1
      end
    end
    counts
  end

end