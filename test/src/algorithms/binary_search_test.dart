import 'package:dsa_dart/src/algorithms/algorithms.dart';
import 'package:test/test.dart';

void main() {
  group('binary search', () {
    final array = [3, 5, 17, 23, 45, 78, 90, 100];
    test('7 not in array', () {
      final int result = binarySearch(array: array, searchValue: 7);
      expect(result, equals(-1));
    });

    test('23 in array at index 3', () {
      final int result = binarySearch(array: array, searchValue: 23);
      expect(result, equals(3));
    });
  });
}
