require('minitest/autorun')
require('minitest/rg')
require_relative('../player')

class PlayerTest < MiniTest::Test

  def setup
    @player = Player.new("Chris")
  end

  def test_player_has_name
    expected = "Chris"
    actual = @player.display_name
    assert_equal(expected, actual)
  end

  def test_number_of_lives
    expected = 6
    actual = @player.display_lives
    assert_equal(expected, actual)
  end

end
