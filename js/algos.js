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
// if the two objects have at least one key-value match return true, used sample input
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

// create a variable of the alphabet
// create string of random letters from alphabet
//  - save output of random letter to be stored in an array
// create function to store output of random letter generator
// store strings of random letter in array


function randomLetter() {
  var alphabet = "abcdefghijklmnopqrstuvwxyz"
  var length = Math.floor(Math.random() * (10)) + 1;
  string = ""

  for (var i = 0; i < length; i++) {
    letterPicker = Math.floor(Math.random() * (26));
    string += alphabet.charAt(letterPicker);
  }
  return string
}

function arrayStorage(lengthOfArray) {
  stringArray = []
  for (var i = 1; i <= lengthOfArray; i++) {
    stringArray.push(randomLetter())
  }
  return stringArray
}

console.log(longPhrase(["sunglasses", "purse", "lipgloss"]))
console.log(longPhrase(["long phrase","longest phrase","longer phrase"]))

var horse = { name: "Priscilla", age: 6 }
var person1 = { name: "Steven", age: 54 }
var person2 = { name: "Tamir", age: 54 }
console.log(keyValueMatch(person2, person1))
console.log(keyValueMatch(person1, horse))

console.log(arrayStorage(5))
console.log(arrayStorage(3))

for (var i = 0; i < 10; i++) {
  arrayLength = Math.floor(Math.random() * 9) + 1;
  list = arrayStorage(arrayLength)
  console.log(longPhrase(list))
}
