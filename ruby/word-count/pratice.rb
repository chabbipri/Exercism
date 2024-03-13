require 'pry'

class Phrase
  attr_reader :words

  def initialize(sentence)
    @words = fetch_only_words(sentence)
  end

  def word_count
    count = Hash.new(0)
    words.each do |word|
        count[word] += 1
    end
    count
  end

  private

  def fetch_only_words(sentence)
    words = sentence.downcase.scan(/\b[\w']+\b/)
    words
  end

end