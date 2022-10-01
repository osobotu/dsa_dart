/*
Write an algorithm to find the greatest single number in an array that has O(N) time complexity
Input: Array of integers
Output: Integer
*/

int greatestNumber(List<int> array) {
  int greatestNumberSoFar = array[1];

  for (var i = 0; i < array.length; i++) {
    if (array[i] > greatestNumberSoFar) {
      greatestNumberSoFar = array[i];
    }
  }

  return greatestNumberSoFar;
}
