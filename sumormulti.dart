import 'dart:io';

void main() {
  double n1 = double.parse(stdin.readLineSync()!);
  double n2 = double.parse(stdin.readLineSync()!);

  double sum = n1 + n2;
  if (sum % 2 == 0) {
    print(sum * 3);
  } else {
    print(sum);
  }
}