test = ["adriana", "paul"]
2.times { |test| puts "adriana meets #{test}"}

# 1. Declare an array 
# 2. populate each of them with data
# 3. declare a hash

letters = ["a", "b", "c", "d"]

letters_hash = {1=> 'one', 2 => 'two', 3 => 'three'}

["a", "b", "c", "d"].each {|b| puts "hello alphabet #{b}"}

[letters].map {|letters| puts "hello alpha #{letters}"}
[letters].map! {|letters| puts "hello alpha #{letters}"}

# ============= RELEASE 2 ==========================
arr = [1,2,3,4,5,6,7]
arr_hash = {1=> 'one', 2 => 'two', 3 => 'three', 4=> 'four', 5 => 'five', 6 => 'six', 7 => 'seven'}

arr.delete_if { |a| a < 4 }
arr_hash.delete(5) {|test| puts "#{test} not found"}
#q: tyler: how do we print this to check?

arr.select {|num| num.even? }
arr_hash.select {|k,v| v > 3 }
#q: tyler: why does this fail? hash fail?

arr.sort { |x,y| y<=> x }
#q: tyler: why do we need both x and y
arr_hash.key(3)   #=> "b"

arr.cycle(3) {|x| puts x }
arr.drop_while {|i| i < 3 }
#couldnt find a working solution for hash.

