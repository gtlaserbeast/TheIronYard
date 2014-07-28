questions_list = [
	{question: "What is 2 + 2?", answer: "4"},
	{question: "What is 1 + 1?", answer: "2"},
	{question: "What is 2 - 0?", answer: "2"},
	{question: "What is 2.2 x 2?", answer: "4.4"},
	{question: "What is 2 - 2?", answer: "0"},
	{question: "What is the opposite of down?", answer: "up"},
	{question: "What is the color of the sky?", answer: "blue"},
	{question: "What is the first name of Mr. Bucciarelli?", answer: "nick"},
	{question: "What is 5 x 5?", answer: "25"},
	{question: "What is the proper name of the red planet?", answer: "mars"}
]
accumulated_points = 0

puts "Please answer the following questions as concisely as possible."
questions_list.each do |item|
	puts item[:question]
	response = gets.chomp.to_s
	if response.downcase == item[:answer]
		puts "Hurray! #{response} is correct!"
		accumulated_points += 1
	else
		puts "Sorry, #{response} is not correct. #{item[:answer].capitalize} was the expected response."
	end
end

puts "You have scored #{accumulated_points*10}% of the 10 possible points!"