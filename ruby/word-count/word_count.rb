class Phrase

  def initialize(string)
    @words_list = string.split(" ")
  end

  def word_count
    count = Hash.new
    @words_list.each do |word|
      count.store("#{word}", 1)
    end
    count
  end
end