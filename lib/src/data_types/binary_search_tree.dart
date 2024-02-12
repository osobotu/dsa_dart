class TreeNode<T extends Comparable> {
  T value;
  TreeNode<T>? leftChild;
  TreeNode<T>? rightChild;

  TreeNode({
    required this.value,
    this.leftChild,
    this.rightChild,
  });
}

class BinarySearchTree<T extends Comparable> {
  final TreeNode? root;

  BinarySearchTree({required this.root});

  factory BinarySearchTree.dummy() {
    final three = TreeNode(value: 3);
    final eight = TreeNode(value: 8);
    final ten = TreeNode(value: 10);

    final six = TreeNode(value: 6, rightChild: eight);
    final four = TreeNode(value: 4, leftChild: three);
    final two = TreeNode(value: 2, rightChild: four);
    final nine = TreeNode(
      value: 9,
      leftChild: six,
      rightChild: ten,
    );

    final five = TreeNode(
      value: 5,
      rightChild: nine,
      leftChild: two,
    );
    TreeNode<int> root = TreeNode(value: 1, rightChild: five);
    return BinarySearchTree(root: root);
  }

  TreeNode? search(T searchValue, TreeNode? node) {
    if (node == null || node.value == searchValue) {
      return node;
    } else if (searchValue.compareTo(node.value) < 0) {
      // equivalent to searchValue less than node.value
      return search(searchValue, node.leftChild);
    } else if (searchValue.compareTo(node.value) > 0) {
      return search(searchValue, node.rightChild);
    } else {
      return node;
    }
  }

  void insert(T value, TreeNode node) {
    if (value.compareTo(node.value) < 0) {
      if (node.leftChild == null) {
        node.leftChild = TreeNode(value: value);
      } else {
        insert(value, node.leftChild!);
      }
    } else if (value.compareTo(node.value) > 0) {
      if (node.rightChild == null) {
        node.rightChild = TreeNode(value: value);
      } else {
        insert(value, node.rightChild!);
      }
    }
  }

  TreeNode? _lift(TreeNode? node, TreeNode nodeToDelete) {
    if (node?.leftChild != null) {
      node?.leftChild = _lift(node.leftChild, nodeToDelete);
      return node;
    } else {
      nodeToDelete.value = node?.value as T;
      return node?.rightChild;
    }
  }

  TreeNode? delete(T value, TreeNode? node) {
    if (node == null) {
      return null;
    } else if (value.compareTo(node.value) < 0) {
      node.leftChild = delete(value, node.leftChild);
      return node;
    } else if (value.compareTo(node.value) > 0) {
      node.rightChild = delete(value, node.rightChild);
      return node;
    } else if (value == node.value) {
      if (node.leftChild == null) {
        return node.rightChild;
      } else if (node.rightChild == null) {
        return node.leftChild;
      } else {
        node.rightChild = _lift(node.rightChild, node);
        return node;
      }
    } else {
      return null;
    }
  }

  // factory BinarySearchTree.fromArray(List<T> array) {
  //   array.shuffle(Random(DateTime.now().millisecond));
  //   final root = TreeNode(value: array[0]);
  //   int counter = 1;
  //   while (counter < array.length) {
  //     BinarySearchTree.dummy().insert(array[counter], root);
  //   }
  //   return BinarySearchTree(root: root);
  // }
}
