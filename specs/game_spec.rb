require('minitest/autorun')
require('minitest/rg')
require_relative('../game')
require_relative('../player')
require_relative('../hidden_word')

class GameTest < MiniTest::Test

  def setup
    @player = Player.new("Chris")
    @hidden_word = HiddenWord.new("track")
    @game = Game.new(@player, @hidden_word)
  end

  def test_game_has_player
    expected = @player
    actual = @game.display_player
    assert_equal(expected, actual)
  end

  def test_game_has_hidden_word
    expected = @hidden_word
    actual = @game.display_hidden_word
    assert_equal(expected, actual)
  end

  def test_make_guess
    expected = true
    actual = @game.make_guess("a")
    assert_equal(expected, actual)
  end

  def test_player_remove_life
    @game.player_remove_life
    expected = 5
    actual = @player.display_lives
    assert_equal(expected, actual)
  end

  def test_game_won__false
    expected = false
    actual = @game.game_won
    assert_equal(expected, actual)
  end

  # def test_game_won__true
  #   @game.make_guess("track")
  #   expected = true
  #   actual = @game.game_won
  #   assert_equal(expected, actual)
  # end

  def test_game_not_lost
    expected = true
    actual = @game.game_not_lost
    assert_equal(expected, actual)
  end

  def test_display_player_lives
    expected = 6
    actual = @game.display_player_lives
    assert_equal(expected, actual)
  end

  def test_show_hidden_word
    expected = "*****"
    actual = @game.show_hidden_word
    assert_equal(expected, actual)
  end

end
