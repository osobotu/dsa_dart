/// Use recursion to write a function that takes an array and returns
/// all the even numbers in the array.
///

List<int> findEvenNumbers(List<int> array, [index = 0]) {
  if (index >= array.length) {
    return array;
  }
  if (array[index].isOdd) {
    array.removeAt(index);
  }
  return findEvenNumbers(array, index + 1);
}

List<int> returnEvenNumbers(List<int> array) {
  List<int> evenNumbers = [];
  void returnEvenNumbersHelper(List<int> array, [index = 0]) {
    if (index >= array.length) return;
    if (array[index].isEven) evenNumbers.add(array[index]);
    returnEvenNumbersHelper(array, index + 1);
  }

  returnEvenNumbersHelper(array);

  return evenNumbers;
}
 
///  Y. G. Li. Performance-analysis-based gas turbine diagnostics: 
/// A review. Proceedings of the Institution of Mechanical Engineers,
///  Part A: Journal of Power and Energy, 216(5):363–377, 2002.
