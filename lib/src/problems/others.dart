int getXIndex(String text, [int index = 0]) {
  text = text.toLowerCase();
  if (text[index] == 'x') return index;
  return getXIndex(text, index + 1);
}

int getTriangularNumber(int n) {
  if (n == 1) return 1;
  if (n == 0) return 1;
  return n + getTriangularNumber(n - 1);
}

List<int> getEvenNumbers(List<int> array, [int index = 0]) {
  final evens = <int>[];
  if (index >= array.length) {
    return evens;
  }
  if (array[index].isEven) {
    evens.add(array[index]);
  }
  final r = getEvenNumbers(array, index + 1);
  evens.addAll(r);
  return evens;
}

List<String> combineAnagrams(String word, String letter) {
  List<String> anagrams = [];

  for (int i = 0, n = word.length + 1; i < n; i++) {
    final letters = word.split('');
    letters.insert(i, letter);
    anagrams.add(letters.join(''));
  }

  return anagrams;
}

int countStrings(List<String> array) {
  if (array.isEmpty) return 0;
  if (array.length == 1) return array[0].length;
  return countStrings([array[0]]) + countStrings(array.sublist(1));
}
