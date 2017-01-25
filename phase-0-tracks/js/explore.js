// I begin by starting with the function name
var reverse = function(word) {
  // I make an empty array that will be returned
  var wordReverse = [];
  // I store the word split as an array into a new var
  var letter = word.split("");
  // I finish by joining wordReverse and storing in a new var
  var newWord = wordReverse.join("");
  //I begin the iteration backwords, as well as incrimenting backwords
  for (var i = letter.length-1; i >= 0; i--){
    // I push the current iteration into wordReverse
    wordReverse.push(letter[i]);
  } 
  // I finish by joining wordReverse and storing in a new var
  var newWord = wordReverse.join("");
  // now I will return newWord
  return newWord;
};

// I created a condition that if true, would run the reverese function
if (1 + 1 === 2){
  // I am printing the function 
  console.log(reverse("hello"));
};