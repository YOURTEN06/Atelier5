import 'dart:io';

void main() {
  print("Entrez votre age :");
  String saisie = stdin.readLineSync()!;

  try {
    int age = int.parse(saisie);
    print("Votre age est : $age");
  } on FormatException catch (e) {
    print("Format invalide : entrez un nombre entier.");
  }
}