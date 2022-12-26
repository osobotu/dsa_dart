import 'package:dsa_dart/src/problems/problems.dart';
import 'package:test/test.dart';

void main() {
  group(
    'totalStrings',
    () {
      test(
        'should return the total number of strings in the given list of strings',
        () {
          final list = ['ab', 'c', 'def', 'ghij'];
          final result = totalStrings(list);
          expect(result, 10);
        },
      );
    },
  );
}
