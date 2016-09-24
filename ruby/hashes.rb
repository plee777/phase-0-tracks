

#pseudocode

#1.state what this program is for
#2.ask the users for following data: name, age, etc.
#3.store this data
#4.makes sure each data is in appropriate data type
#5.print the hash back
#6.ask if the user wants to change anything? (none or else)
#7.if else, user puts down what they want to change
#8.print the latest hash back

index = 0
value = 2

puts "welcome to interior designer input list"
puts "Please fill out this form!"

while index < value
 
post = {}
	puts "what is your name?"
	name = gets.chomp
	puts "what is your age"
	age = gets.to_i
	puts "how many children do you have?"
	number_of_children = gets.to_i
	puts "what is your ideal decor theme?"
	decor_theme = gets.chomp
	puts "from a scale of 1 to 10, what is your design skills?"
	skills = gets.to_f


puts "here is #{name}, who is #{age} old with #{number_of_children} children. The ideal decor theme is#{decor_theme}. Design skills are #{skills} out of 10." 

puts "Are you satisfied with the info? (true/false)"
answer = gets.chomp
if answer == "true"
	index == 3
	puts "Have a great day!"
	break
elsif answer == "false"
	puts "lets go update then."
	index == 1
else
	puts "what do you mean?"
end

end

p post
