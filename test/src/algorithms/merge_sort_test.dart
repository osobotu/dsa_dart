import 'package:dsa_dart/src/algorithms/merge_sort.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group(
    'mergeSort',
    () {
      test(
        'should return a sorted array given [2, 1, 4, 5, 6, 3]',
        () {
          final array = [2, 1, 4, 5, 6, 3];
          expect(mergeSort(array), equals([1, 2, 3, 4, 5, 6]));
        },
      );
      test(
        'should return a sorted array given [2, 1, 4, 2, 5, 6, 1, 7, 3]',
        () {
          final array = [2, 1, 4, 2, 5, 6, 1, 7, 3];
          expect(mergeSort(array), equals([1, 1, 2, 2, 3, 4, 5, 6, 7]));
        },
      );
    },
  );
}
