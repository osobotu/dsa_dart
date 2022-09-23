int? binarySearch({required List<int> array, required int searchValue}) {
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
  return null;
}
