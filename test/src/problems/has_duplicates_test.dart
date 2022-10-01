import 'package:dsa_dart/src/problems/has_duplicates.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group(
    'hasDuplicate',
    () {
      test(
        'takes an array [1, 2, 3, 1, 4, 5] and returns true',
        () {
          final array = [1, 2, 3, 1, 4, 5];
          final result = hasDuplicate(array);
          expect(result, equals(true));
        },
      );

      test(
        'takes an array [1, 2, 3, 4, 5] and returns false',
        () {
          final array = [1, 2, 3, 4, 5];
          final result = hasDuplicate(array);
          expect(result, equals(false));
        },
      );
    },
  );
}
