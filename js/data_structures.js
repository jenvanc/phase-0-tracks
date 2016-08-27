var colorArray = ["red", "orange", "yellow", "green"]
var nameArray = ["Stephanie", "Jenna", "Jessica", "Patrick"]

// colorArray.push("purple")
// console.log(colorArray)

// nameArray.push("Ben")
// console.log(nameArray)

//keys = horse name values = colors

var horse = {}
//horse['Stephanie'] = "red"


for (var i = 0; i < nameArray.length; i++) {
	horse[nameArray[i]] = colorArray[i];
}
console.log(horse)

var car = {}

function Car(year, color) {
  console.log("Our new car:", this);

  this.year = year;
  this.color = color;

  this.start = function() {console.log("Vroom!"); };

  console.log("Car manufacturing complete");
}

console.log("Lets make a car...");

var newCar = new Car(1986, "green");
console.log(newCar);
console.log("Start your engine!");
newCar.start();

console.log("Let's male a car...");

var newCar = new Car(1992, "blue");
console.log(newCar);
console.log("Start your engine!");
newCar.start();
