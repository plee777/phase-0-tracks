

#write pesudo that writes a method that takes a spy's name and creates a fake name
#1.this fake name will swap first and last name
#2.change all vowels to the next vowel. all constants to next constants.

@clist = [ "b","c" ,"d", "f", "g", "h", "j", "k","l", "m", "n", "p", "q", 
				"r", "s", "t", "v", "w", "x", "y", "z", "b"] #add additional 'b' to handle edge cases
@vlist = ["a","e","i","o","u","a"] #add additional 'a' to handle edge cases

def next_v(letter)
	letter_i = @vlist.index(letter)
	return @vlist[letter_i.to_i + 1]
end

def next_c(letter)
	letter_i = @clist.index(letter)
	return @clist[letter_i.to_i + 1]
end

def change_name(letter)
	if @clist.include?(letter)
		next_c(letter)
	else
		next_v(letter)
	end
end

def create_fake_name(name)
	name_arr = name.split('')
	name_arr.map! do |letter|
		change_name(letter)
	end
	name_arr.join('')
end

# ------------
puts "-" * 20

puts "what is your first name,last name, spy? Let me give you a fake name!"
real_name = gets.chomp

real_name_array = real_name.downcase.split(",")

swapped_fname = real_name_array[0]
swapped_lname = real_name_array[1]

puts swapped_fname
puts swapped_lname

fake_fname = create_fake_name(swapped_fname)
fake_lname = create_fake_name(swapped_lname)

puts fake_lname +" "+ fake_fname



 # method conversion(real_first_name, real_last_name) 
 #  fakename = real_last_name + real_first_name
 #  fakename = RLM.map! {|RLM|RLM.next} (for vowels)
 #  fakename = RLM.map! {|RLM|RLM.next} (for constants)

 #return fakename



 # def conversion(real_first_name, real_last_name)
 # 	fakename = real_last_name + real_first_name
 # 	fakename = fakename.delete("r","a","b")
 # 	fakename = fakename.insert[2]['ghg']
 # 	fakename = fakename.swap

 # 	return fakename

 # end
