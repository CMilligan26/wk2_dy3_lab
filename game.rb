class Game

  def initialize(player, hidden_word)
    @player = player
    @hidden_word = hidden_word
  end

  def display_player
    @player
  end

  def display_hidden_word
    @hidden_word
  end

  def make_guess(letter)
    @hidden_word.display_word_if_letter_guessed_is_correct(letter)
  end

  def player_remove_life
    @player.remove_life
  end

  def game_won
    if @hidden_word.create_display_word(@hidden_word.display_word).include?("*") == true
      game_won = false
    else
      game_won = true
    end
    return game_won
  end

  def game_not_lost
    @player.player_alive
  end

  def display_player_lives
    @player.display_lives
  end

  def show_hidden_word
    @hidden_word.create_display_word(@hidden_word.display_word)
  end

  # def show_hidden_word_after_guess(letter)
  #   @hidden_word.create_display_word(@hidden_word.display_word)
  # end
end
