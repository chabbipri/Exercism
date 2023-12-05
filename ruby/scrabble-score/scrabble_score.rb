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
  attr_reader :letters_list

  def initialize(word)
    @letters_list = word.downcase.chars
  end

  # def score
  #   total_score = w
  #   word.chars.each do |letter|
  #     total_score += fetch_value_of_letter(letter)
  #   end
  #   total_score
  # end

  def score
    total_score = 0
    until letters_list.empty?
      total_score += score_of_letter
      delete_letter
    end
    total_score
  end

  private

  def fetch_value_of_letter(letter)
    SCORES.each do |letters_score|
      return letters_score[:value] if letters_score[:letters].downcase.include?(letter)
    end
  end

  def delete_letter
    letters_list.delete(letters_list.first)
  end

  def score_of_letter
    fetch_value_of_letter(letters_list.first) * letters_list.count(letters_list.first)
  end
end
