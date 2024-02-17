class Heap {
  List<int> data;

  Heap([List<int>? data]) : data = data ?? [];

  int rootNode() {
    return data.first;
  }

  int lastNode() {
    return data.last;
  }

  int leftChildIndex(int index) {
    return (index * 2) + 1;
  }

  int rightChildIndex(int index) {
    return (index * 2) + 2;
  }

  int parentIndex(int index) {
    return (index - 1) ~/ 2;
  }

  void insert(int value) {
    data.add(value);

    int newNodeIndex = data.length - 1;

    while (newNodeIndex > 0 &&
        data[newNodeIndex] > data[parentIndex(newNodeIndex)]) {
      // swap two values: a,b = b,a
      (tmp) {
        data[parentIndex(newNodeIndex)] = data[newNodeIndex];
        data[newNodeIndex] = tmp;
      }(data[parentIndex(newNodeIndex)]);

      newNodeIndex = parentIndex(newNodeIndex);
    }
  }

  void delete() {
    data[0] = data.removeLast();
    int trickleNodeIndex = 0;
    while (hasGreaterChild(trickleNodeIndex)) {
      int largerChildIndex = calculateLargerChildIndex(trickleNodeIndex);

      (tmp) {
        data[trickleNodeIndex] = data[largerChildIndex];
        data[largerChildIndex] = tmp;
      }(data[trickleNodeIndex]);

      trickleNodeIndex = largerChildIndex;
    }
  }

  bool hasGreaterChild(int index) {
    bool hasLeftChild = leftChildIndex(index) < data.length;
    bool isLeftChildGreater = false;
    if (hasLeftChild) {
      isLeftChildGreater = (data[leftChildIndex(index)] > data[index]);
    }

    bool hasRightChild = rightChildIndex(index) < data.length;
    bool isRightChildGreater = false;
    if (hasRightChild) {
      isRightChildGreater = (data[rightChildIndex(index)] > data[index]);
    }
    return (hasLeftChild && isLeftChildGreater) ||
        (hasRightChild && isRightChildGreater);
  }

  int calculateLargerChildIndex(int index) {
    bool hasRightChild = (data.contains(data[rightChildIndex(index)]));
    if (!hasRightChild) {
      return leftChildIndex(index);
    }

    return (data[rightChildIndex(index)] > data[leftChildIndex(index)])
        ? rightChildIndex(index)
        : leftChildIndex(index);
  }
}
