List<int> bubbleSort(List<int> array) {
/* 
  Implementation of Bubble Sort algorithm in Dart.
  Input: Unordered array integers
  Output: Ordered array of integers
*/

  var maxUnsortedIndex = array.length - 1;
  var isSorted = false;

  while (!isSorted) {
    isSorted = true;
    for (var i = 0; i < maxUnsortedIndex; i++) {
      if (array[i] > array[i + 1]) {
        // swap values
        var temp = array[i];
        array[i] = array[i + 1];
        array[i + 1] = temp;
        isSorted = false;
      }
    }
    maxUnsortedIndex -= 1;
  }
  // print(array);
  return array;
}
