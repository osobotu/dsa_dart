import 'package:dsa_dart/src/src.dart';

/// This linter checks for complete opening and closing braces.
/// Braces here includes (), {} and [].
///
/// The linter will return four types of errors.
/// [SyntaxError] - {noError, missingClosingBrace, missingOpeningBrace, mismatchedBraces}
///

enum SyntaxError {
  noError,
  missingClosingBrace,
  missingOpeningBrace,
  mismatchedBraces
}

class BraceLinter {
  final Stack<String> _stack = Stack();

  SyntaxError lint(String string) {
    for (var i = 0; i < string.length; i++) {
      String char = string[i];
      if (isOpeningBrace(char)) {
        _stack.push(char);
      } else if (isClosingBrace(char)) {
        final poppedOpeningBrace = _stack.pop();
        print(poppedOpeningBrace);

        if (poppedOpeningBrace == null) {
          return SyntaxError.missingOpeningBrace;
        }
        if (isNotAMatch(poppedOpeningBrace, char)) {
          return SyntaxError.mismatchedBraces;
        }
      }
    }

    if (_stack.read() != null) {
      return SyntaxError.missingClosingBrace;
    }

    return SyntaxError.noError;
  }

  /// Helper functions for the linter.
  bool isOpeningBrace(String char) {
    return ['(', '{', '['].contains(char);
  }

  bool isClosingBrace(String char) {
    return [')', '}', ']'].contains(char);
  }

  bool isNotAMatch(openingBrace, closingBrace) {
    const bracesHash = {'(': ')', '{': '}', '[': ']'};

    return bracesHash[openingBrace] != closingBrace;
  }
}
