import 'package:dsa_dart/src/problems/brace_linter.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  late BraceLinter braceLinter;
  group(
    'isOpeningBrace',
    () {
      setUp(() {
        braceLinter = BraceLinter();
      });
      test('should return true if the brace is an opening brace', () {
        final checkList = ['(', '{', '['];

        for (var char in checkList) {
          final result = braceLinter.isOpeningBrace(char);
          expect(result, true);
        }
      });
    },
  );
  group(
    'isClosingBrace',
    () {
      setUp(() {
        braceLinter = BraceLinter();
      });
      test('should return true if the brace is a closing brace', () {
        final checkList = [')', '}', ']'];

        for (var char in checkList) {
          final result = braceLinter.isClosingBrace(char);
          expect(result, true);
        }
      });
    },
  );

  group(
    'isNotAMatch',
    () {
      setUp(() {
        braceLinter = BraceLinter();
      });

      test(
        'should return true for mismatched opening and closing braces',
        () {
          final result = braceLinter.isNotAMatch('(', '}');
          expect(result, true);
        },
      );
    },
  );

  group('lint', () {
    setUp(() {
      braceLinter = BraceLinter();
    });
    test(
      'should return a [SyntaxError.missingClosingBrace] for a string with missing closing brace',
      () {
        final string = 'final string = [1, 2, 3].contains(2';
        final result = braceLinter.lint(string);
        expect(result, SyntaxError.missingClosingBrace);
      },
    );

    test(
      'should return a [SyntaxError.missingOpeningBrace] for a string with missing opening brace',
      () {
        final string = 'final string = 1, 2, 3].contains(2)';
        final result = braceLinter.lint(string);
        expect(result, SyntaxError.missingOpeningBrace);
      },
    );

    test(
      'should return a [SyntaxError.mismatchedBrace] for a string with mismatched braces',
      () {
        final string = 'final string = (1, 2, 3].contains(2)';
        final result = braceLinter.lint(string);
        expect(result, SyntaxError.mismatchedBraces);
      },
    );

    test(
      'should return a [SyntaxError.noError] for a string with correct braces',
      () {
        final string = 'final string = [1, 2, 3].contains(2)';
        final result = braceLinter.lint(string);
        expect(result, SyntaxError.noError);
      },
    );
  });
}
