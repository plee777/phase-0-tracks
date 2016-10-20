def create_list(items)
	item_hash = {}
	item_list = items.split(" ")
	item_list.each do |item|
		item_hash[item] = 0
	end
	return item_hash
end

def add_item(item_hash,item,q=1)
	item_hash[item]= q
	return item_hash
end

def remove_item(item_hash, item)
	item_hash.delete(item)
	return item_hash
end

def update_item(item_hash, item, q)
	item_hash[item] = q
	return item_hash
end

def print_list(item_hash)
	item_hash.each do |item,qty|
		puts item +":#{qty}"
	end
end

# driver code 

item_hash = create_list("orange banana strawberry melon")
p add_item(item_hash,"berries",4)
p add_item(item_hash,"grapes")
p remove_item(item_hash, "orange")
p update_item(item_hash, "banana", 10)
print_list(item_hash)


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

