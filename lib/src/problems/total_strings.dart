/// Write a recursive function that takes a list of strings ['ab', 'c', 'def', 'ghij']
/// and returns the total number of strings in the list. The function will return 9 for
/// this list.
///

int totalStrings(List<String> array) {
  if (array.length == 1) {
    return array[0].length;
  }
  return array[0].length + totalStrings(array.sublist(1));
}
