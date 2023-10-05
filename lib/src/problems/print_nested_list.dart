/// Write a recursion function that takes an array of integers and other
/// arrays which in turn hold integers. Your task is the print all the
/// numbers and just the numbers.
///
/// So i modified it to return a flattened list of integers so I test

List<int> printAllNumbers(List<dynamic> nestedArray) {
  List<int> result = [];
  for (int i = 0, n = nestedArray.length; i < n; i++) {
    if (nestedArray[i] is int) {
      /// check if it prints at all
      print(nestedArray[i]);
      result.add(nestedArray[i]);
    } else {
      final r = printAllNumbers(nestedArray[i]);
      result.addAll(r);
    }
  }
  return result;
}
