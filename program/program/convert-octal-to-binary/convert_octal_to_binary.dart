String octalToBinary(String octal) {
  int decimal = 0;
  int power = 1;

  // Convert octal to decimal
  for (int i = octal.length - 1; i >= 0; i--) {
    int digit = int.parse(octal[i]);
    if (digit < 0 || digit > 7) {
      throw ArgumentError("Invalid octal digit: $digit");
    }
    decimal += digit * power;
    power *= 8;
  }

  // Convert decimal to binary
  String binary = "";
  while (decimal > 0) {
    binary = (decimal % 2).toString() + binary;
    decimal = (decimal / 2).floor();
  }

  return binary;
}

void main() {
  String octalNumber = "12";
  String binaryResult = octalToBinary(octalNumber);
  print("Octal $octalNumber to binary: $binaryResult");
}
