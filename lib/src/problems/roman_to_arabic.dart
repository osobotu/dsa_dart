int romanToArabic(String roman) {
  const Map<String, int> map = <String, int>{
    "I": 1,
    "V": 5,
    "X": 10,
    "L": 50,
    "C": 100,
    "D": 500,
    "M": 1000,
  };
  int sum = 0;
  final n = roman.length;
  int i = 0;
  while (i < n) {
    if ((i < n - 1) && ((map[roman[i]]!) < (map[roman[i + 1]]!))) {
      sum += (map[roman[i + 1]]!) - (map[roman[i]]!);
      i += 2;
    } else {
      sum += map[roman[i]]!;
      i += 1;
    }
  }

  return sum;
}
