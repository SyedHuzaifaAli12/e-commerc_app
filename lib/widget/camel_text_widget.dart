String toCamelCase(String input) {
  List<String> words = input.split(' ');
  for (int i = 1; i < words.length; i++) {
    words[i] = words[i].toLowerCase().capitalizeFirstLetter();
  }
  return words.join('');
}

extension StringCasingExtension on String {
  String capitalizeFirstLetter() {
    if (this.isEmpty) return this;
    return this[0].toUpperCase() + this.substring(1);
  }
}

// void main() {
//   String inputText = "chota barah";
//   String camelCaseText = toCamelCase(inputText);

//   print(camelCaseText); // Output: chotaBarah
// }
