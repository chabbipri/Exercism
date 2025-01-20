require 'minitest/autorun'
require_relative 'two_fer'
require_relative 'two_fer_1'

class TwoFerTest < Minitest::Test
  def test_no_name_given
    assert_equal "One for you, one for me.", TwoFer.two_fer
  end

  def test_a_name_given
    assert_equal "One for Alice, one for me.", TwoFer.two_fer("Alice")
  end

  def test_another_name_given
    assert_equal "One for Bob, one for me.", TwoFer.two_fer("Bob")
  end
end
