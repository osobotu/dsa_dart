import 'package:dsa_dart/src/algorithms/algorithms.dart';
import 'package:test/test.dart';

void main() {
  group(
    'insertionSort',
    () {
      test(
          'takes an unsorted array and returns a sorted array. Input: [4, 2, 1, 7, 3]. Output: [1, 2, 3, 4, 7]',
          () {
        final array = [4, 2, 1, 7, 3];
        final result = insertionSort(array);
        expect(result, equals([1, 2, 3, 4, 7]));
      });

      test(
        'take a sorted array and returns the same array',
        () {
          final array = [1, 2, 3, 4, 5];
          final result = insertionSort(array);
          expect(result, equals(array));
        },
      );

      test(
        'takes a reversed array and returns a sorted array',
        () {
          final array = [7, 4, 3, 2, 1];
          final result = insertionSort(array);
          expect(result, equals([1, 2, 3, 4, 7]));
        },
      );
    },
  );
}
