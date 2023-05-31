import 'dart:io';

void main(List<String> args) {
  print("\nSamandar & Ibrohim's calculator\n");

  num first = isNumber("\nBirinchi son: ")!;
  num second = isNumber("\nIkkinchi son: ")!;
  String symbol = result("\nAmalni kiriting: ")!;
  calculate(first, second, symbol);
}

num? isNumber(String output) {
  stdout.write(output);
  int? number = int.tryParse(stdin.readLineSync() ?? "");
  if (number is num) {
    return number;
  }
  stdout.writeln("\nXato kiritildi qayta urining: \n");
  return isNumber(output);
}

String? result(String output) {
  stdout.write(output);
  String amal = stdin.readLineSync()!;

  if (amal == "+" || amal == "-" || amal == "*" || amal == "/") {
    return amal;
  }
  stdout.writeln("\nXato amal kiritildi qayta urining!");
  sleep(Duration(seconds: 1));
  return result(output);
}

void calculate(num num1, num num2, String symbol) {
  switch (symbol) {
    case "-":
      stdout.writeln("\nNatija: ${num1 - num2} 😉");
    case "+":
      stdout.writeln("\nNatija: ${num1 + num2} 😉");
    case "*":
      stdout.writeln("\nNatija: ${num1 * num2} 😉");
    case "/":
      stdout.writeln("\nNatija: ${num1 / num2} 😉");
  }
}
