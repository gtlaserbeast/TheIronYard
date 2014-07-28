# Choose one!

# Assignment 1:

# Create a number guessing game. 
# Game should pick a random number between 1 and 100 and ask you for a guess. 
# If the guess is less than the number, inform the user and let them guess again. 
# If the guess is greater than the number, inform the user and let them guess again. 
# If the guess is correct, inform the user and quit.

# Bonus: write the opposite program: you, the user, pick a number between 1 and 100. 
# The computer has to guess the number. 
# You tell it whether it's too high, too low, or right on after each guess. 
# The computer gets five guesses.

# Assignment 2:

# Create Blackjack. 
# Use numbers 1-11 for cards instead of creating an entire deck! 
# I want to be able to split on double cards and play both hands.

# Bonus: create a dealer for the blackjack game. He doesn't have to split.

# Extra bonus.

# Do all of the above - Will buy someone a beer on Friday if they do all of the above.

#Bonus #1
pc_guess_count = 0
@range_max = 100
@range_min = 1
@current_guess = ((@range_max-@range_min) / 2).floor


def guesser (lower, upper)
	@range_min = lower
	@range_max = upper
	#the calculation used for deriving @current_guess is not the best.
	@current_guess = ((@range_max+@range_min) / 2).floor

end

		

puts "I know you're thinking of a number between 1 & 100, and I'm going to tell you what it is!"

while pc_guess_count < 5 do
	puts "I'm guessing #{@current_guess}! Is this 1) Lower, 2) Higher, or 3) Equivalent to your number?"
	response = gets.chomp.to_i
	pc_guess_count += 1
	case response
	when 1
		guesser(@current_guess, @range_max)
		if pc_guess_count > 4
			puts "I'll never know your thoughts!"
			break
		end
	when 2 
		guesser(@range_min, @current_guess)
		if pc_guess_count > 4
			puts "I'll never know your thoughts!"
			break
		end
	when 3
		puts "Awesome! #{@current_guess} is your number. I am a magic computer!"
		if pc_guess_count < 2
				puts "It took you #{pc_guess_count} attempt to know my thoughts!"
			else
				puts "It took you #{pc_guess_count} attempts to know my thoughts!"
			end
		break
	end	
end