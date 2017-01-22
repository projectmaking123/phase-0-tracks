# Begin by writing a class.
# write the attr_accessor
# write the initialize method
# ask for input of word to be guessed. then ask for input of letter guesses and then word guess.
# create a method that can compare guessed letters to letters of word.
# if the guessed letter is within the word, return the letter and index of the letter.
# create a method to pass through the first method and filter the data after comparison.
# return attempts left during the loop.
# return display of empty _ or corrected guess letters
# break the loop if word is guessed

class Game
  attr_accessor :word, :guess, :guess_word
  
  def initialize
    @word = word
    @guess = guess
    @guess_word = guess_word
  end
  
  def reduce(array)
    hash = {}
    alph = "abcdefghijklmnopqrstuvwxyz"
    alphs = alph.split("")
    array = array.split
    z = 0
    while z < array.length
      y = 0
      while y < alphs.length
        if array[z] == alphs[y]
         hash[(array[z])] = z
        end
      y += 1
      end
    z += 1
    end  
    if hash.empty?
      hash = NIL
    end
    hash
  end
  
  def maker(word, guess)
    letters = word.split("")
    empty = []
    (word.length).times {empty << "_"}

    x = 0
    
    while x < word.length
      if letters[x] == guess.to_s
        empty[x] = letters[x]
      else
        empty
      end
    x+=1
    end
  empty.join(" ")
  end
end

puts "Welcome to the guessing game, where a friend can test their friend's knowledge of vocabulary."
puts "To play, a friend must enter a word, and the other friend has a limited amout of guesses until they lose. The amount of guesses depends on the number of letters in the word, 1 guess for 1 letter."
puts "After every turn, the amount of guesses left will appear."
puts "You must enter a guess word after each guess letter"
test = Game.new

puts "Please enter the word to be guessed"
@word = gets.chomp

  guesses = []
  (@word.length).times { guesses << "_" }
  puts guesses.join(" ")
  i = 0

  while i < @word.length
  puts "Please enter guess letter"
  @guess = gets.chomp
  
  guesses << test.reduce(test.maker(@word, @guess))
    if guesses[-1] == NIL
      puts "Incorrect guess, your ability to guess is questionable"
      puts "#{@word.length - (i + 1)} tries left"
      puts "Guess the word"
      @guess_word = gets.chomp
        if @guess_word == @word
          puts "Congrats"
          break
        else
          puts "You seem to not know your friend at all"
        end
    elsif
      guesses[guesses[-1].values[0]] = guesses[-1].keys[0]
      guesses.delete(guesses[-1])
      puts guesses.join(" ")
      puts "#{@word.length - (i + 1)} left"
      puts "Guess the word"
      @guess_word = gets.chomp
      if @guess_word == @word
        puts "Congrats"
        break
      else
        puts "You seem to not know your friend at all"
      end
    end
    i += 1
  end


