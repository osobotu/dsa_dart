// Linear search of an ordered array
int linearSearchOfOrderedArray(
    {required List<int> array, required int searchValue}) {
//     Iterate over the array
  for (var i = 0; i < array.length; ++i) {
    final num = array[i];
//       Return the index when you find the value
    if (num == searchValue) {
      return i;
    }
//       break out of the loop if the searchValue is greater than the current number
    else if (num > searchValue) {
      break;
    }
  }

//     Return null if the value is not found.
  return -1;
}
