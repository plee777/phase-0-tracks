# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + ":("
# 	end

# 		def yelling_happily(words)
# 		words + "omg" + "so happy"
# 	end

# end

# #driver codes.
# Shout.self.yell_angrily("BOOYAH")
# Shout.yelling_happily("hell yeah")


########RELEASE 3 ###########
module Shout
	def yelling(words)
		words + "!!!"
	end
end

class Yell_angry
	include Shout
end

class Yell_happy
	include Shout
end

angry = Yell_angry.new
angry.yelling("omg")

happy = Yell_happy.new
happy.yelling("YAY")



