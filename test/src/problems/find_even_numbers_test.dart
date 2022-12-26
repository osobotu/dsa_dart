import 'package:dsa_dart/src/problems/problems.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group(
    'findEvenNumbers',
    () {
      test(
        'should take an array of numbers and return the even numbers in the array',
        () {
          final array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
          final result = returnEvenNumbers(array);
          expect(result, equals([2, 4, 6, 8, 10]));
        },
      );
    },
  );
}
