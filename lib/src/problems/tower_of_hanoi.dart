/// This problem entails printing the steps or moves required to solve the
/// Tower of Hanoi problem given a number of discs.

hanoiMove(int n, String from, String to, String extra) {
  // base case
  if (n == 1) {
    printMove(n, from, to);
  } else {
    hanoiMove(n - 1, from, extra, to);
    printMove(n, from, to);
    hanoiMove(n - 1, extra, to, from);
  }
}

printMove(int n, String from, String to) {
  print("Move ring $n from pole $from to pole $to");
}
