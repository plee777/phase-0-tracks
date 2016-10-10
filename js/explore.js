// create a function that takes a string as a parameter
// ++i returns the value of i after it has been incremented. 
// i++ returns the value of i before incrementing. 
function sayHello(string){
newString = ""
for (var i = 0; i < string.length; i++) {
	newString = string[i] + newString
}
return newString
}

if (true) {console.log(sayHello("Hi"));}

else {{console.log(sayHello("Bye."));}