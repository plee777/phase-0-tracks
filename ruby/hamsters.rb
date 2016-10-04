# In phase-0-tracks/ruby/hamsters.rb, build a Ruby program that asks the user for the 
# following pieces of data about the hamster and stores them in variables:

# hamster's name (the clerk names any hamsters who come in without name tags, so all hamsters have names)
# volume level from 1 to 10 (some people are light sleepers who won't adopt extra-squeaky hamsters)
# fur color
# whether the hamster is a good candidate for adoption
# estimated age

puts "what is hamster name?"
hamster_name = gets.chomp

puts "does the hamster sleep light or heavy from range of 1 to 10?"
hamster_sleep = gets.to_i


puts "what is the hamster's fur color?"
hamster_fur_color = gets.chomp

puts "is the hamster good candidate for adoption? (y/n)"
hamster_adoption = gets.chomp

if hamster_adoption == "y"
	hamster_adoption_boolean = true
elsif hamster_adoption == "n"
	hamster_adoption_boolean = false
else
	puts "Excuse me?"
	hamster_adoption = gets.chomp
end

puts "what is the estimated age?"
hamster_age = gets.to_i

if hamster_age == ""
	hamster_age = nil
else
	hamster_age = hamster_age
end

puts "the hamsters name is #{hamster_name}. On a scale of 1 - 10,
it is a #{hamster_sleep}. Its fur color is #{hamster_fur_color}.
Is the hamster good to adopt? #{hamster_adoption_boolean}. 
its estimated age is #{hamster_age}."

#{hamster_age}?"
