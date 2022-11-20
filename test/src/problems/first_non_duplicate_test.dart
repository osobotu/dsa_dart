import 'package:dsa_dart/src/problems/problems.dart';
import 'package:test/test.dart';

void main() {
  group(
    'firstNonDuplicate',
    () {
      test(
        'should return the first non duplicate letter in a string',
        () {
          final text = 'minimum';
          final result = firstNonDuplicate(text);
          expect(result, equals('n'));
        },
      );
    },
  );
}
