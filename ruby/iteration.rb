#RELEASE ONE. Declare an array and hash.
#write array for music types, and hash of bands and albums.. 

music=["rock","folk","soul","jazz","funk"]
bands={
	"rolling stones"=>"Exile on Main St.", 
	"neil young"=>"Harvest Moon",
	"beatles"=>"White Album",
	"devo"=>"Freedom of Choice"
}

#print each music type in array. Print array before listing and changing.
puts "array:"
  p music
music.each do |genres|
	puts "heres a music genre: #{genres}"
end

#reverses genre name to create a new genre
music.map! do|genres|
 puts "here's a new music genre: #{genres.reverse}"
end


#print each band and album in hash. Capitalize band name.
puts "hash:"
p bands
  bands.each do|band, album|
    puts "this is (arguably) #{band.capitalize}'s best album: #{album}"
end

#Release Two. create an array of integers and hash of integers. 

numbers=[1,2,3,4,5,6,7]
animals={
  wolf:"carnivore", 
  dog:"carnivore", 
  cow:"herbivore", 
  goldfish: "herbivore",
  panda:"herbivore"
}

numbers.delete_if{|number|number<4}
	puts "these are the numbers that are left:#{numbers}"
numbers.select!{|number| number % 2 == 0}
	puts "these are the even numbers left:#{numbers}"



animals.select! {|animal,diet| diet == "herbivore"}
	puts "here's the hash after filtering for \"\herbivores\"\:#{animals}"
if animals.has_value?("herbivore")
  animals.delete_if{|diet|diet=="carnivore"}
end
	puts "here's the hash returned with all keys having a value of true: #{animals}"
#this isn't quite right