
puts "What's the hamster name?"
	name=gets.chomp
puts "How loud is your hamster? (From 1-10)"
	volume=gets.chomp
#	volume.to_i
puts "Whats the fur colod of the hamster?"
	fur=gets.chomp
puts "Is he/she a good adoption candidate?"
	adoption=gets.chomp	
if adoption=="yes"
	adoption=true
else
	adoption=false
end 	
puts "Estimated age?"
	age=gets.chomp
	age.to_i 
if age=""
	puts "nil"
end
puts "#{age}"
puts "This is the hamster's name is #{name}"
puts "He's loud with a volume level of #{volume}"
puts "The fur color is #{fur}"
puts "Is he/she a good cadidate for adoption? #{adoption}"
puts "The hamster is #{age}"

