/*
Write an algorithm that takes two arrays of integers and returns an array of integers
that can be found in both arrays.
*/

List<int> intersection(
    {required List<int> firstArray, required List<int> secondArray}) {
  var result = <int>[];
  for (var i = 0; i < firstArray.length; i++) {
    for (var j = 0; j < secondArray.length; j++) {
      if (firstArray[i] == secondArray[j]) {
        result.add(firstArray[i]);
        break;
      }
    }
  }
  return result;
}
