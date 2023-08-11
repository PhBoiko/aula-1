void main() {
  List<double> weigths = [100.0, 24.0, 89.0, 234.0, 65.0];
  double totalWeigth = 0;
  for (var weigth in weigths) {
    totalWeigth += weigth;
  }

  print("Média: ${totalWeigth / weigths.length}");
}