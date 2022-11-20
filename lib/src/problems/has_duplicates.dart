/* 
Has Duplicates

Given an array of integers, return true if it has at least one duplicate value or false if it has none. 
Example: 
Return true for [1, 2, 4, 1]
Return false for [1, 2, 4, 3]


*/

import 'dart:math' as math;

bool hasDuplicate(List<int> array) {
  final max = array.reduce(math.max);
  var existingIntegers = List.generate(max + 1, (index) => index * 0);

  for (var i = 0; i < array.length; i++,) {
    if (existingIntegers[array[i]] == 1) {
      return true;
    } else {
      existingIntegers[array[i]] = 1;
    }
  }

  return false;
}
