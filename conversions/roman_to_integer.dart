import 'package:test/test.dart';

final mapRomanToValue = {
  'I': 1,
  'V': 5,
  'X': 10,
  'L': 50,
  'C': 100,
  'D': 500,
  'M': 1000,
};

int romanToInteger(var s) {
  int ans = 0;
  for (int i = 0; i < s.length; i++) {
    int num1 = mapRomanToValue[s[i]] ?? 0;
    if (i + 1 < s.length) {
      int num2 = mapRomanToValue[s[i + 1]] ?? 0;
      if (num1 < num2) {
        ans = ans + num2 - num1;
        i++;
      } else {
        ans = ans + num1;
      }
    } else {
      ans = ans + num1;
    }
  }
  return ans;
}

void main() {
  test("romanToInteger XII returns 12", () {
    expect(romanToInteger('XII'), equals(12));
  });

  test("romanToInteger LII returns 52", () {
    expect(romanToInteger('LII'), equals(52));
  });

  test("romanToInteger DLVII returns 557", () {
    expect(romanToInteger('LII'), equals(52));
  });

  test("romanToInteger VI returns 6", () {
    expect(romanToInteger('VI'), equals(6));
  });

  test("romanToInteger CLXV returns 165", () {
    expect(romanToInteger('CLXV'), equals(165));
  });

  test("romanToInteger MDCI returns 1601", () {
    expect(romanToInteger('MDCI'), equals(1601));
  });

  test("romanToInteger LVII returns 57", () {
    expect(romanToInteger('LVII'), equals(57));
  });
}
