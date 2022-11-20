import 'package:dsa_dart/src/problems/problems.dart';
import 'package:test/test.dart';

void main() {
  group(
    'firstDuplicate',
    () {
      test(
        'should return the first duplicate when a duplicate exists',
        () {
          final array = ['a', 'b', 'c', 'd', 'c', 'e'];
          final result = firstDuplicate(array);
          expect(result, 'c');
        },
      );
      test(
        'should return an empty string when mo duplicate exists',
        () {
          final array = ['a', 'b', 'c', 'd', 'e'];
          final result = firstDuplicate(array);
          expect(result, '');
        },
      );
    },
  );
}
