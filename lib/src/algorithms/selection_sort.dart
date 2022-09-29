List<int> selectionSort(List<int> array) {
  /* 
  Input: Unordered [List] of [int] 
  Output: Ordered [List] of [int]
  */

  for (var i = 0; i < array.length - 1; i++) {
    var lowestIndexSoFar = i;
    for (var j = i + 1; j < array.length; j++) {
      if (array[j] < array[lowestIndexSoFar]) {
        lowestIndexSoFar = j;
      }
    }

    if (lowestIndexSoFar != i) {
      var temp = array[i];
      array[i] = array[lowestIndexSoFar];
      array[lowestIndexSoFar] = temp;
    }
  }

  return array;
}
