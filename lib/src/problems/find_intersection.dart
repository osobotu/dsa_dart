/// Takes two arrays [array1], [array2] and returns their intersection
///
/// Example:
/// The intersection of [1, 2, 3, 4, 5] and [0, 2, 4, 6, 8] is [2, 4]

List findIntersection(array1, array2) {
  List intersection = [];

  var hashTable = {};

  for (var item in array1) {
    hashTable[item] = true;
  }

  for (var item in array2) {
    if (hashTable[item] != null) {
      intersection.add(item);
    }
  }

  return intersection;
}
