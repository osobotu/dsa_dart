/// Write a function that given an array of strings returns the first duplicate.
///
/// Example:
/// Takes ['a', 'b', 'c', 'd', 'c', 'e', 'f'] and returns 'c'
///

String firstDuplicate(List<String> array) {
  var hashTable = {};

  for (var item in array) {
    if (hashTable[item] == null) {
      hashTable[item] = 1;
    } else {
      return item;
    }
  }
  // return an empty string if you have no duplicates
  return '';
}
