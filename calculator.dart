import 'dart:io';

void main(List<String> args) {
  print("It is our calculator");
}

int? isNumber(String output) {
  stdout.write(output);
  int? number = int.tryParse(stdin.readLineSync() ?? '');
  if (number is num) {
    return number;
  }
  stdout.write('Xato kiritildi qayta urining: \n');
  return isNumber(output);
}
