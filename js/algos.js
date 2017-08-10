// take array (of strings) and find length of each element, and create new array of lengths.
// take array of strings and array of lengths and create object (words) to have key/value pair.
// create sort function with lengths array, loop and compare each element(index) with each other and swap (to the right) if length is greater than the left element.
// create function to find (return) key from the object using the value.


var word_array = ["long phrase","longest phrase","longer phrase"]
var length_array = []
var words = {}

for (var i = 0; i < word_array.length; i++) {
  length_array.push(word_array[i].length);
}

// console.log(length_array)

for (var i = 0; i < word_array.length; i++) {
  words[word_array[i]] = length_array[i];
}

// console.log(words)

function sort(length_array) {
  var array = length_array;

  for (var i = 0; i < array.length; i++) {
    for (var ii = 0; ii < array.length - i - 1; ii++) {
      if (array[ii] > array[ii+1]) {
        var prev_element = array[ii];
        array[ii] = array[ii+1];
        array[ii+1] = prev_element;
      }
    }
  }
  return length_array;
}

// console.log(sort(length_array))

function find_word(words, length_array) {
  var object = words;
  var value = length_array[length_array.length-1];

  return Object.keys(object).find(key => object[key] === value);
}

console.log(find_word(words, length_array))





