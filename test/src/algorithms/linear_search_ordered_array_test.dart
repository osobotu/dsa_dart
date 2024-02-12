import 'package:dsa_dart/src/algorithms/algorithms.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('linear search of an ordered array', () {
    final array = [3, 5, 17, 23, 45, 78, 90, 100];
    test('90 in array at index 6', () {
      final int result =
          linearSearchOfOrderedArray(array: array, searchValue: 90);
      expect(result, equals(6));
    });

    test('202 not in array', () {
      final int result =
          linearSearchOfOrderedArray(array: array, searchValue: 202);
      expect(result, equals(-1));
    });

    test('search fails on unordered array', () {
      final unorderedArray = [3, 100, 5, 17, 90, 23, 78, 45];
      final int result =
          linearSearchOfOrderedArray(array: unorderedArray, searchValue: 17);
      expect(result, equals(-1));
    });
  });
}
