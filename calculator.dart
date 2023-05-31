import 'dart:io';

void main(List<String> args) {
  print("It is our calculator");
}

int? isNumber(String output) {
  stdout.write(output);
  int? number = int.tryParse(stdin.readLineSync() ?? "");
  if (number is num) {
    return number;
  }
  stdout.write('Xato kiritildi qayta urining: \n');
  return isNumber(output);
}

String result(num num1, num num2, String output) {
  stdout.write(output);
  String amal = stdin.readLineSync()!;

  if (amal == "+" || amal == "-" || amal == "*" || amal == "/") {
    return amal;
  }
  stdout.writeln("Xato amal kiritildi qayta urining!");
  sleep(Duration(seconds: 2));
  return result(num1, num2, output);
}
