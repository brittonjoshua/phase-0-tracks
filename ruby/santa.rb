class Santa
	attr_accessor :gender, :ethnicity

	def initialize(gender, ethnicity)
		puts "initializing Santa instance"
		@gender = gender
		@ethnicity = ethnicity
	end

reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
age = 0	

	def speak
		 puts "Ha, ha, ha! Hoopy Holidays."	
	end

	def eat_cookies_and_milk(cookie)
		puts "that was a good #{cookie}!"
	end

	def celebrate_birthday (old_age)
		new_age = old_age+1
		puts new_age
	end

	def get_mad_at(reindeer)
		reindeer_ranking.rotate("reindeer")
	end

	def gender=(new_gender)
		@gender = new_gender
	end
end

santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
santas.each do |san|
	san.speak
end 
santas.each do |san|
	san.speak 
	san.eat_cookies_and_milk("sugar cookie")
end

santas.map do |san|
	san.eat_cookies_and_milk("piece of fudge")
	end

santas.each do |san|
	san.celebrate_birthday(40)
	end	

santas.each do |san|
	 san.ethnicity
end



#write a program that creates a new santa with random gender and ethnicity.
# age is also random between 1-140
ethnicity = ["black", "Japanese", "Chinese", "Korean", "white"]
gender = ["male","female","transgender", "bigender"]


 50.times do |san|
 	@santa_ethnicity = ethnicity.sample
  	@santa_gender = gender.sample
 	@santa_age = rand(140)

p "This Santa is: #{@santa_ethnicity} and #{@santa_gender} and is #{@santa_age}."

end



