import 'package:dsa_dart/src/src.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group(
    'printNestedList',
    () {
      test(
        'should print out all the numbers in the nested list',
        () {
          final flatList = [
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
          ];

          final nestedList = <dynamic>[
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
              ],
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
                  [26, 27, 29],
                ],
                30,
                31
              ],
              32,
            ],
            33,
          ];
          final result = printAllNumbers(nestedList);
          expect(result, equals(flatList));
        },
      );
    },
  );
}
