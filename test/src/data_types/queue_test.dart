import 'dart:collection';

import 'package:dsa_dart/src/src.dart';
import 'package:test/test.dart';

void main() {
  late CustomQueue queue;
  late Queue queueL;

  void initializeAndFillQueue() {
    setUp(() {
      queue = CustomQueue<int>();
      queue.enqueue(1);
      queue.enqueue(2);
    });
  }

  group('read', () {
    initializeAndFillQueue();
    test(
      'should return the first element in the queue ',
      () {
        final result = queue.read();
        expect(result, 1);
      },
    );
  });
  group('dequeue', () {
    initializeAndFillQueue();
    test(
      'should remove and return the first element in the queue ',
      () {
        final value = queue.dequeue();
        expect(value, 1);
        final anotherValue = queue.dequeue();
        expect(anotherValue, 2);
      },
    );
  });
  group('enqueue', () {
    initializeAndFillQueue();
    test(
      'should add an element at the end of the queue',
      () {
        queue.enqueue(3);
        queue.dequeue(); // remove 1
        queue.dequeue(); // remove 2
        final result = queue.dequeue();
        expect(result, 3);
      },
    );
  });
}
