class Scrabble
  attr_reader :word

  SCORES = {
    "AEIOULNRST" => 1,
    "DG" => 2,
    "BCMP" => 3,
    "FHVWY" => 4,
    "K" => 5,
    "JX" => 8,
    "QZ" => 10
  }

  def initialize(word)
    @word = word.upcase.chars
  end

  def score
    score = 0
    word.each do |letter|
      score += score_of(letter)
    end
    score
  end

  private

  def score_of(letter)
    SCORES.each do |letters, value|
      return value if letters.chars.include?(letter)
    end
  end
end