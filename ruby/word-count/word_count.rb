class Phrase
  def initialize(string)
      @words_list = string.downcase.scan(/[\w']+/)
  end

  def word_count
    counts = Hash.new
    @words_list.each do |word|
      if counts.key?(word)
        counts[word] = counts[word] + 1
      else
        counts.store("#{word}", 1)
      end
    end
    counts
  end
end