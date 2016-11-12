Big or small, web servers have the following characteristics:

It is a computer, or it is a walled-off chunk of memory pretending to be a computer, or it is a program on a computer.
It is set up to respond to HTTP requests (or even just one specific HTTP request for a specific URL).
It can perform one or more of the below tasks:
Send a file to a browser (usually HTML, CSS, JS, and videos/images), or send a listing of the contents of a folder.
Look up data in a database, and interpolate that data into a template. For instance, when you load someone's Facebook profile, the Facebook web server looks up that person's information in some kind of database, then loads that data into the generic Facebook profile template, similar to how you might use Ruby to interpolate a variable into a string.
Perform a calculation or execute an algorithm, like generating a list of directions from one location to another, for the purpose of responding to HTTP requests with that calculation result.