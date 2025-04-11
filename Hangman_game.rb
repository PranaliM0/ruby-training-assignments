class Hangman
  WORDS = [
    { word: "ruby", hint: "Programming language" },
    { word: "hangman", hint: "Word guessing game" },
    { word: "assignment", hint: "Task given to a developer" },
    { word: "developer", hint: "A person who writes code" },
    { word: "training", hint: "Process of learning" },
    { word: "object", hint: "Basic unit in OOP" },
    { word: "method", hint: "Function inside a class" }
  ]

  def initialize
    picked = WORDS.sample
    @word = picked[:word]
    @hint = picked[:hint]
    @guessed_letters = []
    @max_tries = 6
    @incorrect_tries = 0
  end

  def display_word
    @word.chars.map { |letter| @guessed_letters.include?(letter) ? letter : "_" }.join(" ")
  end

  def guess(letter)
    return if @guessed_letters.include?(letter)

    @guessed_letters << letter
    @incorrect_tries += 1 unless @word.include?(letter)
  end

  def game_over?
    won? || lost?
  end

  def won?
    (@word.chars - @guessed_letters).empty?
  end

  def lost?
    @incorrect_tries >= @max_tries
  end

  def hint
    @hint
  end

  def incorrect_tries
    @incorrect_tries
  end

  def word
    @word
  end
end

game = Hangman.new

puts "Welcome to Hangman!"
puts "Hint: #{game.hint}"
puts "Guess the word, one letter at a time."
puts "You have 6 incorrect attempts. Good luck!\n\n"

while !game.game_over?
  puts "Current word: #{game.display_word}"
  puts "Incorrect tries left: #{6 - game.incorrect_tries}"

  userguess = nil
  loop do
    print "Enter a single letter guess: "
    userguess = gets.chomp.downcase
    if userguess.match?(/^[a-z]$/)
      break
    else
      puts "Invalid input. Please enter just one letter (a-z)."
    end
  end

  game.guess(userguess)
  puts
end

if game.won?
  puts "Congratulations! You guessed the word: #{game.display_word}"
else
  puts "Game Over! You ran out of tries."
  puts "The word was: #{game.word}"
end
