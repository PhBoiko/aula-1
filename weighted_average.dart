import 'dart:io';

void main() {
  double n1 = double.parse(stdin.readLineSync()!);
  double n2 = double.parse(stdin.readLineSync()!);
  double n3 = double.parse(stdin.readLineSync()!);

  List<double> ns = [n1, n2, n3];

  for (var n in ns) {
    if (n < 0 || n > 10) {
      print("Invalid note: $n");
      return;
    }
  }

  double weigth1 = 2.0;
  double weigth2 = 3.0;
  double weigth3 = 5.0;

  double weightedSum = (n1 * weigth1) + (n2 * weigth2) + (n3 * weigth3);
  double totalWeights = weigth1 + weigth2 + weigth3;

  double weightedAverage = weightedSum / totalWeights;

  print("Média Ponderada: ${weightedAverage.toStringAsFixed(1)}");
}