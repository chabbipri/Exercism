class Scrabble
  SCORES = [
    { letters: "A, E, I, O, U, L, N, R, S, T", value: 1 },
    { letters: "D, G", value: 2 },
    { letters: "B, C, M, P", value: 3 },
    { letters: "F, H, V, W, Y", value: 4 },
    { letters: "K", value: 5 },
    { letters: "J, X", value: 8 },
    { letters: "Q, Z", value: 10 },
  ]
  attr_reader :word

  def initialize(word)
    @word = word.downcase
  end

  def score
    total_score = 0
    word.chars.each do |letter|
      total_score += fetch_value_of_letter(letter)
    end
    total_score
  end

  private

  def fetch_value_of_letter(letter)
    SCORES.each do |letters_score|
      return letters_score[:value] if letters_score[:letters].downcase.include?(letter)
    end
  end
end
