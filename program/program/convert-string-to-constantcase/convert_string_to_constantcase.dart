void main() {
 String str = "Hello World!";
 print(convertToConstantCase(str));
}

String convertToConstantCase(String str) {
 List<String> words = str.split(' ');
 List<String> capitalizedWords = words.map((word) => word.toUpperCase()).toList();
 return capitalizedWords.join('_');
}
