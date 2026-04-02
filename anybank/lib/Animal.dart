abstract class Animal {
  void emitirSom() {
    print("Emitir som");
  }
}

class Cachorro extends Animal {
  @override
  void emitirSom() {
    print("O cachorro late");
  }

  void abanarRabo() {
    print("O cachorro está abanando o rabo.");
  }
}

class Gato extends Animal {
  @override
  void emitirSom() {
    print("O gato miou");
  }

  void arranharMoveis() {
    print("O gato está arranhando os  móveis.");
  }
}
