import 'dart:io';

class Angle {
  double ?angle;

  Angle(this.angle);

  dynamic getAngleType() {
    if (angle! > 0.0 && angle! < 90.0) {
      return "Agudo";
    }

    if (angle! == 90.0) {
      return "Reto";
    }

    if (angle! > 90.0 && angle! < 180.0) {
      return "Obtuso";
    }

    if (angle! == 0.0 || angle! == 180.0) {
      return "Raso";
    }

    if (angle! > 180.0 && angle! < 360.0) {
      return "Côncavo";
    }

    if (angle! == 360.0) {
      return "Completo";
    }

    return "Undefined angle type";
  }
}

void main() {

  double angle = double.parse(stdin.readLineSync()!);
  Angle _angle = Angle(angle);
  print(_angle.getAngleType());
}
