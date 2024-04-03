class Scrabble
  SCORES = {
    "AEIOULNRST" => 1,
    "DG" =>  2,
    "BCMP" =>  3,
    "FHVWY" =>  4,
    "K" =>  5,
    "JX" =>  8,
    "QZ" =>  10
  }

  attr_reader :tiles

  def initialize(word)
    @tiles = word.upcase.chars
  end

  def score
    tiles.sum { |letter| score_of(letter) }
    # tiles.sum(&method(:score_of))
  end

  private

  def score_of(letter)
    SCORES.each do |letters, score|
      return score if letters.include?(letter)
    end
  end
end
