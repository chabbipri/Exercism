require "minitest/autorun"
require_relative "scrabble_score"
require_relative "pratice"

class ScrabbleScoreTest < Minitest::Test
  def test_lowercase_letter
    # skip
    assert_equal 1, Scrabble.new("a").score
  end

  def test_uppercase_letter
    assert_equal 1, Scrabble.new("A").score
  end

  def test_valuable_letter
    assert_equal 4, Scrabble.new("f").score
  end

  def test_short_word
    assert_equal 2, Scrabble.new("at").score
  end

  def test_short_valuable_word
    assert_equal 12, Scrabble.new("zoo").score
  end

  def test_medium_word
    assert_equal 6, Scrabble.new("street").score
  end

  def test_medium_valuable_word
    assert_equal 22, Scrabble.new("quirky").score
  end

  def test_long_mixed_case_word
    assert_equal 41, Scrabble.new("OxyphenButazone").score
  end

  def test_english_like_word
    assert_equal 8, Scrabble.new("pinata").score
  end

  def test_empty_input
    assert_equal 0, Scrabble.new("").score
  end

  def test_entire_alphabet_available
    assert_equal 87, Scrabble.new("abcdefghijklmnopqrstuvwxyz").score
  end
end
