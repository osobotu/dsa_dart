import 'package:dsa_dart/src/data_types/heap.dart';
import 'package:test/test.dart';

void main() {
  group('Heap', () {
    test('should have an empty array as underlying data structure', () {
      final heap = Heap();
      expect(heap.data, isEmpty);
    });
    test("should have a method to get rootNode", () {
      final heap = Heap();
      expect(heap.rootNode, isNotNull);
    });
    test("should have a method to get lastNode", () {
      final heap = Heap();
      expect(heap.lastNode, isNotNull);
    });

    group('insert', () {
      test('should add a value to the heap', () {
        final heap = Heap();
        int five = 5;
        heap.insert(five);
        expect(heap.data.contains(five), true);
      });
    });

    group('delete', () {
      test('should remove a value from the heap', () {
        final heap = Heap();
        heap.insert(10);
        heap.insert(6);
        heap.insert(7);

        heap.delete();

        expect(heap.data.contains(10), false);
      });
    });
  });
}
