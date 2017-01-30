var colors = ["blue", "yellow", "red", "green"];
var names = ["frankie", "zooey", "magpie", "stanley"];

colors.push("magenta");
names.push("billie");

function horse (key, index){
	var horsey = {}
	for (var i = 0; i< key.length; i++){
		horsey[names[i]] = colors[i]
	}
	return horsey
}

horse(names, colors)
 
function Car(model, make, color) {
	console.log ("New car:", this);
	this.model = model;
	this.make = make;
	this.color = color;
	this.noise = function() { console.log("Shakes past 50mph"); };

	console.log("Car initialization complete.");
}

var secondCar = new Car("Ranchero", "Ford", "rusted")
secondCar.noise()
console.log(secondCar);

var thirdCar = new Car("Mini", "Austin", "Dark Green")
console.log(thirdCar);

var fourthCar = new Car("356", "Porsche", "Grey")
console.log(fourthCar);