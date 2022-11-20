/// This function takes a string and returns the first non duplicate letter.
///
/// Example:
/// Returns 'n' when the given string is 'minimum' because 'n' and 'u' are the
/// only non duplicate strings and 'n' occurs first.
///

String firstNonDuplicate(String text) {
  final textHash = {};

  for (var i = 0; i < text.length; i++) {
    var currentLetter = text[i];
    if (textHash[currentLetter] == null) {
      textHash[currentLetter] = 1;
    } else {
      textHash[currentLetter] += 1;
    }
  }

  for (var key in textHash.keys) {
    if (textHash[key] == 1) {
      return key;
    }
  }

  return '';
}
