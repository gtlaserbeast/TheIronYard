
	
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



# #Assignment #1
secret_number = rand(1..100)
guess_count = 0
guess = 0
puts "Hello, Mortal! Today, I will ask you to guess a number from 1 to 100!"
while guess != secret_number do
#	puts secret_number
	puts "What number am I envisioning?"
	guess = gets.chomp.to_i
	guess_count += 1
	if guess == secret_number
		puts "Excellent! #{secret_number} is the number I was holding in my mind's eye!"
		if guess_count < 2
				puts "It took you #{guess_count} attempt to know my thoughts!"
			else
				puts "It took you #{guess_count} attempts to know my thoughts!"
			end
		elsif guess < secret_number
			puts "Negatory, Quimosabe. I was not thinking of #{guess}."
			puts "The number I am thinking of is higher than #{guess}."
		elsif guess > secret_number
			puts "Negatory, Quimosabe. I was not thinking of #{guess}."
			puts "The number I am thinking of is lower than #{guess}."
		end
end