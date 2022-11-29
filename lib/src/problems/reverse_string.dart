import 'package:dsa_dart/src/src.dart';

/// Write a function that takes a string and reverses it.
///
/// Takes 'abcde' and returns ''edcba'
///
///

String reverseString(String string) {
  final stack = Stack<String>();
  String reversedString = '';
  for (var i = 0; i < string.length; i++) {
    stack.push(string[i]);
  }

  for (var i = 0; i < string.length; i++) {
    reversedString += stack.pop() ?? '';
  }
  return reversedString;
}
