import 'package:dsa_dart/src/algorithms/algorithms.dart';
import 'package:test/test.dart';

void main() {
  group('Bubble Sort', () {
    test(
      'takes an unsorted array and returns a sorted array. takes [4, 2, 7, 1, 3] and returns [1, 2, 3, 4, 7]',
      () {
        final array = [4, 2, 7, 1, 3];
        final result = bubbleSort(array);
        print(result);
        expect(result, equals([1, 2, 3, 4, 7]));
      },
    );

    test(
      'takes a sorted array and returns a sorted array. takes [1, 2, 3, 4, 7] and returns [1, 2, 3, 4, 7]',
      () {
        final array = [1, 2, 3, 4, 7];
        final result = bubbleSort(array);
        print(result);
        expect(result, equals([1, 2, 3, 4, 7]));
      },
    );
  });
}
