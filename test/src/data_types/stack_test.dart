import 'package:dsa_dart/src/src.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  late Stack stack;

  void initializeAndFillStack() {
    setUp(() {
      stack = Stack<int>();
      stack.push(1);
      stack.push(2);
    });
  }

  group(
    'read',
    () {
      initializeAndFillStack();

      test(
        'should return the element at the top of the stack',
        () {
          final result = stack.read();
          expect(result, 2);
        },
      );
    },
  );
  group(
    'push',
    () {
      initializeAndFillStack();
      test(
        'should add an element to the top of the stack',
        () {
          stack.push(3);
          final result = stack.read();
          expect(result, 3);
        },
      );
    },
  );

  group(
    'pop',
    () {
      initializeAndFillStack();

      test(
        'should remove and return the last added element to the stack',
        () {
          // return
          final result = stack.pop();
          expect(result, 2);
          // remove
          final topElement = stack.read();
          expect(topElement, 1);
        },
      );
    },
  );
}
