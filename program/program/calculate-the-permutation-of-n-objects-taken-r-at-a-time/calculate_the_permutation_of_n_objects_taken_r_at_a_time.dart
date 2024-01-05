int permutation(int n, int r) {
  // Handle invalid input
  if (n < 0 || r < 0 || r > n) {
    throw ArgumentError("Invalid input: n and r must be non-negative and r must be less than or equal to n");
  }

  // Calculate permutation using factorials
  int permutation = factorial(n) ~/ factorial(n - r);
  return permutation;
}

int factorial(int n) {
  if (n == 0) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

void main() {
  int n = 5;  // Total objects
  int r = 2;  // Objects taken at a time

  int result = permutation(n, r);
  print("Permutation of $n objects taken $r at a time: $result");
}
