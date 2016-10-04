array = [1, 3, 5, 8, 4, 6, 7, 9, 2]
i = 0
j = 1
key = 0

while j < array.length

	key = array[j] 
	i = j - 1

	while (array[i] > key) && (i >= 0)
		array[i + 1] = array[i] 		
		i -= 1 
	end


	array[i + 1] = key

	j += 1 
end

puts array



# ============RELEASE 1 ============

def fib(integer)
	fib_first = [0]
	fib_array =[0,1]

	if integer == 1
		return fib_first
	elsif integer == 2
		return fib_array 
	end

index = 2


	while index < integer
		fib_array[index] = fib_array[index-2] + fib_array[index-1]
		index += 1
	end
	return fib_array

end

	p fib(1)
	p fib(4)
	# p fib(100)
	p fib(100)[-1]


fib(1) = [0]
fib(2) = [0,1]


fib(4) = [0,1,1,2]


# ============RELEASE 0 ============
arr = [42, 89, 24, 1]

def search_array(arr,integer)
index = 0
	while index < arr.length
		if arr[index] == integer
			return index	
		end
		
		index += 1
	

	end

	return nil

end
p search_array(arr, 20)
p search_array(arr, 1)
