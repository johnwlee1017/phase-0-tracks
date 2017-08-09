// pseudocode:
// take string and convert to array.
// create empty new array (reversed). get length of original array, use index and start from the last position and take the element and put in the new array.
// convert new array to string

function reverse(word) {
  var word_array =  word.split('');
  var total_index = word_array.length - 1;
  var reverse_array = [];

  for (var i = total_index; i > -1; i-=1) {
    reverse_array.push(word_array[i]);
  }

  return reverse_array.join('')
}

var result = reverse("hello")

console.log(reverse("hello"))