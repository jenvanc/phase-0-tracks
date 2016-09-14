// Create empty string variable reversedString
// Find last letter of string passed to function
// Add last letter to new variable, continue to add new last letter to variable
// return reversedString

function reverse(string) {
  var reversedString = "";
  for (var i = string.length - 1; i >= 0; i--) {
    reversedString += string[i]
  }
  return reversedString
}

var practiceTest = reverse("hello")
var anotherTest = reverse("waterbottle")

console.log(practiceTest)

if (anotherTest === "elttobretaw") {
  console.log(anotherTest)
}
