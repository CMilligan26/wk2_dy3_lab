class HiddenWord

  def initialize(word)
    @word = word
    @display_word = ""
    @guessed_letters = []
  end

  def display_word
    @word
  end

  def display_guessed_letters
    @guessed_letters
  end

  def check_if_letter_matches(letter)
    return @display_word.include?(letter)
  end


  def does_guessed_letters_include_letter(letter)
    return @guessed_letters.include?(letter)
  end

  def add_to_guessed_letters(letter)
    if does_guessed_letters_include_letter(letter) == false
      @guessed_letters << letter
    end
  end

  def word_to_array(word)
    word.chars
  end

  def create_display_word(word, letter)
    word_array = word_to_array(word)
    for char in word_array
      char.replace("*") if char != letter
    end
    return word_array.join
  end

  def find_index_of_guessed_letter(letter)
    @word.index(letter)
  end

  def display_word_if_letter_guessed_is_correct(letter)
    if does_guessed_letters_include_letter(letter) == true
      return "already guessed"
    else
      add_to_guessed_letters(letter)
      if check_if_letter_matches == true
        display_letter_guessed_if_correct(@word, letter)
      end
    end
  end

end
