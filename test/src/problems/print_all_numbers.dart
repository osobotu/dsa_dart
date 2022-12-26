import 'package:dsa_dart/src/problems/print_all_numbers.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group(
    'printAllNumbers',
    () {
      test(
        'should print all the numbers in all the arrays. (just the numbers)',
        () {
          final nestedArray = [
            1,
            2,
            3,
            [4, 5, 6],
            7,
            [
              8,
              [
                9,
                10,
                11,
                [12, 13, 14],
              ]
            ],
            [
              15,
              16,
              17,
              18,
              19,
              [
                20,
                21,
                22,
                [
                  23,
                  24,
                  25,
                  [26, 27, 29]
                ],
                30,
                31
              ],
              32
            ],
            33
          ];

          final result = printAllNumbers(nestedArray);
          expect(result, [
            1,
            2,
            3,
            4,
            5,
            6,
            7,
            8,
            9,
            10,
            11,
            12,
            13,
            14,
            15,
            16,
            17,
            18,
            19,
            20,
            21,
            22,
            23,
            24,
            25,
            26,
            27,
            29,
            30,
            31,
            32,
            33
          ]);
        },
      );
    },
  );
}
