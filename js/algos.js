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
  for (var i in object1) {
    if (object2.hasOwnProperty(i)) {
      if (object1[i] === object2[i]) {
        return true;
      }
    }
  }
  return false;
}

// create a variable of the alphabet
// create string of random letters from alphabet
//  - save output of random letter to be stored in an array
// create function to store output of random letter generator
// store strings of random letter in array

function randomLetter() {
  return 'abcdefghijklmnopqrstuvwxyz'.charAt(Math.floor(Math.random() * 26));
}

function generateRandomWords(n) {
  var results = [];
  for (var i = 0; i < n; i++) {
    var length = Math.floor(Math.random() * 10 + 1);
    var word = "";
    for (var j = 0; j < length; j++) {
      word += randomLetter();
    }
    results.push(word);
  }
  return results;
}

console.log(longPhrase(["sunglasses", "purse", "lipgloss"]))
console.log(longPhrase(["long phrase","longest phrase","longer phrase"]))

var horse = { name: "Priscilla", age: 6 }
var person1 = { name: "Steven", age: 54 }
var person2 = { name: "Tamir", age: 54 }
console.log(keyValueMatch(person2, person1));
console.log(keyValueMatch(person1, horse));

for (var i = 0; i < 10; i++) {
  var wordArray = generateRandomWords(5);
  console.log(wordArray);
  console.log(longPhrase(wordArray));
}
