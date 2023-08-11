import 'dart:io';

void main() {
  print("Digite o primeiro termo da P.A");
  double firstElement = double.parse(stdin.readLineSync()!);

  print("Digite a razão da P.A");
  double ratio = double.parse(stdin.readLineSync()!);

  List<double> values = [];
  for (int i = 0; i < 10; i++) {
    double value = firstElement + i * ratio;
    values.add(value);
  }

  print(values);
}