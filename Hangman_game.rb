class Hangman
  def initialize
    @word = "pranali"
    @guessed_letters = []
    @max_tries = 6
    @incorrect_tries = 0 
  end

  def display_word
    @word.chars.map { |letter| @guessed_letters.include?(letter) ? letter : "_" }.join(" ")
  end

  def guess(letter)
    if @word.include?(letter)
      @guessed_letters << letter
    else
      @incorrect_tries += 1
    end
  end

  def game_over?
    @incorrect_tries >= @max_tries || (@word.chars - @guessed_letters).empty?
  end
end

game = Hangman.new
while !game.game_over?
  puts "Current word: #{game.display_word}"
  print "Enter a guess: "
  guess = gets.chomp
  game.guess(guess)
end
puts "Game Over!"
