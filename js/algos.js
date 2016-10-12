// release 0 

//psuedocode 
//1. array created
//2. the program looks at:
//  2.1 each element in array
//  2.2 measures its length => stores it
//  2.3 in other words (loop through each element to determine string length)
//3. picks out the highest value
//4. drivercode = takesArray("array")
array = ["test", "testt", "testtt", "testttt"]

function takesArray(array){
	var takesArray = ""
	for (var i in array){
		if (takesArray.length < array[i].length)
			takesarray = array[i]
	}

 return takesArray;
}

array = ["test", "testt", "testtt", "testttt"]
console.log(takesArray(array))


// release 1

//psuedocode
//1. Create object1 and object2
//2. Create function program
//3. the program looks at:
//  3.1 Goes through object1 and sees if it matches anything with object2
//  3.2 I need to break this down better...
//  3.3 if there is a match, then return true
//  3.4 else, false
// //4. 
// object1 = {}
// object2 = {}

function match(object1,object2){
	for var key in object1) {
		if (object1[key]) == object2[key]){
			return true;
			}
		}
		return false;


console.log(match({animal: "gorilla", age: 4},{animal: "tiger", age: 4}))  //true


// release 2
// pseudocode
// 1. create function
// 2. input = integer(s) (integer represents length)
// 3. output = array(s) of strings
// 4. word length is random number between 1 through 10
// 5. generate a random letter of the alphabet
// 6. add "such" to the string
// 7. write driver code === generates, prints, feeds array. 

function returnRandom(integer){
	var 
}


// Write a function that takes an integer for length, and builds and returns an array of strings 
// of the given length. So if we ran your function with an argument of 3, we would get an array of 3
// random words back (the words don't have to be actual sensical English words -- "nnnnfph" totally 
// 	counts). The words should be of randomly varying length, with a minimum of 1 letter and a 
// maximum of 10 letters. (This involves a new trick, generating a random number, that you'll have to 
// 	look up, but the solution on how to do so is relatively straightforward.)

// Add driver code that does the following 10 times: generates an array, prints the array, 
// feeds the array to your "longest word" function, and prints the result.















