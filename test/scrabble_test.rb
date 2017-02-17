gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/emoji'
require 'pry'

class ScrabbleTest < Minitest::Test

  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_score_with_multipliers
    game = Scrabble.new

    assert_equal 9, game.score_with_multipliers('hello', [1,2,1,1,1])
  end

  def test_can_add_word_multipliers
    game = Scrabble.new

    assert_equal 18, game.score_with_multipliers('hello', [1,2,1,1,1], 2)
  end

  def test_ten_point_bonus_for_seven_letter_words
    game = Scrabble.new

    assert_equal 58, game.score_with_multipliers('sparkle', [1,2,1,3,1,2,1], 2)
  end

  def test_highest_scoring_word
    game = Scrabble.new

    assert_equal "word", game.highest_scoring_word(['hello', 'word', 'sound'])
  end

end
