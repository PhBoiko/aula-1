import 'dart:io';

class Product {
  String ?name;
  int ?id;

  Product(this.name, this.id);

  dynamic getProductClassification() {
    if (id! == 1) {
      return "Alimento não-perecível";
    }

    if (id! == 2 || id! == 3 || id! == 4) {
      return "Alimento perecível";
    }

    if (id! == 5 || id! == 6) {
      return "Vestuário";
    }

     if (id! == 7) {
      return "Higiene Pessoal";
    }

    if (id! > 7 && id! < 16) {
      return "Limpeza e Utensílios Domésticos";
    }

    return "Código inválido.";
  }
}

void main() {
  int productCode = int.parse(stdin.readLineSync()!);
  Product product = Product("name__", productCode);
  print(product.getProductClassification());
}
