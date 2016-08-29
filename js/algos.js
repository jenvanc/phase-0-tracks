// create a function that takes an array as an argument
// assign an empty variable called longestPhrase
// iterate through array with #length
// if #length of array after index 0 is longer, replace longestPhrase
// return longestPhrase

function longPhrase(phrase) {
  var longestPhrase = ""
  for(var i = 0; i < phrase.length; i++) {
    if(phrase[i].length > longestPhrase.length) {
      longestPhrase = phrase[i];
      }
    }
      return longestPhrase;
}

// create a function that takes two objects as arguments
// if the two objects have at least one key-value match return true
// else return false

function keyValueMatch(object1, object2) {
    if(object1.name === object2.name) {
      return true;
  } else if(object1.age === object2.age) {
      return true;
  } else {
      return false;
  }
}


console.log(longPhrase(["sunglasses", "purse", "lipgloss"]))
console.log(longPhrase(["long phrase","longest phrase","longer phrase"]))

var horse = { name: "Priscilla", age: 6 }
var person1 = { name: "Steven", age: 54 }
var person2 = { name: "Tamir", age: 54 }
console.log(keyValueMatch(person2, person1))
console.log(keyValueMatch(person1, horse))
