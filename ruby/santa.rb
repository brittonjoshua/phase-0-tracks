## define a Santa class and include 3 instance methods : speak, eat milk and cookies, and initialize.
## Add attributes of reindeer_ranking(array), and age(integer) 
## which is not passed on in initialization.
## Allow age and ethnicity to be readable from outside class.
## Allow gender to be readable/writable outside class. 

class Santa
  attr_accessor :gender
  attr_reader :age, :ethnicity
	@age = 0
	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

##Add the attributes of gender (string),ethnicity(string)

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
	end 

## add celebrate birthday method that ages santa by one year.
	def celebrate_birthday
		new_age = @age +1
	end 

	def speak
		puts "Ho, ho, ho happy holidays!"
	end

## add method that takes reindeers name as an argument and moves it to the last position.
	def get_mad_at (reindeer)
		@reindeer_ranking.index(reindeer).rotate
	end 

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end

## add setter method that allows gender to be accessed and writable outside class.
## def gender=(gender)
##  @gender = gender
## end
## add getter methods for age and ethnicity to be accessed/readable outside class.
## def age
##  @age
## end

##	def ethnicity 
##		@ethnicity 
##	end
end

##Add test code to initialize different santa instances and call the methods 

santa1 = Santa.new("trans", "eskimo")
p santa1.eat_milk_and_cookies("sugar") 
santa2 = Santa.new("female", "Latino") 
p santa2.eat_milk_and_cookies("gingerbread")
p santa2.speak

##Driver code, add some new instances of Santa class.
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")


##add driver code that will select random gender/ethnicity from example gender and ethnicity arrays.
santa_gender = ["agender", "male", "female", "transgender", "gender fluid", "bigender"]
santa_ethnicity = ["black", "Latino", "Japanese", "white", "Korean", "Samoan"]

santa_array = []

50.times do 
  @gender = santa_gender.sample
  @ethnicity = santa_ethnicity.sample
  @age = rand(140)
  santa_array << Santa.new(@gender, @ethnicity)
  
## print out the results of each newly created santa
puts "This santa is #{@gender} and #{@ethnicity} and is #{@age} years old."
puts "________________________________________________"
end 
  