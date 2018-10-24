require('minitest/autorun')
require('minitest/rg')
require_relative('../hidden_word')

class HiddenWordTest < MiniTest::Test

  def setup
    @hidden_word = HiddenWord.new("word")
  end


  def test_hidden_word_has_word
    expected = "word"
    actual = @hidden_word.display_word
    assert_equal(expected, actual)
  end

  def test_hidden_word_has_guessed_letters
    expected = []
    actual = @hidden_word.display_guessed_letters
    assert_equal(expected, actual)
  end

  def test_does_word_contain_guessed_letter__true
    expected = true
    actual = @hidden_word.check_if_letter_matches("w")
    assert_equal(expected, actual)
  end

  def test_does_word_contain_guessed_letter__false
    expected = false
    actual = @hidden_word.check_if_letter_matches("a")
    assert_equal(expected, actual)
  end

  def test_add_letter_to_guessed_letters
    @hidden_word.add_to_guessed_letters("w")
    expected = ["w"]
    actual = @hidden_word.display_guessed_letters
    assert_equal(expected, actual)
  end

  def test_does_guessed_letters_include_letter__true
    @hidden_word.add_to_guessed_letters("w")
    expected = true
    actual = @hidden_word.does_guessed_letters_include_letter("w")
    assert_equal(expected, actual)
  end

  def test_does_guessed_letters_include_letter_false
    expected = false
    actual = @hidden_word.does_guessed_letters_include_letter("w")
    assert_equal(expected, actual)
  end

  def test_word_to_array
    expected = ["w", "o", "r", "d"]
    actual = @hidden_word.word_to_array("word")
    assert_equal(expected, actual)
  end

  def test_create_display_word
    @hidden_word.add_to_guessed_letters("o")
    expected = "*o**"
    actual = @hidden_word.create_display_word("word")
    assert_equal(expected, actual)
  end

  def test_display_word_if_letter_guessed_is_correct
    expected = true
    actual = @hidden_word.display_word_if_letter_guessed_is_correct("w")
    assert_equal(expected, actual)
  end

  # def test_create_display_word_against_guessed_letters
  #   @hidden_word.add_to_guessed_letters("o")
  #   @hidden_word.add_to_guessed_letters("r")
  #   expected = "w**d"
  #   actual = @hidden_word.create_display_word_against_guessed_letters
  #   assert_equal(expected, actual)
  # end
end
