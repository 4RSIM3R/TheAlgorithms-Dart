import 'package:test/test.dart';

String reverseString(String str) {
  return str.split('').reversed.join();
}

String reverseString2(String str) {
  String reversed = "";
  for (int i = str.length - 1; i >= 0; i--) reversed += str[i];
  return reversed;
}

void main() {
  String stringToReverse = "The Algorithms:Dart";

  test("reverseString The Algorithms:Dart return traD:smhtiroglA ehT", () {
    expect(reverseString(stringToReverse), equals("traD:smhtiroglA ehT"));
  });

  test("reverseString2 The Algorithms:Dart return traD:smhtiroglA ehT", () {
    expect(reverseString2(stringToReverse), equals("traD:smhtiroglA ehT"));
  });
}
