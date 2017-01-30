// create an array of different phrases with differing lengths.

var array = ["long phrase","longest phrase","longer phrase"]
var secondArray = ["eggs", "toast", "coffee", "banana"]

//create a function that will return the longest string in an array. 

function arrayLength(arr) {
	var longest = 0
	var longestString = ""
	for (i =0; i <=arr.length -1; i++) {
		if (arr[i].length > longest) {
			longest = arr[i].length;
			longestString = arr[i]
		}
	}
	console.log(longestString)
}

arrayLength(array);
arrayLength(secondArray);

// write a function that takes two objects and checks to see if the 
// objects share a key-value pair. If two items are equal, return true.
// If not, move on to the next pair. If no pairs are equal, return false.

var Steven = {name: "Steven", age: 54}
var Tamir = {name: "Tamir", age: 54}
var Dave ={name: "Dave", age: 34}


function equalObject (obj1, obj2) {
	if (obj1[0] ==obj2[0]) {
	return true;}
	else if (obj1[1]==obj2[1]){
	  return true;
	}
		else {
		return false	
		}
	}

equalObject(Steven, Tamir)

//create an alphabet string.
//write a function that takes an integer, builds and returns a random string of the 
//given length. 
//random string will be the length of random number recieved(1-10 characters).
//iterate through alphabet array and return number of random letters.
//push string into new string array.

function randomString(int)
{
var alphabet = "abcdefghijklmnopqrstuvwxyz"

var newWord = ""

for( var i=0; i < int; i++ )
	newWord += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
return newWord;
}

console.log(randomString(7))

//Driver code: Run though randomString function 10 times to return 10 random strings.
//print array
//Feed the new array to the arrayLength function **didn't get there**
//print results


console.log("Here's the final random words...")

for (var i = 1; i<10; i++) randomString(i);
  arrayLength(randomString(i));
  
console.log(randomString(i))

