//declare two separate arrays; one for colors, one for horse names.
var colors = ["blue", "yellow", "red", "green"];
var names = ["frankie", "zooey", "magpie", "stanley"];

//push a new color and name to the arrays

colors.push("magenta");
names.push("billie");

//add an object that creates new key-value objects for horses of different colors.

function horse (key, index){
	var horsey = {}
	for (var i = 0; i< key.length; i++){
		horsey[names[i]] = colors[i]
	}
	return horsey
}

horse(names, colors)
 
 var carNoise = function() {
 	console.log("shakes past 50mph!");
 };

function Car(model, make, color, noise) {
	console.log ("New car:", this);
	this.model = model;
	this.make = make;
	this.color = color;
	this.noise = noise;

	console.log("Car initialization complete.");
}

var secondCar = new Car("Ranchero", "Ford", "rusted", "Shakes past 50mph")
secondCar.noise
console.log(secondCar);

var thirdCar = new Car("Mini", "Austin", "Dark Green", "rattles")
console.log(thirdCar);

var fourthCar = new Car("356", "Porsche", "Grey", "brakes squeek")
console.log(fourthCar);