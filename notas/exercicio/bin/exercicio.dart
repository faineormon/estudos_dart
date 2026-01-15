void main() {
  imprimirLetras();
}

void imprimirNumeros() {
  for (var i = 1; i < 6; i++) {
    print(i);
  }
}

void imprimirNomes() {
  List<String> nomes = <String>["Ana", "João", "Maria"];

  for (String nome in nomes) {
    print("Nome: $nome");
  }
}

void imprimirLetras() {
  String texto = 'Parou! Este código não continua.';
  int index = 0;

  do {
    print(texto[index]);
    index++;
  } while (index < texto.length && texto[index - 1] != '!');
}
