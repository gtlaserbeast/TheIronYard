a = true
b = 7
c = 6.5
d = "THUNDERCATS! "

#Boolean Methods
if a == true
	puts "A is true"
else
	puts "A is false"
end
#Simple Comparison between the value of a and true
if a != true
	puts "A is false"
else
	puts "A is true"
end

if (a == true || false)
	puts "A is true or False is false"
end

if (a != false && true)
	puts "A is true and true is true"
end


#Integer Methods
puts "#{b.even?}"
#Previous line returns true if b is even, false if odd.
puts "#{b.odd?}"
#Previous line returns true if b is odd, false if even.
puts "#{b.integer?}"
#Previous line returns true if b is an integer, false otherwise.
puts "#{b.next}"
#Previous line returns the integer that follows b i.e. b+1
puts "#{b.pred}"
#Previous line returns the integer that precedes b i.e. b-1

#Float Methods
puts "#{c.to_s}"
#.to_s changes the variable class to a string
puts "#{c.to_s.class}"
#.class returns the variable class of c.to_s
puts c.abs2
#.abs2 returns the square of the absolute value of c
puts c ** 2
puts (c ** 2).class
#returns the value of C raised to the 2nd power. 
puts c.truncate
#.truncate returns an integer after chopping off the decimals


#String Methods
puts d * 3
#When manipulating strings, * returns a new string with a number of copies of the initial string
puts d + d
#+ Allows for the concatination of multiple string input into one string
puts d.capitalize
#.capitalize returns the string, but all characters lowercased except for the first
puts d.downcase
#.downcase returns the string in all lowercased letters
puts d.clear
#Returns a string with no characters in integer

