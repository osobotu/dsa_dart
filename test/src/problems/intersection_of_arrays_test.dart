import 'package:dsa_dart/src/problems/problems.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('intersection', () {
    test(
      'takes two arrays ([1,2,5,6], [3, 9, 8, 7]) with no common value and returns an empty array',
      () {
        final firstArray = [1, 2, 5, 6];
        final secondArray = [3, 9, 8, 7];
        final result =
            intersection(firstArray: firstArray, secondArray: secondArray);
        expect(result, equals([]));
      },
    );
    test(
      'takes [1, 5, 3, 2 ] and [2, 5, 6, 3] and returns [5, 3, 2]',
      () {
        final firstArray = [1, 5, 3, 2];
        final secondArray = [2, 5, 6, 3];
        final result =
            intersection(firstArray: firstArray, secondArray: secondArray);
        expect(result, equals([5, 3, 2]));
      },
    );
  });
}
