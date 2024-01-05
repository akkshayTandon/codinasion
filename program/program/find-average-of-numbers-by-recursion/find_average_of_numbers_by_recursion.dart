void main() {
  List<double> numbers = [1, 2, 3, 4, 5];
  double average = findAverage(numbers, 0, numbers.length);
  print('The average of $numbers is $average');
}

double findAverage(List<double> numbers, int index, int len) {
  if (index == len - 1) {
    return numbers[index];
  } 
  if (index == 0){
    return ((numbers[index] + findAverage(numbers, index+1, len)) / len);
  }
  return (numbers[index] + findAverage(numbers, index+1, len));
}
