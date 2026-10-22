import 'dart:io';

class NombreNegatifException implements Exception {
  String message;

  NombreNegatifException(this.message);

  @override
  String toString() {
    return message;
  }
}

void main() {
  try {
    print("Entrez un nombre :");
    double nombre = double.parse(stdin.readLineSync()!);

    if (nombre < 0) {
      throw NombreNegatifException("Le nombre ne doit pas etre negatif.");
    }

    print("Son carre est : ${nombre * nombre}");
  } catch (e) {
    print(e);
  } finally {
    print("Fin d'opération");
  }
}