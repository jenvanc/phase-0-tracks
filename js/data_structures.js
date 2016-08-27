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
