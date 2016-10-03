class Santa
	def initialize
		p "initializing Santa instance ..."
	end

	def speak
		p "ho ho ho happy holidays"
	end

	def eat_milk_and_cookies(cookie_type)
		p "That was a good #{cookie_type}!"
	end

end

santa = Santa.new

santa.initialize
santa.speak
santa.eat_milk_and_cookies(best_cookie)


