
var colors = ["red", "orange", "yellow", "green"];

var names = ["Ed", "April", "Jenna", "Chad"];

colors.push("blue");
console.log(colors);

names.push("Jason");
console.log(names);

var horses = {}

for (var i = 0; i < names.length; i++){
	horses[names[i]] = colors[i];
}

console.log(horses);

function Car(color, isManuel, year){

	console.log("Our new car:", this);
	this.color = color;
	this.isManuel = isManuel;
	this.year = year;

	this.honk = function(){console.log("Honk!");};

	console.log("CAR INITIALIZATION COMPLETE");
}

var usedCar = new Car("green", true, 1999);
console.log(usedCar);
usedCar.honk();

var newCar = new Car("white", false, 2016);
console.log(newCar);
newCar.honk();
