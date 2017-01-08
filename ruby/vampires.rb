puts "How many applicants will be processed?"
	applicants=gets.chomp.to_i
until applicants==0
#Survey for incoming applicants
puts "What is your name?"
	name=gets.chomp
if name=="Drake Cula" || "Tu Fang"
	name=false
else name=true
end 
puts "How old are you?"
	stated_age=gets.chomp.to_i

puts "What year were you born?"
	birthday=gets.chomp.to_i

current_year= 2017
real_age= current_year-birthday
if real_age==stated_age
	real_age=true
end
puts "Would you like some garlic bread? (Y/N?)"
likes_garlic=gets.chomp
	if likes_garlic=="y"
		likes_garlic=true
	else likes_garlic=false
end
puts "Would you like to enroll in health insurance? (Y/N?)"	
health_insurance=gets.chomp
	if health_insurance=="y"
		health_insurance=true
	else health_insurance=false
end
if real_age && likes_garlic || health_insurance
	puts "Probably not a vampire"
		elsif !real_age && (!likes_garlic || !health_insurance)
			puts "Probably a vampire"
		elsif !real_age && !likes_garlic && !health_insurance
			puts "Almost certainly a vampire"
		elsif !name
			puts "definitely a Vampire"
  		else puts "Results inconclusive"
	end
applicants=applicants-1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."














		
