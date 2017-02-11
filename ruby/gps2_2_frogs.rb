#GPS 2.2


# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # define create_list(string)
  # split list into an array of items 
  # iterate through array and put it into hash, assign values to 1
  # print the list to the console [can you use one of your other methods here?]
# output: hash

def create_list(string)
	array = string.split(' ')
	list = { }
	array.each do |item|
		list[item] = 1
	end
	list
end




# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
	# define add_item(item_name, quantity)
		# add key and value to hash 'list'
# output: hash

def add_item(list, item_name, quantity)
	list[item_name] = quantity
	list
end




# Method to remove an item from the list
# input: list, item_name
# steps:
	#define remove_item(list, item_name)
		# delete the key value of item_name
# output: hash

def remove_item(list, item_name)
	list.delete(item_name)
	list
end



# Method to update the quantity of an item
# input: list, item name, and quantity
# steps:
	#define update_quantity(list, item_name, quantity)
		#update the value of item_name to the new quanity
# output: hash

def update_quantity(list, item_name, quantity)
	list[item_name] = quantity
	list
end

# Method to print a list and make it look pretty
# input: list 
# steps:
	#define print_list(list)
		#iterate through list 
			#puts key and value into string output
# output: list


def print_list(list)
	puts "\nHere is the list:"
	list.each do |item, quantity|
		puts "#{item}: #{quantity}"
	end
end



list = create_list("eggs ham")
list = add_item(list,'meat', 1)
list = remove_item(list, 'hello')
list = update_quantity(list, 'bye', 4)
print_list(list)

list = create_list("eggs ham")
puts "Here is the grocery list #{list}"

puts "Please enter an item and quantity you would like to add:"
puts "Item:"
item = gets.chomp
puts "Quantity:"
quantity = gets.chomp
list = add_item(list, item, quantity)
puts list


puts "\nPlease enter an item and quantity you would like to remove:"
puts "Item:"
item = gets.chomp
list = remove_item(list, item)
puts list


puts "\nPlease enter an item and quantity you would like to update:"
puts "Item:"
item = gets.chomp
puts "Quantity:"
quantity = gets.chomp
list = update_quantity(list, item, quantity)
puts list


print_list(list)

#REFLECTIONS...
# It was nice being able to break each method down into different parts and 
#starting with pseudocoding made the process move smoothly as the objectives were clear. 
#Using a hash for this list was appropriate as it's an unordered list and fits
# well with  key-value parameters.
#A method returns the value of the last statement in the method.
#You may pass different arrays, hashes, blocks into methods as arguments.
#This exercise helped understand the proper way of creating a series of different methods 
#that combine the use of hashes, arrays and blocks to perform different types of functions.
#I think I'm still getting comfortable with the relationship of blocks and data structures within methods, but 
#getting there! The usage of .each became quite a bit clearer with this session.	