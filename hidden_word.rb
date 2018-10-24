class HiddenWord

  def initialize(word)
    @word = word
    @display_word = word
    @guessed_letters = []
  end

  def display_word
    @word
  end

  def display_display_word
    @display_word
  end

  def display_guessed_letters
    @guessed_letters
  end

  def check_if_letter_matches(letter)
    return @display_word.include?(letter)
  end

  def add_to_guessed_letters(letter)
    if does_guessed_letters_include_letter(letter) == false
      @guessed_letters << letter
    end
  end

  def does_guessed_letters_include_letter(letter)
    return @guessed_letters.include?(letter)
  end

  def word_to_array(word)
    word.chars
  end

  def create_display_word(word)
    word_array = word_to_array(word)
    for char in word_array
      if @guessed_letters.include?(char) == false
        char.replace("*")
      end
    end
    return word_array.join
  end

  def display_word_if_letter_guessed_is_correct(letter)
    if does_guessed_letters_include_letter(letter) == true
      return "already guessed"
    else
      add_to_guessed_letters(letter)
      if check_if_letter_matches(letter) == true
        return true
      else
        return false
      end
    end
  end

  # def create_display_word_against_guessed_letters
  #   display_word = @word
  #   for letter in @guessed_letters
  #   display_word = create_display_word(display_word)
  #   end
  #   return display_word
  # end

end
