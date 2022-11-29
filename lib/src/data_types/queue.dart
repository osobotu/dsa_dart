class CustomQueue<T> {
  final List<T> _array = [];

  T? read() {
    if (_array.isEmpty) return null;
    return _array.first;
  }

  T? dequeue() {
    if (_array.isEmpty) return null;
    return _array.removeAt(0);
  }

  void enqueue(T element) {
    return _array.add(element);
  }
}
