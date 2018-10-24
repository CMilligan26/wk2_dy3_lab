require('minitest/autorun')
require('minitest/rg')
require_relative('../game')

class GameTest < MiniTest::Test

  def setup
    @game = Game.new("player test", "hidden word test")
  end

  def test_game_has_player
    expected = "player test"
    actual = @game.display_player
    assert_equal(expected, actual)
  end

  def test_game_has_hidden_word
    expected = "hidden word test"
    actual = @game.display_hidden_word
    assert_equal(expected, actual)
  end

end
