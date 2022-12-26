import 'package:dsa_dart/src/problems/tree_search.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  final six = Node(id: 6);
  final five = Node(id: 5, subordinates: [six]);
  final three = Node(id: 3, subordinates: [five]);
  final four = Node(id: 4);
  final two = Node(id: 2);
  final one = Node(id: 1, subordinates: [two, three, four]);
  group(
    'treeSearch',
    () {
      final foundNode = Node(id: 5);

      test('should return a Node with the correct id', () {
        final result = treeSearch(id: 5, parent: one);

        expect(result!.id, equals(foundNode.id));
      });

      test('should return null when the id is not in the tree', () {
        final result = treeSearch(id: 7, parent: one);
        expect(result, equals(null));
      });
    },
  );
}
