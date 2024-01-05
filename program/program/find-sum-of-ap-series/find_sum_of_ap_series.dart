double sumOfAP(int a, int d, int n) {
  int nterm = a + (d * (n - 1));
  double sum = ((a + nterm) * n) * 0.5;
  return sum;
}

void main() {
  int firstTerm = 2;
  int commonDifference = 3;
  int numTerms = 5;

  double seriesSum = sumOfAP(firstTerm, commonDifference, numTerms);
  print("Sum of the AP series: $seriesSum");
}
