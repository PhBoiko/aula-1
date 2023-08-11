import 'dart:io';

void main() {
  int multiplier = int.parse(stdin.readLineSync()!);
  for(int i = 1; i < 11; i++) {
    print("$multiplier x $i = ${multiplier * i}");
  }
}