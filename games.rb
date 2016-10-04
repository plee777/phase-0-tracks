# 1. player enters a word
# 2. this word is stored
# 3. other player enters the word (x)
# 	3.1 keeps entering guessed_word (y) = x until iter 
# 	3.2 iter = length.word
# 	3.3 if guessed word (y) = prev guessed word, then not enter

# 4. if any word from y matches any word from x,
# 	4.1 then show the word along with slots for missing words
# 	4.2 if not, then continue

# 5. if x == y, then congratulate
# 6. if x != y, within time frame, then taunt

class Game
	attr_accessor :solution 
	attr_reader :guess, :word_slot

	def initialize(solution)
		@solution = solution.downcase.split("")
		@guess = (solution.length * 0.7).to_i
		@word_slot = ['_'] * solution.length
		@match_char_index = []
		@char_history = []
	end


	def guess_word_by_char(char)
		index = 0	

		@char_history << char

		@solution.each do |letter|
			if letter == char
				@match_char_index << index
			end
			index += 1
		end

	 	@match_char_index.each do |index|
	 		@word_slot[index] = @solution[index]
	 	end

 		@guess -= 1	
 		@word_slot.join(' ')

	end


	def guess_word_by_word(word)
		if word == @solution.join("")
			@word_slot = @solution
		else
			@guess -= 1
			false
		end
		
	end

	def check_overlap(char)
		@char_history.include?(char)
	end

	def solution?

		@word_slot == @solution || !@word_slot.include?('_')

	end

end





####################################### DRIVER CODE ######################################################

print "PLAYER1, please enter your word : "
solution = gets.chomp
game = Game.new(solution)

puts "PLAYER2. You have #{game.guess} chances to guess. "


until game.guess == 0

	print "Enter any character or word: "
	input = gets.chomp

	if game.check_overlap(input)
		
		puts "You've already entered \'#{input}\'!" 
		puts game.word_slot.join(' ')
		puts "You have #{game.guess} guesses left"
		puts "-----"* 10
	
	else
		
		if input.length == 1

			puts game.guess_word_by_char(input)

			if solution.include?(input)
				puts "The word has \'#{input}\' letter!"
			else
				puts "The word doesn't have \'#{input}\' letter!"
			end 

		else

			if !game.guess_word_by_word(input)
				puts game.word_slot.join(' ')
				puts "No, it is not \'#{input},\' try again!" 
			end

		end
		
		puts "You have #{game.guess} guesses left"
		puts "-----"* 10

	end

	if game.solution?
		
		puts "Nice! you won the game!"
		break

	elsif game.guess == 0 
		puts "sorry - but you lost the game. try again.!"
	end

end