require_relative "word_count_frequency"
require "minitest/autorun"

class TestWordCountFrequency < Minitest::Test
	def test_empty_hash
		assert_equal({}, word_count_frequency([]))
	end

	def test_single_word
		assert_equal({"cat" => 1}, word_count_frequency(["cat"]))
	end

	def test_two_different_words
		assert_equal({"cat" => 1, "sat" => 1}, word_count_frequency(["cat", "sat"]))
	end

	def test_two_words_with_adjacent_repeat
		assert_equal({"cat" => 2, "sat" => 1}, word_count_frequency(["cat", "cat", "sat"]))
	end

	def test_two_words_with_non_adjacent_repeat
		assert_equal({"cat" => 2, "sat" => 1}, word_count_frequency(["cat", "sat", "cat"]))
	end
end