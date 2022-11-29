import 'package:dsa_dart/src/src.dart';
import 'package:test/test.dart';

void main() {
  group(
    'reverseString',
    () {
      test(
        'should return a reversed string of the given string',
        () {
          final string = 'abcde';
          final result = reverseString(string);
          expect(result, 'edcba');
        },
      );
    },
  );
}
