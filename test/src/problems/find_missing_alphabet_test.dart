import 'package:dsa_dart/src/problems/problems.dart';
import 'package:test/test.dart';

void main() {
  group(
    'findMissingAlphabet',
    () {
      test(
        'should return the missing alphabet in a string that contains all the alphabets except one',
        () {
          final string = 'the quick brown box jumps over the lazy dog';
          final result = findMissingAlphabet(string);
          expect(result, equals('f'));
        },
      );
    },
  );
}
