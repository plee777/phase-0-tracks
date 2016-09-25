

#pseudocode

#1.state what this program is for
#2.ask the users for following data: name, age, etc.
#3.store this data
#4.makes sure each data is in appropriate data type
#5.print the hash back
#6.ask if the user wants to change anything? (none or else)
#7.if else, user puts down what they want to change
#8.print the latest hash back


puts "welcome to interior designer input list"
puts "Please fill out this form!"
 
post = {}
	puts "what is your name?"
	post[:name] = gets.chomp
	puts "what is your age"
	post[:age] = gets.to_i
	puts "how many children do you have?"
	post[:number_of_children] = gets.to_i
	puts "what is your ideal decor theme?"
	post[:decor_theme] = gets.chomp
	puts "from a scale of 1 to 10, what is your design skills?"
	post[:skills] = gets.to_f


# puts "here is #{name}, who is #{age} old with #{number_of_children} children. The ideal decor theme is#{decor_theme}. Design skills are #{skills} out of 10." 
puts "-" * 17
puts post

#updating conditions?
puts "Would you like to update?  If yes, please enter the key you would like to 
change first.  If this looks correct, just type 'none'."
key_change = gets.chomp

if key_change == "none"
	puts "Thanks. Here's your info again."
else 
	puts "Change value to?"
	updated_info = gets.chomp
	post_update = {
		key_change.to_sym => updated_info
	}
	post.merge!(post_update)
end

p post