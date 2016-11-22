class Dancer
attr_accessor :dancer, :age 
attr_reader :full_name, :readable
attr_writer :age, :writable

def initialize(readable, writable, number)
	puts "initializing new dancer instance ..."
	@readable = readable
	@writable = writable

end

def name(full_name)
	puts "Dancer's name is #{full_name}."
end

def age(number, readable)
	@age
end

def age=(new_age, writable)
	@age = new_age
end



end

dancer = Dancer.new("Misty Copeland", "??", 33)

