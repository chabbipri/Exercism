class Phrase
  attr_reader :words

  def initialize(string)
    @words = fetch_only_words(string)
  end

  def word_count
    # counts = Hash.new(0)
    # words.each do |word|
    #   word.gsub!(/\A\W|\W\z/, "")
    #   counts[word] += 1
    # end
    # counts
    words.tally
  end

  private

  def fetch_only_words(string)
    words = string.downcase.scan(/[\w']+/)

    words.map do |word|
      word.gsub!(/\A\W|\W\z/, "")
    end
    words
  end
end
