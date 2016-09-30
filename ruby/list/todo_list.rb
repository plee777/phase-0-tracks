class TodoList
	def initialize(todolist_array)
		@todolist_array = todolist_array 
	end

	def get_items
		@todolist_array
	end

	def add_item(new_item)
		@todolist_array.push(new_item)
	end

	def delete_item(old_item)
		@todolist_array.delete(old_item)

	end

	def get_item(old_item)
	@todolist_array[old_item]

	end

end

todolist = TodoList.new(["do the dishes","mow the lawn"])
p todolist.get_items
p todolist.add_item("do laundry")
p todolist.delete_item('do the dishes')
p todolist.get_item(0)

