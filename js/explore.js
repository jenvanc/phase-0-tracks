// Create empty string variable reversedString
// Find last letter of string
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

console.log(practiceTest)

if (1 == 1) {
  console.log(practiceTest)
}
