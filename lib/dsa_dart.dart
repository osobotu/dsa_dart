import 'package:dsa_dart/src/src.dart';

void main() {
  const numbers = [3, 17, 75, 80, 202];
  const searchValue = 17;

  final result =
      linearSearchOfOrderedArray(array: numbers, searchValue: searchValue);
  print(result == null ? 'Number not found' : 'Found at index: $result');
}
