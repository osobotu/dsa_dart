/// This algorithm takes two arrays [array1 and array2]
/// and determines if the smaller array is a subset of
/// the larger array.
///
/// Example:
/// ```
/// final array1 = [1, 2, 3, 4, 5]
/// final array2 = [2,3,5]
/// final result = isSubset(array1, array2)
/// print(result) // prints true.
///
/// ```
///
bool isSubset(array1, array2) {
  var largerArray;
  var smallerArray;
  var hashTable = {};

  if (array1.length > array2.length) {
    largerArray = array1;
    smallerArray = array2;
  } else {
    largerArray = array2;
    smallerArray = array1;
  }

  for (var item in largerArray) {
    hashTable[item] = true;
  }

  for (var item in smallerArray) {
    if (hashTable[item] == null) {
      return false;
    }
  }

  return true;
}
