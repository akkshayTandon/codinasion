// import 'dart:io';
// Important: Browser-based applications can't use this library. Only servers, command-line scripts, and Flutter mobile apps can import and use dart:io.

void pascalTriangle(int rows) {
  List<List<int>> triangle = [];

  for (int i = 0; i < rows; i++) {
    triangle.add([]);

    for (int j = 0; j <= i; j++) {
      if (j == 0 || j == i) {
        triangle[i].add(1);
      } else {
        triangle[i].add(triangle[i - 1][j - 1] + triangle[i - 1][j]);
      }
    }
  }

  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < triangle[i].length; j++) {
      print('${triangle[i][j]}');
//       stdout.write('${triangle[i][j]}');
    }

    print('\n');
  }
}

void main() {
  int rows = 5;
  pascalTriangle(rows);
}
