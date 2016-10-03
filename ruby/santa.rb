class Santa
	attr_reader :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity)
		p "initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
	end

	def speak
		p "#{@gender} #{@ethnicity} dude says - ho ho ho happy holidays"
	end

	def eat_milk_and_cookies(cookie_type)
		p "That was a good #{cookie_type}!"
	end

	def celebrate_birthday

	end

	def get_mad_at(name)

	end


# reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
# age = 0
end

santa = Santa.new("korean", "male")
santa.speak
santa.eat_milk_and_cookies("best_cookie")
santa.celebrate_birthday
santa.get_mad_at("paul")


