import 'dart:io';

dynamic convertFromCelsiusToKelvin(double value) {
  double kelvin = value + 273.15;
  return kelvin;
}

dynamic convertFromCelsiusToFarenheit(double value) {
  double farenheit = (value * 9/5) + 32;
  return farenheit;
}

dynamic convertFromFarenheitToCelsius(double value) {
  double celsius = (value - 32) * 5/9;
  return celsius;
}

dynamic convertFromKelvinToCelsius(double value) {
  double celsius = value - 273.15;
  return celsius;
}

void main() {
  
  print("Qual medida vai usar [1] - Farenheit, [2] - Kelvin, [3] - Celsius");
  int type = int.parse(stdin.readLineSync()!);
  print("Digite a temperatura");
  double value = double.parse(stdin.readLineSync()!);
  print("Qual o tipo de medida que deseja converter [1] - Farenheit, [2] - Kelvin, [3] - Celsius");
  int typeToConvert = int.parse(stdin.readLineSync()!);

  if (type == 3 && typeToConvert == 1) {
    print("Temp em Farenheit: ${convertFromCelsiusToFarenheit(value)}");
  }

  if (type == 3 && typeToConvert == 2) {
    print("Temp em Kelvin: ${convertFromCelsiusToKelvin(value)}");
  }

  if (type == 1 && typeToConvert == 3) {
    print("Temp em Celsius: ${convertFromFarenheitToCelsius(value)}");
  }

  if (type == 2 && typeToConvert == 3) {
    print("Temp em Celsius: ${convertFromKelvinToCelsius(value)}");
  }
}