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

console.log(longPhrase(["sunglasses", "purse", "lipgloss"]))
console.log(longPhrase(["long phrase","longest phrase","longer phrase"]))
