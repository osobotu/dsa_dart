import 'package:dsa_dart/src/data_types/binary_search_tree.dart';
import 'package:test/test.dart';

void main() {
  group('Binary Search Tree:\n', () {
    group('Search:', () {
      final bst = BinarySearchTree.dummy();
      test(
          'should return TreeNode with value = 5, when given 5 as search value',
          () {
        final five = bst.search(5, bst.root);

        expect(five?.value, 5);
      });

      test('should return null when the value is not in the tree', () {
        final five = bst.search(7, bst.root);
        expect(five?.value, null);
      });
    });

    group("Delete:", () {
      final bst = BinarySearchTree.dummy();
      test("should remove 5 from the tree and return null when we search for 5",
          () {
        final root = bst.delete(5, bst.root);

        final fiveAgain = bst.search(5, root);
        expect(fiveAgain?.value, null);
      });

      test("should do nothing when we delete a value not in the tree", () {
        final root = bst.delete(7, bst.root);
        bst.traverseAndPrint(bst.root);

        // final fiveAgain = bst.search(, root);
        expect(root?.value, 1);
      });
    });

    group('findGreatestValue', () {
      final bst = BinarySearchTree.dummy();
      test('should return the greatest value in the binary search tree', () {
        final greatest = bst.findGreatestValue(bst.root);

        expect(greatest?.value, 10);
      });
    });
  });
}
