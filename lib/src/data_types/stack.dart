class Stack<T> {
  Stack();

  final List<T> _array = [];

  void push(T element) {
    _array.add(element);
  }

  T? pop() {
    if (_array.isEmpty) {
      return null;
    }
    return _array.removeLast();
  }

  T? read() {
    if (_array.isEmpty) {
      return null;
    }
    return _array.last;
  }

  @override
  String toString() {
    return 'Stack: $_array';
  }
}
