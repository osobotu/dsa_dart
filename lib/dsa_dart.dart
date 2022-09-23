import 'package:dsa_dart/src/src.dart';

void main() {
  const numbers = [3, 17, 75, 80, 202];
  const searchValue = 17;

  final result = binarySearch(array: numbers, searchValue: searchValue);
  print(result == null ? 'Number not found' : 'Found at index: $result');

  // TODO: I need to figure out a way to test the algorithms on edeg cases with having to call them here often. Also
  // TODO: Write unit tests for the functions
}
