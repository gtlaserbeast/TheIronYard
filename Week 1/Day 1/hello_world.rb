f = nil
swap_temp = nil
c = nil

x = "Hello World!"
=begin
y = 12
dude = "Dude Sup"
z = 12.1234
your_variable = y + z
is_sam_awesome = true
is_nick_awesome = true

puts x
puts dude
puts y
puts z
puts y + z
puts your_variable
#Comment that shit
#puts is_sam_awesome == is_nick_awesome
#puts 1 != 2
if 1 != 2
	puts "1 ain't 2, yo"
else
	puts "This is not true"
end

puts "Enter your name!"
user_input = gets
puts "Name: " + user_input
puts "Name: #{user_input}"
puts "Some math problem #{1 +1 +1}"
=end

puts "What temperature is it in F?"
f = gets.to_f
c = (f-32) / 1.8000
puts f.class
puts c.class
puts "F = #{f} degrees"
puts "It is #{c} degrees in Celsius"