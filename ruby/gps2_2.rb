# Method to create a list.
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Define a method
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: Hash

def grocery_list(groceries)
	list ={}
		groceries.split(" ").each {|item| list[item] = 1}
	 list 
end

our_list = grocery_list("carrots apples pizza cereal")



# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: define method that pushes items into list hash.
# output: 

def add_item(list, new_item)
	list[new_item] = 1
end

add_item(our_list, "bananas")
p our_list

# Method to remove an item from the list
# input: delete item. 
# steps: define method that removes item from list.
# output: 

def remove_item(list, delete_item)
	list.delete(delete_item)
end
remove_item(our_list, "carrots")
p our_list

# Method to update the quantity of an item
# input: Three inputs:list,item,quantity
# steps: define a method that uses three parameters to update a quantity.
# output:

def update_quantity(list, updated_item, quantity=1)
	list[updated_item] = quantity
end
update_quantity(our_list, "bananas")
p our_list
# Method to print a list and make it look pretty
# input: 
# steps: define a method that iterates through a hash using .each.
# output: nicely printed list.

def print_list(list)
	list.each {|item, quantity| puts "you have #{quantity} #{item}."}
end
print_list(our_list)

#REFLECTIONS...
# It was nice being able to break each method down into different parts and 
#staring with pseudocoding made the process move smoothly as the objectives were clear. 
#Using a hash for this list was appropriate as it's an unordered list and fits
# well with  key-value parameters.
#A method returns the value of the last statement in the method.
#You may pass different arrays, hashes, blocks into methods as arguments.
#This exercise helped understand the proper way of creating a series of different methods 
#that combine the use of hashes, arrays and blocks to perform different types of functions.
#I think I'm still getting comfortable with the relationship of blocks and data structures within methods, but 
#getting there! The usage of .each became quite a bit clearer with this session.
