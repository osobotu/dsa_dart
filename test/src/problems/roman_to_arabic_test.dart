import 'package:dsa_dart/src/problems/roman_to_arabic.dart';
import 'package:test/test.dart';

void main() {
  group('romanToArabic', () {
    final testCases = [
      {
        "roman": "I",
        "arabic": 1,
      },
      {
        "roman": "V",
        "arabic": 5,
      },
      {
        "roman": "IX",
        "arabic": 9,
      },
      {
        "roman": "MDXXXIX",
        "arabic": 1539,
      },
      {
        "roman": "IV",
        "arabic": 4,
      },
      {
        "roman": "XCIX",
        "arabic": 99,
      },
      {
        "roman": "XIX",
        "arabic": 19,
      },
    ];

    for (var tc in testCases) {
      test('${tc['roman']} should give ${tc['arabic']}', () {
        final arabic = romanToArabic(tc['roman'] as String);
        expect(arabic, tc['arabic']);
      });
    }
  });
}
