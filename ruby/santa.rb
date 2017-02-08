## define a Santa class and include 3 instance methods : speak, eat milk and cookies, and initialize.
##Add the attributes of gender (string),ethnicity(string), reindeer_ranking(array), and age(integer) 
## which is not passed on in initialization.
class Santa

	@age = 0
	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	
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

## add setter method that allows gender to be accessed outside class.
	def gender=(gender)
		@gender = gender
	end
end

##Add test code to initialize different santa instances and call the methods 

santa1 = Santa.new
p santa1.eat_milk_and_cookies("sugar") 
santa2 = Santa.new 
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