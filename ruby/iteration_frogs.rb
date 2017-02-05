#RELEASE ONE. Declare an array and hash.
#write array for fruits, and hash of foods and cooking instructions.. 

fruit = ["apple","orange","banana","kiwi","melon"]
food_prep = {
	"Steak"=> "throw on grill until it smells good.eat", 
	"Potatos" => "boil for 20-30 min. eat",
	"rice"=> "turn on instant pot, watch magic unfold.",
	"oatmeal"=> "don't bother."
}

#print each fruit type in array. Print array before listing and changing.
puts "array:"
  p fruit
fruit.each do |type|
	puts "heres a type of fruit: #{type}"
end

#reverses fruit name to create a new fruit
fruit.map! do|type|
 puts "here's a new hybrid fruit: #{type.reverse}"
end


#print each food in hash. Capitalize the food key.
puts "hash:"
p food_prep
  food_prep.each do|ingredient, prep|
    puts "this is how you make #{ingredient.capitalize}: #{prep}"
end

#Release Two. create an array of integers and hash of integers. 

numbers = [1,2,3,4,5,6,7]
animals = {
  wolf: "carnivore", 
  dog: "carnivore", 
  cow: "herbivore", 
  goldfish: "herbivore",
  panda: "herbivore",
  tyrannasaurous: "carnivore"
}

numbers.delete_if { |number| number<4}
	puts "these are the numbers that are left:#{numbers}"

numbers.select! {|number| number % 2 == 0}
	puts "these are the even numbers left:#{numbers}"
	
animals.delete_if { |animal, diet| animal == "tyrannasaurous"}
	puts "here's the hash after getting rid of non-living animals...: #{animals}"
	
animals.select! { |animal, diet| diet == "herbivore"}
  puts "here's the hash after getting rid of carnivores: #{animals}"
