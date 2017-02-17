gem 'minitest'
require_relative '../lib/word_list'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class WordListTest < Minitest::Test

  def test_it_exists
    list = WordList.new

    assert_instance_of WordList, list
  end

  def test_word_list_count_starts_at_0
    list = WordList.new

    assert_equal 0, list.count
  end

  def test_total_score_starts_at_0
    list = WordList.new

    assert_equal 0, list.total_score
  end

  def test_add_word_increments_word_count_by_1
    list = WordList.new

    list.add('hello')

    assert_equal 1, list.count
  end
end
