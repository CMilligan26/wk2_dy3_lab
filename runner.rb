require_relative('game')
require_relative('hidden_word')
require_relative('player')

puts "Welcome to Snowman!"
puts "What is your name?"

player_name = gets.chomp

player = Player.new(player_name)

puts "Please enter your secret word"

secret_word = gets.chomp

hidden_word = HiddenWord.new(secret_word)

game = Game.new(player, hidden_word)

system "clear"

  puts "The word is: #{game.show_hidden_word}"

while game.game_won == false && game.game_not_lost == true

  puts "What is your guess? Lives remaining:
   #{game.display_player_lives}"

  guess = gets.chomp

  if game.make_guess(guess) == true
    puts "Correct guess!"
  else
    puts "Try again!"
    game.player_remove_life
  end
    puts ""
    puts "The word is: #{game.show_hidden_word}"
    puts ""
end

if game.game_not_lost == true
  puts "You Win!"
else
  puts "You lose! The word was '#{secret_word}'."
end
exit
