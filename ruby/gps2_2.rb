# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # identify which items are wanted
  # arr = ["carrots", "apples", "ceral"]
  # set default quantity : 0
  # print the list to the console [can you use one of your other methods here?]
# output: hash

def create_list(items)
	item_hash = {}

	item_arr = items.split(" ")
	item_arr.each do |item|
		item_hash[item] = 0
	end
	return item_hash
end

# Method to add an item to a list
# input: item name and optional quantity
# steps: 
	# write down additional items
	# set quantity for item
	# print the list to the console (additional to what was created)
# output: hash

def add_item(item_hash, qty=0)
	item_hash[name] = qty

	return item_hash
end


# Method to remove an item from the list
# input: string of items separated by spaces
# steps: 
	# Identify which items need to be removed
	# Make sure that the items are actually added already
	# Write down the item(s) to remove; separated by space
	# take the items down
# output: hash

def remove_item(item_hash, name)
	item_hash.delete(name)
	return item_hash
end


# Method to update the quantity of an item
# input: numbers 
# steps: determine what quantity
# output: updated array

def update_item(item_hash, name,qty)
	item_hash[name] = qty

	return item_hash
end

# Method to print a list and make it look pretty
# input: 
# steps:
# output:

def print_list(item_hash)
	item_hash.each do |item,qty|
		puts item + ":#{}"
	end
end


###DRIVER CODE########

my_hash = create_list("carrots apples cereal pizza")
p add_item(my_hash,"orange",4)
p add_item(my_hash,"bread")
p remove_item(my_hash,"apples")
p update_item(my_hash,"cereal",10)
print_list(my_hash)

# What did you learn about pseudocode from working on this challenge?
# psuedocodes are critical. Without writing pseudocode, you can get lost on symantics.
# I think it is a great way to debug as well.

# What are the tradeoffs of using arrays and hashes for this challenge?
# hash is more useful for key and value type of scenarios. and it is much more robust.

# What does a method return?
# Methods return a hash that filled with name and quantity of items.

# What kind of things can you pass into methods as arguments?
# hash, array, variables

# How can you pass information between methods?
# I called the name of method and give an argument inside of the other method.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# I still need more practice on hashes and its implication.
