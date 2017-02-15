//create a function that reverses a string.
// set newstring variable to define after looping through original 
//string. 
// initialize counter variable to start at the last letter
//of a string and start a For Loop.
//give a command that iterates through the word and decreases through the
//word until it reaches zero.
function reverse(str) {

	var newstring = '';
	for (var i = str.length - 1; i >=0; i--) {
		newstring += str[i];	
	}
//return results into a new string
	return newstring;
}

// Driver code: enter a string in console.log to check the function. 
// have if statement in place to run the function if 1==1.
if (1==1); {
console.log(reverse('howdy'));}