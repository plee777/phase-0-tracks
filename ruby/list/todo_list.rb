class TodoList

	def get_items(todolist_array)
		todolist_array
	end

	def add_item(new_item,todolistod_array)
		todolist_array.push(new_item)
		todolist_array
	end

	def delete_item(x)
		p 'mow the lawn'

	end

end

todolist_array = ["do the dishes", "mow the lawn"]

todolist = TodoList.new
p todolist.get_items(todolist_array)
p todolist.add_item("do laundry",todolist_array)
# p todolist.delete_item('do the dishes')

