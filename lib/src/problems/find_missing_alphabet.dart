/// This function takes a string that contains all the letters of
/// the alphabet except one and returns the missing alphabet.
///
/// Example:
/// Returns 'f' when given 'the quick brown box jumps over the lazy dog'
///

String findMissingAlphabet(String text) {
  final alphabets = 'abcdefghijklmnopqrstuvwxyz';
  var textHash = {};

  for (var i = 0; i < text.length; i++) {
    textHash[text[i]] = true;
  }

  for (var i = 0; i < alphabets.length; i++) {
    var currentLetter = alphabets[i];
    if (textHash[currentLetter] == null) {
      return currentLetter;
    }
  }

  return '';
}
