class Player

  def initialize(name)
    @name = name
    @lives = 6
  end

  def display_name
    @name
  end

  def display_lives
    @lives
  end

  def remove_life
    @lives -= 1
  end

  def player_alive
    @lives > 0
  end

end
