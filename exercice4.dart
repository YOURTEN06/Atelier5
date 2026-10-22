class MotdepasseCourtException implements Exception {
  String message;

  MotdepasseCourtException(this.message);

  @override
  String toString() {
    return message;
  }
}

void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw MotdepasseCourtException(
      "Mot de passe trop court : minimum 6 caracteres."
    );
  }
  print("Mot de passe valide");
}

void main() {
  try {
    verifierMotdepasse("abc");
  } catch (e) {
    print(e);
  }
}