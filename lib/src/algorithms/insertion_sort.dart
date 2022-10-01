List<int> insertionSort(List<int> array) {
  /* 
  Implementation of Insertion Sort algorithm in Dart.
  Input: Unordered array of integers [array]
  Output: Ordered array of integers
  */

  for (var i = 1; i <= array.length - 1; i++) {
    var tempValue = array[i];
    var currentPosition = i - 1;

    while (currentPosition >= 0) {
      if (array[currentPosition] > tempValue) {
        array[currentPosition + 1] = array[currentPosition];
        currentPosition -= 1;
      } else {
        break;
      }
    }
    array[currentPosition + 1] = tempValue;
  }

  return array;
}
