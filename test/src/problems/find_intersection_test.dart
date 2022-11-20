import 'package:dsa_dart/src/problems/problems.dart';
import 'package:test/test.dart';

void main() {
  group(
    'findIntersection',
    () {
      const array1 = ['a', 'b', 'c', 'd', 'e', 'f'];
      test(
        'takes two arrays ([a, b, c, d, e, f], [b, d, e]) and returns true',
        () {
          const array2 = ['b', 'd', 'e'];

          final result = findIntersection(array1, array2);
          expect(result, equals(['b', 'd', 'e']));
        },
      );
      test(
        'takes two arrays ([a, b, c, d, e, f], [b, g, e]) and returns false',
        () {
          const array2 = ['b', 'g', 'e'];

          final result = findIntersection(array1, array2);
          expect(result, equals(['b', 'e']));
        },
      );
    },
  );
}
