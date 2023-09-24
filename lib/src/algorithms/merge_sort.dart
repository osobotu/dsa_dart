List<int> mergeSort(List<int> array) {
  /// Implementation of merge sort
  /// Input: [2, 1, 4, 5, 6, 3]
  /// Output: [1, 2, 3, 4, 5, 6]

  // base case
  if (array.length == 1) {
    return array;
  }

  // split the array into two
  final midpoint = array.length ~/ 2;

  final leftHalf = array.sublist(0, midpoint);
  final rightHalf = array.sublist(midpoint);

  // sort the left half
  final sortedLeftHalf = mergeSort(leftHalf);

  // sort the right half
  final sortedRightHalf = mergeSort(rightHalf);

  // merge the sorted halves (combine them in order)
  int leftIndex = 0;
  int rightIndex = 0;
  int mainIndex = 0;

  while (leftIndex < sortedLeftHalf.length &&
      rightIndex < sortedRightHalf.length) {
    if (sortedLeftHalf[leftIndex] < sortedRightHalf[rightIndex]) {
      array[mainIndex] = sortedLeftHalf[leftIndex];
      leftIndex++;
    } else {
      array[mainIndex] = sortedRightHalf[rightIndex];
      rightIndex++;
    }
    mainIndex++;
  }

  while (leftIndex < sortedLeftHalf.length) {
    array[mainIndex] = sortedLeftHalf[leftIndex];
    leftIndex++;
    mainIndex++;
  }

  while (rightIndex < sortedRightHalf.length) {
    array[mainIndex] = sortedRightHalf[rightIndex];
    rightIndex++;
    mainIndex++;
  }

  return array;
}
