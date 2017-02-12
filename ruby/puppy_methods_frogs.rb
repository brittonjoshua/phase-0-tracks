# class Puppy

#   def initialize
#     puts "Initializing new puppy instance ..."
#   end

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def speak(x)
#     puts "Woof!" * x
#   end

#   def rollover
#     puts "*rollover*"
#   end

#   def dog_years(human_years)
#     p human_years * 7
#   end

#   def jump(h)
#     puts "*jumps #{h}ft high*"
#   end

# end

# rover = Puppy.new
# rover.speak(5)
# rover.rollover
# rover.dog_years(5)
# rover.jump(3)

class Kitten

  def initialize
    puts "Initializing new kitten instance ..."
  end

  def meow(x)
    puts "meow" * x
  end

  def chase(m)
    puts "chases laserpointer for #{m} minutes"
  end

end

puts "This is creating 50 instances of the class Kitten:"
kittens_array = []
50.times do
  kittens_array << kitten = Kitten.new
end

puts "This is the array:"
p kittens_array

puts "This is calling both methods on each item in the array:"
kittens_array.each do |kitten|
  kitten.meow(rand(10))
  kitten.chase(rand(10))
end

