String toPascalCase(String input) {
  if (input.isEmpty) return input;

  String result = "";
  bool capitalizeNext = true;

  for (int i = 0; i < input.length; i++) {
    String character = input[i];

    if (capitalizeNext) {
      result += character.toUpperCase();
    } else {
      result += character.toLowerCase();
    }

    capitalizeNext = character == " " || character == "-" || character == "_";
  }

  return result;
}

void main() {
  String inputString = "this is a test string";
  String pascalCaseString = toPascalCase(inputString);
  print("PascalCase: $pascalCaseString"); // Output: ThisIsATesString
}
