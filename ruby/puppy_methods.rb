    class Puppy
          def initialize
           puts "initializing new puppy instance ..." 
          end

          def fetch(toy)
            puts "I brought back the #{toy}!"
            toy
          end

          def speak(integer)
          	integer.times do |each|
              puts "woof"
          end
        end


          def roll_over
          	p "*rolls over*"
          end

          def dog_years(human_years)
          	human_years * 7
          	
          end

          def cool_trick(fly, eat, sleep)
          	p "I can #{fly}, #{eat}, #{sleep} at the same time."
          end

    end

puppy = Puppy.new
puppy.fetch("monster")
puppy.speak(4)
puppy.roll_over
puppy.dog_years(4)
puppy.cool_trick("fight", "speak", "wakeup")

### Release 2 ###

class Myownclass
  def initialize
    puts "initializing new developer instance.."
  end

  def code(number_of_lines)
    puts "the developer has coded #{number_of_lines} lines"
  end

  def naming(fav,hobby,last)
    tag = "#{hobby}_#{fav}_#{last}"
        tag = "#{hobby}_#{fav}_#{last}"
        tag.gsub!(/[e]/, '3')
        tag.gsub!(/[o]/, '0')
        tag.gsub!(/[a]/, '4')
        p "The developers default handle is #{tag}"
  end

end

myownclass = Myownclass.new

# how do I store each instance? use hash?
myinstance = []

myownclass.code(100)
myownclass.naming("eat","read", "write")

# loop 50x on myownclass.whatever
# do I need "do"?
# I need to understand this better
50.times {|myownclass| myinstance << Myownclass.new}
myinstance.each do |myownclass|
  myownclass.naming("hi", "you", "me")
  myownclass.code(100)
end

p myinstance




