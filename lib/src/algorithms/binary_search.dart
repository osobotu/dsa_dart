int binarySearch({required List<int> array, required int searchValue}) {
  /* 
  Implementation of Binary Search algorithm in Dart.
  Input: Ordered array of integers [array] and search value [searchValue]
  Output: Index of [searchValue] if it is found or -1 if it isn't found.
*/

  var lowerBound = 0;
  var upperBound = array.length - 1;

  while (lowerBound <= upperBound) {
    final midpoint = ((lowerBound + upperBound) / 2).floor();

    final valueAtMidpoint = array[midpoint];

    if (searchValue == valueAtMidpoint) {
      return midpoint;
    } else if (searchValue < valueAtMidpoint) {
      upperBound = midpoint - 1;
    } else if (searchValue > valueAtMidpoint) {
      lowerBound = midpoint + 1;
    }
  }
  return -1;
}
