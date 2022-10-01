import 'package:dsa_dart/src/problems/greatest_number.dart';
import 'package:test/test.dart';

void main() {
  group(
    'greatesNumber',
    () {
      test(
        'takes [12, 23, 45, 56, 78] and returns 78',
        () {
          final array = [12, 23, 45, 56, 78];
          final result = greatestNumber(array);
          expect(result, equals(78));
        },
      );
    },
  );
}
