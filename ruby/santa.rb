class Santa
	attr_reader :ethnicity, :age, :gender
	attr_accessor :reindeer_ranking
	attr_writer :gender


	def initialize(gender, ethnicity, age =0, have_rudolf=true)
		p "initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@age = age
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@have_rudolf = have_rudolf
	end

	def speak
		p "#{@gender} #{@ethnicity} dude says - ho ho ho happy holidays"
	end

	def eat_milk_and_cookies(cookie_type)
		p "That was a good #{cookie_type}!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(name)
		@reindeer_ranking.delete(name)
		@reindeer_ranking.insert(-1,name)
	end

end

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

################## REFACTORED #################
# santas = []
# santa_info = {"agender" => "black",
# 				"female"=> "Latino",
# 				"bigender"=> "white",
# 				"male"=> "Japanese",
# 				"female"=> "prefer not to say",
# 				"gender fluid"=> "Mystical Creature (unicorn)",
# 				"N/A"=> "N/A"}
# santa_info.each do |gender,ethnicity|
# 	santas<< Santa.new(gender,ethnicity)
# end

# puts santas.inspect

################### DRIVER CODE ##################

# santa = Santa.new("korean", "male")
# santa.speak
# santa.eat_milk_and_cookies("best_cookie")
# santa.celebrate_birthday
# santa.get_mad_at("paul")

count = 1

loop do 
	break if count == 50
	age = rand(0..140)
	santa =  Santa.new(gender.sample,ethnicity.sample,age)
	puts "Santa Number.#{count} \nAge : #{santa.age}, Ethnicity : #{santa.ethnicity}, Gender : #{santa.gender} \n\n"
	count += 1
end



